.class public Laoc/kingdoms/lukasz/jakowski/AI/AI_Missions;
.super Ljava/lang/Object;
.source "AI_Missions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final updateMissions()V
    .locals 2

    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_MISSIONS:I

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    :goto_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ge v0, v1, :cond_1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Missions;->updateMissions(I)V

    :cond_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_MISSIONS:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_MISSIONS:I

    :goto_1
    add-int/2addr v0, v1

    :cond_2
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_3

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Missions;->updateMissions(I)V

    :cond_3
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_MISSIONS:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method public static final updateMissions(I)V
    .locals 7

    :try_start_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iMissionsSize:I

    const/4 v1, 0x0

    if-lez v0, :cond_4

    move v0, v1

    :goto_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iMissionsSize:I

    if-ge v0, v2, :cond_9

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->canRunMission_Civ(II)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMissions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v2, v2, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    move v2, v1

    move v3, v2

    :goto_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMissions:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    int-to-float v3, v3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMissions:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventOption;

    iget v4, v4, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    if-lez v3, :cond_2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    move v3, v1

    :goto_2
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMissions:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    int-to-float v4, v2

    int-to-float v5, v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMissions:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v6, v6, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/EventOption;

    iget v6, v6, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    add-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_3
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMissions:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->addVariable(Ljava/lang/String;)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMissions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v2, v2, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/events/EventOption;

    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/events/EventOption;->executeOutcome(I)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    move v0, v1

    :goto_4
    sget v2, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionsSize:I

    if-ge v0, v2, :cond_9

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->canRunMission(II)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v2, v2, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    move v2, v1

    move v3, v2

    :goto_5
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventOption;

    iget v4, v4, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    if-lez v3, :cond_7

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    move v3, v1

    :goto_6
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    int-to-float v4, v2

    int-to-float v5, v1

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v6, v6, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/EventOption;

    iget v6, v6, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    add-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_6

    goto :goto_7

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    move v3, v1

    :goto_7
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->addVariable(Ljava/lang/String;)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v2, v2, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/events/EventOption;

    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/events/EventOption;->executeOutcome(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :catch_0
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_9
    return-void
.end method
