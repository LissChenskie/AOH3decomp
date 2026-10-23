.class public Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;
.super Ljava/lang/Object;
.source "CivilizationRegionsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$Renderer_CivRegionNames;
    }
.end annotation


# static fields
.field public static CIVILIZATIONS_NAMES_TIME:J

.field public static CIVILIZATIONS_NAMES_TIME_HIDE:J

.field public static CIVILIZATION_NAMES_ALPHA:F

.field public static NUM_OF_REGIONS_IN_VIEW:I

.field public static civsRegionsAlpha:F

.field public static drawHideAnimation:Z

.field public static isProvinceAssigned:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static lRegions_Civs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static lRegions_Civs_RegionsID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static oRenderer_CivRegionNames:Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$Renderer_CivRegionNames;

.field public static oldTransformMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field public static updateRegionsInView:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->isProvinceAssigned:Ljava/util/List;

    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->updateRegionsInView:Z

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->civsRegionsAlpha:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->lRegions_Civs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->lRegions_Civs_RegionsID:Ljava/util/List;

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->NUM_OF_REGIONS_IN_VIEW:I

    sput-boolean v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->drawHideAnimation:Z

    const v0, 0x3dcccccd    # 0.1f

    sput v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->CIVILIZATION_NAMES_ALPHA:F

    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->CIVILIZATIONS_NAMES_TIME:J

    sput-wide v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->CIVILIZATIONS_NAMES_TIME_HIDE:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->updateRegionsInView2()V

    return-void
.end method

.method public static final buildCivilizationsRegion(I)V
    .locals 4

    :try_start_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->clearCivRegions_Just()V

    sget-object v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->isProvinceAssigned:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    sget-object v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->isProvinceAssigned:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->setCivRegionID(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_3

    sget-object v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->isProvinceAssigned:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->createCivilizationRegion(I)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->updateIsProvinceAssigned(IZ)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    sget-object v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->isProvinceAssigned:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$1;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->addSimpleTaskCivsNames(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static final buildCivilizationsRegions()V
    .locals 5

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->clearCivRegions_Just()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->isProvinceAssigned:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->setCivRegionID(I)V

    sget-object v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->isProvinceAssigned:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->isProvinceAssigned:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->updateIsProvinceAssigned(IZ)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->createCivilizationRegion(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    sget-object v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->isProvinceAssigned:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->buildCivilizationsRegions_TextOver()V

    return-void
.end method

.method public static final buildCivilizationsRegions_TextOver()V
    .locals 2

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->buildCivilizationsRegions_TextOver(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final buildCivilizationsRegions_TextOver(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivRegionsSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivRegion(I)Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->buildRegionPath_TriedToUse()V

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivRegion(I)Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->buildRegionPath()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final drawCivNames(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE:F

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-ltz v0, :cond_2

    sget-boolean v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->drawHideAnimation:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->updateRegionsInView:Z

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->oRenderer_CivRegionNames:Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$Renderer_CivRegionNames;

    invoke-interface {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$Renderer_CivRegionNames;->update()V

    sput-boolean v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->updateRegionsInView:Z

    :cond_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->drawCivNames_Begin(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    invoke-static {}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->drawCivRegions_Names_UpdateTimeHide()V

    sget-object v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->oRenderer_CivRegionNames:Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$Renderer_CivRegionNames;

    invoke-interface {v0, p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$Renderer_CivRegionNames;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->drawCivNames_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_0

    :cond_1
    sput-wide v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->CIVILIZATIONS_NAMES_TIME:J

    goto :goto_0

    :cond_2
    sget-boolean v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->updateRegionsInView:Z

    if-eqz v0, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->oRenderer_CivRegionNames:Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$Renderer_CivRegionNames;

    invoke-interface {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$Renderer_CivRegionNames;->update()V

    sput-boolean v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->updateRegionsInView:Z

    :cond_3
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->drawCivNames_Begin(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    invoke-static {}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->drawCivRegions_Names_UpdateTime()V

    sget-object v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->oRenderer_CivRegionNames:Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$Renderer_CivRegionNames;

    invoke-interface {v0, p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$Renderer_CivRegionNames;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->drawCivNames_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->drawHideAnimation:Z

    sput-wide v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->CIVILIZATIONS_NAMES_TIME_HIDE:J

    :goto_0
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public static final declared-synchronized drawCivNames_Begin(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 5

    const-class v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;

    monitor-enter v0

    :try_start_0
    sget v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->CIVILIZATION_NAMES_ALPHA:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    sput v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->civsRegionsAlpha:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p0

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->cpy()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p0

    sput-object p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->oldTransformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->civsRegionsAlpha:F

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final drawCivNames_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->oldTransformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    return-void
.end method

.method protected static final drawCivRegions_Names2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    sget-object v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-ge v0, v1, :cond_1

    :try_start_1
    sget-object v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_0

    :try_start_2
    sget-object v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->lRegions_Civs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivRegion(I)Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;

    move-result-object v2

    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->drawCivRegion(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_3
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :catch_1
    invoke-static {}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->updateRegionsInView2()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    :try_start_4
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_0
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_3
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method protected static final drawCivRegions_Names2_Low(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    sget v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->NUM_OF_REGIONS_IN_VIEW:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-ge v0, v1, :cond_1

    :try_start_1
    sget-object v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_0

    :try_start_2
    sget-object v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->lRegions_Civs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivRegion(I)Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;

    move-result-object v2

    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->drawCivRegion_Low(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_3
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :catch_1
    invoke-static {}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->updateRegionsInView2()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    :try_start_4
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_0
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_3
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static final drawCivRegions_Names_UpdateTime()V
    .locals 5

    sget-wide v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->CIVILIZATIONS_NAMES_TIME:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->CIVILIZATIONS_NAMES_TIME:J

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->CIVILIZATION_NAMES_ALPHA:F

    goto :goto_0

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->CIVILIZATION_NAMES_ALPHA:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIV_NAMES_TEXT_ALPHA:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIV_NAMES_TEXT_ALPHA:F

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->CIVILIZATIONS_NAMES_TIME:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIVILIZATIONS_NAMES_INTERVAL:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->CIVILIZATION_NAMES_ALPHA:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIV_NAMES_TEXT_ALPHA:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIV_NAMES_TEXT_ALPHA:F

    sput v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->CIVILIZATION_NAMES_ALPHA:F

    :cond_1
    :goto_0
    return-void
.end method

.method public static final drawCivRegions_Names_UpdateTimeHide()V
    .locals 6

    sget-wide v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->CIVILIZATIONS_NAMES_TIME_HIDE:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->CIVILIZATIONS_NAMES_TIME_HIDE:J

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIV_NAMES_TEXT_ALPHA:F

    sput v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->CIVILIZATION_NAMES_ALPHA:F

    goto :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIV_NAMES_TEXT_ALPHA:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIV_NAMES_TEXT_ALPHA:F

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->CIVILIZATIONS_NAMES_TIME_HIDE:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIVILIZATIONS_NAMES_INTERVAL:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->CIVILIZATION_NAMES_ALPHA:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    sput v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->CIVILIZATION_NAMES_ALPHA:F

    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->drawHideAnimation:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private static processProvince(I[I)V
    .locals 3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    aget v1, p1, v0

    if-lez v1, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->lRegions_Civs_RegionsID:Ljava/util/List;

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivRegionID()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivRegionID()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->lRegions_Civs:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->lRegions_Civs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    aput v1, p1, v0

    sget-object p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->lRegions_Civs_RegionsID:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivRegionID()I

    move-result p1

    if-ltz p1, :cond_1

    sget-object p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->lRegions_Civs_RegionsID:Ljava/util/List;

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivRegionID()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static updateIsProvinceAssigned(IZ)V
    .locals 1

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->isProvinceAssigned:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static final updateRegionsInView2()V
    .locals 4

    sget-object v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->lRegions_Civs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :try_start_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_0

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->processProvince(I[I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v1, v2, :cond_1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->processProvince(I[I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->lRegions_Civs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->NUM_OF_REGIONS_IN_VIEW:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public static final updateRenderer_CivNames()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInInitGameMenu()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInInitGame_Menus()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMainMenu()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInLoadGamesList()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarios_NewGame()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGameLegacies()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInLoadScenario()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_CIV_NAMES:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$2;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$2;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->oRenderer_CivRegionNames:Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$Renderer_CivRegionNames;

    goto :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_CIV_NAMES:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$3;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$3;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->oRenderer_CivRegionNames:Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$Renderer_CivRegionNames;

    goto :goto_0

    :cond_1
    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$4;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$4;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->oRenderer_CivRegionNames:Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$Renderer_CivRegionNames;

    goto :goto_0

    :cond_2
    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$5;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$5;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->oRenderer_CivRegionNames:Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$Renderer_CivRegionNames;

    :goto_0
    return-void
.end method
