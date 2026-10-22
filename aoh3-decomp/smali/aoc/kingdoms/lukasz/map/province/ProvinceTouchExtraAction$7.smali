.class Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$7;
.super Ljava/lang/Object;
.source "ProvinceTouchExtraAction.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->updateActionUp_SetActiveProvinceID_ExtraAction()V
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
.method public extraAction(IIII)V
    .locals 1

    sget p1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz p1, :cond_4

    const/4 p1, 0x1

    if-nez p4, :cond_2

    sget p2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p2

    if-lez p2, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string p3, "ThisProvinceCanNotBeColonized"

    invoke-virtual {p2, p3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget p3, Laoc/kingdoms/lukasz/textures/Images;->populationGrowth:I

    invoke-virtual {p1, p2, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_0
    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    iget p2, p2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/GameValues;->colonization:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;

    iget p3, p3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;->ALLOW_COLONIZATION_BY_SPENDING_GOLD_COST:F

    cmpg-float p2, p2, p3

    if-gez p2, :cond_1

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "InsufficientGold"

    invoke-virtual {p4, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ": "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    sget-object p4, Laoc/kingdoms/lukasz/jakowski/GameValues;->colonization:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;

    iget p4, p4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;->ALLOW_COLONIZATION_BY_SPENDING_GOLD_COST:F

    invoke-static {p4, p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget p3, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-virtual {p2, p1, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget p2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/map/ColonizationManager;->establishSettlement_Gold(II)Z

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string p3, "SettlementEstablished"

    invoke-virtual {p2, p3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget p3, Laoc/kingdoms/lukasz/textures/Images;->populationGrowth:I

    invoke-virtual {p1, p2, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastGold(Ljava/lang/String;I)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    iget p1, p1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/GameValues;->colonization:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;->ALLOW_COLONIZATION_BY_SPENDING_GOLD_COST:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_3

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget p2, p2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto :goto_0

    :cond_2
    if-ne p4, p1, :cond_3

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget p2, p2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    :cond_3
    :goto_0
    sget-object p1, Laoc/kingdoms/lukasz/map/province/ProvinceHover;->provinceHoverBuild:Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;

    invoke-interface {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;->build()V

    :cond_4
    return-void
.end method
