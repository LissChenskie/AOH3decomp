package aoc.kingdoms.lukasz.menu_element.pieChart;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FBO.idYW.HjHDSSkYG;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.PolygonRegion;
import com.badlogic.gdx.graphics.g2d.PolygonSprite;
import com.badlogic.gdx.graphics.g2d.PolygonSpriteBatch;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.EarClippingTriangulator;
import com.badlogic.gdx.math.Intersector;
import com.badlogic.gdx.math.Vector2;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class PieChart_Renderer {
    public static final int ANIMATION_TIME = 150;
    public static TextureRegion pieChart_BG;
    public static TextureRegion pieChart_BG2;
    public static Image pieChart_Frame;
    private Vector2 center;
    private Vector2 centerTop;
    private float[] fv;
    private IntersectAt intersectAt;
    private Vector2 leftBottom;
    private Vector2 leftTop;
    private PolygonSpriteBatch oPB;
    private Vector2 rightBottom;
    private Vector2 rightTop;
    private static Color COLOR_UNKNOWN_DATA = new Color(0.0f, 0.0f, 0.0f, 1.0f);
    public static Color progressBarBG = new Color(0.09803922f, 0.09803922f, 0.15686275f, 1.0f);
    public static Color progressBar = new Color(0.29411766f, 0.49019608f, 0.64705884f, 1.0f);

    protected enum IntersectAt {
        NONE,
        TOP,
        BOTTOM,
        LEFT,
        RIGHT
    }

    public PieChart_Renderer() {
        pieChart_BG = new TextureRegion(ImageManager.loadTexture(HjHDSSkYG.FaXQQ, Pixmap.Format.RGBA8888));
        pieChart_BG2 = new TextureRegion(ImageManager.loadTexture("ui/piechart/bg2.png", Pixmap.Format.RGBA8888));
        pieChart_Frame = new Image(ImageManager.loadTexture("ui/piechart/frame.png", Pixmap.Format.RGBA8888), Texture.TextureFilter.Linear);
        this.oPB = new PolygonSpriteBatch();
        this.center = new Vector2(pieChart_BG.getRegionWidth() / 2, pieChart_BG.getRegionHeight() / 2);
        this.centerTop = new Vector2(pieChart_BG.getRegionWidth() / 2, pieChart_BG.getRegionHeight());
        this.leftTop = new Vector2(0.0f, pieChart_BG.getRegionHeight());
        this.leftBottom = new Vector2(0.0f, 0.0f);
        this.rightBottom = new Vector2(pieChart_BG.getRegionWidth(), 0.0f);
        this.rightTop = new Vector2(pieChart_BG.getRegionWidth(), pieChart_BG.getRegionHeight());
        setPercentage(0.0f);
    }

    private final Vector2 IntersectPoint(Vector2 vector2) {
        Vector2 vector3 = new Vector2();
        if (Intersector.intersectSegments(this.leftTop, this.rightTop, this.center, vector2, vector3)) {
            this.intersectAt = IntersectAt.TOP;
            return vector3;
        }
        if (Intersector.intersectSegments(this.leftBottom, this.rightBottom, this.center, vector2, vector3)) {
            this.intersectAt = IntersectAt.BOTTOM;
            return vector3;
        }
        if (Intersector.intersectSegments(this.leftTop, this.leftBottom, this.center, vector2, vector3)) {
            this.intersectAt = IntersectAt.LEFT;
            return vector3;
        }
        if (Intersector.intersectSegments(this.rightTop, this.rightBottom, this.center, vector2, vector3)) {
            this.intersectAt = IntersectAt.RIGHT;
            return vector3;
        }
        this.intersectAt = IntersectAt.NONE;
        return null;
    }

    private final float convertToRadians(float f) {
        return f * 0.017453292f;
    }

    private final void drawCircle(TextureRegion textureRegion, int i, int i2, int i3, int i4, Color color) {
        if (this.fv == null) {
            return;
        }
        PolygonSprite polygonSprite = new PolygonSprite(new PolygonRegion(textureRegion, this.fv, new EarClippingTriangulator().computeTriangles(this.fv).toArray()));
        polygonSprite.setOrigin(0.0f, 0.0f);
        polygonSprite.setPosition(i, (CFG.GAME_HEIGHT - i4) - i2);
        polygonSprite.setRotation(0.0f);
        polygonSprite.setColor(color);
        polygonSprite.setSize(i3, i4);
        polygonSprite.draw(this.oPB);
    }

    private final void drawCircle2(TextureRegion textureRegion, int i, int i2, int i3, int i4, Color color) {
        if (this.fv == null) {
            return;
        }
        PolygonSprite polygonSprite = new PolygonSprite(new PolygonRegion(textureRegion, this.fv, new EarClippingTriangulator().computeTriangles(this.fv).toArray()));
        polygonSprite.setOrigin(0.0f, 0.0f);
        polygonSprite.setPosition(i, (CFG.GAME_HEIGHT - i4) - i2);
        polygonSprite.setRotation(0.0f);
        polygonSprite.setColor(new Color(color.r - 0.1f, color.g - 0.1f, color.b - 0.1f, color.a));
        polygonSprite.setSize(i3, i4);
        polygonSprite.draw(this.oPB);
    }

    private final void drawCircle_100Percent(SpriteBatch spriteBatch, TextureRegion textureRegion, int i, int i2, int i3, int i4, Color color) {
        spriteBatch.setColor(color);
        spriteBatch.draw(textureRegion.getTexture(), i, (-i2) - i4, 0.0f, 0.0f, i3, i4, 1.0f, 1.0f, 0.0f, 0, 0, textureRegion.getRegionWidth(), textureRegion.getRegionHeight(), false, false);
        spriteBatch.setColor(Color.WHITE);
    }

    private final void drawCircle_100Percent2(SpriteBatch spriteBatch, TextureRegion textureRegion, int i, int i2, int i3, int i4, Color color) {
        spriteBatch.setColor(new Color(color.r - 0.1f, color.g - 0.1f, color.b - 0.1f, color.a));
        spriteBatch.draw(textureRegion.getTexture(), i, (-i2) - i4, 0.0f, 0.0f, i3, i4, 1.0f, 1.0f, 0.0f, 0, 0, textureRegion.getRegionWidth(), textureRegion.getRegionHeight(), false, false);
        spriteBatch.setColor(Color.WHITE);
    }

    private final void drawPieChart_Data(TextureRegion textureRegion, int i, int i2, int i3, int i4, PieChart_Data pieChart_Data, float f) {
        try {
            this.oPB.begin();
            float percentage = pieChart_Data.getPieChartValue(0).getPercentage() * f;
            for (int i5 = 1; i5 < pieChart_Data.getPieChartValuesSize(); i5++) {
                setPercentage(percentage);
                try {
                    drawCircle(textureRegion, i, i2, i3, i4, new Color(pieChart_Data.getPieChartValue_ColorR(i5), pieChart_Data.getPieChartValue_ColorG(i5), pieChart_Data.getPieChartValue_ColorB(i5), 1.0f));
                } catch (IndexOutOfBoundsException unused) {
                    drawCircle(textureRegion, i, i2, i3, i4, COLOR_UNKNOWN_DATA);
                }
                percentage += pieChart_Data.getPieChartValue(i5).getPercentage() * f;
            }
            this.oPB.end();
        } catch (Exception unused2) {
        }
    }

    private final void drawPieChart_Data2(TextureRegion textureRegion, int i, int i2, int i3, int i4, PieChart_Data pieChart_Data, float f, float f2, Color color) {
        try {
            this.oPB.begin();
            setPercentage(f2);
            drawCircle2(textureRegion, i, i2, i3, i4, color);
            this.oPB.end();
        } catch (Exception unused) {
        }
    }

    protected final void draw(SpriteBatch spriteBatch, TextureRegion textureRegion, int i, int i2, int i3, int i4, PieChart_Data pieChart_Data, boolean z, float f) {
        try {
            try {
                drawCircle_100Percent(spriteBatch, textureRegion, i, i2, i3, i4, new Color(pieChart_Data.getPieChartValue_ColorR(0), pieChart_Data.getPieChartValue_ColorG(0), pieChart_Data.getPieChartValue_ColorB(0), 1.0f));
            } catch (Exception unused) {
                drawCircle_100Percent(spriteBatch, textureRegion, i, i2, i3, i4, COLOR_UNKNOWN_DATA);
            }
            spriteBatch.end();
            drawPieChart_Data(textureRegion, i, i2, i3, i4, pieChart_Data, f);
            spriteBatch.begin();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    protected final void draw2(SpriteBatch spriteBatch, TextureRegion textureRegion, int i, int i2, int i3, int i4, PieChart_Data pieChart_Data, boolean z, float f, float f2, Color color) {
        try {
            try {
                drawCircle_100Percent(spriteBatch, textureRegion, i, i2, i3, i4, progressBarBG);
            } catch (IndexOutOfBoundsException unused) {
                drawCircle_100Percent(spriteBatch, textureRegion, i, i2, i3, i4, COLOR_UNKNOWN_DATA);
            }
            spriteBatch.end();
            drawPieChart_Data2(textureRegion, i, i2, i3, i4, pieChart_Data, f, f2, color);
            spriteBatch.begin();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final int getHeight() {
        return pieChart_Frame.getHeight();
    }

    public final int getWidth() {
        return pieChart_Frame.getWidth();
    }

    protected final void setPercentage(float f) {
        double dConvertToRadians = convertToRadians(90.0f) - convertToRadians((360.0f * f) / 100.0f);
        double regionWidth = pieChart_BG.getRegionWidth() > pieChart_BG.getRegionHeight() ? pieChart_BG.getRegionWidth() : pieChart_BG.getRegionHeight();
        Vector2 vector2IntersectPoint = IntersectPoint(new Vector2(this.center.x + ((float) (Math.cos(dConvertToRadians) * regionWidth)), this.center.y + ((float) (Math.sin(dConvertToRadians) * regionWidth))));
        if (this.intersectAt == IntersectAt.TOP) {
            if (vector2IntersectPoint.x >= pieChart_BG.getRegionWidth() / 2) {
                this.fv = new float[]{this.center.x, this.center.y, this.centerTop.x, this.centerTop.y, this.leftTop.x, this.leftTop.y, this.leftBottom.x, this.leftBottom.y, this.rightBottom.x, this.rightBottom.y, this.rightTop.x, this.rightTop.y, vector2IntersectPoint.x, vector2IntersectPoint.y};
                return;
            } else {
                this.fv = new float[]{this.center.x, this.center.y, this.centerTop.x, this.centerTop.y, vector2IntersectPoint.x, vector2IntersectPoint.y};
                return;
            }
        }
        if (this.intersectAt == IntersectAt.BOTTOM) {
            this.fv = new float[]{this.center.x, this.center.y, this.centerTop.x, this.centerTop.y, this.leftTop.x, this.leftTop.y, this.leftBottom.x, this.leftBottom.y, vector2IntersectPoint.x, vector2IntersectPoint.y};
            return;
        }
        if (this.intersectAt == IntersectAt.LEFT) {
            this.fv = new float[]{this.center.x, this.center.y, this.centerTop.x, this.centerTop.y, this.leftTop.x, this.leftTop.y, vector2IntersectPoint.x, vector2IntersectPoint.y};
        } else if (this.intersectAt == IntersectAt.RIGHT) {
            this.fv = new float[]{this.center.x, this.center.y, this.centerTop.x, this.centerTop.y, this.leftTop.x, this.leftTop.y, this.leftBottom.x, this.leftBottom.y, this.rightBottom.x, this.rightBottom.y, vector2IntersectPoint.x, vector2IntersectPoint.y};
        } else {
            this.fv = null;
        }
    }
}
