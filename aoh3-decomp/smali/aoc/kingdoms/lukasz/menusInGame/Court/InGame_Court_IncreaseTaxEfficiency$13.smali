.class Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$13;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active_Value;
.source "InGame_Court_IncreaseTaxEfficiency.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency;Ljava/lang/String;IIIIIII)V
    .locals 10

    move-object v9, p0

    move-object v0, p1

    iput-object v0, v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$13;->this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active_Value;-><init>(Ljava/lang/String;IIIIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 11

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$13;->getCurrent()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_7

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->SHIFT_HOLD:Z

    const-string v1, "InsufficientGold"

    const-string v2, "InsufficientLegacy"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x64

    const-string v6, ": "

    if-nez v0, :cond_3

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->CTRL_HOLD:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    move v0, v3

    :goto_0
    sget v7, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency;->CLICK_X_TIMES:I

    if-ge v3, v7, :cond_6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$13;->getCurrent()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseTaxEfficiencyCostLegacy(I)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v9, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$13;->getCurrent()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseTaxEfficiencyCostLegacy(I)F

    move-result v9

    invoke-static {v9, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    invoke-virtual {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$13;->getCurrent()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->addIncreaseTaxEfficiencyInProvince()Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$13;->getCurrent()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseTaxEfficiencyCost(I)F

    move-result v3

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-virtual {v2, v1, v3, v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    :cond_2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$13;->getCurrent()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->addProvinceDot_TaxEfficiency(I)V

    move v0, v4

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    :goto_2
    move v0, v3

    :goto_3
    const/4 v7, 0x5

    if-ge v3, v7, :cond_6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$13;->getCurrent()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseTaxEfficiencyCostLegacy(I)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_4

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v9, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$13;->getCurrent()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseTaxEfficiencyCostLegacy(I)F

    move-result v9

    invoke-static {v9, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    invoke-virtual {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$13;->getCurrent()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->addIncreaseTaxEfficiencyInProvince()Z

    move-result v7

    if-nez v7, :cond_5

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$13;->getCurrent()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseTaxEfficiencyCost(I)F

    move-result v3

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-virtual {v2, v1, v3, v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$13;->getCurrent()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->addProvinceDot_TaxEfficiency(I)V

    move v0, v4

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    :cond_6
    :goto_5
    if-eqz v0, :cond_7

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$13$1;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$13;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$13;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$13;->this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency;->getMenuPosX()I

    move-result v2

    add-int v3, v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$13;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$13;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$13;->this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency;->getMenuPosY()I

    move-result v2

    add-int v4, v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$13;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$13;->getHeight()I

    move-result v6

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$13$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$13;IIII)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->addClickAnimation(Laoc/kingdoms/lukasz/menu/ClickAnimation;)V

    :cond_7
    return-void
.end method

.method public buildElementHover()V
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$13;->getCurrent()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->getHoverTaxEfficiency(IZ)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$13;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method

.method public getTextToDraw()Ljava/lang/String;
    .locals 3

    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$13;->lastValue:F

    iget v1, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$13;->id:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseTaxEfficiencyCost(I)F

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency;->CLICK_X_TIMES:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    sget-object v1, Laoc/kingdoms/lukasz/map/advisors/VjN/hQfu;->ZijPWtcgbYNZq:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$13;->id:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseTaxEfficiencyCost(I)F

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency;->CLICK_X_TIMES:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/16 v2, 0xa

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$13;->setText(Ljava/lang/String;)V

    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$13;->id:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseTaxEfficiencyCost(I)F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency;->CLICK_X_TIMES:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$13;->lastValue:F

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$13;->sText:Ljava/lang/String;

    return-object v0
.end method
