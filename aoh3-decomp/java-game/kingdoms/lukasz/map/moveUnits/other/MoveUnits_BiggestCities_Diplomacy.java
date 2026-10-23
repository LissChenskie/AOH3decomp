package aoc.kingdoms.lukasz.map.moveUnits.other;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.moveUnits.MoveUnits;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
import space.earlygrey.shapedrawer.JoinType;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MoveUnits_BiggestCities_Diplomacy extends MoveUnits_BiggestCities {
    public float widthPercentage;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.moveUnits.other.MoveUnits_BiggestCities_Diplomacy$1, reason: invalid class name */
    class AnonymousClass1 implements MoveUnits.LittleAnimation {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.moveUnits.other.MoveUnits_BiggestCities_Diplomacy$1$1, reason: invalid class name and collision with other inner class name */
        class C00031 implements MoveUnits.LittleAnimation {
            C00031() {
            }

            @Override // aoc.kingdoms.lukasz.map.moveUnits.MoveUnits.LittleAnimation
            public void update() {
                MoveUnits_BiggestCities_Diplomacy.this.widthPercentage -= (CFG.currentTimeMillis - MoveUnits_BiggestCities_Diplomacy.this.lMovingTime) / GameValues.inGame.DIPLOMACY_LINES_ANIMATION_DURATION;
                MoveUnits_BiggestCities_Diplomacy.this.lMovingTime = CFG.currentTimeMillis;
            }
        }

        AnonymousClass1() {
        }

        @Override // aoc.kingdoms.lukasz.map.moveUnits.MoveUnits.LittleAnimation
        public void update() {
            MoveUnits_BiggestCities_Diplomacy.this.fMovingPercentage += (CFG.currentTimeMillis - MoveUnits_BiggestCities_Diplomacy.this.lMovingTime) / GameValues.inGame.DIPLOMACY_LINES_ANIMATION_DURATION;
            MoveUnits_BiggestCities_Diplomacy.this.lMovingTime = CFG.currentTimeMillis;
            if (MoveUnits_BiggestCities_Diplomacy.this.fMovingPercentage >= 1.0f) {
                MoveUnits_BiggestCities_Diplomacy.this.fMovingPercentage = 1.0f;
                MoveUnits_BiggestCities_Diplomacy.this.lMovingTime = CFG.currentTimeMillis;
                MoveUnits_BiggestCities_Diplomacy.this.littleAnimationMainLine = new C00031();
            }
        }
    }

    public MoveUnits_BiggestCities_Diplomacy(int i, int i2, int i3, Color color) {
        super(i, i2, i3);
        this.widthPercentage = 1.0f;
        this.ColorLine = color;
        this.ColorLine2 = color;
    }

    @Override // aoc.kingdoms.lukasz.map.moveUnits.other.MoveUnits_BiggestCities
    public void buildAnimation(boolean z) {
        if (z) {
            this.lMovingTime = CFG.currentTimeMillis;
            this.fMovingPercentage = 0.01f;
            this.littleAnimationMainLine = new AnonymousClass1();
        }
    }

    @Override // aoc.kingdoms.lukasz.map.moveUnits.other.MoveUnits_BiggestCities
    public boolean draw2(SpriteBatch spriteBatch, float f) {
        try {
            if (this.iRouteSize > 0) {
                Array array = new Array();
                if (Game.getProvince(this.lRoute.get(0).intValue()).getDrawProvince()) {
                    for (int i = 0; i < ((int) ((this.iPrecision - 2) * this.fMovingPercentage)); i++) {
                        array.add(new Vector2((this.vPoints[i].x + Game.getProvince(this.lRoute.get(0).intValue()).getTranslateProvincePosX()) * f, (this.vPoints[i].y - Game.mapCoords.getPosY()) * f));
                    }
                } else {
                    for (int i2 = 0; i2 < this.iPrecision; i2++) {
                        array.add(new Vector2((this.vPoints[i2].x + Game.mapCoords.getPosX()) * f, (this.vPoints[i2].y - Game.mapCoords.getPosY()) * f));
                    }
                }
                if (this.fMovingPercentage < 0.99f) {
                    Renderer.shapeDrawer.setColor(new Color(this.ColorLine.r, this.ColorLine.g, this.ColorLine.b, 0.55f));
                } else {
                    Renderer.shapeDrawer.setColor(new Color(this.ColorLine2.r, this.ColorLine2.g, this.ColorLine2.b, 0.55f));
                }
                Renderer.shapeDrawer.path((Iterable) array, ((this.fMovingPercentage * 0.75f) + 0.25f) * 2.5f * this.widthPercentage * (Game.mapScale.getCurrentScale() < 1.0f ? Game.mapScale.getCurrentScale() : 1.0f), JoinType.SMOOTH, true);
                if (this.fMovingPercentage > 0.99f && Game.getProvince(this.lRoute.get(this.lRoute.size() - 1).intValue()).getDrawProvince()) {
                    Renderer.shapeDrawer.setColor(new Color(this.ColorLine2.r, this.ColorLine2.g, this.ColorLine2.b, this.widthPercentage * 0.45f));
                    Renderer.shapeDrawer.filledCircle((this.vPoints[this.vPoints.length - 1].x + Game.getProvince(this.lRoute.get(this.lRoute.size() - 1).intValue()).getTranslateProvincePosX()) * f, (this.vPoints[this.vPoints.length - 1].y - Game.mapCoords.getPosY()) * f, 12.0f * f * this.fMovingPercentage * this.widthPercentage);
                    Renderer.shapeDrawer.setColor(new Color(this.ColorLine2.r, this.ColorLine2.g, this.ColorLine2.b, this.widthPercentage * 0.6f));
                    Renderer.shapeDrawer.circle((this.vPoints[this.vPoints.length - 1].x + Game.getProvince(this.lRoute.get(this.lRoute.size() - 1).intValue()).getTranslateProvincePosX()) * f, (this.vPoints[this.vPoints.length - 1].y - Game.mapCoords.getPosY()) * f, 16.0f * f * this.fMovingPercentage * this.widthPercentage, f * 2.0f);
                }
                if (this.widthPercentage < 0.05f) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return true;
        }
    }

    @Override // aoc.kingdoms.lukasz.map.moveUnits.other.MoveUnits_BiggestCities
    public int getShiftPosXY() {
        return 0;
    }
}
