package aoc.kingdoms.lukasz.menu_element.graph;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.MenuElement_Type;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Graph extends MenuElement {
    public static final int ANIMATION_TIME = 250;
    public static final int AUTO_MOVE_TURN_TIME = 1450;
    public static final int FONT_ID = 1;
    public float fAvaragePoint;
    public GraphType graphType;
    public int iAvaragePosY;
    public int iBestCivID;
    public int iBestDescDataID;
    public int iBestDescDataTextWidth;
    public int iDataSize;
    public int iFixPosY;
    public int iMaxPoint;
    public int iMaxPoint_Text;
    public int iMaxTextWidth;
    public int iMinPoint;
    public int iMinTextWidth;
    public int iPointsPosXSize;
    public int iWidthTextX;
    public int iWidthTextX2;
    public int iWidthTextY;
    public int iWorstCivID;
    public int iWorstDescDataID;
    public int iWorstDescDataTextWidth;
    public int iZeroPosY;
    protected List<GraphData> lData;
    public List<Integer> lPointsPosX;
    public List<Integer> lSortedData;
    public String sTextX;
    public String sTextX2;
    public String sTextY;
    public boolean split100;
    protected static final Color GRAPH_BG_COLOR = new Color(0.17254902f, 0.14901961f, 0.13333334f, 1.0f);
    protected static final Color GRAPH_BORDERS_COLOR = new Color(0.078431375f, 0.11764706f, 0.17254902f, 1.0f);
    protected static final Color GRAPH_LINES_COLOR = new Color(0.9f, 0.9f, 0.9f, 0.1f);
    protected static final Color GRAPH_LINES_DESC = new Color(0.9f, 0.9f, 0.9f, 0.15f);
    protected static final Color GRAPH_LINE_COLOR = new Color(0.8235294f, 0.8235294f, 0.8235294f, 1.0f);
    protected static final Color TEXT_COLOR = new Color(0.9f, 0.9f, 0.9f, 1.0f);
    protected static final Color DATA_COLOR = new Color(0.6862745f, 0.6862745f, 0.6862745f, 1.0f);
    protected static float POINTS_TEXT_SCALE = 0.8f;
    public int iMaxSize = 0;
    public int iHoveredID = -1;
    public byte bDecimal = 0;
    public boolean lessThanTen = false;
    public int iDescOfTurnID = 0;
    public long lTime = 0;
    public long lAuto_Move_Turn_Time = 0;
    public boolean moveable = false;
    public int iButtonsPosY = 0;
    public int iActiveButtonID = -1;

    public enum GraphType {
        PLAYER_INCOME,
        PLAYER_BALANCE,
        PLAYER_POPULATION,
        PLAYER_PRESTIGE
    }

    public Graph(String str, String str2, int i, int i2, int i3, int i4, boolean z, int i5, GraphType graphType, boolean z2) {
        this.sTextX = str;
        this.sTextY = str2;
        this.graphType = graphType;
        this.split100 = z2;
        ArrayList arrayList = new ArrayList();
        if (graphType == GraphType.PLAYER_INCOME) {
            arrayList.add(Integer.valueOf(Game.player.iCivID));
        } else {
            arrayList.add(Integer.valueOf(Game.player.iCivID));
        }
        Renderer.fontMain.get(1).getData().setScale(0.7f);
        Renderer.glyphLayout.setText(Renderer.fontMain.get(1), str);
        this.iWidthTextX = (int) Renderer.glyphLayout.width;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(1), str2);
        this.iWidthTextY = (int) Renderer.glyphLayout.width;
        Renderer.fontMain.get(1).getData().setScale(1.0f);
        setPosX(i);
        setPosY(i2);
        setWidth(i3);
        setHeight(i4);
        setVisible(z);
        this.lData = new ArrayList();
        this.lSortedData = new ArrayList();
        this.lPointsPosX = new ArrayList();
        this.iFixPosY = 0;
        this.typeOfElement = MenuElement_Type.GRAPH;
        for (int i6 = 0; i6 < arrayList.size(); i6++) {
            addData(new GraphData(((Integer) arrayList.get(i6)).intValue(), new ArrayList(), 0));
        }
        for (int i7 = 0; i7 < i5 && i7 < this.lData.size(); i7++) {
            loadData(i7);
        }
        this.iDataSize = this.lData.size();
    }

    protected static final int getGraphButtonHeight() {
        return CFG.BUTTON_HEIGHT / 2;
    }

    protected static final int getGraphButtonWidth() {
        return 0;
    }

    public final void actionUp(int i) {
        int posY = i - getPosY();
        int i2 = this.iActiveButtonID;
        if (i2 >= 0 && getButtonsPosY(i2) + this.iButtonsPosY <= posY && getButtonsPosY(this.iActiveButtonID) + getGraphButtonHeight() + this.iButtonsPosY >= posY) {
            if (this.lData.get(this.lSortedData.get(this.iActiveButtonID).intValue()).getDrawData()) {
                int i3 = 0;
                for (int i4 = 0; i4 < this.iDataSize; i4++) {
                    if (this.lData.get(i4).getDrawData()) {
                        i3++;
                    }
                }
                if (i3 > 1) {
                    this.lData.get(this.lSortedData.get(this.iActiveButtonID).intValue()).setDrawData(true ^ this.lData.get(this.lSortedData.get(this.iActiveButtonID).intValue()).getDrawData());
                    if (this.lData.get(this.lSortedData.get(this.iActiveButtonID).intValue()).getDrawData()) {
                        loadData(this.lSortedData.get(this.iActiveButtonID).intValue());
                    }
                    buildGraph();
                }
            } else {
                this.lData.get(this.lSortedData.get(this.iActiveButtonID).intValue()).setDrawData(true ^ this.lData.get(this.lSortedData.get(this.iActiveButtonID).intValue()).getDrawData());
                if (this.lData.get(this.lSortedData.get(this.iActiveButtonID).intValue()).getDrawData()) {
                    loadData(this.lSortedData.get(this.iActiveButtonID).intValue());
                }
                buildGraph();
            }
        }
        this.iActiveButtonID = -1;
    }

    protected final void addData(GraphData graphData) {
        for (int i = 0; i < this.iDataSize; i++) {
            if (this.lData.get(i).getCivID() == graphData.getCivID()) {
                return;
            }
        }
        this.lData.add(graphData);
        this.iDataSize = this.lData.size();
        updateMoveable();
        buildGraph();
        sortCivsByLastPoint();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
    }

    protected final void buildGraph() {
        int pointY = this.lData.get(0).getPointY(0);
        this.iMaxPoint = pointY;
        this.iMinPoint = pointY;
        this.fAvaragePoint = 0.0f;
        int civID = this.lData.get(0).getCivID();
        this.iWorstCivID = civID;
        this.iBestCivID = civID;
        this.iMaxSize = 0;
        int i = 0;
        for (int i2 = 0; i2 < this.iDataSize; i2++) {
            if (this.lData.get(i2).getDrawData()) {
                float pointY2 = 0.0f;
                for (int i3 = 0; i3 < this.lData.get(i2).getPointsSize(); i3++) {
                    if (this.lData.get(i2).getPointY(i3) > this.iMaxPoint) {
                        this.iMaxPoint = this.lData.get(i2).getPointY(i3);
                        this.iBestCivID = this.lData.get(i2).getCivID();
                    }
                    if (this.lData.get(i2).getPointY(i3) <= this.iMinPoint) {
                        this.iMinPoint = this.lData.get(i2).getPointY(i3);
                        this.iWorstCivID = this.lData.get(i2).getCivID();
                    }
                    pointY2 += this.lData.get(i2).getPointY(i3);
                }
                this.fAvaragePoint += pointY2 / this.lData.get(i2).getPointsSize();
                i++;
                if (this.iMaxSize < this.lData.get(i2).getPointsSize() + this.lData.get(i2).getBeginTurnID()) {
                    this.iMaxSize = this.lData.get(i2).getPointsSize() + this.lData.get(i2).getBeginTurnID();
                }
            } else {
                for (int i4 = 0; i4 < this.lData.get(i2).getPointsSize(); i4++) {
                    if (this.lData.get(i2).getPointY(i4) > this.iMaxPoint) {
                        this.iMaxPoint = this.lData.get(i2).getPointY(i4);
                        this.iBestCivID = this.lData.get(i2).getCivID();
                    }
                    if (this.lData.get(i2).getPointY(i4) <= this.iMinPoint) {
                        this.iMinPoint = this.lData.get(i2).getPointY(i4);
                        this.iWorstCivID = this.lData.get(i2).getCivID();
                    }
                }
                if (this.iMaxSize < this.lData.get(i2).getPointsSize() + this.lData.get(i2).getBeginTurnID()) {
                    this.iMaxSize = this.lData.get(i2).getPointsSize() + this.lData.get(i2).getBeginTurnID();
                }
            }
        }
        int i5 = this.iMaxPoint;
        this.iMaxPoint_Text = i5;
        this.iMaxPoint = (int) (i5 + (i5 * 0.05f));
        this.fAvaragePoint /= i;
        try {
            int i6 = this.iMinPoint;
            if (i6 < 0) {
                this.iFixPosY = -((int) (((((getHeight() - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2)) * (getMinPoint() * 100.0f)) / (this.iMaxPoint - getMinPoint())) / 100.0f));
                this.iZeroPosY = (int) (((getHeight() - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2)) - (((((getHeight() - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2)) * 0.0f) / (this.iMaxPoint - getMinPoint())) / 100.0f));
            } else if (i6 > 0) {
                this.iFixPosY = (int) ((((getHeight() - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2)) - (((((getHeight() - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2)) * (getMinPoint() * 100.0f)) / (this.iMaxPoint - getMinPoint())) / 100.0f)) - ((getHeight() - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2)));
            } else {
                this.iFixPosY = 0;
            }
        } catch (ArithmeticException unused) {
            this.iFixPosY = 0;
        }
        this.iAvaragePosY = (int) (((getHeight() - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2)) - (((((getHeight() - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2)) * (this.fAvaragePoint * 100.0f)) / (this.iMaxPoint - getMinPoint())) / 100.0f));
        roundAverage();
        this.lPointsPosX.clear();
        this.lPointsPosX.add(0);
        for (int i7 = 1; i7 < this.iMaxSize - 1; i7++) {
            this.lPointsPosX.add(Integer.valueOf((int) (((((getGraphWidth() - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2)) * (i7 * 100.0f)) / (this.iMaxSize - 1)) / 100.0f)));
        }
        this.lPointsPosX.add(Integer.valueOf((getGraphWidth() - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2)));
        this.iPointsPosXSize = this.lPointsPosX.size();
        for (int i8 = 0; i8 < this.iDataSize; i8++) {
            this.lData.get(i8).buildGraph((getHeight() - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2), getMinPoint(), this.iMaxPoint, this.lPointsPosX);
        }
        Renderer.fontMain.get(1).getData().setScale(POINTS_TEXT_SCALE);
        Renderer.glyphLayout.setText(Renderer.fontMain.get(1), "" + this.iMinPoint);
        this.iMinTextWidth = (int) Renderer.glyphLayout.width;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(1), "" + this.iMaxPoint_Text);
        this.iMaxTextWidth = (int) Renderer.glyphLayout.width;
        Renderer.fontMain.get(1).getData().setScale(1.0f);
        updateDescInfo();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        if (this.lAuto_Move_Turn_Time + 1450 < CFG.currentTimeMillis) {
            incrementTurnDescInfo();
        }
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(new Color(0.06666667f, 0.07450981f, 0.09019608f, 1.0f));
        Renderer.drawBox2(spriteBatch, (getPosX() - 2) + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + i, (getPosY() - 2) + i2, ((getGraphWidth() + 4) - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2), ((getHeight() + 4) - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2), 1.0f);
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.75f));
        ImageManager.getImage(Images.graphBG).draw2(spriteBatch, getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + i, getPosY() + i2, (getGraphWidth() - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2), (getHeight() - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2));
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.8f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + i, getPosY() + i2, (getGraphWidth() - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2), (getHeight() - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2), false, true);
        Images.gradientXY.draw(spriteBatch, getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + i, getPosY() + i2, (getGraphWidth() - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2), (getHeight() - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2));
        Renderer.fontMain.get(1).getData().setScale(0.8f);
        Renderer.drawTextWithShadowRotated(spriteBatch, 1, this.sTextY, (getPosX() - 2) + CFG.PADDING + i, getPosY() + (getHeight() / 2) + (this.iWidthTextY / 2) + i2, Colors.HOVER_GOLD, 90.0f);
        String str = this.sTextX;
        int posX = getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.8f)) + (CFG.PADDING * 2) + (CFG.PADDING * 2) + i;
        int posY = ((((getPosY() + 2) + getHeight()) - CFG.PADDING) - ((int) (CFG.TEXT_HEIGHT * 0.8f))) + i2;
        Color color = DATA_COLOR;
        Renderer.drawTextWithShadow(spriteBatch, 1, str, posX, posY, color);
        Renderer.fontMain.get(1).getData().setScale(1.0f);
        spriteBatch.setColor(GRAPH_LINES_DESC);
        ImageManager.getImage(Images.line_33).draw2(spriteBatch, getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + i, (getPosY() - this.iFixPosY) + this.iAvaragePosY + i2, (getGraphWidth() - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2));
        if (getMinPoint() < 0 && this.iMaxPoint > 0) {
            spriteBatch.setColor(GRAPH_LINES_COLOR);
            Images.pix.draw(spriteBatch, getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + 1 + i, (getPosY() - this.iFixPosY) + this.iZeroPosY + i2, ((getGraphWidth() - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2)) - 1);
            spriteBatch.setColor(GRAPH_BORDERS_COLOR);
            Images.pix.draw(spriteBatch, getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + 1 + i, ((getPosY() - 1) - this.iFixPosY) + this.iZeroPosY + i2, CFG.PADDING - 1);
            Renderer.fontMain.get(1).getData().setScale(POINTS_TEXT_SCALE);
            Renderer.drawTextWithShadow(spriteBatch, 1, "0", getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + 1 + ((int) (CFG.GUI_SCALE * 2.0f)) + i, (((((getPosY() - ((int) (CFG.GUI_SCALE * 2.0f))) - ((int) (CFG.TEXT_HEIGHT * POINTS_TEXT_SCALE))) - this.iFixPosY) + this.iZeroPosY) - 1) + i2, color);
            Renderer.fontMain.get(1).getData().setScale(1.0f);
        }
        if (this.lTime + 250 > CFG.currentTimeMillis) {
            Renderer.clipView_Start(spriteBatch, getPosX() + i, (CFG.GAME_HEIGHT - getPosY()) - i2, (int) (getGraphWidth() * ((CFG.currentTimeMillis - this.lTime) / 250.0f)), -getHeight());
            drawGraphData(spriteBatch, i, i2);
            Renderer.clipView_End(spriteBatch);
        } else {
            drawGraphData(spriteBatch, i, i2);
        }
        Color color2 = GRAPH_BORDERS_COLOR;
        spriteBatch.setColor(color2);
        Images.pix.draw(spriteBatch, getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + i, getPosY() + i2, CFG.PADDING - 1);
        Images.pix.draw(spriteBatch, getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + i, (getPosY() - this.iFixPosY) + this.iAvaragePosY + i2, CFG.PADDING - 1);
        Images.pix.draw(spriteBatch, ((getPosX() + getGraphWidth()) - 1) + i, (((getPosY() + getHeight()) - (((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2))) - CFG.PADDING) + 1 + i2, 1, CFG.PADDING - 1);
        Renderer.fontMain.get(1).getData().setScale(POINTS_TEXT_SCALE);
        if (this.split100) {
            Renderer.drawTextWithShadow(spriteBatch, 1, "" + CFG.getPrecision2(getMinPoint() / 100.0f, 10), getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + 1 + ((int) (CFG.GUI_SCALE * 2.0f)) + i, ((((getPosY() + getHeight()) - (((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2))) - ((int) (CFG.GUI_SCALE * 2.0f))) - ((int) (CFG.TEXT_HEIGHT * POINTS_TEXT_SCALE))) + i2, color);
            Renderer.drawTextWithShadow(spriteBatch, 1, "" + CFG.getPrecision2(this.iMaxPoint_Text / 100.0f, 10), getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + 1 + ((int) (CFG.GUI_SCALE * 2.0f)) + i, getPosY() + 1 + ((int) (CFG.GUI_SCALE * 2.0f)) + i2, color);
        } else {
            Renderer.drawTextWithShadow(spriteBatch, 1, "" + getMinPoint(), getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + 1 + ((int) (CFG.GUI_SCALE * 2.0f)) + i, ((((getPosY() + getHeight()) - (((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2))) - ((int) (CFG.GUI_SCALE * 2.0f))) - ((int) (CFG.TEXT_HEIGHT * POINTS_TEXT_SCALE))) + i2, color);
            Renderer.drawTextWithShadow(spriteBatch, 1, "" + this.iMaxPoint_Text, getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + 1 + ((int) (CFG.GUI_SCALE * 2.0f)) + i, getPosY() + 1 + ((int) (CFG.GUI_SCALE * 2.0f)) + i2, color);
        }
        spriteBatch.setColor(Color.WHITE);
        Renderer.fontMain.get(1).getData().setScale(1.0f);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(color2);
        Images.pix.draw(spriteBatch, (getPosX() - 1) + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + i, getPosY() + i2, 1, (getHeight() - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2));
        Images.pix.draw(spriteBatch, (getPosX() - 1) + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + i, (((getPosY() + getHeight()) - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2)) + i2, ((getGraphWidth() - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2)) + 1, 1);
        Images.pix.draw(spriteBatch, ((getPosX() + getGraphWidth()) - CFG.PADDING) + i, getPosY() + i2, CFG.PADDING);
        Images.pix.draw(spriteBatch, (getPosX() - 1) + getGraphWidth() + i, getPosY() + i2, 1, CFG.PADDING - 1);
        Renderer.clipView_Start(spriteBatch, getPosX() + i, (CFG.GAME_HEIGHT - getPosY()) - i2, getWidth(), -(((getHeight() - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2)) + 2));
        Renderer.clipView_End(spriteBatch);
        spriteBatch.setColor(Color.WHITE);
    }

    public final void drawGraphData(SpriteBatch spriteBatch, int i, int i2) {
        int i3;
        getMinPoint();
        int i4 = this.iFixPosY;
        int i5 = 0;
        while (i5 < this.iDataSize) {
            if (this.lData.get(i5).getDrawData()) {
                GraphData graphData = this.lData.get(i5);
                int posX = getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + i;
                int posY = getPosY() + i2;
                int graphWidth = getGraphWidth();
                int height = getHeight();
                List<Integer> list = this.lPointsPosX;
                int i6 = this.iActiveButtonID;
                graphData.draw(spriteBatch, posX, posY, graphWidth, height, list, i5, i6 < 0 ? !((i3 = this.iHoveredID) < 0 || this.lSortedData.get(i3).intValue() != i5) : this.lSortedData.get(i6).intValue() == i5, i4);
            } else if (this.lData.get(i5).getBackAnimation()) {
                if (this.lData.get(i5).getTime() + 450 <= CFG.currentTimeMillis) {
                    this.lData.get(i5).setBackAnimation(false);
                } else {
                    this.lData.get(i5).drawAnimation(spriteBatch, getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + i, getPosY() + i2, getGraphWidth(), getHeight(), this.lPointsPosX, i5, this.iActiveButtonID == this.lSortedData.get(i5).intValue() || this.iHoveredID == this.lSortedData.get(i5).intValue(), i4);
                }
            }
            i5++;
        }
    }

    public final int getButtonsHeight() {
        return (getGraphButtonHeight() * this.iDataSize) + (CFG.PADDING * (this.iDataSize - 1));
    }

    public final int getButtonsPosY(int i) {
        return (getGraphButtonHeight() * i) + (CFG.PADDING * i);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getCurrent() {
        return this.iButtonsPosY;
    }

    public final int getDataLastPoint(int i) {
        try {
            return this.lData.get(i).getPointY((this.iPointsPosXSize - 1) - this.lData.get(i).getBeginTurnID());
        } catch (IndexOutOfBoundsException unused) {
            return 0;
        }
    }

    protected final int getGraphWidth() {
        return (getWidth() - getGraphButtonWidth()) - CFG.PADDING;
    }

    public final int getMinPoint() {
        int i = this.iMinPoint;
        if (i > 0) {
            return 0;
        }
        return i;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public boolean getMoveable() {
        return this.moveable;
    }

    public final void incrementTurnDescInfo() {
        int i = this.iDescOfTurnID + 1;
        this.iDescOfTurnID = i;
        if (i >= this.iMaxSize) {
            this.iDescOfTurnID = 0;
        }
        updateDescInfo();
    }

    protected void loadData(int i) {
        ArrayList arrayList = new ArrayList();
        if (this.graphType == GraphType.PLAYER_INCOME) {
            for (int i2 = 0; i2 < Game.player.playerStats2.income.size(); i2++) {
                arrayList.add(Game.player.playerStats2.income.get(i2));
            }
        } else if (this.graphType == GraphType.PLAYER_BALANCE) {
            for (int i3 = 0; i3 < Game.player.playerStats2.balance.size(); i3++) {
                arrayList.add(Game.player.playerStats2.balance.get(i3));
            }
        } else if (this.graphType == GraphType.PLAYER_PRESTIGE) {
            for (int i4 = 0; i4 < Game.player.playerStats3.prestige.size(); i4++) {
                arrayList.add(Game.player.playerStats3.prestige.get(i4));
            }
        } else if (this.graphType == GraphType.PLAYER_POPULATION) {
            for (int i5 = 0; i5 < Game.player.playerStats3.population.size(); i5++) {
                arrayList.add(Game.player.playerStats3.population.get(i5));
            }
        } else {
            for (int i6 = 0; i6 < 5; i6++) {
                arrayList.add(Integer.valueOf(Game.oR.nextInt(Game.oR.nextInt(Game.oR.nextInt(100) + 1) + 1) + 100));
            }
        }
        if (arrayList.size() > 0) {
            this.lData.set(i, new GraphData(this.lData.get(i).getCivID(), arrayList, 0));
            this.lData.get(i).setDrawData(true);
            updateMoveable();
            buildGraph();
        }
    }

    protected final void removeData(int i) {
        if (this.iDataSize > 1) {
            for (int i2 = 0; i2 < this.iDataSize; i2++) {
                if (this.lData.get(i2).getCivID() == i) {
                    this.lData.remove(i2);
                    this.iDataSize = this.lData.size();
                    updateMoveable();
                    buildGraph();
                    updateButtonsInView();
                    return;
                }
            }
        }
        sortCivsByLastPoint();
    }

    public final void roundAverage() {
        float f = this.fAvaragePoint;
        if (f - ((int) f) == 0.0f) {
            this.bDecimal = (byte) 0;
            return;
        }
        byte bRound = (byte) Math.round((f - ((int) f)) * 100.0f);
        this.bDecimal = bRound;
        float f2 = this.fAvaragePoint;
        this.fAvaragePoint = f2 - (f2 - ((int) f2));
        this.lessThanTen = false;
        if (bRound % 10 == 0) {
            this.bDecimal = (byte) (bRound / 10);
        } else if (bRound < 10) {
            this.lessThanTen = true;
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setCheckboxState(boolean z) {
        buildGraph();
        updateMoveable();
        updateButtonsInView();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setCurrent(int i) {
        if (i >= 0) {
            i = 0;
        } else if (i <= (-(getButtonsHeight() - ((getHeight() - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2))))) {
            i = -(getButtonsHeight() - ((getHeight() - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2)));
        }
        if (this.iButtonsPosY != i) {
            this.iButtonsPosY = i;
            updateButtonsInView();
        }
    }

    protected final void setData(List<GraphData> list) {
        this.lData.clear();
        for (int i = 0; i < list.size(); i++) {
            this.lData.add(list.get(i));
        }
        this.iDataSize = this.lData.size();
        buildGraph();
    }

    public final void setHoveredID(int i) {
        if (this.iHoveredID != i) {
            this.iHoveredID = i;
            buildElementHover();
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setMin(int i) {
        for (int i2 = 0; i2 < this.lData.size(); i2++) {
            if (this.lData.get(i2).getCivID() == i) {
                this.lData.get(i2).setDrawData(!this.lData.get(i2).getDrawData());
                if (this.lData.get(i2).getDrawData()) {
                    loadData(i2);
                    return;
                }
                return;
            }
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public final void setScrollPosY(int i) {
        int posY = i - getPosY();
        for (int i2 = 0; i2 < this.iDataSize; i2++) {
            if (getButtonsPosY(i2) + this.iButtonsPosY <= posY && getButtonsPosY(i2) + getGraphButtonHeight() + this.iButtonsPosY >= posY) {
                this.iActiveButtonID = i2;
                Gdx.app.log("AoC", "" + this.iActiveButtonID);
                return;
            }
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setVisible(boolean z) {
        if (z) {
            if (this.iDescOfTurnID != 0) {
                updateSlider(0);
            }
            this.lTime = CFG.currentTimeMillis - 1;
            updateMoveTurnTime();
        } else {
            this.lTime = 0L;
            this.iButtonsPosY = 0;
        }
        super.setVisible(z);
        setHoveredID(-1);
    }

    public final void sortCivsByLastPoint() {
        this.lSortedData.clear();
        for (int i = 0; i < this.iDataSize; i++) {
            this.lSortedData.add(Integer.valueOf(i));
        }
    }

    public final void updateButtonsInView() {
        for (int i = 0; i < this.iDataSize; i++) {
            if (getButtonsPosY(i) + this.iButtonsPosY >= 0 && getButtonsPosY(i) + this.iButtonsPosY <= getHeight()) {
                this.lData.get(this.lSortedData.get(i).intValue()).setVisible(true);
            } else if (getButtonsPosY(i) + getGraphButtonHeight() + this.iButtonsPosY < 0 || getButtonsPosY(i) + getGraphButtonHeight() + this.iButtonsPosY > getHeight()) {
                this.lData.get(this.lSortedData.get(i).intValue()).setVisible(false);
            } else {
                this.lData.get(this.lSortedData.get(i).intValue()).setVisible(true);
            }
        }
    }

    protected final void updateDescInfo() {
        int minPoint = getMinPoint();
        int pointY = this.iMaxPoint;
        for (int i = 0; i < this.iDataSize; i++) {
            if (this.lData.get(i).getDrawData() && this.iDescOfTurnID >= this.lData.get(i).getBeginTurnID() && this.iDescOfTurnID < this.lData.get(i).getBeginTurnID() + this.lData.get(i).getPointsSize()) {
                if (this.lData.get(i).getPointY(this.iDescOfTurnID - this.lData.get(i).getBeginTurnID()) > minPoint) {
                    minPoint = this.lData.get(i).getPointY(this.iDescOfTurnID - this.lData.get(i).getBeginTurnID());
                    this.iBestDescDataID = i;
                }
                if (this.lData.get(i).getPointY(this.iDescOfTurnID - this.lData.get(i).getBeginTurnID()) <= pointY) {
                    pointY = this.lData.get(i).getPointY(this.iDescOfTurnID - this.lData.get(i).getBeginTurnID());
                    this.iWorstDescDataID = i;
                }
            }
        }
        Renderer.fontMain.get(1).getData().setScale(POINTS_TEXT_SCALE);
        Renderer.glyphLayout.setText(Renderer.fontMain.get(1), "" + this.lData.get(this.iWorstDescDataID).getPointY(this.iDescOfTurnID - this.lData.get(this.iWorstDescDataID).getBeginTurnID()));
        this.iWorstDescDataTextWidth = (int) Renderer.glyphLayout.width;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(1), "" + this.lData.get(this.iBestDescDataID).getPointY(this.iDescOfTurnID - this.lData.get(this.iBestDescDataID).getBeginTurnID()));
        this.iBestDescDataTextWidth = (int) Renderer.glyphLayout.width;
        Renderer.fontMain.get(1).getData().setScale(1.0f);
        if (this.iPointsPosXSize < Game_Calendar.TURN_ID) {
            int i2 = Game_Calendar.TURN_ID;
        }
        this.sTextX = Game_Calendar.getDate_ByTurnID(0);
        Renderer.glyphLayout.setText(Renderer.fontMain.get(1), this.sTextX);
        this.iWidthTextX = (int) Renderer.glyphLayout.width;
        updateMoveTurnTime();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void updateHover(int i, int i2, int i3, int i4) {
        for (int i5 = 0; i5 < this.iDataSize; i5++) {
            if (((getPosX() + getWidth()) - getGraphButtonWidth()) + i3 <= i && getPosX() + getWidth() + i3 >= i && getButtonsPosY(i5) + this.iButtonsPosY + i4 <= i2 && getButtonsPosY(i5) + getGraphButtonHeight() + this.iButtonsPosY + i4 >= i2) {
                setHoveredID(this.lSortedData.get(i5).intValue());
                return;
            }
        }
        setHoveredID(-1);
    }

    public final void updateMoveTurnTime() {
        this.lAuto_Move_Turn_Time = CFG.currentTimeMillis;
    }

    protected final void updateMoveable() {
        if (getButtonsHeight() > getHeight()) {
            this.moveable = true;
        } else {
            this.moveable = false;
            this.iButtonsPosY = 0;
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void updateSlider(int i) {
        updateMoveTurnTime();
    }
}
