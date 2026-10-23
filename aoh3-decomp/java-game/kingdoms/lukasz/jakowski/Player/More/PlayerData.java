package aoc.kingdoms.lukasz.jakowski.Player.More;

import aoc.kingdoms.lukasz.jakowski.Game;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class PlayerData {
    public List<String> pinnedArmies = new ArrayList();
    public List<Integer> pinnedProvinces = new ArrayList();
    public PlayerInvasion invasion = new PlayerInvasion();
    public PlayerEspionage espionage = new PlayerEspionage();
    public List<PlayerActiveEvent> activeEvents = new ArrayList();
    public PlayerTechQueue techQueue = new PlayerTechQueue();
    public boolean wasVassalized = false;
    public int reorganizeArmyStep = 0;
    public int armyImgID = 0;
    public int lowArmyTurnID = -1;

    public void loadUpdate() {
        Game.player.iPinnedArmiesSize = this.pinnedArmies.size();
        Game.player.iPinnedProvincesSize = this.pinnedProvinces.size();
        Game.player.iActiveEventsSize = this.activeEvents.size();
    }
}
