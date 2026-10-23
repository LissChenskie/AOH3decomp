package aoc.kingdoms.lukasz.jakowski.GameThreads;

import aoc.kingdoms.lukasz.jakowski.AI.Diplomacy.AI_Player;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessageGoldenAgeMilitary;
import aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessageGoldenAgeProsperity;
import aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessageGoldenAgeScience;
import aoc.kingdoms.lukasz.jakowski.Player.Notification.Notification;
import aoc.kingdoms.lukasz.jakowski.Steam.SteamAchievementsManager;
import aoc.kingdoms.lukasz.map.RulersManager;
import aoc.kingdoms.lukasz.map.civilization.CivilizationBonuses;
import aoc.kingdoms.lukasz.map.plague.PlagueManager;
import aoc.kingdoms.lukasz.textures.Images;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedDeque;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class GameThread_Turns extends Thread {
    public long timeSleep;
    public boolean running = true;
    public int iLastUpdateTurnID = 0;
    public int THREAD_TURN_ID = 0;
    public ConcurrentLinkedDeque<Integer> civsUpdateMaxManpower = new ConcurrentLinkedDeque<>();
    public ConcurrentLinkedDeque<Integer> provincesWonderConstruction = new ConcurrentLinkedDeque<>();
    public ConcurrentLinkedDeque<Integer> provincesCoreCreation = new ConcurrentLinkedDeque<>();
    public ConcurrentLinkedDeque<Integer> provincesConvertReligion = new ConcurrentLinkedDeque<>();
    public ConcurrentLinkedDeque<Integer> provincesIncreaseManpower = new ConcurrentLinkedDeque<>();
    public ConcurrentLinkedDeque<Integer> provincesDevelopInfrastructure = new ConcurrentLinkedDeque<>();
    public ConcurrentLinkedDeque<Integer> provincesIncreaseGrowthRate = new ConcurrentLinkedDeque<>();
    public ConcurrentLinkedDeque<Integer> provincesIncreaseTaxEfficiency = new ConcurrentLinkedDeque<>();
    public ConcurrentLinkedDeque<Integer> provincesInvest = new ConcurrentLinkedDeque<>();
    public ConcurrentLinkedDeque<Integer> provincesBuildingsUnderConstruction = new ConcurrentLinkedDeque<>();
    public ConcurrentLinkedDeque<Integer> civsNukes = new ConcurrentLinkedDeque<>();

    public final void addCivUpdateMaxManpower(int i) {
        try {
            if (this.civsUpdateMaxManpower.contains(Integer.valueOf(i))) {
                return;
            }
            this.civsUpdateMaxManpower.add(Integer.valueOf(i));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void addCivsNukes(int i) {
        try {
            if (this.civsNukes.contains(Integer.valueOf(i))) {
                return;
            }
            this.civsNukes.add(Integer.valueOf(i));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void addProvinceBuildingsUnderConstruction(int i) {
        try {
            if (this.provincesBuildingsUnderConstruction.contains(Integer.valueOf(i))) {
                return;
            }
            this.provincesBuildingsUnderConstruction.add(Integer.valueOf(i));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void addProvinceConvertReligion(int i) {
        try {
            if (this.provincesConvertReligion.contains(Integer.valueOf(i))) {
                return;
            }
            this.provincesConvertReligion.add(Integer.valueOf(i));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void addProvinceCoreCreation(int i) {
        try {
            if (this.provincesCoreCreation.contains(Integer.valueOf(i))) {
                return;
            }
            this.provincesCoreCreation.add(Integer.valueOf(i));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void addProvinceDevelopInfrastructure(int i) {
        try {
            if (this.provincesDevelopInfrastructure.contains(Integer.valueOf(i))) {
                return;
            }
            this.provincesDevelopInfrastructure.add(Integer.valueOf(i));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void addProvinceIncreaseGrowthRate(int i) {
        try {
            if (this.provincesIncreaseGrowthRate.contains(Integer.valueOf(i))) {
                return;
            }
            this.provincesIncreaseGrowthRate.add(Integer.valueOf(i));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void addProvinceIncreaseManpower(int i) {
        try {
            if (this.provincesIncreaseManpower.contains(Integer.valueOf(i))) {
                return;
            }
            this.provincesIncreaseManpower.add(Integer.valueOf(i));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void addProvinceIncreaseTaxEfficiency(int i) {
        try {
            if (this.provincesIncreaseTaxEfficiency.contains(Integer.valueOf(i))) {
                return;
            }
            this.provincesIncreaseTaxEfficiency.add(Integer.valueOf(i));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void addProvinceInvest(int i) {
        try {
            if (this.provincesInvest.contains(Integer.valueOf(i))) {
                return;
            }
            this.provincesInvest.add(Integer.valueOf(i));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void addProvinceWonderConstruction(int i) {
        try {
            if (this.provincesWonderConstruction.contains(Integer.valueOf(i))) {
                return;
            }
            this.provincesWonderConstruction.add(Integer.valueOf(i));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public void clearData() {
        this.provincesBuildingsUnderConstruction.clear();
        this.provincesInvest.clear();
        this.provincesIncreaseTaxEfficiency.clear();
        this.provincesIncreaseGrowthRate.clear();
        this.provincesDevelopInfrastructure.clear();
        this.provincesIncreaseManpower.clear();
        this.provincesConvertReligion.clear();
        this.provincesCoreCreation.clear();
        this.provincesWonderConstruction.clear();
        this.civsUpdateMaxManpower.clear();
        this.civsNukes.clear();
        this.iLastUpdateTurnID = 0;
        this.THREAD_TURN_ID = 0;
    }

    public final void removeCivsNukes(int i) {
        try {
            this.civsNukes.remove(Integer.valueOf(i));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void removeProvinceBuildingsUnderConstruction(int i) {
        try {
            this.provincesBuildingsUnderConstruction.remove(Integer.valueOf(i));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void removeProvinceConvertReligion(int i) {
        try {
            this.provincesConvertReligion.remove(Integer.valueOf(i));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void removeProvinceCoreCreation(int i) {
        try {
            this.provincesCoreCreation.remove(Integer.valueOf(i));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void removeProvinceDevelopInfrastructure(int i) {
        try {
            this.provincesDevelopInfrastructure.remove(Integer.valueOf(i));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void removeProvinceIncreaseGrowthRate(int i) {
        try {
            this.provincesIncreaseGrowthRate.remove(Integer.valueOf(i));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void removeProvinceIncreaseManpower(int i) {
        try {
            this.provincesIncreaseManpower.remove(Integer.valueOf(i));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void removeProvinceIncreaseTaxEfficiency(int i) {
        try {
            this.provincesIncreaseTaxEfficiency.remove(Integer.valueOf(i));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void removeProvinceInvest(int i) {
        try {
            this.provincesInvest.remove(Integer.valueOf(i));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void removeProvinceWonderConstruction(int i) {
        try {
            this.provincesWonderConstruction.remove(Integer.valueOf(i));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        while (this.running) {
            try {
                this.timeSleep = System.currentTimeMillis();
                if (Game.menuManager.getInGame() && Game_Calendar.TURN_ID != this.iLastUpdateTurnID) {
                    int iMax = Math.max(1, Game_Calendar.TURN_ID - this.iLastUpdateTurnID);
                    this.THREAD_TURN_ID++;
                    updateBuildingsUnderConstruction(iMax);
                    updateProvinceConvertReligion(iMax);
                    updateProvinceCoreCreation(iMax);
                    updateProvinceInvestEconomy();
                    updateProvinceIncreaseManpower();
                    updateProvinceIncreaseTaxEfficiency();
                    updateProvinceIncreaseGrowthRate();
                    updateProvinceWonderConstruction();
                    updateProvinceDevelopInfrastructure();
                    updateMaxManpower();
                    updateUnrest();
                    updateDevastation();
                    updateProvinceValues();
                    updateColonization();
                    updateRelations();
                    updateDiplomacy();
                    AI_Player.update();
                    if (Game_Calendar.TURN_ID > GameValues.gameUpdate.GAME_UPDATE_DEATH_RULER_MIN_TURN_ID) {
                        updateDeathOfAdvisors_Administrative();
                        updateDeathOfAdvisors_Economic();
                        updateDeathOfAdvisors_Innovation();
                        updateDeathOfAdvisors_Military();
                        updateDeathOfAGenerals_NotAssigned();
                        updateDeathOfAGenerals_Assigned();
                        updateDeathOfRulers();
                    }
                    updateRegimentsLimit();
                    updateGoldenAge();
                    PlagueManager.runPlagues();
                    PlagueManager.startDisease();
                    updateCivsNukes(iMax);
                    this.iLastUpdateTurnID = Game_Calendar.TURN_ID;
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
            try {
                try {
                    Thread.sleep(Math.max(1L, 15 - (System.currentTimeMillis() - this.timeSleep)));
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            } catch (Exception e3) {
                CFG.exceptionStack(e3);
            }
        }
    }

    public final void unlockGoldenAge_Military(int i) {
        CivilizationBonuses civilizationBonuses = new CivilizationBonuses();
        civilizationBonuses.UnitsAttack = GameValues.goldenAge.GA_MILITARY_UNITS_ATTACK[Game.getCiv(i).goldenAge.getGoldenAgeMilitary()];
        civilizationBonuses.UnitsDefense = GameValues.goldenAge.GA_MILITARY_UNITS_DEFENSE[Game.getCiv(i).goldenAge.getGoldenAgeMilitary()];
        civilizationBonuses.MaxManpower_Percentage = GameValues.goldenAge.GA_MILITARY_MAX_MANPOWER_PERC[Game.getCiv(i).goldenAge.getGoldenAgeMilitary()];
        civilizationBonuses.TempTurnID = Game_Calendar.TURN_ID + GameValues.goldenAge.GA_MILITARY_DURATION_DAYS[Game.getCiv(i).goldenAge.getGoldenAgeMilitary()];
        Game.getCiv(i).addCivilizationBonus_Temporary(civilizationBonuses);
        Game.getCiv(i).goldenAge.setGoldenAgeMilitary(Game.getCiv(i).goldenAge.getGoldenAgeMilitary() + 1);
        if (i == Game.player.iCivID) {
            Game.player.addMessage(new PMessageGoldenAgeMilitary(Game.player.iCivID, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_MESSAGE_DAYS));
            SteamAchievementsManager.unlockAchievement(SteamAchievementsManager.GOLDEN_MILITARY);
        }
    }

    public final void unlockGoldenAge_Prosperity(int i) {
        CivilizationBonuses civilizationBonuses = new CivilizationBonuses();
        civilizationBonuses.MonthlyIncome = GameValues.goldenAge.GA_PROSPERITY_MONTHLY_INCOME[Game.getCiv(i).goldenAge.getGoldenAgeProsperity()];
        civilizationBonuses.IncomeProduction = GameValues.goldenAge.GA_PROSPERITY_INCOME_PRODUCTION[Game.getCiv(i).goldenAge.getGoldenAgeProsperity()];
        civilizationBonuses.TempTurnID = Game_Calendar.TURN_ID + GameValues.goldenAge.GA_PROSPERITY_DURATION_DAYS[Game.getCiv(i).goldenAge.getGoldenAgeProsperity()];
        Game.getCiv(i).addCivilizationBonus_Temporary(civilizationBonuses);
        Game.getCiv(i).goldenAge.setGoldenAgeProsperity(Game.getCiv(i).goldenAge.getGoldenAgeProsperity() + 1);
        if (i == Game.player.iCivID) {
            Game.player.addMessage(new PMessageGoldenAgeProsperity(Game.player.iCivID, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_MESSAGE_DAYS));
            SteamAchievementsManager.unlockAchievement(SteamAchievementsManager.GOLDEN_PROSPERITY);
        }
    }

    public final void unlockGoldenAge_Science(int i) {
        CivilizationBonuses civilizationBonuses = new CivilizationBonuses();
        civilizationBonuses.ResearchPoints = GameValues.goldenAge.GA_SCIENCE_RESEARCH[Game.getCiv(i).goldenAge.getGoldenAgeScience()];
        civilizationBonuses.MonthlyLegacy = GameValues.goldenAge.GA_SCIENCE_LEGACY[Game.getCiv(i).goldenAge.getGoldenAgeScience()];
        civilizationBonuses.TempTurnID = Game_Calendar.TURN_ID + GameValues.goldenAge.GA_SCIENCE_DURATION_DAYS[Game.getCiv(i).goldenAge.getGoldenAgeScience()];
        Game.getCiv(i).addCivilizationBonus_Temporary(civilizationBonuses);
        Game.getCiv(i).goldenAge.setGoldenAgeScience(Game.getCiv(i).goldenAge.getGoldenAgeScience() + 1);
        if (i == Game.player.iCivID) {
            Game.player.addMessage(new PMessageGoldenAgeScience(Game.player.iCivID, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_MESSAGE_DAYS));
            SteamAchievementsManager.unlockAchievement(SteamAchievementsManager.GOLDEN_SCIENCE);
        }
    }

    public final void updateBuildingsUnderConstruction(int i) {
        try {
            for (Integer num : this.provincesBuildingsUnderConstruction) {
                try {
                    if (Game.getProvince(num.intValue()).iBuildingsConstructionSize > 0) {
                        Game.getProvince(num.intValue()).updateBuildingsUnderConstrucion(i);
                    } else {
                        this.provincesBuildingsUnderConstruction.remove(num);
                    }
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                    this.provincesBuildingsUnderConstruction.remove(num);
                }
            }
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }

    public final void updateCivsNukes(int i) {
        try {
            Iterator<Integer> it = this.civsNukes.iterator();
            while (it.hasNext()) {
                Game.getCiv(it.next().intValue()).updateNukeProduction(i);
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateColonization() {
        try {
            for (int i = this.THREAD_TURN_ID % GameValues.gameUpdate.GAME_UPDATE_POPULATION_STEPS; i < Game.getCivsSize(); i += GameValues.gameUpdate.GAME_UPDATE_POPULATION_STEPS) {
                if (Game.getCiv(i).getNumOfProvinces() > 0) {
                    Game.getCiv(i).updateColonizationProvince();
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateDeathOfAGenerals_Assigned() {
        try {
            for (int i = this.THREAD_TURN_ID % GameValues.gameUpdate.GAME_UPDATE_DEATH_GENERAL_EVERY_X_DAYS; i < Game.getProvincesSize(); i += GameValues.gameUpdate.GAME_UPDATE_DEATH_GENERAL_EVERY_X_DAYS) {
                try {
                    for (int armySize = Game.getProvince(i).getArmySize() - 1; armySize >= 0; armySize--) {
                        if (Game.getProvince(i).getArmy(armySize).armyGeneral != null && RulersManager.characterDies(Game.getProvince(i).getArmy(armySize).civID, Game.getProvince(i).getArmy(armySize).armyGeneral.y)) {
                            if (Game.getProvince(i).getArmy(armySize).civID == Game.player.iCivID) {
                                Game.player.addNotification(new Notification(Notification.Notification_Type.GENERAL_DIED, Game.lang.get("GeneralDied") + ": " + Game.getProvince(i).getArmy(armySize).armyGeneral.n, Images.general, this.THREAD_TURN_ID, Notification.Notification_BG.RED, Game.player.iCivID));
                            }
                            Game.getProvince(i).getArmy(armySize).setArmyGeneral(null);
                        }
                    }
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }

    public final void updateDeathOfAGenerals_NotAssigned() {
        try {
            for (int i = (this.THREAD_TURN_ID % GameValues.gameUpdate.GAME_UPDATE_DEATH_GENERAL_EVERY_X_DAYS_NOT_ASSIGNED) + 1; i < Game.getCivsSize(); i += GameValues.gameUpdate.GAME_UPDATE_DEATH_GENERAL_EVERY_X_DAYS_NOT_ASSIGNED) {
                try {
                    if (Game.getCiv(i).getNumOfProvinces() > 0) {
                        Game.getCiv(i).update_ChanceOfGeneral_NotAssigned();
                    }
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }

    public final void updateDeathOfAdvisors_Administrative() {
        try {
            for (int i = this.THREAD_TURN_ID % GameValues.gameUpdate.GAME_UPDATE_DEATH_ADVISOR_EVERY_X_DAYS; i < Game.getCivsSize(); i += GameValues.gameUpdate.GAME_UPDATE_DEATH_ADVISOR_EVERY_X_DAYS) {
                try {
                    if (Game.getCiv(i).getNumOfProvinces() > 0) {
                        Game.advisorManager.update_ChanceOfDeathAdvisor_Administrative(i);
                    }
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }

    public final void updateDeathOfAdvisors_Economic() {
        try {
            for (int i = (this.THREAD_TURN_ID + 90) % GameValues.gameUpdate.GAME_UPDATE_DEATH_ADVISOR_EVERY_X_DAYS; i < Game.getCivsSize(); i += GameValues.gameUpdate.GAME_UPDATE_DEATH_ADVISOR_EVERY_X_DAYS) {
                try {
                    if (Game.getCiv(i).getNumOfProvinces() > 0) {
                        Game.advisorManager.update_ChanceOfDeathAdvisor_Economic(i);
                    }
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }

    public final void updateDeathOfAdvisors_Innovation() {
        try {
            for (int i = (this.THREAD_TURN_ID + 180) % GameValues.gameUpdate.GAME_UPDATE_DEATH_ADVISOR_EVERY_X_DAYS; i < Game.getCivsSize(); i += GameValues.gameUpdate.GAME_UPDATE_DEATH_ADVISOR_EVERY_X_DAYS) {
                try {
                    if (Game.getCiv(i).getNumOfProvinces() > 0) {
                        Game.advisorManager.update_ChanceOfDeathAdvisor_Innovation(i);
                    }
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }

    public final void updateDeathOfAdvisors_Military() {
        try {
            for (int i = (this.THREAD_TURN_ID + 270) % GameValues.gameUpdate.GAME_UPDATE_DEATH_ADVISOR_EVERY_X_DAYS; i < Game.getCivsSize(); i += GameValues.gameUpdate.GAME_UPDATE_DEATH_ADVISOR_EVERY_X_DAYS) {
                try {
                    if (Game.getCiv(i).getNumOfProvinces() > 0) {
                        Game.advisorManager.update_ChanceOfDeathAdvisor_Military(i);
                    }
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }

    public final void updateDeathOfRulers() {
        try {
            for (int i = this.THREAD_TURN_ID % GameValues.gameUpdate.GAME_UPDATE_DEATH_RULER_EVERY_X_DAYS; i < Game.getCivsSize(); i += GameValues.gameUpdate.GAME_UPDATE_DEATH_RULER_EVERY_X_DAYS) {
                try {
                    if (Game.getCiv(i).getNumOfProvinces() > 0) {
                        RulersManager.update_ChanceOfDeathOfRuler(i);
                    }
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }

    public final void updateDevastation() {
        try {
            for (int i = this.THREAD_TURN_ID % GameValues.gameUpdate.GAME_UPDATE_DEVASTATION_STEPS; i < Game.getProvincesSize(); i += GameValues.gameUpdate.GAME_UPDATE_DEVASTATION_STEPS) {
                if (!Game.getProvince(i).getSeaProvince()) {
                    Game.getProvince(i).updateDevastation();
                    Game.getProvince(i).updateLoot();
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateDiplomacy() {
        try {
            int i = (Game_Calendar.TURN_ID % GameValues.gameUpdate.GAME_UPDATE_DIPLOMACY_EXPIRED) + 1;
            while (i < Game.player.iCivID) {
                if (Game.getCiv(i).getNumOfProvinces() > 0) {
                    updateDiplomacy(i);
                }
                i += GameValues.gameUpdate.GAME_UPDATE_DIPLOMACY_EXPIRED;
            }
            if (i == Game.player.iCivID) {
                i += GameValues.gameUpdate.GAME_UPDATE_DIPLOMACY_EXPIRED;
            }
            while (i < Game.getCivsSize()) {
                if (Game.getCiv(i).getNumOfProvinces() > 0) {
                    updateDiplomacy(i);
                }
                i += GameValues.gameUpdate.GAME_UPDATE_DIPLOMACY_EXPIRED;
            }
            if (Game.player.iCivID > 0) {
                updateDiplomacy(Game.player.iCivID);
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateDiplomacy(int i) {
        Game.getCiv(i).diplomacy.updateTruces(i);
        Game.getCiv(i).diplomacy.updateDefensivePact(i);
        Game.getCiv(i).diplomacy.updateNonAggressionPact(i);
        Game.getCiv(i).diplomacy.updateGuarantee(i);
        Game.getCiv(i).diplomacy.updateAlliance(i);
        Game.getCiv(i).diplomacy.updateMilitaryAccess(i);
        Game.getCiv(i).diplomacy.updateRivals(i);
    }

    public final void updateGoldenAge() {
        try {
            for (int i = this.THREAD_TURN_ID % GameValues.gameUpdate.GAME_UPDATE_GOLDEN_AGE; i < Game.getCivsSize(); i += GameValues.gameUpdate.GAME_UPDATE_GOLDEN_AGE) {
                if (Game.getCiv(i).getNumOfProvinces() > 0) {
                    updateGoldenAge_Prosperity(i);
                    updateGoldenAge_Military(i);
                    updateGoldenAge_Science(i);
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateGoldenAge_Military(int i) {
        try {
            if (Game.getCiv(i).goldenAge.getGoldenAgeMilitary() >= GameValues.iGoldenAge_MilitarySize || Game.getCiv(i).eventsData.getIncreasedManpower() / 100.0f < GameValues.goldenAge.GA_MILITARY_INCREASED_MANPOWER[Game.getCiv(i).goldenAge.getGoldenAgeMilitary()] || Game.getCiv(i).eventsData2.getMilitaryBuildingsConstructed() < GameValues.goldenAge.GA_MILITARY_MILITARY_BUILDINGS[Game.getCiv(i).goldenAge.getGoldenAgeMilitary()]) {
                return;
            }
            unlockGoldenAge_Military(i);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateGoldenAge_Prosperity(int i) {
        try {
            if (Game.getCiv(i).goldenAge.getGoldenAgeProsperity() >= GameValues.iGoldenAge_ProsperitySize || Game.getCiv(i).eventsData.getInvestedInEconomy() / 100.0f < GameValues.goldenAge.GA_PROSPERITY_INVESTED_IN_ECONOMY[Game.getCiv(i).goldenAge.getGoldenAgeProsperity()] || Game.getCiv(i).eventsData2.getEconomyBuildingsConstructed() < GameValues.goldenAge.GA_PROSPERITY_ECONOMY_BUILDINGS[Game.getCiv(i).goldenAge.getGoldenAgeProsperity()]) {
                return;
            }
            unlockGoldenAge_Prosperity(i);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateGoldenAge_Science(int i) {
        try {
            if (Game.getCiv(i).goldenAge.getGoldenAgeScience() >= GameValues.iGoldenAge_ScienceSize || Game.getCiv(i).eventsData.getDevelopedInfrastructure() < GameValues.goldenAge.GA_SCIENCE_DEVELOPED_INFRASTRUCTURE[Game.getCiv(i).goldenAge.getGoldenAgeScience()] || Game.getCiv(i).eventsData2.getAdministrativeBuildingsConstructed() < GameValues.goldenAge.GA_SCIENCE_ADMINISTRATIVE_BUILDINGS[Game.getCiv(i).goldenAge.getGoldenAgeScience()]) {
                return;
            }
            unlockGoldenAge_Science(i);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateMaxManpower() {
        try {
            for (int size = this.civsUpdateMaxManpower.size() - 1; size >= 0; size--) {
                Game.getCiv(this.civsUpdateMaxManpower.remove().intValue()).updateManpowerPerMonth();
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateProvinceConvertReligion(int i) {
        try {
            Iterator<Integer> it = this.provincesConvertReligion.iterator();
            while (it.hasNext()) {
                Game.getProvince(it.next().intValue()).updateReligionConversion(i);
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateProvinceCoreCreation(int i) {
        try {
            Iterator<Integer> it = this.provincesCoreCreation.iterator();
            while (it.hasNext()) {
                Game.getProvince(it.next().intValue()).updateCoreCreation(i);
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateProvinceDevelopInfrastructure() {
        try {
            Iterator<Integer> it = this.provincesDevelopInfrastructure.iterator();
            while (it.hasNext()) {
                Game.getProvince(it.next().intValue()).updateDevelopInfrastructure();
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateProvinceIncreaseGrowthRate() {
        try {
            Iterator<Integer> it = this.provincesIncreaseGrowthRate.iterator();
            while (it.hasNext()) {
                Game.getProvince(it.next().intValue()).updateIncreaseGrowthRate();
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateProvinceIncreaseManpower() {
        try {
            Iterator<Integer> it = this.provincesIncreaseManpower.iterator();
            while (it.hasNext()) {
                Game.getProvince(it.next().intValue()).updateIncreaseManpower();
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateProvinceIncreaseTaxEfficiency() {
        try {
            Iterator<Integer> it = this.provincesIncreaseTaxEfficiency.iterator();
            while (it.hasNext()) {
                Game.getProvince(it.next().intValue()).updateIncreaseTaxEfficiency();
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateProvinceInvestEconomy() {
        try {
            Iterator<Integer> it = this.provincesInvest.iterator();
            while (it.hasNext()) {
                Game.getProvince(it.next().intValue()).updateInvestEconomy();
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateProvinceValues() {
        try {
            for (int i = this.THREAD_TURN_ID % Game_Calendar.NUM_OF_DAYS; i < Game.getProvincesSize(); i += Game_Calendar.NUM_OF_DAYS) {
                if (!Game.getProvince(i).getSeaProvince()) {
                    Game.getProvince(i).updateProvinceValue();
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateProvinceWonderConstruction() {
        try {
            Iterator<Integer> it = this.provincesWonderConstruction.iterator();
            while (it.hasNext()) {
                Game.getProvince(it.next().intValue()).updateWonderConstruction();
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateRegimentsLimit() {
        try {
            for (int i = this.THREAD_TURN_ID % GameValues.gameUpdate.GAME_UPDATE_REGIMENTS_LIMIT_STEPS; i < Game.getCivsSize(); i += GameValues.gameUpdate.GAME_UPDATE_REGIMENTS_LIMIT_STEPS) {
                try {
                    if (Game.getCiv(i).getNumOfProvinces() > 0) {
                        Game.getCiv(i).updateRegimentsLimit();
                    }
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }

    public final void updateRelations() {
        try {
            for (int i = (Game_Calendar.TURN_ID % GameValues.gameUpdate.GAME_UPDATE_DIPLOMACY_EXPIRED) + 1; i < Game.getCivsSize(); i += GameValues.gameUpdate.GAME_UPDATE_DIPLOMACY_IMPROVE_DAMAGE_RELATIONS) {
                Game.getCiv(i).diplomacy.updateImproveRelations(i);
                Game.getCiv(i).diplomacy.updateDamageRelations(i);
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateUnrest() {
        try {
            for (int i = this.THREAD_TURN_ID % GameValues.gameUpdate.GAME_UPDATE_UNREST_STEPS; i < Game.getProvincesSize(); i += GameValues.gameUpdate.GAME_UPDATE_UNREST_STEPS) {
                if (Game.getProvince(i).getCivID() > 0) {
                    Game.getProvince(i).updateRevolutionaryRisk();
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
