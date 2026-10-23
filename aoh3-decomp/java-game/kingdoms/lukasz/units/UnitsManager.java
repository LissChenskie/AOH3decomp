package aoc.kingdoms.lukasz.units;

import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class UnitsManager {
    private List<MoveUnitInDirection> moveUnit = new ArrayList();
    public UnitType templar;
    public UnitType unitSheep;

    public interface MoveUnitInDirection {
        void moveUnit(int i);
    }

    public UnitsManager() {
        initMoveUnit();
        loadUnits();
    }

    public final void initMoveUnit() {
    }

    public final void initTestUnits() {
    }

    public final void loadUnits() {
        this.templar = new UnitType_Templar();
        this.unitSheep = new UnitType_Sheep();
    }

    public final void tempDrawUnits(SpriteBatch spriteBatch) {
    }

    public final void tempUpdateUnits() {
    }
}
