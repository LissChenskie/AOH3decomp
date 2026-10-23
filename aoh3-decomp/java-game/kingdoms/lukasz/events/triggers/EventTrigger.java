package aoc.kingdoms.lukasz.events.triggers;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventTrigger {
    public List<EventTrigger_Value> triggersAnd = new ArrayList();
    public List<EventTrigger_Value> triggersAndNot = new ArrayList();
    public List<EventTrigger_Value> triggersOr = new ArrayList();
    public List<EventTrigger_Value> triggersOrNot = new ArrayList();

    public void addTrigger(EventTrigger_Value eventTrigger_Value, int i) {
        if (i == 0) {
            this.triggersAnd.add(eventTrigger_Value);
            return;
        }
        if (i == 1) {
            this.triggersAndNot.add(eventTrigger_Value);
        } else if (i == 2) {
            this.triggersOr.add(eventTrigger_Value);
        } else {
            if (i != 3) {
                return;
            }
            this.triggersOrNot.add(eventTrigger_Value);
        }
    }

    public final boolean runTriggers(int i, int i2) {
        for (int size = this.triggersOr.size() - 1; size >= 0; size--) {
            if (this.triggersOr.get(size).outCondition(i, i2)) {
                return true;
            }
        }
        for (int size2 = this.triggersOrNot.size() - 1; size2 >= 0; size2--) {
            if (!this.triggersOrNot.get(size2).outCondition(i, i2)) {
                return true;
            }
        }
        for (int size3 = this.triggersAnd.size() - 1; size3 >= 0; size3--) {
            if (!this.triggersAnd.get(size3).outCondition(i, i2)) {
                return false;
            }
        }
        for (int size4 = this.triggersAndNot.size() - 1; size4 >= 0; size4--) {
            if (this.triggersAndNot.get(size4).outCondition(i, i2)) {
                return false;
            }
        }
        return this.triggersAnd.size() > 0 || this.triggersAndNot.size() > 0;
    }
}
