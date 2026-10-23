package aoc.kingdoms.lukasz.events.outcome;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventOutcome_ChangeIdeology extends EventOutcome {
    public int value;

    public EventOutcome_ChangeIdeology(int i) {
        this.value = i;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public int getImage() {
        return Images.council;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringLeft() {
        return Game.lang.get("ChangeIdeology") + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight() {
        int i = this.value;
        return (i < 0 || i >= Game.ideologiesManager.getIdeologiesSize()) ? Game.lang.get("None") : Game.ideologiesManager.getIdeology(this.value).Name;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public void updateCiv(int i, int i2) {
        try {
            int i3 = this.value;
            if (i3 < 0 || i3 >= Game.ideologiesManager.getIdeologiesSize() || !Game.ideologiesManager.changeGovernmentType(i, this.value, true)) {
                return;
            }
            Game.getCiv(i).fGold += GameValues.government.CHANGE_GOVERNMENT_COST;
            Game.getCiv(i).fLegacy += GameValues.government.CHANGE_GOVERNMENT_COST_LEGACY;
            if (i == Game.player.iCivID) {
                InGame_Info.iCivID = Game.player.iCivID;
                InGame_Info.iCivID2 = 0;
                Game.menuManager.rebuildInGame_Info(Game.lang.get("Government"), Game.ideologiesManager.getIdeology(this.value).Name);
                InGame_Info.imgID = Images.infoCrown;
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
