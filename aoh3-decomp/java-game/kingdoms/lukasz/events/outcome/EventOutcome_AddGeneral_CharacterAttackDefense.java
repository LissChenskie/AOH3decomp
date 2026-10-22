package aoc.kingdoms.lukasz.events.outcome;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.CharactersManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventOutcome_AddGeneral_CharacterAttackDefense extends EventOutcome {
    public int Attack;
    public int Defense;
    public String sGeneral;

    public EventOutcome_AddGeneral_CharacterAttackDefense(String str, int i, int i2) {
        this.sGeneral = str;
        this.Attack = i;
        this.Defense = i2;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public int getImage() {
        return Images.general;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringLeft() {
        return Game.lang.get("RecruitGeneral") + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight() {
        return "" + this.sGeneral;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public void updateCiv(int i, int i2) {
        try {
            CharactersManager.loadGeneral(i, this.sGeneral, this.Attack, this.Defense);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
