package aoc.kingdoms.lukasz.map.moveUnits;

import aoc.kingdoms.lukasz.jakowski.Game;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MoveUnits_Player extends MoveUnits {
    public MoveUnits_Player(int i, int i2, int i3, String str, int i4, int i5) {
        super(i, i2, i3, str, i4, i5);
    }

    public MoveUnits_Player(int i, int i2, int i3, String str, int i4, boolean z, boolean z2) {
        super(i, i2, i3, str, i4, z, z2);
    }

    @Override // aoc.kingdoms.lukasz.map.moveUnits.MoveUnits
    public boolean getWas(int i) {
        return Game.getProvince(i).wasPlayer;
    }

    @Override // aoc.kingdoms.lukasz.map.moveUnits.MoveUnits
    public void setWas(int i, boolean z) {
        Game.getProvince(i).wasPlayer = z;
    }
}
