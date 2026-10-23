package aoc.kingdoms.lukasz.jakowski.AI;

import aoc.kingdoms.lukasz.jakowski.AI.Advisors.AI_ManageAdvisors;
import aoc.kingdoms.lukasz.jakowski.AI.Army.AI_DisbandArmies;
import aoc.kingdoms.lukasz.jakowski.AI.Army.AI_Generals;
import aoc.kingdoms.lukasz.jakowski.AI.Army.AI_MoveAtPeace;
import aoc.kingdoms.lukasz.jakowski.AI.Army.AI_MoveAtWar;
import aoc.kingdoms.lukasz.jakowski.AI.Army.AI_MoveNoConnectionManager;
import aoc.kingdoms.lukasz.jakowski.AI.Army.AI_RecruitArmy;
import aoc.kingdoms.lukasz.jakowski.AI.Army.AI_ReorganizeArmies;
import aoc.kingdoms.lukasz.jakowski.AI.Build.AI_Build;
import aoc.kingdoms.lukasz.jakowski.AI.Build.AI_BuildResearch;
import aoc.kingdoms.lukasz.jakowski.AI.Colonization.AI_Colonization;
import aoc.kingdoms.lukasz.jakowski.AI.Colonization.AI_Colonization_NeighCiv;
import aoc.kingdoms.lukasz.jakowski.AI.Diplomacy.AI_Alliances;
import aoc.kingdoms.lukasz.jakowski.AI.Diplomacy.AI_DeclareWar;
import aoc.kingdoms.lukasz.jakowski.AI.Diplomacy.AI_Pacts;
import aoc.kingdoms.lukasz.jakowski.AI.Diplomacy.AI_PrepareForWar;
import aoc.kingdoms.lukasz.jakowski.AI.Diplomacy.AI_RelationsDamage;
import aoc.kingdoms.lukasz.jakowski.AI.Diplomacy.AI_RelationsImprove;
import aoc.kingdoms.lukasz.jakowski.AI.Diplomacy.AI_Rivals;
import aoc.kingdoms.lukasz.jakowski.AI.Diplomacy.AI_VassalLiberty;
import aoc.kingdoms.lukasz.jakowski.AI.Government.AI_Government;
import aoc.kingdoms.lukasz.jakowski.AI.Invest.AI_DevelopInfrastructure;
import aoc.kingdoms.lukasz.jakowski.AI.Invest.AI_GrowthRate;
import aoc.kingdoms.lukasz.jakowski.AI.Invest.AI_IncreaseManpower;
import aoc.kingdoms.lukasz.jakowski.AI.Invest.AI_IncreaseTaxEfficiency;
import aoc.kingdoms.lukasz.jakowski.AI.Invest.AI_InvestInEconomy;
import aoc.kingdoms.lukasz.jakowski.AI.Legacies.AI_Legacy;
import aoc.kingdoms.lukasz.jakowski.AI.Nukes.AI_BuildNukes;
import aoc.kingdoms.lukasz.jakowski.AI.Nukes.AI_Nuke;
import aoc.kingdoms.lukasz.jakowski.AI.Wonders.AI_Wonders;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.technology.TechnologyTree;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_Manager {
    public static final float SCORE_NOT_POSSIBLE = -999999.0f;
    public static AI_Budget aiBudget = new AI_Budget();

    public final int getRandomProvince(int i) {
        return Game.getCiv(i).getProvinceID(Game.oR.nextInt(Game.getCiv(i).getNumOfProvinces()));
    }

    public final void update() {
    }

    public final void updateAll() {
        try {
            AI_MoveNoConnectionManager.updateNoConnections();
            updateMoveArmies();
            AI_DisbandArmies.updateDisbandArmies();
            updateRecruitArmy();
            updateReorganizeArmiesAtPeace();
            AI_Government.updateGovernment();
            updateCoresReligion();
            updateBuildInvest();
            AI_ManageAdvisors.updateAdvisors();
            updateRecruitGenerals();
            AI_BuildNukes.updateBuildNukes();
            AI_VassalLiberty.update();
            AI_DeclareWar.declareWar();
            AI_PrepareForWar.prepareForWar();
            AI_Alliances.update();
            AI_RelationsDamage.updateRelations_Damage();
            AI_RelationsImprove.updateRelations_Improve();
            AI_Legacy.updateCiv_Legacies();
            AI_Rivals.updateAI_Rivals();
            AI_Pacts.update();
            AI_Wonders.buildWonders();
            AI_Colonization.updateColonize();
            AI_Colonization_NeighCiv.updateColonize();
            aiBudget.updateBudget();
            AI_Missions.updateMissions();
            try {
                if (Game.player.allowAIMove && Game.getCiv(Game.player.iCivID).diplomacy.isAtWar() && Game_Calendar.TURN_ID % GameValues.gameUpdateAI.GAME_UPDATE_AI_MOVE_ARMIES_PLAYER == 0) {
                    AI_MoveAtWar.moveAtWar(Game.player.iCivID);
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }

    public final void updateBuildInvest() {
        int i = (Game_Calendar.TURN_ID % GameValues.gameUpdateAI.GAME_UPDATE_AI_BUILD_INVEST) + 1;
        while (i < Game.player.iCivID) {
            if (Game.getCiv(i).getNumOfProvinces() > 0) {
                try {
                    update_BuildInvest(i);
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
            i += GameValues.gameUpdateAI.GAME_UPDATE_AI_BUILD_INVEST;
        }
        if (i == Game.player.iCivID) {
            i += GameValues.gameUpdateAI.GAME_UPDATE_AI_BUILD_INVEST;
        }
        while (i < Game.getCivsSize()) {
            if (Game.getCiv(i).getNumOfProvinces() > 0) {
                try {
                    update_BuildInvest(i);
                } catch (Exception e2) {
                    CFG.exceptionStack(e2);
                }
            }
            i += GameValues.gameUpdateAI.GAME_UPDATE_AI_BUILD_INVEST;
        }
    }

    public final void updateCoresReligion() {
        int i = (Game_Calendar.TURN_ID % GameValues.gameUpdateAI.GAME_UPDATE_AI_CORES_RELIGION) + 1;
        while (i < Game.player.iCivID) {
            if (Game.getCiv(i).getNumOfProvinces() > 0) {
                try {
                    update_CoresReligion(i);
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
            i += GameValues.gameUpdateAI.GAME_UPDATE_AI_CORES_RELIGION;
        }
        if (i == Game.player.iCivID) {
            i += GameValues.gameUpdateAI.GAME_UPDATE_AI_CORES_RELIGION;
        }
        while (i < Game.getCivsSize()) {
            if (Game.getCiv(i).getNumOfProvinces() > 0) {
                try {
                    update_CoresReligion(i);
                } catch (Exception e2) {
                    CFG.exceptionStack(e2);
                }
            }
            i += GameValues.gameUpdateAI.GAME_UPDATE_AI_CORES_RELIGION;
        }
    }

    public final void updateMoveArmies() {
        int i = (Game_Calendar.TURN_ID % GameValues.gameUpdateAI.GAME_UPDATE_AI_MOVE_ARMIES) + 1;
        while (i < Game.player.iCivID) {
            if (Game.getCiv(i).getNumOfProvinces() > 0) {
                try {
                    update_MoveUnits(i);
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
            i += GameValues.gameUpdateAI.GAME_UPDATE_AI_MOVE_ARMIES;
        }
        if (i == Game.player.iCivID) {
            i += GameValues.gameUpdateAI.GAME_UPDATE_AI_MOVE_ARMIES;
        }
        while (i < Game.getCivsSize()) {
            if (Game.getCiv(i).getNumOfProvinces() > 0) {
                try {
                    update_MoveUnits(i);
                } catch (Exception e2) {
                    CFG.exceptionStack(e2);
                }
            }
            i += GameValues.gameUpdateAI.GAME_UPDATE_AI_MOVE_ARMIES;
        }
    }

    public final void updateRecruitArmy() {
        int i = (Game_Calendar.TURN_ID % GameValues.gameUpdateAI.GAME_UPDATE_AI_RECRUIT_ARMY_AT_PEACE) + 1;
        while (i < Game.player.iCivID) {
            if (Game.getCiv(i).getNumOfProvinces() > 0) {
                try {
                    update_RecruitArmy(i);
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
            i += GameValues.gameUpdateAI.GAME_UPDATE_AI_RECRUIT_ARMY_AT_PEACE;
        }
        if (i == Game.player.iCivID) {
            i += GameValues.gameUpdateAI.GAME_UPDATE_AI_RECRUIT_ARMY_AT_PEACE;
        }
        while (i < Game.getCivsSize()) {
            if (Game.getCiv(i).getNumOfProvinces() > 0) {
                try {
                    update_RecruitArmy(i);
                } catch (Exception e2) {
                    CFG.exceptionStack(e2);
                }
            }
            i += GameValues.gameUpdateAI.GAME_UPDATE_AI_RECRUIT_ARMY_AT_PEACE;
        }
    }

    public final void updateRecruitGenerals() {
        int i = (Game_Calendar.TURN_ID % GameValues.gameUpdateAI.GAME_UPDATE_AI_RECRUIT_GENERALS) + 1;
        while (i < Game.player.iCivID) {
            if (Game.getCiv(i).getNumOfProvinces() > 0) {
                try {
                    update_RecruitGenerals(i);
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
            i += GameValues.gameUpdateAI.GAME_UPDATE_AI_RECRUIT_GENERALS;
        }
        if (i == Game.player.iCivID) {
            i += GameValues.gameUpdateAI.GAME_UPDATE_AI_RECRUIT_GENERALS;
        }
        while (i < Game.getCivsSize()) {
            if (Game.getCiv(i).getNumOfProvinces() > 0) {
                try {
                    update_RecruitGenerals(i);
                } catch (Exception e2) {
                    CFG.exceptionStack(e2);
                }
            }
            i += GameValues.gameUpdateAI.GAME_UPDATE_AI_RECRUIT_GENERALS;
        }
    }

    public final void updateReorganizeArmiesAtPeace() {
        int i = (Game_Calendar.TURN_ID % GameValues.gameUpdateAI.GAME_UPDATE_AI_REORGANIZE_ARMIES_AT_PEACE) + 1;
        if (i == 1) {
            Game.player.playerData.reorganizeArmyStep++;
            if (Game.player.playerData.reorganizeArmyStep > 10) {
                Game.player.playerData.reorganizeArmyStep = 0;
            }
        }
        while (i < Game.player.iCivID) {
            if (Game.getCiv(i).getNumOfProvinces() > 0) {
                try {
                    update_ReorganizeArmiesAtPeace_Regiments(i);
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            } else {
                try {
                    if (Game.getCiv(i).iArmyPositionSize > 0) {
                        Game.getCiv(i).removeAllArmies();
                    }
                } catch (Exception e2) {
                    CFG.exceptionStack(e2);
                }
            }
            i += GameValues.gameUpdateAI.GAME_UPDATE_AI_REORGANIZE_ARMIES_AT_PEACE;
        }
        if (i == Game.player.iCivID) {
            i += GameValues.gameUpdateAI.GAME_UPDATE_AI_REORGANIZE_ARMIES_AT_PEACE;
        }
        while (i < Game.getCivsSize()) {
            if (Game.getCiv(i).getNumOfProvinces() > 0) {
                try {
                    update_ReorganizeArmiesAtPeace_Regiments(i);
                } catch (Exception e3) {
                    CFG.exceptionStack(e3);
                }
            } else {
                try {
                    if (Game.getCiv(i).iArmyPositionSize > 0) {
                        Game.getCiv(i).removeAllArmies();
                    }
                } catch (Exception e4) {
                    CFG.exceptionStack(e4);
                }
            }
            i += GameValues.gameUpdateAI.GAME_UPDATE_AI_REORGANIZE_ARMIES_AT_PEACE;
        }
    }

    public final void update_BuildInvest(int i) {
        if (Game.getCiv(i).fGold >= GameValues.gameUpdateAI.GAME_UPDATE_AI_BUILD_INVEST_IF_GOLD_OVER) {
            if (Game.aiValuesBuild.BUILD_INVEST_AT_WAR || !Game.getCiv(i).diplomacy.isAtWar()) {
                int iNextInt = Game.oR.nextInt(100);
                if (Game.aiValuesBuild.BUILD_PRIORITIZE_RESEARCH && Game.getCiv(i).fResearchPerMonth < TechnologyTree.getMaxResearch(i) * Game.aiValuesBuild.BUILD_PRIORITIZE_RESEARCH_PERC) {
                    AI_BuildResearch.buildResearchBuilding(i, Game.aiValuesBuild.BUILD_PRIORITIZE_RESEARCH_BUILD_LIMIT + (Game.aiValuesBuild.BUILD_PRIORITIZE_RESEARCH_BUILD_LIMIT_RANDOM > 0 ? Game.oR.nextInt(Game.aiValuesBuild.BUILD_PRIORITIZE_RESEARCH_BUILD_LIMIT_RANDOM) : 0));
                }
                if (Game.getCiv(i).fTotalIncomePerMonth < Game.aiValuesBuild.BUILD_PRIORITIZE_ECONOMY_IF_INCOME_BELOW) {
                    AI_InvestInEconomy.investInEconomy(i, Game.aiValuesBuild.INVEST_IN_ECONOMY_MIN_LEFT_GOLD);
                }
                if (iNextInt < Game.ideologiesManager.getIdeology(Game.getCiv(i).getIdeologyID()).AI_BUILD_INVEST_IN_ECONOMY) {
                    AI_InvestInEconomy.investInEconomy(i, Game.aiValuesBuild.INVEST_IN_ECONOMY_MIN_LEFT_GOLD);
                    return;
                }
                if (iNextInt < Game.ideologiesManager.getIdeology(Game.getCiv(i).getIdeologyID()).AI_BUILD_INCREASE_TAX_EFFICIENCY) {
                    AI_IncreaseTaxEfficiency.increaseTaxEfficiency(i, Game.aiValuesBuild.INCREASE_TAX_EFFICIENCY_MIN_LEFT_GOLD);
                    return;
                }
                if (iNextInt < Game.ideologiesManager.getIdeology(Game.getCiv(i).getIdeologyID()).AI_BUILD_INCREASE_MANPOWER) {
                    AI_IncreaseManpower.increaseManpower(i, Game.aiValuesBuild.INCREASE_MANPOWER_MIN_LEFT_GOLD);
                    return;
                }
                if (iNextInt < Game.ideologiesManager.getIdeology(Game.getCiv(i).getIdeologyID()).AI_BUILD_INCREASE_GROWTH_RATE) {
                    AI_GrowthRate.increaseGrowthRate(i, Game.aiValuesBuild.INCREASE_GROWTH_RATE_MIN_LEFT_GOLD);
                } else if (iNextInt < Game.ideologiesManager.getIdeology(Game.getCiv(i).getIdeologyID()).AI_BUILD_DEVELOP_INFRASTRUCTURE) {
                    AI_DevelopInfrastructure.developInfrastructure(i, Game.aiValuesBuild.DEVELOP_INFRASTRUCTURE_MIN_LEFT_GOLD);
                } else if (iNextInt < Game.ideologiesManager.getIdeology(Game.getCiv(i).getIdeologyID()).AI_BUILD_BUILDING) {
                    AI_Build.build(i);
                }
            }
        }
    }

    public final void update_CoresReligion(int i) {
        if (Game.getCiv(i).fGold >= GameValues.gameUpdateAI.GAME_UPDATE_AI_CORES_RELIGION_IF_GOLD_OVER) {
            if (Game.oR.nextInt(100) < 50) {
                AI_ConvertReligion.convertReligion(i);
                AI_Cores.createCore(i);
            } else {
                AI_Cores.createCore(i);
                AI_ConvertReligion.convertReligion(i);
            }
        }
    }

    public final void update_MoveUnits(int i) {
        if (!Game.getCiv(i).diplomacy.isAtWar()) {
            AI_MoveAtPeace.moveAtPeace(i);
            return;
        }
        AI_MoveAtWar.moveAtWar(i);
        AI_Nuke.useNukes(i);
        update_RecruitArmy(i);
        update_RecruitGenerals(i);
    }

    public final void update_RecruitArmy(int i) {
        if (Game.getCiv(i).fGold < GameValues.gameUpdateAI.GAME_UPDATE_AI_RECRUIT_ARMY_IF_GOLD_OVER) {
            Game.getCiv(i).aiCivCreateNewArmy.runCreateNewArmy_Expired(i);
        } else {
            Game.getCiv(i).aiCivCreateNewArmy.runCreateNewArmy_Task(i);
            AI_RecruitArmy.recruitArmy(i);
        }
    }

    public final void update_RecruitGenerals(int i) {
        if (Game.getCiv(i).fGold >= GameValues.gameUpdateAI.GAME_UPDATE_AI_RECRUIT_GENERALS_IF_GOLD_OVER) {
            AI_Generals.recruitGenerals(i);
        }
    }

    public final void update_ReorganizeArmiesAtPeace(int i) {
        if (Game.getCiv(i).diplomacy.isAtWar()) {
            return;
        }
        AI_ReorganizeArmies.reorganizeArmies_AtPeace(i);
    }

    public final void update_ReorganizeArmiesAtPeace_Regiments(int i) {
        if (Game.getCiv(i).diplomacy.isAtWar()) {
            return;
        }
        if (Game.getCiv(i).iRegiments > 2500) {
            if (Game.player.playerData.reorganizeArmyStep == 0) {
                AI_ReorganizeArmies.reorganizeArmies_AtPeace(i);
            }
        } else if (Game.getCiv(i).iRegiments > 1000) {
            if (Game.player.playerData.reorganizeArmyStep % 5 == 0) {
                AI_ReorganizeArmies.reorganizeArmies_AtPeace(i);
            }
        } else if (Game.getCiv(i).iRegiments <= 500) {
            AI_ReorganizeArmies.reorganizeArmies_AtPeace(i);
        } else if (Game.player.playerData.reorganizeArmyStep % 2 == 0) {
            AI_ReorganizeArmies.reorganizeArmies_AtPeace(i);
        }
    }
}
