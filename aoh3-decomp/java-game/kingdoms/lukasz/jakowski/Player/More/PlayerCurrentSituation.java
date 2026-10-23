package aoc.kingdoms.lukasz.jakowski.Player.More;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Missions.MissionTree;
import aoc.kingdoms.lukasz.map.LawsManager;
import aoc.kingdoms.lukasz.map.LegacyManager;
import aoc.kingdoms.lukasz.map.WondersManager;
import aoc.kingdoms.lukasz.map.advisors.AdvisorManager;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class PlayerCurrentSituation {
    public int currentSituationNum = 0;
    public boolean noActiveResearch = false;
    public boolean lackOfGeneral = false;
    public boolean availableCivilizationLegacy = false;
    public boolean availableAdvantage = false;
    public boolean wonderCanBeBuilt = false;
    public boolean newLawAvailable = false;
    public int newLawAvailableNum = 0;
    public int noAdvisor = 0;
    public int promoteAdvisor = 0;
    public boolean upgradeCapitalCity = false;
    public boolean militaryAcademyCanBeUpgraded = false;
    public boolean militaryAcademyForGeneralsCanBeUpgraded = false;
    public boolean upgradeSupremeCourt = false;
    public boolean upgradeNuclearReactor = false;
    public boolean nonCoreProvinces = false;
    public int nonCoreProvincesNum = 0;
    public boolean differentReligionProvinces = false;
    public int differentReligionProvincesNum = 0;
    public boolean maxAmountOfGold = false;
    public boolean highInflation = false;
    public boolean chooseRivals = false;
    public boolean allMissionsUnlocked = false;
    public boolean missionCanBeUnlocked = false;
    public int missionCanBeUnlockedNum = 0;
    public List<Integer> playerLegaciesLVL = new ArrayList();

    private final void updateAvailableCivilizationLegacy(int i) {
        try {
            this.availableCivilizationLegacy = false;
            for (int i2 = 0; i2 < LegacyManager.iLegaciesSize; i2++) {
                if (this.playerLegaciesLVL.get(i2).intValue() >= 0 && Game.getCiv(i).fLegacy >= LegacyManager.legacies.get(i2).CostLegacy[this.playerLegaciesLVL.get(i2).intValue()]) {
                    this.availableCivilizationLegacy = true;
                    this.currentSituationNum++;
                    return;
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    private final void updateLackOfGeneral(int i) {
        try {
            this.lackOfGeneral = false;
            for (int i2 = 0; i2 < Game.getCiv(i).iArmyPositionSize; i2++) {
                for (int i3 = 0; i3 < Game.getProvince(Game.getCiv(i).getArmyPosition(i2)).getArmySize(); i3++) {
                    if (Game.getProvince(Game.getCiv(i).getArmyPosition(i2)).getArmy(i3).civID == i && Game.getProvince(Game.getCiv(i).getArmyPosition(i2)).getArmy(i3).armyGeneral == null) {
                        this.lackOfGeneral = true;
                        this.currentSituationNum++;
                        return;
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    private final void updateNoAdvisor(int i) {
        try {
            this.noAdvisor = 0;
            this.promoteAdvisor = 0;
            int advisorMaxLevel = AdvisorManager.getAdvisorMaxLevel(i);
            if (Game.getCiv(i).advisorAdministration.sName == null) {
                this.noAdvisor++;
            } else if (Game.getCiv(i).advisorAdministration.iLevel < advisorMaxLevel) {
                this.promoteAdvisor++;
            }
            if (Game.getCiv(i).advisorEconomy.sName == null) {
                this.noAdvisor++;
            } else if (Game.getCiv(i).advisorEconomy.iLevel < advisorMaxLevel) {
                this.promoteAdvisor++;
            }
            if (Game.getCiv(i).advisorTechnology.sName == null) {
                this.noAdvisor++;
            } else if (Game.getCiv(i).advisorTechnology.iLevel < advisorMaxLevel) {
                this.promoteAdvisor++;
            }
            if (Game.getCiv(i).advisorMilitary.sName == null) {
                this.noAdvisor++;
            } else if (Game.getCiv(i).advisorMilitary.iLevel < advisorMaxLevel) {
                this.promoteAdvisor++;
            }
            if (this.noAdvisor > 0) {
                this.currentSituationNum++;
            }
            if (this.promoteAdvisor > 0) {
                this.currentSituationNum++;
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void buildPlayerLegaciesLVL() {
        buildPlayerLegaciesLVL(Game.player.iCivID);
    }

    public final void buildPlayerLegaciesLVL(int i) {
        try {
            this.playerLegaciesLVL.clear();
            for (int i2 = 0; i2 < LegacyManager.iLegaciesSize; i2++) {
                int legacyLevel = Game.getCiv(i).getLegacyLevel(i2) + 1;
                if (legacyLevel >= LegacyManager.legacies.get(i2).CostLegacy.length) {
                    legacyLevel = -1;
                }
                this.playerLegaciesLVL.add(Integer.valueOf(legacyLevel));
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateChooseRivals(int i) {
        this.chooseRivals = false;
        if (Game.getCiv(i).diplomacy.rivals.size() < GameValues.rivals.RIVALS_LIMIT) {
            this.chooseRivals = true;
            this.currentSituationNum++;
        }
    }

    public final void updateCurrentSituation() {
        updateCurrentSituation(Game.player.iCivID);
    }

    public final void updateCurrentSituation(int i) {
        try {
            this.currentSituationNum = 0;
            if (Game.getCiv(Game.player.iCivID).getActiveTechResearch() < 0) {
                this.noActiveResearch = true;
                this.currentSituationNum++;
            } else {
                this.noActiveResearch = false;
            }
            if (Game.getCiv(Game.player.iCivID).getAdvantagePoints() > 0) {
                this.availableAdvantage = true;
                this.currentSituationNum++;
            } else {
                this.availableAdvantage = false;
            }
            updateLackOfGeneral(i);
            updateAvailableCivilizationLegacy(i);
            updateWonderCanBeBuild(i);
            updateMilitaryAcademyCanBeUpgraded(i);
            updateMilitaryAcademyForGeneralsCanBeUpgraded(i);
            updateNonCoreProvinces(i);
            updateDifferentReligion(i);
            updateNoAdvisor(i);
            updateNewLaw(i);
            updateChooseRivals(i);
            boolean z = Game.getCiv(i).getInflation() >= GameValues.inflation.INFLATION_CURRENT_SITUATION_INFO;
            this.highInflation = z;
            if (z) {
                this.currentSituationNum++;
            }
            boolean z2 = Game.getCiv(Game.player.iCivID).fGold >= ((float) Game.getMaxAmountOfGold(i));
            this.maxAmountOfGold = z2;
            if (z2) {
                this.currentSituationNum++;
            }
            this.upgradeSupremeCourt = false;
            if (Game.getCiv(i).getCorruption() > 0.005f && Game.getCiv(i).getSupremeCourtLevel() < Game.getSupremeCourt_MaxLvl(i) && Game.getCiv(i).fGold > Game.getSupremeCourt_Cost(i)) {
                this.upgradeSupremeCourt = true;
                this.currentSituationNum++;
            }
            this.upgradeNuclearReactor = false;
            if (Game.getCiv(i).canBuildNuke && Game.getCiv(i).getNuclearReactorLevel() < Game.getNuclearReactor_MaxLvl(i) && Game.getCiv(i).fGold > Game.getNuclearReactor_Cost(i)) {
                this.upgradeNuclearReactor = true;
                this.currentSituationNum++;
            }
            this.upgradeCapitalCity = false;
            if (Game.getCiv(i).getCapitalLevel() < Game.getCapital_MaxLvl(i) && Game.getCiv(i).fGold > Game.getCapital_Cost(i)) {
                this.upgradeCapitalCity = true;
                this.currentSituationNum++;
            }
            updateMissionsCanBeUnlocked(i);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateDifferentReligion(int i) {
        try {
            this.differentReligionProvinces = false;
            this.differentReligionProvincesNum = 0;
            for (int numOfProvinces = Game.getCiv(i).getNumOfProvinces() - 1; numOfProvinces >= 0; numOfProvinces--) {
                if (!Game.getProvince(Game.getCiv(i).getProvinceID(numOfProvinces)).isOccupied() && Game.getProvince(Game.getCiv(i).getProvinceID(numOfProvinces)).getReligion() != Game.getCiv(i).getReligionID() && Game.getProvince(Game.getCiv(i).getProvinceID(numOfProvinces)).religionConversion == null) {
                    if (!this.differentReligionProvinces) {
                        this.currentSituationNum++;
                    }
                    this.differentReligionProvinces = true;
                    this.differentReligionProvincesNum++;
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateMilitaryAcademyCanBeUpgraded(int i) {
        try {
            this.militaryAcademyCanBeUpgraded = false;
            if (Game.getCiv(i).getMilitaryAcademyLevel() >= Game.getMilitaryAcademy_MaxLvl(i) || Game.getCiv(i).fGold < Game.getMilitaryAcademy_Cost(i)) {
                return;
            }
            this.militaryAcademyCanBeUpgraded = true;
            this.currentSituationNum++;
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateMilitaryAcademyForGeneralsCanBeUpgraded(int i) {
        try {
            this.militaryAcademyForGeneralsCanBeUpgraded = false;
            if (Game.getCiv(i).getMilitaryAcademyForGeneralsLevel() >= Game.getMilitaryAcademyForGenerals_MaxLvl(i) || Game.getCiv(i).fGold < Game.getMilitaryAcademyForGenerals_Cost(i)) {
                return;
            }
            this.militaryAcademyForGeneralsCanBeUpgraded = true;
            this.currentSituationNum++;
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateMissionsCanBeUnlocked(int i) {
        try {
            if (!this.allMissionsUnlocked && Game_Calendar.TURN_ID % GameValues.gameUpdate.GAME_UPDATE_CURRENT_SITUATION_MISSION_TREE_EVERY_X_DAYS == 0) {
                int i2 = 0;
                this.missionCanBeUnlocked = false;
                this.missionCanBeUnlockedNum = 0;
                if (Game.getCiv(i).iMissionsSize > 0) {
                    while (i2 < Game.getCiv(i).iMissionsSize) {
                        if (MissionTree.canRunMission_Civ(i, i2)) {
                            this.missionCanBeUnlocked = true;
                            this.missionCanBeUnlockedNum++;
                        }
                        i2++;
                    }
                    if (Game.getCiv(i).iMissionsSize == this.missionCanBeUnlockedNum) {
                        this.allMissionsUnlocked = true;
                    }
                } else {
                    while (i2 < MissionTree.iMissionsSize) {
                        if (MissionTree.canRunMission(i, i2)) {
                            this.missionCanBeUnlocked = true;
                            this.missionCanBeUnlockedNum++;
                        }
                        i2++;
                    }
                    if (MissionTree.iMissionsSize == this.missionCanBeUnlockedNum) {
                        this.allMissionsUnlocked = true;
                    }
                }
            }
            if (this.missionCanBeUnlocked) {
                this.currentSituationNum++;
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateNewLaw(int i) {
        this.newLawAvailable = false;
        this.newLawAvailableNum = 0;
        for (int i2 = 0; i2 < LawsManager.iLawsSize; i2++) {
            for (int length = LawsManager.laws.get(i2).RequiredTechID.length - 1; length > 0; length--) {
                if (Game.getCiv(i).getTechResearched(LawsManager.laws.get(i2).RequiredTechID[length]) && (LawsManager.laws.get(i2).RequiredGovernmentID == null || LawsManager.laws.get(i2).RequiredGovernmentID[length] < 0 || LawsManager.laws.get(i2).RequiredGovernmentID[length] == Game.getCiv(i).getIdeologyID())) {
                    if (Game.getCiv(i).laws.get(i2).intValue() < length) {
                        if (!this.newLawAvailable) {
                            this.currentSituationNum++;
                        }
                        this.newLawAvailable = true;
                        this.newLawAvailableNum++;
                        break;
                    }
                    break;
                }
            }
        }
    }

    public final void updateNonCoreProvinces(int i) {
        try {
            this.nonCoreProvinces = false;
            this.nonCoreProvincesNum = 0;
            for (int numOfProvinces = Game.getCiv(i).getNumOfProvinces() - 1; numOfProvinces >= 0; numOfProvinces--) {
                if (!Game.getProvince(Game.getCiv(i).getProvinceID(numOfProvinces)).isOccupied() && !Game.getProvince(Game.getCiv(i).getProvinceID(numOfProvinces)).haveACore(i) && Game.getProvince(Game.getCiv(i).getProvinceID(numOfProvinces)).coreCreation == null) {
                    if (!this.nonCoreProvinces) {
                        this.currentSituationNum++;
                    }
                    this.nonCoreProvinces = true;
                    this.nonCoreProvincesNum++;
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateWonderCanBeBuild(int i) {
        try {
            this.wonderCanBeBuilt = false;
            for (int i2 = 0; i2 < Game.getCiv(i).getNumOfProvinces(); i2++) {
                if (Game.getProvince(Game.getCiv(i).getProvinceID(i2)).wonderID >= 0 && !Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getWonderBuilt() && Game.getProvince(Game.getCiv(i).getProvinceID(i2)).wonderConstruction == null && Game.getCiv(i).fGold >= WondersManager.getWonderConstructionCost(Game.getCiv(i).getProvinceID(i2), Game.getProvince(Game.getCiv(i).getProvinceID(i2)).wonderID)) {
                    this.wonderCanBeBuilt = true;
                    this.currentSituationNum++;
                    return;
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
