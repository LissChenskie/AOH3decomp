.class public Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_AllianceSpecialReformHRE.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static allianceID:I

.field public static lTime:J

.field public static reformID:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(II)V
    .locals 21

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput p1, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->allianceID:I

    sput p2, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->reformID:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int v3, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->reformID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->allianceID:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget v5, v5, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->iReformsPassed:I

    const/4 v7, 0x0

    sget-object v7, Laoc/kingdoms/lukasz/menusScenarioEditor/YGiX/gpVDKipRURuzw;->bHdqPKTpssb:Ljava/lang/String;

    const-string v15, "Reform"

    if-ne v2, v5, :cond_0

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE$1;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v9, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->reformID:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v10, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->reformID:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v11, v0, v5

    mul-int/lit8 v5, v0, 0x2

    sub-int v5, v4, v5

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v13, v5, v7

    sget v5, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->reformID:I

    move-object v7, v2

    move-object/from16 v8, p0

    move v12, v1

    move v14, v5

    move/from16 p1, v3

    move-object v3, v15

    move v15, v5

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;Ljava/lang/String;Ljava/lang/String;IIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move/from16 p1, v3

    move-object v3, v15

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE$2;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v9, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->reformID:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v10, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->reformID:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v11, v0, v5

    mul-int/lit8 v5, v0, 0x2

    sub-int v5, v4, v5

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v13, v5, v7

    sget v15, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->reformID:I

    move-object v7, v2

    move-object/from16 v8, p0

    move v12, v1

    move v14, v15

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;Ljava/lang/String;Ljava/lang/String;IIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    add-int/2addr v1, v2

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "ReformRequirements"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v9, v5, 0x4

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v12, v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x4

    add-int v13, v5, v7

    const-string v14, ""

    move-object v7, v2

    move v11, v1

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v5

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v5

    float-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v2, v7

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->hre:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_HRE;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_HRE;->HRE_REFORM_COST_REQUIRED_TECH:[I

    sget v7, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->reformID:I

    aget v5, v5, v7

    const-string v15, ": "

    const-string v14, ""

    if-ltz v5, :cond_1

    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE$3;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "RequiredTechnology"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/GameValues;->hre:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_HRE;

    iget-object v10, v10, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_HRE;->HRE_REFORM_COST_REQUIRED_TECH:[I

    sget v11, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->reformID:I

    aget v10, v10, v11

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    mul-int/lit8 v7, v0, 0x2

    sub-int v16, v4, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x5

    add-int v17, v7, v8

    move-object v7, v5

    move-object/from16 v8, p0

    move v12, v0

    move v13, v1

    move-object/from16 p2, v3

    move-object v3, v14

    move/from16 v14, v16

    move/from16 v19, v4

    move-object v4, v15

    move/from16 v15, v17

    move/from16 v16, v2

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;Ljava/lang/String;Ljava/lang/String;IIIIII)V

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

    add-int/2addr v1, v5

    goto :goto_1

    :cond_1
    move-object/from16 p2, v3

    move/from16 v19, v4

    move-object v3, v14

    move-object v4, v15

    :goto_1
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->hre:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_HRE;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_HRE;->HRE_REFORM_COST_GOLD:[F

    sget v7, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->reformID:I

    aget v5, v5, v7

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-lez v5, :cond_2

    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE$4;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Gold"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->hre:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_HRE;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_HRE;->HRE_REFORM_COST_GOLD:[F

    sget v8, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->reformID:I

    aget v7, v7, v8

    const/16 v8, 0x64

    invoke-static {v7, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    mul-int/lit8 v4, v0, 0x2

    sub-int v14, v19, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x5

    add-int v15, v4, v7

    move-object v7, v5

    move-object/from16 v8, p0

    move v12, v0

    move v13, v1

    move/from16 v16, v2

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    :cond_2
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE$5;

    const-string v9, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->hre:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_HRE;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_HRE;->HRE_REFORM_COST_DIPLOMACY:[F

    sget v8, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->reformID:I

    aget v7, v7, v8

    const/16 v15, 0xa

    invoke-static {v7, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->diplomacy:I

    mul-int/lit8 v5, v0, 0x2

    sub-int v5, v19, v5

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v7, v7, 0x2

    mul-int/lit8 v7, v7, 0x2

    sub-int v7, v5, v7

    div-int/lit8 v14, v7, 0x2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x5

    add-int v16, v7, v8

    move-object v7, v4

    move-object/from16 v8, p0

    move v12, v0

    move v13, v1

    move/from16 v20, v1

    move v1, v15

    move/from16 v15, v16

    move/from16 v16, v2

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE$6;

    const-string v11, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->hre:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_HRE;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_HRE;->HRE_REFORM_COST_LEGACY:[F

    sget v8, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->reformID:I

    aget v3, v3, v8

    invoke-static {v3, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget v13, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v0

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v3, v3, 0x2

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v5, v3

    div-int/lit8 v3, v3, 0x2

    add-int v14, v1, v3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v5, v1

    div-int/lit8 v16, v1, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x5

    add-int v17, v1, v3

    move-object v9, v4

    move-object/from16 v10, p0

    move/from16 v15, v20

    move/from16 v18, v2

    invoke-direct/range {v9 .. v18}, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int v1, v20, v1

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE$7;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Cancel"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v11, -0x1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v3, v3, 0x2

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v5, v3

    div-int/lit8 v14, v3, 0x2

    const/4 v15, 0x1

    move-object v7, v2

    move-object/from16 v8, p0

    move v12, v0

    move v13, v1

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE$8;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "PassReform"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v3, v3, 0x2

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v5, v3

    div-int/lit8 v3, v3, 0x2

    add-int v12, v0, v3

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v5, v0

    div-int/lit8 v14, v5, 0x2

    sget v0, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->allianceID:I

    sget v3, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->reformID:I

    invoke-static {v0, v3}, Laoc/kingdoms/lukasz/map/allianceHRE/HREManager;->passReform_ReformsPassed(II)Z

    move-result v0

    xor-int/lit8 v15, v0, 0x1

    move-object v7, v2

    move-object/from16 v8, p0

    move v13, v1

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    mul-int/lit8 v3, p1, 0x2

    sub-int/2addr v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v9, 0x0

    move/from16 v4, v19

    invoke-direct {v0, v9, v9, v4, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE$9;

    sget v12, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->allianceID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, p2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v7, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->reformID:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    const/16 v16, 0x0

    sget v17, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    move-object v10, v1

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v17}, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;ILjava/lang/String;Ljava/lang/String;ZZI)V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v2, v4, 0x2

    sub-int v2, v0, v2

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move/from16 v3, p1

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    iput-boolean v9, v0, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->drawScrollPositionAlways:Z

    return-void
.end method

.method public static confirm()V
    .locals 6

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->allianceID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget v0, v0, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->iLeaderCivID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_3

    sget v0, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->allianceID:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->reformID:I

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/allianceHRE/HREManager;->passReform_Legacy(II)Z

    move-result v0

    const/16 v1, 0x64

    const-string v2, ": "

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "InsufficientLegacy"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->hre:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_HRE;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_HRE;->HRE_REFORM_COST_LEGACY:[F

    sget v4, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->reformID:I

    aget v3, v3, v4

    invoke-static {v3, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    invoke-virtual {v0, v2, v1, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->allianceID:I

    sget v3, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->reformID:I

    invoke-static {v0, v3}, Laoc/kingdoms/lukasz/map/allianceHRE/HREManager;->passReform_Diplomacy(II)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "DiplomacyPoints"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->hre:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_HRE;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_HRE;->HRE_REFORM_COST_DIPLOMACY:[F

    sget v4, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->reformID:I

    aget v3, v3, v4

    invoke-static {v3, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->diplomacy:I

    invoke-virtual {v0, v2, v1, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_1
    sget v0, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->allianceID:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->reformID:I

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/allianceHRE/HREManager;->passReform_RequiredTech(II)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "RequiredTechnology"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->hre:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_HRE;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_HRE;->HRE_REFORM_COST_REQUIRED_TECH:[I

    sget v4, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->reformID:I

    aget v3, v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Name:Ljava/lang/String;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    invoke-virtual {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    sget v0, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->allianceID:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->reformID:I

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/allianceHRE/HREManager;->passReform(II)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->allianceID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_AllianceSpecial(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID:I

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID2:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v2, 0x0

    sget-object v2, Lcom/badlogic/gdx/utils/compression/spWT/QefTqRjwAJmEDy;->cONzssNePRRmasS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Reform"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->reformID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Info(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoCrown:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 14

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int v0, p3, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    move v3, v0

    goto :goto_0

    :cond_0
    move/from16 v3, p3

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->getPosX()I

    move-result v0

    add-int v0, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    move-object v13, p1

    invoke-static {p1, v0, v1, v2, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->getPosX()I

    move-result v0

    add-int v6, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->getPosY()I

    move-result v0

    add-int v7, v0, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v9, v0, v1

    const/4 v10, 0x0

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    move-object v5, p1

    invoke-static/range {v5 .. v12}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->civInfoOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->civInfoOver:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int v7, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->getPosY()I

    move-result v0

    add-int v8, v0, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->civInfoOver:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->lTime:J

    return-void
.end method
