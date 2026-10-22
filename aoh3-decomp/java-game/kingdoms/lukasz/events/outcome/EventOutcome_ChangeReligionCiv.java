package aoc.kingdoms.lukasz.events.outcome;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventOutcome_ChangeReligionCiv extends EventOutcome {
    public String civA;
    public int value;

    public EventOutcome_ChangeReligionCiv(int i, String str) {
        this.value = i;
        this.civA = str;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public int getImage() {
        return Images.religion;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringLeft() {
        int civID = Game.getCivID(this.civA);
        return civID > 0 ? Game.getCiv(civID).getCivName() + ", " + Game.lang.get("ConvertReligion") + ": " : " -- ";
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight() {
        int i = this.value;
        return (i < 0 || i >= Game.religionManager.getReligionsSize()) ? Game.lang.get("None") : Game.religionManager.getReligion(this.value).Name;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public void updateCiv(int i, int i2) {
        int civID;
        try {
            int i3 = this.value;
            if (i3 < 0 || i3 >= Game.religionManager.getReligionsSize() || (civID = Game.getCivID(this.civA)) <= 0) {
                return;
            }
            Game.getCiv(civID).setReligionID_UpdateBonuses(this.value);
            Game.getCiv(civID).updateProvincesIncomeAndExpenses();
            Game.gameThread.addCivUpdateTotalIncomePerMonth(civID);
            if (civID == Game.player.iCivID) {
                InGame_Info.iCivID = Game.player.iCivID;
                InGame_Info.iCivID2 = 0;
                Game.menuManager.rebuildInGame_Info(Game.lang.get("Religion"), Game.religionManager.getReligion(this.value).Name);
                InGame_Info.imgID = Images.infoCrown;
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
