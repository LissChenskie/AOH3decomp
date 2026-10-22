.class Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit$2;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonAdvisorGeneral;
.source "InGame_AdvisorRecruit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;IILjava/lang/String;IIILjava/lang/String;)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit$2;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/button/ButtonAdvisorGeneral;-><init>(IILjava/lang/String;IIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 8

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getRecruitGoldCost(I)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    const/16 v1, 0x64

    const-string v2, ": "

    if-gez v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "InsufficientGold"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getRecruitGoldCost(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-virtual {v0, v2, v1, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getRecruitCostLegacy(I)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

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

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getRecruitCostLegacy(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    invoke-virtual {v0, v2, v1, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit$2;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit$2;->getCurrent()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    iget-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit$2;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit$2;->getCurrent()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->recruitAdvisorID(II)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID:I

    sput v3, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID2:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    iget-object v4, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit$2;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->iAdvisorType:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisorGroupName(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Hired"

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Info(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->iActiveAdvisorTypeID:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoGeneral:I

    goto :goto_0

    :cond_2
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoCrown:I

    :goto_0
    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    :cond_3
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_AdvisorRecruit(Z)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Court()Z

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_CourtSavePos()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    sput-wide v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    :cond_4
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_CivBonuses()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_CivBonuses()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_CivBonuses(Z)V

    sput-wide v1, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->lTime:J

    :cond_5
    :goto_1
    return-void
.end method
