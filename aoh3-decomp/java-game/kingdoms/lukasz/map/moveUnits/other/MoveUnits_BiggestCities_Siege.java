package aoc.kingdoms.lukasz.map.moveUnits.other;

import aoc.kingdoms.lukasz.jakowski.Game;
import com.badlogic.gdx.math.CatmullRomSpline;
import com.badlogic.gdx.math.Vector2;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MoveUnits_BiggestCities_Siege extends MoveUnits_BiggestCities {
    public MoveUnits_BiggestCities_Siege(int i, int i2, int i3) {
        super(i, i2, i3);
    }

    @Override // aoc.kingdoms.lukasz.map.moveUnits.other.MoveUnits_BiggestCities
    public void buildMoveUnitsLine(boolean z) {
        buildAnimation(z);
        this.iPrecision = this.iRouteSize * 15;
        this.vPoints = new Vector2[this.iPrecision];
        Vector2[] vector2Arr = new Vector2[this.iRouteSize + 2];
        int i = 0;
        while (i < this.iRouteSize) {
            int i2 = i + 1;
            vector2Arr[i2] = new Vector2(Game.getProvince(this.lRoute.get(i).intValue()).iCenterShiftX, -Game.getProvince(this.lRoute.get(i).intValue()).iCenterShiftY);
            i = i2;
        }
        vector2Arr[0] = new Vector2(Game.getProvince(this.lRoute.get(0).intValue()).iCenterShiftX + getShiftPosXY(), -(Game.getProvince(this.lRoute.get(0).intValue()).iCenterShiftY + getShiftPosXY()));
        vector2Arr[this.iRouteSize + 1] = new Vector2(Game.getProvince(this.lRoute.get(this.iRouteSize - 1).intValue()).iCenterShiftX, -Game.getProvince(this.lRoute.get(this.iRouteSize - 1).intValue()).iCenterShiftY);
        CatmullRomSpline catmullRomSpline = new CatmullRomSpline(vector2Arr, false);
        for (int i3 = 0; i3 < this.iPrecision; i3++) {
            this.vPoints[i3] = new Vector2();
            catmullRomSpline.valueAt(this.vPoints[i3], i3 / (this.iPrecision - 1.0f));
        }
    }
}
