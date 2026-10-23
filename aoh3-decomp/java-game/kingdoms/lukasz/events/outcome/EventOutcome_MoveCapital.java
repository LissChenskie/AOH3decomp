package aoc.kingdoms.lukasz.events.outcome;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventOutcome_MoveCapital extends EventOutcome {
    public int value;

    public EventOutcome_MoveCapital(int i) {
        this.value = i;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public int getImage() {
        return Images.capital;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringLeft() {
        return Game.lang.get("MoveCapitalTo") + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight() {
        int i = this.value;
        return (i < 0 || i >= Game.getProvincesSize() || Game.getProvince(this.value).getCivID() != Game.player.iCivID) ? Game.lang.get("MaintainStatusQuo") : Game.getProvince(this.value).getProvinceName();
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public void updateCiv(int i, int i2) {
        try {
            int i3 = this.value;
            if (i3 < 0 || i3 >= Game.getProvincesSize() || Game.getProvince(this.value).getCivID() != i) {
                return;
            }
            Game.getCiv(i).setCapitalProvinceID(this.value);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
