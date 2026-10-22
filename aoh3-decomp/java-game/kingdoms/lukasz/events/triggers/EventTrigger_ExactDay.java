package aoc.kingdoms.lukasz.events.triggers;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventTrigger_ExactDay extends EventTrigger_Value {
    public int day;
    public int month;
    public int year;

    public EventTrigger_ExactDay(int i, int i2, int i3) {
        this.day = i;
        this.month = i2;
        this.year = i3;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public int getImage() {
        return Images.time;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText() {
        return Game.lang.get("Date") + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText2() {
        return "" + this.day + " " + Game_Calendar.getMonthName(this.month) + " " + this.year;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText3() {
        return "";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public boolean outCondition(int i, int i2) {
        return Game_Calendar.currentYear > this.year || (Game_Calendar.currentYear >= this.year && Game_Calendar.currentMonth > this.month) || (Game_Calendar.currentYear >= this.year && Game_Calendar.currentMonth >= this.month && Game_Calendar.currentDay >= this.day);
    }
}
