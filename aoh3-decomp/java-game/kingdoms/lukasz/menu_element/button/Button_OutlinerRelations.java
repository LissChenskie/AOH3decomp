package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.MenuElement_Type;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_Data;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_Value;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Button_OutlinerRelations extends Button_Outliner {
    public static Color progressBarBG = new Color(0.09803922f, 0.09803922f, 0.15686275f, 1.0f);
    public Color colorText;
    public float fPerc;
    public int iTextWidth2;
    public int imageID;
    public boolean improvingMode;
    public int lastTurnID;
    public float lastValue;
    public int maxTextWidth2;
    public PieChart pieChart;
    public int pieWidth;
    public Color progressBar;
    public String sText2;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.button.Button_OutlinerRelations$1, reason: invalid class name */
    class AnonymousClass1 extends Game.SimpleTask {
        AnonymousClass1(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_Right();
        }
    }

    public Button_OutlinerRelations(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
        super(str, i, i2, i3, i4, i6);
        this.iTextWidth2 = 0;
        this.progressBar = new Color(0.29411766f, 0.49019608f, 0.64705884f, 1.0f);
        this.colorText = new Color(1.0f, 1.0f, 1.0f, 1.0f);
        this.maxTextWidth2 = 0;
        this.pieWidth = 0;
        this.lastValue = -991258.25f;
        this.lastTurnID = 0;
        this.fPerc = 99.9f;
        this.typeOfElement = MenuElement_Type.BUTTON_FLAG;
        this.imageID = i5;
        this.improvingMode = z;
        this.sText2 = str2;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), str2);
        this.iTextWidth2 = (int) Renderer.glyphLayout.width;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), "-99");
        this.maxTextWidth2 = (int) Renderer.glyphLayout.width;
        if (z) {
            this.progressBar = new Color(DiplomacyManager.COLOR_GREEN.r, DiplomacyManager.COLOR_GREEN.g, DiplomacyManager.COLOR_GREEN.b, 0.35f);
        } else {
            this.progressBar = new Color(DiplomacyManager.COLOR_RED.r, DiplomacyManager.COLOR_RED.g, DiplomacyManager.COLOR_RED.b, 0.35f);
        }
        PieChart_Data pieChart_Data = new PieChart_Data();
        pieChart_Data.addPieChartValues(new PieChart_Value(0, 100.0f));
        this.pieWidth = i4 - (CFG.PADDING * 2);
        int i7 = (i3 - (CFG.PADDING * 2)) - this.pieWidth;
        int i8 = CFG.PADDING;
        int i9 = this.pieWidth;
        this.pieChart = new PieChart(i7, i8, i9, i9, pieChart_Data, null);
        try {
            this.lastTurnID = -1;
            float relation = Game.getCiv(this.iCurrent).diplomacy.getRelation(Game.player.iCivID);
            this.lastValue = relation;
            this.colorText = DiplomacyManager.getOpinion_Color((int) relation);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        int i = this.iCurrent;
        int i2 = Game.player.iCivID;
        boolean z = this.improvingMode;
        this.menuElementHover = InGame_Civ.getHoverBetweenCivilizations(i, i2, z, !z);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button_Outliner, aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        try {
            if (Game_Calendar.TURN_ID != this.lastTurnID) {
                float f = this.fPerc;
                float improvingRelations_Perc = this.improvingMode ? Game.getCiv(Game.player.iCivID).diplomacy.getImprovingRelations_Perc(this.iCurrent) : Game.getCiv(Game.player.iCivID).diplomacy.getDamagingRelations_Perc(this.iCurrent);
                this.fPerc = improvingRelations_Perc;
                if (improvingRelations_Perc < 0.0f) {
                    Game.addSimpleTask(new AnonymousClass1("rebuildRight"));
                }
                if (this.fPerc > f) {
                    ProvinceDraw.addDiplomacyLines(Game.getCiv(Game.player.iCivID).getCapitalProvinceID(), Game.getCiv(this.iCurrent).getCapitalProvinceID(), this.improvingMode ? Colors.HOVER_POSITIVE : Colors.HOVER_NEGATIVE);
                }
                this.lastTurnID = Game_Calendar.TURN_ID;
            }
            if (this.lastValue != Game.getCiv(this.iCurrent).diplomacy.getRelation(Game.player.iCivID)) {
                float relation = Game.getCiv(this.iCurrent).diplomacy.getRelation(Game.player.iCivID);
                this.lastValue = relation;
                setText(DiplomacyManager.getOpinion_String((int) relation));
                this.sText2 = "" + ((int) this.lastValue);
                Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), this.sText2);
                this.iTextWidth2 = (int) Renderer.glyphLayout.width;
                this.colorText = DiplomacyManager.getOpinion_Color((int) this.lastValue);
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        ImageManager.getImage(this.imageID).draw(spriteBatch, getPosX() + (CFG.PADDING * 2) + i, ((getPosY() + (getHeight() / 2)) - (ImageManager.getImage(this.imageID).getHeight() / 2)) + i2);
        spriteBatch.setShader(Renderer.shaderAlpha);
        if (this.iCurrent >= 0) {
            Game.getCiv(this.iCurrent).getFlag().getTexture().bind(1);
        } else {
            ImageManager.getImage(Images.randomCivilizationFlag).getTexture().bind(1);
        }
        Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
        ImageManager.getImage(Images.flagRect2Mask).draw(spriteBatch, getPosX() + (CFG.PADDING * 4) + ImageManager.getImage(this.imageID).getWidth() + i, ((getPosY() + (getHeight() / 2)) - (ImageManager.getImage(Images.flagRect2).getHeight() / 2)) + i2, ImageManager.getImage(Images.flagRect2).getWidth(), ImageManager.getImage(Images.flagRect2).getHeight());
        spriteBatch.flush();
        spriteBatch.setShader(Renderer.shaderDefault);
        ImageManager.getImage(Images.flagRect2).draw(spriteBatch, getPosX() + (CFG.PADDING * 4) + ImageManager.getImage(this.imageID).getWidth() + i, ((getPosY() + (getHeight() / 2)) - (ImageManager.getImage(Images.flagRect2).getHeight() / 2)) + i2, ImageManager.getImage(Images.flagRect2).getWidth(), ImageManager.getImage(Images.flagRect2).getHeight());
        this.pieChart.draw2(spriteBatch, getPosX() + i, getPosY() + i2, z, false, this.fPerc, this.progressBar);
        Renderer.drawText(spriteBatch, this.fontID, getTextToDraw(), getPosX() + ImageManager.getImage(this.imageID).getWidth() + ImageManager.getImage(Images.flagRect2).getWidth() + (CFG.PADDING * 6) + i, ((getPosY() + (getHeight() / 2)) - (getTextHeight() / 2)) + i2, getColor(z));
        Renderer.drawText(spriteBatch, this.fontID, this.sText2, ((((getPosX() + getWidth()) - (CFG.PADDING * 4)) - this.pieWidth) - this.iTextWidth2) + i, ((getPosY() + (getHeight() / 2)) - (getTextHeight() / 2)) + i2, getColor(z));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button_Outliner, aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        return getIsHovered() ? super.getColor(z) : this.colorText;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setIsHovered(boolean z) {
        super.setIsHovered(z);
        if (z) {
            ProvinceDraw.drawProvincesCiv_HoveredFlagID = this.iCurrent;
        }
    }
}
