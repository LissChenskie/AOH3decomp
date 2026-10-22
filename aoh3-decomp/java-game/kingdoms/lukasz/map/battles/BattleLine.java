package aoc.kingdoms.lukasz.map.battles;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.GlyphLayout_Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.army.ArmyDivision;
import aoc.kingdoms.lukasz.map.army.ArmyGeneral;
import aoc.kingdoms.lukasz.map.army.ArmyManager;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class BattleLine {
    public List<String> armyDivisionsKeys;
    public int armyExtraPosX;
    public ArmyGeneral armyGeneral;
    public List<BattleRegiment> defeated;
    public int diceRollGeneral;
    public float fMorale;
    public List<BattleRegiment> firstLine;
    public int iCasualties;
    public int iCivID;
    public int iLastAttackRoundID;
    public int iRetreated;
    public int inReserve;
    public List<Integer> lCasualties;
    public List<Integer> lCivs;
    public List<String> lDefeatedArmyDivisionKeys;
    public int numOfUnits;
    public int numOfUnitsOnBattlefield;
    public List<BattleRegiment> reserveFirstLine;
    public List<BattleRegiment> reserveSecondLine;
    public List<BattleRegiment> secondLine;
    public String text;
    public int textW;

    public BattleLine() {
        this.numOfUnits = 0;
        this.numOfUnitsOnBattlefield = 0;
        this.iCasualties = 0;
        this.iRetreated = 0;
        this.inReserve = 0;
        this.fMorale = 0.0f;
        this.diceRollGeneral = 0;
        this.iLastAttackRoundID = 0;
        this.iCivID = 0;
        this.armyGeneral = null;
        this.firstLine = new ArrayList();
        this.secondLine = new ArrayList();
        this.reserveFirstLine = new ArrayList();
        this.reserveSecondLine = new ArrayList();
        this.defeated = new ArrayList();
        this.lCivs = new ArrayList();
        this.lCasualties = new ArrayList();
        this.lDefeatedArmyDivisionKeys = new ArrayList();
        this.armyDivisionsKeys = new ArrayList();
    }

    public BattleLine(List<ArmyDivision> list, int i, int i2, String str) {
        int i3;
        int i4 = 0;
        this.numOfUnits = 0;
        this.numOfUnitsOnBattlefield = 0;
        this.iCasualties = 0;
        this.iRetreated = 0;
        this.inReserve = 0;
        this.fMorale = 0.0f;
        this.diceRollGeneral = 0;
        this.iLastAttackRoundID = 0;
        this.iCivID = 0;
        this.armyGeneral = null;
        this.firstLine = new ArrayList();
        this.secondLine = new ArrayList();
        this.reserveFirstLine = new ArrayList();
        this.reserveSecondLine = new ArrayList();
        this.defeated = new ArrayList();
        this.lCivs = new ArrayList();
        this.lCasualties = new ArrayList();
        this.lDefeatedArmyDivisionKeys = new ArrayList();
        this.armyDivisionsKeys = new ArrayList();
        for (int i5 = 0; i5 < GameValues.battle.BATTLE_MAX_BATTLE_WIDTH; i5++) {
            this.firstLine.add(null);
            this.secondLine.add(null);
        }
        this.numOfUnits = 0;
        this.numOfUnitsOnBattlefield = 0;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        int size = list.size();
        int i6 = 0;
        while (true) {
            int i7 = 1;
            if (i6 >= size) {
                break;
            }
            addCiv(list.get(i6).civID, str);
            int i8 = 0;
            while (i8 < list.get(i6).iArmyRegimentSize) {
                if (list.get(i6).lArmyRegiment.get(i8).num > 0) {
                    this.numOfUnits += list.get(i6).lArmyRegiment.get(i8).num;
                    int i9 = ArmyManager.lUnitsTypes.get(list.get(i6).lArmyRegiment.get(i8).uID).Line;
                    if (i9 == 0) {
                        arrayList.add(new BattleRegiment(list.get(i6).civID, list.get(i6).lArmyRegiment.get(i8), list.get(i6).key));
                    } else if (i9 != i7) {
                        arrayList3.add(new BattleRegiment(list.get(i6).civID, list.get(i6).lArmyRegiment.get(i8), list.get(i6).key));
                    } else {
                        arrayList2.add(new BattleRegiment(list.get(i6).civID, list.get(i6).lArmyRegiment.get(i8), list.get(i6).key));
                    }
                } else {
                    this.defeated.add(new BattleRegiment(list.get(i6).civID, list.get(i6).lArmyRegiment.get(i8), list.get(i6).key));
                }
                i8++;
                i7 = 1;
            }
            i6++;
        }
        int iMin = Math.min(i - ((int) (i * GameValues.battle.BATTLE_SIDES_RATIO)), i2);
        int i10 = 0;
        while (i10 < i && (arrayList.size() > 0 || arrayList2.size() > 0)) {
            if (!(i10 >= iMin) && arrayList.size() > 0) {
                i3 = i10 + 1;
                this.firstLine.set(BattleManager.FILL_ORDER[i10], (BattleRegiment) arrayList.get(0));
                arrayList.remove(0);
            } else if (arrayList2.size() > 0) {
                i3 = i10 + 1;
                this.firstLine.set(BattleManager.FILL_ORDER[i10], (BattleRegiment) arrayList2.get(0));
                arrayList2.remove(0);
            } else if (arrayList.size() > 0) {
                i3 = i10 + 1;
                this.firstLine.set(BattleManager.FILL_ORDER[i10], (BattleRegiment) arrayList.get(0));
                arrayList.remove(0);
            }
            i10 = i3;
        }
        int i11 = 0;
        while (i11 < i && arrayList3.size() > 0) {
            if (arrayList3.size() > 0) {
                if (this.firstLine.get(BattleManager.FILL_ORDER[i11]) == null) {
                    this.firstLine.set(BattleManager.FILL_ORDER[i11], (BattleRegiment) arrayList3.get(0));
                } else {
                    this.secondLine.set(BattleManager.FILL_ORDER[i11], (BattleRegiment) arrayList3.get(0));
                    i11++;
                }
                arrayList3.remove(0);
            }
        }
        while (arrayList.size() > 0) {
            this.reserveFirstLine.add((BattleRegiment) arrayList.get(0));
            arrayList.remove(0);
        }
        while (arrayList2.size() > 0) {
            this.reserveFirstLine.add((BattleRegiment) arrayList2.get(0));
            arrayList2.remove(0);
        }
        while (arrayList3.size() > 0) {
            this.reserveSecondLine.add((BattleRegiment) arrayList3.get(0));
            arrayList3.remove(0);
        }
        int i12 = 1;
        for (int i13 = 0; i13 < GameValues.battle.BATTLE_MAX_BATTLE_WIDTH; i13++) {
            if (this.firstLine.get(BattleManager.FILL_ORDER[i13]) != null) {
                this.firstLine.get(BattleManager.FILL_ORDER[i13]).rn = i12;
                this.numOfUnitsOnBattlefield += this.firstLine.get(BattleManager.FILL_ORDER[i13]).aR.num;
                i12++;
            }
        }
        for (int i14 = 0; i14 < GameValues.battle.BATTLE_MAX_BATTLE_WIDTH; i14++) {
            if (this.secondLine.get(BattleManager.FILL_ORDER[i14]) != null) {
                this.secondLine.get(BattleManager.FILL_ORDER[i14]).rn = i12;
                this.numOfUnitsOnBattlefield += this.secondLine.get(BattleManager.FILL_ORDER[i14]).aR.num;
                i12++;
            }
        }
        this.inReserve = 0;
        int size2 = this.reserveFirstLine.size();
        int i15 = 0;
        while (i15 < size2) {
            this.reserveFirstLine.get(i15).rn = i12;
            this.inReserve += this.reserveFirstLine.get(i15).aR.num;
            i15++;
            i12++;
        }
        int size3 = this.reserveSecondLine.size();
        while (i4 < size3) {
            this.reserveSecondLine.get(i4).rn = i12;
            this.inReserve += this.reserveSecondLine.get(i4).aR.num;
            i4++;
            i12++;
        }
        setText("" + CFG.getPrecision2(this.numOfUnits / 1000.0f, 10));
        updateAverageMoraleOnBattleField();
    }

    private final int getAttackCasualties(int i, int i2, float f, float f2, int i3) {
        return (int) Math.ceil((GameValues.battle.BATTLE_CASUALTIES + i2 + this.diceRollGeneral) * f * f2 * ((i / 50.0f) + 1.0f + Game.getCiv(i3).civBonuses.Discipline));
    }

    public final void addArmyDivisionKey(String str) {
        for (int size = this.armyDivisionsKeys.size() - 1; size >= 0; size--) {
            if (this.armyDivisionsKeys.get(size).equals(str)) {
                return;
            }
        }
        this.armyDivisionsKeys.add(str);
    }

    public final void addCasualties(int i, int i2) {
        if (i2 > 0) {
            for (int size = this.lCivs.size() - 1; size >= 0; size--) {
                if (this.lCivs.get(size).intValue() == i) {
                    List<Integer> list = this.lCasualties;
                    list.set(size, Integer.valueOf(list.get(size).intValue() + i2));
                    return;
                }
            }
        }
    }

    public void addCiv(int i, String str) {
        int size = this.lCivs.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.lCivs.get(i2).intValue() == i) {
                return;
            }
        }
        this.lCivs.add(Integer.valueOf(i));
        Game.getCiv(i).addInBattles(str);
    }

    public final void addDefeatedArmyDivisionKey(String str) {
        if (str != null) {
            for (int size = this.lDefeatedArmyDivisionKeys.size() - 1; size >= 0; size--) {
                if (this.lDefeatedArmyDivisionKeys.get(size).equals(str)) {
                    return;
                }
            }
            this.lDefeatedArmyDivisionKeys.add(str);
        }
    }

    public final void buildArmyDivisionsKeys() {
        this.lDefeatedArmyDivisionKeys.clear();
        for (int size = this.firstLine.size() - 1; size >= 0; size--) {
            if (this.firstLine.get(size) != null) {
                addDefeatedArmyDivisionKey(this.firstLine.get(size).aK);
            }
        }
        for (int size2 = this.secondLine.size() - 1; size2 >= 0; size2--) {
            if (this.secondLine.get(size2) != null) {
                addDefeatedArmyDivisionKey(this.secondLine.get(size2).aK);
            }
        }
        for (int size3 = this.reserveFirstLine.size() - 1; size3 >= 0; size3--) {
            addDefeatedArmyDivisionKey(this.reserveFirstLine.get(size3).aK);
        }
        for (int size4 = this.reserveSecondLine.size() - 1; size4 >= 0; size4--) {
            addDefeatedArmyDivisionKey(this.reserveSecondLine.get(size4).aK);
        }
        for (int size5 = this.defeated.size() - 1; size5 >= 0; size5--) {
            addDefeatedArmyDivisionKey(this.defeated.get(size5).aK);
        }
    }

    public final void buildCasualties() {
        this.lCasualties.clear();
        for (int size = this.lCivs.size() - 1; size >= 0; size--) {
            this.lCasualties.add(0);
        }
        for (int size2 = this.firstLine.size() - 1; size2 >= 0; size2--) {
            if (this.firstLine.get(size2) != null) {
                addCasualties(this.firstLine.get(size2).c, this.firstLine.get(size2).ca);
            }
        }
        for (int size3 = this.secondLine.size() - 1; size3 >= 0; size3--) {
            if (this.secondLine.get(size3) != null) {
                addCasualties(this.secondLine.get(size3).c, this.secondLine.get(size3).ca);
            }
        }
        for (int size4 = this.reserveFirstLine.size() - 1; size4 >= 0; size4--) {
            addCasualties(this.reserveFirstLine.get(size4).c, this.reserveFirstLine.get(size4).ca);
        }
        for (int size5 = this.reserveSecondLine.size() - 1; size5 >= 0; size5--) {
            addCasualties(this.reserveSecondLine.get(size5).c, this.reserveSecondLine.get(size5).ca);
        }
        for (int size6 = this.defeated.size() - 1; size6 >= 0; size6--) {
            addCasualties(this.defeated.get(size6).c, this.defeated.get(size6).ca);
        }
    }

    public List<String> getBattleArmiesKeys() {
        ArrayList arrayList = new ArrayList();
        for (int size = this.firstLine.size() - 1; size >= 0; size--) {
            if (this.firstLine.get(size) != null && !arrayList.contains(this.firstLine.get(size).aK)) {
                arrayList.add(this.firstLine.get(size).aK);
            }
        }
        for (int size2 = this.secondLine.size() - 1; size2 >= 0; size2--) {
            if (this.secondLine.get(size2) != null && !arrayList.contains(this.secondLine.get(size2).aK)) {
                arrayList.add(this.secondLine.get(size2).aK);
            }
        }
        for (int size3 = this.reserveFirstLine.size() - 1; size3 >= 0; size3--) {
            if (!arrayList.contains(this.reserveFirstLine.get(size3).aK)) {
                arrayList.add(this.reserveFirstLine.get(size3).aK);
            }
        }
        for (int size4 = this.reserveSecondLine.size() - 1; size4 >= 0; size4--) {
            if (!arrayList.contains(this.reserveSecondLine.get(size4).aK)) {
                arrayList.add(this.reserveSecondLine.get(size4).aK);
            }
        }
        for (int size5 = this.defeated.size() - 1; size5 >= 0; size5--) {
            if (!arrayList.contains(this.defeated.get(size5).aK)) {
                arrayList.add(this.defeated.get(size5).aK);
            }
        }
        return arrayList;
    }

    public int getCivsRegimentsLimit() {
        int i = 0;
        for (int size = this.lCivs.size() - 1; size >= 0; size--) {
            i += Game.getCiv(this.lCivs.get(size).intValue()).iRegimentsLimit;
        }
        return i;
    }

    public boolean isInBattleArmy(String str) {
        try {
            for (int size = this.firstLine.size() - 1; size >= 0; size--) {
                if (this.firstLine.get(size) != null && this.firstLine.get(size).aK.equals(str)) {
                    return true;
                }
            }
            for (int size2 = this.secondLine.size() - 1; size2 >= 0; size2--) {
                if (this.secondLine.get(size2) != null && this.secondLine.get(size2).aK.equals(str)) {
                    return true;
                }
            }
            for (int size3 = this.reserveFirstLine.size() - 1; size3 >= 0; size3--) {
                if (this.reserveFirstLine.get(size3).aK.equals(str)) {
                    return true;
                }
            }
            for (int size4 = this.reserveSecondLine.size() - 1; size4 >= 0; size4--) {
                if (this.reserveSecondLine.get(size4).aK.equals(str)) {
                    return true;
                }
            }
            for (int size5 = this.defeated.size() - 1; size5 >= 0; size5--) {
                if (this.defeated.get(size5).aK.equals(str)) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return false;
        }
    }

    public boolean isInBattleCiv(int i) {
        for (int size = this.lCivs.size() - 1; size >= 0; size--) {
            if (this.lCivs.get(size).intValue() == i) {
                return true;
            }
        }
        return false;
    }

    public final void joinBattle(ArmyDivision armyDivision, int i, String str) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        addCiv(armyDivision.civID, str);
        int i2 = 1;
        armyDivision.inBattle = true;
        if (armyDivision.inMovement) {
            if (armyDivision.civID < 0) {
                Game.revolutionMoveUnits.updateMoveInBattle(armyDivision.key, armyDivision.inBattle);
            } else {
                Game.getCiv(armyDivision.civID).updateMoveInBattle(armyDivision.key, armyDivision.inBattle);
            }
        }
        if (this.armyGeneral == null && armyDivision.armyGeneral != null) {
            this.armyGeneral = armyDivision.armyGeneral;
        }
        if (armyDivision.armyGeneral != null) {
            armyDivision.armyGeneral.addCombatExperience(GameValues.generals.COMBAT_EXPERIENCE_JOIN_BATTLE);
        }
        for (int i3 = 0; i3 < armyDivision.iArmyRegimentSize; i3++) {
            this.numOfUnits += armyDivision.lArmyRegiment.get(i3).num;
            int i4 = ArmyManager.lUnitsTypes.get(armyDivision.lArmyRegiment.get(i3).uID).Line;
            if (i4 == 0 || i4 == 1) {
                arrayList.add(new BattleRegiment(armyDivision.civID, armyDivision.lArmyRegiment.get(i3), armyDivision.key));
            } else {
                arrayList2.add(new BattleRegiment(armyDivision.civID, armyDivision.lArmyRegiment.get(i3), armyDivision.key));
            }
        }
        while (arrayList.size() > 0) {
            ((BattleRegiment) arrayList.get(0)).rn = i2;
            this.inReserve += ((BattleRegiment) arrayList.get(0)).aR.num;
            this.reserveFirstLine.add((BattleRegiment) arrayList.get(0));
            arrayList.remove(0);
            i2++;
        }
        while (arrayList2.size() > 0) {
            ((BattleRegiment) arrayList2.get(0)).rn = i2;
            this.inReserve += ((BattleRegiment) arrayList2.get(0)).aR.num;
            this.reserveSecondLine.add((BattleRegiment) arrayList2.get(0));
            arrayList2.remove(0);
            i2++;
        }
        for (int i5 = 0; i5 < i; i5++) {
            try {
                if (this.reserveFirstLine.size() <= 0) {
                    break;
                }
                if (this.firstLine.get(BattleManager.FILL_ORDER[i5]) == null) {
                    this.firstLine.set(BattleManager.FILL_ORDER[i5], this.reserveFirstLine.get(0));
                    this.inReserve -= this.reserveFirstLine.get(0).aR.num;
                    this.numOfUnitsOnBattlefield += this.reserveFirstLine.get(0).aR.num;
                    this.reserveFirstLine.remove(0);
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        for (int i6 = 0; i6 < i; i6++) {
            try {
                if (this.reserveSecondLine.size() <= 0) {
                    break;
                }
                if (this.secondLine.get(BattleManager.FILL_ORDER[i6]) == null) {
                    this.secondLine.set(BattleManager.FILL_ORDER[i6], this.reserveSecondLine.get(0));
                    this.inReserve -= this.reserveSecondLine.get(0).aR.num;
                    this.numOfUnitsOnBattlefield += this.reserveSecondLine.get(0).aR.num;
                    this.reserveSecondLine.remove(0);
                }
            } catch (Exception e2) {
                CFG.exceptionStack(e2);
            }
        }
        for (int i7 = 0; i7 < i && this.reserveSecondLine.size() > 0; i7++) {
            if (this.firstLine.get(BattleManager.FILL_ORDER[i7]) == null) {
                this.firstLine.set(BattleManager.FILL_ORDER[i7], this.reserveSecondLine.get(0));
                this.inReserve -= this.reserveSecondLine.get(0).aR.num;
                this.numOfUnitsOnBattlefield += this.reserveSecondLine.get(0).aR.num;
                this.reserveSecondLine.remove(0);
            }
        }
        setText("" + CFG.getPrecision2(this.numOfUnits / 1000.0f, 10));
    }

    public void removeCivsInBattle(String str) {
        int size = this.lCivs.size();
        for (int i = 0; i < size; i++) {
            Game.getCiv(this.lCivs.get(i).intValue()).removeInBattles(str);
        }
    }

    public void setText(String str) {
        this.text = str;
        GlyphLayout_Game glyphLayout_Game = new GlyphLayout_Game();
        glyphLayout_Game.setText(Renderer.fontArmy_GlyphLayout, str);
        int i = (int) glyphLayout_Game.width;
        BitmapFont bitmapFont = Renderer.fontArmy_GlyphLayout;
        if (str.length() <= 2) {
            str = "999";
        }
        glyphLayout_Game.setText(bitmapFont, str);
        int i2 = (int) glyphLayout_Game.width;
        this.textW = i2;
        this.armyExtraPosX = Math.max(0, (i2 / 2) - (i / 2));
    }

    public void updateAllArmiesNotInBattle(int i) {
        List<String> battleArmiesKeys = getBattleArmiesKeys();
        for (int size = battleArmiesKeys.size() - 1; size >= 0; size--) {
            try {
                ArmyDivision army = Game.getProvince(i).getArmy(battleArmiesKeys.get(size));
                if (army != null) {
                    army.inBattle = false;
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
    }

    public final void updateAttack(BattleLine battleLine, int i, int i2) {
        for (int i3 = 0; i3 < GameValues.battle.BATTLE_MAX_BATTLE_WIDTH; i3++) {
            if (this.firstLine.get(i3) != null) {
                this.firstLine.get(i3).cL = 0;
            }
        }
        ArmyGeneral armyGeneral = battleLine.armyGeneral;
        int iMax = armyGeneral != null ? this.armyGeneral != null ? Math.max(0, (armyGeneral.getAttack() - this.armyGeneral.getDefense()) - i2) : Math.max(0, armyGeneral.getAttack() - i2) : 0;
        for (int i4 = 0; i4 < GameValues.battle.BATTLE_MAX_BATTLE_WIDTH; i4++) {
            if (battleLine.firstLine.get(i4) != null) {
                float f = battleLine.firstLine.get(i4).aR.num / Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE;
                if (this.firstLine.get(i4) == null || this.firstLine.get(i4).aR.num <= 0) {
                    for (int i5 = 1; i5 < ArmyManager.lArmy.get(battleLine.firstLine.get(i4).aR.uID).get(battleLine.firstLine.get(i4).aR.aID).AttackRange + 1; i5++) {
                        int i6 = i4 + i5;
                        if (i6 < GameValues.battle.BATTLE_MAX_BATTLE_WIDTH && this.firstLine.get(i6) != null && this.firstLine.get(i6).aR.num > 0) {
                            this.firstLine.get(i6).cL += getAttackCasualties(i, iMax, f, ArmyManager.lArmy.get(battleLine.firstLine.get(i4).aR.uID).get(battleLine.firstLine.get(i4).aR.aID).getAttack(battleLine.firstLine.get(i4).c) / (ArmyManager.lArmy.get(this.firstLine.get(i6).aR.uID).get(this.firstLine.get(i6).aR.aID).getDefense(this.firstLine.get(i6).c) + i2), battleLine.firstLine.get(i4).c);
                            this.iLastAttackRoundID = i;
                            break;
                        }
                        int i7 = i4 - i5;
                        if (i7 >= 0 && this.firstLine.get(i7) != null && this.firstLine.get(i7).aR.num > 0) {
                            this.firstLine.get(i7).cL += getAttackCasualties(i, iMax, f, ArmyManager.lArmy.get(battleLine.firstLine.get(i4).aR.uID).get(battleLine.firstLine.get(i4).aR.aID).getAttack(battleLine.firstLine.get(i4).c) / (ArmyManager.lArmy.get(this.firstLine.get(i7).aR.uID).get(this.firstLine.get(i7).aR.aID).getDefense(this.firstLine.get(i7).c) + i2), battleLine.firstLine.get(i4).c);
                            this.iLastAttackRoundID = i;
                            break;
                        }
                    }
                } else {
                    this.firstLine.get(i4).cL += getAttackCasualties(i, iMax, f, ArmyManager.lArmy.get(battleLine.firstLine.get(i4).aR.uID).get(battleLine.firstLine.get(i4).aR.aID).getAttack(battleLine.firstLine.get(i4).c) / (ArmyManager.lArmy.get(this.firstLine.get(i4).aR.uID).get(this.firstLine.get(i4).aR.aID).getDefense(this.firstLine.get(i4).c) + i2), battleLine.firstLine.get(i4).c);
                    this.iLastAttackRoundID = i;
                }
            }
        }
        for (int i8 = 0; i8 < GameValues.battle.BATTLE_MAX_BATTLE_WIDTH; i8++) {
            if (battleLine.secondLine.get(i8) != null && ArmyManager.lUnitsTypes.get(battleLine.secondLine.get(i8).aR.uID).Line >= 2) {
                float f2 = battleLine.secondLine.get(i8).aR.num / Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE;
                if (this.firstLine.get(i8) == null || this.firstLine.get(i8).aR.num <= 0) {
                    for (int i9 = 1; i9 < ArmyManager.lArmy.get(battleLine.secondLine.get(i8).aR.uID).get(battleLine.secondLine.get(i8).aR.aID).AttackRange + 1; i9++) {
                        int i10 = i8 + i9;
                        if (i10 < GameValues.battle.BATTLE_MAX_BATTLE_WIDTH && this.firstLine.get(i10) != null && this.firstLine.get(i10).aR.num > 0) {
                            this.firstLine.get(i10).cL += getAttackCasualties(i, iMax, f2, ArmyManager.lArmy.get(battleLine.secondLine.get(i8).aR.uID).get(battleLine.secondLine.get(i8).aR.aID).getAttack(battleLine.secondLine.get(i8).c) / (ArmyManager.lArmy.get(this.firstLine.get(i10).aR.uID).get(this.firstLine.get(i10).aR.aID).getDefense(this.firstLine.get(i10).c) + i2), battleLine.secondLine.get(i8).c);
                            this.iLastAttackRoundID = i;
                            break;
                        }
                        int i11 = i8 - i9;
                        if (i11 >= 0 && this.firstLine.get(i11) != null && this.firstLine.get(i11).aR.num > 0) {
                            this.firstLine.get(i11).cL += getAttackCasualties(i, iMax, f2, ArmyManager.lArmy.get(battleLine.secondLine.get(i8).aR.uID).get(battleLine.secondLine.get(i8).aR.aID).getAttack(battleLine.secondLine.get(i8).c) / (ArmyManager.lArmy.get(this.firstLine.get(i11).aR.uID).get(this.firstLine.get(i11).aR.aID).getDefense(this.firstLine.get(i11).c) + i2), battleLine.secondLine.get(i8).c);
                            this.iLastAttackRoundID = i;
                            break;
                        }
                    }
                } else {
                    this.firstLine.get(i8).cL += getAttackCasualties(i, iMax, f2, ArmyManager.lArmy.get(battleLine.secondLine.get(i8).aR.uID).get(battleLine.secondLine.get(i8).aR.aID).getAttack(battleLine.secondLine.get(i8).c) / (ArmyManager.lArmy.get(this.firstLine.get(i8).aR.uID).get(this.firstLine.get(i8).aR.aID).getDefense(this.firstLine.get(i8).c) + i2), battleLine.secondLine.get(i8).c);
                    this.iLastAttackRoundID = i;
                }
            }
        }
    }

    public final void updateAverageMoraleOnBattleField() {
        this.fMorale = 0.0f;
        int i = 0;
        for (int i2 = 0; i2 < GameValues.battle.BATTLE_MAX_BATTLE_WIDTH; i2++) {
            if (this.firstLine.get(i2) != null) {
                this.fMorale += this.firstLine.get(i2).aR.mo;
                i++;
            }
        }
        for (int i3 = 0; i3 < GameValues.battle.BATTLE_MAX_BATTLE_WIDTH; i3++) {
            if (this.secondLine.get(i3) != null) {
                this.fMorale += this.secondLine.get(i3).aR.mo;
                i++;
            }
        }
        this.fMorale /= i;
    }

    public final void updateBattle_Summary(int i, boolean z, int i2, boolean z2) {
        ArmyGeneral armyGeneral;
        int i3 = 0;
        for (int i4 = 0; i4 < GameValues.battle.BATTLE_MAX_BATTLE_WIDTH; i4++) {
            if (this.firstLine.get(i4) != null) {
                this.firstLine.get(i4).aR.num += this.firstLine.get(i4).re;
                if (this.firstLine.get(i4).l > 0) {
                    Game.getProvince(i).updateArmy_AfterBattle(this.firstLine.get(i4).aK, this.firstLine.get(i4).aR.key, this.firstLine.get(i4).aR.num, this.firstLine.get(i4).aR.mo);
                }
            }
            if (this.secondLine.get(i4) != null) {
                this.secondLine.get(i4).aR.num += this.secondLine.get(i4).re;
                if (this.secondLine.get(i4).l > 0) {
                    Game.getProvince(i).updateArmy_AfterBattle(this.secondLine.get(i4).aK, this.secondLine.get(i4).aR.key, this.secondLine.get(i4).aR.num, this.secondLine.get(i4).aR.mo);
                }
            }
        }
        int size = this.defeated.size();
        for (int i5 = 0; i5 < size; i5++) {
            this.defeated.get(i5).aR.num = this.defeated.get(i5).re;
            if (this.defeated.get(i5).l > 0) {
                Game.getProvince(i).updateArmy_AfterBattle(this.defeated.get(i5).aK, this.defeated.get(i5).aR.key, this.defeated.get(i5).aR.num, this.defeated.get(i5).aR.mo);
            }
        }
        try {
            this.armyDivisionsKeys.clear();
            try {
                int size2 = this.firstLine.size();
                for (int i6 = 0; i6 < size2; i6++) {
                    if (this.firstLine.get(i6) != null) {
                        addArmyDivisionKey(this.firstLine.get(i6).aK);
                    }
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
            try {
                int size3 = this.secondLine.size();
                for (int i7 = 0; i7 < size3; i7++) {
                    if (this.secondLine.get(i7) != null) {
                        addArmyDivisionKey(this.secondLine.get(i7).aK);
                    }
                }
            } catch (Exception e2) {
                CFG.exceptionStack(e2);
            }
            int size4 = this.reserveFirstLine.size();
            for (int i8 = 0; i8 < size4; i8++) {
                addArmyDivisionKey(this.reserveFirstLine.get(i8).aK);
            }
            int size5 = this.reserveSecondLine.size();
            for (int i9 = 0; i9 < size5; i9++) {
                addArmyDivisionKey(this.reserveSecondLine.get(i9).aK);
            }
            int size6 = this.defeated.size();
            for (int i10 = 0; i10 < size6; i10++) {
                addArmyDivisionKey(this.defeated.get(i10).aK);
            }
            for (int size7 = this.armyDivisionsKeys.size() - 1; size7 >= 0; size7--) {
                Game.getProvince(i).updateArmy_BattleSummary(this.armyDivisionsKeys.get(size7));
            }
            this.armyDivisionsKeys.clear();
        } catch (Exception e3) {
            CFG.exceptionStack(e3);
        }
        if (!z && (armyGeneral = this.armyGeneral) != null) {
            int i11 = i2 + 1;
            armyGeneral.addCombatExperience(Math.min(GameValues.generals.COMBAT_EXPERIENCE_BATTLE_WON_LIMIT, Math.min(GameValues.generals.COMBAT_EXPERIENCE_BATTLE_WON_LIMIT_PER_DAY_OF_BATTLE * i11, (GameValues.generals.COMBAT_EXPERIENCE_BATTLE_WON_EXPERIENCE_PER_DAY_OF_BATTLE * i11) + GameValues.generals.COMBAT_EXPERIENCE_BATTLE_WON_MIN + Game.oR.nextInt(GameValues.generals.COMBAT_EXPERIENCE_BATTLE_WON_MIN_RANDOM))));
        }
        if (z) {
            buildArmyDivisionsKeys();
            if (z2 && i2 < GameValues.battle.BATTLE_ARMY_DESTROYED_ROUND_ID) {
                while (i3 < this.lDefeatedArmyDivisionKeys.size()) {
                    Game.getProvince(i).armyDestroyed(this.lDefeatedArmyDivisionKeys.get(i3));
                    i3++;
                }
                return;
            }
            int i12 = 0;
            while (i3 < this.lDefeatedArmyDivisionKeys.size()) {
                ArmyDivision army = Game.getProvince(i).getArmy(this.lDefeatedArmyDivisionKeys.get(i3));
                if (army == null || (army.iArmy / Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE) * army.iArmyRegimentSize >= GameValues.battle.BATTLE_ARMY_DESTROYED_IF_MANPOWER_PERC_BELOW) {
                    int iArmyRetreat = Game.getProvince(i).armyRetreat(this.lDefeatedArmyDivisionKeys.get(i3), i12);
                    if (iArmyRetreat < 0) {
                        Game.getProvince(i).armyDestroyed(this.lDefeatedArmyDivisionKeys.get(i3));
                    } else {
                        i12 = iArmyRetreat;
                    }
                } else {
                    Game.getProvince(i).armyDestroyed(this.lDefeatedArmyDivisionKeys.get(i3));
                }
                i3++;
            }
        }
    }

    public final void updateCasualties() {
        for (int i = 0; i < GameValues.battle.BATTLE_MAX_BATTLE_WIDTH; i++) {
            if (this.firstLine.get(i) != null) {
                if (this.firstLine.get(i).cL > this.firstLine.get(i).aR.num) {
                    this.firstLine.get(i).cL = this.firstLine.get(i).aR.num;
                }
                this.firstLine.get(i).ca += this.firstLine.get(i).cL;
                this.firstLine.get(i).aR.num -= this.firstLine.get(i).cL;
                this.iCasualties += this.firstLine.get(i).cL;
                this.numOfUnits -= this.firstLine.get(i).cL;
                this.numOfUnitsOnBattlefield -= this.firstLine.get(i).cL;
            }
        }
    }

    public final void updateDefeated() {
        int i;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            try {
                boolean z = true;
                if (i3 >= GameValues.battle.BATTLE_MAX_BATTLE_WIDTH) {
                    break;
                }
                if (this.firstLine.get(i3) != null && this.firstLine.get(i3).aR.num <= 0) {
                    if (this.firstLine.get(i3).f == 0) {
                        this.defeated.add(this.firstLine.get(i3));
                        this.firstLine.get(i3).f = (byte) 1;
                    }
                    if (this.reserveFirstLine.size() > 0) {
                        this.firstLine.set(i3, this.reserveFirstLine.get(0));
                        this.inReserve -= this.reserveFirstLine.get(0).aR.num;
                        this.numOfUnitsOnBattlefield += this.reserveFirstLine.get(0).aR.num;
                        this.reserveFirstLine.remove(0);
                    } else {
                        int i5 = 0;
                        while (true) {
                            if (i5 >= this.secondLine.size()) {
                                z = false;
                                break;
                            } else {
                                if (this.secondLine.get(i5) != null && ArmyManager.lUnitsTypes.get(this.secondLine.get(i5).aR.uID).Line < 2) {
                                    this.firstLine.set(i3, this.secondLine.get(i5));
                                    this.secondLine.set(i5, null);
                                    break;
                                }
                                i5++;
                            }
                        }
                        if (!z) {
                            if (this.reserveSecondLine.size() > 0) {
                                this.firstLine.set(i3, this.reserveSecondLine.get(0));
                                this.inReserve -= this.reserveSecondLine.get(0).aR.num;
                                this.numOfUnitsOnBattlefield += this.reserveSecondLine.get(0).aR.num;
                                this.reserveSecondLine.remove(0);
                            } else if (this.secondLine.get(i3) != null) {
                                this.firstLine.set(i3, this.secondLine.get(i3));
                                this.secondLine.set(i3, null);
                            } else if (i3 >= GameValues.battle.BATTLE_MAX_BATTLE_WIDTH / 2) {
                                int i6 = i3 + 1;
                                if (i6 < GameValues.battle.BATTLE_MAX_BATTLE_WIDTH) {
                                    BattleRegiment battleRegiment = this.firstLine.get(i3);
                                    List<BattleRegiment> list = this.firstLine;
                                    list.set(i3, list.get(i6));
                                    this.firstLine.set(i6, battleRegiment);
                                    i4++;
                                }
                            } else if (i3 > 0) {
                                BattleRegiment battleRegiment2 = this.firstLine.get(i3);
                                List<BattleRegiment> list2 = this.firstLine;
                                int i7 = i3 - 1;
                                list2.set(i3, list2.get(i7));
                                this.firstLine.set(i7, battleRegiment2);
                                i4++;
                            }
                        }
                    }
                }
                i3++;
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
        if (i4 > 0) {
            for (int i8 = 0; i8 < i4; i8++) {
                for (int i9 = 0; i9 < GameValues.battle.BATTLE_MAX_BATTLE_WIDTH; i9++) {
                    if (this.firstLine.get(i9) != null && this.firstLine.get(i9).aR.num <= 0) {
                        if (i9 >= GameValues.battle.BATTLE_MAX_BATTLE_WIDTH / 2) {
                            int i10 = i9 + 1;
                            if (i10 < GameValues.battle.BATTLE_MAX_BATTLE_WIDTH) {
                                BattleRegiment battleRegiment3 = this.firstLine.get(i9);
                                List<BattleRegiment> list3 = this.firstLine;
                                list3.set(i9, list3.get(i10));
                                this.firstLine.set(i10, battleRegiment3);
                            }
                        } else if (i9 > 0) {
                            BattleRegiment battleRegiment4 = this.firstLine.get(i9);
                            List<BattleRegiment> list4 = this.firstLine;
                            int i11 = i9 - 1;
                            list4.set(i9, list4.get(i11));
                            this.firstLine.set(i11, battleRegiment4);
                        }
                    }
                }
            }
        }
        for (int i12 = 0; i12 < GameValues.battle.BATTLE_MAX_BATTLE_WIDTH; i12++) {
            if (this.firstLine.get(i12) != null) {
                if (this.firstLine.get(i12).f <= 0) {
                    break;
                } else {
                    this.firstLine.set(i12, null);
                }
            }
        }
        for (int i13 = GameValues.battle.BATTLE_MAX_BATTLE_WIDTH - 1; i13 >= 0; i13--) {
            if (this.firstLine.get(i13) != null) {
                if (this.firstLine.get(i13).f <= 0) {
                    break;
                } else {
                    this.firstLine.set(i13, null);
                }
            }
        }
        if (i4 > 0) {
            int i14 = 0;
            while (true) {
                i = -1;
                if (i14 >= GameValues.battle.BATTLE_MAX_BATTLE_WIDTH) {
                    i14 = -1;
                    break;
                } else if (this.firstLine.get(i14) != null) {
                    break;
                } else {
                    i14++;
                }
            }
            int i15 = GameValues.battle.BATTLE_MAX_BATTLE_WIDTH - 1;
            while (true) {
                if (i15 < 0) {
                    i15 = -1;
                    break;
                } else if (this.firstLine.get(i15) != null) {
                    break;
                } else {
                    i15--;
                }
            }
            if (i14 >= 0 && i15 >= 0) {
                ArrayList arrayList = new ArrayList();
                int i16 = 0;
                for (int i17 = i14; i17 <= i15; i17++) {
                    if (this.firstLine.get(i17) == null) {
                        i16++;
                    } else {
                        arrayList.add(this.firstLine.get(i17));
                        this.firstLine.set(i17, null);
                    }
                }
                try {
                    int i18 = i15 - i16;
                    int iMax = (int) Math.max(0.0d, ((double) (GameValues.battle.BATTLE_MAX_BATTLE_WIDTH / 2)) - Math.floor((i18 - i14) / 2.0f));
                    int i19 = 0;
                    while (i14 <= i18) {
                        this.firstLine.set(iMax, (BattleRegiment) arrayList.get(i19));
                        i14++;
                        i19++;
                        iMax++;
                    }
                } catch (Exception unused) {
                }
            }
            int i20 = 0;
            while (true) {
                if (i20 >= GameValues.battle.BATTLE_MAX_BATTLE_WIDTH) {
                    i20 = -1;
                    break;
                } else if (this.secondLine.get(i20) != null) {
                    break;
                } else {
                    i20++;
                }
            }
            for (int i21 = GameValues.battle.BATTLE_MAX_BATTLE_WIDTH - 1; i21 >= 0; i21--) {
                if (this.secondLine.get(i21) != null) {
                    i = i21;
                    break;
                }
            }
            if (i20 < 0 || i < 0) {
                return;
            }
            ArrayList arrayList2 = new ArrayList();
            int i22 = 0;
            for (int i23 = i20; i23 <= i; i23++) {
                if (this.secondLine.get(i23) == null) {
                    i22++;
                } else {
                    arrayList2.add(this.secondLine.get(i23));
                    this.secondLine.set(i23, null);
                }
            }
            try {
                int i24 = i - i22;
                int iMax2 = (int) Math.max(0.0d, ((double) (GameValues.battle.BATTLE_MAX_BATTLE_WIDTH / 2)) - Math.floor((i24 - i20) / 2.0f));
                while (i20 <= i24) {
                    this.secondLine.set(iMax2, (BattleRegiment) arrayList2.get(i2));
                    i20++;
                    i2++;
                    iMax2++;
                }
            } catch (Exception unused2) {
            }
        }
    }

    public final void updateDiceRoll() {
        this.diceRollGeneral = Game.oR.nextInt(GameValues.battle.BATTLE_MAX_DICE_ROLL) + 1;
        for (int i = 0; i < GameValues.battle.BATTLE_MAX_BATTLE_WIDTH; i++) {
            if (this.firstLine.get(i) != null) {
                this.firstLine.get(i).d = Game.oR.nextInt(GameValues.battle.BATTLE_MAX_DICE_ROLL_REGIMENT);
            }
            if (this.secondLine.get(i) != null) {
                this.secondLine.get(i).d = Game.oR.nextInt(GameValues.battle.BATTLE_MAX_DICE_ROLL_REGIMENT);
            }
        }
    }

    public void updateInBattle_Load(int i) {
        List<String> battleArmiesKeys = getBattleArmiesKeys();
        for (int size = battleArmiesKeys.size() - 1; size >= 0; size--) {
            int armyKeyID = Game.getProvince(i).getArmyKeyID(battleArmiesKeys.get(size));
            if (armyKeyID >= 0) {
                Game.getProvince(i).getArmy(armyKeyID).inBattle = true;
            }
        }
    }

    public void updateLoaded_Load() {
        try {
            for (int size = this.firstLine.size() - 1; size >= 0; size--) {
                if (this.firstLine.get(size) != null) {
                    this.firstLine.get(size).l = (byte) 1;
                }
            }
            for (int size2 = this.secondLine.size() - 1; size2 >= 0; size2--) {
                if (this.secondLine.get(size2) != null) {
                    this.secondLine.get(size2).l = (byte) 1;
                }
            }
            for (int size3 = this.reserveFirstLine.size() - 1; size3 >= 0; size3--) {
                if (this.reserveFirstLine.get(size3) != null) {
                    this.reserveFirstLine.get(size3).l = (byte) 1;
                }
            }
            for (int size4 = this.reserveSecondLine.size() - 1; size4 >= 0; size4--) {
                if (this.reserveSecondLine.get(size4) != null) {
                    this.reserveSecondLine.get(size4).l = (byte) 1;
                }
            }
            for (int size5 = this.defeated.size() - 1; size5 >= 0; size5--) {
                if (this.defeated.get(size5) != null) {
                    this.defeated.get(size5).l = (byte) 1;
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateMoraleAndRetreat() {
        for (int i = 0; i < GameValues.battle.BATTLE_MAX_BATTLE_WIDTH; i++) {
            if (this.firstLine.get(i) != null && this.firstLine.get(i).cL > 0 && this.firstLine.get(i).aR.num > 0 && this.firstLine.get(i).cL > 0) {
                this.firstLine.get(i).aR.mo = Math.max(0.0f, this.firstLine.get(i).aR.mo - ((this.firstLine.get(i).cL / this.firstLine.get(i).aR.num) * GameValues.battle.BATTLE_MORALE_LOSS_MULTIPLIER));
                if (this.firstLine.get(i).aR.mo < 0.96f) {
                    if (this.firstLine.get(i).aR.mo <= GameValues.battle.BATTLE_FULL_RETREAT_IF_MORALE_BELOW) {
                        this.firstLine.get(i).rL = this.firstLine.get(i).aR.num;
                        this.firstLine.get(i).re += this.firstLine.get(i).rL;
                        this.firstLine.get(i).aR.num -= this.firstLine.get(i).rL;
                        this.iRetreated += this.firstLine.get(i).rL;
                        this.numOfUnits -= this.firstLine.get(i).rL;
                        this.numOfUnitsOnBattlefield -= this.firstLine.get(i).rL;
                    } else {
                        this.firstLine.get(i).rL = (int) Math.max(0.0f, this.firstLine.get(i).cL * (1.0f - this.firstLine.get(i).aR.mo));
                        if (this.firstLine.get(i).rL > 0) {
                            if (this.firstLine.get(i).rL > this.firstLine.get(i).aR.num) {
                                this.firstLine.get(i).rL = this.firstLine.get(i).aR.num;
                            }
                            this.firstLine.get(i).re += this.firstLine.get(i).rL;
                            this.firstLine.get(i).aR.num -= this.firstLine.get(i).rL;
                            this.iRetreated += this.firstLine.get(i).rL;
                            this.numOfUnits -= this.firstLine.get(i).rL;
                            this.numOfUnitsOnBattlefield -= this.firstLine.get(i).rL;
                        }
                    }
                }
            }
        }
        updateAverageMoraleOnBattleField();
    }

    public final void updateMoraleEndOfBattle(float f) {
        for (int size = this.firstLine.size() - 1; size >= 0; size--) {
            if (this.firstLine.get(size) != null) {
                this.firstLine.get(size).aR.mo = Math.max(f, this.firstLine.get(size).aR.mo);
            }
        }
        for (int size2 = this.secondLine.size() - 1; size2 >= 0; size2--) {
            if (this.secondLine.get(size2) != null) {
                this.secondLine.get(size2).aR.mo = Math.max(f, this.secondLine.get(size2).aR.mo);
            }
        }
        for (int size3 = this.reserveFirstLine.size() - 1; size3 >= 0; size3--) {
            this.reserveFirstLine.get(size3).aR.mo = Math.max(f, this.reserveFirstLine.get(size3).aR.mo);
        }
        for (int size4 = this.reserveSecondLine.size() - 1; size4 >= 0; size4--) {
            this.reserveSecondLine.get(size4).aR.mo = Math.max(f, this.reserveSecondLine.get(size4).aR.mo);
        }
        for (int size5 = this.defeated.size() - 1; size5 >= 0; size5--) {
            this.defeated.get(size5).aR.mo = Math.max(f, this.defeated.get(size5).aR.mo);
        }
    }

    public final void updateNumOfUnits() {
        this.numOfUnits = 0;
        for (int i = 0; i < GameValues.battle.BATTLE_MAX_BATTLE_WIDTH; i++) {
            if (this.firstLine.get(i) != null) {
                this.numOfUnits += this.firstLine.get(i).aR.num;
            }
            if (this.secondLine.get(i) != null) {
                this.numOfUnits += this.secondLine.get(i).aR.num;
            }
        }
        for (int size = this.reserveFirstLine.size() - 1; size >= 0; size--) {
            this.numOfUnits += this.reserveFirstLine.get(size).aR.num;
        }
        for (int size2 = this.reserveSecondLine.size() - 1; size2 >= 0; size2--) {
            this.numOfUnits += this.reserveSecondLine.get(size2).aR.num;
        }
    }
}
