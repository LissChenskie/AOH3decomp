package aoc.kingdoms.lukasz.menu_element.graph;

import androidx.arch.core.ht.qIuEvFbUtcea;
import aoc.kingdoms.lukasz.jakowski.AI.Values.nvwi.cIUGJCqyPXfp;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.map.advisors.VjN.hQfu;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRanking;
import aoc.kingdoms.lukasz.map.terrain.exjB.uiwPYaNhJS;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.MenuElement_Type;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Government;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Religion;
import aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods_LargestProducers;
import aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightGovernment;
import aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightReligion;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Graph_Vertical extends MenuElement {
    public static List<Integer> graphCivs = new ArrayList();
    private Graph_Vertical_Data_Type GRAPH_DATA_TYPE;
    public boolean drawShort;
    private DrawStatisticsData drawStatisticsData;
    private float fAvaragePoint;
    private int iAvaragePosY;
    private int iButtonsPosX;
    private int iButtonsPosY;
    private int iDataWidth;
    private int iMaxPoint;
    private int iMinPoint;
    private int iValuesSize;
    private int iWidthTextY;
    private String sTextX;
    private String sTextY;
    private String sTotal;
    private Graph_Vertical_Info verticalInfo;
    private List<Graph_Vertical_Data> lValues = new ArrayList();
    private int iValuesTotal = 0;
    public boolean splitBy100 = false;
    private boolean statisticsMode = false;
    private byte bDecimal = 0;
    private boolean lessThanTen = false;
    private boolean moveable = false;
    private int iHoveredID = -1;
    private boolean scrollModeY = false;
    private int iScrollPosX = -1;
    private int iScrollPosX2 = -1;
    private float fScrollNewMenuPosY = 0.0f;
    public boolean allowStatisticsMode = true;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical$1, reason: invalid class name */
    class AnonymousClass1 implements DrawStatisticsData {
        AnonymousClass1() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public void draw(SpriteBatch spriteBatch, int i, int i2, int i3, int i4) {
            for (int i5 = 0; i5 < ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValuesSize(); i5++) {
                Graph_Vertical.this.drawStatisticsValue(spriteBatch, "" + ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValue(i5), Graph_Vertical.this.getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + (Graph_Vertical.this.getStatisticsWidth() * 2) + (Graph_Vertical.this.getStatisticsWidth() * Graph_Vertical.this.verticalInfo.getSortedID(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValueDataTypeID(i5))) + i3, Graph_Vertical.this.getPosY() + ((((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) * (i + 1)) + i4);
            }
            Graph_Vertical.this.drawStatisticsValue(spriteBatch, "" + ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValue() + " [" + CFG.getPercentage(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValue(), Graph_Vertical.this.iValuesTotal, 4) + "%]", Graph_Vertical.this.getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + i2 + i3, Graph_Vertical.this.getPosY() + ((((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) * (i + 1)) + i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public String getStatsLP(int i) {
            return Game.getCiv(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getCivID()).getCivName();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public int getStatsLPCivFlagID(int i) {
            return ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getCivID();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public String getTotal() {
            return Graph_Vertical.this.sTotal + " [" + Graph_Vertical.this.iValuesTotal + "]";
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical$10, reason: invalid class name */
    class AnonymousClass10 implements DrawStatisticsData {
        AnonymousClass10() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public void draw(SpriteBatch spriteBatch, int i, int i2, int i3, int i4) {
            for (int i5 = 0; i5 < ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValuesSize(); i5++) {
                Graph_Vertical.this.drawStatisticsValue(spriteBatch, "" + ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValue(i5), Graph_Vertical.this.getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + (Graph_Vertical.this.getStatisticsWidth() * 2) + (Graph_Vertical.this.getStatisticsWidth() * Graph_Vertical.this.verticalInfo.getSortedID(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValueDataTypeID(i5))) + i3, Graph_Vertical.this.getPosY() + ((((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) * (i + 1)) + i4);
            }
            Graph_Vertical.this.drawStatisticsValue(spriteBatch, "" + ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValue() + " [" + CFG.getPercentage(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValue(), Graph_Vertical.this.iValuesTotal, 3) + "%]", Graph_Vertical.this.getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + i2 + i3, Graph_Vertical.this.getPosY() + ((((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) * (i + 1)) + i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public String getStatsLP(int i) {
            return Game.getCiv(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getCivID()).getCivName();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public int getStatsLPCivFlagID(int i) {
            return ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getCivID();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public String getTotal() {
            return Graph_Vertical.this.sTotal + " [" + Graph_Vertical.this.iValuesTotal + "]";
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical$11, reason: invalid class name */
    class AnonymousClass11 implements DrawStatisticsData {
        AnonymousClass11() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public void draw(SpriteBatch spriteBatch, int i, int i2, int i3, int i4) {
            for (int i5 = 0; i5 < ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValuesSize(); i5++) {
                Graph_Vertical.this.drawStatisticsValue(spriteBatch, "" + ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValue(i5), Graph_Vertical.this.getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + (Graph_Vertical.this.getStatisticsWidth() * 2) + (Graph_Vertical.this.getStatisticsWidth() * Graph_Vertical.this.verticalInfo.getSortedID(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValueDataTypeID(i5))) + i3, Graph_Vertical.this.getPosY() + ((((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) * (i + 1)) + i4);
            }
            Graph_Vertical.this.drawStatisticsValue(spriteBatch, "" + ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValue() + " [" + CFG.getPercentage(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValue(), Graph_Vertical.this.iValuesTotal, 3) + "%]", Graph_Vertical.this.getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + i2 + i3, Graph_Vertical.this.getPosY() + ((((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) * (i + 1)) + i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public String getStatsLP(int i) {
            return Game.getCiv(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getCivID()).getCivName();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public int getStatsLPCivFlagID(int i) {
            return ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getCivID();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public String getTotal() {
            return Graph_Vertical.this.sTotal + " [" + Graph_Vertical.this.iValuesTotal + "]";
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical$12, reason: invalid class name */
    class AnonymousClass12 implements DrawStatisticsData {
        AnonymousClass12() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public void draw(SpriteBatch spriteBatch, int i, int i2, int i3, int i4) {
            for (int i5 = 0; i5 < ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValuesSize(); i5++) {
                Graph_Vertical.this.drawStatisticsValue(spriteBatch, "" + ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValue(i5), Graph_Vertical.this.getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + (Graph_Vertical.this.getStatisticsWidth() * 2) + (Graph_Vertical.this.getStatisticsWidth() * Graph_Vertical.this.verticalInfo.getSortedID(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValueDataTypeID(i5))) + i3, Graph_Vertical.this.getPosY() + ((((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) * (i + 1)) + i4);
            }
            Graph_Vertical.this.drawStatisticsValue(spriteBatch, "" + ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValue(), Graph_Vertical.this.getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + i2 + i3, Graph_Vertical.this.getPosY() + ((((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) * (i + 1)) + i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public String getStatsLP(int i) {
            return Game.getCiv(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getCivID()).getCivName();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public int getStatsLPCivFlagID(int i) {
            return ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getCivID();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public String getTotal() {
            return Graph_Vertical.this.sTotal + " [" + Graph_Vertical.this.iValuesTotal + "]";
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical$13, reason: invalid class name */
    class AnonymousClass13 implements DrawStatisticsData {
        AnonymousClass13() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public void draw(SpriteBatch spriteBatch, int i, int i2, int i3, int i4) {
            for (int i5 = 0; i5 < ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValuesSize(); i5++) {
                Graph_Vertical.this.drawStatisticsValue(spriteBatch, "" + ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValue(i5), Graph_Vertical.this.getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + (Graph_Vertical.this.getStatisticsWidth() * 2) + (Graph_Vertical.this.getStatisticsWidth() * Graph_Vertical.this.verticalInfo.getSortedID(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValueDataTypeID(i5))) + i3, Graph_Vertical.this.getPosY() + ((((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) * (i + 1)) + i4);
            }
            Graph_Vertical.this.drawStatisticsValue(spriteBatch, "" + ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValue(), Graph_Vertical.this.getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + i2 + i3, Graph_Vertical.this.getPosY() + ((((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) * (i + 1)) + i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public String getStatsLP(int i) {
            return Game.getCiv(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getCivID()).getCivName();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public int getStatsLPCivFlagID(int i) {
            return ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getCivID();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public String getTotal() {
            return Graph_Vertical.this.sTotal + " [" + Graph_Vertical.this.iValuesTotal + hQfu.lAXHdrG;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical$14, reason: invalid class name */
    class AnonymousClass14 implements DrawStatisticsData {
        AnonymousClass14() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public void draw(SpriteBatch spriteBatch, int i, int i2, int i3, int i4) {
            for (int i5 = 0; i5 < ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValuesSize(); i5++) {
                Graph_Vertical.this.drawStatisticsValue(spriteBatch, "" + ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValue(i5), Graph_Vertical.this.getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + (Graph_Vertical.this.getStatisticsWidth() * 2) + (Graph_Vertical.this.getStatisticsWidth() * Graph_Vertical.this.verticalInfo.getSortedID(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValueDataTypeID(i5))) + i3, Graph_Vertical.this.getPosY() + ((((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) * (i + 1)) + i4);
            }
            Graph_Vertical.this.drawStatisticsValue(spriteBatch, "" + ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValue(), Graph_Vertical.this.getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + i2 + i3, Graph_Vertical.this.getPosY() + ((((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) * (i + 1)) + i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public String getStatsLP(int i) {
            return Game.getCiv(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getCivID()).getCivName();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public int getStatsLPCivFlagID(int i) {
            return ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getCivID();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public String getTotal() {
            return Graph_Vertical.this.sTotal + " [" + Graph_Vertical.this.iValuesTotal + "]";
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical$15, reason: invalid class name */
    class AnonymousClass15 implements DrawStatisticsData {
        AnonymousClass15() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public void draw(SpriteBatch spriteBatch, int i, int i2, int i3, int i4) {
            for (int i5 = 0; i5 < ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValuesSize(); i5++) {
                Graph_Vertical.this.drawStatisticsValue(spriteBatch, "" + ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValue(i5), Graph_Vertical.this.getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + (Graph_Vertical.this.getStatisticsWidth() * 2) + (Graph_Vertical.this.getStatisticsWidth() * Graph_Vertical.this.verticalInfo.getSortedID(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValueDataTypeID(i5))) + i3, Graph_Vertical.this.getPosY() + ((((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) * (i + 1)) + i4);
            }
            Graph_Vertical.this.drawStatisticsValue(spriteBatch, "" + ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValue(), Graph_Vertical.this.getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + i2 + i3, Graph_Vertical.this.getPosY() + ((((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) * (i + 1)) + i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public String getStatsLP(int i) {
            return Game.getCiv(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getCivID()).getCivName();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public int getStatsLPCivFlagID(int i) {
            return ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getCivID();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public String getTotal() {
            return Graph_Vertical.this.sTotal + " [" + Graph_Vertical.this.iValuesTotal + "]";
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical$2, reason: invalid class name */
    class AnonymousClass2 implements DrawStatisticsData {
        AnonymousClass2() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public void draw(SpriteBatch spriteBatch, int i, int i2, int i3, int i4) {
            for (int i5 = 0; i5 < ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValuesSize(); i5++) {
                Graph_Vertical.this.drawStatisticsValue(spriteBatch, "" + CFG.getNumberWithSpaces("" + ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValue(i5)), Graph_Vertical.this.getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + (Graph_Vertical.this.getStatisticsWidth() * 2) + (Graph_Vertical.this.getStatisticsWidth() * Graph_Vertical.this.verticalInfo.getSortedID(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValueDataTypeID(i5))) + i3, Graph_Vertical.this.getPosY() + ((((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) * (i + 1)) + i4);
            }
            Graph_Vertical.this.drawStatisticsValue(spriteBatch, "" + CFG.getShortNumber(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValue()) + " [" + CFG.getPercentage(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValue(), Graph_Vertical.this.iValuesTotal, 3) + "%]", Graph_Vertical.this.getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + i2 + i3, Graph_Vertical.this.getPosY() + ((((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) * (i + 1)) + i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public String getStatsLP(int i) {
            return Game.getCiv(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getCivID()).getCivName();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public int getStatsLPCivFlagID(int i) {
            return ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getCivID();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public String getTotal() {
            return Graph_Vertical.this.sTotal + " [" + CFG.getShortNumber(Math.max(1, Graph_Vertical.this.iValuesTotal)) + "]";
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical$3, reason: invalid class name */
    class AnonymousClass3 implements DrawStatisticsData {
        AnonymousClass3() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public void draw(SpriteBatch spriteBatch, int i, int i2, int i3, int i4) {
            for (int i5 = 0; i5 < ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValuesSize(); i5++) {
                Graph_Vertical.this.drawStatisticsValue(spriteBatch, "" + CFG.getNumberWithSpaces("" + ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValue(i5)), Graph_Vertical.this.getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + (Graph_Vertical.this.getStatisticsWidth() * 2) + (Graph_Vertical.this.getStatisticsWidth() * Graph_Vertical.this.verticalInfo.getSortedID(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValueDataTypeID(i5))) + i3, Graph_Vertical.this.getPosY() + ((((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) * (i + 1)) + i4);
            }
            Graph_Vertical.this.drawStatisticsValue(spriteBatch, "" + CFG.getShortNumber(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValue()) + " [" + CFG.getPercentage(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValue(), Graph_Vertical.this.iValuesTotal, 3) + "%]", Graph_Vertical.this.getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + i2 + i3, Graph_Vertical.this.getPosY() + ((((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) * (i + 1)) + i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public String getStatsLP(int i) {
            return Game.getCiv(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getCivID()).getCivName();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public int getStatsLPCivFlagID(int i) {
            return ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getCivID();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public String getTotal() {
            return Graph_Vertical.this.sTotal + " [" + CFG.getShortNumber(Math.max(1, Graph_Vertical.this.iValuesTotal)) + "]";
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical$4, reason: invalid class name */
    class AnonymousClass4 implements DrawStatisticsData {
        AnonymousClass4() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public void draw(SpriteBatch spriteBatch, int i, int i2, int i3, int i4) {
            for (int i5 = 0; i5 < ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValuesSize(); i5++) {
                Graph_Vertical.this.drawStatisticsValue(spriteBatch, "" + CFG.getNumberWithSpaces("" + ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValue(i5)), Graph_Vertical.this.getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + (Graph_Vertical.this.getStatisticsWidth() * 2) + (Graph_Vertical.this.getStatisticsWidth() * Graph_Vertical.this.verticalInfo.getSortedID(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValueDataTypeID(i5))) + i3, Graph_Vertical.this.getPosY() + ((((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) * (i + 1)) + i4);
            }
            Graph_Vertical.this.drawStatisticsValue(spriteBatch, "" + CFG.getShortNumber(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValue()) + " [" + CFG.getPercentage(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValue(), Graph_Vertical.this.iValuesTotal, 3) + "%]", Graph_Vertical.this.getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + i2 + i3, Graph_Vertical.this.getPosY() + ((((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) * (i + 1)) + i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public String getStatsLP(int i) {
            return Game.getCiv(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getCivID()).getCivName();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public int getStatsLPCivFlagID(int i) {
            return ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getCivID();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public String getTotal() {
            return Graph_Vertical.this.sTotal + " [" + CFG.getShortNumber(Math.max(1, Graph_Vertical.this.iValuesTotal)) + "]";
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical$5, reason: invalid class name */
    class AnonymousClass5 implements DrawStatisticsData {
        AnonymousClass5() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public void draw(SpriteBatch spriteBatch, int i, int i2, int i3, int i4) {
            for (int i5 = 0; i5 < ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValuesSize(); i5++) {
                Graph_Vertical.this.drawStatisticsValue(spriteBatch, "" + CFG.getNumberWithSpaces("" + ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValue(i5)), Graph_Vertical.this.getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + (Graph_Vertical.this.getStatisticsWidth() * 2) + (Graph_Vertical.this.getStatisticsWidth() * Graph_Vertical.this.verticalInfo.getSortedID(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValueDataTypeID(i5))) + i3, Graph_Vertical.this.getPosY() + ((((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) * (i + 1)) + i4);
            }
            Graph_Vertical.this.drawStatisticsValue(spriteBatch, "" + CFG.getShortNumber(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValue()) + qIuEvFbUtcea.ALHvVnMuQcoxDT + CFG.getPercentage(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValue(), Graph_Vertical.this.iValuesTotal, 3) + "%]", Graph_Vertical.this.getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + i2 + i3, Graph_Vertical.this.getPosY() + ((((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) * (i + 1)) + i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public String getStatsLP(int i) {
            return Game.getCiv(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getCivID()).getCivName();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public int getStatsLPCivFlagID(int i) {
            return ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getCivID();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public String getTotal() {
            return Graph_Vertical.this.sTotal + " [" + CFG.getShortNumber(Math.max(1, Graph_Vertical.this.iValuesTotal)) + "]";
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical$6, reason: invalid class name */
    class AnonymousClass6 implements DrawStatisticsData {
        AnonymousClass6() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public void draw(SpriteBatch spriteBatch, int i, int i2, int i3, int i4) {
            int i5 = 0;
            while (true) {
                int valuesSize = ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValuesSize();
                String str = uiwPYaNhJS.DVxAWqRC;
                if (i5 >= valuesSize) {
                    Graph_Vertical.this.drawStatisticsValue(spriteBatch, str + CFG.getShortNumber(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValue()) + " [" + CFG.getPercentage(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValue(), Graph_Vertical.this.iValuesTotal, 3) + "%]", Graph_Vertical.this.getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + i2 + i3, Graph_Vertical.this.getPosY() + ((((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) * (i + 1)) + i4);
                    return;
                } else {
                    Graph_Vertical.this.drawStatisticsValue(spriteBatch, str + CFG.getNumberWithSpaces(str + ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValue(i5)), Graph_Vertical.this.getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + (Graph_Vertical.this.getStatisticsWidth() * 2) + (Graph_Vertical.this.getStatisticsWidth() * Graph_Vertical.this.verticalInfo.getSortedID(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValueDataTypeID(i5))) + i3, Graph_Vertical.this.getPosY() + ((((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) * (i + 1)) + i4);
                    i5++;
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public String getStatsLP(int i) {
            return Game.getCiv(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getCivID()).getCivName();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public int getStatsLPCivFlagID(int i) {
            return ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getCivID();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public String getTotal() {
            return Graph_Vertical.this.sTotal + " [" + CFG.getShortNumber(Math.max(1, Graph_Vertical.this.iValuesTotal)) + "]";
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical$7, reason: invalid class name */
    class AnonymousClass7 implements DrawStatisticsData {
        AnonymousClass7() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public void draw(SpriteBatch spriteBatch, int i, int i2, int i3, int i4) {
            for (int i5 = 0; i5 < ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValuesSize(); i5++) {
                Graph_Vertical.this.drawStatisticsValue(spriteBatch, "" + CFG.getNumberWithSpaces("" + ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValue(i5)), Graph_Vertical.this.getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + (Graph_Vertical.this.getStatisticsWidth() * 2) + (Graph_Vertical.this.getStatisticsWidth() * Graph_Vertical.this.verticalInfo.getSortedID(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValueDataTypeID(i5))) + i3, Graph_Vertical.this.getPosY() + ((((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) * (i + 1)) + i4);
            }
            Graph_Vertical.this.drawStatisticsValue(spriteBatch, "" + CFG.getShortNumber(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValue()) + " [" + CFG.getPercentage(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValue(), Graph_Vertical.this.iValuesTotal, 3) + "%]", Graph_Vertical.this.getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + i2 + i3, Graph_Vertical.this.getPosY() + ((((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) * (i + 1)) + i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public String getStatsLP(int i) {
            return Game.getCiv(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getCivID()).getCivName();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public int getStatsLPCivFlagID(int i) {
            return ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getCivID();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public String getTotal() {
            return Graph_Vertical.this.sTotal + " [" + CFG.getShortNumber(Math.max(1, Graph_Vertical.this.iValuesTotal)) + "]";
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical$8, reason: invalid class name */
    class AnonymousClass8 implements DrawStatisticsData {
        AnonymousClass8() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public void draw(SpriteBatch spriteBatch, int i, int i2, int i3, int i4) {
            for (int i5 = 0; i5 < ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValuesSize(); i5++) {
                Graph_Vertical.this.drawStatisticsValue(spriteBatch, "" + CFG.getNumberWithSpaces("" + ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValue(i5)), Graph_Vertical.this.getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + (Graph_Vertical.this.getStatisticsWidth() * 2) + (Graph_Vertical.this.getStatisticsWidth() * Graph_Vertical.this.verticalInfo.getSortedID(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValueDataTypeID(i5))) + i3, Graph_Vertical.this.getPosY() + ((((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) * (i + 1)) + i4);
            }
            Graph_Vertical.this.drawStatisticsValue(spriteBatch, "" + CFG.getShortNumber(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValue()) + " [" + CFG.getPercentage(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValue(), Graph_Vertical.this.iValuesTotal, 3) + "%]", Graph_Vertical.this.getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + i2 + i3, Graph_Vertical.this.getPosY() + ((((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) * (i + 1)) + i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public String getStatsLP(int i) {
            return Game.getCiv(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getCivID()).getCivName();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public int getStatsLPCivFlagID(int i) {
            return ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getCivID();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public String getTotal() {
            return Graph_Vertical.this.sTotal + " [" + CFG.getShortNumber(Math.max(1, Graph_Vertical.this.iValuesTotal)) + "]";
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical$9, reason: invalid class name */
    class AnonymousClass9 implements DrawStatisticsData {
        AnonymousClass9() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public void draw(SpriteBatch spriteBatch, int i, int i2, int i3, int i4) {
            for (int i5 = 0; i5 < ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValuesSize(); i5++) {
                Graph_Vertical.this.drawStatisticsValue(spriteBatch, "" + ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValue(i5), Graph_Vertical.this.getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + (Graph_Vertical.this.getStatisticsWidth() * 2) + (Graph_Vertical.this.getStatisticsWidth() * Graph_Vertical.this.verticalInfo.getSortedID(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValueDataTypeID(i5))) + i3, Graph_Vertical.this.getPosY() + ((((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) * (i + 1)) + i4);
            }
            Graph_Vertical.this.drawStatisticsValue(spriteBatch, "" + ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValue() + " [" + CFG.getPercentage(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getValue(), Graph_Vertical.this.iValuesTotal, 3) + "%]", Graph_Vertical.this.getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + i2 + i3, Graph_Vertical.this.getPosY() + ((((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) * (i + 1)) + i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public String getStatsLP(int i) {
            return Game.getCiv(((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getCivID()).getCivName();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public int getStatsLPCivFlagID(int i) {
            return ((Graph_Vertical_Data) Graph_Vertical.this.lValues.get(i)).getCivID();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical.DrawStatisticsData
        public String getTotal() {
            return Graph_Vertical.this.sTotal + " [" + Graph_Vertical.this.iValuesTotal + "]";
        }
    }

    interface DrawStatisticsData {
        void draw(SpriteBatch spriteBatch, int i, int i2, int i3, int i4);

        String getStatsLP(int i);

        int getStatsLPCivFlagID(int i);

        String getTotal();
    }

    public Graph_Vertical(Graph_Vertical_Data_Type graph_Vertical_Data_Type, String str, String str2, int i, int i2, int i3, int i4, boolean z) {
        this.iValuesSize = 0;
        this.iDataWidth = 0;
        this.drawShort = false;
        this.sTotal = "";
        this.GRAPH_DATA_TYPE = graph_Vertical_Data_Type;
        this.sTotal = Game.lang.get("Total");
        if (this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.NUM_OF_PROVINCES_BY_CONTINENT) {
            for (int i5 = 1; i5 < Game.getCivsSize(); i5++) {
                if (Game.getCiv(i5).getNumOfProvinces() > 0) {
                    this.lValues.add(new Graph_Vertical_Data(i5));
                }
            }
            this.iValuesSize = this.lValues.size();
            this.drawStatisticsData = new AnonymousClass1();
        } else if (this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.CIVS_LIST_PROVINCES) {
            for (int size = graphCivs.size() - 1; size >= 0; size--) {
                if (graphCivs.get(size).intValue() > 0 && graphCivs.get(size).intValue() < Game.getCivsSize() && Game.getCiv(graphCivs.get(size).intValue()).getNumOfProvinces() > 0) {
                    this.lValues.add(new Graph_Vertical_Data(graphCivs.get(size).intValue()));
                }
            }
            this.iValuesSize = this.lValues.size();
            this.drawShort = true;
            this.drawStatisticsData = new AnonymousClass2();
        } else if (this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.CIVS_LIST_POPULATION) {
            for (int size2 = graphCivs.size() - 1; size2 >= 0; size2--) {
                if (graphCivs.get(size2).intValue() > 0 && graphCivs.get(size2).intValue() < Game.getCivsSize() && Game.getCiv(graphCivs.get(size2).intValue()).getNumOfProvinces() > 0) {
                    this.lValues.add(new Graph_Vertical_Data(graphCivs.get(size2).intValue()));
                }
            }
            this.iValuesSize = this.lValues.size();
            this.drawShort = true;
            this.drawStatisticsData = new AnonymousClass3();
        } else if (this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.CIVS_POPULATION) {
            for (int i6 = 1; i6 < Game.getCivsSize(); i6++) {
                if (Game.getCiv(i6).getNumOfProvinces() > 0) {
                    this.lValues.add(new Graph_Vertical_Data(i6));
                }
            }
            this.iValuesSize = this.lValues.size();
            this.drawShort = true;
            this.drawStatisticsData = new AnonymousClass4();
        } else if (this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.GOVERNMENTS_CIVS) {
            for (int i7 = 1; i7 < Game.getCivsSize(); i7++) {
                if (Game.getCiv(i7).getNumOfProvinces() > 0 && Game.getCiv(i7).getIdeologyID() == InGame_Civ_Government.iGovID) {
                    this.lValues.add(new Graph_Vertical_Data(i7));
                }
            }
            this.iValuesSize = this.lValues.size();
            this.drawShort = true;
            this.drawStatisticsData = new AnonymousClass5();
        } else if (this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.GOVERNMENTS_CIVS_RIGHT) {
            for (int i8 = 1; i8 < Game.getCivsSize(); i8++) {
                if (Game.getCiv(i8).getNumOfProvinces() > 0 && Game.getCiv(i8).getIdeologyID() == InGame_RightGovernment.iGovID) {
                    this.lValues.add(new Graph_Vertical_Data(i8));
                }
            }
            this.iValuesSize = this.lValues.size();
            this.drawShort = true;
            this.drawStatisticsData = new AnonymousClass6();
        } else if (this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.RELIGION_CIVS) {
            for (int i9 = 1; i9 < Game.getCivsSize(); i9++) {
                for (int i10 = 0; i10 < Game.getCiv(i9).getNumOfProvinces(); i10++) {
                    if (Game.getProvince(Game.getCiv(i9).getProvinceID(i10)).getReligion() == InGame_Civ_Religion.iReligionID) {
                        this.lValues.add(new Graph_Vertical_Data(i9));
                        break;
                    }
                }
            }
            this.iValuesSize = this.lValues.size();
            this.drawShort = true;
            this.drawStatisticsData = new AnonymousClass7();
        } else if (this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.RELIGION_CIVS_RIGHT) {
            for (int i11 = 1; i11 < Game.getCivsSize(); i11++) {
                for (int i12 = 0; i12 < Game.getCiv(i11).getNumOfProvinces(); i12++) {
                    if (Game.getProvince(Game.getCiv(i11).getProvinceID(i12)).getReligion() == InGame_RightReligion.iReligionID) {
                        this.lValues.add(new Graph_Vertical_Data(i11));
                        break;
                    }
                }
            }
            this.iValuesSize = this.lValues.size();
            this.drawShort = true;
            this.drawStatisticsData = new AnonymousClass8();
        } else if (this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.CIVS_INFRASTRUCTURE) {
            for (int i13 = 1; i13 < Game.getCivsSize(); i13++) {
                if (Game.getCiv(i13).getNumOfProvinces() > 0) {
                    this.lValues.add(new Graph_Vertical_Data(i13));
                }
            }
            this.iValuesSize = this.lValues.size();
            this.drawShort = true;
            this.drawStatisticsData = new AnonymousClass9();
        } else if (this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.CIVS_CONSTRUCTED_BUILDINGS) {
            for (int i14 = 1; i14 < Game.getCivsSize(); i14++) {
                if (Game.getCiv(i14).getNumOfProvinces() > 0) {
                    this.lValues.add(new Graph_Vertical_Data(i14));
                }
            }
            this.iValuesSize = this.lValues.size();
            this.drawShort = true;
            this.drawStatisticsData = new AnonymousClass10();
        } else if (this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.CIVS_ECONOMY) {
            for (int i15 = 1; i15 < Game.getCivsSize(); i15++) {
                if (Game.getCiv(i15).getNumOfProvinces() > 0) {
                    this.lValues.add(new Graph_Vertical_Data(i15));
                }
            }
            this.iValuesSize = this.lValues.size();
            this.drawShort = true;
            this.drawStatisticsData = new AnonymousClass11();
        } else if (this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.CIVS_UNLOCKED_TECHS) {
            for (int i16 = 1; i16 < Game.getCivsSize(); i16++) {
                if (Game.getCiv(i16).getNumOfProvinces() > 0) {
                    this.lValues.add(new Graph_Vertical_Data(i16));
                }
            }
            this.iValuesSize = this.lValues.size();
            this.drawShort = true;
            this.drawStatisticsData = new AnonymousClass12();
        } else if (this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.CIVS_PRESTIGE) {
            for (int i17 = 1; i17 < Game.getCivsSize(); i17++) {
                if (Game.getCiv(i17).getNumOfProvinces() > 0) {
                    this.lValues.add(new Graph_Vertical_Data(i17));
                }
            }
            this.iValuesSize = this.lValues.size();
            this.drawShort = true;
            this.drawStatisticsData = new AnonymousClass13();
        } else if (this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.RESOURCE_PRODUCTION) {
            for (int i18 = 1; i18 < Game.getCivsSize(); i18++) {
                if (Game.getCiv(i18).getNumOfProvinces() > 0) {
                    this.lValues.add(new Graph_Vertical_Data(i18));
                }
            }
            this.iValuesSize = this.lValues.size();
            this.drawShort = true;
            this.drawStatisticsData = new AnonymousClass14();
        } else if (this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.CIVS_REGIMENTS_LIMIT) {
            for (int i19 = 1; i19 < Game.getCivsSize(); i19++) {
                if (Game.getCiv(i19).getNumOfProvinces() > 0) {
                    this.lValues.add(new Graph_Vertical_Data(i19));
                }
            }
            this.iValuesSize = this.lValues.size();
            this.drawShort = true;
            this.drawStatisticsData = new AnonymousClass15();
        }
        this.iDataWidth = CFG.CIV_FLAG_WIDTH;
        setPosX(i);
        setPosY(i2);
        setWidth(i3);
        setHeight(i4);
        setVisible(z);
        this.sTextX = str;
        this.sTextY = str2;
        Renderer.fontMain.get(0).getData().setScale(0.7f);
        Renderer.glyphLayout.setText(Renderer.fontMain.get(0), str2);
        this.iWidthTextY = (int) Renderer.glyphLayout.width;
        Renderer.fontMain.get(0).getData().setScale(1.0f);
        buildData();
        buildValuesHeights();
        this.typeOfElement = MenuElement_Type.GRAPH_VERTICAL;
    }

    private final void drawStatisticsBegan(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        SpriteBatch spriteBatch2 = spriteBatch;
        float f = 0.7f;
        Renderer.fontMain.get(0).getData().setScale(0.7f);
        drawStatisticsBoxTitle(spriteBatch, this.sTextX, getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + i, getPosY() + i2, getStatisticsWidth() * 2);
        int statisticsWidth = (getStatisticsWidth() * 2) + 0;
        for (int i3 = 0; i3 < this.verticalInfo.getTextSize(); i3++) {
            drawStatisticsBoxTitle(spriteBatch, this.verticalInfo.getText(i3), getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + statisticsWidth + i, getPosY() + i2, getStatisticsWidth());
            statisticsWidth += getStatisticsWidth();
        }
        drawStatisticsBoxTitle(spriteBatch, this.drawStatisticsData.getTotal(), getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + statisticsWidth + i, getPosY() + i2, (getWidth() - statisticsWidth) - (((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)));
        Renderer.clipView_Start(spriteBatch2, getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + 1 + i, (((CFG.GAME_HEIGHT - getPosY()) - (((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2))) - 2) - i2, (getWidth() - (((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2))) - 1, (-getHeight()) + ((((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) * 2) + 1);
        drawStatisticsEnd(spriteBatch, i, this.iButtonsPosY + i2, z, z2, statisticsWidth);
        Renderer.clipView_End(spriteBatch);
        spriteBatch2.setColor(Graph.GRAPH_LINES_COLOR);
        int i4 = -1;
        while (i4 < this.verticalInfo.getTextSize() - 1) {
            i4++;
            ImageManager.getImage(Images.line_32_vertical).draw2(spriteBatch, ((((getPosX() + (((int) (CFG.TEXT_HEIGHT * f)) + (CFG.PADDING * 2))) + (getStatisticsWidth() * 2)) + (getStatisticsWidth() * i4)) - 1) + i, getPosY() + ((int) (CFG.TEXT_HEIGHT * f)) + (CFG.PADDING * 2) + i2, 1, getHeight() - ((((int) (CFG.TEXT_HEIGHT * f)) + (CFG.PADDING * 2)) * 2), false, true);
            spriteBatch2 = spriteBatch2;
            f = f;
        }
        float f2 = f;
        Images.pix.draw(spriteBatch, ((((getPosX() + (((int) (CFG.TEXT_HEIGHT * f2)) + (CFG.PADDING * 2))) + (getStatisticsWidth() * 2)) + (getStatisticsWidth() * ((this.verticalInfo.getTextSize() - 1) + 1))) - 1) + i, getPosY() + ((int) (CFG.TEXT_HEIGHT * f2)) + (CFG.PADDING * 2) + i2, 1, getHeight() - ((((int) (CFG.TEXT_HEIGHT * f2)) + (CFG.PADDING * 2)) * 2), false, true);
        spriteBatch2.setColor(Color.WHITE);
    }

    private final void drawStatisticsBoxTitle(SpriteBatch spriteBatch, String str, int i, int i2, int i3) {
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG.r, Colors.COLOR_GRADIENT_BG.g, Colors.COLOR_GRADIENT_BG.b, 0.7f));
        Images.pix.draw(spriteBatch, i, i2, i3, ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2));
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.6f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i, ((((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) + i2) - ((((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) / 2), i3, (((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) / 2, false, true);
        spriteBatch.setColor(Graph.GRAPH_BORDERS_COLOR);
        Images.pix.draw(spriteBatch, i, ((int) (CFG.TEXT_HEIGHT * 0.7f)) + i2 + (CFG.PADDING * 2), i3, 1);
        spriteBatch.setColor(Graph.GRAPH_LINES_COLOR);
        ImageManager.getImage(Images.line_32_vertical).draw2(spriteBatch, (i - 1) + i3, i2, 1, ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2));
        Renderer.clipView_Start(spriteBatch, i, CFG.GAME_HEIGHT - i2, i3 - CFG.PADDING, (-((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2));
        Renderer.drawText(spriteBatch, str, CFG.PADDING + i, CFG.PADDING + i2, Graph.TEXT_COLOR);
        Renderer.clipView_End(spriteBatch);
    }

    private final void drawStatisticsEnd(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2, int i3) {
        float f = (CFG.TEXT_HEIGHT * 0.7f) / CFG.CIV_FLAG_HEIGHT;
        for (int i4 = 0; i4 < this.iValuesSize; i4++) {
            if (this.lValues.get(i4).getInView()) {
                if (i4 % 2 == 0) {
                    drawStatisticsRowBG(spriteBatch, getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + i, getPosY() + ((((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) * (i4 + 1)) + i2, (getWidth() - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2));
                }
                if (getIsHovered() && i4 == this.iHoveredID - 1) {
                    drawStatisticsRowHoverBG(spriteBatch, getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + i, getPosY() + ((((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) * (i4 + 1)) + i2, (getWidth() - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2));
                }
                int i5 = i4 + 1;
                drawStatisticsRowLine(spriteBatch, getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + i, getPosY() + ((((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) * i5) + i2, (getWidth() - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2));
                spriteBatch.setColor(Color.WHITE);
                Game.getCiv(this.drawStatisticsData.getStatsLPCivFlagID(i4)).getFlag().draw(spriteBatch, getPosX() + ((int) ((CFG.TEXT_HEIGHT * 0.7f) + CFG.CIV_COLOR_WIDTH)) + (CFG.PADDING * 2) + i, getPosY() + ((((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) * i5) + CFG.PADDING + i2, (int) Math.ceil(CFG.CIV_FLAG_WIDTH * f), (int) Math.ceil(CFG.CIV_FLAG_HEIGHT * f));
                drawStatisticsValue2(spriteBatch, this.drawStatisticsData.getStatsLP(i4), getPosX() + ((int) ((CFG.CIV_FLAG_WIDTH * f) + CFG.CIV_COLOR_WIDTH)) + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + i, getPosY() + ((((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) * i5) + i2, (getStatisticsWidth() * 2) - ((int) ((CFG.CIV_FLAG_WIDTH * f) + CFG.CIV_COLOR_WIDTH)));
                this.drawStatisticsData.draw(spriteBatch, i4, i3, i, i2);
            }
        }
        Renderer.fontMain.get(0).getData().setScale(1.0f);
    }

    private final void drawStatisticsRowBG(SpriteBatch spriteBatch, int i, int i2, int i3) {
        spriteBatch.setColor(new Color(0.05f, 0.05f, 0.05f, 0.7f));
        Images.pix.draw(spriteBatch, i, i2, i3 - 1, ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2));
    }

    private final void drawStatisticsRowHoverBG(SpriteBatch spriteBatch, int i, int i2, int i3) {
        spriteBatch.setColor(new Color(Graph.GRAPH_LINES_DESC.r, Graph.GRAPH_LINES_DESC.g, Graph.GRAPH_LINES_DESC.b, 0.1f));
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, i, i2, i3 - 1, ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2));
    }

    private final void drawStatisticsRowLine(SpriteBatch spriteBatch, int i, int i2, int i3) {
        spriteBatch.setColor(Graph.GRAPH_LINES_COLOR);
        Images.line_32_off1.draw(spriteBatch, i, i2 + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2), i3, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void drawStatisticsValue(SpriteBatch spriteBatch, String str, int i, int i2) {
        Renderer.drawText(spriteBatch, str, i + CFG.PADDING, i2 + CFG.PADDING, new Color(1.0f, 1.0f, 1.0f, 0.45f));
    }

    private final void drawStatisticsValue2(SpriteBatch spriteBatch, String str, int i, int i2, int i3) {
        Renderer.clipView_Start(spriteBatch, i, CFG.GAME_HEIGHT - i2, i3 - CFG.PADDING, -getHeight());
        Renderer.drawText(spriteBatch, str, i + CFG.CIV_COLOR_WIDTH, i2 + CFG.PADDING, Graph.DATA_COLOR);
        Renderer.clipView_End(spriteBatch);
    }

    private final void drawStatisticsValueWithFlag(SpriteBatch spriteBatch, String str, int i, int i2, int i3) {
        float f = (CFG.TEXT_HEIGHT * 0.7f) / CFG.CIV_FLAG_HEIGHT;
        spriteBatch.setColor(Color.WHITE);
        Game.getCiv(i).getFlag().draw(spriteBatch, i2 + CFG.PADDING, i3 + CFG.PADDING, (int) Math.ceil(CFG.CIV_FLAG_WIDTH * f), (int) Math.ceil(CFG.CIV_FLAG_HEIGHT * f));
        Renderer.drawText(spriteBatch, str, i2 + (CFG.PADDING * 2) + ((int) (CFG.CIV_FLAG_WIDTH * f)), i3 + CFG.PADDING, new Color(1.0f, 1.0f, 1.0f, 0.45f));
    }

    private final int getButtonsPosX(int i) {
        return ((getWidth() - (this.iDataWidth * i)) - CFG.PADDING) - ((CFG.PADDING * 2) * i);
    }

    private final int getButtonsPosY(int i) {
        return ((int) ((CFG.TEXT_HEIGHT * 0.7f) + (CFG.PADDING * 2))) * i;
    }

    private final int getButtonsWidth() {
        return (this.iDataWidth * this.iValuesSize) + (CFG.PADDING * 2 * (this.iValuesSize - 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getStatisticsWidth() {
        return (getWidth() - (((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2))) / (this.verticalInfo.getTextSize() + 3);
    }

    private final void roundAverage() {
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

    private final void setHoveredID(int i) {
        if (this.iHoveredID != i) {
            this.iHoveredID = i;
            buildElementHover();
        }
    }

    private final void updateMoveable() {
        if (this.statisticsMode) {
            if (getButtonsPosY(this.iValuesSize) > getHeight() - (((int) ((CFG.TEXT_HEIGHT * 0.7f) + (CFG.PADDING * 2))) * 2)) {
                this.moveable = true;
                return;
            } else {
                this.moveable = false;
                this.iButtonsPosY = 0;
                return;
            }
        }
        if (getButtonsWidth() > getWidth() - (((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2))) {
            this.moveable = true;
        } else {
            this.moveable = false;
            this.iButtonsPosX = 0;
        }
    }

    public final void buildData() {
        if (this.lValues.size() == 0) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.NUM_OF_PROVINCES_BY_CONTINENT) {
            for (int i = 0; i < this.iValuesSize; i++) {
                this.lValues.get(i).buildContinentData();
            }
            for (int i2 = 1; i2 < Game.continents.iContinentsSize; i2++) {
                arrayList.add(Game.continents.lContinents.get(i2).sName);
                arrayList2.add(new Color(Game.continents.lContinents.get(i2).iR / 255.0f, Game.continents.lContinents.get(i2).iG / 255.0f, Game.continents.lContinents.get(i2).iB / 255.0f, 1.0f));
            }
        } else if (this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.CIVS_POPULATION) {
            for (int i3 = 0; i3 < this.iValuesSize; i3++) {
                this.lValues.get(i3).buildContinentData_Population();
            }
            for (int i4 = 1; i4 < Game.continents.iContinentsSize; i4++) {
                arrayList.add(Game.continents.lContinents.get(i4).sName);
                arrayList2.add(new Color(Game.continents.lContinents.get(i4).iR / 255.0f, Game.continents.lContinents.get(i4).iG / 255.0f, Game.continents.lContinents.get(i4).iB / 255.0f, 1.0f));
            }
        } else if (this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.CIVS_LIST_PROVINCES) {
            for (int i5 = 0; i5 < this.iValuesSize; i5++) {
                this.lValues.get(i5).buildContinentData_CivsProvinces();
            }
            arrayList.add(Game.lang.get("Provinces"));
            arrayList2.add(Colors.HOVER_GOLD);
        } else if (this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.CIVS_LIST_POPULATION) {
            for (int i6 = 0; i6 < this.iValuesSize; i6++) {
                this.lValues.get(i6).buildContinentData_CivsPopulation();
            }
            arrayList.add(Game.lang.get("Population"));
            arrayList2.add(Colors.COLOR_POPULATION);
        } else if (this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.GOVERNMENTS_CIVS) {
            for (int i7 = 0; i7 < this.iValuesSize; i7++) {
                this.lValues.get(i7).buildContinentData_GovernmentCivs();
            }
            arrayList.add(Game.lang.get("Population"));
            arrayList2.add(new Color(Game.ideologiesManager.getIdeology(InGame_Civ_Government.iGovID).Color[0], Game.ideologiesManager.getIdeology(InGame_Civ_Government.iGovID).Color[1], Game.ideologiesManager.getIdeology(InGame_Civ_Government.iGovID).Color[2], 1.0f));
        } else if (this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.GOVERNMENTS_CIVS_RIGHT) {
            for (int i8 = 0; i8 < this.iValuesSize; i8++) {
                this.lValues.get(i8).buildContinentData_GovernmentCivs();
            }
            arrayList.add(Game.lang.get("Population"));
            arrayList2.add(new Color(Game.ideologiesManager.getIdeology(InGame_RightGovernment.iGovID).Color[0], Game.ideologiesManager.getIdeology(InGame_RightGovernment.iGovID).Color[1], Game.ideologiesManager.getIdeology(InGame_RightGovernment.iGovID).Color[2], 1.0f));
        } else if (this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.RELIGION_CIVS) {
            for (int i9 = 0; i9 < this.iValuesSize; i9++) {
                this.lValues.get(i9).buildContinentData_ReligionCivs();
            }
            arrayList.add(Game.lang.get("Population"));
            arrayList2.add(new Color(Game.religionManager.getReligion(InGame_Civ_Religion.iReligionID).Color[0], Game.religionManager.getReligion(InGame_Civ_Religion.iReligionID).Color[1], Game.religionManager.getReligion(InGame_Civ_Religion.iReligionID).Color[2], 1.0f));
        } else if (this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.RELIGION_CIVS_RIGHT) {
            for (int i10 = 0; i10 < this.iValuesSize; i10++) {
                this.lValues.get(i10).buildContinentData_ReligionCivs_Right();
            }
            arrayList.add(Game.lang.get("Population"));
            arrayList2.add(new Color(Game.religionManager.getReligion(InGame_RightReligion.iReligionID).Color[0], Game.religionManager.getReligion(InGame_RightReligion.iReligionID).Color[1], Game.religionManager.getReligion(InGame_RightReligion.iReligionID).Color[2], 1.0f));
        } else if (this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.CIVS_CONSTRUCTED_BUILDINGS) {
            for (int i11 = 0; i11 < this.iValuesSize; i11++) {
                this.lValues.get(i11).buildContinentData_ConstructedBuildings();
            }
            for (int i12 = 1; i12 < Game.continents.iContinentsSize; i12++) {
                arrayList.add(Game.continents.lContinents.get(i12).sName);
                arrayList2.add(new Color(Game.continents.lContinents.get(i12).iR / 255.0f, Game.continents.lContinents.get(i12).iG / 255.0f, Game.continents.lContinents.get(i12).iB / 255.0f, 1.0f));
            }
        } else if (this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.CIVS_INFRASTRUCTURE) {
            for (int i13 = 0; i13 < this.iValuesSize; i13++) {
                this.lValues.get(i13).buildContinentData_Infrastructure();
            }
            for (int i14 = 1; i14 < Game.continents.iContinentsSize; i14++) {
                arrayList.add(Game.continents.lContinents.get(i14).sName);
                arrayList2.add(new Color(Game.continents.lContinents.get(i14).iR / 255.0f, Game.continents.lContinents.get(i14).iG / 255.0f, Game.continents.lContinents.get(i14).iB / 255.0f, 1.0f));
            }
        } else if (this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.CIVS_ECONOMY) {
            for (int i15 = 0; i15 < this.iValuesSize; i15++) {
                this.lValues.get(i15).buildContinentData_Economy();
            }
            for (int i16 = 1; i16 < Game.continents.iContinentsSize; i16++) {
                arrayList.add(Game.continents.lContinents.get(i16).sName);
                arrayList2.add(new Color(Game.continents.lContinents.get(i16).iR / 255.0f, Game.continents.lContinents.get(i16).iG / 255.0f, Game.continents.lContinents.get(i16).iB / 255.0f, 1.0f));
            }
        } else if (this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.CIVS_UNLOCKED_TECHS) {
            for (int i17 = 0; i17 < this.iValuesSize; i17++) {
                this.lValues.get(i17).buildContinentData_UnlockedTechnologies();
            }
            arrayList.add(Game.lang.get("UnlockedTechnologies"));
            arrayList2.add(Colors.HOVER_GOLD);
        } else if (this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.CIVS_PRESTIGE) {
            for (int i18 = 0; i18 < this.iValuesSize; i18++) {
                this.lValues.get(i18).buildContinentData_Prestige();
            }
            arrayList.add(Game.lang.get("Prestige"));
            arrayList2.add(Colors.TECH_BLUE2);
        } else if (this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.RESOURCE_PRODUCTION) {
            for (int i19 = 0; i19 < this.iValuesSize; i19++) {
                this.lValues.get(i19).buildContinentData_ResourceProduction();
            }
            arrayList.add(Game.lang.get("Production"));
            arrayList2.add(Colors.TECH_BLUE2);
        } else if (this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.CIVS_REGIMENTS_LIMIT) {
            for (int i20 = 0; i20 < this.iValuesSize; i20++) {
                this.lValues.get(i20).buildContinentData_RegimentsLimit();
            }
            arrayList.add(Game.lang.get(cIUGJCqyPXfp.qCMgffWpK));
            arrayList2.add(Colors.TECH_BLUE);
        }
        this.verticalInfo = new Graph_Vertical_Info(arrayList, arrayList2, getWidth() - (((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)), true);
        ArrayList arrayList3 = new ArrayList();
        for (int i21 = 0; i21 < this.iValuesSize; i21++) {
            arrayList3.add(this.lValues.get(i21));
        }
        this.lValues.clear();
        while (arrayList3.size() > 0) {
            int i22 = 0;
            for (int i23 = 1; i23 < arrayList3.size(); i23++) {
                if (((Graph_Vertical_Data) arrayList3.get(i23)).getValue() > ((Graph_Vertical_Data) arrayList3.get(i22)).getValue()) {
                    i22 = i23;
                }
            }
            this.lValues.add((Graph_Vertical_Data) arrayList3.get(i22));
            arrayList3.remove(i22);
        }
        try {
            int value = this.lValues.get(0).getValue();
            this.iMaxPoint = value;
            this.iMinPoint = value;
        } catch (IndexOutOfBoundsException unused) {
            this.iMinPoint = 0;
        }
        this.fAvaragePoint = 0.0f;
        long value2 = 0;
        int i24 = 0;
        for (int i25 = 0; i25 < this.iValuesSize; i25++) {
            if (this.iMaxPoint < this.lValues.get(i25).getValue()) {
                this.iMaxPoint = this.lValues.get(i25).getValue();
            }
            if (this.iMinPoint > this.lValues.get(i25).getValue()) {
                this.iMinPoint = this.lValues.get(i25).getValue();
            }
            if (this.lValues.get(i25).getValue() > 0) {
                i24++;
                value2 += (long) this.lValues.get(i25).getValue();
            }
        }
        this.fAvaragePoint = value2 / i24;
        this.iAvaragePosY = (int) (((getHeight() - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2)) - (((((getHeight() - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2)) * (this.fAvaragePoint * 100.0f)) / (this.iMaxPoint - this.iMinPoint)) / 100.0f));
        roundAverage();
        updateMoveable();
        updateInView();
        countValuesTotal();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        if (this.iHoveredID < 0 || this.statisticsMode) {
            this.menuElementHover = null;
            return;
        }
        if (this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.NUM_OF_PROVINCES_BY_CONTINENT) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getCiv(this.lValues.get(this.iHoveredID).getCivID()).getCivName()));
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(this.lValues.get(this.iHoveredID).getCivID(), CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Provinces") + ": ", "" + CFG.getNumberWithSpaces("" + Game.getCiv(this.lValues.get(this.iHoveredID).getCivID()).getNumOfProvinces()), Images.provinces, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
            return;
        }
        if (this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.CIVS_POPULATION) {
            ArrayList arrayList3 = new ArrayList();
            ArrayList arrayList4 = new ArrayList();
            arrayList4.add(new MenuElement_HoverElement_Type_TextTitle(Game.getCiv(this.lValues.get(this.iHoveredID).getCivID()).getCivName()));
            arrayList4.add(new MenuElement_HoverElement_Type_FlagTitle(this.lValues.get(this.iHoveredID).getCivID(), CFG.PADDING, 0));
            arrayList3.add(new MenuElement_HoverElement(arrayList4));
            arrayList4.clear();
            arrayList4.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", "" + CFG.getNumberWithSpaces("" + Game.getCiv(this.lValues.get(this.iHoveredID).getCivID()).getPopulationTotal()), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList3.add(new MenuElement_HoverElement(arrayList4));
            arrayList4.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList3);
            return;
        }
        if (this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.CIVS_LIST_PROVINCES) {
            ArrayList arrayList5 = new ArrayList();
            ArrayList arrayList6 = new ArrayList();
            arrayList6.add(new MenuElement_HoverElement_Type_TextTitle(Game.getCiv(this.lValues.get(this.iHoveredID).getCivID()).getCivName()));
            arrayList6.add(new MenuElement_HoverElement_Type_FlagTitle(this.lValues.get(this.iHoveredID).getCivID(), CFG.PADDING, 0));
            arrayList5.add(new MenuElement_HoverElement(arrayList6));
            arrayList6.clear();
            arrayList6.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Provinces") + ": ", "" + CFG.getNumberWithSpaces("" + Game.getCiv(this.lValues.get(this.iHoveredID).getCivID()).getNumOfProvinces()), Images.provinces, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList5.add(new MenuElement_HoverElement(arrayList6));
            arrayList6.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList5);
            return;
        }
        if (this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.CIVS_LIST_POPULATION) {
            ArrayList arrayList7 = new ArrayList();
            ArrayList arrayList8 = new ArrayList();
            arrayList8.add(new MenuElement_HoverElement_Type_TextTitle(Game.getCiv(this.lValues.get(this.iHoveredID).getCivID()).getCivName()));
            arrayList8.add(new MenuElement_HoverElement_Type_FlagTitle(this.lValues.get(this.iHoveredID).getCivID(), CFG.PADDING, 0));
            arrayList7.add(new MenuElement_HoverElement(arrayList8));
            arrayList8.clear();
            arrayList8.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", "" + CFG.getNumberWithSpaces("" + Game.getCiv(this.lValues.get(this.iHoveredID).getCivID()).getPopulationTotal()), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList7.add(new MenuElement_HoverElement(arrayList8));
            arrayList8.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList7);
            return;
        }
        if (this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.GOVERNMENTS_CIVS || this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.GOVERNMENTS_CIVS_RIGHT) {
            ArrayList arrayList9 = new ArrayList();
            ArrayList arrayList10 = new ArrayList();
            arrayList10.add(new MenuElement_HoverElement_Type_TextTitle(Game.getCiv(this.lValues.get(this.iHoveredID).getCivID()).getCivName()));
            arrayList10.add(new MenuElement_HoverElement_Type_FlagTitle(this.lValues.get(this.iHoveredID).getCivID(), CFG.PADDING, 0));
            arrayList9.add(new MenuElement_HoverElement(arrayList10));
            arrayList10.clear();
            arrayList10.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", "" + CFG.getNumberWithSpaces("" + Game.getCiv(this.lValues.get(this.iHoveredID).getCivID()).getPopulationTotal()), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList9.add(new MenuElement_HoverElement(arrayList10));
            arrayList10.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList9);
            return;
        }
        if (this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.RELIGION_CIVS || this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.RELIGION_CIVS_RIGHT) {
            ArrayList arrayList11 = new ArrayList();
            ArrayList arrayList12 = new ArrayList();
            arrayList12.add(new MenuElement_HoverElement_Type_TextTitle(Game.getCiv(this.lValues.get(this.iHoveredID).getCivID()).getCivName()));
            arrayList12.add(new MenuElement_HoverElement_Type_FlagTitle(this.lValues.get(this.iHoveredID).getCivID(), CFG.PADDING, 0));
            arrayList11.add(new MenuElement_HoverElement(arrayList12));
            arrayList12.clear();
            arrayList12.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", "" + CFG.getNumberWithSpaces("" + Game.getCiv(this.lValues.get(this.iHoveredID).getCivID()).getPopulationTotal()), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList11.add(new MenuElement_HoverElement(arrayList12));
            arrayList12.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList11);
            return;
        }
        if (this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.CIVS_CONSTRUCTED_BUILDINGS) {
            ArrayList arrayList13 = new ArrayList();
            ArrayList arrayList14 = new ArrayList();
            arrayList14.add(new MenuElement_HoverElement_Type_TextTitle(Game.getCiv(this.lValues.get(this.iHoveredID).getCivID()).getCivName()));
            arrayList14.add(new MenuElement_HoverElement_Type_FlagTitle(this.lValues.get(this.iHoveredID).getCivID(), CFG.PADDING, 0));
            arrayList13.add(new MenuElement_HoverElement(arrayList14));
            arrayList14.clear();
            arrayList14.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ConstructedBuildings") + ": ", "" + CFG.getNumberWithSpaces("" + Game.getCiv(this.lValues.get(this.iHoveredID).getCivID()).getConstructedBuildings()), Images.buildings, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList13.add(new MenuElement_HoverElement(arrayList14));
            arrayList14.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList13);
            return;
        }
        if (this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.CIVS_INFRASTRUCTURE) {
            ArrayList arrayList15 = new ArrayList();
            ArrayList arrayList16 = new ArrayList();
            arrayList16.add(new MenuElement_HoverElement_Type_TextTitle(Game.getCiv(this.lValues.get(this.iHoveredID).getCivID()).getCivName()));
            arrayList16.add(new MenuElement_HoverElement_Type_FlagTitle(this.lValues.get(this.iHoveredID).getCivID(), CFG.PADDING, 0));
            arrayList15.add(new MenuElement_HoverElement(arrayList16));
            arrayList16.clear();
            arrayList16.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Infrastructure") + ": ", "" + CFG.getNumberWithSpaces("" + Game.getCiv(this.lValues.get(this.iHoveredID).getCivID()).getInfrastructure()), Images.infrastructure, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList15.add(new MenuElement_HoverElement(arrayList16));
            arrayList16.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList15);
            return;
        }
        if (this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.CIVS_UNLOCKED_TECHS) {
            ArrayList arrayList17 = new ArrayList();
            ArrayList arrayList18 = new ArrayList();
            arrayList18.add(new MenuElement_HoverElement_Type_TextTitle(Game.getCiv(this.lValues.get(this.iHoveredID).getCivID()).getCivName()));
            arrayList18.add(new MenuElement_HoverElement_Type_FlagTitle(this.lValues.get(this.iHoveredID).getCivID(), CFG.PADDING, 0));
            arrayList17.add(new MenuElement_HoverElement(arrayList18));
            arrayList18.clear();
            arrayList18.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("UnlockedTechnologies") + ": ", "" + Game.getCiv(this.lValues.get(this.iHoveredID).getCivID()).getResearchedTechnologies(), Game_Calendar.IMG_TECHNOLOGY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList17.add(new MenuElement_HoverElement(arrayList18));
            arrayList18.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList17);
            return;
        }
        if (this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.CIVS_PRESTIGE) {
            ArrayList arrayList19 = new ArrayList();
            ArrayList arrayList20 = new ArrayList();
            arrayList20.add(new MenuElement_HoverElement_Type_TextTitle(Game.getCiv(this.lValues.get(this.iHoveredID).getCivID()).getCivName()));
            arrayList20.add(new MenuElement_HoverElement_Type_FlagTitle(this.lValues.get(this.iHoveredID).getCivID(), CFG.PADDING, 0));
            arrayList19.add(new MenuElement_HoverElement(arrayList20));
            arrayList20.clear();
            arrayList20.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Prestige") + ": ", "" + CFG.getNumberWithSpaces("" + ((int) Game.getCiv(this.lValues.get(this.iHoveredID).getCivID()).iCivRankScore)), CivilizationRanking.getCivilizationRanking_IMG_STAR_CIVID(this.lValues.get(this.iHoveredID).getCivID()), CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList19.add(new MenuElement_HoverElement(arrayList20));
            arrayList20.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList19);
            return;
        }
        if (this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.RESOURCE_PRODUCTION) {
            ArrayList arrayList21 = new ArrayList();
            ArrayList arrayList22 = new ArrayList();
            arrayList22.add(new MenuElement_HoverElement_Type_TextTitle(Game.getCiv(this.lValues.get(this.iHoveredID).getCivID()).getCivName()));
            arrayList22.add(new MenuElement_HoverElement_Type_FlagTitle(this.lValues.get(this.iHoveredID).getCivID(), CFG.PADDING, 0));
            arrayList21.add(new MenuElement_HoverElement(arrayList22));
            arrayList22.clear();
            arrayList22.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Production") + ": ", "" + CFG.getNumberWithSpaces("" + ((int) ResourcesManager.getProducedGoods_ResourceCiv(this.lValues.get(this.iHoveredID).getCivID(), InGame_Goods_LargestProducers.RESOURCE_ID))), Images.goods, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList21.add(new MenuElement_HoverElement(arrayList22));
            arrayList22.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList21);
            return;
        }
        if (this.GRAPH_DATA_TYPE == Graph_Vertical_Data_Type.CIVS_REGIMENTS_LIMIT) {
            ArrayList arrayList23 = new ArrayList();
            ArrayList arrayList24 = new ArrayList();
            arrayList24.add(new MenuElement_HoverElement_Type_TextTitle(Game.getCiv(this.lValues.get(this.iHoveredID).getCivID()).getCivName()));
            arrayList24.add(new MenuElement_HoverElement_Type_FlagTitle(this.lValues.get(this.iHoveredID).getCivID(), CFG.PADDING, 0));
            arrayList23.add(new MenuElement_HoverElement(arrayList24));
            arrayList24.clear();
            arrayList24.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("RegimentsLimit") + ": ", "" + CFG.getNumberWithSpaces("" + Game.getCiv(this.lValues.get(this.iHoveredID).getCivID()).iRegimentsLimit), Images.regimentsLimit, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList23.add(new MenuElement_HoverElement(arrayList24));
            arrayList24.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList23);
            return;
        }
        if (this.GRAPH_DATA_TYPE != Graph_Vertical_Data_Type.CIVS_ECONOMY) {
            this.menuElementHover = null;
            return;
        }
        ArrayList arrayList25 = new ArrayList();
        ArrayList arrayList26 = new ArrayList();
        arrayList26.add(new MenuElement_HoverElement_Type_TextTitle(Game.getCiv(this.lValues.get(this.iHoveredID).getCivID()).getCivName()));
        arrayList26.add(new MenuElement_HoverElement_Type_FlagTitle(this.lValues.get(this.iHoveredID).getCivID(), CFG.PADDING, 0));
        arrayList25.add(new MenuElement_HoverElement(arrayList26));
        arrayList26.clear();
        arrayList26.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Economy") + ": ", "" + CFG.getNumberWithSpaces("" + ((int) Game.getCiv(this.lValues.get(this.iHoveredID).getCivID()).getEconomyTotal())), Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList25.add(new MenuElement_HoverElement(arrayList26));
        arrayList26.clear();
        this.menuElementHover = new MenuElement_Hover(arrayList25);
    }

    public final void buildValuesHeights() {
        for (int i = 0; i < this.iValuesSize; i++) {
            this.lValues.get(i).buildHeights(((getHeight() - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2)) - (CFG.CIV_FLAG_HEIGHT + (CFG.PADDING * 2)), this.iMaxPoint);
        }
    }

    public final void countValuesTotal() {
        this.iValuesTotal = 0;
        for (int i = 0; i < this.iValuesSize; i++) {
            this.iValuesTotal += this.lValues.get(i).getValue();
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        float f;
        float f2;
        int i3;
        float f3;
        int i4;
        if (this.scrollModeY) {
            if (this.statisticsMode) {
                if (Math.abs(this.fScrollNewMenuPosY) > 1.0f) {
                    setCurrent(this.iButtonsPosY + ((int) this.fScrollNewMenuPosY));
                    this.fScrollNewMenuPosY *= 0.97f;
                } else {
                    this.scrollModeY = false;
                }
            } else if (Math.abs(this.fScrollNewMenuPosY) > 1.0f) {
                setCurrent(this.iButtonsPosX + ((int) this.fScrollNewMenuPosY));
                this.fScrollNewMenuPosY *= 0.97f;
            } else {
                this.scrollModeY = false;
            }
        }
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.9f));
        ImageManager.getImage(Images.graphBG).draw2(spriteBatch, getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + i, getPosY() + i2, (getWidth() - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2), (getHeight() - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2));
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT.r, Colors.COLOR_GRADIENT.g, Colors.COLOR_GRADIENT.b, 0.3f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + i, getPosY() + i2, (getWidth() - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2), (getHeight() - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2), false, true);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT.r, Colors.COLOR_GRADIENT.g, Colors.COLOR_GRADIENT.b, 0.3f));
        Images.gradientXY.draw(spriteBatch, getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + i, getPosY() + i2, (getWidth() - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2), (getHeight() - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2), false, true);
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.065f));
        ImageManager.getImage(Images.noise).draw2(spriteBatch, getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + i, getPosY() + 1 + i2, (getWidth() - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2), (getHeight() - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2));
        Renderer.fontMain.get(0).getData().setScale(0.7f);
        Renderer.drawTextRotated(spriteBatch, this.sTextY, getPosX() + CFG.PADDING + i, getPosY() + (getHeight() / 2) + (this.iWidthTextY / 2) + i2, Graph.TEXT_COLOR, 90.0f);
        this.verticalInfo.draw(spriteBatch, getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + i, (((getPosY() + getHeight()) - CFG.PADDING) - ((int) (CFG.TEXT_HEIGHT * 0.7f))) + i2, getWidth() - (((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)));
        Renderer.fontMain.get(0).getData().setScale(1.0f);
        if (this.statisticsMode) {
            drawStatisticsBegan(spriteBatch, i + 1, i2, z, z2);
            f = 0.7f;
        } else {
            Images.pix.draw(spriteBatch, getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + 1 + i, getPosY() + ((((getHeight() - (((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2))) - CFG.CIV_FLAG_HEIGHT) - (CFG.PADDING * 2)) / 2) + CFG.CIV_FLAG_HEIGHT + (CFG.PADDING * 2) + 1 + i2, CFG.PADDING - 1);
            spriteBatch.setColor(Graph.GRAPH_LINES_DESC);
            ImageManager.getImage(Images.line_33).draw2(spriteBatch, getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + i, getPosY() + CFG.CIV_FLAG_HEIGHT + (CFG.PADDING * 2) + 1 + i2, (getWidth() - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2));
            f = 0.7f;
            float f4 = 1.0f;
            int i5 = 0;
            ImageManager.getImage(Images.line_33).draw2(spriteBatch, getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + i, getPosY() + this.iAvaragePosY + i2, (getWidth() - ((int) (CFG.TEXT_HEIGHT * 0.7f))) - (CFG.PADDING * 2), 1, 0, -this.iButtonsPosX);
            Renderer.clipView_Start(spriteBatch, getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + 1 + i, (CFG.GAME_HEIGHT - getPosY()) - i2, (getWidth() - (((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2))) - 1, -getHeight());
            if (getIsHovered() && this.iHoveredID >= 0) {
                spriteBatch.setColor(Graph.GRAPH_LINES_DESC);
                Image image = ImageManager.getImage(Images.gradientVertical);
                int posX = ((getPosX() + getWidth()) - 1) - (CFG.PADDING * (this.iHoveredID + 1));
                int i6 = CFG.PADDING;
                int i7 = this.iHoveredID;
                image.draw(spriteBatch, ((posX - (i6 * i7)) - (this.iDataWidth * (i7 + 1))) + this.iButtonsPosX + i, getPosY() + i2, this.iDataWidth + 2, getHeight() - (((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)), false, true);
                spriteBatch.setColor(new Color(Graph.GRAPH_LINES_DESC.r, Graph.GRAPH_LINES_DESC.g, Graph.GRAPH_LINES_DESC.b, 0.025f));
                Image image2 = ImageManager.getImage(Images.gradientHorizontal);
                int posX2 = ((getPosX() + getWidth()) - 1) - (CFG.PADDING * (this.iHoveredID + 1));
                int i8 = CFG.PADDING;
                int i9 = this.iHoveredID;
                image2.draw(spriteBatch, ((posX2 - (i8 * i9)) - (this.iDataWidth * (i9 + 1))) + this.iButtonsPosX + i, getPosY() + i2, (this.iDataWidth + 2) / 4, getHeight() - (((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)), false, false);
                Image image3 = ImageManager.getImage(Images.gradientHorizontal);
                int posX3 = getPosX() + getWidth();
                int i10 = this.iDataWidth;
                int i11 = (((posX3 + (i10 + 2)) - ((i10 + 2) / 4)) - 1) - (CFG.PADDING * (this.iHoveredID + 1));
                int i12 = CFG.PADDING;
                int i13 = this.iHoveredID;
                image3.draw(spriteBatch, ((i11 - (i12 * i13)) - (this.iDataWidth * (i13 + 1))) + this.iButtonsPosX + i, getPosY() + i2, (this.iDataWidth + 2) / 4, getHeight() - (((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)), true, false);
                spriteBatch.setColor(Color.WHITE);
            }
            if (this.drawShort) {
                int i14 = 0;
                while (i14 < this.iValuesSize) {
                    if (this.lValues.get(i14).getInView()) {
                        int i15 = i14 + 1;
                        this.lValues.get(i14).drawData(spriteBatch, ((((getPosX() + getWidth()) - (CFG.PADDING * i15)) - (CFG.PADDING * i14)) - (this.iDataWidth * i15)) + this.iButtonsPosX + i, getPosY() + i2, this.iDataWidth, getHeight() - (((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)), this.verticalInfo.getColors(), this.verticalInfo.getSorted());
                        this.lValues.get(i14).drawDataTextValue_Short(spriteBatch, ((((getPosX() + getWidth()) - (CFG.PADDING * i15)) - (CFG.PADDING * i14)) - (this.iDataWidth * i15)) + this.iButtonsPosX + i, getPosY() + i2, this.iDataWidth, getHeight() - (((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)));
                    }
                    i14++;
                    f4 = f4;
                    i5 = i5;
                }
                i4 = i5;
                f3 = f4;
            } else {
                int i16 = 0;
                float f5 = 1.0f;
                if (this.splitBy100) {
                    for (int i17 = 0; i17 < this.iValuesSize; i17++) {
                        if (this.lValues.get(i17).getInView()) {
                            int i18 = i17 + 1;
                            this.lValues.get(i17).drawData(spriteBatch, ((((getPosX() + getWidth()) - (CFG.PADDING * i18)) - (CFG.PADDING * i17)) - (this.iDataWidth * i18)) + this.iButtonsPosX + i, getPosY() + i2, this.iDataWidth, getHeight() - (((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)), this.verticalInfo.getColors(), this.verticalInfo.getSorted());
                            i16 = i16;
                            f5 = f5;
                            this.lValues.get(i17).drawDataTextValue_Splitted(spriteBatch, ((((getPosX() + getWidth()) - (CFG.PADDING * i18)) - (CFG.PADDING * i17)) - (this.iDataWidth * i18)) + this.iButtonsPosX + i, getPosY() + i2, this.iDataWidth, getHeight() - (((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)));
                        }
                    }
                } else {
                    int i19 = 0;
                    while (i19 < this.iValuesSize) {
                        if (this.lValues.get(i19).getInView()) {
                            int i20 = i19 + 1;
                            this.lValues.get(i19).drawData(spriteBatch, ((((getPosX() + getWidth()) - (CFG.PADDING * i20)) - (CFG.PADDING * i19)) - (this.iDataWidth * i20)) + this.iButtonsPosX + i, getPosY() + i2, this.iDataWidth, getHeight() - (((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)), this.verticalInfo.getColors(), this.verticalInfo.getSorted());
                            i3 = i16;
                            f2 = f5;
                            this.lValues.get(i19).drawDataTextValue(spriteBatch, ((((getPosX() + getWidth()) - (CFG.PADDING * i20)) - (CFG.PADDING * i19)) - (this.iDataWidth * i20)) + this.iButtonsPosX + i, getPosY() + i2, this.iDataWidth, getHeight() - (((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)));
                        } else {
                            f2 = f5;
                            i3 = i16;
                        }
                        i19++;
                        f5 = f2;
                        i16 = i3;
                    }
                }
                f3 = f5;
                i4 = i16;
            }
            Renderer.clipView_End(spriteBatch);
            Renderer.fontMain.get(i4).getData().setScale(Graph.POINTS_TEXT_SCALE);
            Renderer.drawText(spriteBatch, "" + CFG.getNumberWithSpaces("" + this.iMaxPoint), getPosX() + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + 1 + ((int) (CFG.GUI_SCALE * 2.0f)) + i, ((((getPosY() + CFG.CIV_FLAG_HEIGHT) + (CFG.PADDING * 2)) + 1) + i2) - ((int) ((CFG.GUI_SCALE * 2.0f) + (Graph.POINTS_TEXT_SCALE * CFG.TEXT_HEIGHT))), Graph.DATA_COLOR);
            Renderer.fontMain.get(i4).getData().setScale(f3);
        }
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.6f));
        Images.pix.draw(spriteBatch, (getPosX() - 1) + ((int) (CFG.TEXT_HEIGHT * f)) + (CFG.PADDING * 2) + i, getPosY() + i2, 1, CFG.PADDING + ((getHeight() - ((int) (CFG.TEXT_HEIGHT * f))) - (CFG.PADDING * 2)));
        Images.pix.draw(spriteBatch, (((getPosX() + ((int) (CFG.TEXT_HEIGHT * f))) + (CFG.PADDING * 2)) - CFG.PADDING) + i, (((getPosY() + getHeight()) - ((int) (CFG.TEXT_HEIGHT * f))) - (CFG.PADDING * 2)) + i2, CFG.PADDING + ((getWidth() - ((int) (CFG.TEXT_HEIGHT * f))) - (CFG.PADDING * 2)), 1);
        spriteBatch.setColor(Graph.GRAPH_BORDERS_COLOR);
        Images.pix.draw(spriteBatch, getPosX() + ((int) (CFG.TEXT_HEIGHT * f)) + (CFG.PADDING * 2) + i, getPosY() + i2, 1, CFG.PADDING + ((getHeight() - ((int) (CFG.TEXT_HEIGHT * f))) - (CFG.PADDING * 2)));
        Images.pix.draw(spriteBatch, (((getPosX() + ((int) (CFG.TEXT_HEIGHT * f))) + (CFG.PADDING * 2)) - CFG.PADDING) + i, (((getPosY() + getHeight()) - ((int) (CFG.TEXT_HEIGHT * f))) - (CFG.PADDING * 2)) + i2, CFG.PADDING + ((getWidth() - ((int) (CFG.TEXT_HEIGHT * f))) - (CFG.PADDING * 2)), 1);
        Images.pix.draw(spriteBatch, ((getPosX() + getWidth()) - CFG.PADDING) + i, getPosY() + i2, CFG.PADDING);
        Images.pix.draw(spriteBatch, (getPosX() - 1) + getWidth() + i, getPosY() + i2, 1, CFG.PADDING - 1);
        Images.pix.draw(spriteBatch, getPosX() + ((int) (CFG.TEXT_HEIGHT * f)) + (CFG.PADDING * 2) + i, getPosY() + i2, CFG.PADDING - 1);
        Images.pix.draw(spriteBatch, ((getPosX() + getWidth()) - 1) + i, (((getPosY() + getHeight()) - (((int) (CFG.TEXT_HEIGHT * f)) + (CFG.PADDING * 2))) - CFG.PADDING) + i2, 1, CFG.PADDING - 1);
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getCurrent() {
        return this.statisticsMode ? this.iButtonsPosY : this.iButtonsPosX;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public boolean getInStatisticsMode() {
        return this.statisticsMode;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public boolean getMoveable() {
        return this.moveable;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public boolean getScrollable() {
        return this.moveable;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void scrollByWheel(int i) {
        this.scrollModeY = false;
        setCurrent(getCurrent() + i);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public final void scrollTheMenu() {
        int i;
        int i2;
        if (!this.moveable || (i = this.iScrollPosX) <= 0 || (i2 = this.iScrollPosX2) <= 0 || Math.abs(i - i2) <= CFG.DENSITY * 3.0f) {
            return;
        }
        this.fScrollNewMenuPosY = (this.iScrollPosX - this.iScrollPosX2) * 1.25f;
        this.scrollModeY = true;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setCheckboxState(boolean z) {
        buildValuesHeights();
        updateInView();
        this.verticalInfo.updateMoveable(getWidth() - (((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)));
        updateMoveable();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setCurrent(int i) {
        if (this.statisticsMode) {
            if (i > 0) {
                Game.menuManager.setUpdateSliderMenuPosY(true);
                this.scrollModeY = false;
                i = 0;
            } else if (i < ((-(((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2))) * this.iValuesSize) + (getHeight() - ((((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) * 2))) {
                i = ((-(((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2))) * this.iValuesSize) + (getHeight() - ((((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) * 2));
                Game.menuManager.setUpdateSliderMenuPosY(true);
                this.scrollModeY = false;
            }
            if (this.iButtonsPosY != i) {
                this.iButtonsPosY = i;
                updateInView();
                return;
            }
            return;
        }
        if (i < 0) {
            Game.menuManager.setUpdateSliderMenuPosX(true);
            this.scrollModeY = false;
            i = 0;
        } else if (i > (((getButtonsWidth() - getWidth()) + this.iDataWidth) + CFG.PADDING) - (((int) (CFG.TEXT_HEIGHT * 0.7f)) - (CFG.PADDING * 2))) {
            i = (((getButtonsWidth() - getWidth()) + this.iDataWidth) + CFG.PADDING) - (((int) (CFG.TEXT_HEIGHT * 0.7f)) - (CFG.PADDING * 2));
            Game.menuManager.setUpdateSliderMenuPosX(true);
            this.scrollModeY = false;
        }
        if (this.iButtonsPosX != i) {
            this.iButtonsPosX = i;
            updateInView();
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setInStatisticsMode(boolean z) {
        if (this.allowStatisticsMode) {
            this.statisticsMode = z;
            this.scrollModeY = false;
            this.iButtonsPosY = 0;
            this.iButtonsPosX = 0;
            if (!z) {
                for (int i = 0; i < this.iValuesSize; i++) {
                    this.lValues.get(i).resetAnimation();
                }
            }
            updateMoveable();
            updateInView();
            setHoveredID(-1);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public final void setScrollPosY(int i) {
        this.iScrollPosX2 = this.iScrollPosX;
        this.iScrollPosX = i;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setVisible(boolean z) {
        super.setVisible(z);
        setHoveredID(-1);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void stopScrolling() {
        this.iScrollPosX2 = -1;
        this.iScrollPosX = -1;
        this.scrollModeY = false;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void updateHover(int i, int i2, int i3, int i4) {
        int i5 = 0;
        if (this.statisticsMode) {
            if (i >= getPosX() + i3 && i <= i3 + getPosX() + getWidth() && i2 >= getPosY() + i4 && i2 <= getPosY() + i4 + getHeight()) {
                while (i5 < this.iValuesSize) {
                    if (i2 >= getPosY() + i4 + this.iButtonsPosY + (((int) ((CFG.TEXT_HEIGHT * 0.7f) + (CFG.PADDING * 2))) * i5) && i2 <= getPosY() + i4 + this.iButtonsPosY + (((int) ((CFG.TEXT_HEIGHT * 0.7f) + (CFG.PADDING * 2))) * i5) + ((int) ((CFG.TEXT_HEIGHT * 0.7f) + (CFG.PADDING * 2)))) {
                        setHoveredID(i5);
                        return;
                    }
                    i5++;
                }
            }
            setHoveredID(-1);
            return;
        }
        if (i >= getPosX() + i3 && i <= getPosX() + i3 + getWidth() && i2 >= getPosY() + i4 && i2 <= i4 + getPosY() + getHeight()) {
            while (i5 < this.iValuesSize) {
                int i6 = i5 + 1;
                if (i >= (((((getPosX() + i3) + getWidth()) - (CFG.PADDING * i6)) - (CFG.PADDING * i5)) - (this.iDataWidth * i6)) + this.iButtonsPosX) {
                    int posX = (((getPosX() + i3) + getWidth()) - (CFG.PADDING * i6)) - (CFG.PADDING * i5);
                    int i7 = this.iDataWidth;
                    if (i <= (posX - (i7 * i6)) + this.iButtonsPosX + i7) {
                        setHoveredID(i5);
                        return;
                    }
                }
                i5 = i6;
            }
        }
        setHoveredID(-1);
    }

    public final void updateInView() {
        if (this.statisticsMode) {
            for (int i = 0; i < this.iValuesSize; i++) {
                if (getButtonsPosY(i) + this.iButtonsPosY >= ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) && getButtonsPosY(i) + this.iButtonsPosY <= getHeight() - ((((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) * 2)) {
                    this.lValues.get(i).setInView(true);
                } else if (getButtonsPosY(i) + this.iButtonsPosY + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) < 0 || getButtonsPosY(i) + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) + this.iButtonsPosY > getHeight() - ((((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2)) * 2)) {
                    this.lValues.get(i).setInView(false);
                } else {
                    this.lValues.get(i).setInView(true);
                }
            }
            return;
        }
        for (int i2 = 0; i2 < this.iValuesSize; i2++) {
            if (getButtonsPosX(i2) + this.iButtonsPosX >= ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) && getButtonsPosX(i2) + this.iButtonsPosX <= getWidth()) {
                this.lValues.get(i2).setInView(true);
            } else if ((getButtonsPosX(i2) - this.iDataWidth) + this.iButtonsPosX < ((int) (CFG.TEXT_HEIGHT * 0.7f)) + (CFG.PADDING * 2) || (getButtonsPosX(i2) - this.iDataWidth) + this.iButtonsPosX > getWidth()) {
                this.lValues.get(i2).setInView(false);
            } else {
                this.lValues.get(i2).setInView(true);
            }
        }
    }
}
