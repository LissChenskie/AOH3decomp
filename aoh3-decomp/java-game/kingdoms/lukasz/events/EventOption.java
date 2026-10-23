package aoc.kingdoms.lukasz.events;

import aoc.kingdoms.lukasz.events.outcome.EventOutcome;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventOption {
    public String name = "";
    public int bonus_duration = 1;
    public float ai = 1.0f;
    public List<EventOutcome> outcome = new ArrayList();

    public final void executeOutcome() {
        for (int i = 0; i < this.outcome.size(); i++) {
            try {
                this.outcome.get(i).update();
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
    }

    public final void executeOutcome(int i) {
        try {
            if (Game.getCiv(i).eventProvinceID >= 0) {
                for (int i2 = 0; i2 < this.outcome.size(); i2++) {
                    this.outcome.get(i2).updateProvince(Game.getCiv(i).eventProvinceID);
                }
            }
            for (int i3 = 0; i3 < this.outcome.size(); i3++) {
                this.outcome.get(i3).updateCiv(i, this.bonus_duration);
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
