package aoc.kingdoms.lukasz.jakowski.GameThreads;

import aoc.kingdoms.lukasz.jakowski.AI.Army.AI_BattleEnd;
import aoc.kingdoms.lukasz.jakowski.AI.Technology.AI_SelectTechnology;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.SaveLoad.SaveGameManager;
import aoc.kingdoms.lukasz.map.CoalitionManager;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.map.SiegeManager;
import aoc.kingdoms.lukasz.map.army.ArmyDivision;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRanking;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.diplomacy.LibertyDesireManager;
import aoc.kingdoms.lukasz.map.moveUnits.MoveUnits;
import aoc.kingdoms.lukasz.map.technology.TechnologyTree;
import aoc.kingdoms.lukasz.map.war.WarManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu_element.Toast;
import aoc.kingdoms.lukasz.menu_element.button.ButtonTopDate;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedDeque;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class GameThread extends Thread {
    public static long calculationsTime;
    public boolean running = true;
    public ConcurrentLinkedDeque<Integer> civsUpdateLegacyPerMonth = new ConcurrentLinkedDeque<>();
    public ConcurrentLinkedDeque<Integer> civsUpdateResearchPerMonth = new ConcurrentLinkedDeque<>();
    public ConcurrentLinkedDeque<Integer> civsUpdateLoans = new ConcurrentLinkedDeque<>();
    public ConcurrentLinkedDeque<Integer> civsUpdateArmyMaintenance = new ConcurrentLinkedDeque<>();
    public ConcurrentLinkedDeque<Integer> civsUpdateTotalIncomePerMonth = new ConcurrentLinkedDeque<>();
    public ConcurrentLinkedDeque<Game.SimpleTask> aiTask = new ConcurrentLinkedDeque<>();
    public boolean play = false;
    public int playSpeed = 3;
    public int playMaxSpeed = 5;
    public int playSpeedTIME = 100;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.GameThreads.GameThread$1, reason: invalid class name */
    class AnonymousClass1 extends Game.SimpleTask {
        AnonymousClass1(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            try {
                CivilizationRanking.buildCivilizationRanking();
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.GameThreads.GameThread$2, reason: invalid class name */
    class AnonymousClass2 extends Game.SimpleTask {
        AnonymousClass2(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.buildProsperity_AverageEconomy();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.GameThreads.GameThread$3, reason: invalid class name */
    class AnonymousClass3 extends Game.SimpleTask {
        AnonymousClass3(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            try {
                ResourcesManager.updateWorldResourcesProduced_NewYear();
                ResourcesManager.updateUniqueCivsGoods();
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.GameThreads.GameThread$4, reason: invalid class name */
    class AnonymousClass4 extends Game.SimpleTask {
        AnonymousClass4(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.stats.saveStats();
        }
    }

    private final void updateMoveUnits() {
        for (int i = 1; i < Game.getCivsSize(); i++) {
            try {
                int i2 = 0;
                while (i2 < Game.getCiv(i).getMoveUnitsSize()) {
                    try {
                        try {
                            MoveUnits moveUnits = Game.getCiv(i).getMoveUnits(i2);
                            if (!moveUnits.inBattle) {
                                moveUnits.fCurrentMovingPercentage = 0.0f;
                                moveUnits.doneMovementProgressWidth = moveUnits.currentMovementProgressWidth;
                                moveUnits.currentMovementProgressWidth += moveUnits.fSpeed * (Game.terrainManager.terrains.get(Game.getProvince(moveUnits.getToProvinceID()).getTerrainID()).MovementSpeed + Game.getProvince(moveUnits.getFromProvinceID()).provBonuses.ArmyMovementSpeed + (Game.getProvince(moveUnits.getFromProvinceID()).getInfrastructure() * GameValues.infrastructure.INFRASTRUCTURE_ARMY_MOVEMENT_PER_LVL));
                                if (moveUnits.currentMovementProgressWidth > moveUnits.iWidth.get(0).intValue()) {
                                    moveUnits.movementProgressOverWidth = moveUnits.currentMovementProgressWidth - moveUnits.iWidth.get(0).intValue();
                                    moveUnits.currentMovementProgressWidth = moveUnits.iWidth.get(0).intValue();
                                }
                                moveUnits.updateLittleAnimationMovingArmy();
                                if (moveUnits.currentMovementProgressWidth >= moveUnits.iWidth.get(0).intValue()) {
                                    ArmyDivision army = Game.getProvince(moveUnits.getFromProvinceID()).getArmy(moveUnits.key);
                                    if (army != null) {
                                        army.iShiftX_Scaled = 0;
                                        army.iShiftY_Scaled = 0;
                                        army.provinceID = moveUnits.getToProvinceID();
                                        army.setInMovement(moveUnits.iRouteSize > 2);
                                        Game.getProvince(moveUnits.getFromProvinceID()).removeArmy(moveUnits.key);
                                        Game.getProvince(moveUnits.getToProvinceID()).addArmy(army);
                                        Game.updateActiveArmy_MoveUnits(moveUnits.key, moveUnits.getFromProvinceID(), moveUnits.getToProvinceID());
                                        if (Game.getCiv(i).isPlayerAlly) {
                                            Game.player.fog.updateFogOfWar_All(moveUnits.getFromProvinceID());
                                            Game.player.fog.updateFogOfWar_All(moveUnits.getToProvinceID());
                                        }
                                        if (moveUnits.iRouteSize <= 2) {
                                            army.setInMovement(false);
                                            int toProvinceID = moveUnits.getToProvinceID();
                                            if (i == Game.player.iCivID) {
                                                Game.getCiv(i).removeMove(i2);
                                                i2--;
                                                try {
                                                    if (Game.getProvince(army.provinceID).isOccupied()) {
                                                        Game.getProvince(army.provinceID).invasionMoveArmies();
                                                    }
                                                } catch (Exception e) {
                                                    CFG.exceptionStack(e);
                                                }
                                            } else {
                                                Game.getCiv(i).aiMerge.checkMerge(moveUnits.getToProvinceID(), moveUnits.key);
                                                Game.getCiv(i).removeMove(i2);
                                                i2--;
                                            }
                                            SiegeManager.checkForSiege(toProvinceID);
                                        } else {
                                            moveUnits.updateToNextProvince(i);
                                            moveUnits.doneMovementProgressWidth = 0.0f;
                                            moveUnits.currentMovementProgressWidth = Math.max(0.0f, (moveUnits.fSpeed * (Game.terrainManager.terrains.get(Game.getProvince(moveUnits.getToProvinceID()).getTerrainID()).MovementSpeed + Game.getProvince(moveUnits.getFromProvinceID()).provBonuses.ArmyMovementSpeed + (Game.getProvince(moveUnits.getFromProvinceID()).getInfrastructure() * GameValues.infrastructure.INFRASTRUCTURE_ARMY_MOVEMENT_PER_LVL))) + moveUnits.movementProgressOverWidth);
                                            moveUnits.movementProgressOverWidth = 0.0f;
                                            try {
                                                if (moveUnits.currentMovementProgressWidth > moveUnits.iWidth.get(0).intValue()) {
                                                    moveUnits.movementProgressOverWidth = Math.max(0.0f, moveUnits.currentMovementProgressWidth - moveUnits.iWidth.get(0).intValue());
                                                    moveUnits.currentMovementProgressWidth = moveUnits.iWidth.get(0).intValue();
                                                }
                                            } catch (Exception e2) {
                                                CFG.exceptionStack(e2);
                                            }
                                        }
                                    } else {
                                        Game.getCiv(i).aiMerge.checkMerge(moveUnits.getToProvinceID(), moveUnits.key);
                                        Game.getCiv(i).removeMove(i2);
                                        i2--;
                                    }
                                }
                            }
                        } catch (Exception e3) {
                            CFG.exceptionStack(e3);
                        }
                        i2++;
                    } catch (Exception e4) {
                        CFG.exceptionStack(e4);
                    }
                }
            } catch (Exception e5) {
                CFG.exceptionStack(e5);
                return;
            }
        }
    }

    private final void updateMoveUnits_Rebels() {
        int i = 0;
        while (i < Game.revolutionMoveUnits.iMoveUnitsSize) {
            try {
                try {
                    MoveUnits moveUnits = Game.revolutionMoveUnits.lMoveUnits.get(i);
                    if (!moveUnits.inBattle) {
                        moveUnits.fCurrentMovingPercentage = 0.0f;
                        moveUnits.doneMovementProgressWidth = moveUnits.currentMovementProgressWidth;
                        moveUnits.currentMovementProgressWidth += moveUnits.fSpeed * (Game.terrainManager.terrains.get(Game.getProvince(moveUnits.getToProvinceID()).getTerrainID()).MovementSpeed + Game.getProvince(moveUnits.getFromProvinceID()).provBonuses.ArmyMovementSpeed + (Game.getProvince(moveUnits.getFromProvinceID()).getInfrastructure() * GameValues.infrastructure.INFRASTRUCTURE_ARMY_MOVEMENT_PER_LVL));
                        if (moveUnits.currentMovementProgressWidth > moveUnits.iWidth.get(0).intValue()) {
                            moveUnits.movementProgressOverWidth = moveUnits.currentMovementProgressWidth - moveUnits.iWidth.get(0).intValue();
                            moveUnits.currentMovementProgressWidth = moveUnits.iWidth.get(0).intValue();
                        }
                        moveUnits.updateLittleAnimationMovingArmy();
                        if (moveUnits.currentMovementProgressWidth >= moveUnits.iWidth.get(0).intValue()) {
                            ArmyDivision army = Game.getProvince(moveUnits.getFromProvinceID()).getArmy(moveUnits.key);
                            if (army != null) {
                                army.iShiftX_Scaled = 0;
                                army.iShiftY_Scaled = 0;
                                army.provinceID = moveUnits.getToProvinceID();
                                army.setInMovement(moveUnits.iRouteSize > 2);
                                Game.getProvince(moveUnits.getFromProvinceID()).removeArmy_MoveUnits(moveUnits.key);
                                Game.getProvince(moveUnits.getToProvinceID()).addArmy_MoveUnits(army);
                                Game.revolutionManager.updateArmyPosition(moveUnits.key, moveUnits.getToProvinceID());
                                Game.updateActiveArmy_MoveUnits(moveUnits.key, moveUnits.getFromProvinceID(), moveUnits.getToProvinceID());
                                if (moveUnits.iRouteSize <= 2) {
                                    army.setInMovement(false);
                                    army.inRetreat = false;
                                    SiegeManager.checkForSiege(moveUnits.getToProvinceID());
                                    Game.revolutionMoveUnits.removeMove(i);
                                } else {
                                    moveUnits.updateToNextProvince(army.civID);
                                    moveUnits.doneMovementProgressWidth = 0.0f;
                                    moveUnits.currentMovementProgressWidth = Math.max(0.0f, (moveUnits.fSpeed * (Game.terrainManager.terrains.get(Game.getProvince(moveUnits.getToProvinceID()).getTerrainID()).MovementSpeed + Game.getProvince(moveUnits.getFromProvinceID()).provBonuses.ArmyMovementSpeed + (Game.getProvince(moveUnits.getFromProvinceID()).getInfrastructure() * GameValues.infrastructure.INFRASTRUCTURE_ARMY_MOVEMENT_PER_LVL))) + moveUnits.movementProgressOverWidth);
                                    moveUnits.movementProgressOverWidth = 0.0f;
                                    try {
                                        if (moveUnits.currentMovementProgressWidth > moveUnits.iWidth.get(0).intValue()) {
                                            moveUnits.movementProgressOverWidth = Math.max(0.0f, moveUnits.currentMovementProgressWidth - moveUnits.iWidth.get(0).intValue());
                                            moveUnits.currentMovementProgressWidth = moveUnits.iWidth.get(0).intValue();
                                        }
                                    } catch (Exception e) {
                                        CFG.exceptionStack(e);
                                    }
                                }
                            } else {
                                Game.revolutionMoveUnits.removeMove(i);
                            }
                            i--;
                        }
                    }
                } catch (Exception e2) {
                    CFG.exceptionStack(e2);
                }
                i++;
            } catch (Exception e3) {
                CFG.exceptionStack(e3);
                return;
            }
        }
    }

    public static void updateRelations() {
        try {
            for (int i = (Game_Calendar.TURN_ID % GameValues.gameUpdate.GAME_UPDATE_RELATIONS_TO_NEUTRAL) + 1; i < Game.getCivsSize(); i += GameValues.gameUpdate.GAME_UPDATE_RELATIONS_TO_NEUTRAL) {
                if (Game.getCiv(i).getNumOfProvinces() > 0) {
                    updateRelations(i);
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static void updateRelations(int i) {
        Game.getCiv(i).diplomacy.updateRelations_ToNeutral(i);
    }

    public final void addAI_SimpleTask(Game.SimpleTask simpleTask) {
        if (this.aiTask.contains(simpleTask)) {
            return;
        }
        this.aiTask.add(simpleTask);
    }

    public final void addCivUpdateArmyMaintenance(int i) {
        try {
            if (this.civsUpdateArmyMaintenance.contains(Integer.valueOf(i))) {
                return;
            }
            this.civsUpdateArmyMaintenance.add(Integer.valueOf(i));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void addCivUpdateLegacyPerMonth(int i) {
        try {
            if (this.civsUpdateLegacyPerMonth.contains(Integer.valueOf(i))) {
                return;
            }
            this.civsUpdateLegacyPerMonth.add(Integer.valueOf(i));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void addCivUpdateLoans(int i) {
        try {
            if (this.civsUpdateLoans.contains(Integer.valueOf(i))) {
                return;
            }
            this.civsUpdateLoans.add(Integer.valueOf(i));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void addCivUpdateResearchPerMonth(int i) {
        try {
            if (this.civsUpdateResearchPerMonth.contains(Integer.valueOf(i))) {
                return;
            }
            this.civsUpdateResearchPerMonth.add(Integer.valueOf(i));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void addCivUpdateTotalIncomePerMonth(int i) {
        try {
            if (this.civsUpdateTotalIncomePerMonth.contains(Integer.valueOf(i))) {
                return;
            }
        } catch (Exception e) {
            CFG.LOG("addCivUpdateTotalIncomePerMonth: " + i);
            CFG.exceptionStack(e);
        }
        if (i < 1) {
            return;
        }
        try {
            this.civsUpdateTotalIncomePerMonth.add(Integer.valueOf(i));
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }

    public final void autoSaveData() {
        if (Game_Calendar.TURN_ID % GameValues.value.AUTO_SAVE_STATS_DAYS == 2) {
            Game.addSimpleTask(new AnonymousClass4("saveStats"));
        }
    }

    public void checkGameOver() {
        if (Game.SPECTATOR_MODE || Game.getCiv(Game.player.iCivID).getNumOfProvinces() > 0) {
            return;
        }
        Game.menuManager.setViewIDWithoutAnimation(View.GAME_LOST);
    }

    public void clearData() {
        this.civsUpdateLegacyPerMonth.clear();
        this.civsUpdateResearchPerMonth.clear();
        this.civsUpdateLoans.clear();
        this.civsUpdateArmyMaintenance.clear();
        this.civsUpdateTotalIncomePerMonth.clear();
        this.aiTask.clear();
    }

    public final int getPlaySpeed() {
        int i = this.playSpeed;
        if (i == 1) {
            this.playSpeedTIME = GameValues.gameSpeed.GAME_SPEED_1;
        } else if (i == 2) {
            this.playSpeedTIME = GameValues.gameSpeed.GAME_SPEED_2;
        } else if (i == 3) {
            this.playSpeedTIME = GameValues.gameSpeed.GAME_SPEED_3;
        } else if (i == 4) {
            this.playSpeedTIME = GameValues.gameSpeed.GAME_SPEED_4;
        } else if (Game.SPECTATOR_MODE) {
            this.playSpeedTIME = GameValues.gameSpeed.GAME_SPEED_SPECTATOR_MODE;
        } else {
            this.playSpeedTIME = GameValues.gameSpeed.GAME_SPEED_5;
        }
        return this.playSpeedTIME;
    }

    public final void removeCivUpdateLoans(int i) {
        try {
            this.civsUpdateLoans.remove(Integer.valueOf(i));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void returnOccupiedProvinces_NotAtWar() {
        if (Game_Calendar.TURN_ID % GameValues.gameUpdate.GAME_UPDATE_RETURN_OCCUPIED_PROVINCES_NOT_AT_WAR == 0) {
            for (int i = 0; i < Game.getProvincesSize(); i++) {
                if (Game.getProvince(i).isOccupied() && Game.getProvinceData(i).getOccupiedByCivID() >= 0 && !DiplomacyManager.isAtWar(Game.getProvince(i).getCivID(), Game.getProvinceData(i).getOccupiedByCivID())) {
                    Game.getProvince(i).retakeOccupiedProvince_Peace();
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x00c7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        while (this.running) {
            try {
                calculationsTime = System.currentTimeMillis();
                if (!Game.menuManager.getInGame() || Game.menuManager.getVisibleInGame_Escape()) {
                    try {
                        Thread.sleep(Math.max(GameValues.gameSpeed.MIN_THREAD_SLEEP, ((long) getPlaySpeed()) - (System.currentTimeMillis() - calculationsTime)));
                    } catch (InterruptedException e) {
                        CFG.exceptionStack(e);
                    }
                } else {
                    try {
                        if (!this.play || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_PEACE_VIEW) {
                            Thread.sleep(Math.max(GameValues.gameSpeed.MIN_THREAD_SLEEP, ((long) getPlaySpeed()) - (System.currentTimeMillis() - calculationsTime)));
                        } else {
                            Game_Calendar.HOUR += Game.HOURS_PER_TURN;
                            updateMoveUnits();
                            updateMoveUnits_Rebels();
                            updateArmyMorale_Reinforce();
                            updateRecruitArmy();
                            updateSieges();
                            updateBattles();
                            checkGameOver();
                            if (Game_Calendar.HOUR >= 24) {
                                Game_Calendar.HOUR %= 24;
                                Game_Calendar.TURN_ID++;
                                Game.stats.civStats.tr++;
                                autoSaveData();
                                Game_Calendar.nextDays(Game.gameAges.getAge_TurnDays(Game_Calendar.CURRENT_AGEID));
                                updateMinimap();
                                updateNewMonth();
                                updateNewYear();
                                updateAutoAssimilation();
                                updatePopulation();
                                ResourcesManager.updatePriceChanges();
                                updateLoans();
                                updateResearchPerMonth();
                                updateLegacyPerMonth();
                                updateArmyMaintenance();
                                updateTotalIncomePerMonth();
                                updateGold_Manpower_Legacy_Diplomacy();
                                updateResearch();
                                updateAI_SimpleTask();
                                CoalitionManager.updateCreateCoalition();
                                Game.aiManager.updateAll();
                                Game.revolutionManager.update();
                                updateAggressiveExpansion();
                                updateWarWeariness();
                                updateWars_Peace();
                                updateWars_WhitePeace();
                                LibertyDesireManager.updateLibertyDesire();
                                updateCivilizationBonuses();
                                updateCivs_Laws();
                                updateRelations();
                                returnOccupiedProvinces_NotAtWar();
                                SaveGameManager.autosave();
                                Thread.sleep(Math.max(GameValues.gameSpeed.MIN_THREAD_SLEEP, ((long) getPlaySpeed()) - (System.currentTimeMillis() - calculationsTime)));
                            } else {
                                Thread.sleep(Math.max(GameValues.gameSpeed.MIN_THREAD_SLEEP, ((long) getPlaySpeed()) - (System.currentTimeMillis() - calculationsTime)));
                            }
                        }
                    } catch (Exception e2) {
                        CFG.exceptionStack(e2);
                    }
                }
            } catch (Exception e3) {
                CFG.exceptionStack(e3);
            }
        }
    }

    public final void updateAI_SimpleTask() {
        try {
            for (int size = this.aiTask.size() - 1; size >= 0; size--) {
                try {
                    this.aiTask.remove().update();
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }

    public final void updateAggressiveExpansion() {
        try {
            for (int i = Game_Calendar.TURN_ID % GameValues.aggressiveExpansion.GAME_UPDATE_AE_DECAY_TURNS; i < Game.getCivsSize(); i += GameValues.aggressiveExpansion.GAME_UPDATE_AE_DECAY_TURNS) {
                if (Game.getCiv(i).getAggressiveExpansion() > 0.0f) {
                    Game.getCiv(i).decayAggressiveExpansion();
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateArmyMaintenance() {
        try {
            for (int size = this.civsUpdateArmyMaintenance.size() - 1; size >= 0; size--) {
                int iIntValue = this.civsUpdateArmyMaintenance.remove().intValue();
                Game.getCiv(iIntValue).updateArmyMaintenance();
                Game.getCiv(iIntValue).updateArmyRegimentSize();
                addCivUpdateTotalIncomePerMonth(iIntValue);
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateArmyMorale_Reinforce() {
        try {
            for (int i = (Game_Calendar.TURN_ID % GameValues.gameUpdate.GAME_UPDATE_ARMIES_MORALE_REINFORCE_STEPS) + 1; i < Game.getCivsSize(); i += GameValues.gameUpdate.GAME_UPDATE_ARMIES_MORALE_REINFORCE_STEPS) {
                try {
                    if (Game.getCiv(i).getNumOfProvinces() > 0) {
                        Game.getCiv(i).updateMorale_Reinforce();
                    }
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }

    public final void updateAutoAssimilation() {
        try {
            for (int i = Game_Calendar.TURN_ID % GameValues.province.AUTO_ASSIMILATION_UPDATE_STEPS; i < Game.getProvincesSize(); i += GameValues.province.AUTO_ASSIMILATION_UPDATE_STEPS) {
                if (Game.getProvince(i).getCivID() > 0) {
                    Game.getProvince(i).autoAssimilate();
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateBattles() {
        for (int battleSize = Game.battleManager.getBattleSize() - 1; battleSize >= 0; battleSize--) {
            try {
                Game.battleManager.getBattle(battleSize).updateBattle();
                if (Game.battleManager.getBattle(battleSize).endOfBattle()) {
                    Game.battleManager.getBattle(battleSize).updateBattle_Summary(true);
                    try {
                        Game.getProvince(Game.battleManager.getBattle(battleSize).provinceID).updateIsUnderSiege();
                        SiegeManager.checkForSiege(Game.battleManager.getBattle(battleSize).provinceID);
                    } catch (Exception e) {
                        CFG.exceptionStack(e);
                    }
                    int i = Game.battleManager.getBattle(battleSize).provinceID;
                    Game.battleManager.removeBattle(battleSize);
                    AI_BattleEnd.battleEnded(i);
                } else if (Game.battleManager.getBattle(battleSize).endOfBattle_NoAttacks()) {
                    Game.battleManager.getBattle(battleSize).updateBattle_Summary(true);
                    try {
                        Game.getProvince(Game.battleManager.getBattle(battleSize).provinceID).updateIsUnderSiege();
                        SiegeManager.checkForSiege(Game.battleManager.getBattle(battleSize).provinceID);
                    } catch (Exception e2) {
                        CFG.exceptionStack(e2);
                    }
                    Game.battleManager.removeBattle(battleSize);
                }
            } catch (Exception e3) {
                CFG.exceptionStack(e3);
            }
        }
    }

    public final void updateCivilizationBonuses() {
        try {
            for (int i = (Game_Calendar.TURN_ID % GameValues.gameUpdate.GAME_UPDATE_CIV_BONUSES) + 1; i < Game.getCivsSize(); i += GameValues.gameUpdate.GAME_UPDATE_CIV_BONUSES) {
                Game.getCiv(i).updateCivilizationBonuses_Temporary();
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateCivs_Advantages() {
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0033 A[Catch: Exception -> 0x0045, TryCatch #0 {Exception -> 0x0045, blocks: (B:2:0x0000, B:3:0x0009, B:5:0x000f, B:7:0x0019, B:8:0x001c, B:9:0x0022, B:11:0x0028, B:12:0x002c, B:13:0x002d, B:15:0x0033, B:17:0x003d, B:18:0x0040), top: B:23:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:17:0x003d A[Catch: Exception -> 0x0045, TryCatch #0 {Exception -> 0x0045, blocks: (B:2:0x0000, B:3:0x0009, B:5:0x000f, B:7:0x0019, B:8:0x001c, B:9:0x0022, B:11:0x0028, B:12:0x002c, B:13:0x002d, B:15:0x0033, B:17:0x003d, B:18:0x0040), top: B:23:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:18:0x0040 A[Catch: Exception -> 0x0045, TRY_LEAVE, TryCatch #0 {Exception -> 0x0045, blocks: (B:2:0x0000, B:3:0x0009, B:5:0x000f, B:7:0x0019, B:8:0x001c, B:9:0x0022, B:11:0x0028, B:12:0x002c, B:13:0x002d, B:15:0x0033, B:17:0x003d, B:18:0x0040), top: B:23:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:29:? A[RETURN, SYNTHETIC] */
    /*  JADX ERROR: StackOverflowError in pass: RegionMakerVisitor
        java.lang.StackOverflowError
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:731)
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:749)
        */
    public final void updateCivs_Laws() {
        /*
            r2 = this;
            int r0 = aoc.kingdoms.lukasz.jakowski.Game_Calendar.TURN_ID     // Catch: java.lang.Exception -> L45
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L45
            int r1 = r1.GAME_UPDATE_AI_LAWS     // Catch: java.lang.Exception -> L45
            int r0 = r0 % r1
            int r0 = r0 + 1
        L9:
            aoc.kingdoms.lukasz.jakowski.Player.Player r1 = aoc.kingdoms.lukasz.jakowski.Game.player     // Catch: java.lang.Exception -> L45
            int r1 = r1.iCivID     // Catch: java.lang.Exception -> L45
            if (r0 >= r1) goto L22
            aoc.kingdoms.lukasz.map.civilization.Civilization r1 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> L45
            int r1 = r1.getNumOfProvinces()     // Catch: java.lang.Exception -> L45
            if (r1 <= 0) goto L1c
            aoc.kingdoms.lukasz.jakowski.AI.Laws.AI_Laws.adoptNewLaws(r0)     // Catch: java.lang.Exception -> L45
        L1c:
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L45
            int r1 = r1.GAME_UPDATE_AI_LAWS     // Catch: java.lang.Exception -> L45
            int r0 = r0 + r1
            goto L9
        L22:
            aoc.kingdoms.lukasz.jakowski.Player.Player r1 = aoc.kingdoms.lukasz.jakowski.Game.player     // Catch: java.lang.Exception -> L45
            int r1 = r1.iCivID     // Catch: java.lang.Exception -> L45
            if (r0 != r1) goto L2d
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L45
            int r1 = r1.GAME_UPDATE_AI_LAWS     // Catch: java.lang.Exception -> L45
        L2c:
            int r0 = r0 + r1
        L2d:
            int r1 = aoc.kingdoms.lukasz.jakowski.Game.getCivsSize()     // Catch: java.lang.Exception -> L45
            if (r0 >= r1) goto L49
            aoc.kingdoms.lukasz.map.civilization.Civilization r1 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> L45
            int r1 = r1.getNumOfProvinces()     // Catch: java.lang.Exception -> L45
            if (r1 <= 0) goto L40
            aoc.kingdoms.lukasz.jakowski.AI.Laws.AI_Laws.adoptNewLaws(r0)     // Catch: java.lang.Exception -> L45
        L40:
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L45
            int r1 = r1.GAME_UPDATE_AI_LAWS     // Catch: java.lang.Exception -> L45
            goto L2c
        L45:
            r0 = move-exception
            aoc.kingdoms.lukasz.jakowski.CFG.exceptionStack(r0)
        L49:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: aoc.kingdoms.lukasz.jakowski.GameThreads.GameThread.updateCivs_Laws():void");
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0033 A[Catch: Exception -> 0x0045, TryCatch #0 {Exception -> 0x0045, blocks: (B:2:0x0000, B:3:0x0009, B:5:0x000f, B:7:0x0019, B:8:0x001c, B:9:0x0022, B:11:0x0028, B:12:0x002c, B:13:0x002d, B:15:0x0033, B:17:0x003d, B:18:0x0040), top: B:23:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:17:0x003d A[Catch: Exception -> 0x0045, TryCatch #0 {Exception -> 0x0045, blocks: (B:2:0x0000, B:3:0x0009, B:5:0x000f, B:7:0x0019, B:8:0x001c, B:9:0x0022, B:11:0x0028, B:12:0x002c, B:13:0x002d, B:15:0x0033, B:17:0x003d, B:18:0x0040), top: B:23:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:18:0x0040 A[Catch: Exception -> 0x0045, TRY_LEAVE, TryCatch #0 {Exception -> 0x0045, blocks: (B:2:0x0000, B:3:0x0009, B:5:0x000f, B:7:0x0019, B:8:0x001c, B:9:0x0022, B:11:0x0028, B:12:0x002c, B:13:0x002d, B:15:0x0033, B:17:0x003d, B:18:0x0040), top: B:23:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:29:? A[RETURN, SYNTHETIC] */
    /*  JADX ERROR: StackOverflowError in pass: RegionMakerVisitor
        java.lang.StackOverflowError
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:731)
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:749)
        */
    public final void updateCivs_UpgradeUnits() {
        /*
            r2 = this;
            int r0 = aoc.kingdoms.lukasz.jakowski.Game_Calendar.TURN_ID     // Catch: java.lang.Exception -> L45
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L45
            int r1 = r1.GAME_UPDATE_AI_UPGRADE_UNITS     // Catch: java.lang.Exception -> L45
            int r0 = r0 % r1
            int r0 = r0 + 1
        L9:
            aoc.kingdoms.lukasz.jakowski.Player.Player r1 = aoc.kingdoms.lukasz.jakowski.Game.player     // Catch: java.lang.Exception -> L45
            int r1 = r1.iCivID     // Catch: java.lang.Exception -> L45
            if (r0 >= r1) goto L22
            aoc.kingdoms.lukasz.map.civilization.Civilization r1 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> L45
            int r1 = r1.getNumOfProvinces()     // Catch: java.lang.Exception -> L45
            if (r1 <= 0) goto L1c
            aoc.kingdoms.lukasz.map.army.ArmyManager.upgradeAllArmies(r0)     // Catch: java.lang.Exception -> L45
        L1c:
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L45
            int r1 = r1.GAME_UPDATE_AI_UPGRADE_UNITS     // Catch: java.lang.Exception -> L45
            int r0 = r0 + r1
            goto L9
        L22:
            aoc.kingdoms.lukasz.jakowski.Player.Player r1 = aoc.kingdoms.lukasz.jakowski.Game.player     // Catch: java.lang.Exception -> L45
            int r1 = r1.iCivID     // Catch: java.lang.Exception -> L45
            if (r0 != r1) goto L2d
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L45
            int r1 = r1.GAME_UPDATE_AI_UPGRADE_UNITS     // Catch: java.lang.Exception -> L45
        L2c:
            int r0 = r0 + r1
        L2d:
            int r1 = aoc.kingdoms.lukasz.jakowski.Game.getCivsSize()     // Catch: java.lang.Exception -> L45
            if (r0 >= r1) goto L49
            aoc.kingdoms.lukasz.map.civilization.Civilization r1 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> L45
            int r1 = r1.getNumOfProvinces()     // Catch: java.lang.Exception -> L45
            if (r1 <= 0) goto L40
            aoc.kingdoms.lukasz.map.army.ArmyManager.upgradeAllArmies(r0)     // Catch: java.lang.Exception -> L45
        L40:
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L45
            int r1 = r1.GAME_UPDATE_AI_UPGRADE_UNITS     // Catch: java.lang.Exception -> L45
            goto L2c
        L45:
            r0 = move-exception
            aoc.kingdoms.lukasz.jakowski.CFG.exceptionStack(r0)
        L49:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: aoc.kingdoms.lukasz.jakowski.GameThreads.GameThread.updateCivs_UpgradeUnits():void");
    }

    public final void updateDiplomacyPoints() {
        for (int i = 1; i < Game.getCivsSize(); i++) {
            try {
                if (Game.getCiv(i).getNumOfProvinces() > 0) {
                    Game.getCiv(i).fDiplomacy = Math.max(GameValues.diplomacy.DIPLOMACY_POINTS_MIN, Math.min(Game.getCiv(i).fDiplomacyMax, Game.getCiv(i).fDiplomacy + (Game.getCiv(i).getDiplomacyPerMonth() / Game_Calendar.UPDATE_NUM_OF_DAYS)));
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x00a0 A[Catch: Exception -> 0x00d5, TryCatch #1 {Exception -> 0x00d5, blocks: (B:8:0x004e, B:9:0x0055, B:11:0x005b, B:13:0x0065, B:14:0x008d, B:15:0x0091, B:17:0x0097, B:18:0x0099, B:19:0x009a, B:21:0x00a0, B:23:0x00aa, B:24:0x00d2), top: B:31:0x004e }] */
    /* JADX WARN: Code duplicated, block: B:23:0x00aa A[Catch: Exception -> 0x00d5, TryCatch #1 {Exception -> 0x00d5, blocks: (B:8:0x004e, B:9:0x0055, B:11:0x005b, B:13:0x0065, B:14:0x008d, B:15:0x0091, B:17:0x0097, B:18:0x0099, B:19:0x009a, B:21:0x00a0, B:23:0x00aa, B:24:0x00d2), top: B:31:0x004e }] */
    /* JADX WARN: Code duplicated, block: B:24:0x00d2 A[Catch: Exception -> 0x00d5, TRY_LEAVE, TryCatch #1 {Exception -> 0x00d5, blocks: (B:8:0x004e, B:9:0x0055, B:11:0x005b, B:13:0x0065, B:14:0x008d, B:15:0x0091, B:17:0x0097, B:18:0x0099, B:19:0x009a, B:21:0x00a0, B:23:0x00aa, B:24:0x00d2), top: B:31:0x004e }] */
    /* JADX WARN: Code duplicated, block: B:37:? A[RETURN, SYNTHETIC] */
    /*  JADX ERROR: StackOverflowError in pass: RegionMakerVisitor
        java.lang.StackOverflowError
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:731)
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:749)
        */
    public final void updateDiplomacyPoints_2() {
        /*
            Method dump skipped, instruction units count: 218
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: aoc.kingdoms.lukasz.jakowski.GameThreads.GameThread.updateDiplomacyPoints_2():void");
    }

    public final void updateGold() {
        for (int i = 1; i < Game.getCivsSize(); i++) {
            try {
                try {
                    if (Game.getCiv(i).getNumOfProvinces() > 0) {
                        Game.getCiv(i).addGold(((Game.getCiv(i).fTotalIncomePerMonth + Game.getCiv(i).civBonuses.MonthlyIncome) - Game.getCiv(i).fTotalExpensesPerMonth) / Game_Calendar.UPDATE_NUM_OF_DAYS);
                    }
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            } catch (Exception e2) {
                CFG.exceptionStack(e2);
                return;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x008a A[Catch: Exception -> 0x00b4, TryCatch #1 {Exception -> 0x00b4, blocks: (B:8:0x0043, B:9:0x004a, B:11:0x0050, B:13:0x005a, B:14:0x0077, B:15:0x007b, B:17:0x0081, B:18:0x0083, B:19:0x0084, B:21:0x008a, B:23:0x0094, B:24:0x00b1), top: B:31:0x0043 }] */
    /* JADX WARN: Code duplicated, block: B:23:0x0094 A[Catch: Exception -> 0x00b4, TryCatch #1 {Exception -> 0x00b4, blocks: (B:8:0x0043, B:9:0x004a, B:11:0x0050, B:13:0x005a, B:14:0x0077, B:15:0x007b, B:17:0x0081, B:18:0x0083, B:19:0x0084, B:21:0x008a, B:23:0x0094, B:24:0x00b1), top: B:31:0x0043 }] */
    /* JADX WARN: Code duplicated, block: B:24:0x00b1 A[Catch: Exception -> 0x00b4, TRY_LEAVE, TryCatch #1 {Exception -> 0x00b4, blocks: (B:8:0x0043, B:9:0x004a, B:11:0x0050, B:13:0x005a, B:14:0x0077, B:15:0x007b, B:17:0x0081, B:18:0x0083, B:19:0x0084, B:21:0x008a, B:23:0x0094, B:24:0x00b1), top: B:31:0x0043 }] */
    /* JADX WARN: Code duplicated, block: B:37:? A[RETURN, SYNTHETIC] */
    /*  JADX ERROR: StackOverflowError in pass: RegionMakerVisitor
        java.lang.StackOverflowError
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:731)
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:749)
        */
    public final void updateGold_2() {
        /*
            r4 = this;
            aoc.kingdoms.lukasz.jakowski.Player.Player r0 = aoc.kingdoms.lukasz.jakowski.Game.player     // Catch: java.lang.Exception -> L3f
            int r0 = r0.iCivID     // Catch: java.lang.Exception -> L3f
            aoc.kingdoms.lukasz.map.civilization.Civilization r0 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> L3f
            int r0 = r0.getNumOfProvinces()     // Catch: java.lang.Exception -> L3f
            if (r0 <= 0) goto L43
            aoc.kingdoms.lukasz.jakowski.Player.Player r0 = aoc.kingdoms.lukasz.jakowski.Game.player     // Catch: java.lang.Exception -> L3f
            int r0 = r0.iCivID     // Catch: java.lang.Exception -> L3f
            aoc.kingdoms.lukasz.map.civilization.Civilization r0 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> L3f
            aoc.kingdoms.lukasz.jakowski.Player.Player r1 = aoc.kingdoms.lukasz.jakowski.Game.player     // Catch: java.lang.Exception -> L3f
            int r1 = r1.iCivID     // Catch: java.lang.Exception -> L3f
            aoc.kingdoms.lukasz.map.civilization.Civilization r1 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r1)     // Catch: java.lang.Exception -> L3f
            float r1 = r1.fTotalIncomePerMonth     // Catch: java.lang.Exception -> L3f
            aoc.kingdoms.lukasz.jakowski.Player.Player r2 = aoc.kingdoms.lukasz.jakowski.Game.player     // Catch: java.lang.Exception -> L3f
            int r2 = r2.iCivID     // Catch: java.lang.Exception -> L3f
            aoc.kingdoms.lukasz.map.civilization.Civilization r2 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r2)     // Catch: java.lang.Exception -> L3f
            aoc.kingdoms.lukasz.map.civilization.CivilizationBonuses r2 = r2.civBonuses     // Catch: java.lang.Exception -> L3f
            float r2 = r2.MonthlyIncome     // Catch: java.lang.Exception -> L3f
            float r1 = r1 + r2
            aoc.kingdoms.lukasz.jakowski.Player.Player r2 = aoc.kingdoms.lukasz.jakowski.Game.player     // Catch: java.lang.Exception -> L3f
            int r2 = r2.iCivID     // Catch: java.lang.Exception -> L3f
            aoc.kingdoms.lukasz.map.civilization.Civilization r2 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r2)     // Catch: java.lang.Exception -> L3f
            float r2 = r2.fTotalExpensesPerMonth     // Catch: java.lang.Exception -> L3f
            float r1 = r1 - r2
            float r2 = aoc.kingdoms.lukasz.jakowski.Game_Calendar.UPDATE_NUM_OF_DAYS     // Catch: java.lang.Exception -> L3f
            float r1 = r1 / r2
            r0.addGold(r1)     // Catch: java.lang.Exception -> L3f
            goto L43
        L3f:
            r0 = move-exception
            aoc.kingdoms.lukasz.jakowski.CFG.exceptionStack(r0)
        L43:
            int r0 = aoc.kingdoms.lukasz.jakowski.Game_Calendar.TURN_ID     // Catch: java.lang.Exception -> Lb4
            int r1 = aoc.kingdoms.lukasz.jakowski.Game_Calendar.UPDATE_NUM_OF_DAYS_INT     // Catch: java.lang.Exception -> Lb4
            int r0 = r0 % r1
            int r0 = r0 + 1
        L4a:
            aoc.kingdoms.lukasz.jakowski.Player.Player r1 = aoc.kingdoms.lukasz.jakowski.Game.player     // Catch: java.lang.Exception -> Lb4
            int r1 = r1.iCivID     // Catch: java.lang.Exception -> Lb4
            if (r0 >= r1) goto L7b
            aoc.kingdoms.lukasz.map.civilization.Civilization r1 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> Lb4
            int r1 = r1.getNumOfProvinces()     // Catch: java.lang.Exception -> Lb4
            if (r1 <= 0) goto L77
            aoc.kingdoms.lukasz.map.civilization.Civilization r1 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> Lb4
            aoc.kingdoms.lukasz.map.civilization.Civilization r2 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> Lb4
            float r2 = r2.fTotalIncomePerMonth     // Catch: java.lang.Exception -> Lb4
            aoc.kingdoms.lukasz.map.civilization.Civilization r3 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> Lb4
            aoc.kingdoms.lukasz.map.civilization.CivilizationBonuses r3 = r3.civBonuses     // Catch: java.lang.Exception -> Lb4
            float r3 = r3.MonthlyIncome     // Catch: java.lang.Exception -> Lb4
            float r2 = r2 + r3
            aoc.kingdoms.lukasz.map.civilization.Civilization r3 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> Lb4
            float r3 = r3.fTotalExpensesPerMonth     // Catch: java.lang.Exception -> Lb4
            float r2 = r2 - r3
            r1.addGold(r2)     // Catch: java.lang.Exception -> Lb4
        L77:
            int r1 = aoc.kingdoms.lukasz.jakowski.Game_Calendar.UPDATE_NUM_OF_DAYS_INT     // Catch: java.lang.Exception -> Lb4
            int r0 = r0 + r1
            goto L4a
        L7b:
            aoc.kingdoms.lukasz.jakowski.Player.Player r1 = aoc.kingdoms.lukasz.jakowski.Game.player     // Catch: java.lang.Exception -> Lb4
            int r1 = r1.iCivID     // Catch: java.lang.Exception -> Lb4
            if (r0 != r1) goto L84
            int r1 = aoc.kingdoms.lukasz.jakowski.Game_Calendar.UPDATE_NUM_OF_DAYS_INT     // Catch: java.lang.Exception -> Lb4
        L83:
            int r0 = r0 + r1
        L84:
            int r1 = aoc.kingdoms.lukasz.jakowski.Game.getCivsSize()     // Catch: java.lang.Exception -> Lb4
            if (r0 >= r1) goto Lb8
            aoc.kingdoms.lukasz.map.civilization.Civilization r1 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> Lb4
            int r1 = r1.getNumOfProvinces()     // Catch: java.lang.Exception -> Lb4
            if (r1 <= 0) goto Lb1
            aoc.kingdoms.lukasz.map.civilization.Civilization r1 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> Lb4
            aoc.kingdoms.lukasz.map.civilization.Civilization r2 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> Lb4
            float r2 = r2.fTotalIncomePerMonth     // Catch: java.lang.Exception -> Lb4
            aoc.kingdoms.lukasz.map.civilization.Civilization r3 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> Lb4
            aoc.kingdoms.lukasz.map.civilization.CivilizationBonuses r3 = r3.civBonuses     // Catch: java.lang.Exception -> Lb4
            float r3 = r3.MonthlyIncome     // Catch: java.lang.Exception -> Lb4
            float r2 = r2 + r3
            aoc.kingdoms.lukasz.map.civilization.Civilization r3 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> Lb4
            float r3 = r3.fTotalExpensesPerMonth     // Catch: java.lang.Exception -> Lb4
            float r2 = r2 - r3
            r1.addGold(r2)     // Catch: java.lang.Exception -> Lb4
        Lb1:
            int r1 = aoc.kingdoms.lukasz.jakowski.Game_Calendar.UPDATE_NUM_OF_DAYS_INT     // Catch: java.lang.Exception -> Lb4
            goto L83
        Lb4:
            r0 = move-exception
            aoc.kingdoms.lukasz.jakowski.CFG.exceptionStack(r0)
        Lb8:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: aoc.kingdoms.lukasz.jakowski.GameThreads.GameThread.updateGold_2():void");
    }

    /* JADX WARN: Code duplicated, block: B:21:0x00b2 A[Catch: Exception -> 0x00f3, TryCatch #1 {Exception -> 0x00f3, blocks: (B:8:0x0054, B:9:0x005b, B:11:0x0061, B:13:0x006b, B:14:0x009f, B:15:0x00a3, B:17:0x00a9, B:18:0x00ab, B:19:0x00ac, B:21:0x00b2, B:23:0x00bc, B:24:0x00f0), top: B:31:0x0054 }] */
    /* JADX WARN: Code duplicated, block: B:23:0x00bc A[Catch: Exception -> 0x00f3, TryCatch #1 {Exception -> 0x00f3, blocks: (B:8:0x0054, B:9:0x005b, B:11:0x0061, B:13:0x006b, B:14:0x009f, B:15:0x00a3, B:17:0x00a9, B:18:0x00ab, B:19:0x00ac, B:21:0x00b2, B:23:0x00bc, B:24:0x00f0), top: B:31:0x0054 }] */
    /* JADX WARN: Code duplicated, block: B:24:0x00f0 A[Catch: Exception -> 0x00f3, TRY_LEAVE, TryCatch #1 {Exception -> 0x00f3, blocks: (B:8:0x0054, B:9:0x005b, B:11:0x0061, B:13:0x006b, B:14:0x009f, B:15:0x00a3, B:17:0x00a9, B:18:0x00ab, B:19:0x00ac, B:21:0x00b2, B:23:0x00bc, B:24:0x00f0), top: B:31:0x0054 }] */
    /*  JADX ERROR: StackOverflowError in pass: RegionMakerVisitor
        java.lang.StackOverflowError
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:731)
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:749)
        */
    public final void updateGold_Manpower_Legacy_Diplomacy() {
        /*
            Method dump skipped, instruction units count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: aoc.kingdoms.lukasz.jakowski.GameThreads.GameThread.updateGold_Manpower_Legacy_Diplomacy():void");
    }

    public final void updateLegacy() {
        for (int i = 1; i < Game.getCivsSize(); i++) {
            try {
                if (Game.getCiv(i).getNumOfProvinces() > 0) {
                    Game.getCiv(i).addLegacy(Game.getCiv(i).getLegacyPerMonth() / Game_Calendar.UPDATE_NUM_OF_DAYS);
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
    }

    public final void updateLegacyPerMonth() {
        try {
            for (int size = this.civsUpdateLegacyPerMonth.size() - 1; size >= 0; size--) {
                Game.getCiv(this.civsUpdateLegacyPerMonth.remove().intValue()).updateLegacyPerMonth();
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0066 A[Catch: Exception -> 0x0082, TryCatch #1 {Exception -> 0x0082, blocks: (B:8:0x002d, B:9:0x0034, B:11:0x003a, B:13:0x0044, B:14:0x0053, B:15:0x0057, B:17:0x005d, B:18:0x005f, B:19:0x0060, B:21:0x0066, B:23:0x0070, B:24:0x007f), top: B:31:0x002d }] */
    /* JADX WARN: Code duplicated, block: B:23:0x0070 A[Catch: Exception -> 0x0082, TryCatch #1 {Exception -> 0x0082, blocks: (B:8:0x002d, B:9:0x0034, B:11:0x003a, B:13:0x0044, B:14:0x0053, B:15:0x0057, B:17:0x005d, B:18:0x005f, B:19:0x0060, B:21:0x0066, B:23:0x0070, B:24:0x007f), top: B:31:0x002d }] */
    /* JADX WARN: Code duplicated, block: B:24:0x007f A[Catch: Exception -> 0x0082, TRY_LEAVE, TryCatch #1 {Exception -> 0x0082, blocks: (B:8:0x002d, B:9:0x0034, B:11:0x003a, B:13:0x0044, B:14:0x0053, B:15:0x0057, B:17:0x005d, B:18:0x005f, B:19:0x0060, B:21:0x0066, B:23:0x0070, B:24:0x007f), top: B:31:0x002d }] */
    /* JADX WARN: Code duplicated, block: B:37:? A[RETURN, SYNTHETIC] */
    /*  JADX ERROR: StackOverflowError in pass: RegionMakerVisitor
        java.lang.StackOverflowError
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:731)
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:749)
        */
    public final void updateLegacy_2() {
        /*
            r3 = this;
            aoc.kingdoms.lukasz.jakowski.Player.Player r0 = aoc.kingdoms.lukasz.jakowski.Game.player     // Catch: java.lang.Exception -> L29
            int r0 = r0.iCivID     // Catch: java.lang.Exception -> L29
            aoc.kingdoms.lukasz.map.civilization.Civilization r0 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> L29
            int r0 = r0.getNumOfProvinces()     // Catch: java.lang.Exception -> L29
            if (r0 <= 0) goto L2d
            aoc.kingdoms.lukasz.jakowski.Player.Player r0 = aoc.kingdoms.lukasz.jakowski.Game.player     // Catch: java.lang.Exception -> L29
            int r0 = r0.iCivID     // Catch: java.lang.Exception -> L29
            aoc.kingdoms.lukasz.map.civilization.Civilization r0 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> L29
            aoc.kingdoms.lukasz.jakowski.Player.Player r1 = aoc.kingdoms.lukasz.jakowski.Game.player     // Catch: java.lang.Exception -> L29
            int r1 = r1.iCivID     // Catch: java.lang.Exception -> L29
            aoc.kingdoms.lukasz.map.civilization.Civilization r1 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r1)     // Catch: java.lang.Exception -> L29
            float r1 = r1.getLegacyPerMonth()     // Catch: java.lang.Exception -> L29
            float r2 = aoc.kingdoms.lukasz.jakowski.Game_Calendar.UPDATE_NUM_OF_DAYS     // Catch: java.lang.Exception -> L29
            float r1 = r1 / r2
            r0.addLegacy(r1)     // Catch: java.lang.Exception -> L29
            goto L2d
        L29:
            r0 = move-exception
            aoc.kingdoms.lukasz.jakowski.CFG.exceptionStack(r0)
        L2d:
            int r0 = aoc.kingdoms.lukasz.jakowski.Game_Calendar.TURN_ID     // Catch: java.lang.Exception -> L82
            int r1 = aoc.kingdoms.lukasz.jakowski.Game_Calendar.UPDATE_NUM_OF_DAYS_INT     // Catch: java.lang.Exception -> L82
            int r0 = r0 % r1
            int r0 = r0 + 1
        L34:
            aoc.kingdoms.lukasz.jakowski.Player.Player r1 = aoc.kingdoms.lukasz.jakowski.Game.player     // Catch: java.lang.Exception -> L82
            int r1 = r1.iCivID     // Catch: java.lang.Exception -> L82
            if (r0 >= r1) goto L57
            aoc.kingdoms.lukasz.map.civilization.Civilization r1 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> L82
            int r1 = r1.getNumOfProvinces()     // Catch: java.lang.Exception -> L82
            if (r1 <= 0) goto L53
            aoc.kingdoms.lukasz.map.civilization.Civilization r1 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> L82
            aoc.kingdoms.lukasz.map.civilization.Civilization r2 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> L82
            float r2 = r2.getLegacyPerMonth()     // Catch: java.lang.Exception -> L82
            r1.addLegacy(r2)     // Catch: java.lang.Exception -> L82
        L53:
            int r1 = aoc.kingdoms.lukasz.jakowski.Game_Calendar.UPDATE_NUM_OF_DAYS_INT     // Catch: java.lang.Exception -> L82
            int r0 = r0 + r1
            goto L34
        L57:
            aoc.kingdoms.lukasz.jakowski.Player.Player r1 = aoc.kingdoms.lukasz.jakowski.Game.player     // Catch: java.lang.Exception -> L82
            int r1 = r1.iCivID     // Catch: java.lang.Exception -> L82
            if (r0 != r1) goto L60
            int r1 = aoc.kingdoms.lukasz.jakowski.Game_Calendar.UPDATE_NUM_OF_DAYS_INT     // Catch: java.lang.Exception -> L82
        L5f:
            int r0 = r0 + r1
        L60:
            int r1 = aoc.kingdoms.lukasz.jakowski.Game.getCivsSize()     // Catch: java.lang.Exception -> L82
            if (r0 >= r1) goto L86
            aoc.kingdoms.lukasz.map.civilization.Civilization r1 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> L82
            int r1 = r1.getNumOfProvinces()     // Catch: java.lang.Exception -> L82
            if (r1 <= 0) goto L7f
            aoc.kingdoms.lukasz.map.civilization.Civilization r1 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> L82
            aoc.kingdoms.lukasz.map.civilization.Civilization r2 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> L82
            float r2 = r2.getLegacyPerMonth()     // Catch: java.lang.Exception -> L82
            r1.addLegacy(r2)     // Catch: java.lang.Exception -> L82
        L7f:
            int r1 = aoc.kingdoms.lukasz.jakowski.Game_Calendar.UPDATE_NUM_OF_DAYS_INT     // Catch: java.lang.Exception -> L82
            goto L5f
        L82:
            r0 = move-exception
            aoc.kingdoms.lukasz.jakowski.CFG.exceptionStack(r0)
        L86:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: aoc.kingdoms.lukasz.jakowski.GameThreads.GameThread.updateLegacy_2():void");
    }

    public final void updateLoans() {
        try {
            Iterator<Integer> it = this.civsUpdateLoans.iterator();
            while (it.hasNext()) {
                Game.getCiv(it.next().intValue()).updateLoans();
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateManpower() {
        for (int i = 1; i < Game.getCivsSize(); i++) {
            try {
                if (Game.getCiv(i).getNumOfProvinces() > 0) {
                    Game.getCiv(i).setManpower(Game.getCiv(i).fManpower + (Game.getCiv(i).fManpowerPerMonth / ((double) Game_Calendar.UPDATE_NUM_OF_DAYS)));
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0075 A[Catch: Exception -> 0x0096, TryCatch #0 {Exception -> 0x0096, blocks: (B:8:0x0037, B:9:0x003e, B:11:0x0044, B:13:0x004e, B:14:0x0062, B:15:0x0066, B:17:0x006c, B:18:0x006e, B:19:0x006f, B:21:0x0075, B:23:0x007f, B:24:0x0093), top: B:29:0x0037 }] */
    /* JADX WARN: Code duplicated, block: B:23:0x007f A[Catch: Exception -> 0x0096, TryCatch #0 {Exception -> 0x0096, blocks: (B:8:0x0037, B:9:0x003e, B:11:0x0044, B:13:0x004e, B:14:0x0062, B:15:0x0066, B:17:0x006c, B:18:0x006e, B:19:0x006f, B:21:0x0075, B:23:0x007f, B:24:0x0093), top: B:29:0x0037 }] */
    /* JADX WARN: Code duplicated, block: B:24:0x0093 A[Catch: Exception -> 0x0096, TRY_LEAVE, TryCatch #0 {Exception -> 0x0096, blocks: (B:8:0x0037, B:9:0x003e, B:11:0x0044, B:13:0x004e, B:14:0x0062, B:15:0x0066, B:17:0x006c, B:18:0x006e, B:19:0x006f, B:21:0x0075, B:23:0x007f, B:24:0x0093), top: B:29:0x0037 }] */
    /* JADX WARN: Code duplicated, block: B:37:? A[RETURN, SYNTHETIC] */
    /*  JADX ERROR: StackOverflowError in pass: RegionMakerVisitor
        java.lang.StackOverflowError
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:731)
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:749)
        */
    public final void updateManpower_2() {
        /*
            r7 = this;
            aoc.kingdoms.lukasz.jakowski.Player.Player r0 = aoc.kingdoms.lukasz.jakowski.Game.player     // Catch: java.lang.Exception -> L33
            int r0 = r0.iCivID     // Catch: java.lang.Exception -> L33
            aoc.kingdoms.lukasz.map.civilization.Civilization r0 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> L33
            int r0 = r0.getNumOfProvinces()     // Catch: java.lang.Exception -> L33
            if (r0 <= 0) goto L37
            aoc.kingdoms.lukasz.jakowski.Player.Player r0 = aoc.kingdoms.lukasz.jakowski.Game.player     // Catch: java.lang.Exception -> L33
            int r0 = r0.iCivID     // Catch: java.lang.Exception -> L33
            aoc.kingdoms.lukasz.map.civilization.Civilization r0 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> L33
            aoc.kingdoms.lukasz.jakowski.Player.Player r1 = aoc.kingdoms.lukasz.jakowski.Game.player     // Catch: java.lang.Exception -> L33
            int r1 = r1.iCivID     // Catch: java.lang.Exception -> L33
            aoc.kingdoms.lukasz.map.civilization.Civilization r1 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r1)     // Catch: java.lang.Exception -> L33
            double r1 = r1.fManpower     // Catch: java.lang.Exception -> L33
            aoc.kingdoms.lukasz.jakowski.Player.Player r3 = aoc.kingdoms.lukasz.jakowski.Game.player     // Catch: java.lang.Exception -> L33
            int r3 = r3.iCivID     // Catch: java.lang.Exception -> L33
            aoc.kingdoms.lukasz.map.civilization.Civilization r3 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r3)     // Catch: java.lang.Exception -> L33
            double r3 = r3.fManpowerPerMonth     // Catch: java.lang.Exception -> L33
            float r5 = aoc.kingdoms.lukasz.jakowski.Game_Calendar.UPDATE_NUM_OF_DAYS     // Catch: java.lang.Exception -> L33
            double r5 = (double) r5     // Catch: java.lang.Exception -> L33
            double r3 = r3 / r5
            double r1 = r1 + r3
            r0.setManpower(r1)     // Catch: java.lang.Exception -> L33
            goto L37
        L33:
            r0 = move-exception
            aoc.kingdoms.lukasz.jakowski.CFG.exceptionStack(r0)
        L37:
            int r0 = aoc.kingdoms.lukasz.jakowski.Game_Calendar.TURN_ID     // Catch: java.lang.Exception -> L96
            int r1 = aoc.kingdoms.lukasz.jakowski.Game_Calendar.UPDATE_NUM_OF_DAYS_INT     // Catch: java.lang.Exception -> L96
            int r0 = r0 % r1
            int r0 = r0 + 1
        L3e:
            aoc.kingdoms.lukasz.jakowski.Player.Player r1 = aoc.kingdoms.lukasz.jakowski.Game.player     // Catch: java.lang.Exception -> L96
            int r1 = r1.iCivID     // Catch: java.lang.Exception -> L96
            if (r0 >= r1) goto L66
            aoc.kingdoms.lukasz.map.civilization.Civilization r1 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> L96
            int r1 = r1.getNumOfProvinces()     // Catch: java.lang.Exception -> L96
            if (r1 <= 0) goto L62
            aoc.kingdoms.lukasz.map.civilization.Civilization r1 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> L96
            aoc.kingdoms.lukasz.map.civilization.Civilization r2 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> L96
            double r2 = r2.fManpower     // Catch: java.lang.Exception -> L96
            aoc.kingdoms.lukasz.map.civilization.Civilization r4 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> L96
            double r4 = r4.fManpowerPerMonth     // Catch: java.lang.Exception -> L96
            double r2 = r2 + r4
            r1.setManpower(r2)     // Catch: java.lang.Exception -> L96
        L62:
            int r1 = aoc.kingdoms.lukasz.jakowski.Game_Calendar.UPDATE_NUM_OF_DAYS_INT     // Catch: java.lang.Exception -> L96
            int r0 = r0 + r1
            goto L3e
        L66:
            aoc.kingdoms.lukasz.jakowski.Player.Player r1 = aoc.kingdoms.lukasz.jakowski.Game.player     // Catch: java.lang.Exception -> L96
            int r1 = r1.iCivID     // Catch: java.lang.Exception -> L96
            if (r0 != r1) goto L6f
            int r1 = aoc.kingdoms.lukasz.jakowski.Game_Calendar.UPDATE_NUM_OF_DAYS_INT     // Catch: java.lang.Exception -> L96
        L6e:
            int r0 = r0 + r1
        L6f:
            int r1 = aoc.kingdoms.lukasz.jakowski.Game.getCivsSize()     // Catch: java.lang.Exception -> L96
            if (r0 >= r1) goto L9a
            aoc.kingdoms.lukasz.map.civilization.Civilization r1 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> L96
            int r1 = r1.getNumOfProvinces()     // Catch: java.lang.Exception -> L96
            if (r1 <= 0) goto L93
            aoc.kingdoms.lukasz.map.civilization.Civilization r1 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> L96
            aoc.kingdoms.lukasz.map.civilization.Civilization r2 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> L96
            double r2 = r2.fManpower     // Catch: java.lang.Exception -> L96
            aoc.kingdoms.lukasz.map.civilization.Civilization r4 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> L96
            double r4 = r4.fManpowerPerMonth     // Catch: java.lang.Exception -> L96
            double r2 = r2 + r4
            r1.setManpower(r2)     // Catch: java.lang.Exception -> L96
        L93:
            int r1 = aoc.kingdoms.lukasz.jakowski.Game_Calendar.UPDATE_NUM_OF_DAYS_INT     // Catch: java.lang.Exception -> L96
            goto L6e
        L96:
            r0 = move-exception
            aoc.kingdoms.lukasz.jakowski.CFG.exceptionStack(r0)
        L9a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: aoc.kingdoms.lukasz.jakowski.GameThreads.GameThread.updateManpower_2():void");
    }

    public void updateMinimap() {
        if (Game_Calendar.TURN_ID % GameValues.gameUpdate.GAME_UPDATE_MINIMAP == 0) {
            Game.mapBG.requestToDisposeMinimap = true;
        }
    }

    public final void updateNewMonth() {
        if (Game_Calendar.TURN_ID % 31 == 0) {
            try {
                WarManager.updateWars_TickingWarScore();
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
            Game.gameThreadUpdate.addSimpleTask(new AnonymousClass1("buildCivilizationRanking"));
            Game.player.playerStats2.updateData();
            Game.player.playerStats3.updateData();
        }
    }

    public final void updateNewYear() {
        if (Game_Calendar.TURN_ID % Game_Calendar.NUM_OF_DAYS == 0) {
            Game.gameThreadUpdate.addSimpleTask(new AnonymousClass2("buildProsperity_AverageEconomy"));
            Game.gameThreadUpdate.addSimpleTask(new AnonymousClass3("updateWorldResourcesProduced_NewYear"));
        }
    }

    public final void updatePopulation() {
        try {
            for (int i = Game_Calendar.TURN_ID % GameValues.gameUpdate.GAME_UPDATE_POPULATION_STEPS; i < Game.getProvincesSize(); i += GameValues.gameUpdate.GAME_UPDATE_POPULATION_STEPS) {
                if (Game.getProvince(i).getCivID() > 0) {
                    Game.getProvince(i).updatePopulationGrowth();
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateRecruitArmy() {
        for (int i = 1; i < Game.getCivsSize(); i++) {
            try {
                for (int armyRecruitSize = Game.getCiv(i).getArmyRecruitSize() - 1; armyRecruitSize >= 0; armyRecruitSize--) {
                    Game.getCiv(i).updateRecruitArmy(armyRecruitSize, 0);
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
    }

    public final void updateResearch() {
        for (int i = 1; i < Game.getCivsSize(); i++) {
            try {
                if (Game.getCiv(i).getNumOfProvinces() > 0) {
                    if (Game.getCiv(i).getActiveTechResearch() >= 0) {
                        Game.getCiv(i).addResearchProgress(Game.getCiv(i).getActiveTechResearch(), Game.getCiv(i).fResearchPerMonth / Game_Calendar.UPDATE_NUM_OF_DAYS);
                    } else {
                        AI_SelectTechnology.selectTechnology(i);
                        if (Game.getCiv(i).getActiveTechResearch() >= 0) {
                            Game.getCiv(i).addResearchProgress(Game.getCiv(i).getActiveTechResearch(), Game.getCiv(i).fResearchPerMonth / Game_Calendar.UPDATE_NUM_OF_DAYS);
                        } else {
                            try {
                                if (Game.getCiv(i).getAlternativeTechResearch() >= 0) {
                                    Game.getCiv(i).addResearchProgress(Game.getCiv(i).getAlternativeTechResearch(), Game.getCiv(i).fResearchPerMonth / Game_Calendar.UPDATE_NUM_OF_DAYS);
                                } else {
                                    for (int i2 = 0; i2 < TechnologyTree.iTechnologySize; i2++) {
                                        if (Game.getCiv(i).getAvailableToResearch(i2)) {
                                            Game.getCiv(i).setAlternativeTechResearch(i2);
                                            Game.getCiv(i).addResearchProgress(Game.getCiv(i).getAlternativeTechResearch(), Game.getCiv(i).fResearchPerMonth / Game_Calendar.UPDATE_NUM_OF_DAYS);
                                            break;
                                        }
                                    }
                                }
                            } catch (Exception e) {
                                CFG.exceptionStack(e);
                            }
                        }
                    }
                }
            } catch (Exception e2) {
                CFG.exceptionStack(e2);
                return;
            }
        }
    }

    public final void updateResearchPerMonth() {
        try {
            for (int size = this.civsUpdateResearchPerMonth.size() - 1; size >= 0; size--) {
                Game.getCiv(this.civsUpdateResearchPerMonth.remove().intValue()).updateResearchPerMonth();
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateSieges() {
        try {
            SiegeManager.updateSieges();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateSpeed(int i) {
        Game.gameThread.playSpeed = Math.max(1, Math.min(Game.gameThread.playMaxSpeed, i));
        ButtonTopDate.ANIMATION_TIME = CFG.currentTimeMillis;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Speed") + ": ", CFG.FONT_BOLD_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.gameThread.playSpeed + "/" + Game.gameThread.playMaxSpeed, CFG.FONT_REGULAR_SMALL, Colors.HOVER_IMPORTANT));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        Game.menuManager.addToast(new Toast(arrayList, 0, 1000, CFG.GAME_WIDTH, ImageManager.getImage(Images.topStats).getHeight() + (CFG.PADDING * 2)));
    }

    public final void updateSpeedMinus() {
        Game.gameThread.playSpeed--;
        if (Game.gameThread.playSpeed < 1) {
            Game.gameThread.playSpeed = 1;
        }
        ButtonTopDate.ANIMATION_TIME = CFG.currentTimeMillis;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Speed") + ": ", CFG.FONT_BOLD_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.gameThread.playSpeed + "/" + Game.gameThread.playMaxSpeed, CFG.FONT_REGULAR_SMALL, Colors.HOVER_IMPORTANT));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        Game.menuManager.addToast(new Toast(arrayList, 0, 1000, CFG.GAME_WIDTH, (CFG.PADDING * 2) + ImageManager.getImage(Images.topStats).getHeight()));
    }

    public final void updateSpeedPlus() {
        Game.gameThread.playSpeed++;
        if (Game.gameThread.playSpeed > Game.gameThread.playMaxSpeed) {
            Game.gameThread.playSpeed = Game.gameThread.playMaxSpeed;
        }
        ButtonTopDate.ANIMATION_TIME = CFG.currentTimeMillis;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Speed") + ": ", CFG.FONT_BOLD_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.gameThread.playSpeed + "/" + Game.gameThread.playMaxSpeed, CFG.FONT_REGULAR_SMALL, Colors.HOVER_IMPORTANT));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        Game.menuManager.addToast(new Toast(arrayList, 0, 1000, CFG.GAME_WIDTH, (CFG.PADDING * 2) + ImageManager.getImage(Images.topStats).getHeight()));
    }

    public final void updateTotalIncomePerMonth() {
        try {
            for (int size = this.civsUpdateTotalIncomePerMonth.size() - 1; size >= 0; size--) {
                int iIntValue = this.civsUpdateTotalIncomePerMonth.remove().intValue();
                Game.getCiv(iIntValue).updateProvincesIncomeAndExpenses();
                Game.getCiv(iIntValue).updateTotalIncomePerMonth();
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateWarWeariness() {
        try {
            for (int i = Game_Calendar.TURN_ID % GameValues.warWeariness.GAME_UPDATE_WAR_WEARINESS_TICK_TURNS; i < Game.getCivsSize(); i += GameValues.warWeariness.GAME_UPDATE_WAR_WEARINESS_TICK_TURNS) {
                if (Game.getCiv(i).getNumOfProvinces() > 0) {
                    if (Game.getCiv(i).diplomacy.isAtWar()) {
                        boolean z = true;
                        int i2 = Game.getCiv(i).diplomacy.iWarsSize - 1;
                        while (true) {
                            if (i2 < 0) {
                                z = false;
                                break;
                            } else if (WarManager.lWars.containsKey(Game.getCiv(i).diplomacy.lWars.get(i2)) && WarManager.lWars.get(Game.getCiv(i).diplomacy.lWars.get(i2)).isAggressor(i)) {
                                break;
                            } else {
                                i2--;
                            }
                        }
                        if (z) {
                            Game.getCiv(i).updateWarWeariness(GameValues.warWeariness.WAR_WEARINESS_PER_TICK_AT_WAR);
                        } else {
                            Game.getCiv(i).updateWarWeariness(GameValues.warWeariness.WAR_WEARINESS_PER_TICK_AT_WAR_DEFENDER);
                        }
                    } else {
                        Game.getCiv(i).updateWarWeariness(GameValues.warWeariness.WAR_WEARINESS_PER_TICK_AT_PEACE);
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateWars_Peace() {
        try {
            if (Game_Calendar.TURN_ID % GameValues.war.GAME_UPDATE_WAR_AI_PEACE == 0) {
                WarManager.updateWars_Peace();
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateWars_WhitePeace() {
        try {
            if (Game_Calendar.TURN_ID % GameValues.war.GAME_UPDATE_WAR_AUTO_WHITE_PEACE == 0) {
                WarManager.updateWars_WhitePeace();
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
