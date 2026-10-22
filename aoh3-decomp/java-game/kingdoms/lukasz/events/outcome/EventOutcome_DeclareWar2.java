package aoc.kingdoms.lukasz.events.outcome;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.textures.Images;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventOutcome_DeclareWar2 extends EventOutcome {
    public String byCivTAG;
    public String onCivTag;

    public EventOutcome_DeclareWar2(String str, String str2) {
        this.byCivTAG = str;
        this.onCivTag = str2;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public int getImage() {
        return Images.war;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringLeft() {
        int civID = Game.getCivID(this.byCivTAG);
        return civID > 0 ? Game.getCiv(civID).getCivName() + ": " + Game.lang.get("DeclareWarOn") + ": " : Game.lang.get("DeclareWarOn") + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight() {
        int civID = Game.getCivID(this.onCivTag);
        return civID > 0 ? Game.getCiv(civID).getCivName() : Game.lang.get("None");
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public void updateCiv(int i, int i2) {
        try {
            int civID = Game.getCivID(this.byCivTAG);
            int civID2 = Game.getCivID(this.onCivTag);
            if (civID > 0 && civID2 > 0 && civID != civID2 && Game.getCiv(civID).getNumOfProvinces() > 0 && Game.getCiv(civID2).getNumOfProvinces() > 0) {
                DiplomacyManager.declareWar(civID, civID2, true, new ArrayList());
                if (civID2 == Game.player.iCivID) {
                    InGame_Info.iCivID = civID2;
                    InGame_Info.iCivID2 = civID;
                    Game.menuManager.rebuildInGame_Info(Game.lang.get("War"), Game.getCiv(civID).getCivName() + " - " + Game.getCiv(civID2).getCivName());
                    InGame_Info.imgID = Images.infoWar;
                    Game.soundsManager.loadNextMusicWar();
                    Game.menuManager.rebuildInGame_Wars();
                } else if (civID == Game.player.iCivID) {
                    InGame_Info.iCivID = civID;
                    InGame_Info.iCivID2 = civID2;
                    Game.menuManager.rebuildInGame_Info(Game.lang.get("War"), Game.getCiv(civID).getCivName() + " - " + Game.getCiv(civID2).getCivName());
                    InGame_Info.imgID = Images.infoWar;
                    Game.soundsManager.loadNextMusicWar();
                    Game.menuManager.rebuildInGame_Wars();
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
