package aoc.kingdoms.lukasz.events.outcome;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.textures.Images;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventOutcome_DeclareWar extends EventOutcome {
    public String value;

    public EventOutcome_DeclareWar(String str) {
        this.value = str;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public int getImage() {
        return Images.war;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringLeft() {
        return Game.lang.get("DeclareWarOn") + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight() {
        int civID = Game.getCivID(this.value);
        return civID > 0 ? Game.getCiv(civID).getCivName() : Game.lang.get("None");
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public void updateCiv(int i, int i2) {
        try {
            int civID = Game.getCivID(this.value);
            if (civID <= 0 || i == civID || Game.getCiv(civID).getNumOfProvinces() <= 0) {
                return;
            }
            DiplomacyManager.declareWar(i, civID, true, new ArrayList());
            if (i == Game.player.iCivID) {
                InGame_Info.iCivID = i;
                InGame_Info.iCivID2 = civID;
                Game.menuManager.rebuildInGame_Info(Game.lang.get("War"), Game.getCiv(Game.player.iCivID).getCivName() + " - " + Game.getCiv(civID).getCivName());
                InGame_Info.imgID = Images.infoWar;
                Game.soundsManager.loadNextMusicWar();
                Game.menuManager.rebuildInGame_Wars();
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
