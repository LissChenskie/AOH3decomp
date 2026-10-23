package aoc.kingdoms.lukasz.jakowski.AI;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_Civ {
    public float army_First = 1.1f;
    public float army_Second = 0.9f;
    public float army_Third = 0.75f;
    public float army_Fourth = 0.75f;
    public float regimentsLimit_UseMax_Perc = 1.25f;
    public float armies_FirstLine_Perc = 0.8f;
    public float armies_FlankLine_Perc = 0.2f;
    public int armies_SiegeWeaponPerSupportUnits = 10;
    public int armies_SiegeWeapon_Max = 1;

    public AI_Civ() {
        buildPersonality();
    }

    public final void buildPersonality() {
    }
}
