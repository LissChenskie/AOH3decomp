package aoc.kingdoms.lukasz.events.outcome;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventOutcome_ChangeReligion extends EventOutcome {
    public int value;

    public EventOutcome_ChangeReligion(int i) {
        this.value = i;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public int getImage() {
        return Images.religion;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringLeft() {
        return Game.lang.get("ConvertReligion") + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight() {
        int i = this.value;
        return (i < 0 || i >= Game.religionManager.getReligionsSize()) ? Game.lang.get("None") : Game.religionManager.getReligion(this.value).Name;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public void updateCiv(int i, int i2) {
        try {
            int i3 = this.value;
            if (i3 < 0 || i3 >= Game.religionManager.getReligionsSize()) {
                return;
            }
            Game.getCiv(i).setReligionID_UpdateBonuses(this.value);
            Game.getCiv(i).updateProvincesIncomeAndExpenses();
            Game.gameThread.addCivUpdateTotalIncomePerMonth(i);
            if (i == Game.player.iCivID) {
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
