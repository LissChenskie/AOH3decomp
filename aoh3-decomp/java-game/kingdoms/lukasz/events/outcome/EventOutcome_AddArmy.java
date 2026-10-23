package aoc.kingdoms.lukasz.events.outcome;

import androidx.lifecycle.livedata.core.jzw.jkEBdieJhbh;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.army.ArmyDivision;
import aoc.kingdoms.lukasz.map.army.ArmyRegiment;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventOutcome_AddArmy extends EventOutcome {
    public List<Integer> armyID;
    public List<Integer> unitID;

    public EventOutcome_AddArmy(List<Integer> list, List<Integer> list2) {
        this.unitID = new ArrayList();
        new ArrayList();
        this.unitID = list;
        this.armyID = list2;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public int getImage() {
        return Game_Calendar.IMG_MANPOWER;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringLeft() {
        int capitalProvinceID = Game.getCiv(Game.player.iCivID).getCapitalProvinceID();
        String str = jkEBdieJhbh.kNyIs;
        return (capitalProvinceID < 0 || Game.getProvince(Game.getCiv(Game.player.iCivID).getCapitalProvinceID()).getCivID() != Game.player.iCivID) ? Game.lang.get(str) + ": " : Game.getProvince(Game.getCiv(Game.player.iCivID).getCapitalProvinceID()).getProvinceName() + ", " + Game.lang.get(str) + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight() {
        return "" + CFG.getNumberWithSpaces("" + (this.unitID.size() * Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE));
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public void updateCiv(int i, int i2) {
        try {
            if (Game.getCiv(i).getCapitalProvinceID() < 0 || Game.getProvince(Game.getCiv(i).getCapitalProvinceID()).getCivID() != i || this.armyID.size() <= 0 || this.unitID.size() <= 0) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (int iMin = Math.min(this.armyID.size(), this.unitID.size()) - 1; iMin >= 0; iMin--) {
                arrayList.add(new ArmyRegiment(this.unitID.get(iMin).intValue(), this.armyID.get(iMin).intValue()));
            }
            Game.getProvince(Game.getCiv(i).getCapitalProvinceID()).addArmy(new ArmyDivision(i, Game.getCiv(i).getCapitalProvinceID(), arrayList));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
