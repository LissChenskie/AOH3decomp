package aoc.kingdoms.lukasz.events.outcome;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.textures.Images;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventOutcome_AnnexProvincesFromCiv extends EventOutcome {
    public List<Integer> lProvinces;
    public String sFromCivTAG;

    public EventOutcome_AnnexProvincesFromCiv(String str, List<Integer> list) {
        this.sFromCivTAG = str;
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
        return Game.lang.get("Annexation") + ": ";
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
            int civID = Game.getCivID(this.sFromCivTAG);
            for (int size = this.lProvinces.size() - 1; size >= 0; size--) {
                if (this.lProvinces.get(size).intValue() >= 0 && this.lProvinces.get(size).intValue() < Game.getProvincesSize() && Game.getProvince(this.lProvinces.get(size).intValue()).getCivID() != i && Game.getProvince(this.lProvinces.get(size).intValue()).getCivID() == civID) {
                    Game.getProvince(this.lProvinces.get(size).intValue()).setCivID(i);
                }
            }
            Game.gameThread.addCivUpdateTotalIncomePerMonth(i);
            Game.gameThread.addCivUpdateTotalIncomePerMonth(civID);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
