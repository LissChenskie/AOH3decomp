.class public Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Laws.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static lTime:J

.field public static lawID:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 20

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput p1, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

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

    const/4 v9, 0x0

    move v2, v9

    :goto_0
    sget-object v5, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/LawsManager$Law;->Law:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_9

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->laws:Ljava/util/List;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v7, ".d"

    if-ne v5, v2, :cond_1

    new-instance v5, Laoc/kingdoms/lukasz/menu_element/button/Button_Law3_Green;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v10, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/LawsManager$Law;->Law:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-virtual {v8, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v10, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/LawsManager$Law;->LawDesc:[Ljava/lang/String;

    if-eqz v10, :cond_0

    sget-object v7, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LawsManager$Law;->LawDesc:[Ljava/lang/String;

    aget-object v7, v7, v2

    goto :goto_1

    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v13, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/LawsManager$Law;->Law:[Ljava/lang/String;

    aget-object v12, v12, v2

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v8, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v13, v0, v7

    mul-int/lit8 v7, v0, 0x2

    sub-int v7, v4, v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v15, v7, v8

    sget-object v7, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LawsManager$Law;->ImageID:[I

    aget v16, v7, v2

    sget v17, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    move-object v10, v5

    move v14, v1

    move/from16 v18, v2

    invoke-direct/range {v10 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Law3_Green;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_1
    sget-object v5, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/LawsManager$Law;->RequiredTechID:[I

    aget v5, v5, v2

    if-ltz v5, :cond_3

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    sget-object v8, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LawsManager$Law;->RequiredTechID:[I

    aget v8, v8, v2

    invoke-virtual {v5, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws$1;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v10, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/LawsManager$Law;->Law:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-virtual {v8, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v10, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/LawsManager$Law;->LawDesc:[Ljava/lang/String;

    if-eqz v10, :cond_2

    sget-object v7, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LawsManager$Law;->LawDesc:[Ljava/lang/String;

    aget-object v7, v7, v2

    goto :goto_2

    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v13, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/LawsManager$Law;->Law:[Ljava/lang/String;

    aget-object v11, v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-virtual {v8, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v14, v0, v7

    mul-int/lit8 v7, v0, 0x2

    sub-int v7, v4, v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v16, v7, v8

    sget-object v7, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LawsManager$Law;->ImageID:[I

    aget v17, v7, v2

    sget v18, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    move-object v10, v5

    move-object/from16 v11, p0

    move v15, v1

    move/from16 v19, v2

    invoke-direct/range {v10 .. v19}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_3
    sget-object v5, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/LawsManager$Law;->RequiredGovernmentID:[I

    if-eqz v5, :cond_5

    sget-object v5, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/LawsManager$Law;->RequiredGovernmentID:[I

    aget v5, v5, v2

    if-ltz v5, :cond_5

    sget-object v5, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/LawsManager$Law;->RequiredGovernmentID:[I

    aget v5, v5, v2

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v8

    if-eq v5, v8, :cond_5

    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws$2;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v10, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/LawsManager$Law;->Law:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-virtual {v8, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v10, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/LawsManager$Law;->LawDesc:[Ljava/lang/String;

    if-eqz v10, :cond_4

    sget-object v7, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LawsManager$Law;->LawDesc:[Ljava/lang/String;

    aget-object v7, v7, v2

    goto :goto_3

    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v13, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/LawsManager$Law;->Law:[Ljava/lang/String;

    aget-object v11, v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_3
    invoke-virtual {v8, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v14, v0, v7

    mul-int/lit8 v7, v0, 0x2

    sub-int v7, v4, v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v16, v7, v8

    sget-object v7, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LawsManager$Law;->ImageID:[I

    aget v17, v7, v2

    sget v18, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    move-object v10, v5

    move-object/from16 v11, p0

    move v15, v1

    move/from16 v19, v2

    invoke-direct/range {v10 .. v19}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_5
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws$3;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v10, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/LawsManager$Law;->Law:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-virtual {v8, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v10, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/LawsManager$Law;->LawDesc:[Ljava/lang/String;

    if-eqz v10, :cond_6

    sget-object v7, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LawsManager$Law;->LawDesc:[Ljava/lang/String;

    aget-object v7, v7, v2

    goto :goto_4

    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v13, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/LawsManager$Law;->Law:[Ljava/lang/String;

    aget-object v11, v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_4
    invoke-virtual {v8, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v14, v0, v7

    mul-int/lit8 v7, v0, 0x2

    sub-int v7, v4, v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v16, v7, v8

    sget-object v7, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LawsManager$Law;->ImageID:[I

    aget v17, v7, v2

    sget v18, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    move-object v10, v5

    move-object/from16 v11, p0

    move v15, v1

    move/from16 v19, v2

    invoke-direct/range {v10 .. v19}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
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

    add-int/2addr v5, v1

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v8, v0

    invoke-static {v7, v2, v8, v4}, Laoc/kingdoms/lukasz/map/LawsManager;->getLawBonuses(IIII)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    move v8, v9

    :goto_6
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_7

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setPosY(I)V

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v10, v11

    add-int/2addr v5, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_7
    sub-int v1, v5, v1

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;

    sub-int v8, v5, v1

    mul-int/lit8 v10, v0, 0x2

    sub-int v10, v4, v10

    invoke-direct {v7, v0, v8, v10, v1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;-><init>(IIII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v1

    :cond_8
    move v1, v5

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    move v1, v9

    move v2, v1

    :goto_7
    if-ge v1, v0, :cond_b

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v5

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v5, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    if-ge v2, v5, :cond_a

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v2

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    add-int/2addr v2, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_b
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    mul-int/lit8 v1, v3, 0x2

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v9, v9, v4, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws$4;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v2, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LawsManager$Law;->Title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Law"

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x0

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    move-object v10, v1

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v16}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;Ljava/lang/String;Ljava/lang/String;ZZI)V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v2, v4, 0x2

    sub-int v2, v0, v2

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    iput-boolean v9, v0, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->drawScrollPositionAlways:Z

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 14

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lTime:J

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

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lTime:J

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
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->getPosX()I

    move-result v0

    add-int v0, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    move-object v13, p1

    invoke-static {p1, v0, v1, v2, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->getPosX()I

    move-result v0

    add-int v6, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->getPosY()I

    move-result v0

    add-int v7, v0, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->getHeight()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->getWidth()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->getPosY()I

    move-result v0

    add-int v8, v0, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->getHeight()I

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

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lTime:J

    return-void
.end method
