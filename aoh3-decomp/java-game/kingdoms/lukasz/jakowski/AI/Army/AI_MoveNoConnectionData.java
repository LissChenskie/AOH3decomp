package aoc.kingdoms.lukasz.jakowski.AI.Army;

import java.util.Objects;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_MoveNoConnectionData {
    public int fromProvince;
    public int toProvince;

    public AI_MoveNoConnectionData(int i, int i2) {
        this.fromProvince = i;
        this.toProvince = i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AI_MoveNoConnectionData aI_MoveNoConnectionData = (AI_MoveNoConnectionData) obj;
        return this.fromProvince == aI_MoveNoConnectionData.fromProvince && this.toProvince == aI_MoveNoConnectionData.toProvince;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.fromProvince), Integer.valueOf(this.toProvince));
    }
}
