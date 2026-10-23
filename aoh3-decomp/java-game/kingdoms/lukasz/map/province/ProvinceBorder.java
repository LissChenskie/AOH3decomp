package aoc.kingdoms.lukasz.map.province;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.setting.SettingsProvince;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.util.ArrayList;
import java.util.List;
import space.earlygrey.shapedrawer.JoinType;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ProvinceBorder {
    public static final float PROVINCE_BORDER_INTERVAL = 425.0f;
    public static DrawCivBorder drawCivBorder = null;
    public static DrawCivBorder drawCivBorderWar = null;
    public static int mapCordsPosY = 0;
    public static float pathProvinceBorderExtraWidth = 1.0f;
    public static float pathProvinceBorderExtraWidth2 = 1.0f;
    public DrawProvinceBorder drawProvinceBorder;
    private int iProvinceBorderLineSize;
    private int pathLastPointX;
    private int pathLastPointY;
    public int withProvinceID;
    private List<ProvinceBorderLine> provinceBorderLine = new ArrayList();
    private Array<Vector2> nPath = new Array<>();
    private int iLineWidth = 0;
    private boolean civilizationBorder = false;
    private boolean wastelandBorder = false;
    public boolean isLocked = false;
    public long animationTime = 0;
    public List<Integer> lPointsX = new ArrayList();
    public List<Integer> lPointsY = new ArrayList();

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceBorder$1, reason: invalid class name */
    class AnonymousClass1 implements DrawProvinceBorder {
        AnonymousClass1() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorder.DrawProvinceBorder
        public void draw(SpriteBatch spriteBatch, int i, JoinType joinType, float f) {
            spriteBatch.setColor(CFG.COLOR_PROVINCE_STRAIGHT);
            ProvinceBorder.this.drawStraightBorder(spriteBatch, i);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceBorder$10, reason: invalid class name */
    class AnonymousClass10 implements DrawProvinceBorder {
        AnonymousClass10() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorder.DrawProvinceBorder
        public void draw(SpriteBatch spriteBatch, int i, JoinType joinType, float f) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceBorder$11, reason: invalid class name */
    class AnonymousClass11 implements DrawProvinceBorder {
        AnonymousClass11() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorder.DrawProvinceBorder
        public void draw(SpriteBatch spriteBatch, int i, JoinType joinType, float f) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceBorder$12, reason: invalid class name */
    class AnonymousClass12 implements DrawProvinceBorder {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceBorder$12$1, reason: invalid class name */
        class AnonymousClass1 implements DrawProvinceBorder {
            AnonymousClass1() {
            }

            @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorder.DrawProvinceBorder
            public void draw(SpriteBatch spriteBatch, int i, JoinType joinType, float f) {
                spriteBatch.setColor(CFG.COLOR_PROVINCE_SEABYSEA);
                ProvinceBorder.this.drawStraightBorder(spriteBatch, i);
            }
        }

        AnonymousClass12() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorder.DrawProvinceBorder
        public void draw(SpriteBatch spriteBatch, int i, JoinType joinType, float f) {
            float f2 = (CFG.currentTimeMillis - ProvinceBorder.this.animationTime) / 425.0f;
            if (f2 < 1.0f) {
                spriteBatch.setColor(CFG.COLOR_PROVINCE_SEABYSEA);
                ProvinceBorder.this.drawStraightBorder_Percentage(spriteBatch, i, f2);
            } else {
                spriteBatch.setColor(CFG.COLOR_PROVINCE_SEABYSEA);
                ProvinceBorder.this.drawStraightBorder(spriteBatch, i);
                ProvinceBorder.this.drawProvinceBorder = new AnonymousClass1();
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceBorder$13, reason: invalid class name */
    class AnonymousClass13 implements DrawProvinceBorder {
        AnonymousClass13() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorder.DrawProvinceBorder
        public void draw(SpriteBatch spriteBatch, int i, JoinType joinType, float f) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceBorder$14, reason: invalid class name */
    class AnonymousClass14 implements DrawProvinceBorder {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceBorder$14$1, reason: invalid class name */
        class AnonymousClass1 implements DrawProvinceBorder {
            AnonymousClass1() {
            }

            @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorder.DrawProvinceBorder
            public void draw(SpriteBatch spriteBatch, int i, JoinType joinType, float f) {
                spriteBatch.setColor(CFG.COLOR_PROVINCE_DASHED);
                ProvinceBorder.this.drawInnerBorder(spriteBatch, i);
            }
        }

        AnonymousClass14() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorder.DrawProvinceBorder
        public void draw(SpriteBatch spriteBatch, int i, JoinType joinType, float f) {
            spriteBatch.setColor(CFG.COLOR_PROVINCE_DASHED);
            float f2 = (CFG.currentTimeMillis - ProvinceBorder.this.animationTime) / 425.0f;
            if (f2 < 1.0f) {
                ProvinceBorder.this.drawDashedBorder_Percentage(spriteBatch, i, f2);
                return;
            }
            ProvinceBorder.this.drawDashedBorder_Percentage(spriteBatch, i, 1.0f);
            ProvinceBorder.this.drawProvinceBorder = new AnonymousClass1();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceBorder$15, reason: invalid class name */
    class AnonymousClass15 implements DrawProvinceBorder {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceBorder$15$1, reason: invalid class name */
        class AnonymousClass1 implements DrawProvinceBorder {
            AnonymousClass1() {
            }

            @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorder.DrawProvinceBorder
            public void draw(SpriteBatch spriteBatch, int i, JoinType joinType, float f) {
            }
        }

        AnonymousClass15() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorder.DrawProvinceBorder
        public void draw(SpriteBatch spriteBatch, int i, JoinType joinType, float f) {
            if ((CFG.currentTimeMillis - ProvinceBorder.this.animationTime) / 425.0f >= 1.0f) {
                ProvinceBorder.this.drawProvinceBorder = new AnonymousClass1();
            } else {
                spriteBatch.setColor(CFG.COLOR_PROVINCE_SEABYSEA);
                ProvinceBorder.this.drawStraightBorder(spriteBatch, i);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceBorder$16, reason: invalid class name */
    class AnonymousClass16 implements DrawProvinceBorder {
        AnonymousClass16() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorder.DrawProvinceBorder
        public void draw(SpriteBatch spriteBatch, int i, JoinType joinType, float f) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceBorder$17, reason: invalid class name */
    class AnonymousClass17 implements DrawProvinceBorder {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceBorder$17$1, reason: invalid class name */
        class AnonymousClass1 implements DrawProvinceBorder {
            AnonymousClass1() {
            }

            @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorder.DrawProvinceBorder
            public void draw(SpriteBatch spriteBatch, int i, JoinType joinType, float f) {
            }
        }

        AnonymousClass17() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorder.DrawProvinceBorder
        public void draw(SpriteBatch spriteBatch, int i, JoinType joinType, float f) {
            spriteBatch.setColor(CFG.COLOR_PROVINCE_DASHED);
            float f2 = (CFG.currentTimeMillis - ProvinceBorder.this.animationTime) / 425.0f;
            if (f2 < 1.0f) {
                ProvinceBorder.this.drawDashedBorder_Percentage(spriteBatch, i, 1.0f - f2);
                return;
            }
            ProvinceBorder.this.drawDashedBorder_Percentage(spriteBatch, i, 0.0f);
            ProvinceBorder.this.drawProvinceBorder = new AnonymousClass1();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceBorder$18, reason: invalid class name */
    class AnonymousClass18 implements DrawProvinceBorder {
        AnonymousClass18() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorder.DrawProvinceBorder
        public void draw(SpriteBatch spriteBatch, int i, JoinType joinType, float f) {
            if (Game.mapScale.getCurrentScale() >= Game.DRAW_INNER_BORDERS) {
                if (ProvinceBorder.this.getIsCivilizationBorder() || ProvinceBorder.this.getIsWastelandBorder()) {
                    ProvinceBorder.this.drawStraightBorder_Shape(i, joinType, f);
                    Renderer.oSBBorder.end();
                    Renderer.oSBBorder.begin();
                }
                spriteBatch.setColor(new Color(CFG.COLOR_PROVINCE_ACTIVE_PROVINCE_BORDER.r, CFG.COLOR_PROVINCE_ACTIVE_PROVINCE_BORDER.g, CFG.COLOR_PROVINCE_ACTIVE_PROVINCE_BORDER.b, Game.activeProvince_Animation_Data.getBorderAlpha() / 255.0f));
                ProvinceBorder.this.drawDashedBorder(spriteBatch, ProvinceBorderManager.iLineOffset, i);
                return;
            }
            if (ProvinceBorder.this.getIsCivilizationBorder() || ProvinceBorder.this.getIsWastelandBorder()) {
                if (Game.mapScale.getCurrentScale() >= Game.DRAW_INNER_BORDERS) {
                    ProvinceBorder.this.drawStraightBorder_Shape(i, joinType, f);
                } else {
                    ProvinceBorder.this.drawStraightBorder_Shape2(i, joinType, f);
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceBorder$19, reason: invalid class name */
    class AnonymousClass19 implements DrawProvinceBorder {
        AnonymousClass19() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorder.DrawProvinceBorder
        public void draw(SpriteBatch spriteBatch, int i, JoinType joinType, float f) {
            spriteBatch.setColor(CFG.COLOR_PROVINCE_ACTIVE_PROVINCE_BORDER);
            ProvinceBorder.this.drawStraightBorder_Shape(i, joinType, f, CFG.COLOR_PROVINCE_ACTIVE_PROVINCE_BORDER, CFG.COLOR_PROVINCE_ACTIVE_PROVINCE_BORDER2);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceBorder$2, reason: invalid class name */
    class AnonymousClass2 implements DrawProvinceBorder {
        AnonymousClass2() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorder.DrawProvinceBorder
        public void draw(SpriteBatch spriteBatch, int i, JoinType joinType, float f) {
            ProvinceBorder.this.drawStraightBorder_Shape(i, joinType, f);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceBorder$20, reason: invalid class name */
    class AnonymousClass20 implements DrawProvinceBorder {
        AnonymousClass20() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorder.DrawProvinceBorder
        public void draw(SpriteBatch spriteBatch, int i, JoinType joinType, float f) {
            spriteBatch.setColor(Colors.HOVER_POSITIVE);
            ProvinceBorder.this.drawStraightBorder_Shape(i, joinType, f, Colors.HOVER_POSITIVE, new Color(Colors.HOVER_POSITIVE.r, Colors.HOVER_POSITIVE.g, Colors.HOVER_POSITIVE.b, CFG.COLOR_PROVINCE_ACTIVE_PROVINCE_BORDER2.a));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceBorder$21, reason: invalid class name */
    class AnonymousClass21 implements DrawCivBorder {
        AnonymousClass21() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorder.DrawCivBorder
        public void drawCivBorder(int i, JoinType joinType, float f, Color color, Color color2, Array<Vector2> array, float f2, float f3) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceBorder$22, reason: invalid class name */
    class AnonymousClass22 implements DrawCivBorder {
        AnonymousClass22() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorder.DrawCivBorder
        public void drawCivBorder(int i, JoinType joinType, float f, Color color, Color color2, Array<Vector2> array, float f2, float f3) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceBorder$23, reason: invalid class name */
    class AnonymousClass23 implements DrawCivBorder {
        AnonymousClass23() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorder.DrawCivBorder
        public void drawCivBorder(int i, JoinType joinType, float f, Color color, Color color2, Array<Vector2> array, float f2, float f3) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceBorder$24, reason: invalid class name */
    class AnonymousClass24 implements DrawCivBorder {
        AnonymousClass24() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorder.DrawCivBorder
        public void drawCivBorder(int i, JoinType joinType, float f, Color color, Color color2, Array<Vector2> array, float f2, float f3) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceBorder$25, reason: invalid class name */
    class AnonymousClass25 implements DrawCivBorder {
        AnonymousClass25() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorder.DrawCivBorder
        public void drawCivBorder(int i, JoinType joinType, float f, Color color, Color color2, Array<Vector2> array, float f2, float f3) {
            Renderer.shapeDrawer.path2_Double(array, f, joinType, true, f2, f3, ProvinceDraw.joinType_Shadow, ProvinceBorder.pathProvinceBorderExtraWidth, color, color2);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceBorder$26, reason: invalid class name */
    class AnonymousClass26 implements DrawCivBorder {
        AnonymousClass26() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorder.DrawCivBorder
        public void drawCivBorder(int i, JoinType joinType, float f, Color color, Color color2, Array<Vector2> array, float f2, float f3) {
            Renderer.shapeDrawer.path2_Double(array, f, joinType, true, i, ProvinceBorder.mapCordsPosY, ProvinceDraw.joinType_Shadow, ProvinceBorder.pathProvinceBorderExtraWidth, CFG.COLOR_PROVINCE_STRAIGHT_WAR_ACTIVE, CFG.COLOR_PROVINCE_STRAIGHT2_WAR);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceBorder$27, reason: invalid class name */
    class AnonymousClass27 implements DrawCivBorder {
        AnonymousClass27() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorder.DrawCivBorder
        public void drawCivBorder(int i, JoinType joinType, float f, Color color, Color color2, Array<Vector2> array, float f2, float f3) {
            Renderer.shapeDrawer.setColor(color);
            Renderer.shapeDrawer.path2(array, ProvinceBorder.pathProvinceBorderExtraWidth2, joinType, true, f2, f3);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceBorder$28, reason: invalid class name */
    class AnonymousClass28 implements DrawCivBorder {
        AnonymousClass28() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorder.DrawCivBorder
        public void drawCivBorder(int i, JoinType joinType, float f, Color color, Color color2, Array<Vector2> array, float f2, float f3) {
            Renderer.shapeDrawer.setColor(CFG.COLOR_PROVINCE_STRAIGHT_WAR_ACTIVE);
            Renderer.shapeDrawer.path2(array, ProvinceBorder.pathProvinceBorderExtraWidth2, joinType, true, f2, f3);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceBorder$3, reason: invalid class name */
    class AnonymousClass3 implements DrawProvinceBorder {
        AnonymousClass3() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorder.DrawProvinceBorder
        public void draw(SpriteBatch spriteBatch, int i, JoinType joinType, float f) {
            ProvinceBorder.this.drawStraightBorder_Shape2(i, joinType, f);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceBorder$4, reason: invalid class name */
    class AnonymousClass4 implements DrawProvinceBorder {
        AnonymousClass4() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorder.DrawProvinceBorder
        public void draw(SpriteBatch spriteBatch, int i, JoinType joinType, float f) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceBorder$5, reason: invalid class name */
    class AnonymousClass5 implements DrawProvinceBorder {
        AnonymousClass5() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorder.DrawProvinceBorder
        public void draw(SpriteBatch spriteBatch, int i, JoinType joinType, float f) {
            spriteBatch.setColor(CFG.COLOR_PROVINCE_STRAIGHT);
            ProvinceBorder.this.drawStraightBorder(spriteBatch, i);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceBorder$6, reason: invalid class name */
    class AnonymousClass6 implements DrawProvinceBorder {
        AnonymousClass6() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorder.DrawProvinceBorder
        public void draw(SpriteBatch spriteBatch, int i, JoinType joinType, float f) {
            spriteBatch.setColor(CFG.COLOR_PROVINCE_STRAIGHT);
            ProvinceBorder.this.drawStraightBorder(spriteBatch, i);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceBorder$7, reason: invalid class name */
    class AnonymousClass7 implements DrawProvinceBorder {
        AnonymousClass7() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorder.DrawProvinceBorder
        public void draw(SpriteBatch spriteBatch, int i, JoinType joinType, float f) {
            ProvinceBorder.this.drawStraightBorder_ShapeWar(i, joinType, f);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceBorder$8, reason: invalid class name */
    class AnonymousClass8 implements DrawProvinceBorder {
        AnonymousClass8() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorder.DrawProvinceBorder
        public void draw(SpriteBatch spriteBatch, int i, JoinType joinType, float f) {
            ProvinceBorder.this.drawStraightBorder_Shape(i, joinType, f);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceBorder$9, reason: invalid class name */
    class AnonymousClass9 implements DrawProvinceBorder {
        AnonymousClass9() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorder.DrawProvinceBorder
        public void draw(SpriteBatch spriteBatch, int i, JoinType joinType, float f) {
            ProvinceBorder.this.drawStraightBorder_Shape2(i, joinType, f);
        }
    }

    public interface DrawCivBorder {
        void drawCivBorder(int i, JoinType joinType, float f, Color color, Color color2, Array<Vector2> array, float f2, float f3);
    }

    public interface DrawProvinceBorder {
        void draw(SpriteBatch spriteBatch, int i, JoinType joinType, float f);
    }

    public ProvinceBorder(int i, List<Integer> list, List<Integer> list2) {
        this.withProvinceID = i;
        if (list.size() > 0) {
            this.pathLastPointX = list.get(list.size() - 1).intValue() * Game.mapBG.iMapScale;
            this.pathLastPointY = list2.get(list2.size() - 1).intValue() * Game.mapBG.iMapScale;
        }
        int size = list.size() - 1;
        int i2 = 0;
        while (i2 < size) {
            List<ProvinceBorderLine> list3 = this.provinceBorderLine;
            int iIntValue = list.get(i2).intValue() * Game.mapBG.iMapScale;
            int iIntValue2 = list2.get(i2).intValue() * Game.mapBG.iMapScale;
            i2++;
            list3.add(new ProvinceBorderLine(iIntValue, iIntValue2, list.get(i2).intValue() * Game.mapBG.iMapScale, list2.get(i2).intValue() * Game.mapBG.iMapScale));
        }
        int size2 = list.size();
        for (int i3 = 0; i3 < size2; i3++) {
            this.lPointsX.add(list.get(i3));
            this.lPointsY.add(list2.get(i3));
        }
        this.iProvinceBorderLineSize = this.provinceBorderLine.size();
        for (int i4 = 0; i4 < this.iProvinceBorderLineSize; i4++) {
            this.iLineWidth += this.provinceBorderLine.get(i4).getWidth();
        }
        for (int i5 = 0; i5 < this.iProvinceBorderLineSize; i5++) {
            this.nPath.add(new Vector2(this.provinceBorderLine.get(i5).getPosX(), -this.provinceBorderLine.get(i5).getPosY()));
        }
        this.nPath.add(new Vector2(this.pathLastPointX, -this.pathLastPointY));
    }

    public static final void updateDrawCivBorder() {
        if (Game.settingsManager.SETTINGS_PROVINCE_BORDER == 0) {
            drawCivBorder = new AnonymousClass21();
            drawCivBorderWar = new AnonymousClass22();
            return;
        }
        if (Game.settingsManager.SETTINGS_PROVINCE_BORDER == 1) {
            drawCivBorder = new AnonymousClass23();
            drawCivBorderWar = new AnonymousClass24();
        } else if (SettingsProvince.value.ENABLE_DOUBLE_BORDER && Game.settingsManager.DOUBLE_BORDER) {
            drawCivBorder = new AnonymousClass25();
            drawCivBorderWar = new AnonymousClass26();
        } else {
            drawCivBorder = new AnonymousClass27();
            drawCivBorderWar = new AnonymousClass28();
        }
    }

    public final void drawDashedBorder(SpriteBatch spriteBatch, int i, int i2) {
        for (int i3 = 0; i3 < this.iProvinceBorderLineSize; i3++) {
            ProvinceBorderLine provinceBorderLine = this.provinceBorderLine.get(i3);
            Images.imgLine_32.draw2(spriteBatch, i2 + provinceBorderLine.getPosX(), provinceBorderLine.getPosY() + Game.mapCoords.getPosY(), provinceBorderLine.getWidth(), 1, provinceBorderLine.getAngle(), i);
            i += provinceBorderLine.getWidth();
        }
    }

    protected final void drawDashedBorder_Percentage(SpriteBatch spriteBatch, int i, float f) {
        int i2 = (int) (this.iLineWidth * f);
        int width = 0;
        for (int i3 = 0; i3 < this.iProvinceBorderLineSize && width <= i2; i3++) {
            ProvinceBorderLine provinceBorderLine = this.provinceBorderLine.get(i3);
            Images.imgLine_32.draw2(spriteBatch, i + provinceBorderLine.getPosX(), provinceBorderLine.getPosY() + Game.mapCoords.getPosY(), provinceBorderLine.getWidth(), 1, provinceBorderLine.getAngle(), width);
            width += provinceBorderLine.getWidth();
        }
    }

    public final void drawInnerBorder(SpriteBatch spriteBatch, int i) {
        drawDashedBorder(spriteBatch, 0, i);
    }

    public final void drawInnerBorder_Shape(int i) {
    }

    public final void drawStraightBorder(SpriteBatch spriteBatch, int i) {
        for (int i2 = 0; i2 < this.iProvinceBorderLineSize; i2++) {
            ProvinceBorderLine provinceBorderLine = this.provinceBorderLine.get(i2);
            Images.pix.draw2(spriteBatch, i + provinceBorderLine.getPosX(), provinceBorderLine.getPosY() + Game.mapCoords.getPosY(), provinceBorderLine.getWidth(), 1, provinceBorderLine.getAngle());
        }
    }

    protected final void drawStraightBorder_Percentage(SpriteBatch spriteBatch, int i, float f) {
        int i2 = (int) (this.iLineWidth * f);
        int width = 0;
        for (int i3 = 0; i3 < this.iProvinceBorderLineSize && width <= i2; i3++) {
            ProvinceBorderLine provinceBorderLine = this.provinceBorderLine.get(i3);
            Images.pix.draw2(spriteBatch, i + provinceBorderLine.getPosX(), provinceBorderLine.getPosY() + Game.mapCoords.getPosY(), provinceBorderLine.getWidth(), 1, provinceBorderLine.getAngle(), width);
            width += provinceBorderLine.getWidth();
        }
    }

    public final void drawStraightBorder_Shape(int i, JoinType joinType, float f) {
        drawCivBorder.drawCivBorder(i, joinType, f, CFG.COLOR_PROVINCE_STRAIGHT, CFG.COLOR_PROVINCE_STRAIGHT2, this.nPath, i, mapCordsPosY);
    }

    public final void drawStraightBorder_Shape(int i, JoinType joinType, float f, Color color, Color color2) {
        drawCivBorder.drawCivBorder(i, joinType, f, color, color2, this.nPath, i, mapCordsPosY);
    }

    public final void drawStraightBorder_Shape2(int i, JoinType joinType, float f) {
        Renderer.shapeDrawer.setColor(CFG.COLOR_PROVINCE_STRAIGHT);
        Renderer.shapeDrawer.path2(this.nPath, pathProvinceBorderExtraWidth2, ProvinceDraw.joinType_Shadow, true, i, mapCordsPosY);
    }

    public final void drawStraightBorder_Shape2(int i, JoinType joinType, float f, Color color) {
        Renderer.shapeDrawer.setColor(new Color(color.r, color.g, color.b, color.a));
        Renderer.shapeDrawer.path2(this.nPath, f, joinType, true, i, mapCordsPosY);
        Renderer.shapeDrawer.setColor(color);
        Renderer.shapeDrawer.path((Iterable) this.nPath, pathProvinceBorderExtraWidth2, joinType, true);
    }

    public final void drawStraightBorder_ShapeWar(int i, JoinType joinType, float f) {
        drawCivBorderWar.drawCivBorder(i, joinType, f, CFG.COLOR_PROVINCE_STRAIGHT, CFG.COLOR_PROVINCE_STRAIGHT2, this.nPath, i, mapCordsPosY);
    }

    public final void drawStraightBorder_Shape_ActiveProvince(int i, JoinType joinType, float f) {
        Renderer.shapeDrawer.setColor(new Color(0.0f, 0.0f, 0.0f, 0.3f));
        Renderer.shapeDrawer.path2(this.nPath, pathProvinceBorderExtraWidth, ProvinceDraw.joinType_Shadow, true, i, mapCordsPosY);
    }

    public final void drawStraightBorder_Shape_Sea(int i, JoinType joinType, float f) {
        Renderer.shapeDrawer.setColor(new Color(CFG.COLOR_PROVINCE_SEABYSEA.r, CFG.COLOR_PROVINCE_SEABYSEA.g, CFG.COLOR_PROVINCE_SEABYSEA.b, 0.05f));
        Renderer.shapeDrawer.path2(this.nPath, f, joinType, true, i, mapCordsPosY);
    }

    public final void drawStraightBorder_Shape_Sea(int i, JoinType joinType, float f, float f2) {
        Renderer.shapeDrawer.setColor(new Color(CFG.COLOR_PROVINCE_SEABYSEA.r, CFG.COLOR_PROVINCE_SEABYSEA.g, CFG.COLOR_PROVINCE_SEABYSEA.b, 0.05f * f2));
        Renderer.shapeDrawer.path2(this.nPath, f, joinType, true, i, mapCordsPosY);
    }

    public final boolean getIsCivilizationBorder() {
        return this.civilizationBorder;
    }

    public final boolean getIsWastelandBorder() {
        return this.wastelandBorder;
    }

    public final int getWithProvinceID() {
        return this.withProvinceID;
    }

    public final void setIsCivilizationBorder(boolean z, int i) {
        this.civilizationBorder = z;
        updateDrawProvinceBorder(i);
    }

    public final void setIsCivilizationBorder_Just(boolean z, int i) {
        this.civilizationBorder = z;
    }

    protected final void setIsWastelandBorder(boolean z, int i) {
        this.wastelandBorder = z;
        updateDrawProvinceBorder(i);
    }

    public final void updateDrawProvinceBorder(int i) {
        try {
            if (this.isLocked) {
                return;
            }
            if (this.wastelandBorder) {
                if (!this.civilizationBorder) {
                    this.drawProvinceBorder = new AnonymousClass5();
                    return;
                }
                if (Game.mapScale.getCurrentScale() >= Game.DRAW_INNER_BORDERS) {
                    if (Game.settingsManager.SETTINGS_PROVINCE_BORDER == 1) {
                        this.drawProvinceBorder = new AnonymousClass1();
                        return;
                    } else {
                        this.drawProvinceBorder = new AnonymousClass2();
                        return;
                    }
                }
                if (Game.mapScale.getCurrentScale() > SettingsProvince.value.DRAW_BORDERS) {
                    this.drawProvinceBorder = new AnonymousClass3();
                    return;
                } else {
                    this.drawProvinceBorder = new AnonymousClass4();
                    return;
                }
            }
            if (this.civilizationBorder) {
                if (Game.mapScale.getCurrentScale() < Game.DRAW_INNER_BORDERS) {
                    if (Game.mapScale.getCurrentScale() > SettingsProvince.value.DRAW_BORDERS) {
                        this.drawProvinceBorder = new AnonymousClass9();
                        return;
                    } else {
                        this.drawProvinceBorder = new AnonymousClass10();
                        return;
                    }
                }
                if (Game.settingsManager.SETTINGS_PROVINCE_BORDER == 1) {
                    this.drawProvinceBorder = new AnonymousClass6();
                    return;
                } else if (GameValues.provinceBorderWar.ENABLE_WAR_BORDER && (DiplomacyManager.isAtWar(Game.player.iCivID, Game.getProvince(i).getCivID()) || DiplomacyManager.isAtWar(Game.player.iCivID, Game.getProvince(this.withProvinceID).getCivID()))) {
                    this.drawProvinceBorder = new AnonymousClass7();
                    return;
                } else {
                    this.drawProvinceBorder = new AnonymousClass8();
                    return;
                }
            }
            if (Game.getProvince(i).getWasteland() >= 0) {
                this.drawProvinceBorder = new AnonymousClass11();
                return;
            }
            if (Game.mapScale.getCurrentScale() >= Game.DRAW_INNER_BORDERS) {
                this.animationTime = CFG.currentTimeMillis;
                if (!Game.getProvince(i).getSeaProvince() && !Game.getProvince(this.withProvinceID).getSeaProvince()) {
                    this.drawProvinceBorder = new AnonymousClass14();
                    return;
                }
                if (Game.getProvince(i).getSeaProvince() && Game.getProvince(this.withProvinceID).getSeaProvince()) {
                    this.drawProvinceBorder = new AnonymousClass12();
                    return;
                } else {
                    this.drawProvinceBorder = new AnonymousClass13();
                    return;
                }
            }
            this.animationTime = CFG.currentTimeMillis;
            if (!Game.getProvince(i).getSeaProvince() && !Game.getProvince(this.withProvinceID).getSeaProvince()) {
                this.drawProvinceBorder = new AnonymousClass17();
                return;
            }
            if (Game.getProvince(i).getSeaProvince() && Game.getProvince(this.withProvinceID).getSeaProvince()) {
                this.drawProvinceBorder = new AnonymousClass15();
            } else {
                this.drawProvinceBorder = new AnonymousClass16();
            }
        } catch (GdxRuntimeException e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateDrawProvinceBorder_ActiveCivilizationBorder() {
        this.isLocked = true;
        this.drawProvinceBorder = new AnonymousClass19();
    }

    public final void updateDrawProvinceBorder_ActiveProvince() {
        this.isLocked = true;
        this.drawProvinceBorder = new AnonymousClass18();
    }

    public final void updateDrawProvinceBorder_RelationUp() {
        this.isLocked = true;
        this.drawProvinceBorder = new AnonymousClass20();
    }
}
