package aoc.kingdoms.lukasz.events.outcome;

import androidx.arch.core.ht.qIuEvFbUtcea;
import aoc.kingdoms.lukasz.jakowski.AI.Government.nSju.IlLkpaQxs;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.army.ArmyDivision;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.textures.Images;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventOutcome_AnnexedProvincesByCivFromCiv extends EventOutcome {
    public String byCivTAG;
    public List<Integer> lProvinces;
    public String sFromCivTAG;

    public EventOutcome_AnnexedProvincesByCivFromCiv(String str, String str2, List<Integer> list) {
        this.byCivTAG = str;
        this.sFromCivTAG = str2;
        this.lProvinces = list;
        for (int size = list.size() - 1; size >= 0; size--) {
            if (this.lProvinces.get(size).intValue() < 0 || this.lProvinces.get(size).intValue() >= Game.getProvincesSize()) {
                this.lProvinces.remove(size);
            }
        }
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public int getImage() {
        return Images.provinces;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringLeft() {
        return Game.lang.getCiv(this.byCivTAG) + ", " + Game.lang.get(IlLkpaQxs.uTDdHtTgonJ) + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight() {
        int civID = Game.getCivID(this.sFromCivTAG);
        int i = 0;
        String str = "";
        while (i < this.lProvinces.size()) {
            if (this.lProvinces.get(i).intValue() >= 0 && this.lProvinces.get(i).intValue() < Game.getProvincesSize() && Game.getProvince(this.lProvinces.get(i).intValue()).getCivID() == civID) {
                str = str + Game.getProvince(this.lProvinces.get(i).intValue()).getProvinceName() + (i == this.lProvinces.size() + (-1) ? "" : ", ");
            }
            i++;
        }
        return str.length() > 0 ? str : Game.lang.get("None");
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public void updateCiv(int i, int i2) {
        try {
            int civID = Game.getCivID(this.byCivTAG);
            int civID2 = Game.getCivID(this.sFromCivTAG);
            if (civID <= 0 || civID2 <= 0) {
                return;
            }
            for (int size = this.lProvinces.size() - 1; size >= 0; size--) {
                if (Game.getProvince(this.lProvinces.get(size).intValue()).getCivID() == civID2) {
                    Game.getProvince(this.lProvinces.get(size).intValue()).setCivID(civID);
                    Game.getProvince(this.lProvinces.get(size).intValue()).addCore(civID);
                }
            }
            for (int size2 = this.lProvinces.size() - 1; size2 >= 0; size2--) {
                if (Game.getProvince(this.lProvinces.get(size2).intValue()).getCivID() == civID) {
                    for (int armySize = Game.getProvince(this.lProvinces.get(size2).intValue()).getArmySize() - 1; armySize >= 0; armySize--) {
                        if (!DiplomacyManager.isAlly(civID, Game.getProvince(this.lProvinces.get(size2).intValue()).getArmy(armySize).civID)) {
                            ArmyDivision army = Game.getProvince(this.lProvinces.get(size2).intValue()).getArmy(armySize);
                            Game.getProvince(this.lProvinces.get(size2).intValue()).removeArmy(armySize);
                            if (army.civID > 0 && Game.getCiv(army.civID).getCapitalProvinceID() >= 0 && Game.getProvince(Game.getCiv(army.civID).getCapitalProvinceID()).getCivID() == army.civID) {
                                Game.getProvince(Game.getCiv(army.civID).getCapitalProvinceID()).addArmy(army);
                            }
                        }
                    }
                }
            }
            Game.gameThread.addCivUpdateTotalIncomePerMonth(civID);
            Game.gameThread.addCivUpdateTotalIncomePerMonth(civID2);
            if (civID == Game.player.iCivID) {
                InGame_Info.iCivID = civID;
                InGame_Info.iCivID2 = civID2;
                Game.menuManager.rebuildInGame_Info(Game.lang.get(qIuEvFbUtcea.ZVLeRtdkYlb), Game.getCiv(civID).getCivName() + " - " + Game.getCiv(civID2).getCivName());
                InGame_Info.imgID = Images.infoDiplomacy;
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
