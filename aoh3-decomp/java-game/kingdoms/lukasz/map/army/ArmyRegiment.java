package aoc.kingdoms.lukasz.map.army;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.SaveLoad.SaveGameManager;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ArmyRegiment {
    public int aID;
    public String key;
    public float mo;
    public int num;
    public int uID;

    public ArmyRegiment() {
        this.uID = 0;
        this.aID = 0;
        this.num = 0;
        this.mo = 1.0f;
    }

    public ArmyRegiment(int i, int i2) {
        this.num = 0;
        this.mo = 1.0f;
        this.uID = i;
        this.aID = i2;
        this.num = Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE;
        this.key = CFG.extraRandomTag();
    }

    public ArmyRegiment(SaveGameManager.Save_Provinces_ArmyRegiment save_Provinces_ArmyRegiment) {
        this.uID = 0;
        this.aID = 0;
        this.num = 0;
        this.mo = 1.0f;
        this.key = save_Provinces_ArmyRegiment.k;
        this.uID = save_Provinces_ArmyRegiment.u;
        this.aID = save_Provinces_ArmyRegiment.a;
        this.num = save_Provinces_ArmyRegiment.n;
        this.mo = save_Provinces_ArmyRegiment.m;
    }
}
