package aoc.kingdoms.lukasz.units;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class UnitType_Sheep extends UnitType {
    @Override // aoc.kingdoms.lukasz.units.UnitType
    public void initUnit() {
        this.animations_Walk.add(new Animation_Unit("gfx/units/Sheep/walk.png", 30, 30, new Hitbox(3, 7, 28, 36), 64));
        this.animations_Idle.add(new Animation_Unit("gfx/units/Sheep/die.png", 30, 30, new Hitbox(3, 7, 28, 36), 64));
        this.unitSpeed = 0.48f;
        this.maxHP = 65;
    }
}
