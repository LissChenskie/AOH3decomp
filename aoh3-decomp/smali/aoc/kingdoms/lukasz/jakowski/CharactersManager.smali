.class public Laoc/kingdoms/lukasz/jakowski/CharactersManager;
.super Ljava/lang/Object;
.source "CharactersManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;,
        Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;,
        Laoc/kingdoms/lukasz/jakowski/CharactersManager$ConfigCharactersData;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final loadAdvisor(ILjava/lang/String;I)V
    .locals 8

    const-string v0, ".json"

    const-string v1, "game/characters/"

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/JsonValue;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-class v2, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;

    if-eqz v1, :cond_0

    iget-object v2, v1, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->ImageID:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->ImageID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget v2, v1, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->BornYear:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    iget v4, v1, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->BornYear:I

    sub-int/2addr v3, v4

    const/16 v4, 0xa

    const/4 v5, 0x1

    if-lt v3, v4, :cond_1

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    iget v4, v1, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->BornYear:I

    sub-int/2addr v3, v4

    const/16 v4, 0x63

    if-le v3, v4, :cond_2

    :cond_1
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_YEARS_OLD_MIN:I

    sub-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_YEARS_OLD_RANDOM:I

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    sub-int/2addr v2, v3

    :cond_2
    const/4 v3, 0x3

    if-ne p2, v3, :cond_3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getRandomGeneralImage(I)I

    move-result v3

    goto :goto_1

    :cond_3
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-virtual {v3, p0, p2}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getRandomImage(II)I

    move-result v3

    :goto_1
    new-instance v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v6, v1, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->Name:Ljava/lang/String;

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->checkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->ImageID:Ljava/lang/String;

    invoke-direct {v4, v6, v3, v2, v7}, Laoc/kingdoms/lukasz/map/advisors/Advisor;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-static {v4, p2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->buildAdvisorBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;I)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    iget v3, v1, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->BornDay:I

    iput v3, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iDayOfBirth:I

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->BornMonth:I

    iput v1, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iMonthOfBirth:I

    const/4 v1, -0x1

    if-eqz p2, :cond_9

    if-eq p2, v5, :cond_7

    const/4 v3, 0x2

    if-eq p2, v3, :cond_5

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz v3, :cond_4

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v3, p0, v1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    :cond_4
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iput-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v1, p0, v5}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    goto/16 :goto_2

    :cond_5
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz v3, :cond_6

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v3, p0, v1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    :cond_6
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iput-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v1, p0, v5}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    goto :goto_2

    :cond_7
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz v3, :cond_8

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v3, p0, v1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    :cond_8
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iput-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v1, p0, v5}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    goto :goto_2

    :cond_9
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz v3, :cond_a

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v3, p0, v1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    :cond_a
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iput-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v1, p0, v5}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_b
    :goto_2
    return-void
.end method

.method public static final loadGeneral(ILjava/lang/String;II)V
    .locals 11

    const-string v0, ".json"

    const/4 v1, 0x0

    sget-object v1, Lcom/pairip/licensecheck/CohD/CaiJWNfqszJNZ;->vdCqiYkuxnl:Ljava/lang/String;

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/JsonValue;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-class v2, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;

    if-eqz v1, :cond_0

    iget-object v2, v1, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->ImageID:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->ImageID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget v2, v1, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->BornYear:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    iget v4, v1, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->BornYear:I

    sub-int/2addr v3, v4

    const/16 v4, 0xa

    if-lt v3, v4, :cond_2

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    iget v4, v1, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->BornYear:I

    sub-int/2addr v3, v4

    const/16 v4, 0x63

    if-le v3, v4, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    move v8, v2

    goto :goto_3

    :cond_2
    :goto_2
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->GENERAL_YEARS_OLD_MIN:I

    sub-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->GENERAL_YEARS_OLD_RANDOM:I

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_1

    :goto_3
    const/16 v2, -0x63

    if-eq p2, v2, :cond_3

    iput p2, v1, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->Attack:I

    :cond_3
    if-eq p3, v2, :cond_4

    iput p3, v1, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->Defense:I

    :cond_4
    new-instance v2, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget-object v3, v1, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->Name:Ljava/lang/String;

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->checkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget v3, v1, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->Attack:I

    if-ltz v3, :cond_5

    iget v3, v1, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->Attack:I

    :goto_4
    move v6, v3

    goto :goto_5

    :cond_5
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->GENERAL_ATTACK_BASE_VALUE:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->GENERAL_ATTACK_RANDOM:I

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/2addr v3, v6

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->GENERAL_ATTACK_RANDOM2:I

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/2addr v3, v6

    goto :goto_4

    :goto_5
    iget v3, v1, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->Defense:I

    if-ltz v3, :cond_6

    iget v3, v1, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->Defense:I

    :goto_6
    move v7, v3

    goto :goto_7

    :cond_6
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->GENERAL_DEFENSE_BASE_VALUE:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->GENERAL_DEFENSE_RANDOM:I

    invoke-virtual {v7, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/2addr v3, v7

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->GENERAL_DEFENSE_RANDOM2:I

    invoke-virtual {v7, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/2addr v3, v7

    goto :goto_6

    :goto_7
    iget-object v10, v1, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->ImageID:Ljava/lang/String;

    move-object v3, v2

    move v9, p0

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    iget v3, v1, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->BornDay:I

    iput v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->d:I

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->BornMonth:I

    iput v1, v2, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->m:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addGeneral(Laoc/kingdoms/lukasz/map/army/ArmyGeneral;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_7
    :goto_8
    return-void
.end method
