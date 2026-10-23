package aoc.kingdoms.lukasz.jakowski.Player.More;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRanking;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class PlayerStats3 {
    public List<Integer> prestige = new ArrayList();
    public List<Integer> population = new ArrayList();

    public void addPopulation() {
        this.population.add(Integer.valueOf((int) Math.ceil(Game.getCiv(Game.player.iCivID).getPopulationTotal())));
    }

    public void addPrestige() {
        this.prestige.add(Integer.valueOf((int) Math.ceil(CivilizationRanking.getCivilizationRanking_INFO(Game.player.iCivID))));
    }

    public final void updateData() {
        addPrestige();
        addPopulation();
    }
}
