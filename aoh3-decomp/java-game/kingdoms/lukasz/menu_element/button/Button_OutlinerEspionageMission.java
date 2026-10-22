package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.MenuElement_Type;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagCiv_Title;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_Data;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_Value;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.DrawOver.SQ.XjthpFh;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Button_OutlinerEspionageMission extends Button_Outliner {
    public static Color progressBarBG = new Color(0.09803922f, 0.09803922f, 0.15686275f, 1.0f);
    public Color colorText;
    public int espionageEndTurnID;
    public int espionageStartedTurnID;
    public float fPerc;
    public int iTextWidth2;
    public int imageID;
    public boolean inRightMenu;
    public int lastTurnID;
    public int maxTextWidth2;
    public PieChart pieChart;
    public int pieWidth;
    public Color progressBar;
    public String sText2;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.button.Button_OutlinerEspionageMission$1, reason: invalid class name */
    class AnonymousClass1 extends Game.SimpleTask {
        AnonymousClass1(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_Right();
            InGame_Info.iCivID = Game.player.iCivID;
            InGame_Info.iCivID2 = this.id;
            Game.menuManager.rebuildInGame_Info(Game.lang.get("EspionageMission") + ": " + Game.lang.get("Completed"), Game.getCiv(this.id).getCivName());
            InGame_Info.imgID = Images.infoDiplomacy;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.button.Button_OutlinerEspionageMission$2, reason: invalid class name */
    class AnonymousClass2 extends Game.SimpleTask {
        AnonymousClass2(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            if (Game.menuManager.getVisibleInGame_Court() && InGame_CourtOptions.iActiveID == InGame_CourtOptions2.idCourt) {
                Game.menuManager.rebuildInGame_CourtSavePos();
                Game.menuManager.setVisibleInGame_Court(true);
                InGame_Court.lTime = 0L;
            }
        }
    }

    public Button_OutlinerEspionageMission(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z) {
        super(str, i, i2, i3, i4, i6);
        this.iTextWidth2 = 0;
        this.progressBar = new Color(0.29411766f, 0.49019608f, 0.64705884f, 1.0f);
        this.colorText = new Color(1.0f, 1.0f, 1.0f, 1.0f);
        this.maxTextWidth2 = 0;
        this.pieWidth = 0;
        this.lastTurnID = 0;
        this.fPerc = 0.0f;
        this.inRightMenu = z;
        this.typeOfElement = MenuElement_Type.BUTTON_FLAG;
        this.espionageStartedTurnID = i7;
        this.espionageEndTurnID = i8;
        this.imageID = i5;
        this.fPerc = ((Game_Calendar.TURN_ID - i7) / (i8 - i7)) * 100.0f;
        this.sText2 = XjthpFh.efv + ((int) Math.min(100.0f, this.fPerc)) + "%";
        Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), this.sText2);
        this.iTextWidth2 = (int) Renderer.glyphLayout.width;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), "99%");
        this.maxTextWidth2 = (int) Renderer.glyphLayout.width;
        this.progressBar = new Color(DiplomacyManager.COLOR_SPY.r, DiplomacyManager.COLOR_SPY.g, DiplomacyManager.COLOR_SPY.b, 0.35f);
        PieChart_Data pieChart_Data = new PieChart_Data();
        pieChart_Data.addPieChartValues(new PieChart_Value(0, 100.0f));
        this.pieWidth = i4 - (CFG.PADDING * 2);
        int i9 = (i3 - (CFG.PADDING * 2)) - this.pieWidth;
        int i10 = CFG.PADDING;
        int i11 = this.pieWidth;
        this.pieChart = new PieChart(i9, i10, i11, i11, pieChart_Data, null);
        try {
            this.lastTurnID = Game_Calendar.TURN_ID;
            this.colorText = DiplomacyManager.COLOR_NEUTRAL;
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(this.iCurrent, Game.lang.get("EspionageMission")));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("EspionageProgress") + ": ", this.sText2, Images.time, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        this.menuElementHover = new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button_Outliner, aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        try {
            if (Game_Calendar.TURN_ID != this.lastTurnID) {
                int i3 = Game_Calendar.TURN_ID;
                int i4 = this.espionageStartedTurnID;
                float f = ((i3 - i4) / (this.espionageEndTurnID - i4)) * 100.0f;
                this.fPerc = f;
                if (this.inRightMenu && f >= 100.0f) {
                    Game.addSimpleTask(new AnonymousClass1("rebuildRight", this.iCurrent));
                    Game.addSimpleTask(new AnonymousClass2("rebuildInGame_CourtSavePos"));
                }
                this.sText2 = "" + ((int) Math.min(100.0f, this.fPerc)) + "%";
                Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), this.sText2);
                this.iTextWidth2 = (int) Renderer.glyphLayout.width;
                this.lastTurnID = Game_Calendar.TURN_ID;
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
        this.pieChart.draw2(spriteBatch, getPosX() + i, getPosY() + i2, z, false, Math.max(0.0f, 100.0f - Math.max(1.0f, this.fPerc)), this.progressBar);
        Renderer.drawText(spriteBatch, this.fontID, getTextToDraw(), getPosX() + ImageManager.getImage(this.imageID).getWidth() + ImageManager.getImage(Images.flagRect2).getWidth() + (CFG.PADDING * 6) + i, ((getPosY() + (getHeight() / 2)) - (getTextHeight() / 2)) + i2, getColor(z));
        Renderer.drawText(spriteBatch, this.fontID, this.sText2, ((((getPosX() + getWidth()) - (CFG.PADDING * 4)) - this.pieWidth) - this.iTextWidth2) + i, ((getPosY() + (getHeight() / 2)) - (getTextHeight() / 2)) + i2, DiplomacyManager.COLOR_SPY);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button_Outliner, aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        return getIsHovered() ? super.getColor(z) : this.colorText;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button_Outliner, aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getCurrent() {
        return this.iCurrent;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setIsHovered(boolean z) {
        super.setIsHovered(z);
        if (z) {
            ProvinceDraw.drawProvincesCiv_HoveredFlagID = this.iCurrent;
        }
    }
}
