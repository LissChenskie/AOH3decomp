package aoc.kingdoms.lukasz.events;

import aoc.kingdoms.lukasz.events.triggers.EventTrigger;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.map.civilization.stats.LQy.lJxd;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Event {
    public String desc;
    public String id;
    public String image;
    public String mission_desc;
    public int mission_image;
    public boolean only_once;
    public List<EventOption> options;
    public boolean popUp;
    public boolean possible_to_run;
    public int runCivsID;
    public boolean run_in_background;
    public boolean show_in_missions;
    public String title;
    public List<EventTrigger> triggersAnd;
    public List<EventTrigger> triggersAndNot;
    public List<EventTrigger> triggersOr;
    public List<EventTrigger> triggersOrNot;

    public Event() {
        String str = lJxd.TNHbnhktUhsIHUJ;
        this.title = str;
        this.desc = str;
        this.mission_desc = str;
        this.image = null;
        this.only_once = true;
        this.mission_image = 0;
        this.show_in_missions = false;
        this.popUp = false;
        this.run_in_background = false;
        this.possible_to_run = true;
        this.runCivsID = 0;
        this.options = new ArrayList();
        this.triggersAnd = new ArrayList();
        this.triggersAndNot = new ArrayList();
        this.triggersOr = new ArrayList();
        this.triggersOrNot = new ArrayList();
    }

    public boolean addEvent() {
        return ((this.triggersAnd.size() + this.triggersOr.size()) + this.triggersOrNot.size()) + this.triggersAndNot.size() > 0 && this.options.size() > 0;
    }

    public void addTrigger(EventTrigger eventTrigger, int i) {
        if (i == 0) {
            this.triggersAnd.add(eventTrigger);
            return;
        }
        if (i == 1) {
            this.triggersAndNot.add(eventTrigger);
        } else if (i == 2) {
            this.triggersOr.add(eventTrigger);
        } else {
            if (i != 3) {
                return;
            }
            this.triggersOrNot.add(eventTrigger);
        }
    }

    public final boolean runTriggers(int i) {
        for (int size = this.triggersOr.size() - 1; size >= 0; size--) {
            try {
                if (this.triggersOr.get(size).runTriggers(i, 0)) {
                    return true;
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        for (int size2 = this.triggersOrNot.size() - 1; size2 >= 0; size2--) {
            try {
                if (!this.triggersOrNot.get(size2).runTriggers(i, 0)) {
                    return true;
                }
            } catch (Exception e2) {
                CFG.exceptionStack(e2);
            }
        }
        for (int size3 = this.triggersAnd.size() - 1; size3 >= 0; size3--) {
            try {
                if (!this.triggersAnd.get(size3).runTriggers(i, 0)) {
                    return false;
                }
            } catch (Exception e3) {
                CFG.exceptionStack(e3);
            }
        }
        for (int size4 = this.triggersAndNot.size() - 1; size4 >= 0; size4--) {
            try {
                if (this.triggersAndNot.get(size4).runTriggers(i, 0)) {
                    return false;
                }
            } catch (Exception e4) {
                CFG.exceptionStack(e4);
            }
        }
        return this.triggersAnd.size() > 0 || this.triggersAndNot.size() > 0;
    }
}
