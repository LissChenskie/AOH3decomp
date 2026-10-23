package aoc.kingdoms.lukasz.map.moveUnits.other;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.CatmullRomSpline;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
import java.util.ArrayList;
import java.util.List;
import space.earlygrey.shapedrawer.JoinType;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MoveUnits_RegroupLine {
    public static final int PRECISION = 15;
    public Color ColorLine2;
    private int iPrecision;
    private Vector2[] vPoints;
    private List<Integer> lRoute = new ArrayList();
    public int iRouteSize = 0;
    public Color ColorLine = new Color(0.57254905f, 0.50980395f, 0.4509804f, 1.0f);

    public MoveUnits_RegroupLine(List<Integer> list) {
        this.ColorLine2 = new Color(0.04f, 0.04f, 0.04f, 1.0f);
        setPath(list);
        if (this.iRouteSize > 1) {
            buildMoveUnitsLine(true);
            this.ColorLine2 = CFG.getColorStep(Colors.HOVER_GOLD, Game.getCiv(Game.getProvince(this.lRoute.get(0).intValue()).getCivID()).getColor(1.0f), 50, 100, 0.4f);
        }
    }

    public final void buildMoveUnitsLine(boolean z) {
        int i = this.iRouteSize;
        int i2 = i * 15;
        this.iPrecision = i2;
        this.vPoints = new Vector2[i2];
        Vector2[] vector2Arr = new Vector2[i + 2];
        for (int i3 = 0; i3 < this.iRouteSize; i3++) {
            if (Game.getProvince(this.lRoute.get(i3).intValue()).getCitiesSize() > 0) {
                vector2Arr[i3 + 1] = new Vector2(Game.getProvince(this.lRoute.get(i3).intValue()).getCity(0).getPosX(), -Game.getProvince(this.lRoute.get(i3).intValue()).getCity(0).getPosY());
            } else {
                vector2Arr[i3 + 1] = new Vector2(Game.getProvince(this.lRoute.get(i3).intValue()).iCenterShiftX, -Game.getProvince(this.lRoute.get(i3).intValue()).iCenterShiftY);
            }
        }
        if (Game.getProvince(this.lRoute.get(0).intValue()).getCitiesSize() > 0) {
            vector2Arr[0] = new Vector2((Game.getProvince(this.lRoute.get(0).intValue()).getCity(0).getPosX() - 15) + Game.oR.nextInt(31), -((Game.getProvince(this.lRoute.get(0).intValue()).getCity(0).getPosY() - 15) + Game.oR.nextInt(31)));
        } else {
            vector2Arr[0] = new Vector2((Game.getProvince(this.lRoute.get(0).intValue()).iCenterShiftX - 15) + Game.oR.nextInt(31), -((Game.getProvince(this.lRoute.get(0).intValue()).iCenterShiftY - 15) + Game.oR.nextInt(31)));
        }
        if (Game.getProvince(this.lRoute.get(this.iRouteSize - 1).intValue()).getCitiesSize() > 0) {
            vector2Arr[this.iRouteSize + 1] = new Vector2(Game.getProvince(this.lRoute.get(this.iRouteSize - 1).intValue()).getCity(0).getPosX(), -Game.getProvince(this.lRoute.get(this.iRouteSize - 1).intValue()).getCity(0).getPosY());
        } else {
            vector2Arr[this.iRouteSize + 1] = new Vector2(Game.getProvince(this.lRoute.get(this.iRouteSize - 1).intValue()).iCenterShiftX, -Game.getProvince(this.lRoute.get(this.iRouteSize - 1).intValue()).iCenterShiftY);
        }
        CatmullRomSpline catmullRomSpline = new CatmullRomSpline(vector2Arr, false);
        for (int i4 = 0; i4 < this.iPrecision; i4++) {
            this.vPoints[i4] = new Vector2();
            catmullRomSpline.valueAt(this.vPoints[i4], i4 / (this.iPrecision - 1.0f));
        }
    }

    public void draw(SpriteBatch spriteBatch, float f) {
        try {
            if (this.iRouteSize > 0) {
                Array array = new Array();
                if (Game.getProvince(this.lRoute.get(0).intValue()).getDrawProvince()) {
                    for (int i = 0; i < this.iPrecision - 2; i++) {
                        array.add(new Vector2((this.vPoints[i].x + Game.getProvince(this.lRoute.get(0).intValue()).getTranslateProvincePosX()) * f, (this.vPoints[i].y - Game.mapCoords.getPosY()) * f));
                    }
                } else {
                    for (int i2 = 0; i2 < this.iPrecision; i2++) {
                        array.add(new Vector2((this.vPoints[i2].x + Game.mapCoords.getPosX()) * f, (this.vPoints[i2].y - Game.mapCoords.getPosY()) * f));
                    }
                }
                Renderer.shapeDrawer.setColor(new Color(this.ColorLine2.r, this.ColorLine2.g, this.ColorLine2.b, 0.4f));
                Renderer.shapeDrawer.path((Iterable) array, 3.0f, JoinType.SMOOTH, true);
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public int getFromProvinceID() {
        return this.lRoute.get(0).intValue();
    }

    public int getToProvinceID() {
        return this.lRoute.get(1).intValue();
    }

    public int getToProvinceLastID() {
        return this.lRoute.get(this.iRouteSize - 1).intValue();
    }

    protected final void setPath(List<Integer> list) {
        for (int i = 0; i < list.size(); i++) {
            this.lRoute.add(list.get(i));
        }
        this.iRouteSize = this.lRoute.size();
    }
}
