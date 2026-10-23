.class Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$4;
.super Ljava/lang/Object;
.source "RendererGame.java"

# interfaces
.implements Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->updateRenderer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawCurrentScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 4

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FBO_PROVINCES:Z

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawOccupiedProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->drawActiveProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    iget v3, v3, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;->drawCloudsMinScale:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->drawCurrentScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_1
    sget-boolean v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->updateTimes:Z

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sput-wide v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawShips_Time:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :cond_2
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvincesBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-boolean v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->updateTimes:Z

    if-eqz v2, :cond_3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sput-wide v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawProvincesBorder_Time:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :cond_3
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->drawCivNames(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-boolean v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->updateTimes:Z

    if-eqz v2, :cond_4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sput-wide v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawCivsNames_Time:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :cond_4
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsInterface:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsInterface;

    invoke-interface {v2, p1}, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsInterface;->drawCloudsInterface(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-boolean v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->updateTimes:Z

    if-eqz v2, :cond_5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sput-wide v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawClouds_Time:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :cond_5
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/map/Map;->drawMapBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-boolean v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->updateTimes:Z

    if-eqz v2, :cond_6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sput-wide v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawMapBorder_Time:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    :cond_6
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->animationManager:Laoc/kingdoms/lukasz/jakowski/AnimationManager;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/jakowski/AnimationManager;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public drawCurrentScale_Provinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 4

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->lastUpdateTime:J

    sub-long/2addr v0, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->SETTINGS_MENU_UPDATE_TIME:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->lastUpdateTime:J

    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->updateTimes:Z

    :cond_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_Settings(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    return-void
.end method

.method public drawWithoutScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_0
    sget-boolean v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->updateTimes:Z

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sput-wide v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawShips2_Time:J

    :cond_1
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->updateDrawArmyAlpha()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->drawProvNames(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-boolean v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->updateTimes:Z

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sput-wide v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawProvincesNames_Time:J

    :cond_2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawSiegeLines_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawBiggestCitiesLines_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DIPLOMACY:I

    if-eq v2, v3, :cond_6

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CIV_POPULATION_HOVER:I

    if-eq v2, v3, :cond_6

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CIV_ECONOMY_HOVER:I

    if-ne v2, v3, :cond_3

    goto :goto_1

    :cond_3
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DIPLOMACY_IMPROVE_RELATIONS:I

    if-eq v2, v3, :cond_5

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DIPLOMACY_DAMAGE_RELATIONS:I

    if-ne v2, v3, :cond_4

    goto :goto_0

    :cond_4
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesInGame:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesInGame;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    invoke-interface {v2, p1, v3}, Laoc/kingdoms/lukasz/map/map/MapCities$CitiesInGame;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_2

    :cond_5
    :goto_0
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    invoke-virtual {v2, p1, v3}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_2

    :cond_6
    :goto_1
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    invoke-virtual {v2, p1, v3}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    :goto_2
    sget-boolean v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->updateTimes:Z

    if-eqz v2, :cond_7

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sput-wide v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawCities_Time:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :cond_7
    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->oDrawMoveUnits:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawMoveUnits;

    invoke-interface {v2, p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawMoveUnits;->drawMoveUnits(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-boolean v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->updateTimes:Z

    if-eqz v2, :cond_8

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sput-wide v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawMoveUnits_Time:J

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->animationManager:Laoc/kingdoms/lukasz/jakowski/AnimationManager;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/jakowski/AnimationManager;->drawScaled(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_8
    :try_start_1
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawExtraDetails:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawExtraDetails;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawExtraDetails;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-boolean v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawArmyInProvince:Z

    if-eqz v2, :cond_9

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvincesArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/SiegeManager;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_4

    :cond_9
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawMapModeDetails(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :goto_4
    sget-boolean v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->updateTimes:Z

    if-eqz v2, :cond_a

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sput-wide v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawArmies_Time:J

    :cond_a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->drawSelectMode(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->drawNukeAnimation(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    const/4 p1, 0x0

    sput-boolean p1, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->updateTimes:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_5
    return-void
.end method

.method public drawWithoutScale_Provinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FBO_PROVINCES:Z

    if-eqz v2, :cond_0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->textureProvince_PBG:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v2, :cond_0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    if-ne v2, v3, :cond_0

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getLandProvinces_Alpha()F

    move-result v2

    invoke-static {p1, v2}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->drawPBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    :cond_0
    sget-boolean v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->updateTimes:Z

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sput-wide v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawProvincesFBO_Time:J

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawDiplomacyLines_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinceDots_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    return-void
.end method
