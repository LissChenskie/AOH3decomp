package aoc.kingdoms.lukasz.jakowski.Renderer;

import aoc.kingdoms.lukasz.jakowski.AI.Government.nSju.IlLkpaQxs;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FBO.idYW.HjHDSSkYG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.GlyphLayout_Game;
import aoc.kingdoms.lukasz.jakowski.Keyboard;
import aoc.kingdoms.lukasz.jakowski.Steam.SteamManager;
import aoc.kingdoms.lukasz.jakowski.zOther.XY;
import aoc.kingdoms.lukasz.map.army.ArmyDivision;
import aoc.kingdoms.lukasz.map.map.MapScale;
import aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy;
import aoc.kingdoms.lukasz.map.technology.Bhs.fiRhHJntP;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_Renderer;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import aoc.kingdoms.lukasz.utilities.FPS;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.OrthographicCamera;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.graphics.g2d.freetype.FreeTypeFontGenerator;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.scenes.scene2d.utils.ScissorStack;
import com.badlogic.gdx.utils.viewport.FitViewport;
import com.badlogic.gdx.utils.viewport.Viewport;
import com.google.android.gms.internal.tasks.Vhe.SwmJtrccN;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import space.earlygrey.shapedrawer.ShapeDrawer;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Renderer {
    public static final int LOADING_CHANGE_TEXT_TIME = 4000;
    public static OrthographicCamera camera = null;
    public static boolean drawArmyInProvince = true;
    public static TextureRegion drawerPix;
    public static BitmapFont fontArmy_GlyphLayout;
    private static int numOfScissors;
    public static SpriteBatch oSBBorder;
    public static Rectangle peekBounds;
    public static PieChart_Renderer pieChartRenderer;
    public static ShaderProgram shaderAlpha;
    public static ShaderProgram shaderAlpha2;
    public static ShaderProgram shaderAlpha_Map;
    public static ShaderProgram shaderAlpha_MapSea;
    public static ShaderProgram shaderAlpha_Pattern;
    public static ShaderProgram shaderBlackWhite;
    public static ShaderProgram shaderBlur;
    public static ShaderProgram shaderDefault;
    public static ShaderProgram shaderDefaultProvince;
    public static ShaderProgram shaderDefault_FBO;
    public static ShaderProgram shaderOutline;
    public static float shaderTime;
    public static float shaderTime2;
    public static ShaderProgram shaderWater;
    public static ShaderProgram shaderWater2;
    public static ShaderProgram shaderWater3;
    public static ShapeDrawer shapeDrawer;
    public static FPS uFPS;
    public static Viewport viewport;
    public SpriteBatch oSB;
    public static Color BACKGROUND_COLOR = new Color(0.0509f, 0.1215f, 0.1921f, 1.0f);
    public static boolean updateBackgroundColor = true;
    public static CopyOnWriteArrayList<Game.SimpleTask> simpleTasksCivNames = new CopyOnWriteArrayList<>();
    public static List<SimpleTaskArmyText> simpleTasks_ArmyWidth = Collections.synchronizedList(new ArrayList());
    public static int boxBGExtraY = CFG.PADDING;
    public static int iBoxCornerX = 0;
    public static long BOX_CORNER_TIME = 0;
    public static long BOX_CORNER_TIMER = 56;
    public static GlyphLayout_Game glyphLayout = new GlyphLayout_Game();
    public static String charset = "";
    public static List<BitmapFont> fontMain = new ArrayList();
    public static int fontMainSize = 0;
    public static List<BitmapFont> fontBorder = new ArrayList();
    public static int fontBorderSize = 0;
    public static final Vector3 textRotatedVector3 = new Vector3(0.0f, 0.0f, 1.0f);
    public static String sLoadingText = "";
    public static int iLoadingTextWidth = 0;
    public static long loadingTime = 0;

    public static class SimpleTaskArmyText {
        public ArmyDivision armyDivision;
        public String taskKey;
        public boolean updateShift;

        public SimpleTaskArmyText(String str, ArmyDivision armyDivision, boolean z) {
            this.taskKey = str;
            this.armyDivision = armyDivision;
            this.updateShift = z;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof SimpleTaskArmyText) {
                return Objects.equals(this.taskKey, ((SimpleTaskArmyText) obj).taskKey);
            }
            return false;
        }

        public int hashCode() {
            return 0;
        }

        public void update() {
            this.armyDivision.updateArmyWidth_Just(this.updateShift);
        }
    }

    public Renderer(int i, int i2) {
        CFG.GAME_WIDTH = i;
        CFG.GAME_HEIGHT = i2;
        OrthographicCamera orthographicCamera = new OrthographicCamera(CFG.GAME_WIDTH, CFG.GAME_HEIGHT);
        camera = orthographicCamera;
        orthographicCamera.setToOrtho(false, CFG.GAME_WIDTH, -CFG.GAME_HEIGHT);
        viewport = new FitViewport(CFG.GAME_WIDTH, CFG.GAME_HEIGHT, camera);
        this.oSB = new SpriteBatch();
        uFPS = new FPS();
        oSBBorder = new SpriteBatch();
        Images.pix = ImageManager.buildPix_IMG();
        Images.pix2 = ImageManager.buildPix();
        drawerPix = new TextureRegion(Images.pix.getTexture());
        shapeDrawer = new ShapeDrawer(oSBBorder, drawerPix);
        loadShaders();
    }

    public static void addSimpleTaskCivsNames(Game.SimpleTask simpleTask) {
        if (simpleTasksCivNames.contains(simpleTask)) {
            return;
        }
        simpleTasksCivNames.add(simpleTask);
    }

    public static void addSimpleTask_ArmyWidth(SimpleTaskArmyText simpleTaskArmyText) {
        if (simpleTasks_ArmyWidth.contains(simpleTaskArmyText)) {
            return;
        }
        simpleTasks_ArmyWidth.add(simpleTaskArmyText);
    }

    public static final void clearFonts() {
        for (int i = 0; i < fontMainSize; i++) {
            fontMain.get(i).dispose();
            fontMain.set(i, null);
        }
        fontMain.clear();
        fontMainSize = 0;
    }

    public static final void clearUnclearedScissors(SpriteBatch spriteBatch) {
        while (numOfScissors > 0) {
            clipView_End(spriteBatch);
        }
    }

    public static final void clipViewPeek() {
        try {
            peekBounds = ScissorStack.peekScissors();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void clipViewPeek_Add(SpriteBatch spriteBatch) {
        try {
            clearUnclearedScissors(spriteBatch);
            Rectangle rectangle = peekBounds;
            if (rectangle != null) {
                ScissorStack.pushScissors(rectangle);
                numOfScissors++;
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void clipView_End(SpriteBatch spriteBatch) {
        try {
            numOfScissors = Math.max(numOfScissors - 1, 0);
            spriteBatch.flush();
            ScissorStack.popScissors();
        } catch (Exception unused) {
        }
    }

    public static final boolean clipView_Start(SpriteBatch spriteBatch, int i, int i2, int i3, int i4) {
        try {
            Rectangle rectangle = new Rectangle(i, i2, i3, i4);
            spriteBatch.flush();
            numOfScissors++;
            return ScissorStack.pushScissors(rectangle);
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return false;
        }
    }

    public static final void drawBlueBox(SpriteBatch spriteBatch, int i, int i2, int i3, int i4) {
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_INFO.r, Colors.COLOR_GRADIENT_BG_INFO.g, Colors.COLOR_GRADIENT_BG_INFO.b, 0.9f));
        Images.pix.draw(spriteBatch, i, i2, i3, i4);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_INFO.r, Colors.COLOR_GRADIENT_OVER_INFO.g, Colors.COLOR_GRADIENT_OVER_INFO.b, 0.5f));
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, i, i2, i3, i4);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_INFO.r, Colors.COLOR_GRADIENT_OVER_INFO.g, Colors.COLOR_GRADIENT_OVER_INFO.b, 0.25f));
        Images.gradientXY.draw(spriteBatch, i, i2, i3, i4);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_INFO.r, Colors.COLOR_GRADIENT_OVER_INFO.g, Colors.COLOR_GRADIENT_OVER_INFO.b, 1.0f));
        Images.gradientFull.draw(spriteBatch, i, i2 + 1, i3, 1);
        int i5 = i2 + i4;
        Images.gradientFull.draw(spriteBatch, i, i5 - 2, i3, 1);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 1.0f));
        Images.gradientFull.draw(spriteBatch, i, i2, i3, 1);
        Images.gradientFull.draw(spriteBatch, i, i5 - 1, i3, 1);
        spriteBatch.setColor(Color.WHITE);
    }

    public static final void drawBox(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, float f) {
        drawBox(spriteBatch, Images.boxEdge, i, i2, i3, i4, f);
    }

    public static final void drawBox(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, int i5, float f) {
        int i6 = (i5 + 1) / 2;
        int i7 = i5 / 2;
        Image image = ImageManager.getImage(i);
        int iMax = Math.max(i4, image.getWidth() * 2);
        image.draw2(spriteBatch, i2, i3, iMax - image.getWidth(), i6);
        int i8 = i2 + iMax;
        image.draw2(spriteBatch, i8 - image.getWidth(), i3, image.getWidth(), i6, true);
        int i9 = i3 + i6;
        image.draw2(spriteBatch, i2, i9, iMax - image.getWidth(), i7, false, true);
        image.draw2(spriteBatch, i8 - image.getWidth(), i9, image.getWidth(), i7, true, true);
        spriteBatch.setColor(Color.WHITE);
    }

    public static final void drawBox(SpriteBatch spriteBatch, Image image, int i, int i2, int i3, int i4, float f) {
        int i5 = (i4 + 1) / 2;
        int i6 = i4 / 2;
        int iMax = Math.max(i3, image.getWidth() * 2);
        image.draw2(spriteBatch, i, i2, iMax - image.getWidth(), i5);
        int i7 = i + iMax;
        image.draw2(spriteBatch, i7 - image.getWidth(), i2, image.getWidth(), i5, true);
        int i8 = i2 + i5;
        image.draw2(spriteBatch, i, i8, iMax - image.getWidth(), i6, false, true);
        image.draw2(spriteBatch, i7 - image.getWidth(), i8, image.getWidth(), i6, true, true);
        spriteBatch.setColor(Color.WHITE);
    }

    public static final void drawBox2(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, float f) {
        Images.pix.draw2(spriteBatch, i, i2, i3, 1);
        int i5 = i2 + 1;
        int i6 = i4 - 2;
        Images.pix.draw2(spriteBatch, (i + i3) - 1, i5, 1, i6);
        Images.pix.draw2(spriteBatch, i, i5, 1, i6);
        Images.pix.draw2(spriteBatch, i, (i2 + i4) - 1, i3, 1);
        spriteBatch.setColor(Color.WHITE);
    }

    public static final void drawBoxBOT(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, int i5, float f) {
        ImageManager.getImage(i).draw2(spriteBatch, i2, i3, i4 - ImageManager.getImage(i).getWidth(), i5, false, true);
        ImageManager.getImage(i).draw2(spriteBatch, (i2 + i4) - ImageManager.getImage(i).getWidth(), i3, ImageManager.getImage(i).getWidth(), i5, true, true);
        spriteBatch.setColor(Color.WHITE);
    }

    public static final void drawBoxBOT(SpriteBatch spriteBatch, Image image, int i, int i2, int i3, int i4, float f) {
        image.draw2(spriteBatch, i, i2, i3 - image.getWidth(), i4, false, true);
        image.draw2(spriteBatch, (i + i3) - image.getWidth(), i2, image.getWidth(), i4, true, true);
        spriteBatch.setColor(Color.WHITE);
    }

    public static final void drawBoxCorner(SpriteBatch spriteBatch, int i, int i2, int i3, int i4) {
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.85f));
        ImageManager.getImage(Images.boxBGLinePix).draw(spriteBatch, i, i2, i3, i4);
        Image image = ImageManager.getImage(Images.boxBGCorner);
        int i5 = boxBGExtraY;
        image.draw(spriteBatch, i - i5, i2 - i5);
        int i6 = i + i3;
        ImageManager.getImage(Images.boxBGCorner).draw(spriteBatch, i6, i2 - boxBGExtraY, true, false);
        int i7 = i2 + i4;
        ImageManager.getImage(Images.boxBGCorner).draw(spriteBatch, i - boxBGExtraY, i7, false, true);
        ImageManager.getImage(Images.boxBGCorner).draw(spriteBatch, i6, i7, true, true);
        Image image2 = ImageManager.getImage(Images.boxBGLine);
        int i8 = boxBGExtraY;
        image2.draw2(spriteBatch, i - i8, i2, i8, i4);
        ImageManager.getImage(Images.boxBGLine).draw2(spriteBatch, i6, i2, boxBGExtraY, i4, true, false);
        Image image3 = ImageManager.getImage(Images.boxBGLineH);
        int i9 = boxBGExtraY;
        image3.draw2(spriteBatch, i, i2 - i9, i3, i9);
        ImageManager.getImage(Images.boxBGLineH).draw2(spriteBatch, i, i7, i3, boxBGExtraY, false, true);
        spriteBatch.setColor(Color.WHITE);
    }

    public static final void drawBoxCorner2(SpriteBatch spriteBatch, int i, int i2, int i3, int i4) {
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 1.0f));
        int i5 = i2 + i4;
        ImageManager.getImage(Images.boxBGCorner).draw(spriteBatch, i - boxBGExtraY, i5, false, true);
        ImageManager.getImage(Images.boxBGCorner).draw(spriteBatch, i + i3, i5, true, true);
        if (BOX_CORNER_TIME <= CFG.currentTimeMillis - BOX_CORNER_TIMER) {
            BOX_CORNER_TIME = CFG.currentTimeMillis;
            iBoxCornerX++;
        }
        ImageManager.getImage(Images.boxBGLineH).draw2(spriteBatch, i, i5, i3, boxBGExtraY, -iBoxCornerX, 0, false, true);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.75f));
        Images.gradientXY.draw(spriteBatch, i - CFG.PADDING, i2, i3 + (CFG.PADDING * 2), i4);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 1.0f));
        double d = i4 / 2.0f;
        int i6 = i4 / 2;
        Images.gradientXY.draw(spriteBatch, i - CFG.PADDING, i2 + ((int) Math.ceil(d)), i3 + (CFG.PADDING * 2), i6);
        Images.gradientXY.draw(spriteBatch, i - CFG.PADDING, i2 + ((int) Math.ceil(d)), i3 + (CFG.PADDING * 2), i6);
    }

    public static final void drawBoxCornerAlpha(SpriteBatch spriteBatch, int i, int i2, int i3, int i4) {
        ImageManager.getImage(Images.boxBGLinePix).draw(spriteBatch, i, i2, i3, i4);
        Image image = ImageManager.getImage(Images.boxBGCorner);
        int i5 = boxBGExtraY;
        image.draw(spriteBatch, i - i5, i2 - i5);
        int i6 = i + i3;
        ImageManager.getImage(Images.boxBGCorner).draw(spriteBatch, i6, i2 - boxBGExtraY, true, false);
        int i7 = i2 + i4;
        ImageManager.getImage(Images.boxBGCorner).draw(spriteBatch, i - boxBGExtraY, i7, false, true);
        ImageManager.getImage(Images.boxBGCorner).draw(spriteBatch, i6, i7, true, true);
        Image image2 = ImageManager.getImage(Images.boxBGLine);
        int i8 = boxBGExtraY;
        image2.draw2(spriteBatch, i - i8, i2, i8, i4);
        ImageManager.getImage(Images.boxBGLine).draw2(spriteBatch, i6, i2, boxBGExtraY, i4, true, false);
        Image image3 = ImageManager.getImage(Images.boxBGLineH);
        int i9 = boxBGExtraY;
        image3.draw2(spriteBatch, i, i2 - i9, i3, i9);
        ImageManager.getImage(Images.boxBGLineH).draw2(spriteBatch, i, i7, i3, boxBGExtraY, false, true);
        spriteBatch.setColor(Color.WHITE);
    }

    public static final void drawBoxCornerEmpty(SpriteBatch spriteBatch, int i, int i2, int i3, int i4) {
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.7f));
        Image image = ImageManager.getImage(Images.boxBGCorner);
        int i5 = boxBGExtraY;
        image.draw(spriteBatch, i - i5, i2 - i5);
        int i6 = i + i3;
        ImageManager.getImage(Images.boxBGCorner).draw(spriteBatch, i6, i2 - boxBGExtraY, true, false);
        int i7 = i2 + i4;
        ImageManager.getImage(Images.boxBGCorner).draw(spriteBatch, i - boxBGExtraY, i7, false, true);
        ImageManager.getImage(Images.boxBGCorner).draw(spriteBatch, i6, i7, true, true);
        Image image2 = ImageManager.getImage(Images.boxBGLine);
        int i8 = boxBGExtraY;
        image2.draw2(spriteBatch, i - i8, i2, i8, i4);
        ImageManager.getImage(Images.boxBGLine).draw2(spriteBatch, i6, i2, boxBGExtraY, i4, true, false);
        Image image3 = ImageManager.getImage(Images.boxBGLineH);
        int i9 = boxBGExtraY;
        image3.draw2(spriteBatch, i, i2 - i9, i3, i9);
        ImageManager.getImage(Images.boxBGLineH).draw2(spriteBatch, i, i7, i3, boxBGExtraY, false, true);
        spriteBatch.setColor(Color.WHITE);
    }

    public static final void drawBoxHover(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, float f) {
        drawBoxHover(spriteBatch, Images.boxEdge, i, i2, i3, i4, f);
    }

    public static final void drawBoxHover(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, int i5, float f) {
        double d = i5 / 2.0f;
        int iCeil = (int) Math.ceil(d);
        int iFloor = (int) Math.floor(d);
        ImageManager.getImage(i).draw2(spriteBatch, i2, i3, i4 - ImageManager.getImage(i).getWidth(), iCeil);
        int i6 = i2 + i4;
        ImageManager.getImage(i).draw2(spriteBatch, i6 - ImageManager.getImage(i).getWidth(), i3, ImageManager.getImage(i).getWidth(), iCeil, true);
        int i7 = i3 + iCeil;
        ImageManager.getImage(i).draw2(spriteBatch, i2, i7, i4 - ImageManager.getImage(i).getWidth(), iFloor, false, true);
        ImageManager.getImage(i).draw2(spriteBatch, i6 - ImageManager.getImage(i).getWidth(), i7, ImageManager.getImage(i).getWidth(), iFloor, true, true);
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.05f * f));
        ImageManager.getImage(Images.noise).draw2(spriteBatch, i2, i3, i4, i5);
        spriteBatch.setColor(new Color(Colors.HOVER_LINE2.r, Colors.HOVER_LINE2.g, Colors.HOVER_LINE2.b, Colors.HOVER_LINE2.a * f));
        int i8 = i2 + 1;
        int i9 = i4 - 2;
        Images.gradientFull.draw(spriteBatch, i8, i3 + 1, i9, 1);
        Images.gradientFull.draw(spriteBatch, i8, (i3 + i5) - 2, i9, 1);
        spriteBatch.setColor(Color.WHITE);
    }

    public static final void drawBoxLineFrame(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, Color color) {
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.75f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i, i2, i3, CFG.PADDING + (CFG.PADDING / 2));
        int i5 = i2 + i4;
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i, (i5 - CFG.PADDING) - (CFG.PADDING / 2), i3, CFG.PADDING + (CFG.PADDING / 2), false, true);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.5f));
        Images.gradientXY.draw(spriteBatch, i, i2, i3, CFG.PADDING + (CFG.PADDING / 2), false, true);
        Images.gradientXY.draw(spriteBatch, i, (i5 - CFG.PADDING) - (CFG.PADDING / 2), i3, CFG.PADDING + (CFG.PADDING / 2));
        spriteBatch.setColor(color);
        Images.pix.draw2(spriteBatch, i, i2, i3, 1);
        int i6 = i2 + 1;
        int i7 = i4 - 2;
        Images.pix.draw2(spriteBatch, (i + i3) - 1, i6, 1, i7);
        Images.pix.draw2(spriteBatch, i, i6, 1, i7);
        Images.pix.draw2(spriteBatch, i, i5 - 1, i3, 1);
        spriteBatch.setColor(Color.WHITE);
    }

    public static final void drawBoxProgress(SpriteBatch spriteBatch, Image image, int i, int i2, int i3, int i4, int i5) {
        int i6 = (i4 + 1) / 2;
        int i7 = i4 / 2;
        if (image.getWidth() * 2 > i3) {
            image.draw2(spriteBatch, i, i2, i3, i6);
            image.draw2(spriteBatch, i, i2 + i6, i3, i7, false, true);
        } else {
            image.draw2(spriteBatch, i, i2, i3 - image.getWidth(), i6);
            int i8 = i + i3;
            image.draw2(spriteBatch, i8 - image.getWidth(), i2, image.getWidth(), i6, true);
            int i9 = i2 + i6;
            image.draw2(spriteBatch, i, i9, i3 - image.getWidth(), i7, false, true);
            image.draw2(spriteBatch, i8 - image.getWidth(), i9, image.getWidth(), i7, true, true);
        }
        spriteBatch.setColor(Color.WHITE);
    }

    public static final void drawBoxTOP(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, int i5, float f) {
        ImageManager.getImage(i).draw2(spriteBatch, i2, i3, i4 - ImageManager.getImage(i).getWidth(), i5);
        ImageManager.getImage(i).draw2(spriteBatch, (i2 + i4) - ImageManager.getImage(i).getWidth(), i3, ImageManager.getImage(i).getWidth(), i5, true);
        spriteBatch.setColor(Color.WHITE);
    }

    public static final void drawBoxTOP(SpriteBatch spriteBatch, Image image, int i, int i2, int i3, int i4, float f) {
        image.draw2(spriteBatch, i, i2, i3 - image.getWidth(), i4);
        image.draw2(spriteBatch, (i + i3) - image.getWidth(), i2, image.getWidth(), i4, true);
        spriteBatch.setColor(Color.WHITE);
    }

    public static final void drawBox_EDGE_LorR(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, int i5, boolean z, boolean z2) {
        ImageManager.getImage(i).draw2(spriteBatch, i2, i3, i4, i5, z, z2);
    }

    public static final void drawBox_EDGE_TOP_LR(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, int i5) {
        ImageManager.getImage(i).draw2(spriteBatch, i2, i3, i4 - ImageManager.getImage(i).getWidth(), i5);
        ImageManager.getImage(i).draw2(spriteBatch, (i2 + i4) - ImageManager.getImage(i).getWidth(), i3, ImageManager.getImage(i).getWidth(), i5, true);
    }

    public static final void drawBox_EDGE_TOP_LR(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, int i5, boolean z) {
        ImageManager.getImage(i).draw2(spriteBatch, i2, i3, i4 - ImageManager.getImage(i).getWidth(), i5, false, z);
        ImageManager.getImage(i).draw2(spriteBatch, (i2 + i4) - ImageManager.getImage(i).getWidth(), i3, ImageManager.getImage(i).getWidth(), i5, true, z);
    }

    public static final void drawEditorMenuBG(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, int i5, int i6) {
        drawBox_EDGE_TOP_LR(spriteBatch, Images.mainBox, i + i5, i2 + i6, i3, i4, true);
    }

    public static final void drawLine(SpriteBatch spriteBatch, int i, int i2, int i3) {
        spriteBatch.setColor(new Color(Colors.HOVER_LINE1.r, Colors.HOVER_LINE1.g, Colors.HOVER_LINE1.b, 1.0f));
        Images.pix.draw(spriteBatch, i, i2, i3, 1);
        spriteBatch.setColor(new Color(Colors.HOVER_LINE2.r, Colors.HOVER_LINE2.g, Colors.HOVER_LINE2.b, 1.0f));
        Images.pix.draw(spriteBatch, i, i2 + 1, i3, 1);
        spriteBatch.setColor(Color.WHITE);
    }

    public static final void drawLineShape(int i, int i2, int i3, int i4) {
        shapeDrawer.line(i, -i2, i3, -i4);
    }

    public static final void drawLoading(SpriteBatch spriteBatch, int i, int i2, float f) {
        String str = SwmJtrccN.WOwFlGWqd;
        ImageManager.getImage(Images.logo).getHeight();
        int i3 = CFG.BUTTON_HEIGHT;
        if (CFG.currentTimeMillis - 4000 > loadingTime) {
            try {
                sLoadingText = Game.lang.getLoading(str + Game.oR.nextInt(Game.lang.iLoading_NumOfTexts)) + "..";
                loadingTime = CFG.currentTimeMillis;
                GlyphLayout_Game glyphLayout_Game = new GlyphLayout_Game();
                glyphLayout_Game.setText(fontMain.get(CFG.FONT_REGULAR), sLoadingText);
                iLoadingTextWidth = (int) glyphLayout_Game.width;
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.65f));
        Images.gradientFull.draw(spriteBatch, i, ((CFG.GAME_HEIGHT + i2) - CFG.TEXT_HEIGHT) - (CFG.PADDING * 11), CFG.GAME_WIDTH, CFG.TEXT_HEIGHT + (CFG.PADDING * 6));
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.4f));
        Images.gradientXY.draw(spriteBatch, ((CFG.GAME_WIDTH / 2) + i) - ((iLoadingTextWidth + (CFG.PADDING * 6)) / 2), ((CFG.GAME_HEIGHT + i2) - CFG.TEXT_HEIGHT) - (CFG.PADDING * 11), iLoadingTextWidth + (CFG.PADDING * 6), CFG.TEXT_HEIGHT + (CFG.PADDING * 6));
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.65f));
        Images.gradientFull.draw(spriteBatch, i, (((CFG.GAME_HEIGHT + i2) - CFG.TEXT_HEIGHT) - (CFG.PADDING * 11)) + 1, CFG.GAME_WIDTH, 1);
        Images.gradientFull.draw(spriteBatch, i, (((((CFG.GAME_HEIGHT + i2) - CFG.TEXT_HEIGHT) - (CFG.PADDING * 11)) + CFG.TEXT_HEIGHT) + (CFG.PADDING * 6)) - 2, CFG.GAME_WIDTH, 1);
        drawText(spriteBatch, CFG.FONT_REGULAR, sLoadingText, ((CFG.GAME_WIDTH / 2) + i) - (iLoadingTextWidth / 2), ((CFG.GAME_HEIGHT + i2) - CFG.TEXT_HEIGHT) - (CFG.PADDING * 8), new Color(Colors.COLOR_LOGO.r, Colors.COLOR_LOGO.g, Colors.COLOR_LOGO.b, 0.75f));
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.15f));
        ImageManager.getImage(Images.logo).draw(spriteBatch, ((CFG.GAME_WIDTH / 2) + i) - (ImageManager.getImage(Images.logo).getWidth() / 2), (((CFG.GAME_HEIGHT + i2) - CFG.TEXT_HEIGHT) - (CFG.PADDING * 14)) - ImageManager.getImage(Images.logo).getHeight());
        spriteBatch.setColor(Color.WHITE);
        ImageManager.getImage(Images.logo).draw2(spriteBatch, ((CFG.GAME_WIDTH / 2) + i) - (ImageManager.getImage(Images.logo).getWidth() / 2), (((CFG.GAME_HEIGHT + i2) - CFG.TEXT_HEIGHT) - (CFG.PADDING * 14)) - ImageManager.getImage(Images.logo).getHeight(), Math.min(ImageManager.getImage(Images.logo).getWidth(), (int) (ImageManager.getImage(Images.logo).getWidth() * f)), ImageManager.getImage(Images.logo).getHeight());
    }

    public static final void drawMenusBox(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, boolean z) {
        ImageManager.getImage(Images.insideTop).draw2(spriteBatch, i, i2, i3, i4 - ImageManager.getImage(Images.insideBot).getHeight(), z, false);
        ImageManager.getImage(Images.insideBot).draw2(spriteBatch, i, (i2 + i4) - ImageManager.getImage(Images.insideBot).getHeight(), i3, ImageManager.getImage(Images.insideBot).getHeight(), z, false);
    }

    public static final void drawMenusBox(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, boolean z, int i5, int i6) {
        ImageManager.getImage(i5).draw2(spriteBatch, i, i2, i3, i4 - ImageManager.getImage(i6).getHeight(), z, false);
        ImageManager.getImage(i6).draw2(spriteBatch, i, (i2 + i4) - ImageManager.getImage(i6).getHeight(), i3, ImageManager.getImage(i6).getHeight(), z, false);
    }

    public static final void drawMenusBoxTopOnly(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, boolean z, int i5) {
        ImageManager.getImage(i5).draw2(spriteBatch, i, i2, i3, i4, z, false);
    }

    public static final void drawRect(SpriteBatch spriteBatch, int i, int i2, int i3, int i4) {
        Images.pix.draw(spriteBatch, i, i2, i3, 1);
        Images.pix.draw(spriteBatch, i, (i2 + i4) - 1, i3, 1);
        Images.pix.draw(spriteBatch, i, i2 + 1, 1, i4 - 2);
        Images.pix.draw(spriteBatch, i + i3, i2, 1, i4);
    }

    public static final void drawText(SpriteBatch spriteBatch, int i, String str, float f, int i2, int i3, Color color) {
        if (str != null) {
            try {
                setFontScale(f);
                fontMain.get(i).setColor(color);
                fontMain.get(i).draw(spriteBatch, str, i2, -i3);
                resetFontScale();
            } catch (Exception unused) {
            }
        }
    }

    public static final void drawText(SpriteBatch spriteBatch, int i, String str, int i2, int i3, Color color) {
        if (str != null) {
            try {
                fontMain.get(i).setColor(color);
                fontMain.get(i).draw(spriteBatch, str, i2, -i3);
            } catch (Exception unused) {
            }
        }
    }

    public static final void drawText(SpriteBatch spriteBatch, String str, float f, int i, int i2, Color color) {
        drawText(spriteBatch, 0, str, f, i, i2, color);
    }

    public static final void drawText(SpriteBatch spriteBatch, String str, int i, int i2, Color color) {
        drawText(spriteBatch, 0, str, i, i2, color);
    }

    public static final synchronized void drawTextBorder(SpriteBatch spriteBatch, int i, String str, int i2, int i3) {
        Matrix4 matrix4Cpy = spriteBatch.getTransformMatrix().cpy();
        if (str != null) {
            try {
                Matrix4 matrix4 = new Matrix4();
                matrix4.setTranslation(i2, -i3, 0.0f);
                spriteBatch.setTransformMatrix(matrix4);
                fontBorder.get(i).draw(spriteBatch, str, 0.0f, 0.0f);
            } catch (Exception unused) {
            } finally {
                spriteBatch.setTransformMatrix(matrix4Cpy);
            }
        }
    }

    public static final void drawTextRotated(SpriteBatch spriteBatch, int i, String str, int i2, int i3, Color color, float f) {
        if (str != null) {
            Matrix4 matrix4Cpy = spriteBatch.getTransformMatrix().cpy();
            try {
                Matrix4 matrix4 = new Matrix4();
                matrix4.rotate(new Vector3(0.0f, 0.0f, 1.0f), f);
                matrix4.setTranslation(i2, -i3, 0.0f);
                spriteBatch.setTransformMatrix(matrix4);
                fontMain.get(i).setColor(color);
                fontMain.get(i).draw(spriteBatch, str, 0.0f, 0.0f);
            } catch (Exception unused) {
            } finally {
                spriteBatch.setTransformMatrix(matrix4Cpy);
            }
        }
    }

    public static final void drawTextRotated(SpriteBatch spriteBatch, String str, int i, int i2, Color color, float f) {
        drawTextRotated(spriteBatch, 0, str, i, i2, color, f);
    }

    public static final synchronized void drawTextRotatedBorder(SpriteBatch spriteBatch, int i, String str, int i2, int i3, Color color, float f) {
        if (str != null) {
            Matrix4 matrix4Cpy = spriteBatch.getTransformMatrix().cpy();
            try {
                Matrix4 matrix4 = new Matrix4();
                matrix4.rotate(textRotatedVector3, f);
                matrix4.setTranslation(i2, -i3, 0.0f);
                spriteBatch.setTransformMatrix(matrix4);
                fontBorder.get(i).setColor(color);
                fontBorder.get(i).draw(spriteBatch, str, 0.0f, 0.0f);
            } catch (Exception unused) {
            } finally {
                spriteBatch.setTransformMatrix(matrix4Cpy);
            }
        }
    }

    public static final synchronized void drawTextRotatedBorder(SpriteBatch spriteBatch, int i, String str, int i2, int i3, Matrix4 matrix4) {
        if (str != null) {
            try {
                matrix4.setTranslation(i2, -i3, 0.0f);
                spriteBatch.setTransformMatrix(matrix4);
                fontBorder.get(i).draw(spriteBatch, str, 0.0f, 0.0f);
            } catch (Exception unused) {
            }
        }
    }

    public static final synchronized void drawTextRotatedBorder_2(SpriteBatch spriteBatch, int i, String str, int i2, int i3, float f) {
        if (str != null) {
            try {
                Matrix4 matrix4 = new Matrix4();
                matrix4.rotate(textRotatedVector3, f);
                matrix4.setTranslation(i2, -i3, 0.0f);
                spriteBatch.setTransformMatrix(matrix4);
                fontBorder.get(i).draw(spriteBatch, str, 0.0f, 0.0f);
            } catch (Exception unused) {
            }
        }
    }

    public static final synchronized void drawTextRotatedBorder_2(SpriteBatch spriteBatch, int i, String str, int i2, int i3, Color color, float f) {
        if (str != null) {
            try {
                Matrix4 matrix4 = new Matrix4();
                matrix4.rotate(textRotatedVector3, f);
                matrix4.setTranslation(i2, -i3, 0.0f);
                spriteBatch.setTransformMatrix(matrix4);
                fontBorder.get(i).setColor(color);
                fontBorder.get(i).draw(spriteBatch, str, 0.0f, 0.0f);
            } catch (Exception unused) {
            }
        }
    }

    public static final void drawTextWithShadow(SpriteBatch spriteBatch, int i, String str, int i2, int i3, Color color) {
        if (str != null) {
            try {
                fontMain.get(i).setColor(new Color(0.0f, 0.0f, 0.0f, 0.7f));
                int i4 = -i3;
                fontMain.get(i).draw(spriteBatch, str, i2 - 1, i4 - 1);
                fontMain.get(i).setColor(color);
                fontMain.get(i).draw(spriteBatch, str, i2, i4);
            } catch (Exception unused) {
            }
        }
    }

    public static final void drawTextWithShadow(SpriteBatch spriteBatch, String str, int i, int i2, Color color) {
        drawTextWithShadow(spriteBatch, 0, str, i, i2, color);
    }

    public static final void drawTextWithShadowRotated(SpriteBatch spriteBatch, int i, String str, int i2, int i3, Color color, float f) {
        if (str != null) {
            Matrix4 matrix4Cpy = spriteBatch.getTransformMatrix().cpy();
            try {
                Matrix4 matrix4 = new Matrix4();
                matrix4.rotate(textRotatedVector3, f);
                matrix4.setTranslation(i2, -i3, 0.0f);
                spriteBatch.setTransformMatrix(matrix4);
                fontMain.get(i).setColor(new Color(0.0f, 0.0f, 0.0f, 0.7f));
                fontMain.get(i).draw(spriteBatch, str, -1.0f, -1.0f);
                fontMain.get(i).setColor(color);
                fontMain.get(i).draw(spriteBatch, str, 0.0f, 0.0f);
            } catch (Exception unused) {
            } finally {
                spriteBatch.setTransformMatrix(matrix4Cpy);
            }
        }
    }

    public static final void drawTextWithShadowRotated(SpriteBatch spriteBatch, String str, int i, int i2, Color color, float f) {
        drawTextWithShadowRotated(spriteBatch, 0, str, i, i2, color, f);
    }

    public static final void drawTextWithShadowScale(SpriteBatch spriteBatch, int i, String str, int i2, int i3, Color color, float f) {
        if (str != null) {
            try {
                fontMain.get(i).getData().setScale(f);
                fontMain.get(i).setColor(new Color(0.0f, 0.0f, 0.0f, 0.7f));
                int i4 = -i3;
                fontMain.get(i).draw(spriteBatch, str, i2 - 1, i4 - 1);
                fontMain.get(i).setColor(color);
                fontMain.get(i).draw(spriteBatch, str, i2, i4);
                fontMain.get(i).getData().setScale(1.0f);
            } catch (Exception unused) {
            }
        }
    }

    public static final void drawText_Cache(int i, String str, int i2, int i3) {
        if (str != null) {
            try {
                fontMain.get(i).getCache().addText(str, i2, -i3);
            } catch (Exception unused) {
            }
        }
    }

    public static final void drawText_CacheBegin(int i, Color color) {
        fontMain.get(i).getCache().clear();
        fontMain.get(i).setColor(color);
    }

    public static final void drawText_CacheEnd(SpriteBatch spriteBatch, int i) {
        fontMain.get(i).getCache().draw(spriteBatch);
        fontMain.get(i).getCache().clear();
    }

    public static final Color getColorMixed(Color color, Color color2) {
        float f = 1.0f - ((1.0f - color.a) * (1.0f - color2.a));
        return new Color(((color2.r * color2.a) / f) + (((color.r * color.a) * (1.0f - color2.a)) / f), ((color2.g * color2.a) / f) + (((color.g * color.a) * (1.0f - color2.a)) / f), ((color2.b * color2.a) / f) + (((color.b * color.a) * (1.0f - color2.a)) / f), color.a);
    }

    public static final float getColorStep(int i, int i2, int i3, int i4) {
        return (i + (((i2 - i) * i3) / i4)) / 255.0f;
    }

    public static final Color getColorStep(Color color, Color color2, int i, int i2, float f) {
        float f2 = color.r;
        int i3 = (color.r > color2.r ? 1 : (color.r == color2.r ? 0 : -1));
        float f3 = f2 + (((color2.r - color.r) * i) / i2);
        float f4 = color.g;
        int i4 = (color.g > color2.g ? 1 : (color.g == color2.g ? 0 : -1));
        float f5 = f4 + (((color2.g - color.g) * i) / i2);
        float f6 = color.b;
        int i5 = (color.b > color2.b ? 1 : (color.b == color2.b ? 0 : -1));
        return new Color(f3, f5, f6 + (((color2.b - color.b) * i) / i2), f);
    }

    public static final Color getColorStep_WithAlpha(Color color, Color color2, int i, int i2) {
        float f = color.r;
        int i3 = (color.r > color2.r ? 1 : (color.r == color2.r ? 0 : -1));
        float f2 = f + (((color2.r - color.r) * i) / i2);
        float f3 = color.g;
        int i4 = (color.g > color2.g ? 1 : (color.g == color2.g ? 0 : -1));
        float f4 = f3 + (((color2.g - color.g) * i) / i2);
        float f5 = color.b;
        int i5 = (color.b > color2.b ? 1 : (color.b == color2.b ? 0 : -1));
        float f6 = f5 + (((color2.b - color.b) * i) / i2);
        float f7 = color.a;
        int i6 = (color.a > color2.a ? 1 : (color.a == color2.a ? 0 : -1));
        return new Color(f2, f4, f6, f7 + (((color2.a - color.a) * i) / i2));
    }

    public static final int getDarker(int i, int i2) {
        return Math.round(Math.max(0, i - i2));
    }

    public static final Color getDarker(Color color, int i, float f) {
        float f2 = i;
        return new Color(Math.round(Math.max(0.0f, (color.r * 255.0f) - f2) / 255.0f), Math.round(Math.max(0.0f, (color.g * 255.0f) - f2) / 255.0f), Math.round(Math.max(0.0f, (color.b * 255.0f) - f2) / 255.0f), f);
    }

    public static final int getHover_ExtraPosX() {
        return 25;
    }

    public static final int getHover_ExtraPosY() {
        return 30;
    }

    public static final int getTextHeight(String str) {
        return getTextHeight(str, 0);
    }

    public static final synchronized int getTextHeight(String str, int i) {
        GlyphLayout_Game glyphLayout_Game;
        glyphLayout_Game = new GlyphLayout_Game();
        glyphLayout_Game.setText(fontMain.get(i), str);
        return (int) glyphLayout_Game.height;
    }

    public static final int getTextWidth(String str) {
        return getTextWidth(str, 0);
    }

    public static final synchronized int getTextWidth(String str, int i) {
        GlyphLayout_Game glyphLayout_Game;
        glyphLayout_Game = new GlyphLayout_Game();
        glyphLayout_Game.setText(fontMain.get(i), str);
        return (int) glyphLayout_Game.width;
    }

    public static final XY getText_WidthHeight(String str) {
        return getText_WidthHeight(str, 0);
    }

    public static final XY getText_WidthHeight(String str, float f) {
        return getText_WidthHeight(str, 0, f);
    }

    public static final synchronized XY getText_WidthHeight(String str, int i) {
        GlyphLayout_Game glyphLayout_Game;
        glyphLayout_Game = new GlyphLayout_Game();
        glyphLayout_Game.setText(fontMain.get(i), str);
        return new XY((int) glyphLayout_Game.width, (int) glyphLayout_Game.height);
    }

    public static final synchronized XY getText_WidthHeight(String str, int i, float f) {
        GlyphLayout_Game glyphLayout_Game;
        glyphLayout_Game = new GlyphLayout_Game();
        glyphLayout_Game.setText(fontMain.get(i), str);
        return new XY((int) (glyphLayout_Game.width * f), (int) (glyphLayout_Game.height * f));
    }

    public static final void loadFont(String str, String str2, int i) {
        FreeTypeFontGenerator freeTypeFontGenerator;
        if (i < 0) {
            i = (int) (GameValues.value.DEFAULT_FONT_SIZE * CFG.GUI_SCALE);
        }
        try {
            freeTypeFontGenerator = new FreeTypeFontGenerator(FileManager.loadFile(CFG.FILE_FONTS_PATH + str));
        } catch (Exception unused) {
            freeTypeFontGenerator = new FreeTypeFontGenerator(FileManager.loadFile("game/fonts/Roboto-Bold.ttf"));
        }
        FreeTypeFontGenerator.FreeTypeFontParameter freeTypeFontParameter = new FreeTypeFontGenerator.FreeTypeFontParameter();
        freeTypeFontParameter.characters = str2;
        freeTypeFontParameter.size = Math.max(i, 6);
        freeTypeFontParameter.color = Color.WHITE;
        freeTypeFontParameter.minFilter = Texture.TextureFilter.Linear;
        freeTypeFontParameter.magFilter = Texture.TextureFilter.Linear;
        fontMain.add(freeTypeFontGenerator.generateFont(freeTypeFontParameter));
        fontMainSize = fontMain.size();
        freeTypeFontGenerator.dispose();
    }

    public static final void loadFontArmy_GlyphLayout(String str, String str2, int i) {
        FreeTypeFontGenerator freeTypeFontGenerator;
        if (i < 0) {
            i = (int) (GameValues.value.DEFAULT_FONT_SIZE * CFG.GUI_SCALE);
        }
        try {
            freeTypeFontGenerator = new FreeTypeFontGenerator(FileManager.loadFile(CFG.FILE_FONTS_PATH + str));
        } catch (Exception unused) {
            freeTypeFontGenerator = new FreeTypeFontGenerator(FileManager.loadFile("game/fonts/Roboto-Bold.ttf"));
        }
        FreeTypeFontGenerator.FreeTypeFontParameter freeTypeFontParameter = new FreeTypeFontGenerator.FreeTypeFontParameter();
        freeTypeFontParameter.characters = str2;
        freeTypeFontParameter.size = Math.max(i, 6);
        freeTypeFontParameter.color = Color.WHITE;
        freeTypeFontParameter.minFilter = Texture.TextureFilter.Linear;
        freeTypeFontParameter.magFilter = Texture.TextureFilter.Linear;
        fontArmy_GlyphLayout = freeTypeFontGenerator.generateFont(freeTypeFontParameter);
        freeTypeFontGenerator.dispose();
    }

    public static final void loadFontBorder(String str, String str2) {
        FreeTypeFontGenerator freeTypeFontGenerator;
        try {
            freeTypeFontGenerator = new FreeTypeFontGenerator(FileManager.loadFile(CFG.FILE_FONTS_PATH + str));
        } catch (Exception unused) {
            freeTypeFontGenerator = new FreeTypeFontGenerator(FileManager.loadFile("game/fonts/Roboto-Bold.ttf"));
        }
        FreeTypeFontGenerator.FreeTypeFontParameter freeTypeFontParameter = new FreeTypeFontGenerator.FreeTypeFontParameter();
        freeTypeFontParameter.characters = str2;
        freeTypeFontParameter.size = Game.settingsManager.FONT_BORDER_SIZE;
        freeTypeFontParameter.color = new Color(Game.settingsManager.civNamesFontColor_R, Game.settingsManager.civNamesFontColor_G, Game.settingsManager.civNamesFontColor_B, Game.settingsManager.civNamesFontColor_A);
        freeTypeFontParameter.minFilter = Texture.TextureFilter.Linear;
        freeTypeFontParameter.magFilter = Texture.TextureFilter.Linear;
        freeTypeFontParameter.kerning = false;
        freeTypeFontParameter.borderColor = new Color(Game.settingsManager.civNamesFontColorBorder_R, Game.settingsManager.civNamesFontColorBorder_G, Game.settingsManager.civNamesFontColorBorder_B, Game.settingsManager.civNamesFontColorBorder_A);
        freeTypeFontParameter.borderWidth = Game.settingsManager.FONT_BORDER_WIDTH_OF_BORDER;
        fontBorder.add(freeTypeFontGenerator.generateFont(freeTypeFontParameter));
        fontBorderSize = fontBorder.size();
        fontBorder.get(0).setFixedWidthGlyphs(str2);
        freeTypeFontGenerator.dispose();
    }

    public static final void loadFontBorder2(String str, String str2) {
    }

    public static final synchronized void loadFont_UpdateTextHeight() {
        GlyphLayout_Game glyphLayout_Game = new GlyphLayout_Game();
        glyphLayout_Game.setText(fontMain.get(0), "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890");
        CFG.TEXT_HEIGHT = (int) glyphLayout_Game.height;
        ProvinceDrawArmy.updateArmyHeight();
    }

    public static final synchronized void loadFont_UpdateTextHeightSmall() {
        GlyphLayout_Game glyphLayout_Game = new GlyphLayout_Game();
        glyphLayout_Game.setText(fontMain.get(CFG.FONT_BOLD_SMALL), "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890");
        CFG.TEXT_HEIGHT_SMALL = (int) glyphLayout_Game.height;
    }

    private final void loadShaders() {
        String string = FileManager.loadFile("game/shader/default_vertex.glsl").readString();
        shaderDefault = new ShaderProgram(string, FileManager.loadFile("game/shader/default_fragment.glsl").readString());
        shaderBlackWhite = new ShaderProgram(string, FileManager.loadFile(IlLkpaQxs.nFVJUuYhlg).readString());
        shaderWater = new ShaderProgram(string, FileManager.loadFile("game/shader/water_fragment.glsl").readString());
        shaderDefaultProvince = new ShaderProgram(string, "#ifdef GL_ES\n    precision mediump float;\n#endif\n\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\nuniform sampler2D u_texture;\n\nvoid main() {\nvec4 mask = texture2D(u_texture, v_texCoords);\n    gl_FragColor = vec4(v_color.rgb, v_color.a * mask.a);\n}");
        shaderDefault_FBO = new ShaderProgram(string, "#ifdef GL_ES\n    precision mediump float;\n#endif\n\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\nuniform sampler2D u_texture;\n\nvoid main() {\n   gl_FragColor = v_color * texture2D(u_texture, v_texCoords);\n   gl_FragColor.rgb *= glFragColor.a;\n}");
        shaderAlpha = new ShaderProgram("attribute vec4 a_position;\nattribute vec4 a_color;\nattribute vec2 a_texCoord0;\nuniform mat4 u_projTrans;\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\n\nvoid main()\n{\n   v_color = a_color;\n   v_color.a = v_color.a * (255.0/254.0);\n   v_texCoords = a_texCoord0;\n   gl_Position =  u_projTrans * a_position;\n}\n", fiRhHJntP.myf);
        ShaderProgram.pedantic = false;
        shaderAlpha.bind();
        shaderAlpha.setUniformi("u_texture", 0);
        shaderAlpha.setUniformi("u_texture2", 1);
        shaderAlpha2 = new ShaderProgram("attribute vec4 a_position;\nattribute vec4 a_color;\nattribute vec2 a_texCoord0;\nuniform mat4 u_projTrans;\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\n\nvoid main()\n{\n   v_color = a_color;\n   v_color.a = v_color.a * (255.0/254.0);\n   v_texCoords = a_texCoord0;\n   gl_Position =  u_projTrans * a_position;\n}\n", FileManager.loadFile("game/shader/alpha_shader.glsl").readString());
        ShaderProgram.pedantic = false;
        shaderAlpha2.bind();
        shaderAlpha2.setUniformi("u_texture", 0);
        shaderAlpha2.setUniformi("u_texture2", 1);
        shaderAlpha2.setUniformf("u_useMask", 1.0f);
        shaderAlpha2.setUniformf("u_maskScale", 20.0f);
        shaderAlpha2.setUniformf("u_maskOffset", 0.0f, 0.0f);
        shaderAlpha_Pattern = new ShaderProgram("attribute vec4 a_position;\nattribute vec4 a_color;\nattribute vec2 a_texCoord0;\nuniform mat4 u_projTrans;\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\n\nvoid main()\n{\n   v_color = a_color;\n   v_color.a = v_color.a * (255.0/254.0);\n   v_texCoords = a_texCoord0;\n   gl_Position =  u_projTrans * a_position;\n}\n", FileManager.loadFile("game/shader/alpha_shader_pattern.glsl").readString());
        ShaderProgram.pedantic = false;
        shaderAlpha_Pattern.bind();
        shaderAlpha_Pattern.setUniformi("u_texture", 0);
        shaderAlpha_Pattern.setUniformi("u_texture2", 1);
        shaderAlpha_Pattern.setUniformf("u_useMask", 1.0f);
        shaderAlpha_Pattern.setUniformf("u_maskScale", 20.0f);
        shaderAlpha_Pattern.setUniformf("u_maskOffset", 0.0f, 0.0f);
        shaderAlpha_Map = new ShaderProgram("attribute vec4 a_position;\nattribute vec4 a_color;\nattribute vec2 a_texCoord0;\nuniform mat4 u_projTrans;\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\n\nvoid main()\n{\n   v_color = a_color;\n   v_color.a = v_color.a * (255.0/254.0);\n   v_texCoords = a_texCoord0;\n   gl_Position =  u_projTrans * a_position;\n}\n", FileManager.loadFile("game/shader/map_overlay_fragment.glsl").readString());
        ShaderProgram.pedantic = false;
        shaderAlpha_Map.bind();
        shaderAlpha_Map.setUniformi("u_texture", 0);
        shaderAlpha_Map.setUniformi("u_texture2", 1);
        shaderAlpha_Map.setUniformf("u_useMask", 1.0f);
        shaderAlpha_Map.setUniformf("u_maskScale", 20.0f);
        shaderAlpha_Map.setUniformf("u_maskOffset", 0.0f, 0.0f);
        shaderAlpha_MapSea = new ShaderProgram("attribute vec4 a_position;\nattribute vec4 a_color;\nattribute vec2 a_texCoord0;\nuniform mat4 u_projTrans;\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\n\nvoid main()\n{\n   v_color = a_color;\n   v_color.a = v_color.a * (255.0/254.0);\n   v_texCoords = a_texCoord0;\n   gl_Position =  u_projTrans * a_position;\n}\n", FileManager.loadFile("game/shader/map_overlay_sea_fragment.glsl").readString());
        ShaderProgram.pedantic = false;
        shaderAlpha_MapSea.bind();
        shaderAlpha_MapSea.setUniformi("u_texture", 0);
        shaderAlpha_MapSea.setUniformi("u_texture2", 1);
        shaderAlpha_MapSea.setUniformf("u_useMask", 1.0f);
        shaderAlpha_MapSea.setUniformf("u_maskScale", 20.0f);
        shaderAlpha_MapSea.setUniformf("u_maskOffset", 0.0f, 0.0f);
        shaderWater2 = new ShaderProgram(string, "#ifdef GL_ES\n#define LOWP lowp\nprecision mediump float;\n#else\n#define LOWP\n#endif\n\nvarying LOWP vec4 v_color;\nvarying vec2 v_texCoords;\n\n\nuniform sampler2D u_texture;\nuniform float time;\nuniform vec2 resolution;\n\n\nconst float PI = 3.1415;\n// 速度\nconst float speed = 0.025;\nconst float speed_x = 0.05;\nconst float speed_y = 0.05;\n\n// 折射角\nconst float emboss = 0.3; \t\t// 凹凸强度\nconst float intensity = 2.4;\t// 强度\nconst int steps = 8;  \t\t\t// 波纹密度\nconst float frequency = 4.0;  \t// 频率\nconst float angle = 7.0;\n\nconst float delta = 50.0;  \t\t// 增幅（越小越激烈）\nconst float intence = 200.0;   \t// 明暗强度\n\n// 高光\nconst float reflectionCutOff = 0.012;\nconst float reflectionIntence = 80000.0;\n\nfloat col(vec2 coord)\n{\n    float delta_theta = 2.0 * PI / angle;\n    float col = 0.0;\n    float theta = 0.0;\n    for (int i = 0; i < steps; i++)\n    {\n        vec2 adjc = coord;\n        theta = delta_theta * float(i);\n        adjc.x += cos(theta)*time*speed + time * speed_x;\n        adjc.y -= sin(theta)*time*speed - time * speed_y;\n        col = col + cos((adjc.x * cos(theta) -\n            adjc.y * sin(theta)) * frequency) * intensity;\n    }\n    return cos(col);\n}\n\n\nvoid main()\n{\n    vec2 p = v_texCoords, c1 = p, c2 = p;\n    float cc1 = col(c1);\n\n    c2.x += resolution.x/delta;\n    float dx = emboss*(cc1-col(c2))/delta;\n\n    c2.x = p.x;\n    c2.y += resolution.y/delta;\n    float dy = emboss*(cc1-col(c2))/delta;\n    c1.x = c1.x +dx;\n    c1.y =  c1.y+dy;\n\n    float alpha = 1.0+dot(dx,dy)*intence;\n\n\n    vec4 col = texture2D(u_texture,c1);\n    col *= alpha;\n    gl_FragColor =  col;\n}");
        ShaderProgram shaderProgram = new ShaderProgram(string, "#ifdef GL_ES\n#define LOWP lowp\nprecision mediump float;\n#else\n#define LOWP\n#endif\n\nvarying LOWP vec4 v_color;\nvarying vec2 v_texCoords;\n\n\nuniform sampler2D u_texture;\nuniform sampler2D u_texture2;\nuniform float time;\nuniform vec2 resolution;\nuniform float u_maskScale;\nuniform float u_maskScaleY;\nuniform float u_useMask;\nuniform vec2 u_maskOffset;\n\n\nconst float PI = 3.1415;\n// 速度\nconst float speed = 0.03;\nconst float speed_x = 0.06;\nconst float speed_y = 0.06;\n\n// 折射角\nconst float emboss = 0.3; \t\t// 凹凸强度\nconst float intensity = 2.4;\t// 强度\nconst int steps = 8;  \t\t\t// 波纹密度\nconst float frequency = 4.0;  \t// 频率\nconst float angle = 7.0;\n\nconst float delta = 50.0;  \t\t// 增幅（越小越激烈）\nconst float intence = 200.0;   \t// 明暗强度\n\n// 高光\nconst float reflectionCutOff = 0.012;\nconst float reflectionIntence = 80000.0;\n\nfloat col(vec2 coord)\n{\n    float delta_theta = 2.0 * PI / angle;\n    float col = 0.0;\n    float theta = 0.0;\n    for (int i = 0; i < steps; i++)\n    {\n        vec2 adjc = coord;\n        theta = delta_theta * float(i);\n        adjc.x += cos(theta)*time*speed + time * speed_x;\n        adjc.y -= sin(theta)*time*speed - time * speed_y;\n        col = col + cos((adjc.x * cos(theta) -\n            adjc.y * sin(theta)) * frequency) * intensity;\n    }\n    return cos(col);\n}\n\n\nvoid main()\n{\n    vec2 p = v_texCoords, c1 = p, c2 = p;\n    float cc1 = col(c1);\n\n    c2.x += resolution.x/delta;\n    float dx = emboss*(cc1-col(c2))/delta;\n\n    c2.x = p.x;\n    c2.y += resolution.y/delta;\n    float dy = emboss*(cc1-col(c2))/delta;\n    c1.x = c1.x +dx;\n    c1.y =  c1.y+dy;\n\n    float alpha = 1.0+dot(dx,dy)*intence;\n\n\n    vec4 col = texture2D(u_texture,c1);\n vec2 newCoords = vec2(v_texCoords.x * u_maskScale, v_texCoords.y * u_maskScaleY);\n vec4 mask = vec4(1.0, 1.0, 1.0, 1.0); \n\tmask = texture2D(u_texture2, v_texCoords);\n  gl_FragColor = vec4(col.rgb, mask.a * col.a);\n}");
        shaderWater3 = shaderProgram;
        shaderProgram.bind();
        shaderWater3.setUniformi("u_texture", 0);
        shaderWater3.setUniformi("u_texture2", 1);
        shaderWater3.setUniformf("u_useMask", 1.0f);
        shaderWater3.setUniformf("u_maskScale", 20.0f);
        shaderWater3.setUniformf("u_maskOffset", 0.0f, 0.0f);
        shaderOutline = new ShaderProgram(string, "#ifdef GL_ES\nprecision mediump float;\n#endif\n\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\n\nuniform sampler2D u_texture;\nuniform float outlineSize;\nuniform vec3 outlineColor;\nuniform vec2 textureSize;\n\nconst float PI = 0.01745329252;\n\n\nint getIsStrokeWithAngel(float angel)\n{\n    int stroke = 0;\n    float rad = angel * PI;\n    vec2 unit = 1.0 / textureSize.xy;\n    vec2 offset = vec2(outlineSize * cos(rad) * unit.x, outlineSize * sin(rad) * unit.y);\n    float a = texture2D(u_texture, v_texCoords + offset).a;\n    if (a >= 0.5)\n    {\n        stroke = 1;\n    }\n    return stroke;\n}\n\nvoid main()\n{\n    vec4 myC = texture2D(u_texture, v_texCoords);\n    if (myC.a >= 0.5)\n    {\n        gl_FragColor = v_color * myC;\n        return;\n    }\n\n    int strokeCount = 0;\n    strokeCount += getIsStrokeWithAngel(0.0);\n    strokeCount += getIsStrokeWithAngel(30.0);\n    strokeCount += getIsStrokeWithAngel(60.0);\n    strokeCount += getIsStrokeWithAngel(90.0);\n    strokeCount += getIsStrokeWithAngel(120.0);\n    strokeCount += getIsStrokeWithAngel(150.0);\n    strokeCount += getIsStrokeWithAngel(180.0);\n    strokeCount += getIsStrokeWithAngel(210.0);\n    strokeCount += getIsStrokeWithAngel(240.0);\n    strokeCount += getIsStrokeWithAngel(270.0);\n    strokeCount += getIsStrokeWithAngel(300.0);\n    strokeCount += getIsStrokeWithAngel(330.0);\n\n    if (strokeCount > 0)\n    {\n        myC.rgb = outlineColor;\n        myC.a = 1.0;\n    }\n\n    gl_FragColor = v_color * myC;\n}");
        shaderBlur = new ShaderProgram(string, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 v_texCoords;\nvarying vec4 v_color;\nuniform float widthStep;\nuniform float heightStep;\nuniform float strength;\nuniform sampler2D u_texture;\nconst float blurRadius = 5.0;\nconst float blurPixels = (blurRadius * 2.0 + 1.0) * (blurRadius * 2.0 + 1.0);\n\nvoid main()\n{\n    vec4 v = texture2D(u_texture, v_texCoords);\n    vec3 sumColor = vec3(0.0, 0.0, 0.0);\n    for(float fy = -blurRadius; fy <= blurRadius; ++fy)\n    {\n        for(float fx = -blurRadius; fx <= blurRadius; ++fx)\n        {\n            vec2 coord = vec2(fx * widthStep, fy * heightStep);\n            sumColor += texture2D(u_texture, v_texCoords + coord).rgb;\n        }\n    }\n    gl_FragColor = vec4(mix(v.rgb, sumColor / blurPixels, strength), v.a*v_color.a);\n}");
    }

    private final void renderUI() {
        try {
            Game.menuManager.draw(this.oSB);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        while (numOfScissors > 0) {
            clipView_End(this.oSB);
        }
        drawKeyboardText(this.oSB);
        uFPS.drawFPS(this.oSB);
    }

    private final void renderer_SetToCurrentScale() {
        try {
            camera.setToOrtho(false, CFG.GAME_WIDTH / Game.mapScale.getCurrentScale(), (-CFG.GAME_HEIGHT) / Game.mapScale.getCurrentScale());
            viewport.setWorldSize(CFG.GAME_WIDTH / Game.mapScale.getCurrentScale(), CFG.GAME_HEIGHT / Game.mapScale.getCurrentScale());
            viewport.apply();
            this.oSB.setProjectionMatrix(camera.combined);
            oSBBorder.setProjectionMatrix(camera.combined);
            this.oSB.begin();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    private final void renderer_SetToCurrentScale2() {
        try {
            camera.setToOrtho(false, CFG.GAME_WIDTH / Game.mapScale.getCurrentScale(), (-CFG.GAME_HEIGHT) / Game.mapScale.getCurrentScale());
            viewport.setWorldSize(CFG.GAME_WIDTH / Game.mapScale.getCurrentScale(), CFG.GAME_HEIGHT / Game.mapScale.getCurrentScale());
            viewport.apply();
            this.oSB.setProjectionMatrix(camera.combined);
            oSBBorder.setProjectionMatrix(camera.combined);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    private final void renderer_resetScale() {
        try {
            camera.setToOrtho(false, CFG.GAME_WIDTH, -CFG.GAME_HEIGHT);
            viewport.setWorldSize(CFG.GAME_WIDTH, CFG.GAME_HEIGHT);
            viewport.apply();
            this.oSB.setProjectionMatrix(camera.combined);
            oSBBorder.setProjectionMatrix(camera.combined);
            this.oSB.begin();
            oSBBorder.begin();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    private final void renderer_resetScale2() {
        try {
            camera.setToOrtho(false, CFG.GAME_WIDTH, -CFG.GAME_HEIGHT);
            viewport.setWorldSize(CFG.GAME_WIDTH, CFG.GAME_HEIGHT);
            viewport.apply();
            this.oSB.setProjectionMatrix(camera.combined);
            oSBBorder.setProjectionMatrix(camera.combined);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void resetFontScale() {
        for (int i = 0; i < fontMainSize; i++) {
            fontMain.get(i).getData().setScale(1.0f);
        }
    }

    public static final void setBlackWhite(SpriteBatch spriteBatch) {
        spriteBatch.setShader(shaderBlackWhite);
    }

    public static final void setFontScale(float f) {
        for (int i = 0; i < fontMainSize; i++) {
            fontMain.get(i).getData().setScale(f);
        }
    }

    public static final void setShaderBlur(SpriteBatch spriteBatch) {
        spriteBatch.setShader(shaderBlur);
        shaderBlur.setUniformf("widthStep", 0.0f);
        shaderBlur.setUniformf("heightStep", 0.0f);
        shaderBlur.setUniformf("strength", 1.0f);
    }

    public static final void setShaderDefault(SpriteBatch spriteBatch) {
        spriteBatch.setShader(shaderDefault);
    }

    public static final void setShaderOutline(SpriteBatch spriteBatch) {
        if (Game.menuManager.getInNewGame()) {
            spriteBatch.setShader(shaderOutline);
            shaderOutline.setUniformf("outlineColor", 0.0f, 1.0f, 0.0f);
            shaderOutline.setUniformf("outlineSize", 2.0f);
            shaderOutline.setUniformf("textureSize", Game.getProvince(0).getProvinceBG().getWidth(), Game.getProvince(0).getProvinceBG().getHeight());
            Game.getProvince(0).getProvinceBG().draw(spriteBatch, 150, 150);
            spriteBatch.setShader(shaderDefault);
        }
    }

    public static final void setShaderWater(SpriteBatch spriteBatch) {
        shaderTime += Gdx.graphics.getDeltaTime();
        spriteBatch.setShader(shaderWater);
        shaderWater.bind();
        shaderWater.setUniformf("u_amount", 25.0f);
        shaderWater.setUniformf("u_speed", 0.15f);
        shaderWater.setUniformf("u_py", 0.15f);
        shaderWater.setUniformf("u_px", 0.55f);
        shaderWater.setUniformf("u_time", shaderTime);
    }

    public static final void setShaderWater2(SpriteBatch spriteBatch) {
        shaderTime2 += Gdx.graphics.getDeltaTime();
        spriteBatch.setShader(shaderWater2);
        shaderWater2.setUniformf("time", shaderTime2);
        shaderWater2.setUniformf("resolution", new Vector2(ImageManager.getImage(Images.waves).getWidth(), ImageManager.getImage(Images.waves).getHeight()));
    }

    public static final void setShaderWater3(SpriteBatch spriteBatch) {
        spriteBatch.setShader(shaderWater3);
        shaderWater3.setUniformf(HjHDSSkYG.emncIF, shaderTime2);
        shaderWater3.setUniformf("resolution", new Vector2(ImageManager.getImage(Images.flagBG).getWidth(), ImageManager.getImage(Images.flagBG).getHeight()));
    }

    private final void updateBackgroundColor() {
        if (updateBackgroundColor) {
            updateBackgroundColor = false;
            if (Game.mapScale.getCurrentScale() == 1.0f) {
                BACKGROUND_COLOR = new Color(Game.map.lMaps.get(Game.map.getActiveMapID()).mapData.BackgroundColor[0], Game.map.lMaps.get(Game.map.getActiveMapID()).mapData.BackgroundColor[1], Game.map.lMaps.get(Game.map.getActiveMapID()).mapData.BackgroundColor[2], 1.0f);
                return;
            }
            if (Game.mapScale.getCurrentScale() > 1.0f) {
                MapScale mapScale = Game.mapScale;
                float f = MapScale.defScales.definedScales[1] - 1.0f;
                float currentScale = Game.mapScale.getCurrentScale() - 1.0f;
                BACKGROUND_COLOR = new Color(CFG.getColorStep(Game.map.lMaps.get(Game.map.getActiveMapID()).mapData.BackgroundColor[0], Game.map.lMaps.get(Game.map.getActiveMapID()).mapData.BackgroundColor_ZoomIn[0], currentScale, f), CFG.getColorStep(Game.map.lMaps.get(Game.map.getActiveMapID()).mapData.BackgroundColor[1], Game.map.lMaps.get(Game.map.getActiveMapID()).mapData.BackgroundColor_ZoomIn[1], currentScale, f), CFG.getColorStep(Game.map.lMaps.get(Game.map.getActiveMapID()).mapData.BackgroundColor[2], Game.map.lMaps.get(Game.map.getActiveMapID()).mapData.BackgroundColor_ZoomIn[2], currentScale, f), 1.0f);
                return;
            }
            MapScale mapScale2 = Game.mapScale;
            float f2 = 1.0f - MapScale.defScales.definedScales[Game.mapScale.definedScalesLength - 1];
            float currentScale2 = 1.0f - Game.mapScale.getCurrentScale();
            BACKGROUND_COLOR = new Color(CFG.getColorStep(Game.map.lMaps.get(Game.map.getActiveMapID()).mapData.BackgroundColor[0], Game.map.lMaps.get(Game.map.getActiveMapID()).mapData.BackgroundColor_ZoomOut[0], currentScale2, f2), CFG.getColorStep(Game.map.lMaps.get(Game.map.getActiveMapID()).mapData.BackgroundColor[1], Game.map.lMaps.get(Game.map.getActiveMapID()).mapData.BackgroundColor_ZoomOut[1], currentScale2, f2), CFG.getColorStep(Game.map.lMaps.get(Game.map.getActiveMapID()).mapData.BackgroundColor[2], Game.map.lMaps.get(Game.map.getActiveMapID()).mapData.BackgroundColor_ZoomOut[2], currentScale2, f2), 1.0f);
        }
    }

    protected final void clearScreen() {
        updateBackgroundColor();
        Gdx.gl.glClearColor(BACKGROUND_COLOR.r, BACKGROUND_COLOR.g, BACKGROUND_COLOR.b, BACKGROUND_COLOR.a);
        Gdx.gl.glClear(16640);
        this.oSB.setColor(Color.WHITE);
    }

    public void dispose() {
        this.oSB.dispose();
    }

    public final void drawKeyboardText(SpriteBatch spriteBatch) {
        if (Keyboard.keyboardMode) {
            if (!CFG.isDesktop() || GameValues.info.DESKTOP_KEYBOARD_DRAW_EXTRA_TEXT) {
                drawBox(spriteBatch, CFG.BUTTON_HEIGHT - (CFG.PADDING * 2), CFG.BUTTON_HEIGHT - (CFG.PADDING * 2), getTextWidth(Keyboard.keyboardMessage, CFG.FONT_REGULAR) + (CFG.PADDING * 4), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), 1.0f);
                spriteBatch.setColor(Color.WHITE);
                drawText(spriteBatch, CFG.FONT_REGULAR, Keyboard.keyboardMessage, CFG.BUTTON_HEIGHT, CFG.BUTTON_HEIGHT, Colors.HOVER_GOLD);
            }
        }
    }

    public final void drawLine(SpriteBatch spriteBatch, int i, int i2, int i3, float f) {
        Images.pix.draw(spriteBatch, i, i2, i3, Images.pix.getHeight(), f);
    }

    public final void drawLine(SpriteBatch spriteBatch, int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        int i6 = i2 - i4;
        drawLine(spriteBatch, i, i2, (int) Math.ceil(Math.sqrt((i5 * i5) + (i6 * i6))), (float) ((Math.atan2(i6, (-i) + i3) * 180.0d) / 3.141592653589793d));
    }

    public void render() {
        try {
            update();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        clearScreen();
        renderer_SetToCurrentScale();
        try {
            this.oSB.setColor(Color.WHITE);
            Game.map.drawMap(this.oSB);
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
        RendererGame.rendererGame.drawCurrentScale_Provinces(this.oSB);
        renderer_resetScale2();
        RendererGame.rendererGame.drawWithoutScale_Provinces(this.oSB);
        renderer_SetToCurrentScale2();
        try {
            RendererGame.rendererGame.drawCurrentScale(this.oSB);
        } catch (Exception e3) {
            CFG.exceptionStack(e3);
        }
        try {
            this.oSB.end();
        } catch (Exception e4) {
            CFG.exceptionStack(e4);
        }
        renderer_resetScale();
        try {
            RendererGame.rendererGame.drawWithoutScale(this.oSB);
        } catch (Exception e5) {
            CFG.exceptionStack(e5);
        }
        try {
            renderUI();
        } catch (Exception e6) {
            CFG.exceptionStack(e6);
        }
        try {
            this.oSB.end();
        } catch (Exception e7) {
            CFG.exceptionStack(e7);
        }
        try {
            oSBBorder.end();
        } catch (Exception e8) {
            CFG.exceptionStack(e8);
        }
    }

    public final void resetFontMainScale() {
        setFontMainScale(1.0f);
    }

    public void resize(int i, int i2) {
        viewport.update(i, i2, false);
    }

    public final void setFontMainScale(float f) {
        setFontMainScale(f, 0);
    }

    public final void setFontMainScale(float f, int i) {
        fontMain.get(i).getData().setScale(f);
    }

    public void update() {
        CFG.currentTimeMillis = System.currentTimeMillis();
        Game.updateSimpleTask();
        Game.map.update();
        Game.menuManager.update();
        uFPS.countFPS();
        Game.ambienceManager.update();
        Game.animationManager.update();
        Keyboard.updateKeyboardVerticalLine();
        try {
            for (int iMin = Math.min(1, simpleTasksCivNames.size() - 1); iMin >= 0; iMin--) {
                simpleTasksCivNames.get(iMin).update();
                simpleTasksCivNames.remove(iMin);
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        try {
            for (int iMin2 = Math.min(50, simpleTasks_ArmyWidth.size() - 1); iMin2 >= 0; iMin2--) {
                simpleTasks_ArmyWidth.get(iMin2).update();
                simpleTasks_ArmyWidth.remove(iMin2);
            }
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
        try {
            SteamManager.updateSteam_runCallbacks();
        } catch (Exception e3) {
            CFG.exceptionStack(e3);
        }
    }
}
