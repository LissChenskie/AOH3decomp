.class public Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioGuaranteeList;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "ScenarioGuaranteeList.java"


# static fields
.field public static activeCivID:I

.field public static activeCivID2:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 24

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    new-instance v5, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "GuaranteeIndependence"

    invoke-virtual {v7, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v12, v4, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v11, 0x6

    add-int v13, v7, v11

    const/4 v11, 0x0

    move-object v7, v5

    invoke-direct/range {v7 .. v13}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;-><init>(Ljava/lang/String;IIIII)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, 0x0

    new-instance v14, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioGuaranteeList$1;

    sget v7, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioGuaranteeList;->activeCivID:I

    const-string v13, "SelectCivilization"

    if-nez v7, :cond_0

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v7

    :goto_0
    move-object v9, v7

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v7, 0x2

    mul-int/lit8 v7, v0, 0x2

    sub-int v17, v4, v7

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v18, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioGuaranteeList;->activeCivID:I

    move-object v7, v14

    move-object/from16 v8, p0

    move v12, v0

    move/from16 v19, v2

    move-object v2, v13

    move v13, v5

    move/from16 v20, v3

    move-object v3, v14

    move/from16 v14, v17

    move/from16 v21, v1

    move-object v1, v15

    move/from16 v15, v16

    move/from16 v16, v18

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioGuaranteeList$1;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioGuaranteeList;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v7

    add-int/2addr v5, v3

    new-instance v3, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioGuaranteeList$2;

    sget v7, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioGuaranteeList;->activeCivID2:I

    if-nez v7, :cond_1

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v9, v2

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v2, 0x2

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v16, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioGuaranteeList;->activeCivID2:I

    move-object v7, v3

    move-object/from16 v8, p0

    move v12, v0

    move v13, v5

    move/from16 v14, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioGuaranteeList$2;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioGuaranteeList;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v5, v2

    new-instance v2, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioGuaranteeList$3;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Confirm"

    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v7, v2

    move v10, v0

    move v11, v5

    move/from16 v12, v17

    invoke-direct/range {v7 .. v13}, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioGuaranteeList$3;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioGuaranteeList;Ljava/lang/String;IIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v5, v2

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v7, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioGuaranteeList;->activeCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v12, v4, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x6

    add-int v13, v1, v7

    move-object v7, v2

    move v11, v5

    invoke-direct/range {v7 .. v13}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;-><init>(Ljava/lang/String;IIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v5, v1

    sget v1, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioGuaranteeList;->activeCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->guarantee:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    const-string v2, "None"

    const-string v15, "Remove"

    if-nez v1, :cond_3

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v10, -0x1

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v7, v1

    move v11, v0

    move v12, v5

    move/from16 v13, v17

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v5, v1

    :cond_2
    move-object/from16 v23, v15

    goto/16 :goto_3

    :cond_3
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v10, -0x1

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    move-object v7, v1

    move v11, v0

    move v12, v5

    move/from16 v13, v17

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v5, v1

    sget v1, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioGuaranteeList;->activeCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->guarantee:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    new-instance v14, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioGuaranteeList$4;

    iget v8, v7, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v8, 0x2

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    iget v13, v7, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    move-object v7, v14

    move-object/from16 v8, p0

    move v12, v0

    move/from16 v18, v13

    move v13, v5

    move-object/from16 v22, v1

    move-object v1, v14

    move/from16 v14, v17

    move-object/from16 v23, v15

    move/from16 v15, v16

    move/from16 v16, v18

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioGuaranteeList$4;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioGuaranteeList;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v5, v1

    move-object/from16 v1, v22

    move-object/from16 v15, v23

    goto :goto_2

    :goto_3
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "GuaranteeTheirIndependence"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v7, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioGuaranteeList;->activeCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v12, v4, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x6

    add-int v13, v3, v7

    move-object v7, v1

    move v11, v5

    invoke-direct/range {v7 .. v13}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;-><init>(Ljava/lang/String;IIIII)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v3

    add-int/2addr v5, v1

    sget v1, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioGuaranteeList;->activeCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->guaranteeByCivID:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v10, -0x1

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v7, v1

    move v11, v0

    move v12, v5

    move/from16 v13, v17

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v5, v0

    goto/16 :goto_5

    :cond_4
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v3, v23

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v10, -0x1

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    move-object v7, v1

    move v11, v0

    move v12, v5

    move/from16 v13, v17

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v5, v1

    sget v1, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioGuaranteeList;->activeCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->guaranteeByCivID:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    new-instance v3, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioGuaranteeList$5;

    iget v7, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v7, 0x2

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    move-object v7, v3

    move-object/from16 v8, p0

    move v12, v0

    move v13, v5

    move/from16 v14, v17

    move/from16 v16, v2

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioGuaranteeList$5;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioGuaranteeList;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v5, v2

    goto :goto_4

    :cond_5
    :goto_5
    new-instance v1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    const/4 v8, 0x0

    sget-object v8, Lcom/google/android/gms/security/IYT/MQYGMkZOAcS;->WNkC:Ljava/lang/String;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v7, v1

    move/from16 v10, v21

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;-><init>(Ljava/lang/String;FIZZ)V

    add-int v3, v21, v20

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v0, v0, v21

    mul-int/lit8 v2, v20, 0x2

    sub-int/2addr v0, v2

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v19

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioGuaranteeList;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioGuaranteeList;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioGuaranteeList;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioGuaranteeList;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioGuaranteeList;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioGuaranteeList;->drawEditorMenuBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V

    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->drawMenu(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method public final drawEditorMenuBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V
    .locals 7

    add-int v2, p2, p6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioGuaranteeList;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result p2

    sub-int p2, p3, p2

    add-int/2addr p2, p7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioGuaranteeList;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object p6

    invoke-virtual {p6}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result p6

    add-int/2addr p6, p5

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr p6, v0

    invoke-static {p1, v2, p2, p4, p6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->mainBox:I

    add-int v3, p3, p7

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, p5, p2

    const/4 v6, 0x1

    move-object v0, p1

    move v4, p4

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox_EDGE_TOP_LR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIZ)V

    return-void
.end method

.method public updateLanguage()V
    .locals 3

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateLanguage()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioGuaranteeList;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "GuaranteeIndependence"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setText(Ljava/lang/String;)V

    return-void
.end method
