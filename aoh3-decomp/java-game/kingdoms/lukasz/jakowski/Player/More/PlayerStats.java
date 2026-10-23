package aoc.kingdoms.lukasz.jakowski.Player.More;

import aoc.kingdoms.lukasz.jakowski.Game;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class PlayerStats {
    public long startingPopulation = 0;
    public float startingEconomy = 0.0f;
    public int startingProvinces = 0;
    public int numOfWars = 0;
    public int recruitedRegiments = 0;
    public int recruitedGenerals = 0;

    public final void initStartingData() {
        this.startingPopulation = Game.getCiv(Game.player.iCivID).getPopulationTotal();
        this.startingEconomy = Game.getCiv(Game.player.iCivID).getEconomyTotal();
        this.startingProvinces = Game.getCiv(Game.player.iCivID).getNumOfProvinces();
    }
}
