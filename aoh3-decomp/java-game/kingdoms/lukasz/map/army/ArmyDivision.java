package aoc.kingdoms.lukasz.map.army;

import aoc.kingdoms.lukasz.jakowski.AI.Army.AI_Army_Composition;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.GlyphLayout_Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SaveLoad.SaveGameManager;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRanking;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy;
import aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy_NewArmy;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ArmyDivision {
    public boolean addedToBattle;
    public ArmyGeneral armyGeneral;
    public int civID;
    private float fAverageSpeed;
    public float fMaintenanceCost;
    public float fMorale;
    public int fMoraleDraw;
    public int iArmy;
    public int iArmyExtraPosX;
    public int iArmyOfProvinceID;
    public int iArmyRegimentSize;
    public int iArmyWidth;
    public int iShiftX;
    public int iShiftX_Scaled;
    public int iShiftY;
    public int iShiftY_Scaled;
    public byte iStack;
    public boolean inBattle;
    public boolean inMovement;
    public boolean inRetreat;
    public String key;
    public List<ArmyRegiment> lArmyRegiment;
    public int provinceID;
    public String sArmy;
    public boolean updateMorale;

    public ArmyDivision() {
        this.lArmyRegiment = new ArrayList();
        this.iArmyRegimentSize = 0;
        this.armyGeneral = null;
        this.inRetreat = false;
        this.fMaintenanceCost = 0.0f;
        this.fAverageSpeed = 1.0f;
        this.fMorale = 0.0f;
        this.fMoraleDraw = 0;
        this.inMovement = false;
        this.inBattle = false;
        this.addedToBattle = false;
        this.iArmy = 0;
        this.updateMorale = false;
        this.iStack = (byte) 0;
    }

    public ArmyDivision(int i, int i2, List<ArmyRegiment> list) {
        this.lArmyRegiment = new ArrayList();
        this.iArmyRegimentSize = 0;
        this.armyGeneral = null;
        this.inRetreat = false;
        this.fMaintenanceCost = 0.0f;
        this.fAverageSpeed = 1.0f;
        this.fMorale = 0.0f;
        this.fMoraleDraw = 0;
        this.inMovement = false;
        this.inBattle = false;
        this.addedToBattle = false;
        this.iArmy = 0;
        this.updateMorale = false;
        this.iStack = (byte) 0;
        this.civID = i;
        this.provinceID = i2;
        this.iArmyOfProvinceID = i2;
        this.key = CFG.extraRandomTag();
        sortArmyRegiment(list);
        updateArmy(true);
        updateMorale();
        setArmyGeneral(null);
    }

    public ArmyDivision(int i, int i2, List<ArmyRegiment> list, ArmyGeneral armyGeneral) {
        this.lArmyRegiment = new ArrayList();
        this.iArmyRegimentSize = 0;
        this.armyGeneral = null;
        this.inRetreat = false;
        this.fMaintenanceCost = 0.0f;
        this.fAverageSpeed = 1.0f;
        this.fMorale = 0.0f;
        this.fMoraleDraw = 0;
        this.inMovement = false;
        this.inBattle = false;
        this.addedToBattle = false;
        this.iArmy = 0;
        this.updateMorale = false;
        this.iStack = (byte) 0;
        this.civID = i;
        this.provinceID = i2;
        this.iArmyOfProvinceID = i2;
        this.key = CFG.extraRandomTag();
        sortArmyRegiment(list);
        updateArmy(true);
        updateMorale();
        setArmyGeneral(armyGeneral);
    }

    public ArmyDivision(int i, List<InGame_RecruitArmy_NewArmy.CreateNewArmy> list) {
        this.lArmyRegiment = new ArrayList();
        this.iArmyRegimentSize = 0;
        this.armyGeneral = null;
        this.inRetreat = false;
        this.fMaintenanceCost = 0.0f;
        this.fAverageSpeed = 1.0f;
        this.fMorale = 0.0f;
        this.fMoraleDraw = 0;
        this.inMovement = false;
        this.inBattle = false;
        this.addedToBattle = false;
        this.iArmy = 0;
        this.updateMorale = false;
        this.iStack = (byte) 0;
        this.civID = i;
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            for (int i3 = 0; i3 < list.get(i2).numOfRegiments; i3++) {
                arrayList.add(new ArmyRegiment(list.get(i2).iUnitID, list.get(i2).iArmyID));
            }
        }
        sortArmyRegiment(arrayList);
        setArmyGeneral(null);
    }

    public ArmyDivision(SaveGameManager.Save_Provinces_ArmyDivision save_Provinces_ArmyDivision) {
        this.lArmyRegiment = new ArrayList();
        this.iArmyRegimentSize = 0;
        this.armyGeneral = null;
        this.inRetreat = false;
        this.fMaintenanceCost = 0.0f;
        this.fAverageSpeed = 1.0f;
        this.fMorale = 0.0f;
        this.fMoraleDraw = 0;
        this.inMovement = false;
        this.inBattle = false;
        this.addedToBattle = false;
        this.iArmy = 0;
        this.updateMorale = false;
        this.iStack = (byte) 0;
        this.civID = save_Provinces_ArmyDivision.c;
        this.provinceID = save_Provinces_ArmyDivision.p;
        this.iArmyOfProvinceID = save_Provinces_ArmyDivision.p;
        this.key = save_Provinces_ArmyDivision.k;
        this.inRetreat = save_Provinces_ArmyDivision.t;
        this.armyGeneral = save_Provinces_ArmyDivision.g;
        ArrayList arrayList = new ArrayList();
        int size = save_Provinces_ArmyDivision.r.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(new ArmyRegiment(save_Provinces_ArmyDivision.r.get(i)));
        }
        sortArmyRegiment(arrayList);
        updateArmy(true);
        updateMorale();
    }

    public final void addRegiment(ArmyRegiment armyRegiment) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.iArmyRegimentSize; i++) {
            arrayList.add(this.lArmyRegiment.get(i));
        }
        arrayList.add(armyRegiment);
        sortArmyRegiment(arrayList);
        updateArmy(false);
        updateMorale();
    }

    public final int defaultShiftX() {
        return (-ProvinceDrawArmy.getArmyWidth(this.iArmyWidth)) / 2;
    }

    public final int defaultShiftY() {
        return (-ProvinceDrawArmy.getArmyHeight()) / 2;
    }

    public AI_Army_Composition getArmyComposition() {
        AI_Army_Composition aI_Army_Composition = new AI_Army_Composition();
        for (int i = 0; i < this.iArmyRegimentSize; i++) {
            if (ArmyManager.lUnitsTypes.get(this.lArmyRegiment.get(i).uID).Line == 0) {
                aI_Army_Composition.numFirstLine++;
            } else if (ArmyManager.lUnitsTypes.get(this.lArmyRegiment.get(i).uID).Line == 1) {
                aI_Army_Composition.numFlank++;
            } else if (ArmyManager.lArmy.get(this.lArmyRegiment.get(i).uID).get(this.lArmyRegiment.get(i).aID).SiegeUnit) {
                aI_Army_Composition.numSiege++;
            } else if (!ArmyManager.lArmy.get(this.lArmyRegiment.get(i).uID).get(this.lArmyRegiment.get(i).aID).isSettler) {
                aI_Army_Composition.numSupport++;
            }
        }
        aI_Army_Composition.numOfRegiments = aI_Army_Composition.numFirstLine + aI_Army_Composition.numFlank + aI_Army_Composition.numSupport + aI_Army_Composition.numSiege;
        return aI_Army_Composition;
    }

    public final float getArmyMovementSpeed() {
        return Math.max(0.1f, this.fAverageSpeed * ((Game.getCiv(this.civID).getWarWeariness() * GameValues.warWeariness.WW_ARMY_MOVEMENT_SPEED_PER_POINT) + 1.0f + (Game.getCiv(this.civID).civBonuses.ArmyMovementSpeed / 100.0f)));
    }

    public final float getCivilizationRanking_ArmyScore() {
        float attack = 0.0f;
        try {
            int size = this.lArmyRegiment.size();
            for (int i = 0; i < size; i++) {
                attack += (GameValues.civRank.CIV_SCORE_MAX_PER_REGIMENT * (ArmyManager.lArmy.get(this.lArmyRegiment.get(i).uID).get(this.lArmyRegiment.get(i).aID).getAttack() + ArmyManager.lArmy.get(this.lArmyRegiment.get(i).uID).get(this.lArmyRegiment.get(i).aID).getDefense())) / CivilizationRanking.bestArmyAttackDefense;
            }
        } catch (Exception unused) {
        }
        return attack;
    }

    public final int getNumberOfSettlers() {
        int i = 0;
        for (int i2 = this.iArmyRegimentSize - 1; i2 >= 0; i2--) {
            if (ArmyManager.lArmy.get(this.lArmyRegiment.get(i2).uID).get(this.lArmyRegiment.get(i2).aID).isSettler) {
                i += this.lArmyRegiment.get(i2).num;
            }
        }
        return i;
    }

    public final float getPercOfTotalUnits() {
        return this.iArmy / (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE * this.iArmyRegimentSize);
    }

    public float getReinforceCost(int i, int i2, int i3, float f) {
        return ArmyManager.lArmy.get(i2).get(i3).Cost * (i / f) * GameValues.army.REINFORCE_ARMY_COST_MODIFIER;
    }

    public final float getSiegeProgressPerDay() {
        float f = 0.0f;
        for (int i = 0; i < this.iArmyRegimentSize; i++) {
            f += (ArmyManager.lArmy.get(this.lArmyRegiment.get(i).uID).get(this.lArmyRegiment.get(i).aID).SiegeProgress * this.lArmyRegiment.get(i).num) / Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE;
        }
        return f * (Game.getCiv(this.civID).civBonuses.SiegeEffectiveness + 1.0f + (Game.getCiv(this.civID).getWarWeariness() * GameValues.warWeariness.WW_SIEGE_EFFECTIVENESS_PER_POINT));
    }

    public final void removeAllSettlers() {
        int i = 0;
        for (int i2 = this.iArmyRegimentSize - 1; i2 >= 0; i2--) {
            if (ArmyManager.lArmy.get(this.lArmyRegiment.get(i2).uID).get(this.lArmyRegiment.get(i2).aID).isSettler) {
                this.lArmyRegiment.remove(i2);
                i++;
                if (i >= GameValues.colonization.COLONIZATION_MAX_SETTLERS) {
                    break;
                }
            }
        }
        this.iArmyRegimentSize = this.lArmyRegiment.size();
        updateArmy(false);
    }

    public final void removeRegiment(int i) {
        this.lArmyRegiment.remove(i);
        this.iArmyRegimentSize = this.lArmyRegiment.size();
        updateArmy(false);
    }

    public final boolean removeRegiment(String str, boolean z, int i) {
        for (int i2 = 0; i2 < this.iArmyRegimentSize; i2++) {
            if (this.lArmyRegiment.get(i2).key.equals(str)) {
                if (z) {
                    Game.getCiv(i).setManpower(Game.getCiv(i).fManpower + ((double) ((int) Math.max(0.0f, this.lArmyRegiment.get(i2).num * Game.getManpowerRecoveryFromADisbandedArmy(i)))));
                }
                this.lArmyRegiment.remove(i2);
                this.iArmyRegimentSize = this.lArmyRegiment.size();
                updateArmy(false);
                updateMorale();
                return true;
            }
        }
        return false;
    }

    public final void removeRegiment_ScenarioEditor(int i, int i2) {
        for (int i3 = this.iArmyRegimentSize - 1; i3 >= 0; i3--) {
            if (this.lArmyRegiment.get(i3).uID == i && this.lArmyRegiment.get(i3).aID == i2) {
                this.lArmyRegiment.remove(i3);
                this.iArmyRegimentSize = this.lArmyRegiment.size();
                updateArmy(false);
                return;
            }
        }
    }

    public final void setArmyGeneral(ArmyGeneral armyGeneral) {
        this.armyGeneral = armyGeneral;
        if (armyGeneral == null) {
            Game.getCiv(this.civID).armiesWithoutGenerals.addArmyKey(this.key);
        } else {
            Game.getCiv(this.civID).armiesWithoutGenerals.removeArmyKey(this.key);
        }
    }

    public final void setInMovement(boolean z) {
        this.inMovement = z;
        if (z) {
            this.inBattle = false;
        } else {
            this.inRetreat = false;
        }
    }

    public final void sortArmyRegiment(List<ArmyRegiment> list) {
        this.lArmyRegiment.clear();
        while (list.size() > 0) {
            int size = list.size();
            int i = 0;
            for (int i2 = 1; i2 < size; i2++) {
                if (ArmyManager.lUnitsTypes.get(list.get(i2).uID).Line < ArmyManager.lUnitsTypes.get(list.get(i).uID).Line || (ArmyManager.lUnitsTypes.get(list.get(i2).uID).Line == ArmyManager.lUnitsTypes.get(list.get(i).uID).Line && (list.get(i2).uID < list.get(i).uID || (list.get(i2).uID == list.get(i).uID && list.get(i2).aID < list.get(i).aID)))) {
                    i = i2;
                }
            }
            this.lArmyRegiment.add(list.get(i));
            list.remove(i);
        }
        this.iArmyRegimentSize = this.lArmyRegiment.size();
    }

    public final void updateArmy(boolean z) {
        this.iArmy = 0;
        this.fAverageSpeed = 0.0f;
        int i = 0;
        while (true) {
            int i2 = this.iArmyRegimentSize;
            if (i >= i2) {
                this.fAverageSpeed /= i2;
                this.iStack = (byte) 0;
                updateMaintenanceCost();
                Renderer.addSimpleTask_ArmyWidth(new Renderer.SimpleTaskArmyText(this.key, this, z));
                return;
            }
            this.iArmy += this.lArmyRegiment.get(i).num;
            this.fAverageSpeed += ArmyManager.lArmy.get(this.lArmyRegiment.get(i).uID).get(this.lArmyRegiment.get(i).aID).MovementSpeed;
            i++;
        }
    }

    public final void updateArmyWidth_Just(boolean z) {
        try {
            if (Game.FOG_OF_WAR && GameValues.fog.HIDE_ARMIES && this.civID != Game.player.iCivID && !DiplomacyManager.isAlly(this.civID, Game.player.iCivID) && !DiplomacyManager.isAlly(Game.getProvince(this.provinceID).getCivID(), Game.player.iCivID)) {
                this.sArmy = GameValues.fog.TEXT_UNKNOWN_ARMIES;
            } else if (this.iArmy < 1000) {
                this.sArmy = "" + CFG.getPrecision2(this.iArmy / 1000.0f, 10);
            } else {
                this.sArmy = "" + (this.iArmy / 1000);
            }
            GlyphLayout_Game glyphLayout_Game = new GlyphLayout_Game();
            if (!glyphLayout_Game.setText(Renderer.fontArmy_GlyphLayout, this.sArmy)) {
                byte b = this.iStack;
                this.iStack = (byte) (b + 1);
                if (b < 9) {
                    updateArmyWidth_Just(z);
                    return;
                }
            }
            int i = (int) glyphLayout_Game.width;
            if (!glyphLayout_Game.setText(Renderer.fontArmy_GlyphLayout, (this.sArmy.length() <= 2 || this.sArmy.contains(".")) ? "999" : this.sArmy)) {
                byte b2 = this.iStack;
                this.iStack = (byte) (b2 + 1);
                if (b2 < 9) {
                    updateArmyWidth_Just(z);
                    return;
                }
            }
            int i2 = (int) glyphLayout_Game.width;
            this.iArmyWidth = i2;
            this.iArmyExtraPosX = (i2 / 2) - (i / 2);
            if (z) {
                this.iShiftX = defaultShiftX();
                this.iShiftY = defaultShiftY();
                this.iShiftX_Scaled = 0;
                this.iShiftY_Scaled = 0;
                Game.getProvince(this.provinceID).updateArmyPosY();
            }
        } catch (Exception e) {
            byte b3 = this.iStack;
            this.iStack = (byte) (b3 + 1);
            if (b3 < 9) {
                updateArmyWidth_Just(z);
            } else {
                CFG.exceptionStack(e);
                this.iArmyWidth = CFG.PADDING;
            }
        }
    }

    public final void updateMaintenanceCost() {
        this.fMaintenanceCost = 0.0f;
        for (int i = 0; i < this.iArmyRegimentSize; i++) {
            this.fMaintenanceCost += ArmyManager.lArmy.get(this.lArmyRegiment.get(i).uID).get(this.lArmyRegiment.get(i).aID).MaintenanceCost;
        }
        Game.gameThread.addCivUpdateArmyMaintenance(this.civID);
    }

    public final void updateMorale() {
        this.fMorale = 0.0f;
        for (int i = this.iArmyRegimentSize - 1; i >= 0; i--) {
            this.fMorale += this.lArmyRegiment.get(i).mo;
        }
        this.fMorale /= this.iArmyRegimentSize;
        this.fMoraleDraw = Math.max(0, Math.min(GameValues.inGame.ARMY_LEFT_IMAGES, (int) (this.fMorale * 10.0f)));
    }

    public final void updateMorale_Regiments(float f, float f2) {
        this.updateMorale = false;
        for (int i = 0; i < this.iArmyRegimentSize; i++) {
            if (this.lArmyRegiment.get(i).mo != f) {
                this.lArmyRegiment.get(i).mo = Math.min(f, this.lArmyRegiment.get(i).mo + f2);
                this.updateMorale = true;
            }
        }
        if (this.updateMorale) {
            updateMorale();
        }
    }

    public final void updateRegiment(List<ArmyRegiment> list) {
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(list.get(i));
        }
        sortArmyRegiment(arrayList);
        updateArmy(true);
        updateMorale();
        updateSpeed();
    }

    public final float updateReinforce(int i, float f) {
        float reinforceCost = 0.0f;
        if (this.iArmy < this.iArmyRegimentSize * Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE) {
            for (int i2 = 0; i2 < this.iArmyRegimentSize; i2++) {
                if (this.lArmyRegiment.get(i2).num < Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE) {
                    if (this.lArmyRegiment.get(i2).num + i > Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE) {
                        int i3 = Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE - this.lArmyRegiment.get(i2).num;
                        reinforceCost += getReinforceCost(i3, this.lArmyRegiment.get(i2).uID, this.lArmyRegiment.get(i2).aID, f);
                        this.lArmyRegiment.get(i2).num += i3;
                        Game.getCiv(this.civID).fManpower -= (double) i3;
                    } else {
                        reinforceCost += getReinforceCost(i, this.lArmyRegiment.get(i2).uID, this.lArmyRegiment.get(i2).aID, f);
                        this.lArmyRegiment.get(i2).num += i;
                        Game.getCiv(this.civID).fManpower -= (double) i;
                    }
                    i = (int) Math.min(i, Game.getCiv(this.civID).fManpower);
                    if (i <= 1) {
                        break;
                    }
                }
            }
            updateArmy(false);
        }
        return reinforceCost;
    }

    public final void updateSpeed() {
        this.fAverageSpeed = 0.0f;
        int i = 0;
        while (true) {
            int i2 = this.iArmyRegimentSize;
            if (i >= i2) {
                this.fAverageSpeed /= i2;
                return;
            } else {
                this.fAverageSpeed += ArmyManager.lArmy.get(this.lArmyRegiment.get(i).uID).get(this.lArmyRegiment.get(i).aID).MovementSpeed;
                i++;
            }
        }
    }
}
