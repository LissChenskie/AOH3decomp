.class Laoc/kingdoms/lukasz/map/province/ProvinceDraw$19;
.super Ljava/lang/Object;
.source "ProvinceDraw.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->updateDrawProvinces()V
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
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 7

    sget v0, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioRelationsList;->activeCivID:I

    const/4 v1, 0x0

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v2, :cond_1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_ALPHA:F

    invoke-virtual {v2, p1, v3}, Laoc/kingdoms/lukasz/map/province/Province;->setProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v1, v0, :cond_d

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_ALPHA:F

    invoke-virtual {v0, p1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvinceExtra(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_2
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v2, :cond_8

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioRelationsList;->activeCivID:I

    if-ne v2, v3, :cond_4

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_ALPHA:F

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_3

    :cond_4
    sget v2, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioRelationsList;->activeCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v2

    float-to-int v2, v2

    if-nez v2, :cond_5

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_NEUTRAL_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_NEUTRAL_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v5, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_NEUTRAL_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_ALPHA:F

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_3

    :cond_5
    if-lez v2, :cond_6

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_GREEN:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_GREEN2:Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_RELATIONS_MAX:F

    float-to-int v5, v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_ALPHA:F

    invoke-static {v3, v4, v2, v5, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;IIF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_3

    :cond_6
    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_RED:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_RED2:Lcom/badlogic/gdx/graphics/Color;

    neg-int v2, v2

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_RELATIONS_MIN:F

    neg-float v5, v5

    float-to-int v5, v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_ALPHA:F

    invoke-static {v3, v4, v2, v5, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;IIF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_3
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_8
    :goto_4
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v1, v0, :cond_d

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    if-nez v0, :cond_c

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioRelationsList;->activeCivID:I

    if-eq v0, v2, :cond_9

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_ALPHA:F

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_5

    :cond_9
    sget v0, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioRelationsList;->activeCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v0

    float-to-int v0, v0

    if-nez v0, :cond_a

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_NEUTRAL_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_NEUTRAL_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_NEUTRAL_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_ALPHA:F

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_5

    :cond_a
    if-lez v0, :cond_b

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_GREEN:Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_GREEN2:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_RELATIONS_MAX:F

    float-to-int v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_ALPHA:F

    invoke-static {v2, v3, v0, v4, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;IIF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_5

    :cond_b
    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_RED:Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_RED2:Lcom/badlogic/gdx/graphics/Color;

    neg-int v0, v0

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_RELATIONS_MIN:F

    neg-float v4, v4

    float-to-int v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_ALPHA:F

    invoke-static {v2, v3, v0, v4, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;IIF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_5
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_d
    return-void
.end method
