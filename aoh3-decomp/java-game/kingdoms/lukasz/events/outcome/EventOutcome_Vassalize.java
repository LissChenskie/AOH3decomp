package aoc.kingdoms.lukasz.events.outcome;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Ages;
import aoc.kingdoms.lukasz.jakowski.LanguageManager;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventOutcome_Vassalize extends EventOutcome {
    public String lordCivTag;
    public String vassalCivTag;

    public EventOutcome_Vassalize(String str, String str2) {
        this.lordCivTag = str;
        this.vassalCivTag = str2;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public int getImage() {
        return Images.vassal;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringLeft() {
        int civID = Game.getCivID(this.lordCivTag);
        return civID > 0 ? Game.getCiv(civID).getCivName() + ": " : "";
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight() {
        int civID = Game.getCivID(this.vassalCivTag);
        StringBuilder sb = new StringBuilder();
        LanguageManager languageManager = Game.lang;
        Game_Ages game_Ages = Game.gameAges;
        return sb.append(languageManager.get(Game_Ages.getVassal())).append(civID > 0 ? ": " + Game.getCiv(civID).getCivName() : "?").toString();
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public void updateCiv(int i, int i2) {
        try {
            int civID = Game.getCivID(this.lordCivTag);
            int civID2 = Game.getCivID(this.vassalCivTag);
            if (civID <= 0 || civID2 <= 0) {
                return;
            }
            Game.getCiv(civID2).setPuppetOfCivID(civID);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
