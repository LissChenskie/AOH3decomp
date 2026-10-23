.class public Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;
.super Ljava/lang/Object;
.source "AdvisorManager.java"


# instance fields
.field public advisorsImagesSize:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->advisorsImagesSize:Ljava/util/List;

    return-void
.end method

.method public static advisorIsRecruited(II)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz p0, :cond_0

    move v0, v1

    :cond_0
    return v0

    :cond_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz p0, :cond_2

    move v0, v1

    :cond_2
    return v0

    :cond_3
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz p0, :cond_4

    move v0, v1

    :cond_4
    return v0

    :cond_5
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz p0, :cond_6

    move v0, v1

    :cond_6
    return v0
.end method

.method public static getAdvisor(I)Laoc/kingdoms/lukasz/map/advisors/Advisor;
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0, p0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object p0

    return-object p0
.end method

.method public static getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    return-object p0

    :cond_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    return-object p0

    :cond_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    return-object p0

    :cond_2
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    return-object p0
.end method

.method public static getAdvisorGroupName(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->ADVISOR_NAME_DIPLOMATIC:Ljava/lang/String;

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->ADVISOR_NAME_MILITARY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->ADVISOR_NAME_INNOVATION:Ljava/lang/String;

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->ADVISOR_NAME_ECONOMIC:Ljava/lang/String;

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->ADVISOR_NAME_ADMINISTRATIVE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getAdvisorMaxLevel(I)I
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_MAX_LVL:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget p0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorMaxLevel:I

    add-int/2addr v0, p0

    return v0
.end method

.method public static final getAdvisorPromoteCost(II)I
    .locals 0

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget p0, p0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_PROMOTE_COST_PER_LEVEL:F

    int-to-float p1, p1

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static final getAdvisorPromoteCostLegacy(II)I
    .locals 0

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget p0, p0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_PROMOTE_COST_LEGACY_PER_LEVEL:F

    int-to-float p1, p1

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static getAdvisorsImgPath()Ljava/lang/String;
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->ENABLE_NON_KINGS_IMG:Z

    if-nez v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->FORCE_NON_KINGS_IMG:Z

    if-nez v0, :cond_0

    const-string v0, "advisors/"

    return-object v0

    :cond_0
    const-string v0, "advisors2/"

    return-object v0
.end method

.method public static getAdvisorsImgPath(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result p0

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object p0

    iget-boolean p0, p0, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->KingsImages:Z

    if-nez p0, :cond_0

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object p0, p0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget-boolean p0, p0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->ENABLE_NON_KINGS_IMG:Z

    if-nez p0, :cond_1

    :cond_0
    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object p0, p0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget-boolean p0, p0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->FORCE_NON_KINGS_IMG:Z

    if-nez p0, :cond_1

    const-string p0, "advisors/"

    return-object p0

    :cond_1
    const/4 p0, 0x0

    sget-object p0, Laoc/kingdoms/lukasz/menusInGame/Province/iOYW/ALZmnpZHj;->PpgYTLloRXJ:Ljava/lang/String;

    return-object p0
.end method

.method public static getRecruitCostLegacy(I)I
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->RECRUIT_ADVISOR_LEGACY_COST:I

    int-to-float v0, v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorCost:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_ADVISOR_COST:[F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    iget p0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget p0, v2, p0

    add-float/2addr v1, p0

    const/4 p0, 0x0

    invoke-static {p0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public static getRecruitGoldCost(I)I
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->RECRUIT_ADVISOR_GOLD_COST:I

    int-to-float v0, v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorCost:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_ADVISOR_COST:[F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    iget p0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget p0, v2, p0

    add-float/2addr v1, p0

    const/4 p0, 0x0

    invoke-static {p0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public static final promoteAdvisor(IIZ)Z
    .locals 8

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisorMaxLevel(I)I

    move-result v2

    if-lt v0, v2, :cond_0

    if-eqz p2, :cond_9

    :cond_0
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->advisorIsRecruited(II)Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez p2, :cond_3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    iget p2, p2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisorPromoteCost(II)I

    move-result v0

    int-to-float v0, v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1

    return v1

    :cond_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    iget p2, p2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisorPromoteCostLegacy(II)I

    move-result v0

    int-to-float v0, v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_2

    return v1

    :cond_2
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I

    invoke-static {p0, v1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisorPromoteCost(II)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I

    invoke-static {p0, v1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisorPromoteCostLegacy(II)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    :cond_3
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object p2

    const/4 v0, -0x1

    invoke-static {p2, p0, v0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object p2

    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I

    :try_start_0
    sget-object p2, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_BONUSES_UPGRADE_PER_LEVEL:F

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p2, v0

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->TaxEfficiency:F

    mul-float/2addr v3, p2

    iput v3, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->TaxEfficiency:F

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProvinceMaintenance:F

    mul-float/2addr v3, p2

    iput v3, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProvinceMaintenance:F

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GrowthRate:F

    mul-float/2addr v3, p2

    iput v3, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GrowthRate:F

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProductionEfficiency:F

    mul-float/2addr v3, p2

    iput v3, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProductionEfficiency:F

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncomeProduction:F

    mul-float/2addr v3, p2

    iput v3, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncomeProduction:F

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MonthlyLegacy:F

    mul-float/2addr v3, p2

    iput v3, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MonthlyLegacy:F

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MaxManpower:F

    mul-float/2addr v3, p2

    iput v3, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MaxManpower:F

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMaintenance:F

    mul-float/2addr v3, p2

    iput v3, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMaintenance:F

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitmentTime:F

    mul-float/2addr v3, p2

    iput v3, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitmentTime:F

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitArmyCost:F

    mul-float/2addr v3, p2

    iput v3, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitArmyCost:F

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->Research:F

    mul-float/2addr v3, p2

    iput v3, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->Research:F

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionCost:F

    mul-float/2addr v3, p2

    iput v3, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionCost:F

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->AdministrationBuildingsCost:F

    mul-float/2addr v3, p2

    iput v3, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->AdministrationBuildingsCost:F

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->EconomyBuildingsCost:F

    mul-float/2addr v3, p2

    iput v3, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->EconomyBuildingsCost:F

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MilitaryBuildingsCost:F

    mul-float/2addr v3, p2

    iput v3, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MilitaryBuildingsCost:F

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionTime:F

    mul-float/2addr v3, p2

    iput v3, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionTime:F

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->DevelopInfrastructureCost:F

    mul-float/2addr v3, p2

    iput v3, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->DevelopInfrastructureCost:F

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseTaxEfficiencyCost:F

    mul-float/2addr v3, p2

    iput v3, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseTaxEfficiencyCost:F

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseGrowthRateCost:F

    mul-float/2addr v3, p2

    iput v3, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseGrowthRateCost:F

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->InvestInEconomyCost:F

    mul-float/2addr v3, p2

    iput v3, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->InvestInEconomyCost:F

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseManpowerCost:F

    mul-float/2addr v3, p2

    iput v3, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseManpowerCost:F

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralAttack:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralAttack:F

    add-float/2addr v4, v0

    float-to-double v4, v4

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralAttack:F

    mul-float/2addr v6, p2

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-int v4, v4

    int-to-float v4, v4

    iput v4, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralAttack:F

    :cond_4
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralDefense:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralDefense:F

    add-float/2addr v4, v0

    float-to-double v4, v4

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralDefense:F

    mul-float/2addr v6, p2

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-int v4, v4

    int-to-float v4, v4

    iput v4, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralDefense:F

    :cond_5
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsAttack:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_6

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsAttack:F

    add-float/2addr v4, v0

    float-to-double v4, v4

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsAttack:F

    mul-float/2addr v6, p2

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-int v4, v4

    int-to-float v4, v4

    iput v4, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsAttack:F

    :cond_6
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsDefense:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_7

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsDefense:F

    add-float/2addr v3, v0

    float-to-double v3, v3

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsDefense:F

    mul-float/2addr v0, p2

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    double-to-int v0, v3

    int-to-float v0, v0

    iput v0, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsDefense:F

    :cond_7
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RegimentsLimit:I

    if-eqz v0, :cond_8

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v0

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RegimentsLimit:I

    add-int/2addr v2, v1

    int-to-double v2, v2

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RegimentsLimit:I

    int-to-float v4, v4

    mul-float/2addr v4, p2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RegimentsLimit:I

    :cond_8
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v0

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MaxMorale:F

    mul-float/2addr v2, p2

    iput v2, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MaxMorale:F

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v0

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMovementSpeed:F

    mul-float/2addr v2, p2

    iput v2, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMovementSpeed:F

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v0

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->SiegeEffectiveness:F

    mul-float/2addr v2, p2

    iput v2, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->SiegeEffectiveness:F

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v0

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ImproveRelationsModifier:F

    mul-float/2addr v2, p2

    iput v2, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ImproveRelationsModifier:F

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v0

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->LoanInterest:F

    mul-float/2addr v2, p2

    iput v2, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->LoanInterest:F

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v0

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->CoreCost:F

    mul-float/2addr v2, p2

    iput v2, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->CoreCost:F

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v0

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ReligionCost:F

    mul-float/2addr v2, p2

    iput v2, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ReligionCost:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object p1

    invoke-static {p1, p0, v1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    :cond_9
    return v1
.end method

.method public static final updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V
    .locals 5

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TaxEfficiency:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->TaxEfficiency:F

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TaxEfficiency:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProvinceMaintenance:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    iget v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GrowthRate:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GrowthRate:F

    iget v4, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GrowthRate:F

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GrowthRate:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateResearchPerMonth()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    :cond_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    iget v4, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProductionEfficiency:F

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeProduction:F

    iget v4, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncomeProduction:F

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeProduction:F

    iget v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MonthlyLegacy:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateLegacyPerMonth(I)V

    :cond_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy:F

    iget v4, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MonthlyLegacy:F

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy:F

    iget v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MaxManpower:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addCivUpdateMaxManpower(I)V

    :cond_2
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower:F

    iget v4, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MaxManpower:F

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower:F

    iget v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMaintenance:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMaintenance:F

    iget v4, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMaintenance:F

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMaintenance:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateArmyMaintenance(I)V

    :cond_3
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitmentTime:F

    iget v4, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitmentTime:F

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitmentTime:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmyCost:F

    iget v4, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitArmyCost:F

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmyCost:F

    iget v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->Research:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateResearchPerMonth(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    :cond_4
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ResearchPoints:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->Research:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ResearchPoints:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionCost:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionCost:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionCost:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdministrationBuildingsCost:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->AdministrationBuildingsCost:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdministrationBuildingsCost:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->EconomyBuildingsCost:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->EconomyBuildingsCost:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->EconomyBuildingsCost:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MilitaryBuildingsCost:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MilitaryBuildingsCost:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MilitaryBuildingsCost:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionTime:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionTime:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionTime:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->InvestInEconomyCost:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->InvestInEconomyCost:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->InvestInEconomyCost:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseManpowerCost:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseManpowerCost:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseManpowerCost:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseTaxEfficiencyCost:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseTaxEfficiencyCost:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseTaxEfficiencyCost:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseGrowthRateCost:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseGrowthRateCost:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseGrowthRateCost:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DevelopInfrastructureCost:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->DevelopInfrastructureCost:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DevelopInfrastructureCost:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    int-to-float v1, v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralAttack:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    int-to-float v1, v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralDefense:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    int-to-float v1, v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsAttack:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    int-to-float v1, v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsDefense:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    iget v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RegimentsLimit:I

    if-eqz v0, :cond_5

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RegimentsLimit:I

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateRegimentsLimit()V

    :cond_5
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxMorale:F

    iget v1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MaxMorale:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxMorale:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMovementSpeed:F

    iget v1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMovementSpeed:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMovementSpeed:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->SiegeEffectiveness:F

    iget v1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->SiegeEffectiveness:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->SiegeEffectiveness:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ImproveRelationsModifier:F

    iget v1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ImproveRelationsModifier:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ImproveRelationsModifier:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->LoanInterest:F

    iget v1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->LoanInterest:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->LoanInterest:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->CoreCost:F

    iget v1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->CoreCost:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->CoreCost:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ReligionCost:F

    iget p0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ReligionCost:F

    mul-float/2addr p0, v3

    add-float/2addr v0, p0

    iput v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ReligionCost:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateProvincesIncomeAndExpenses()V

    return-void
.end method


# virtual methods
.method public final advisorDied(II)V
    .locals 12

    const-string v0, "rebuildCourt"

    const-string v1, ": "

    const-string v2, "AdvisorDied"

    const/4 v3, -0x1

    if-eqz p2, :cond_9

    const/4 v4, 0x1

    if-eq p2, v4, :cond_6

    const/4 v4, 0x2

    if-eq p2, v4, :cond_3

    const/4 v4, 0x3

    if-eq p2, v4, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz p2, :cond_2

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, p2, :cond_1

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v11, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->ADVISOR_DIED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v6, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->council:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v10, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V

    invoke-virtual {p2, v11}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    new-instance p2, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager$4;

    invoke-direct {p2, p0, v0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager$4;-><init>(Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;Ljava/lang/String;)V

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    :cond_1
    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {p2, p1, v3}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    new-instance p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-direct {p2}, Laoc/kingdoms/lukasz/map/advisors/Advisor;-><init>()V

    iput-object p2, p1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    :cond_2
    return-void

    :cond_3
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz p2, :cond_5

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, p2, :cond_4

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v11, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->ADVISOR_DIED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v6, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->council:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v10, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V

    invoke-virtual {p2, v11}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    new-instance p2, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager$3;

    invoke-direct {p2, p0, v0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager$3;-><init>(Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;Ljava/lang/String;)V

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    :cond_4
    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {p2, p1, v3}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    new-instance p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-direct {p2}, Laoc/kingdoms/lukasz/map/advisors/Advisor;-><init>()V

    iput-object p2, p1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    :cond_5
    return-void

    :cond_6
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz p2, :cond_8

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, p2, :cond_7

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v11, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->ADVISOR_DIED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v6, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->council:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v10, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V

    invoke-virtual {p2, v11}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    new-instance p2, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager$2;

    invoke-direct {p2, p0, v0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager$2;-><init>(Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;Ljava/lang/String;)V

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    :cond_7
    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {p2, p1, v3}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    new-instance p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-direct {p2}, Laoc/kingdoms/lukasz/map/advisors/Advisor;-><init>()V

    iput-object p2, p1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    :cond_8
    return-void

    :cond_9
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz p2, :cond_b

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, p2, :cond_a

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v11, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->ADVISOR_DIED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v6, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->council:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v10, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V

    invoke-virtual {p2, v11}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    new-instance p2, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager$1;

    invoke-direct {p2, p0, v0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager$1;-><init>(Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;Ljava/lang/String;)V

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    :cond_a
    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {p2, p1, v3}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    new-instance p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-direct {p2}, Laoc/kingdoms/lukasz/map/advisors/Advisor;-><init>()V

    iput-object p2, p1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    :cond_b
    return-void
.end method

.method public getRandomGeneralImage(I)I
    .locals 6

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v0, p1, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->generalManager:Laoc/kingdoms/lukasz/map/GeneralManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/GeneralManager;->generalsImagesSize:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    iget p1, p1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGroupID:I

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    return p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->generalManager:Laoc/kingdoms/lukasz/map/GeneralManager;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/GeneralManager;->generalsImagesSize:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGroupID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civAdvisorsPool_Military:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civAdvisorsPool_Military:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->imageID:I

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->generalManager:Laoc/kingdoms/lukasz/map/GeneralManager;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/GeneralManager;->generalsImagesSize:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGroupID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_2
    if-ge v1, v3, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->generalManager:Laoc/kingdoms/lukasz/map/GeneralManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/GeneralManager;->generalsImagesSize:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    iget p1, p1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGroupID:I

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    return p1

    :cond_5
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getRandomImage(II)I
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move v3, v1

    :goto_0
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->advisorsImagesSize:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGroupID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    const/4 v4, 0x1

    if-ne p1, v3, :cond_3

    move v3, v1

    :goto_1
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civAdvisorsPool_Administration:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    :try_start_0
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civAdvisorsPool_Administration:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v5, v5, Laoc/kingdoms/lukasz/map/advisors/Advisor;->imageID:I

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_3
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civAdvisorsPool_Economy:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    :try_start_1
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civAdvisorsPool_Economy:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v5, v5, Laoc/kingdoms/lukasz/map/advisors/Advisor;->imageID:I

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    move v3, v1

    :goto_5
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civAdvisorsPool_Technology:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    :try_start_2
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civAdvisorsPool_Technology:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v5, v5, Laoc/kingdoms/lukasz/map/advisors/Advisor;->imageID:I

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_3
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz v3, :cond_4

    :try_start_3
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->imageID:I

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    :catch_3
    move-exception v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_4
    :goto_7
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz v3, :cond_5

    :try_start_4
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->imageID:I

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_8

    :catch_4
    move-exception v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_5
    :goto_8
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz v3, :cond_6

    :try_start_5
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->imageID:I

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_9

    :catch_5
    move-exception v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_6
    :goto_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->advisorsImagesSize:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGroupID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v6, v1

    :goto_a
    if-ge v6, v5, :cond_8

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_11

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, v5, :cond_10

    move v5, v1

    :goto_b
    iget-object v6, p0, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->advisorsImagesSize:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGroupID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v5, v6, :cond_9

    invoke-interface {v0, v5, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_9
    if-nez p2, :cond_a

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object p2, p2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civAdvisorsPool_Administration:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    move v2, v1

    :goto_c
    if-ge v2, p2, :cond_c

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civAdvisorsPool_Administration:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v5, v5, Laoc/kingdoms/lukasz/map/advisors/Advisor;->imageID:I

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_a
    if-ne p2, v4, :cond_b

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object p2, p2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civAdvisorsPool_Economy:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    move v2, v1

    :goto_d
    if-ge v2, p2, :cond_c

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civAdvisorsPool_Economy:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v5, v5, Laoc/kingdoms/lukasz/map/advisors/Advisor;->imageID:I

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_b
    const/4 v2, 0x2

    if-ne p2, v2, :cond_c

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object p2, p2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civAdvisorsPool_Technology:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    move v2, v1

    :goto_e
    if-ge v2, p2, :cond_c

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civAdvisorsPool_Technology:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v5, v5, Laoc/kingdoms/lukasz/map/advisors/Advisor;->imageID:I

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_c
    iget-object p2, p0, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->advisorsImagesSize:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGroupID:I

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_f
    if-ge v1, p2, :cond_e

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_f

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->advisorsImagesSize:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    iget p1, p1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGroupID:I

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    return p1

    :cond_f
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_10
    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->advisorsImagesSize:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    iget p1, p1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGroupID:I

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    return p1

    :cond_11
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final loadAdvisors()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget v2, Laoc/kingdoms/lukasz/map/RulersManager;->iGroupsSize:I

    if-ge v1, v2, :cond_0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "game/advisors/advisors/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/numImages.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    move v2, v0

    :goto_1
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->advisorsImagesSize:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final update_ChanceOfDeathAdvisor_Administrative(I)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v0, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iYearOfBirth:I

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/map/RulersManager;->characterDies(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->advisorDied(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final update_ChanceOfDeathAdvisor_Economic(I)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v0, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iYearOfBirth:I

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/map/RulersManager;->characterDies(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->advisorDied(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final update_ChanceOfDeathAdvisor_Innovation(I)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v0, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iYearOfBirth:I

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/map/RulersManager;->characterDies(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->advisorDied(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final update_ChanceOfDeathAdvisor_Military(I)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v0, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iYearOfBirth:I

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/map/RulersManager;->characterDies(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->advisorDied(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
