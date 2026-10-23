package aoc.kingdoms.lukasz.units;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class UnitType {
    protected List<Animation_Unit> animations_Idle = new ArrayList();
    protected List<Animation_Unit> animations_Walk = new ArrayList();
    protected int maxHP = 100;
    protected float unitSpeed = 1.0f;

    public UnitType() {
        initUnit();
    }

    public Animation_Unit getAnimation_Idle(int i) {
        return this.animations_Idle.get(i);
    }

    public Animation_Unit getAnimation_Walk() {
        return this.animations_Walk.get(0);
    }

    public final int getMaxHP() {
        return this.maxHP;
    }

    public final float getUnitSpeed() {
        return this.unitSpeed;
    }

    public void initUnit() {
    }
}
