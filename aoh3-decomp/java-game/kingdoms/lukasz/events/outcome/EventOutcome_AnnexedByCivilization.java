package aoc.kingdoms.lukasz.events.outcome;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventOutcome_AnnexedByCivilization extends EventOutcome {
    public String annexedByCivTag;

    public EventOutcome_AnnexedByCivilization(String str) {
        this.annexedByCivTag = str;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public int getImage() {
        return Images.provinces;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringLeft() {
        return Game.lang.getCiv(this.annexedByCivTag) + ", " + Game.lang.get("Annexation") + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight() {
        return Game.getCiv(Game.player.iCivID).getCivName();
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public void updateCiv(int i, int i2) {
        int civID = Game.getCivID(this.annexedByCivTag);
        if (civID == i || civID <= 0 || i <= 0) {
            return;
        }
        for (int numOfProvinces = Game.getCiv(i).getNumOfProvinces() - 1; numOfProvinces >= 0; numOfProvinces--) {
            try {
                int provinceID = Game.getCiv(i).getProvinceID(numOfProvinces);
                Game.getProvince(provinceID).setCivID(civID);
                Game.getProvince(provinceID).removeArmyCivID(i);
                Game.getProvince(provinceID).addCore(civID);
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        Game.gameThread.addCivUpdateTotalIncomePerMonth(civID);
        Game.gameThread.addCivUpdateTotalIncomePerMonth(i);
        if (civID == Game.player.iCivID) {
            InGame_Info.iCivID = civID;
            InGame_Info.iCivID2 = i;
            Game.menuManager.rebuildInGame_Info(Game.lang.get("AcceptedOurUltimatum"), Game.getCiv(civID).getCivName() + " - " + Game.getCiv(i).getCivName());
            InGame_Info.imgID = Images.infoDiplomacy;
        }
    }
}
