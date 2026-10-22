package aoc.kingdoms.lukasz.map.map.Ship;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.Touch;
import aoc.kingdoms.lukasz.jakowski.zOther.Point_XY;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.CatmullRomSpline;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
import java.util.ArrayList;
import java.util.List;
import space.earlygrey.shapedrawer.JoinType;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ShipLine {
    public Vector2[] vPoints;
    public int fromProvinceID = -1;
    public int toProvinceID = -1;
    public List<Point_XY> points = new ArrayList();
    public int pointsSize = 0;
    public List<Integer> width = new ArrayList();

    public void addNewPoint() {
        this.points.add(new Point_XY(((int) (Game.mapCoords.getPosX() - (Touch.getMousePosX() / Game.mapScale.getCurrentScale()))) * (-1), ((int) (Game.mapCoords.getPosY() - (Touch.getMousePosY() / Game.mapScale.getCurrentScale()))) * (-1)));
        this.pointsSize = this.points.size();
        buildData();
    }

    public void addNewPoint_Just(int i, int i2) {
        this.points.add(new Point_XY(i, i2));
        this.pointsSize = this.points.size();
    }

    public final void buildData() {
        int i;
        if (this.pointsSize > 2) {
            this.width.clear();
            this.vPoints = new Vector2[GameValues.ships.SHIP_LINE_PRECISION];
            Vector2[] vector2Arr = new Vector2[this.pointsSize + 2];
            int i2 = 0;
            vector2Arr[0] = new Vector2(this.points.get(0).getPosX(), this.points.get(0).getPosY());
            int i3 = 0;
            while (true) {
                i = this.pointsSize;
                if (i3 >= i) {
                    break;
                }
                int i4 = i3 + 1;
                vector2Arr[i4] = new Vector2(this.points.get(i3).getPosX(), this.points.get(i3).getPosY());
                i3 = i4;
            }
            vector2Arr[i + 1] = new Vector2(this.points.get(this.pointsSize - 1).getPosX(), this.points.get(this.pointsSize - 1).getPosY());
            CatmullRomSpline catmullRomSpline = new CatmullRomSpline(vector2Arr, false);
            for (int i5 = 0; i5 < GameValues.ships.SHIP_LINE_PRECISION; i5++) {
                this.vPoints[i5] = new Vector2();
                catmullRomSpline.valueAt(this.vPoints[i5], i5 / (GameValues.ships.SHIP_LINE_PRECISION - 1.0f));
            }
            while (i2 < GameValues.ships.SHIP_LINE_PRECISION - 1) {
                int i6 = i2 + 1;
                this.width.add(Integer.valueOf((int) Math.ceil(Math.sqrt(((this.vPoints[i6].x - this.vPoints[i2].x) * (this.vPoints[i6].x - this.vPoints[i2].x)) + ((this.vPoints[i2].y - this.vPoints[i6].y) * (this.vPoints[i2].y - this.vPoints[i6].y))))));
                i2 = i6;
            }
            this.width.add(1);
        }
    }

    public void draw(SpriteBatch spriteBatch) {
        try {
            if (this.pointsSize > 2) {
                Array array = new Array();
                for (int i = 0; i < GameValues.ships.SHIP_LINE_PRECISION; i++) {
                    array.add(new Vector2((this.vPoints[i].x + Game.mapCoords.getPosX()) * Game.mapScale.getCurrentScale(), ((-this.vPoints[i].y) - Game.mapCoords.getPosY()) * Game.mapScale.getCurrentScale()));
                }
                Renderer.shapeDrawer.setColor(new Color(1.0f, 1.0f, 1.0f, 0.75f));
                Renderer.shapeDrawer.path((Iterable) array, 6.0f, JoinType.SMOOTH, true);
                Renderer.oSBBorder.end();
                Renderer.oSBBorder.begin();
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public void removePoint() {
        int i = this.pointsSize;
        if (i > 0) {
            this.points.remove(i - 1);
            this.pointsSize = this.points.size();
        }
        buildData();
    }
}
