package aoc.kingdoms.lukasz.menu_element.graph;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
import java.util.ArrayList;
import java.util.List;
import space.earlygrey.shapedrawer.JoinType;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class GraphData {
    private static final float ALPHA_CIV_LINE = 0.8f;
    protected static final int ANIMATION_TIME = 450;
    private boolean drawData;
    private int iBeginTurnID;
    private int iCivID;
    private int iPointsSize;
    private boolean visible = true;
    private boolean backAnimation = false;
    private long lTime = 0;
    private List<Integer> lPointsY = new ArrayList();
    private Array<Vector2> lVectorPoints = new Array<>();

    protected GraphData(int i, List<Integer> list, int i2) {
        this.iPointsSize = 0;
        this.drawData = true;
        this.iCivID = i;
        this.iPointsSize = list.size();
        for (int i3 = 0; i3 < this.iPointsSize; i3++) {
            this.lPointsY.add(list.get(i3));
        }
        this.iBeginTurnID = i2;
        this.drawData = false;
    }

    private final void drawGraphData(SpriteBatch spriteBatch, int i, int i2, List<Integer> list, int i3, boolean z) {
        try {
            spriteBatch.setColor(new Color(Game.getCiv(this.iCivID).getR(), Game.getCiv(this.iCivID).getG(), Game.getCiv(this.iCivID).getB(), z ? 1.0f : 0.8f));
        } catch (IndexOutOfBoundsException unused) {
            spriteBatch.setColor(new Color(0.05882353f, 0.05882353f, 0.05882353f, z ? 1.0f : 0.8f));
        }
        if (this.lVectorPoints.size > 1) {
            Array array = new Array();
            float f = i;
            float f2 = -i2;
            array.add(new Vector2(this.lVectorPoints.get(0).x + f, (-this.lVectorPoints.get(0).y) + f2));
            int i4 = this.lVectorPoints.size;
            for (int i5 = 1; i5 < i4; i5++) {
                if (this.lVectorPoints.get(i5).x != this.lVectorPoints.get(i5 - 1).x) {
                    array.add(new Vector2(this.lVectorPoints.get(i5).x + f, (-this.lVectorPoints.get(i5).y) + f2));
                }
            }
            Renderer.shapeDrawer.setColor(Graph.GRAPH_LINE_COLOR);
            Renderer.shapeDrawer.path((Iterable) array, 1.0f, JoinType.SMOOTH, true);
            Renderer.oSBBorder.end();
            Renderer.oSBBorder.begin();
        }
    }

    protected final void buildGraph(int i, int i2, int i3, List<Integer> list) {
        this.lVectorPoints.clear();
        for (int i4 = 0; i4 < this.iPointsSize; i4++) {
            float f = i;
            this.lVectorPoints.add(new Vector2(list.get(this.iBeginTurnID + i4).intValue(), f - ((((this.lPointsY.get(i4).intValue() * 100.0f) * f) / (i3 - i2)) / 100.0f)));
        }
    }

    protected final void draw(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, List<Integer> list, int i5, boolean z, int i6) {
        if (this.lTime + 450 >= CFG.currentTimeMillis) {
            drawAnimation(spriteBatch, i, i2, i3, i4, list, i5, z, i6);
        } else {
            drawGraphData(spriteBatch, i, i2 - i6, list, i5, z);
        }
    }

    protected final void drawAnimation(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, List<Integer> list, int i5, boolean z, int i6) {
        if (this.backAnimation) {
            Renderer.clipView_Start(spriteBatch, i, CFG.GAME_HEIGHT - i2, i3 - ((int) (i3 * ((CFG.currentTimeMillis - this.lTime) / 450.0f))), -i4);
        } else {
            Renderer.clipView_Start(spriteBatch, i, CFG.GAME_HEIGHT - i2, (int) (i3 * ((CFG.currentTimeMillis - this.lTime) / 450.0f)), -i4);
        }
        drawGraphData(spriteBatch, i, i2 - i6, list, i5, true);
        Renderer.clipView_End(spriteBatch);
    }

    protected final void drawCivButton(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        float f;
        float f2 = Graph.GRAPH_BG_COLOR.r;
        float f3 = Graph.GRAPH_BG_COLOR.g;
        float f4 = Graph.GRAPH_BG_COLOR.b;
        if (z) {
            f = Graph.GRAPH_BG_COLOR.a * 2.0f;
        } else {
            f = this.drawData ? Graph.GRAPH_BG_COLOR.a : Graph.GRAPH_BG_COLOR.a / 4.0f;
        }
        spriteBatch.setColor(new Color(f2, f3, f4, f));
        Images.pix.draw(spriteBatch, i, i2, Graph.getGraphButtonWidth(), Graph.getGraphButtonHeight());
        spriteBatch.setColor(new Color(Graph.GRAPH_BORDERS_COLOR.r, Graph.GRAPH_BORDERS_COLOR.g, Graph.GRAPH_BORDERS_COLOR.b, this.drawData ? Graph.GRAPH_BORDERS_COLOR.a : 0.25f));
        try {
            spriteBatch.setColor(new Color(Game.getCiv(this.iCivID).getR(), Game.getCiv(this.iCivID).getG(), Game.getCiv(this.iCivID).getB(), this.drawData ? 0.8f : 0.4f));
        } catch (IndexOutOfBoundsException unused) {
            spriteBatch.setColor(new Color(0.05882353f, 0.05882353f, 0.05882353f, this.drawData ? 0.8f : 0.4f));
        }
        Images.pix.draw(spriteBatch, i, i2, CFG.CIV_COLOR_WIDTH, Graph.getGraphButtonHeight());
        spriteBatch.setColor(this.drawData ? Color.WHITE : new Color(1.0f, 1.0f, 1.0f, 0.25f));
        try {
            Game.getCiv(this.iCivID).getFlag().draw(spriteBatch, ((Graph.getGraphButtonWidth() / 2) + i) - (CFG.CIV_FLAG_WIDTH / 2), ((Graph.getGraphButtonHeight() / 2) + i2) - (CFG.CIV_FLAG_HEIGHT / 2), CFG.CIV_FLAG_WIDTH, CFG.CIV_FLAG_HEIGHT);
        } catch (IndexOutOfBoundsException unused2) {
            ImageManager.getImage(Images.randomCivilizationFlag).draw(spriteBatch, (i + (Graph.getGraphButtonWidth() / 2)) - (CFG.CIV_FLAG_WIDTH / 2), ((i2 + (Graph.getGraphButtonHeight() / 2)) - (CFG.CIV_FLAG_HEIGHT / 2)) - ImageManager.getImage(Images.randomCivilizationFlag).getHeight(), CFG.CIV_FLAG_WIDTH, CFG.CIV_FLAG_HEIGHT);
        }
        spriteBatch.setColor(Color.WHITE);
    }

    protected final boolean getBackAnimation() {
        return this.backAnimation;
    }

    protected final int getBeginTurnID() {
        return this.iBeginTurnID;
    }

    protected final int getCivID() {
        return this.iCivID;
    }

    protected final boolean getDrawData() {
        return this.drawData;
    }

    protected final int getPointY(int i) {
        try {
            return this.lPointsY.get(i).intValue();
        } catch (IndexOutOfBoundsException unused) {
            return 0;
        }
    }

    protected final int getPointsSize() {
        return this.iPointsSize;
    }

    protected final long getTime() {
        return this.lTime;
    }

    protected final boolean getVisible() {
        return this.visible;
    }

    protected final void setBackAnimation(boolean z) {
        this.backAnimation = z;
    }

    protected final void setDrawData(boolean z) {
        if (z != this.drawData) {
            if (this.lTime <= CFG.currentTimeMillis - 450 || !(this.drawData || this.backAnimation)) {
                this.lTime = CFG.currentTimeMillis;
            } else {
                this.lTime = CFG.currentTimeMillis - (450 - (CFG.currentTimeMillis - this.lTime));
            }
            this.backAnimation = !z;
        }
        this.drawData = z;
    }

    protected final void setVisible(boolean z) {
        this.visible = z;
    }
}
