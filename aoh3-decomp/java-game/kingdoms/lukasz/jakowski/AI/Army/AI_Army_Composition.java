package aoc.kingdoms.lukasz.jakowski.AI.Army;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.battles.BattleManager;
import aoc.kingdoms.lukasz.map.civilization.Civilization;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_Army_Composition {
    public int numFirstLine;
    public int numFlank;
    public int numOfRegiments;
    public int numSiege;
    public int numSupport;

    public AI_Army_Composition() {
        this.numFirstLine = 0;
        this.numFlank = 0;
        this.numSupport = 0;
        this.numSiege = 0;
        this.numOfRegiments = 0;
    }

    public AI_Army_Composition(int i, int i2) {
        int i3;
        this.numFirstLine = 0;
        this.numFlank = 0;
        this.numSupport = 0;
        this.numSiege = 0;
        this.numOfRegiments = 0;
        Civilization civ = Game.getCiv(i);
        int iMin = Math.min(BattleManager.getBattleWidth(i), i2 / 2);
        this.numSupport = iMin;
        float f = i2 - iMin;
        this.numFirstLine = (int) Math.ceil(civ.aiCiv.armies_FirstLine_Perc * f);
        this.numFlank = (int) (f * civ.aiCiv.armies_FlankLine_Perc);
        if (civ.unitsBest_FirstLineSize <= 0) {
            i3 = this.numFirstLine + 0;
            this.numFirstLine = 0;
        } else {
            i3 = 0;
        }
        if (civ.unitsBest_FlankSize <= 0) {
            i3 += this.numFlank;
            this.numFlank = 0;
        }
        if (civ.unitsBest_SupportSize <= 0) {
            i3 += this.numSupport;
            this.numSupport = 0;
        }
        if (i3 > 0) {
            if (civ.unitsBest_SupportSize > 0) {
                if (civ.unitsBest_FirstLineSize > 0) {
                    double d = i3 / 2.0f;
                    this.numFirstLine = (int) (((double) this.numFirstLine) + Math.ceil(d));
                    this.numSupport = (int) (((double) this.numSupport) + Math.floor(d));
                } else if (civ.unitsBest_FlankSize > 0) {
                    double d2 = i3 / 2.0f;
                    this.numFlank = (int) (((double) this.numFlank) + Math.ceil(d2));
                    this.numSupport = (int) (((double) this.numSupport) + Math.floor(d2));
                }
            } else if (civ.unitsBest_FirstLineSize > 0) {
                this.numFirstLine += i3;
            } else if (civ.unitsBest_FlankSize > 0) {
                this.numFlank += i3;
            }
        }
        if (civ.unitsBest_SiegeSize > 0 && this.numSupport > civ.aiCiv.armies_SiegeWeaponPerSupportUnits) {
            int iMin2 = Math.min(this.numSupport / civ.aiCiv.armies_SiegeWeaponPerSupportUnits, civ.aiCiv.armies_SiegeWeapon_Max);
            this.numSiege = iMin2;
            this.numSupport -= iMin2;
        }
        updateNumOfRegiments();
    }

    public AI_Army_Composition(AI_Army_Composition aI_Army_Composition) {
        this.numFirstLine = 0;
        this.numFlank = 0;
        this.numSupport = 0;
        this.numSiege = 0;
        this.numOfRegiments = 0;
        this.numFirstLine = aI_Army_Composition.numFirstLine;
        this.numFlank = aI_Army_Composition.numFlank;
        this.numSupport = aI_Army_Composition.numSupport;
        this.numSiege = aI_Army_Composition.numSiege;
        updateNumOfRegiments();
    }

    public void LOG(String str) {
        CFG.LOG(str + ": " + this.numOfRegiments);
        CFG.LOG("numFirstLine: " + this.numFirstLine);
        CFG.LOG("numFlank: " + this.numFlank);
        CFG.LOG("numSupport: " + this.numSupport);
        CFG.LOG("numSiege: " + this.numSiege);
    }

    public void updateNumOfRegiments() {
        this.numOfRegiments = this.numFirstLine + this.numFlank + this.numSupport + this.numSiege;
    }
}
