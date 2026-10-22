package aoc.kingdoms.lukasz.events.triggers;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.BuildingsManager;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventTrigger_ProvinceHasBuilding extends EventTrigger_Value {
    public int building;
    public int buildingID;
    public int provID;

    public EventTrigger_ProvinceHasBuilding(int i, int i2, int i3) {
        this.provID = i;
        this.building = i2;
        this.buildingID = i3;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public int getImage() {
        return Images.buildings;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText() {
        return Game.getProvince(this.provID).getProvinceName() + ", " + Game.lang.get("BuildingConstructed") + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText2() {
        return "" + BuildingsManager.buildings.get(this.building).Name[this.buildingID];
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText3() {
        return " [" + Game.lang.get("Currently") + ": " + Game.getProvince(this.provID).buildingBuilt(this.building, this.buildingID) + "]";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public boolean outCondition(int i, int i2) {
        int i3 = this.provID;
        if (i3 >= 0) {
            return Game.getProvince(i3).buildingBuilt(this.building, this.buildingID);
        }
        return false;
    }
}
