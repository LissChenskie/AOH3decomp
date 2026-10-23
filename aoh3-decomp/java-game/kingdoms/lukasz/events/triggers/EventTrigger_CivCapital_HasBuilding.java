package aoc.kingdoms.lukasz.events.triggers;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.BuildingsManager;
import aoc.kingdoms.lukasz.map.advisors.VjN.hQfu;
import aoc.kingdoms.lukasz.menusInGame.Province.iOYW.ALZmnpZHj;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventTrigger_CivCapital_HasBuilding extends EventTrigger_Value {
    public int building;
    public int buildingID;

    public EventTrigger_CivCapital_HasBuilding(int i, int i2) {
        this.building = i;
        this.buildingID = i2;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public int getImage() {
        return Images.buildings;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText() {
        return Game.lang.get(hQfu.oDtMtypNN) + ", " + Game.lang.get("BuildingConstructed") + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText2() {
        return "" + BuildingsManager.buildings.get(this.building).Name[this.buildingID];
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText3() {
        return ALZmnpZHj.YStrCgBHxlf + Game.lang.get("Currently") + ": " + Game.getProvince(Game.getCiv(Game.player.iCivID).getCapitalProvinceID()).buildingBuilt(this.building, this.buildingID) + "]";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public boolean outCondition(int i, int i2) {
        try {
            if (Game.getCiv(i).getCapitalProvinceID() < 0 || Game.getProvince(Game.getCiv(i).getCapitalProvinceID()).getCivID() != i) {
                return false;
            }
            return Game.getProvince(Game.getCiv(i).getCapitalProvinceID()).buildingBuilt(this.building, this.buildingID);
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return false;
        }
    }
}
