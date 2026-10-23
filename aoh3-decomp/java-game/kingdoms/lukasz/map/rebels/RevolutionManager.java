package aoc.kingdoms.lukasz.map.rebels;

import aoc.kingdoms.lukasz.jakowski.AI.Army.AI_Army_Composition;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Player.Notification.Notification;
import aoc.kingdoms.lukasz.map.RulersManager;
import aoc.kingdoms.lukasz.map.army.ArmyDivision;
import aoc.kingdoms.lukasz.map.army.ArmyPosition;
import aoc.kingdoms.lukasz.map.army.ArmyRegiment;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.technology.TechnologyTree;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.textures.Images;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class RevolutionManager {
    public List<ArmyPosition> armyPosition = new ArrayList();
    public int iArmyPositionSize = 0;
    public List<OccupiedProvince> occupiedProvinces = new ArrayList();

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.rebels.RevolutionManager$1, reason: invalid class name */
    class AnonymousClass1 extends Notification {
        AnonymousClass1(Notification.Notification_Type notification_Type, String str, int i, int i2, Notification.Notification_BG notification_BG) {
            super(notification_Type, str, i, i2, notification_BG);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Player.Notification.Notification
        public void onAction() {
            Game.mapCoords.centerToProvinceID(this.id);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.rebels.RevolutionManager$2, reason: invalid class name */
    class AnonymousClass2 extends Notification {
        AnonymousClass2(Notification.Notification_Type notification_Type, String str, int i, int i2, Notification.Notification_BG notification_BG, int i3) {
            super(notification_Type, str, i, i2, notification_BG, i3);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Player.Notification.Notification
        public void onAction() {
            Game.mapCoords.centerToProvinceID(this.id);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.rebels.RevolutionManager$3, reason: invalid class name */
    class AnonymousClass3 extends Game.SimpleTask {
        AnonymousClass3(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            RulersManager.loadRuler(this.id, Game.getCiv(this.id).getCivTag(), true);
        }
    }

    public final void addArmyPosition(int i, String str) {
        try {
            for (int i2 = this.iArmyPositionSize - 1; i2 >= 0; i2--) {
                if (this.armyPosition.get(i2).provinceID == i && this.armyPosition.get(i2).key.equals(str)) {
                    return;
                }
            }
            this.armyPosition.add(new ArmyPosition(i, str));
            this.iArmyPositionSize = this.armyPosition.size();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public boolean addCiv(String str, List<Integer> list, int i) {
        Game.addCivilization(str, list.get(0).intValue(), true, true, true, true, true);
        int civsSize = Game.getCivsSize() - 1;
        while (true) {
            if (civsSize <= 0) {
                civsSize = -1;
                break;
            }
            if (Game.getCiv(civsSize).getCivTag().equals(str)) {
                break;
            }
            civsSize--;
        }
        if (civsSize <= 0) {
            return false;
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            Game.getProvince(list.get(size).intValue()).setRevulutionaryRisk(0.0f);
            Game.getProvince(list.get(size).intValue()).setOccupiedByCivID(0);
            Game.getProvince(list.get(size).intValue()).resetSiegeData();
            Game.getProvince(list.get(size).intValue()).setCivID(civsSize);
            Game.getProvince(list.get(size).intValue()).addCore(civsSize);
            Game.getProvince(list.get(size).intValue()).setReligion(Game.getCiv(civsSize).getReligionID());
            removeOccupiedProvince(list.get(size).intValue());
            try {
                for (int armySize = Game.getProvince(list.get(size).intValue()).getArmySize() - 1; armySize >= 0; armySize--) {
                    if (Game.getProvince(list.get(size).intValue()).getArmy(armySize).civID < 0) {
                        Game.revolutionMoveUnits.removeMove(Game.getProvince(list.get(size).intValue()).getArmy(armySize).key);
                        removeArmyPosition(list.get(size).intValue(), Game.getProvince(list.get(size).intValue()).getArmy(armySize).key);
                        Game.getProvince(list.get(size).intValue()).removeArmy(Game.getProvince(list.get(size).intValue()).getArmy(armySize).key);
                    }
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        Game.getCiv(civsSize).moveCapital_ToLargestProvince();
        Game.gameThread.addCivUpdateTotalIncomePerMonth(civsSize);
        Game.gameThread.addCivUpdateLegacyPerMonth(civsSize);
        Game.gameThread.addCivUpdateResearchPerMonth(civsSize);
        Game.gameThread.addCivUpdateArmyMaintenance(civsSize);
        Game.getCiv(civsSize).updateManpowerPerMonth();
        Game.getCiv(civsSize).updateDiplomacyPerMonth();
        Game.getCiv(civsSize).setManpower(Math.max(Game.getCiv(civsSize).fManpower, Game.getCiv(civsSize).fManpowerMax));
        Game.getCiv(civsSize).fGold = Math.max(Game.getCiv(civsSize).fGold, GameValues.rebels.INDEPENDENCE_GOLD + (GameValues.rebels.INDEPENDENCE_GOLD_RANDOM > 0 ? Game.oR.nextInt(GameValues.rebels.INDEPENDENCE_GOLD_RANDOM) : 0));
        Game.getCiv(civsSize).fLegacy = Math.max(Game.getCiv(civsSize).fLegacy, GameValues.rebels.INDEPENDENCE_LEGACY + (GameValues.rebels.INDEPENDENCE_LEGACY_RANDOM > 0 ? Game.oR.nextInt(GameValues.rebels.INDEPENDENCE_LEGACY_RANDOM) : 0));
        Game.getCiv(civsSize).fDiplomacy = Game.getCiv(civsSize).fDiplomacyMax;
        for (int i2 = 0; i2 < TechnologyTree.iTechnologySize; i2++) {
            if (Game.getCiv(i).getTechResearched(i2)) {
                Game.getCiv(civsSize).addTechnology(i2, false);
            }
        }
        DiplomacyManager.addTruce(i, civsSize);
        sentNotification(i, civsSize);
        if (Game.getCiv(civsSize).updateArmyRegimentSize() <= 0) {
            Game.mapScenarios.buildStartingArmy(civsSize);
            Game.getCiv(civsSize).setAdvantagePoints(Math.min(Game.getCiv(civsSize).getAdvantagePoints(), GameValues.rebels.INDEPENDENCE_MAX_ADVANTAGE_POINTS));
        }
        Game.getCiv(civsSize).updateProvinceBorder();
        Game.revolutionMoveUnits.removeAllRebelsArmiesMovingToCiv(civsSize);
        Game.addSimpleTask(new AnonymousClass3("LOAD_RULER" + civsSize, civsSize));
        return true;
    }

    public void addOccupiedProvince(int i) {
        for (int size = this.occupiedProvinces.size() - 1; size >= 0; size--) {
            if (this.occupiedProvinces.get(size).p == i) {
                return;
            }
        }
        this.occupiedProvinces.add(new OccupiedProvince(i, Game_Calendar.TURN_ID));
    }

    public void clearData() {
        this.occupiedProvinces.clear();
        this.armyPosition.clear();
        this.iArmyPositionSize = 0;
        Game.revolutionMoveUnits.clearData();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v132 */
    /* JADX WARN: Type inference failed for: r0v51 */
    /* JADX WARN: Type inference failed for: r0v52, types: [int] */
    /* JADX WARN: Type inference failed for: r0v70, types: [aoc.kingdoms.lukasz.map.province.Province] */
    /* JADX WARN: Type inference failed for: r10v106 */
    /* JADX WARN: Type inference failed for: r10v107 */
    /* JADX WARN: Type inference failed for: r10v18 */
    /* JADX WARN: Type inference failed for: r10v19, types: [int] */
    /* JADX WARN: Type inference failed for: r10v29 */
    /* JADX WARN: Type inference failed for: r10v30, types: [int] */
    /* JADX WARN: Type inference failed for: r10v49, types: [aoc.kingdoms.lukasz.map.province.Province] */
    /* JADX WARN: Type inference failed for: r10v54, types: [aoc.kingdoms.lukasz.map.province.Province] */
    /* JADX WARN: Type inference failed for: r10v61, types: [aoc.kingdoms.lukasz.map.province.Province] */
    /* JADX WARN: Type inference failed for: r10v68, types: [aoc.kingdoms.lukasz.map.province.Province] */
    /* JADX WARN: Type inference failed for: r10v74, types: [aoc.kingdoms.lukasz.map.province.Province] */
    /* JADX WARN: Type inference failed for: r10v81, types: [aoc.kingdoms.lukasz.map.province.Province] */
    /* JADX WARN: Type inference failed for: r10v83, types: [aoc.kingdoms.lukasz.map.province.Province] */
    /* JADX WARN: Type inference failed for: r10v90, types: [aoc.kingdoms.lukasz.map.province.Province] */
    /* JADX WARN: Type inference failed for: r10v92, types: [aoc.kingdoms.lukasz.map.province.Province] */
    /* JADX WARN: Type inference failed for: r11v28, types: [aoc.kingdoms.lukasz.map.IdeologiesManager] */
    /* JADX WARN: Type inference failed for: r11v31, types: [aoc.kingdoms.lukasz.map.IdeologiesManager] */
    /* JADX WARN: Type inference failed for: r11v34, types: [aoc.kingdoms.lukasz.map.IdeologiesManager] */
    /* JADX WARN: Type inference failed for: r11v40, types: [aoc.kingdoms.lukasz.map.IdeologiesManager] */
    /* JADX WARN: Type inference failed for: r11v43, types: [aoc.kingdoms.lukasz.map.IdeologiesManager] */
    /* JADX WARN: Type inference failed for: r11v46, types: [aoc.kingdoms.lukasz.map.IdeologiesManager] */
    /* JADX WARN: Type inference failed for: r11v49, types: [aoc.kingdoms.lukasz.map.IdeologiesManager] */
    /* JADX WARN: Type inference failed for: r12v7, types: [aoc.kingdoms.lukasz.map.IdeologiesManager] */
    /* JADX WARN: Type inference failed for: r2v14, types: [aoc.kingdoms.lukasz.map.civilization.Civilization] */
    /* JADX WARN: Type inference failed for: r2v16, types: [aoc.kingdoms.lukasz.map.civilization.Civilization] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v16, types: [int] */
    /* JADX WARN: Type inference failed for: r6v20, types: [int] */
    /* JADX WARN: Type inference failed for: r6v26 */
    /* JADX WARN: Type inference failed for: r6v27 */
    /* JADX WARN: Type inference failed for: r6v28 */
    /* JADX WARN: Type inference failed for: r6v29 */
    /* JADX WARN: Type inference failed for: r6v32 */
    /* JADX WARN: Type inference failed for: r6v33 */
    /* JADX WARN: Type inference failed for: r6v34 */
    /* JADX WARN: Type inference failed for: r6v35 */
    /* JADX WARN: Type inference failed for: r6v36 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Type inference failed for: r8v49 */
    /* JADX WARN: Type inference failed for: r8v50, types: [int] */
    /* JADX WARN: Type inference failed for: r8v51 */
    /* JADX WARN: Type inference failed for: r8v52 */
    /* JADX WARN: Type inference failed for: r8v53 */
    /* JADX WARN: Type inference failed for: r8v55 */
    /* JADX WARN: Type inference failed for: r8v56, types: [int] */
    /* JADX WARN: Type inference failed for: r8v63 */
    /* JADX WARN: Type inference failed for: r8v64 */
    /* JADX WARN: Type inference failed for: r9v10, types: [int] */
    /* JADX WARN: Type inference failed for: r9v108 */
    /* JADX WARN: Type inference failed for: r9v109 */
    /* JADX WARN: Type inference failed for: r9v110 */
    /* JADX WARN: Type inference failed for: r9v111 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v16, types: [int] */
    /* JADX WARN: Type inference failed for: r9v26, types: [aoc.kingdoms.lukasz.map.province.Province] */
    /* JADX WARN: Type inference failed for: r9v33, types: [aoc.kingdoms.lukasz.map.province.Province] */
    /* JADX WARN: Type inference failed for: r9v45, types: [aoc.kingdoms.lukasz.map.province.Province] */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v52, types: [aoc.kingdoms.lukasz.map.province.Province] */
    /* JADX WARN: Type inference failed for: r9v59, types: [aoc.kingdoms.lukasz.map.province.Province] */
    /* JADX WARN: Type inference failed for: r9v6, types: [int] */
    /* JADX WARN: Type inference failed for: r9v63 */
    /* JADX WARN: Type inference failed for: r9v64, types: [int] */
    /* JADX WARN: Type inference failed for: r9v65 */
    /* JADX WARN: Type inference failed for: r9v66 */
    /* JADX WARN: Type inference failed for: r9v70, types: [aoc.kingdoms.lukasz.map.province.Province] */
    /* JADX WARN: Type inference failed for: r9v74 */
    /* JADX WARN: Type inference failed for: r9v9 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void declareIndependence() {
        ?? r3;
        ?? r6;
        boolean z;
        ?? r8;
        ?? r9;
        if (Game_Calendar.TURN_ID % GameValues.gameUpdate.GAME_UPDATE_REBELS_INDEPENDENCE_STEPS != 0) {
            return;
        }
        int size = this.occupiedProvinces.size() - 1;
        while (true) {
            r3 = 0;
            if (size < 0) {
                break;
            }
            if (!Game.getProvince(this.occupiedProvinces.get(size).p).isOccupied() || Game.getProvinceData(this.occupiedProvinces.get(size).p).getOccupiedByCivID() > 0) {
                this.occupiedProvinces.remove(size);
            } else {
                Game.getProvince(this.occupiedProvinces.get(size).p).aiRebelsIndependenceChecked = false;
            }
            size--;
        }
        int size2 = this.occupiedProvinces.size() - 1;
        while (size2 >= 0) {
            if (Game_Calendar.TURN_ID - this.occupiedProvinces.get(size2).sinceTurnID <= GameValues.rebels.DECLARE_INDEPENDENCE_AFTER_X_DAYS || Game.getProvince(this.occupiedProvinces.get(size2).p).aiRebelsIndependenceChecked) {
                r6 = r3;
            } else {
                ArrayList arrayList = new ArrayList();
                int i = this.occupiedProvinces.get(size2).p;
                Game.getProvince(this.occupiedProvinces.get(size2).p).aiRebelsIndependenceChecked = true;
                ?? r7 = Game_Calendar.TURN_ID - this.occupiedProvinces.get(size2).sinceTurnID > GameValues.rebels.DISBAND_REBELS_ARMIES_AFTER_X_DAYS ? 1 : r3;
                int civID = Game.getProvince(this.occupiedProvinces.get(size2).p).getCivID();
                arrayList.add(Integer.valueOf(i));
                int i2 = size2 - 1;
                ?? r10 = r7;
                while (i2 >= 0) {
                    if (size2 != i2 && Game.getProvince(this.occupiedProvinces.get(i2).p).getCivID() == Game.getProvince(i).getCivID() && Game_Calendar.TURN_ID - this.occupiedProvinces.get(i2).sinceTurnID >= GameValues.rebels.DECLARE_INDEPENDENCE_MIN_OCCUPIED_DAYS) {
                        arrayList.add(Integer.valueOf(this.occupiedProvinces.get(i2).p));
                        Game.getProvince(this.occupiedProvinces.get(i2).p).aiRebelsIndependenceChecked = true;
                        r10 = (r10 != 0 || Game_Calendar.TURN_ID - this.occupiedProvinces.get(i2).sinceTurnID > GameValues.rebels.DISBAND_REBELS_ARMIES_AFTER_X_DAYS) ? 1 : r3;
                    }
                    i2--;
                    r10 = r10;
                }
                if (Game.getProvince(i).getCivRegionID() >= 0) {
                    for (int size3 = arrayList.size() - 1; size3 >= 0; size3--) {
                        if (Game.getProvince(arrayList.get(size3).intValue()).getCivRegionID() != Game.getProvince(i).getCivRegionID()) {
                            Game.getProvince(arrayList.get(size3).intValue()).aiRebelsIndependenceChecked = r3;
                            arrayList.remove(size3);
                        }
                    }
                }
                for (int size4 = arrayList.size() - 1; size4 >= 0; size4--) {
                    for (?? r11 = r3; r11 < Game.getProvince(arrayList.get(size4).intValue()).getNeighboringProvincesSize(); r11++) {
                        if (!arrayList.contains(Integer.valueOf(Game.getProvince(arrayList.get(size4).intValue()).getNeighboringProvinces(r11))) && !Game.getProvince(Game.getProvince(arrayList.get(size4).intValue()).getNeighboringProvinces(r11)).isCapital && Game.getProvince(Game.getProvince(arrayList.get(size4).intValue()).getNeighboringProvinces(r11)).getCivID() == civID) {
                            ?? r12 = r3;
                            while (true) {
                                if (r12 >= Game.getProvince(Game.getProvince(arrayList.get(size4).intValue()).getNeighboringProvinces(r11)).getNeighboringProvincesSize()) {
                                    r9 = 1;
                                    break;
                                } else {
                                    if (Game.getProvince(Game.getProvince(Game.getProvince(arrayList.get(size4).intValue()).getNeighboringProvinces(r11)).getNeighboringProvinces(r12)).getCivID() == civID && !arrayList.contains(Integer.valueOf(Game.getProvince(Game.getProvince(arrayList.get(size4).intValue()).getNeighboringProvinces(r11)).getNeighboringProvinces(r12)))) {
                                        r9 = r3;
                                        break;
                                    }
                                    r12++;
                                }
                            }
                            if (r9 != 0) {
                                arrayList.add(Integer.valueOf(Game.getProvince(arrayList.get(size4).intValue()).getNeighboringProvinces(r11)));
                            }
                        }
                    }
                }
                for (int size5 = arrayList.size() - 1; size5 > 0; size5--) {
                    if (Game.getProvince(arrayList.get(size5).intValue()).getNeighboringProvincesSize() > 0) {
                        ?? r13 = r3;
                        while (true) {
                            if (r13 >= Game.getProvince(arrayList.get(size5).intValue()).getNeighboringProvincesSize()) {
                                r8 = 1;
                                break;
                            } else {
                                if (arrayList.contains(Integer.valueOf(Game.getProvince(arrayList.get(size5).intValue()).getNeighboringProvinces(r13))) || Game.getProvince(Game.getProvince(arrayList.get(size5).intValue()).getNeighboringProvinces(r13)).getCivID() == 0) {
                                    r8 = r3;
                                    break;
                                }
                                r13++;
                            }
                        }
                        if (r8 != 0) {
                            arrayList.remove(size5);
                        }
                    }
                }
                ArrayList arrayList2 = new ArrayList();
                for (int size6 = arrayList.size() - 1; size6 >= 0; size6--) {
                    for (?? r14 = r3; r14 < Game.getProvince(arrayList.get(size6).intValue()).iCoresSize; r14++) {
                        if (Game.getProvince(arrayList.get(size6).intValue()).getCore(r14) > 0 && Game.getCiv(Game.getProvince(arrayList.get(size6).intValue()).getCore(r14)).getNumOfProvinces() <= 0 && !arrayList2.contains(Integer.valueOf(Game.getProvince(arrayList.get(size6).intValue()).getCore(r14)))) {
                            arrayList2.add(Integer.valueOf(Game.getProvince(arrayList.get(size6).intValue()).getCore(r14)));
                        }
                    }
                }
                if (arrayList2.size() > 0) {
                    int iIntValue = ((Integer) arrayList2.get(Game.oR.nextInt(arrayList2.size()))).intValue();
                    for (int size7 = arrayList.size() - 1; size7 >= 0; size7--) {
                        Game.getProvince(arrayList.get(size7).intValue()).setRevulutionaryRisk(0.0f);
                        Game.getProvince(arrayList.get(size7).intValue()).setOccupiedByCivID(r3);
                        Game.getProvince(arrayList.get(size7).intValue()).setCivID(iIntValue);
                        Game.getProvince(arrayList.get(size7).intValue()).addCore(iIntValue);
                        Game.getProvince(arrayList.get(size7).intValue()).resetSiegeData();
                        removeOccupiedProvince(arrayList.get(size7).intValue());
                        try {
                            int armySize = Game.getProvince(arrayList.get(size7).intValue()).getArmySize() - 1;
                            while (armySize >= 0) {
                                if (Game.getProvince(arrayList.get(size7).intValue()).getArmy(armySize).civID < 0) {
                                    Game.revolutionMoveUnits.removeMove(Game.getProvince(arrayList.get(size7).intValue()).getArmy(armySize).key);
                                    removeArmyPosition(arrayList.get(size7).intValue(), Game.getProvince(arrayList.get(size7).intValue()).getArmy(armySize).key);
                                    Game.getProvince(arrayList.get(size7).intValue()).removeArmy(Game.getProvince(arrayList.get(size7).intValue()).getArmy(armySize).key);
                                    armySize--;
                                }
                                armySize--;
                            }
                        } catch (Exception e) {
                            CFG.exceptionStack(e);
                        }
                    }
                    if (Game.getCiv(iIntValue).getCapitalProvinceID() < 0 || Game.getProvince(Game.getCiv(iIntValue).getCapitalProvinceID()).getCivID() != iIntValue) {
                        Game.getCiv(iIntValue).moveCapital_ToLargestProvince();
                    } else {
                        Game.getProvince(Game.getCiv(iIntValue).getCapitalProvinceID()).setIsCapital(true);
                    }
                    Game.getCiv(iIntValue).setPuppetOfCivID(iIntValue);
                    Game.gameThread.addCivUpdateTotalIncomePerMonth(iIntValue);
                    Game.gameThread.addCivUpdateLegacyPerMonth(iIntValue);
                    Game.gameThread.addCivUpdateResearchPerMonth(iIntValue);
                    Game.gameThread.addCivUpdateArmyMaintenance(iIntValue);
                    Game.getCiv(iIntValue).updateManpowerPerMonth();
                    Game.getCiv(iIntValue).updateDiplomacyPerMonth();
                    Game.getCiv(iIntValue).setManpower(Math.max(Game.getCiv(iIntValue).fManpower, Game.getCiv(iIntValue).fManpowerMax));
                    Game.getCiv(iIntValue).fGold = Math.max(Game.getCiv(iIntValue).fGold, (float) (GameValues.rebels.INDEPENDENCE_GOLD + (GameValues.rebels.INDEPENDENCE_GOLD_RANDOM > 0 ? Game.oR.nextInt(GameValues.rebels.INDEPENDENCE_GOLD_RANDOM) : r3)));
                    Game.getCiv(iIntValue).fLegacy = Math.max(Game.getCiv(iIntValue).fLegacy, (float) (GameValues.rebels.INDEPENDENCE_LEGACY + (GameValues.rebels.INDEPENDENCE_LEGACY_RANDOM > 0 ? Game.oR.nextInt(GameValues.rebels.INDEPENDENCE_LEGACY_RANDOM) : r3)));
                    Game.getCiv(iIntValue).fDiplomacy = Game.getCiv(iIntValue).fDiplomacyMax;
                    for (?? r0 = r3; r0 < TechnologyTree.iTechnologySize; r0++) {
                        if (Game.getCiv(civID).getTechResearched(r0)) {
                            Game.getCiv(iIntValue).addTechnology(r0, r3);
                        }
                    }
                    DiplomacyManager.addTruce(civID, iIntValue);
                    sentNotification(civID, iIntValue);
                    Game.revolutionMoveUnits.removeAllRebelsArmiesMovingToCiv(iIntValue);
                    Game.getCiv(iIntValue).updateProvinceBorder();
                    arrayList2.clear();
                    arrayList.clear();
                    return;
                }
                ArrayList arrayList3 = new ArrayList();
                for (int size8 = arrayList.size() - 1; size8 >= 0; size8--) {
                    List<String> listLoadSuggestedCivs = Game.loadSuggestedCivs(arrayList.get(size8).intValue());
                    for (int size9 = listLoadSuggestedCivs.size() - 1; size9 >= 0; size9--) {
                        if (!arrayList3.contains(listLoadSuggestedCivs.get(size9))) {
                            arrayList3.add(listLoadSuggestedCivs.get(size9));
                        }
                    }
                }
                for (int size10 = arrayList3.size() - 1; size10 >= 0; size10--) {
                    for (int i3 = 1; i3 < Game.getCivsSize(); i3++) {
                        if (Game.getCiv(i3).getCivTag().equals(arrayList3.get(size10))) {
                            arrayList3.remove(size10);
                            break;
                        }
                    }
                }
                if (!arrayList3.isEmpty() && addCiv((String) arrayList3.get(Game.oR.nextInt(arrayList3.size())), arrayList, civID)) {
                    arrayList3.clear();
                    arrayList.clear();
                    return;
                }
                if (GameValues.rebels.DECLARE_INDEPENDENCE_ENABLE_DIFFERENT_GOVERNMENT) {
                    ArrayList arrayList4 = new ArrayList();
                    for (?? r15 = r3; r15 < Game.ideologiesManager.getIdeologiesSize(); r15++) {
                        if (!Game.ideologiesManager.getIdeology(r15).TRIBAL && !Game.ideologiesManager.getIdeology(r15).REVOLUTIONISTS && !Game.ideologiesManager.getIdeology(r15).CITY_STATE && ((Game.ideologiesManager.getIdeology(r15).REQUIRED_TECHNOLOGY < 0 || Game.getCiv(civID).getTechResearched(Game.ideologiesManager.getIdeology(r15).REQUIRED_TECHNOLOGY)) && Game.getCiv(civID).getIdeologyID() != r15)) {
                            arrayList4.add(Integer.valueOf((int) r15));
                        }
                    }
                    if (arrayList4.isEmpty()) {
                        for (?? r16 = r3; r16 < Game.ideologiesManager.getIdeologiesSize(); r16++) {
                            if (!Game.ideologiesManager.getIdeology(r16).TRIBAL && !Game.ideologiesManager.getIdeology(r16).REVOLUTIONISTS && !Game.ideologiesManager.getIdeology(r16).CITY_STATE && Game.getCiv(civID).getIdeologyID() != r16) {
                                arrayList4.add(Integer.valueOf((int) r16));
                            }
                        }
                    }
                    if (!arrayList4.isEmpty()) {
                        String str = Game.getCiv(civID).realTag;
                        int size11 = arrayList4.size() - 1;
                        while (true) {
                            if (size11 < 0) {
                                break;
                            }
                            String str2 = str + (Game.ideologiesManager.getIdeology(((Integer) arrayList4.get(size11)).intValue()).Extra_Tag.length() > 0 ? "_" + Game.ideologiesManager.getIdeology(((Integer) arrayList4.get(size11)).intValue()).Extra_Tag : "");
                            for (int i4 = 1; i4 < Game.getCivsSize(); i4++) {
                                if (Game.getCiv(i4).getCivTag().equals(str2)) {
                                    arrayList4.remove(size11);
                                    break;
                                }
                            }
                            size11--;
                        }
                        if (!arrayList4.isEmpty()) {
                            int iNextInt = Game.oR.nextInt(arrayList4.size());
                            if (addCiv(str + (Game.ideologiesManager.getIdeology(iNextInt).Extra_Tag.length() > 0 ? "_" + Game.ideologiesManager.getIdeology(iNextInt).Extra_Tag : ""), arrayList, civID)) {
                                arrayList3.clear();
                                arrayList.clear();
                                return;
                            }
                        }
                    }
                }
                if (r10 != 0) {
                    try {
                        for (int size12 = arrayList.size() - 1; size12 >= 0; size12--) {
                            Game.getProvince(arrayList.get(size12).intValue()).setRevulutionaryRisk(0.0f);
                            z = false;
                            try {
                                Game.getProvince(arrayList.get(size12).intValue()).setOccupiedByCivID(0);
                                Game.getProvince(arrayList.get(size12).intValue()).resetSiegeData();
                                removeOccupiedProvince(arrayList.get(size12).intValue());
                                try {
                                    for (int armySize2 = Game.getProvince(arrayList.get(size12).intValue()).getArmySize() - 1; armySize2 >= 0; armySize2--) {
                                        if (Game.getProvince(arrayList.get(size12).intValue()).getArmy(armySize2).civID < 0) {
                                            Game.revolutionMoveUnits.removeMove(Game.getProvince(arrayList.get(size12).intValue()).getArmy(armySize2).key);
                                            removeArmyPosition(arrayList.get(size12).intValue(), Game.getProvince(arrayList.get(size12).intValue()).getArmy(armySize2).key);
                                            Game.getProvince(arrayList.get(size12).intValue()).removeArmy(Game.getProvince(arrayList.get(size12).intValue()).getArmy(armySize2).key);
                                        }
                                    }
                                } catch (Exception e2) {
                                    CFG.exceptionStack(e2);
                                }
                            } catch (Exception unused) {
                            }
                        }
                    } catch (Exception unused2) {
                    }
                    z = false;
                    size2 = Math.min(size2, this.occupiedProvinces.size() - 1);
                    r6 = z;
                } else {
                    r6 = 0;
                }
                arrayList.clear();
            }
            size2--;
            r3 = r6;
        }
    }

    public final int declareIndependence_TurnsLeft(int i) {
        for (int size = this.occupiedProvinces.size() - 1; size >= 0; size--) {
            if (this.occupiedProvinces.get(size).p == i) {
                return Math.max(1, GameValues.rebels.DECLARE_INDEPENDENCE_AFTER_X_DAYS - (Game_Calendar.TURN_ID - this.occupiedProvinces.get(size).sinceTurnID));
            }
        }
        return 0;
    }

    public boolean decreaseRevolutionaryRisk(int i, int i2) {
        if (i != Game.getProvince(i2).getCivID() || Game.getProvince(i2).getRevulutionaryRisk() <= 0.0f || Game.getCiv(i).fGold < GameValues.province.UNREST_DECREASE_COST_GOLD || Game.getCiv(i).fLegacy < GameValues.province.UNREST_DECREASE_COST_LEGACY) {
            return false;
        }
        float fMin = Math.min(Math.min(Game.getProvince(i2).getRevulutionaryRisk(), Game.getCiv(i).fGold / GameValues.province.UNREST_DECREASE_COST_GOLD), Game.getCiv(i).fLegacy / GameValues.province.UNREST_DECREASE_COST_LEGACY);
        if (fMin <= 0.0f) {
            return true;
        }
        Game.getProvince(i2).setRevulutionaryRisk(Game.getProvince(i2).getRevulutionaryRisk() - fMin);
        Game.getCiv(i).fGold -= GameValues.province.UNREST_DECREASE_COST_GOLD * fMin;
        Game.getCiv(i).fLegacy -= fMin * GameValues.province.UNREST_DECREASE_COST_LEGACY;
        return true;
    }

    public float getDecreaseRevolutionaryRisk_CostGold(int i) {
        return Math.max(0.0f, GameValues.province.UNREST_DECREASE_COST_GOLD * Game.getProvince(i).getRevulutionaryRisk());
    }

    public float getDecreaseRevolutionaryRisk_CostLegacy(int i) {
        return Math.max(0.0f, GameValues.province.UNREST_DECREASE_COST_LEGACY * Game.getProvince(i).getRevulutionaryRisk());
    }

    public List<Integer> getRevolutionaryProvinces(int i) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < Game.getCiv(i).getNumOfProvinces(); i2++) {
            if (Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getRevulutionaryRisk() > 0.0f) {
                arrayList.add(Integer.valueOf(Game.getCiv(i).getProvinceID(i2)));
            }
        }
        return arrayList;
    }

    public List<Integer> getRevolutionaryProvinces_Sorted(int i) {
        List<Integer> revolutionaryProvinces = getRevolutionaryProvinces(i);
        ArrayList arrayList = new ArrayList();
        while (revolutionaryProvinces.size() > 0) {
            int i2 = 0;
            for (int size = revolutionaryProvinces.size() - 1; size > 0; size--) {
                if (Game.getProvince(revolutionaryProvinces.get(i2).intValue()).getRevulutionaryRisk() < Game.getProvince(revolutionaryProvinces.get(size).intValue()).getRevulutionaryRisk()) {
                    i2 = size;
                }
            }
            arrayList.add(revolutionaryProvinces.get(i2));
            revolutionaryProvinces.remove(i2);
        }
        return arrayList;
    }

    public final void moveArmies() {
        try {
            int i = Game_Calendar.TURN_ID % GameValues.gameUpdate.GAME_UPDATE_REBELS_ARMIES_STEPS;
            while (i < this.iArmyPositionSize) {
                if (!Game.getProvinceData4(this.armyPosition.get(i).provinceID).isUnderSiege()) {
                    int armyKeyID = Game.getProvince(this.armyPosition.get(i).provinceID).getArmyKeyID(this.armyPosition.get(i).key);
                    if (armyKeyID < 0) {
                        this.armyPosition.remove(i);
                        this.iArmyPositionSize = this.armyPosition.size();
                        i--;
                    } else if (Game.getProvince(this.armyPosition.get(i).provinceID).getArmy(armyKeyID).iArmyRegimentSize < GameValues.siege.SIEGE_REGIMENTS_MIN) {
                        Game.getProvince(this.armyPosition.get(i).provinceID).removeArmy(armyKeyID);
                    } else {
                        if (Game.getProvince(this.armyPosition.get(i).provinceID).getArmy(armyKeyID).fMorale < GameValues.rebels.REBELS_MAX_MORALE) {
                            Game.getProvince(this.armyPosition.get(i).provinceID).getArmy(armyKeyID).updateMorale_Regiments(GameValues.rebels.REBELS_MAX_MORALE, GameValues.rebels.REBELS_MORALE_RECOVERY);
                        }
                        if (!Game.getProvince(this.armyPosition.get(i).provinceID).getArmy(armyKeyID).inBattle && !Game.getProvince(this.armyPosition.get(i).provinceID).getArmy(armyKeyID).inMovement) {
                            if (Game.getProvince(this.armyPosition.get(i).provinceID).getSeaProvince()) {
                                Game.getProvince(this.armyPosition.get(i).provinceID).removeArmy(this.armyPosition.get(i).key);
                            } else if (Game.getProvince(this.armyPosition.get(i).provinceID).getCivRegionID() >= 0) {
                                ArrayList arrayList = new ArrayList();
                                int i2 = 0;
                                for (int i3 = 0; i3 < Game.getCiv(Game.getProvince(this.armyPosition.get(i).provinceID).getCivID()).getCivRegion(Game.getProvince(this.armyPosition.get(i).provinceID).getCivRegionID()).getProvincesSize(); i3++) {
                                    if (!Game.getProvince(Game.getCiv(Game.getProvince(this.armyPosition.get(i).provinceID).getCivID()).getCivRegion(Game.getProvince(this.armyPosition.get(i).provinceID).getCivRegionID()).getProvince(i3)).isOccupied() && Game.getCiv(Game.getProvince(this.armyPosition.get(i).provinceID).getCivID()).getCivRegion(Game.getProvince(this.armyPosition.get(i).provinceID).getCivRegionID()).getProvince(i3) != this.armyPosition.get(i).provinceID) {
                                        arrayList.add(Integer.valueOf(Game.getCiv(Game.getProvince(this.armyPosition.get(i).provinceID).getCivID()).getCivRegion(Game.getProvince(this.armyPosition.get(i).provinceID).getCivRegionID()).getProvince(i3)));
                                    }
                                }
                                if (arrayList.size() > 0) {
                                    float distanceFromProvinceToProvince = Game.getDistanceFromProvinceToProvince(this.armyPosition.get(i).provinceID, ((Integer) arrayList.get(0)).intValue());
                                    for (int size = arrayList.size() - 1; size > 0; size--) {
                                        float distanceFromProvinceToProvince2 = Game.getDistanceFromProvinceToProvince(this.armyPosition.get(i).provinceID, ((Integer) arrayList.get(size)).intValue());
                                        if (distanceFromProvinceToProvince2 < distanceFromProvinceToProvince) {
                                            if (Game.revolutionMoveUnits.isArmyAlreadyMoving(this.armyPosition.get(i).provinceID, ((Integer) arrayList.get(size)).intValue())) {
                                                distanceFromProvinceToProvince2 *= 10.0f;
                                            }
                                            if (distanceFromProvinceToProvince2 < distanceFromProvinceToProvince) {
                                                i2 = size;
                                                distanceFromProvinceToProvince = distanceFromProvinceToProvince2;
                                            }
                                        }
                                    }
                                    Game.revolutionMoveUnits.newMove(this.armyPosition.get(i).provinceID, ((Integer) arrayList.get(i2)).intValue(), this.armyPosition.get(i).key, 0, false);
                                    arrayList.clear();
                                }
                            }
                        }
                    }
                }
                i += GameValues.gameUpdate.GAME_UPDATE_REBELS_ARMIES_STEPS;
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void removeArmyPosition(int i, String str) {
        for (int i2 = 0; i2 < this.iArmyPositionSize; i2++) {
            try {
                if (this.armyPosition.get(i2).provinceID == i && this.armyPosition.get(i2).key.equals(str)) {
                    this.armyPosition.remove(i2);
                    this.iArmyPositionSize = this.armyPosition.size();
                    return;
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
    }

    public void removeOccupiedProvince(int i) {
        for (int size = this.occupiedProvinces.size() - 1; size >= 0; size--) {
            if (this.occupiedProvinces.get(size).p == i) {
                this.occupiedProvinces.remove(size);
                return;
            }
        }
    }

    public void sentNotification(int i, int i2) {
        if (i != Game.player.iCivID || i2 >= Game.getCivsSize()) {
            return;
        }
        InGame_Info.iCivID = i;
        InGame_Info.iCivID2 = i2;
        Game.menuManager.rebuildInGame_Info(Game.lang.get("Liberation"), Game.getCiv(i2).getCivName());
        InGame_Info.imgID = Images.infoUnrest;
    }

    public void spawnRevolution(int i, int i2, int i3) {
        int i4;
        try {
            try {
                if (Game.getProvince(i2).getCivRegionID() >= 0) {
                    int civRegionID = Game.getProvince(i2).getCivRegionID();
                    for (int i5 = 0; i5 < Game.getCiv(i).getCivRegion(civRegionID).getProvincesSize(); i5++) {
                        if (i2 != Game.getCiv(i).getCivRegion(civRegionID).getProvince(i5)) {
                            Game.getProvince(Game.getCiv(i).getCivRegion(civRegionID).getProvince(i5)).setRevulutionaryRisk(Game.getProvince(Game.getCiv(i).getCivRegion(civRegionID).getProvince(i5)).getRevulutionaryRisk() - (Game.getProvince(Game.getCiv(i).getCivRegion(civRegionID).getProvince(i5)).getRevulutionaryRisk() * (GameValues.rebels.DECREASE_UNREST_IN_PROVINCES_BY_AFTER_REVOLT * (1.0f - Game.getDistance_PercOfMax(i2, Game.getCiv(i).getCivRegion(civRegionID).getProvince(i5))))));
                        }
                    }
                }
            } catch (Exception e) {
                e = e;
            }
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(i2));
        if (i3 > 1) {
            for (int i6 = 0; i6 < Game.getProvince(i2).getNeighboringProvincesSize(); i6++) {
                if (Game.getProvince(Game.getProvince(i2).getNeighboringProvinces(i6)).getCivID() == i && !Game.getProvince(Game.getProvince(i2).getNeighboringProvinces(i6)).isOccupied()) {
                    arrayList.add(Integer.valueOf(Game.getProvince(i2).getNeighboringProvinces(i6)));
                    if (arrayList.size() >= i3) {
                        break;
                    }
                }
            }
            if (arrayList.size() < i3) {
                for (int i7 = 0; i7 < Game.getProvince(i2).getNeighboringProvincesSize(); i7++) {
                    for (int i8 = 0; i8 < Game.getProvince(Game.getProvince(i2).getNeighboringProvinces(i7)).getNeighboringProvincesSize(); i8++) {
                        if (Game.getProvince(Game.getProvince(Game.getProvince(i2).getNeighboringProvinces(i7)).getNeighboringProvinces(i8)).getCivID() == i && !Game.getProvince(Game.getProvince(Game.getProvince(i2).getNeighboringProvinces(i7)).getNeighboringProvinces(i8)).isOccupied()) {
                            arrayList.add(Integer.valueOf(Game.getProvince(Game.getProvince(i2).getNeighboringProvinces(i7)).getNeighboringProvinces(i8)));
                            if (arrayList.size() >= i3) {
                                break;
                            }
                        }
                    }
                    if (arrayList.size() >= i3) {
                        break;
                    }
                }
            }
        }
        int size = arrayList.size();
        for (int i9 = 0; i9 < size; i9++) {
            try {
                Game.getProvince(((Integer) arrayList.get(i9)).intValue()).setOccupiedByCivID(-i);
                addOccupiedProvince(((Integer) arrayList.get(i9)).intValue());
                Game.getProvince(((Integer) arrayList.get(i9)).intValue()).setRevulutionaryRisk(Math.min(Game.getProvince(((Integer) arrayList.get(i9)).intValue()).getRevulutionaryRisk(), GameValues.rebels.UNREST_AFTER_REVOLUTION_IN_PROVINCE));
            } catch (Exception e3) {
                e = e3;
            }
        }
        int iMax = (int) Math.max(GameValues.rebels.UPRISING_REGIMENTS_MIN, Game.getCiv(i).iRegimentsLimit * GameValues.rebels.UPRISING_PERC_OF_REGIMENTS_LIMIT);
        int size2 = arrayList.size();
        int i10 = 0;
        while (i10 < size2) {
            ArrayList arrayList2 = new ArrayList();
            AI_Army_Composition aI_Army_Composition = new AI_Army_Composition(i, Math.min(iMax, GameValues.rebels.UPRISING_MAX_REGIMENTS_IN_PROVINCE));
            aI_Army_Composition.numSupport += aI_Army_Composition.numSiege;
            List<TechnologyTree.Unit> unlockedUnitsFirstLine = Game.getCiv(i).getUnlockedUnitsFirstLine();
            List<TechnologyTree.Unit> unlockedUnitsFlank = Game.getCiv(i).getUnlockedUnitsFlank();
            List<TechnologyTree.Unit> unlockedUnitsSupport = Game.getCiv(i).getUnlockedUnitsSupport();
            if (unlockedUnitsFlank.size() == 0 && aI_Army_Composition.numFlank > 0) {
                aI_Army_Composition.numFirstLine += aI_Army_Composition.numFlank;
            }
            if (unlockedUnitsSupport.size() == 0 && aI_Army_Composition.numSupport > 0) {
                aI_Army_Composition.numFirstLine += aI_Army_Composition.numSupport;
            }
            if (unlockedUnitsFirstLine.size() == 0) {
                i4 = 0;
                unlockedUnitsFirstLine.add(new TechnologyTree.Unit(0, 0));
            } else {
                i4 = 0;
            }
            int i11 = i4;
            while (i11 < aI_Army_Composition.numFirstLine) {
                int i12 = size2;
                int iNextInt = Game.oR.nextInt(unlockedUnitsFirstLine.size());
                arrayList2.add(new ArmyRegiment(unlockedUnitsFirstLine.get(iNextInt).unitID, unlockedUnitsFirstLine.get(iNextInt).armyID));
                i11++;
                size2 = i12;
            }
            int i13 = size2;
            if (unlockedUnitsFlank.size() > 0) {
                for (int i14 = 0; i14 < aI_Army_Composition.numFlank; i14++) {
                    int iNextInt2 = Game.oR.nextInt(unlockedUnitsFlank.size());
                    arrayList2.add(new ArmyRegiment(unlockedUnitsFlank.get(iNextInt2).unitID, unlockedUnitsFlank.get(iNextInt2).armyID));
                }
            }
            if (unlockedUnitsSupport.size() > 0) {
                for (int i15 = 0; i15 < aI_Army_Composition.numSupport; i15++) {
                    int iNextInt3 = Game.oR.nextInt(unlockedUnitsSupport.size());
                    arrayList2.add(new ArmyRegiment(unlockedUnitsSupport.get(iNextInt3).unitID, unlockedUnitsSupport.get(iNextInt3).armyID));
                }
            }
            iMax -= arrayList2.size();
            Game.getProvince(((Integer) arrayList.get(i10)).intValue()).addArmy(new ArmyDivision(-i, ((Integer) arrayList.get(i10)).intValue(), arrayList2));
            if (iMax < 0) {
                break;
            }
            i10++;
            size2 = i13;
        }
        int size3 = arrayList.size();
        for (int i16 = 0; i16 < size3; i16++) {
            Game.getProvince(((Integer) arrayList.get(i16)).intValue()).checkForBattle();
        }
        if (i == Game.player.iCivID) {
            InGame_Info.iCivID = -i;
            InGame_Info.iCivID2 = i;
            Game.menuManager.rebuildInGame_Info(Game.lang.get("Revolt"), Game.getProvince(i2).getProvinceName());
            InGame_Info.imgID = Images.infoUnrest;
            Game.player.addNotification(new AnonymousClass1(Notification.Notification_Type.SIEGE, Game.lang.get("SiegeLost") + ": " + Game.getProvince(i2).getProvinceName(), Images.siege, Game_Calendar.TURN_ID, Notification.Notification_BG.RED));
            Game.player.addNotification(new AnonymousClass2(Notification.Notification_Type.REVOLT, Game.lang.get("Revolt") + ": " + Game.getProvince(i2).getProvinceName(), Images.siege, Game_Calendar.TURN_ID, Notification.Notification_BG.RED, i2));
            return;
        }
        return;
        CFG.exceptionStack(e);
    }

    public void spawnRevolution(int i, List<Integer> list) {
        spawnRevolution(i, list.get(Game.oR.nextInt(list.size())).intValue(), (int) (list.size() * GameValues.rebels.UPRISING_PROVINCES_PERC));
    }

    public final void startRevolution() {
        ArrayList arrayList = new ArrayList();
        for (int i = Game_Calendar.TURN_ID % GameValues.gameUpdate.GAME_UPDATE_UPRISING_STEPS; i < Game.getCivsSize(); i += GameValues.gameUpdate.GAME_UPDATE_UPRISING_STEPS) {
            if (Game.getCiv(i).getNumOfProvinces() > 0) {
                arrayList.clear();
                for (int i2 = 0; i2 < Game.getCiv(i).getNumOfProvinces(); i2++) {
                    if (Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getRevulutionaryRisk() >= GameValues.rebels.START_UPRISING_MIN_UNREST && !Game.getProvince(Game.getCiv(i).getProvinceID(i2)).isOccupied()) {
                        arrayList.add(Integer.valueOf(Game.getCiv(i).getProvinceID(i2)));
                    }
                }
                if (arrayList.size() > 0) {
                    spawnRevolution(i, arrayList);
                }
            }
        }
        arrayList.clear();
    }

    public final void update() {
        try {
            declareIndependence();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        try {
            moveArmies();
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
        try {
            startRevolution();
        } catch (Exception e3) {
            CFG.exceptionStack(e3);
        }
    }

    public void updateArmyPosition(String str, int i) {
        for (int i2 = 0; i2 < this.iArmyPositionSize; i2++) {
            try {
                if (this.armyPosition.get(i2).key.equals(str)) {
                    this.armyPosition.get(i2).provinceID = i;
                    return;
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
        this.armyPosition.add(new ArmyPosition(i, str));
        this.iArmyPositionSize = this.armyPosition.size();
    }
}
