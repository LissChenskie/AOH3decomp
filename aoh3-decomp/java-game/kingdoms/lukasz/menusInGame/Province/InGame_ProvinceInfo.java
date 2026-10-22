package aoc.kingdoms.lukasz.menusInGame.Province;

import androidx.arch.core.ht.qIuEvFbUtcea;
import androidx.lifecycle.livedata.core.jzw.jkEBdieJhbh;
import aoc.kingdoms.lukasz.jakowski.AA_KeyManager;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Keyboard;
import aoc.kingdoms.lukasz.jakowski.LanguageManager;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.map.BuildingsManager;
import aoc.kingdoms.lukasz.map.ColonizationManager;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.map.WondersManager;
import aoc.kingdoms.lukasz.map.advisors.VjN.hQfu;
import aoc.kingdoms.lukasz.map.civilization.stats.LQy.lJxd;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.plague.KMTV.fTNtCctcBZcqKK;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.map.technology.Bhs.fiRhHJntP;
import aoc.kingdoms.lukasz.map.technology.TechnologyTree;
import aoc.kingdoms.lukasz.menu.ClickAnimation;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.FQy.TGqtTWl;
import aoc.kingdoms.lukasz.menu.HoverManager;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_Flag_TextRight;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.Toast;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses2_Value;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Economy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Loot;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Manpower;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_ProvinceIncome;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Tax;
import aoc.kingdoms.lukasz.menu_element.button.ButtonTerrain;
import aoc.kingdoms.lukasz.menu_element.button.ButtonWonderProvince;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonusReligion;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonusResource;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Empty;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Flag;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagCiv_Title;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Resource;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Clear;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_Data;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_Value;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextBGBot;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextCores;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Devastation;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Economy;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_GrowthRate;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Infrastructure;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Manpower;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Nuke;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Population;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_ProvinceIncome;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Religion;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_RevolutionaryRisk;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Tax;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Resource;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_VerticalProductionIncome;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Desc3;
import aoc.kingdoms.lukasz.menusEditor.RJR.ATsAGKCnv;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Population;
import aoc.kingdoms.lukasz.menusInGame.Court.zHJ.lOow;
import aoc.kingdoms.lukasz.menusInGame.DrawOver.SQ.XjthpFh;
import aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods;
import aoc.kingdoms.lukasz.menusInGame.Goods.InGame_GoodsMarket;
import aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods_LargestProducers;
import aoc.kingdoms.lukasz.menusInGame.InGame_ConvertReligion;
import aoc.kingdoms.lukasz.menusInGame.InGame_MapModes;
import aoc.kingdoms.lukasz.menusInGame.InGame_Wonder;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.assets.loaders.Wkvw.PZBvyl;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g3d.model.ia.uNBYrZVGzy;
import com.google.android.gms.internal.tasks.Vhe.SwmJtrccN;
import com.google.android.gms.security.IYT.MQYGMkZOAcS;
import com.pairip.licensecheck.CohD.CaiJWNfqszJNZ;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_ProvinceInfo extends Menu {
    public static final int ANIMATION_TIME = 60;
    public static int HOVER_POSX = 0;
    public static int HOVER_POSY = 0;
    public static boolean atomicOwnOnceTimeInfo = true;
    public static int iProvinceID = 0;
    public static long lTime = 0;
    public static long lTime2 = 0;
    public static int menuPosY = 0;
    public static int menuW = 0;
    public static int nTranslateX = 0;
    public static int nTranslateY = 0;
    public static Image provinceIMG = null;
    public static int provinceIMG_ID = -1;
    public static int provinceIMG_ID_Loaded = -1;
    public static String renameProvince = "";
    public boolean confirmEditProvinceName = false;
    public int imageOverID;
    public int pieElementID;
    public int statsElementsID;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$1, reason: invalid class name */
    class AnonymousClass1 extends Game.SimpleTask {
        AnonymousClass1(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            InGame_ProvinceInfo.provinceIMG_ID = this.id;
            InGame_ProvinceInfo.loadProvinceIMG();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$10, reason: invalid class name */
    class AnonymousClass10 extends ButtonStatsRectIMG_Tax {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$10$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.HOVER_YELLOW;
            }
        }

        AnonymousClass10(int i, String str, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(i, str, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_ProvinceInfo.actionTax(this.iProvinceID)) {
                MenuManager menuManager = Game.menuManager;
                MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_ProvinceInfo.this.getPosX(), getPosY() + (getHeight() / 2) + InGame_ProvinceInfo.this.getPosY(), getWidth(), getHeight()));
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_PROVINCE_TAX);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverTaxEfficiency(this.iProvinceID, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return Game.soundsManager.getCoin();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Tax, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setIsHovered(boolean z) {
            super.setIsHovered(z);
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_TAX_EFFICIENCY && !z && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_PROVINCE_TAX_EFFICIENCY_HOVER) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateHovered() {
            super.updateHovered();
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_TAX_EFFICIENCY && HoverManager.hoverTime + GameValues.mapModes.HOVER_TIME <= CFG.currentTimeMillis && getIsHovered() && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DEFAULT) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_PROVINCE_TAX_EFFICIENCY_HOVER);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$11, reason: invalid class name */
    class AnonymousClass11 extends ButtonStatsRectIMG_Economy {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$11$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.COLOR_TEXT_ECONOMY;
            }
        }

        AnonymousClass11(int i, String str, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(i, str, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_ProvinceInfo.actionEconomy(this.iProvinceID)) {
                MenuManager menuManager = Game.menuManager;
                MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_ProvinceInfo.this.getPosX(), getPosY() + (getHeight() / 2) + InGame_ProvinceInfo.this.getPosY(), getWidth(), getHeight()));
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_ECONOMY);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverEconomy(this.iProvinceID, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return Game.soundsManager.getEconomy();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Economy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setIsHovered(boolean z) {
            super.setIsHovered(z);
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_ECONOMY && !z && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_PROVINCE_ECONOMY_HOVER) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateHovered() {
            super.updateHovered();
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_ECONOMY && HoverManager.hoverTime + GameValues.mapModes.HOVER_TIME <= CFG.currentTimeMillis && getIsHovered() && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DEFAULT) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_PROVINCE_ECONOMY_HOVER);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$12, reason: invalid class name */
    class AnonymousClass12 extends ButtonStatsRectIMG_Manpower {
        AnonymousClass12(int i, String str, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(i, str, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_ProvinceInfo.actionManpower(this.iProvinceID)) {
                MenuManager menuManager = Game.menuManager;
                MenuManager.addClickAnimation(new ClickAnimation(getPosX() + (getWidth() / 2) + InGame_ProvinceInfo.this.getPosX(), getPosY() + (getHeight() / 2) + InGame_ProvinceInfo.this.getPosY(), getWidth(), getHeight()));
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_MANPOWER) {
                this.menuElementHover = null;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverManpower(this.iProvinceID, true, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return Game.soundsManager.getClickIncreaseManpower();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Manpower, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setIsHovered(boolean z) {
            super.setIsHovered(z);
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_MANPOWER && !z && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_PROVINCE_MANPOWER_HOVER) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateHovered() {
            super.updateHovered();
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_MANPOWER && HoverManager.hoverTime + GameValues.mapModes.HOVER_TIME <= CFG.currentTimeMillis && getIsHovered() && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DEFAULT) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_PROVINCE_MANPOWER_HOVER);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$13, reason: invalid class name */
    class AnonymousClass13 extends TextIcon2_Population {
        AnonymousClass13(int i, String str, int i2, int i3, int i4, int i5, int i6) {
            super(i, str, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_ProvinceInfo(false);
            InGame_Civ_Population.goBackToRank = false;
            Game.menuManager.rebuildInGame_Civ_Population();
            if (Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_DIPLOMACY) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DIPLOMACY);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_POPULATION);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverPopulation(this.iProvinceID, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Population, aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            if (z) {
                return Colors.COLOR_POPULATION_ACTIVE;
            }
            if (getIsHovered()) {
                return Colors.COLOR_POPULATION_HOVER;
            }
            return getClickable() ? Colors.COLOR_POPULATION : Colors.BUTTON_TEXT_DISABLED;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setIsHovered(boolean z) {
            super.setIsHovered(z);
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_POPULATION && !z && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_PROVINCE_POPULATION_HOVER) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateHovered() {
            super.updateHovered();
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_POPULATION && HoverManager.hoverTime + GameValues.mapModes.HOVER_TIME <= CFG.currentTimeMillis && getIsHovered() && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DEFAULT) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_PROVINCE_POPULATION_HOVER);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$14, reason: invalid class name */
    class AnonymousClass14 extends PieChart {
        AnonymousClass14(int i, int i2, int i3, int i4, PieChart_Data pieChart_Data, MenuElement_Hover menuElement_Hover) {
            super(i, i2, i3, i4, pieChart_Data, menuElement_Hover);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.pieChart.PieChart
        protected float animationPerc() {
            return Math.min(1.0f, (CFG.currentTimeMillis - InGame_ProvinceInfo.lTime) / 150.0f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverPopulation(InGame_ProvinceInfo.iProvinceID, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.pieChart.PieChart
        protected void drawPieChart(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2, int i3, int i4, int i5, int i6, int i7) {
            spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f));
            Renderer.drawBox(spriteBatch, Images.statsRectBG, (getPosX() - CFG.PADDING) + i, (getPosY() - CFG.PADDING) + i2, (CFG.PADDING * 2) + getWidth(), (CFG.PADDING * 2) + getHeight(), 1.0f);
            spriteBatch.setColor(Color.WHITE);
            super.drawPieChart(spriteBatch, i, i2, z, z2, i3, i4, i5, i6, i7);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$15, reason: invalid class name */
    class AnonymousClass15 extends TextIcon2_GrowthRate {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$15$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.COLOR_POPULATION;
            }
        }

        AnonymousClass15(int i, String str, int i2, int i3, int i4, int i5, int i6) {
            super(i, str, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_ProvinceInfo.actionGrowthRate(this.iProvinceID)) {
                MenuManager menuManager = Game.menuManager;
                MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_ProvinceInfo.this.getPosX(), getPosY() + (getHeight() / 2) + InGame_ProvinceInfo.this.getPosY(), getWidth(), getHeight()));
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_GROWTH_RATE) {
                this.menuElementHover = null;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverPopulationGrowth(this.iProvinceID, true, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            SoundsManager soundsManager = Game.soundsManager;
            return SoundsManager.getGrowthRate();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_GrowthRate, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setIsHovered(boolean z) {
            super.setIsHovered(z);
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_GROWTH_RATE && !z && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_PROVINCE_GROWTH_RATE_HOVER) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateHovered() {
            super.updateHovered();
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_GROWTH_RATE && HoverManager.hoverTime + GameValues.mapModes.HOVER_TIME <= CFG.currentTimeMillis && getIsHovered() && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DEFAULT) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_PROVINCE_GROWTH_RATE_HOVER);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$16, reason: invalid class name */
    class AnonymousClass16 extends TextIcon2_Religion {
        AnonymousClass16(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getProvince(this.iProvinceID).getCivID() == Game.player.iCivID && Game.getProvince(this.iProvinceID).getReligion() != Game.getCiv(Game.player.iCivID).getReligionID() && Game.getProvince(this.iProvinceID).religionConversion == null) {
                InGame_ConvertReligion.iProvinceID = InGame_ProvinceInfo.iProvinceID;
                if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 0 && InGame_ConvertReligion.iProvinceID == this.iProvinceID) {
                    Game.menuManager.setVisibleInGame_PopUp(false);
                } else {
                    Game.menuManager.rebuildInGame_ConvertReligion();
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            InGame_MapModes.actionReligion();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Religion, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverReligion(this.iProvinceID, true, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Religion, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setIsHovered(boolean z) {
            super.setIsHovered(z);
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_RELIGION && !z && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_PROVINCE_RELIGION_HOVER) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateHovered() {
            super.updateHovered();
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_RELIGION && HoverManager.hoverTime + GameValues.mapModes.HOVER_TIME <= CFG.currentTimeMillis && getIsHovered() && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DEFAULT) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_PROVINCE_RELIGION_HOVER);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$17, reason: invalid class name */
    class AnonymousClass17 extends TextIcon2_RevolutionaryRisk {
        AnonymousClass17(int i, String str, int i2, int i3, int i4, int i5, int i6) {
            super(i, str, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_ProvinceInfo.actionUnrest(this.iProvinceID);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            InGame_MapModes.actionUnrest();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverUnrest(this.iProvinceID, true, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setIsHovered(boolean z) {
            super.setIsHovered(z);
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_UNREST && !z && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_PROVINCE_UNREST_HOVER) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateHovered() {
            super.updateHovered();
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_UNREST && HoverManager.hoverTime + GameValues.mapModes.HOVER_TIME <= CFG.currentTimeMillis && getIsHovered() && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DEFAULT) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_PROVINCE_UNREST_HOVER);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$18, reason: invalid class name */
    class AnonymousClass18 extends TextIcon2_Infrastructure {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$18$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.HOVER_LEFT;
            }
        }

        AnonymousClass18(int i, String str, int i2, int i3, int i4, int i5, int i6) {
            super(i, str, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_ProvinceInfo.actionInfrastructure(this.iProvinceID)) {
                MenuManager menuManager = Game.menuManager;
                MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_ProvinceInfo.this.getPosX(), getPosY() + (getHeight() / 2) + InGame_ProvinceInfo.this.getPosY(), getWidth(), getHeight()));
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            InGame_MapModes.actionInfrastructure();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverInfrastructure(this.iProvinceID, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return Game.soundsManager.getInfrastructure();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Infrastructure, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setIsHovered(boolean z) {
            super.setIsHovered(z);
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_INFRASTRUCTURE && !z && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_PROVINCE_INFRASTRUCTURE_HOVER) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateHovered() {
            super.updateHovered();
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_INFRASTRUCTURE && HoverManager.hoverTime + GameValues.mapModes.HOVER_TIME <= CFG.currentTimeMillis && getIsHovered() && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DEFAULT) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_PROVINCE_INFRASTRUCTURE_HOVER);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$19, reason: invalid class name */
    class AnonymousClass19 extends TextIcon_Resource {
        AnonymousClass19(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_GoodsMarket()) {
                Game.menuManager.setVisibleInGame_GoodsMarket(false);
            } else {
                InGame_GoodsMarket.iActiveCivID = Game.getProvince(InGame_ProvinceInfo.iProvinceID).getCivID() > 0 ? Game.getProvince(InGame_ProvinceInfo.iProvinceID).getCivID() : Game.player.iCivID;
                Game.menuManager.rebuildInGame_GoodsMarket();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            InGame_MapModes.actionGoods();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Resource, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverResource(InGame_ProvinceInfo.iProvinceID, this.resourceID, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonTerrain {
        AnonymousClass2(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.mapCoords.centerToProvinceID(this.iProvinceID);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_TERRAIN);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$20, reason: invalid class name */
    class AnonymousClass20 extends TextIcon_VerticalProductionIncome {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$20$1, reason: invalid class name */
        class AnonymousClass1 extends MenuElement_Hover {
            AnonymousClass1(List list) {
                super(list);
            }

            @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover, aoc.kingdoms.lukasz.menu.Hover
            public void draw(SpriteBatch spriteBatch, int i, int i2) {
                super.draw(spriteBatch, i, (InGame_ProvinceInfo.HOVER_POSY + ((CFG.GAME_HEIGHT - InGame_ProvinceInfo.HOVER_POSY) / 2)) - (this.iHeight / 2));
            }

            @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover
            public int getMinPosX() {
                return InGame_ProvinceInfo.HOVER_POSX;
            }
        }

        AnonymousClass20(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getProvince(this.iProvinceID).getResourceID() >= 0) {
                InGame_Goods_LargestProducers.RESOURCE_ID = Game.getProvince(this.iProvinceID).getResourceID();
                InGame_Goods_LargestProducers.lTime = 0L;
                InGame_ProvinceInfo.lTime = 0L;
                Game.menuManager.rebuildInGame_Goods_LargestProducers();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            InGame_MapModes.actionGoods();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int resourceID = Game.getProvince(this.iProvinceID).getResourceID();
            if (resourceID >= 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusResource(Game.lang.get("Resource") + ": ", ResourcesManager.lResources.get(resourceID).Name, resourceID, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Resource") + ": ", Game.lang.get("None"), Images.resourceNone, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (resourceID >= 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MonthlyIncome") + ": ", "+" + CFG.getPrecision2(ResourcesManager.getMonthlyIncome(this.iProvinceID, resourceID), 100), Images.tax, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(" = " + Game.lang.get("Price") + " * " + Game.lang.get("ProductionEfficiency") + " %", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ProductionEfficiency") + ": ", CFG.getPrecision2(ResourcesManager.getProductionEfficiency(this.iProvinceID) * 100.0f, 10) + "%", Images.goods, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(" = (" + CFG.getPrecision2(GameValues.production.BASE_PRODUCTION_EFFICIENCY * 100.0f, 100) + " + " + Game.lang.get("Economy") + " * " + CFG.getPrecision2(GameValues.production.PRODUCTION_EFFICIENCY_PER_ECONOMY * 100.0f, 100) + ") * " + Game.lang.get("Bonuses"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
                if (Game.getCiv(Game.getProvince(this.iProvinceID).getCivID()).getCorruption() > 0.005f) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Corruption") + ": ", "-" + CFG.getPrecision2(Game.getCiv(Game.getProvince(this.iProvinceID).getCivID()).getCorruption() * 100.0f, 10) + "%", Images.corruption, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_NEGATIVE));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                }
                if (!Game.getProvince(this.iProvinceID).haveACore(Game.getProvince(this.iProvinceID).getCivID())) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("NonCoreProvince") + ":", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                    arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(this.iProvinceID).getCivID(), CFG.PADDING, CFG.PADDING));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(GameValues.core.BASE_INCOME_NON_CORE * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                }
                if (Game.getProvince(this.iProvinceID).getReligion() != Game.getCiv(Game.getProvince(this.iProvinceID).getCivID()).getReligionID()) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DifferentReligion") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(GameValues.religion.BASE_INCOME_DIFFERENT_RELIGION * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                }
            }
            this.menuElementHover = new AnonymousClass1(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$21, reason: invalid class name */
    class AnonymousClass21 extends TextIcon2_Nuke {
        AnonymousClass21(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            int civID = Game.getProvince(InGame_ProvinceInfo.iProvinceID).getCivID();
            int i = Game.player.iCivID;
            String str = MQYGMkZOAcS.JduMLPXpaUEG;
            if (civID == i) {
                if (InGame_ProvinceInfo.atomicOwnOnceTimeInfo) {
                    Game.menuManager.addToastInsufficient(Game.getProvince(InGame_ProvinceInfo.iProvinceID).getProvinceName() + str, Game.getCiv(Game.getProvince(InGame_ProvinceInfo.iProvinceID).getCivID()).getCivName(), Images.nuke);
                    InGame_ProvinceInfo.atomicOwnOnceTimeInfo = false;
                    return;
                }
                return;
            }
            if (!DiplomacyManager.isAtWar(Game.player.iCivID, Game.getProvince(InGame_ProvinceInfo.iProvinceID).getCivID())) {
                Game.menuManager.addToast_Error(Game.lang.get("AtPeace"), Images.peace);
            } else if (Game.getCiv(Game.player.iCivID).getNukes() <= 0) {
                Game.menuManager.addToastInsufficient(Game.lang.get("AtomicBombs") + str, "" + Game.getCiv(Game.player.iCivID).getNukes(), Images.nuke);
            } else {
                Game.dropAtomicBomb(Game.player.iCivID, InGame_ProvinceInfo.iProvinceID);
                this.menuElementHover = null;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("DropAtomicBomb"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.nuke, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("AtomicBombs") + ": ", CFG.FONT_REGULAR));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + Game.getCiv(Game.player.iCivID).getNukes(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.nuke, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Population") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("-" + CFG.getPrecision2(Game.getAtomicBombCasualties(InGame_ProvinceInfo.iProvinceID) * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.population, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Economy") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("-" + CFG.getPrecision2(GameValues.atomic.ATOMIC_BOMB_ECONOMY * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_ECONOMY, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Devastation") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(ATsAGKCnv.PdjPZKzqQiX + CFG.getPrecision2(GameValues.atomic.ATOMIC_BOMB_DEVASTATION * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.devastation, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Army") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("-" + CFG.getPrecision2(GameValues.atomic.ATOMIC_BOMB_ARMY * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (Game.getProvince(InGame_ProvinceInfo.iProvinceID).provBonuses.CasualtiesNuclearAttacks != 0.0f) {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("CasualtiesFromNuclearAttacks") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(Game.getProvince(InGame_ProvinceInfo.iProvinceID).provBonuses.CasualtiesNuclearAttacks * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.nuke, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$22, reason: invalid class name */
    class AnonymousClass22 extends ButtonStatsRectIMG_Loot {
        AnonymousClass22(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_LOOT) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
            } else {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_LOOT);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            InGame_MapModes.actionLoot();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverLoot(InGame_ProvinceInfo.iProvinceID, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setIsHovered(boolean z) {
            super.setIsHovered(z);
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_LOOT && !z && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_PROVINCE_LOOT_HOVER) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateHovered() {
            super.updateHovered();
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_LOOT && HoverManager.hoverTime + GameValues.mapModes.HOVER_TIME <= CFG.currentTimeMillis && getIsHovered() && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DEFAULT) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_PROVINCE_LOOT_HOVER);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$23, reason: invalid class name */
    class AnonymousClass23 extends TextIcon2 {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$23$1, reason: invalid class name */
        class AnonymousClass1 extends MenuElement_Hover {
            AnonymousClass1(List list) {
                super(list);
            }

            @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover, aoc.kingdoms.lukasz.menu.Hover
            public void draw(SpriteBatch spriteBatch, int i, int i2) {
                super.draw(spriteBatch, i, (InGame_ProvinceInfo.HOVER_POSY + ((CFG.GAME_HEIGHT - InGame_ProvinceInfo.HOVER_POSY) / 2)) - (this.iHeight / 2));
            }

            @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover
            public int getMinPosX() {
                return InGame_ProvinceInfo.HOVER_POSX;
            }
        }

        AnonymousClass23(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_PROVINCE_VALUE) {
                this.menuElementHover = null;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ProvinceValue") + ": ", CFG.getPrecision2(Game.getProvince(InGame_ProvinceInfo.iProvinceID).fProvinceValue, 10), Images.victoryPoints, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("BaseProvinceValue") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(GameValues.province.PROVINCE_VALUE_BASE, 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (Game.getProvince(InGame_ProvinceInfo.iProvinceID).isCapital) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Capital") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(GameValues.province.PROVINCE_VALUE_CAPITAL, 10), CFG.FONT_BOLD_SMALL, Colors.HOVER_POSITIVE));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Economy") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(Game.getProvince(InGame_ProvinceInfo.iProvinceID).getProvinceValue_Economy(), 10), CFG.FONT_BOLD_SMALL, Colors.HOVER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(" = min(" + Game.lang.get("Economy") + " * " + CFG.getPrecision2(GameValues.province.PROVINCE_VALUE_PER_ECONOMY, 1000) + ", " + CFG.getPrecision2(GameValues.province.PROVINCE_VALUE_PER_ECONOMY_MAX, 1000) + ")", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("GrowthRate") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(Game.getProvince(InGame_ProvinceInfo.iProvinceID).getProvinceValue_GrowthRate(), 10), CFG.FONT_BOLD_SMALL, Colors.HOVER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(" = min(" + Game.lang.get("GrowthRate") + " * " + CFG.getPrecision2(GameValues.province.PROVINCE_VALUE_PER_GROWTH_RATE, 1000) + ", " + CFG.getPrecision2(GameValues.province.PROVINCE_VALUE_PER_GROWTH_RATE_MAX, 1000) + ")", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            if (Game.getProvince(InGame_ProvinceInfo.iProvinceID).wonderID >= 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Wonder") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(InGame_ProvinceInfo.iProvinceID).getWonderBuilt() ? "+" + CFG.getPrecision2(GameValues.province.PROVINCE_VALUE_WONDER_BUILT, 10) : "0", CFG.FONT_BOLD_SMALL, Colors.HOVER_POSITIVE));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new AnonymousClass1(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setIsHovered(boolean z) {
            super.setIsHovered(z);
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_PROVINCE_VALUE && !z && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_PROVINCE_PROVINCE_VALUE_HOVER) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateHovered() {
            super.updateHovered();
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_PROVINCE_VALUE && HoverManager.hoverTime + GameValues.mapModes.HOVER_TIME <= CFG.currentTimeMillis && getIsHovered() && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DEFAULT) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_PROVINCE_PROVINCE_VALUE_HOVER);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$24, reason: invalid class name */
    class AnonymousClass24 extends TextIcon2_Devastation {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$24$1, reason: invalid class name */
        class AnonymousClass1 extends MenuElement_Hover {
            AnonymousClass1(List list) {
                super(list);
            }

            @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover, aoc.kingdoms.lukasz.menu.Hover
            public void draw(SpriteBatch spriteBatch, int i, int i2) {
                super.draw(spriteBatch, i, (InGame_ProvinceInfo.HOVER_POSY + ((CFG.GAME_HEIGHT - InGame_ProvinceInfo.HOVER_POSY) / 2)) - (this.iHeight / 2));
            }

            @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover
            public int getMinPosX() {
                return InGame_ProvinceInfo.HOVER_POSX;
            }
        }

        AnonymousClass24(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            InGame_MapModes.actionDevastation();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            StringBuilder sbAppend = new StringBuilder().append(Game.lang.get("Devastation"));
            String str = uNBYrZVGzy.RQBEr;
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(sbAppend.append(str).toString(), CFG.getPrecision2(Game.getProvince(this.iProvinceID).getDevastation() * 100.0f, 100) + "%", Images.devastation, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (Game.getProvince(this.iProvinceID).isOccupied()) {
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("MonthlyChange") + str, CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(CFG.getPrecision2(GameValues.siege.DEVASTATION_PER_MONTH_OCCUPIED * 100.0f, 100), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.devastation, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } else if (Game.getProvince(this.iProvinceID).getDevastation() > 5.0E-5f) {
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("MonthlyChange") + str, CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(CFG.getPrecision2(GameValues.siege.DEVASTATION_PER_MONTH_DEFAULT * 100.0f, 100), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.devastation, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Max") + str, CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(GameValues.siege.DEVASTATION_MAX * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.devastation, CFG.PADDING, CFG.PADDING));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Devastation"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new AnonymousClass1(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setIsHovered(boolean z) {
            super.setIsHovered(z);
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_DEVASTATION && !z && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_PROVINCE_DEVASTATION_HOVER) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateHovered() {
            super.updateHovered();
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_DEVASTATION && HoverManager.hoverTime + GameValues.mapModes.HOVER_TIME <= CFG.currentTimeMillis && getIsHovered() && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DEFAULT) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_PROVINCE_DEVASTATION_HOVER);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$25, reason: invalid class name */
    class AnonymousClass25 extends TextBGBot {
        AnonymousClass25(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_Wonder()) {
                Game.menuManager.setVisibleInGame_Wonder(false);
            } else {
                InGame_Wonder.iProvinceID = InGame_ProvinceInfo.iProvinceID;
                Game.menuManager.rebuildInGame_Wonder();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            if (Game.getProvince(InGame_ProvinceInfo.iProvinceID).wonderID >= 0) {
                this.menuElementHover = ButtonWonderProvince.getHoverWonder(InGame_ProvinceInfo.iProvinceID, Game.getProvince(InGame_ProvinceInfo.iProvinceID).wonderID, true);
            } else {
                this.menuElementHover = null;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextBGBot, aoc.kingdoms.lukasz.menu_element.button.Button
        protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            try {
                if (Game.getProvince(InGame_ProvinceInfo.iProvinceID).getWonderBuilt()) {
                    spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.5f));
                    Renderer.drawBoxBOT(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
                    spriteBatch.setColor(new Color(Colors.COLOR_TEXT_MODIFIER_POSITIVE.r, Colors.COLOR_TEXT_MODIFIER_POSITIVE.g, Colors.COLOR_TEXT_MODIFIER_POSITIVE.b, 0.45f));
                    Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), false, true);
                    spriteBatch.setColor(Color.WHITE);
                } else {
                    super.drawButtonBG(spriteBatch, i, i2, z);
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$26, reason: invalid class name */
    class AnonymousClass26 extends ButtonWonderProvince {
        AnonymousClass26(int i, int i2, int i3, int i4) {
            super(i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (!Game.menuManager.getVisibleInGame_Wonder()) {
                InGame_Wonder.iProvinceID = this.iProvinceID;
                Game.menuManager.rebuildInGame_Wonder();
            } else {
                if (InGame_Wonder.iProvinceID == this.iProvinceID) {
                    Game.menuManager.setVisibleInGame_Wonder(false);
                    return;
                }
                InGame_Wonder.iProvinceID = this.iProvinceID;
                Game.menuManager.setVisibleInGame_Wonder(false);
                Game.menuManager.rebuildInGame_Wonder();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonWonderProvince, aoc.kingdoms.lukasz.menu_element.button.Button
        public void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f));
            Renderer.drawBox(spriteBatch, Images.statsRectBG, (getPosX() - CFG.PADDING) + i, (getPosY() - CFG.PADDING) + i2, (CFG.PADDING * 2) + getWidth(), (CFG.PADDING * 4) + getHeight() + CFG.TEXT_HEIGHT, 1.0f);
            spriteBatch.setColor(Color.WHITE);
            super.drawButtonBG(spriteBatch, i, i2, z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$27, reason: invalid class name */
    class AnonymousClass27 extends ButtonStatsRectIMG_Bonuses2_Value {
        int TurnID;

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$27$1, reason: invalid class name */
        class AnonymousClass1 extends MenuElement_Hover {
            AnonymousClass1(List list) {
                super(list);
            }

            @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover, aoc.kingdoms.lukasz.menu.Hover
            public void draw(SpriteBatch spriteBatch, int i, int i2) {
                super.draw(spriteBatch, i, (InGame_ProvinceInfo.HOVER_POSY + ((CFG.GAME_HEIGHT - InGame_ProvinceInfo.HOVER_POSY) / 2)) - (this.iHeight / 2));
            }

            @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover
            public int getMinPosX() {
                return InGame_ProvinceInfo.HOVER_POSX;
            }
        }

        AnonymousClass27(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
            this.TurnID = Game_Calendar.TURN_ID;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses2_Value, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Revolt"), CFG.FONT_BOLD, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.rebelsFlag, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new AnonymousClass1(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses2_Value, aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.TurnID != Game_Calendar.TURN_ID) {
                if (!Game.getProvince(InGame_ProvinceInfo.iProvinceID).isOccupied() || Game.getProvinceData(InGame_ProvinceInfo.iProvinceID).getOccupiedByCivID() >= 0) {
                    setText("---");
                    this.sText2 = "";
                    this.TurnID = Game_Calendar.TURN_ID;
                } else {
                    setText(Game.lang.get("DaysX", Game.revolutionManager.declareIndependence_TurnsLeft(InGame_ProvinceInfo.iProvinceID)) + ": ");
                    this.TurnID = Game_Calendar.TURN_ID;
                }
            }
            return super.getTextToDraw();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$28, reason: invalid class name */
    class AnonymousClass28 extends ButtonStatsRectIMG_Bonuses2_Value {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$28$1, reason: invalid class name */
        class AnonymousClass1 extends MenuElement_Hover {
            AnonymousClass1(List list) {
                super(list);
            }

            @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover, aoc.kingdoms.lukasz.menu.Hover
            public void draw(SpriteBatch spriteBatch, int i, int i2) {
                super.draw(spriteBatch, i, (InGame_ProvinceInfo.HOVER_POSY + ((CFG.GAME_HEIGHT - InGame_ProvinceInfo.HOVER_POSY) / 2)) - (this.iHeight / 2));
            }

            @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover
            public int getMinPosX() {
                return InGame_ProvinceInfo.HOVER_POSX;
            }
        }

        AnonymousClass28(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses2_Value, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SettlementProgress") + ": ", CFG.FONT_BOLD, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(CFG.getPrecision2(ColonizationManager.getSettlementEstablishmentProgress(InGame_ProvinceInfo.iProvinceID) * 100.0f, 10) + "%", CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.population, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game_Calendar.getDate_ByTurnID(Math.max(Game.getProvinceData9(InGame_ProvinceInfo.iProvinceID).getColonizationStartedTurnID() + GameValues.colonization.COLONIZATION_TIME, Game_Calendar.TURN_ID + 1)), "", Images.time, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("GrowthRate") + ": ", "+" + Game.getProvinceData9(InGame_ProvinceInfo.iProvinceID).getColonizationGrowthRateExtra() + "%", Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new AnonymousClass1(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses2_Value, aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.iValue != ((int) (ColonizationManager.getSettlementEstablishmentProgress(InGame_ProvinceInfo.iProvinceID) * 10000.0f))) {
                float settlementEstablishmentProgress = ColonizationManager.getSettlementEstablishmentProgress(InGame_ProvinceInfo.iProvinceID) * 100.0f;
                this.sText2 = CFG.getPrecision2(settlementEstablishmentProgress, 10) + "%";
                Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_BOLD_SMALL), this.sText2);
                this.iTextBonusW = (int) Renderer.glyphLayout.width;
                this.iValue = (int) (settlementEstablishmentProgress * 10000.0f);
            }
            return super.getTextToDraw();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$29, reason: invalid class name */
    class AnonymousClass29 extends TextIcon2_ProvinceIncome {
        AnonymousClass29(int i, String str, int i2, int i3, int i4, int i5, int i6) {
            super(i, str, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_ProvinceBonuses()) {
                Game.menuManager.setVisibleInGame_ProvinceBonuses(false, false);
                return;
            }
            InGame_ProvinceBonuses.iProvinceID = this.iProvinceID;
            Game.menuManager.rebuildInGame_ProvinceBonuses();
            Game.menuManager.setVisibleInGame_ProvinceBonuses(true, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverProvinceIncome(this.iProvinceID, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$3, reason: invalid class name */
    class AnonymousClass3 extends TextCores {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$3$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.HOVER_POSITIVE;
            }
        }

        AnonymousClass3(String str, List list, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, list, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getProvince(this.iProvinceID).getCivID() == Game.player.iCivID && Game.getProvince(this.iProvinceID).addCoreCreation()) {
                MenuManager menuManager = Game.menuManager;
                MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_ProvinceInfo.this.getPosX(), getPosY() + (getHeight() / 2) + InGame_ProvinceInfo.this.getPosY(), getWidth(), getHeight()));
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CORES;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$30, reason: invalid class name */
    class AnonymousClass30 extends TextIcon2_GrowthRate {
        AnonymousClass30(int i, String str, int i2, int i3, int i4, int i5, int i6) {
            super(i, str, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverPopulationGrowth(this.iProvinceID, true, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$31, reason: invalid class name */
    class AnonymousClass31 extends TextIcon2_Economy {
        AnonymousClass31(int i, String str, int i2, int i3, int i4, int i5, int i6) {
            super(i, str, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverEconomy(this.iProvinceID, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$32, reason: invalid class name */
    class AnonymousClass32 extends TextIcon_Resource {
        AnonymousClass32(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_GoodsMarket()) {
                Game.menuManager.setVisibleInGame_GoodsMarket(false);
            } else {
                InGame_GoodsMarket.iActiveCivID = Game.getProvince(InGame_ProvinceInfo.iProvinceID).getCivID() > 0 ? Game.getProvince(InGame_ProvinceInfo.iProvinceID).getCivID() : Game.player.iCivID;
                Game.menuManager.rebuildInGame_GoodsMarket();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Resource, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverResource(InGame_ProvinceInfo.iProvinceID, this.resourceID, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$33, reason: invalid class name */
    class AnonymousClass33 extends Text_Desc3 {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$33$1, reason: invalid class name */
        class AnonymousClass1 extends MenuElement_Hover {
            AnonymousClass1(List list) {
                super(list);
            }

            @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover, aoc.kingdoms.lukasz.menu.Hover
            public void draw(SpriteBatch spriteBatch, int i, int i2) {
                super.draw(spriteBatch, i, (InGame_ProvinceInfo.HOVER_POSY + ((CFG.GAME_HEIGHT - InGame_ProvinceInfo.HOVER_POSY) / 2)) - (this.iHeight / 2));
            }

            @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover
            public int getMinPosX() {
                return InGame_ProvinceInfo.HOVER_POSX;
            }
        }

        AnonymousClass33(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (ColonizationManager.establishSettlement(Game.player.iCivID, InGame_ProvinceInfo.iProvinceID, 0)) {
                InGame_Info.iCivID = Game.player.iCivID;
                InGame_Info.iCivID2 = 0;
                Game.menuManager.rebuildInGame_Info(Game.lang.get("SettlementEstablished") + ": " + Game.getProvince(InGame_ProvinceInfo.iProvinceID).getProvinceName(), Game.lang.get("Population") + ": " + CFG.getNumberWithSpaces("" + Game.getProvince(InGame_ProvinceInfo.iProvinceID).getPopulationTotal()));
                InGame_Info.imgID = Images.infoCrown;
                Game.menuManager.rebuildInGame_ProvinceInfo(true);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int numberOfSettlers = ColonizationManager.getNumberOfSettlers(Game.player.iCivID, InGame_ProvinceInfo.iProvinceID);
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("EstablishSettlement"), CFG.FONT_BOLD, numberOfSettlers > 0 ? Colors.HOVER_GOLD : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.populationGrowth, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Settlers") + ": ", CFG.getNumberWithSpaces("" + numberOfSettlers), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("ThePopulationOfTheProvinceWillBeEqualToTheNumberOfSettlers"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaximumNumberOfSettlers") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getNumberWithSpaces("" + (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE * GameValues.colonization.COLONIZATION_MAX_SETTLERS)), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.population, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new AnonymousClass1(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$34, reason: invalid class name */
    class AnonymousClass34 extends ButtonStatsRectIMG_Bonuses2_Value {
        AnonymousClass34(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$35, reason: invalid class name */
    class AnonymousClass35 extends ButtonGame {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$35$1, reason: invalid class name */
        class AnonymousClass1 extends MenuElement_Hover {
            AnonymousClass1(List list) {
                super(list);
            }

            @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover, aoc.kingdoms.lukasz.menu.Hover
            public void draw(SpriteBatch spriteBatch, int i, int i2) {
                super.draw(spriteBatch, i, (InGame_ProvinceInfo.HOVER_POSY + ((CFG.GAME_HEIGHT - InGame_ProvinceInfo.HOVER_POSY) / 2)) - (this.iHeight / 2));
            }

            @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover
            public int getMinPosX() {
                return InGame_ProvinceInfo.HOVER_POSX;
            }
        }

        AnonymousClass35(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).fGold < GameValues.colonization.ALLOW_COLONIZATION_BY_SPENDING_GOLD_COST) {
                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(GameValues.colonization.ALLOW_COLONIZATION_BY_SPENDING_GOLD_COST, 100), Images.gold);
            } else if (ColonizationManager.establishSettlement_Gold(Game.player.iCivID, InGame_ProvinceInfo.iProvinceID)) {
                Game.menuManager.rebuildInGame_ProvinceInfo(true);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("EstablishSettlement"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.populationGrowth, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Settlers") + ": ", CFG.getNumberWithSpaces("" + GameValues.colonization.ALLOW_COLONIZATION_BY_SPENDING_GOLD_SETTLERS), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Cost") + ": ", CFG.getPrecision2(GameValues.colonization.ALLOW_COLONIZATION_BY_SPENDING_GOLD_COST, 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new AnonymousClass1(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$36, reason: invalid class name */
    class AnonymousClass36 extends MenuTitleIMG_Flag_TextRight {
        AnonymousClass36(String str, String str2, boolean z, boolean z2, int i, String str3) {
            super(str, str2, z, z2, i, str3);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public void action() {
            if (Keyboard.keyboardActionType == Keyboard.KeyboardActionType.INGAME_RENAME_PROVINCE) {
                Game.keyboard.hideKeyboard();
                return;
            }
            if (!CFG.isDesktop() && !InGame_ProvinceInfo.this.confirmEditProvinceName) {
                InGame_ProvinceInfo.this.confirmEditProvinceName = true;
                Game.menuManager.addToastGold(Game.lang.get("Edit") + ": " + Game.lang.get("ProvinceName"), Images.provinces);
            } else {
                InGame_ProvinceInfo.renameProvince = Game.getProvince(InGame_ProvinceInfo.iProvinceID).getProvinceName();
                Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.INGAME_RENAME_PROVINCE, Game.getProvince(InGame_ProvinceInfo.iProvinceID).getProvinceName());
                Game.menuManager.addToastGold(Game.lang.get("ProvinceName") + ": " + Game.getProvince(InGame_ProvinceInfo.iProvinceID).getProvinceName(), Images.provinces);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_Flag
        public int getFlagCivID() {
            return Game.getProvince(InGame_ProvinceInfo.iProvinceID).getCivID();
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_Flag
        public String getText2() {
            return Keyboard.keyboardActionType == Keyboard.KeyboardActionType.INGAME_RENAME_PROVINCE ? InGame_ProvinceInfo.renameProvince + Keyboard.getKeyboardVerticalLine() : Game.getProvince(InGame_ProvinceInfo.iProvinceID).getProvinceName();
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_ProvinceInfo.lTime2;
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public void onHovered() {
            Game.menuManager.setOrderOfMenu_InGameProvinceInfo();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$37, reason: invalid class name */
    class AnonymousClass37 extends MenuElement_Hover {
        AnonymousClass37(List list) {
            super(list);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover, aoc.kingdoms.lukasz.menu.Hover
        public void draw(SpriteBatch spriteBatch, int i, int i2) {
            super.draw(spriteBatch, i, (InGame_ProvinceInfo.HOVER_POSY + ((CFG.GAME_HEIGHT - InGame_ProvinceInfo.HOVER_POSY) / 2)) - (this.iHeight / 2));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover
        public int getMinPosX() {
            return InGame_ProvinceInfo.HOVER_POSX;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$38, reason: invalid class name */
    class AnonymousClass38 extends MenuElement_Hover {
        AnonymousClass38(List list, boolean z) {
            super((List<MenuElement_HoverElement>) list, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover, aoc.kingdoms.lukasz.menu.Hover
        public void draw(SpriteBatch spriteBatch, int i, int i2) {
            super.draw(spriteBatch, i, (InGame_ProvinceInfo.HOVER_POSY + ((CFG.GAME_HEIGHT - InGame_ProvinceInfo.HOVER_POSY) / 2)) - (this.iHeight / 2));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover
        public int getMinPosX() {
            return InGame_ProvinceInfo.HOVER_POSX;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$39, reason: invalid class name */
    class AnonymousClass39 extends MenuElement_Hover {
        AnonymousClass39(List list) {
            super(list);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover, aoc.kingdoms.lukasz.menu.Hover
        public void draw(SpriteBatch spriteBatch, int i, int i2) {
            super.draw(spriteBatch, i, (InGame_ProvinceInfo.HOVER_POSY + ((CFG.GAME_HEIGHT - InGame_ProvinceInfo.HOVER_POSY) / 2)) - (this.iHeight / 2));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover
        public int getMinPosX() {
            return InGame_ProvinceInfo.HOVER_POSX;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonStatsRectIMG {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_FORTS) {
                this.menuElementHover = null;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverFort(InGame_ProvinceInfo.iProvinceID, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setIsHovered(boolean z) {
            super.setIsHovered(z);
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_FORTS && !z && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_PROVINCE_FORTS_HOVER) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateHovered() {
            super.updateHovered();
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_FORTS && HoverManager.hoverTime + GameValues.mapModes.HOVER_TIME <= CFG.currentTimeMillis && getIsHovered() && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DEFAULT) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_PROVINCE_FORTS_HOVER);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$40, reason: invalid class name */
    class AnonymousClass40 extends MenuElement_Hover {
        AnonymousClass40(List list) {
            super(list);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover, aoc.kingdoms.lukasz.menu.Hover
        public void draw(SpriteBatch spriteBatch, int i, int i2) {
            super.draw(spriteBatch, i, (InGame_ProvinceInfo.HOVER_POSY + ((CFG.GAME_HEIGHT - InGame_ProvinceInfo.HOVER_POSY) / 2)) - (this.iHeight / 2));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover
        public int getMinPosX() {
            return InGame_ProvinceInfo.HOVER_POSX;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$41, reason: invalid class name */
    class AnonymousClass41 extends MenuElement_Hover {
        AnonymousClass41(List list) {
            super(list);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover, aoc.kingdoms.lukasz.menu.Hover
        public void draw(SpriteBatch spriteBatch, int i, int i2) {
            super.draw(spriteBatch, i, (InGame_ProvinceInfo.HOVER_POSY + ((CFG.GAME_HEIGHT - InGame_ProvinceInfo.HOVER_POSY) / 2)) - (this.iHeight / 2));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover
        public int getMinPosX() {
            return InGame_ProvinceInfo.HOVER_POSX;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$42, reason: invalid class name */
    class AnonymousClass42 extends MenuElement_Hover {
        AnonymousClass42(List list) {
            super(list);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover, aoc.kingdoms.lukasz.menu.Hover
        public void draw(SpriteBatch spriteBatch, int i, int i2) {
            super.draw(spriteBatch, i, (InGame_ProvinceInfo.HOVER_POSY + ((CFG.GAME_HEIGHT - InGame_ProvinceInfo.HOVER_POSY) / 2)) - (this.iHeight / 2));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover
        public int getMinPosX() {
            return InGame_ProvinceInfo.HOVER_POSX;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$43, reason: invalid class name */
    class AnonymousClass43 extends MenuElement_Hover {
        AnonymousClass43(List list) {
            super(list);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover, aoc.kingdoms.lukasz.menu.Hover
        public void draw(SpriteBatch spriteBatch, int i, int i2) {
            super.draw(spriteBatch, i, (InGame_ProvinceInfo.HOVER_POSY + ((CFG.GAME_HEIGHT - InGame_ProvinceInfo.HOVER_POSY) / 2)) - (this.iHeight / 2));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover
        public int getMinPosX() {
            return InGame_ProvinceInfo.HOVER_POSX;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$44, reason: invalid class name */
    class AnonymousClass44 extends MenuElement_Hover {
        AnonymousClass44(List list) {
            super(list);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover, aoc.kingdoms.lukasz.menu.Hover
        public void draw(SpriteBatch spriteBatch, int i, int i2) {
            super.draw(spriteBatch, i, (InGame_ProvinceInfo.HOVER_POSY + ((CFG.GAME_HEIGHT - InGame_ProvinceInfo.HOVER_POSY) / 2)) - (this.iHeight / 2));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover
        public int getMinPosX() {
            return InGame_ProvinceInfo.HOVER_POSX;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$45, reason: invalid class name */
    class AnonymousClass45 extends MenuElement_Hover {
        AnonymousClass45(List list) {
            super(list);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover, aoc.kingdoms.lukasz.menu.Hover
        public void draw(SpriteBatch spriteBatch, int i, int i2) {
            super.draw(spriteBatch, i, (InGame_ProvinceInfo.HOVER_POSY + ((CFG.GAME_HEIGHT - InGame_ProvinceInfo.HOVER_POSY) / 2)) - (this.iHeight / 2));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover
        public int getMinPosX() {
            return InGame_ProvinceInfo.HOVER_POSX;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$46, reason: invalid class name */
    class AnonymousClass46 extends MenuElement_Hover {
        AnonymousClass46(List list) {
            super(list);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover, aoc.kingdoms.lukasz.menu.Hover
        public void draw(SpriteBatch spriteBatch, int i, int i2) {
            super.draw(spriteBatch, i, (InGame_ProvinceInfo.HOVER_POSY + ((CFG.GAME_HEIGHT - InGame_ProvinceInfo.HOVER_POSY) / 2)) - (this.iHeight / 2));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover
        public int getMinPosX() {
            return InGame_ProvinceInfo.HOVER_POSX;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$47, reason: invalid class name */
    class AnonymousClass47 extends MenuElement_Hover {
        AnonymousClass47(List list) {
            super(list);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover, aoc.kingdoms.lukasz.menu.Hover
        public void draw(SpriteBatch spriteBatch, int i, int i2) {
            super.draw(spriteBatch, i, (InGame_ProvinceInfo.HOVER_POSY + ((CFG.GAME_HEIGHT - InGame_ProvinceInfo.HOVER_POSY) / 2)) - (this.iHeight / 2));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover
        public int getMinPosX() {
            return InGame_ProvinceInfo.HOVER_POSX;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$48, reason: invalid class name */
    class AnonymousClass48 extends MenuElement_Hover {
        AnonymousClass48(List list) {
            super(list);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover, aoc.kingdoms.lukasz.menu.Hover
        public void draw(SpriteBatch spriteBatch, int i, int i2) {
            super.draw(spriteBatch, i, (InGame_ProvinceInfo.HOVER_POSY + ((CFG.GAME_HEIGHT - InGame_ProvinceInfo.HOVER_POSY) / 2)) - (this.iHeight / 2));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover
        public int getMinPosX() {
            return InGame_ProvinceInfo.HOVER_POSX;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$49, reason: invalid class name */
    class AnonymousClass49 extends MenuElement_Hover {
        AnonymousClass49(List list) {
            super(list);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover, aoc.kingdoms.lukasz.menu.Hover
        public void draw(SpriteBatch spriteBatch, int i, int i2) {
            super.draw(spriteBatch, i, (InGame_ProvinceInfo.HOVER_POSY + ((CFG.GAME_HEIGHT - InGame_ProvinceInfo.HOVER_POSY) / 2)) - (this.iHeight / 2));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover
        public int getMinPosX() {
            return InGame_ProvinceInfo.HOVER_POSX;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$5, reason: invalid class name */
    class AnonymousClass5 extends TextIcon2_ProvinceIncome {
        AnonymousClass5(int i, String str, int i2, int i3, int i4, int i5, int i6) {
            super(i, str, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_ProvinceBonuses()) {
                Game.menuManager.setVisibleInGame_ProvinceBonuses(false, false);
                return;
            }
            InGame_ProvinceBonuses.iProvinceID = this.iProvinceID;
            Game.menuManager.rebuildInGame_ProvinceBonuses();
            Game.menuManager.setVisibleInGame_ProvinceBonuses(true, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_PROVINCE_INCOME) {
                this.menuElementHover = null;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverProvinceIncome(this.iProvinceID, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setIsHovered(boolean z) {
            super.setIsHovered(z);
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_PROVINCE_INCOME && !z && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_PROVINCE_PROVINCE_INCOME_HOVER) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateHovered() {
            super.updateHovered();
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_PROVINCE_INCOME && HoverManager.hoverTime + GameValues.mapModes.HOVER_TIME <= CFG.currentTimeMillis && getIsHovered() && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DEFAULT) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_PROVINCE_PROVINCE_INCOME_HOVER);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$6, reason: invalid class name */
    class AnonymousClass6 extends TextIcon2_Tax {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$6$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.HOVER_YELLOW;
            }
        }

        AnonymousClass6(int i, String str, int i2, int i3, int i4, int i5, int i6) {
            super(i, str, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_ProvinceInfo.actionTax(this.iProvinceID)) {
                MenuManager menuManager = Game.menuManager;
                MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_ProvinceInfo.this.getPosX(), getPosY() + (getHeight() / 2) + InGame_ProvinceInfo.this.getPosY(), getWidth(), getHeight()));
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_PROVINCE_TAX);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverTaxEfficiency(this.iProvinceID, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return Game.soundsManager.getCoin();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Tax, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setIsHovered(boolean z) {
            super.setIsHovered(z);
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_TAX_EFFICIENCY && !z && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_PROVINCE_TAX_EFFICIENCY_HOVER) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateHovered() {
            super.updateHovered();
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_TAX_EFFICIENCY && HoverManager.hoverTime + GameValues.mapModes.HOVER_TIME <= CFG.currentTimeMillis && getIsHovered() && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DEFAULT) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_PROVINCE_TAX_EFFICIENCY_HOVER);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$7, reason: invalid class name */
    class AnonymousClass7 extends TextIcon2_Economy {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$7$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.COLOR_TEXT_ECONOMY;
            }
        }

        AnonymousClass7(int i, String str, int i2, int i3, int i4, int i5, int i6) {
            super(i, str, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_ProvinceInfo.actionEconomy(this.iProvinceID)) {
                MenuManager menuManager = Game.menuManager;
                MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_ProvinceInfo.this.getPosX(), getPosY() + (getHeight() / 2) + InGame_ProvinceInfo.this.getPosY(), getWidth(), getHeight()));
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_ECONOMY);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverEconomy(this.iProvinceID, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return Game.soundsManager.getEconomy();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Economy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setIsHovered(boolean z) {
            super.setIsHovered(z);
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_ECONOMY && !z && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_PROVINCE_ECONOMY_HOVER) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateHovered() {
            super.updateHovered();
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_ECONOMY && HoverManager.hoverTime + GameValues.mapModes.HOVER_TIME <= CFG.currentTimeMillis && getIsHovered() && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DEFAULT) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_PROVINCE_ECONOMY_HOVER);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$8, reason: invalid class name */
    class AnonymousClass8 extends TextIcon2_Manpower {
        AnonymousClass8(int i, String str, int i2, int i3, int i4, int i5, int i6) {
            super(i, str, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_ProvinceInfo.actionManpower(this.iProvinceID)) {
                MenuManager menuManager = Game.menuManager;
                MenuManager.addClickAnimation(new ClickAnimation(getPosX() + (getWidth() / 2) + InGame_ProvinceInfo.this.getPosX(), getPosY() + (getHeight() / 2) + InGame_ProvinceInfo.this.getPosY(), getWidth(), getHeight()));
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_MANPOWER) {
                this.menuElementHover = null;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverManpower(this.iProvinceID, true, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Manpower
        public int getImageID() {
            return Game_Calendar.IMG_MANPOWER;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return Game.soundsManager.getClickIncreaseManpower();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Manpower, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setIsHovered(boolean z) {
            super.setIsHovered(z);
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_MANPOWER && !z && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_PROVINCE_MANPOWER_HOVER) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateHovered() {
            super.updateHovered();
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_MANPOWER && HoverManager.hoverTime + GameValues.mapModes.HOVER_TIME <= CFG.currentTimeMillis && getIsHovered() && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DEFAULT) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_PROVINCE_MANPOWER_HOVER);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo$9, reason: invalid class name */
    class AnonymousClass9 extends ButtonStatsRectIMG_ProvinceIncome {
        AnonymousClass9(int i, String str, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(i, str, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_ProvinceBonuses()) {
                Game.menuManager.setVisibleInGame_ProvinceBonuses(false, false);
                return;
            }
            InGame_ProvinceBonuses.iProvinceID = this.iProvinceID;
            Game.menuManager.rebuildInGame_ProvinceBonuses();
            Game.menuManager.setVisibleInGame_ProvinceBonuses(true, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_PROVINCE_INCOME) {
                this.menuElementHover = null;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverProvinceIncome(this.iProvinceID, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setIsHovered(boolean z) {
            super.setIsHovered(z);
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_PROVINCE_INCOME && !z && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_PROVINCE_PROVINCE_INCOME_HOVER) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateHovered() {
            super.updateHovered();
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_PROVINCE_INCOME && HoverManager.hoverTime + GameValues.mapModes.HOVER_TIME <= CFG.currentTimeMillis && getIsHovered() && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DEFAULT) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_PROVINCE_PROVINCE_INCOME_HOVER);
            }
        }
    }

    public InGame_ProvinceInfo() {
        int i;
        String str;
        String string;
        LanguageManager languageManager;
        String str2;
        int i2;
        String str3;
        int width;
        String str4;
        this.statsElementsID = 0;
        this.pieElementID = 0;
        this.imageOverID = 0;
        ArrayList arrayList = new ArrayList();
        if (Game.iActiveProvince >= 0) {
            if (iProvinceID != Game.iActiveProvince) {
                lTime2 = CFG.currentTimeMillis;
            }
            int i3 = Game.iActiveProvince;
            iProvinceID = i3;
            if (Game.getProvince(i3).getCivID() == 0) {
                this.imageOverID = Images.provinceInfoNeutralOver;
            } else if (Game.getProvince(iProvinceID).isCapital) {
                this.imageOverID = Images.provinceInfoOverCapital;
            } else {
                int i4 = iProvinceID % 3;
                if (i4 == 1) {
                    this.imageOverID = Images.provinceInfoOver1;
                } else if (i4 != 2) {
                    this.imageOverID = Images.provinceInfoOver;
                } else {
                    this.imageOverID = Images.provinceInfoOver2;
                }
            }
        } else {
            iProvinceID = 0;
            this.imageOverID = Images.provinceInfoOver1;
        }
        Game.addSimpleTask(new AnonymousClass1("loadProvinceIMG", iProvinceID));
        int i5 = CFG.PADDING * 2;
        ImageManager.getImage(Images.title580).getHeight();
        int width2 = ImageManager.getImage(Images.title580).getWidth();
        int i6 = CFG.GAME_HEIGHT;
        int i7 = CFG.PADDING;
        int i8 = CFG.PADDING;
        int width3 = ImageManager.getImage(Images.terrainFrame).getWidth() + CFG.PADDING;
        int height = ImageManager.getImage(Images.terrainFrame).getHeight();
        int width4 = (((width2 - Images.boxTitleBORDERWIDTH) - ImageManager.getImage(Images.terrainFrame).getWidth()) - (CFG.PADDING * 5)) / 4;
        arrayList.add(new AnonymousClass2(iProvinceID, 0, 0));
        ArrayList arrayList2 = new ArrayList();
        for (int i9 = 0; i9 < Game.getProvince(iProvinceID).iCoresSize; i9++) {
            arrayList2.add(Integer.valueOf(Game.getProvince(iProvinceID).getCore(i9)));
        }
        int i10 = CFG.PADDING;
        if (Game.getProvince(iProvinceID).getCivID() > 0) {
            String str5 = Game.lang.get("Cores").substring(0, Math.min(8, Game.lang.get("Cores").length())) + ":";
            int width5 = (((width2 - Images.boxTitleBORDERWIDTH) - ImageManager.getImage(Images.terrainFrame).getWidth()) - (CFG.PADDING * 3)) - width4;
            int i11 = CFG.TEXT_HEIGHT + (CFG.PADDING * 2);
            int i12 = iProvinceID;
            str = "";
            arrayList.add(new AnonymousClass3(str5, arrayList2, width3, i10, width5, i11, i12, !Game.getProvince(i12).haveACore));
            arrayList.add(new AnonymousClass4(str + Game.getProvince(iProvinceID).getFortLevel(), Images.fort, arrayList.get(arrayList.size() - 1).getPosX() + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, i10, width4, CFG.TEXT_HEIGHT + (CFG.PADDING * 2), ImageManager.getImage(Images.fort).getWidth()));
            int height2 = i10 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            if (Game.getProvince(iProvinceID).getCivID() == Game.player.iCivID || GameValues.province.PROVINCE_VIEW_USE_SAME_BUTTONS) {
                i2 = width2;
                int height3 = (height - arrayList.get(arrayList.size() - 1).getHeight()) - (CFG.PADDING * 2);
                arrayList.add(new AnonymousClass5(iProvinceID, str + CFG.getPrecision2(Game.getProvince(iProvinceID).getProvinceIncome() - Game.getProvince(iProvinceID).fProvinceMaintenance, 100), Images.gold, width3, height2, width4, height3));
                int i13 = width3 + width4 + CFG.PADDING;
                str3 = "%";
                arrayList.add(new AnonymousClass6(iProvinceID, str + CFG.getPrecision2(Game.getProvince(iProvinceID).getTaxEfficiencyWithBonuses(), 10) + "%", Images.tax, i13, height2, width4, height3));
                int i14 = i13 + width4 + CFG.PADDING;
                arrayList.add(new AnonymousClass7(iProvinceID, str + CFG.getPrecision2(Game.getProvince(iProvinceID).getEconomyWithBonuses(), 10), Game_Calendar.IMG_ECONOMY, i14, height2, width4, height3));
                arrayList.add(new AnonymousClass8(iProvinceID, "1", Game_Calendar.IMG_MANPOWER, i14 + width4 + CFG.PADDING, height2, width4, height3));
                int i15 = CFG.PADDING;
            } else {
                int height4 = ((height - arrayList.get(arrayList.size() - 1).getHeight()) - (CFG.PADDING * 3)) / 2;
                int width6 = (((width2 - Images.boxTitleBORDERWIDTH) - ImageManager.getImage(Images.terrainFrame).getWidth()) - (CFG.PADDING * 3)) / 2;
                i2 = width2;
                arrayList.add(new AnonymousClass9(iProvinceID, str + Game.getProvince(iProvinceID).getFortLevel(), Images.gold, width3, height2, width6, height4, ImageManager.getImage(Images.gold).getWidth()));
                int i16 = height2 + height4;
                arrayList.add(new AnonymousClass10(iProvinceID, "1", Images.tax, width3, i16 + CFG.PADDING, width6, height4, ImageManager.getImage(Images.gold).getWidth()));
                int i17 = width3 + width6 + CFG.PADDING;
                arrayList.add(new AnonymousClass11(iProvinceID, "1", Game_Calendar.IMG_ECONOMY, i17, height2, width6, height4, ImageManager.getImage(Images.gold).getWidth()));
                arrayList.add(new AnonymousClass12(iProvinceID, "1", Game_Calendar.IMG_MANPOWER, i17, i16 + CFG.PADDING, width6, height4, ImageManager.getImage(Images.gold).getWidth()));
                str3 = "%";
            }
            this.statsElementsID = arrayList.size() - 1;
            int height5 = arrayList.get(0).getHeight() + CFG.PADDING;
            PieChart_Data pieChart_Data = new PieChart_Data();
            for (int i18 = 0; i18 < Game.getProvince(iProvinceID).getPopulationSize(); i18++) {
                pieChart_Data.addPieChartValues(new PieChart_Value(Game.getProvince(iProvinceID).getPopulationCivID(i18), Game.getProvince(iProvinceID).getPopulationID(i18)));
            }
            int secondLineH = getSecondLineH();
            arrayList.add(new AnonymousClass13(iProvinceID, "", Images.population, i5, height5, width4 + (width4 / 4), secondLineH));
            int width7 = i5 + arrayList.get(arrayList.size() - 1).getWidth() + (CFG.PADDING * 2);
            arrayList.add(new AnonymousClass14(width7, height5 + CFG.PADDING, secondLineH - (CFG.PADDING * 2), secondLineH - (CFG.PADDING * 2), pieChart_Data, null));
            this.pieElementID = arrayList.size() - 1;
            int width8 = width7 + arrayList.get(arrayList.size() - 1).getWidth() + (CFG.PADDING * 2);
            int width9 = ((ImageManager.getImage(Images.terrainFrame).getWidth() - width8) - CFG.PADDING) / 2;
            String str6 = str3;
            arrayList.add(new AnonymousClass15(iProvinceID, str + CFG.getPrecision2(Game.getProvince(iProvinceID).getGrowthRateWithBonuses(), 10) + str6, Images.populationGrowth, width8, height5, width9, secondLineH));
            int width10 = width8 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            arrayList.add(new AnonymousClass16(Game.religionManager.getReligion(Game.getProvince(iProvinceID).getReligion()).Name, Game.getProvince(iProvinceID).getReligion(), width10, height5, width9, secondLineH, iProvinceID));
            int width11 = width10 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            arrayList.add(new AnonymousClass17(iProvinceID, "", Images.revolutionRisk, width11, height5, width4, secondLineH));
            int width12 = width11 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            arrayList.add(new AnonymousClass18(iProvinceID, "", Images.infrastructure, width12, height5, width4, secondLineH));
            int width13 = width12 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            boolean z = Game.getProvince(iProvinceID).getResourceID() >= 0 && Game.getCiv(Game.getProvince(iProvinceID).getCivID()).getTechResearched(ResourcesManager.lResources.get(Game.getProvince(iProvinceID).getResourceID()).RequiredTechID);
            int i19 = width4 * 2;
            arrayList.add(new AnonymousClass19(ResourcesManager.getResourceName(Game.getProvince(iProvinceID).getResourceID()), Game.getProvince(iProvinceID).getResourceID(), width13, height5, (CFG.PADDING + i19) - (z ? CFG.TEXT_HEIGHT_SMALL + (CFG.PADDING * 3) : 0), secondLineH));
            int width14 = width13 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            if (z) {
                int i20 = iProvinceID;
                float monthlyIncome = ResourcesManager.getMonthlyIncome(i20, Game.getProvince(i20).getResourceID());
                arrayList.add(new AnonymousClass20(str + CFG.getPrecision2(monthlyIncome, monthlyIncome >= 100.0f ? 10 : 100), Images.gold, iProvinceID, width14, height5, CFG.TEXT_HEIGHT_SMALL + (CFG.PADDING * 2), secondLineH));
            }
            int size = arrayList.size();
            int height6 = 0;
            for (int i21 = 0; i21 < size; i21++) {
                if (height6 < arrayList.get(i21).getPosY() + arrayList.get(i21).getHeight() + CFG.PADDING) {
                    height6 = arrayList.get(i21).getPosY() + arrayList.get(i21).getHeight() + CFG.PADDING;
                }
            }
            if (Game.getCiv(Game.player.iCivID).getNukes() > 0) {
                arrayList.add(new AnonymousClass21(Game.lang.get("Nuke"), Images.nuke, i5, height6, width4, ImageManager.getImage(Images.buildingsFrameSmall).getHeight() + CFG.TEXT_HEIGHT + (CFG.PADDING * 4)));
                width = i5 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            } else {
                width = i5;
            }
            int i22 = width;
            arrayList.add(new AnonymousClass22("", Images.loot, i22, height6 + ImageManager.getImage(Images.buildingsFrameSmall).getHeight(), i19 + CFG.PADDING, CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ImageManager.getImage(Images.loot).getWidth(), iProvinceID));
            int i23 = height6;
            arrayList.add(new AnonymousClass23(str + CFG.getPrecision2(Game.getProvince(iProvinceID).fProvinceValue, 10), Images.victoryPoints, i22, i23, width4, ImageManager.getImage(Images.buildingsFrameSmall).getHeight() - CFG.PADDING));
            int width15 = width + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            arrayList.add(new AnonymousClass24(str + CFG.getPrecision2(Game.getProvince(iProvinceID).getDevastation() * 100.0f, 100) + str6, Images.devastation, width15, i23, width4, ImageManager.getImage(Images.buildingsFrameSmall).getHeight() - CFG.PADDING, iProvinceID));
            int width16 = width15 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            if (Game.getProvince(iProvinceID).wonderID >= 0) {
                int i24 = width16 + CFG.PADDING;
                arrayList.add(new AnonymousClass25(WondersManager.wonders.get(Game.getProvince(iProvinceID).wonderID).Name, -1, i24, CFG.PADDING + height6 + ImageManager.getImage(Images.wonderFrame).getHeight(), ImageManager.getImage(Images.wonderFrame).getWidth(), CFG.TEXT_HEIGHT + (CFG.PADDING * 2)));
                arrayList.add(new AnonymousClass26(i24, height6 + CFG.PADDING, Game.getProvince(iProvinceID).wonderID, iProvinceID));
                width16 = i24 + arrayList.get(arrayList.size() - 1).getWidth() + (CFG.PADDING * 2);
            }
            InGame_ProvinceInfoBuildings.mPosX = width16;
            InGame_ProvinceInfoBuildings.mPosY = height6;
            int i25 = i2;
            InGame_ProvinceInfoBuildings.mWidth = ((i25 - width16) - Images.boxTitleBORDERWIDTH) - CFG.PADDING;
            if (!Game.getProvince(iProvinceID).isOccupied() || Game.getProvinceData(iProvinceID).getOccupiedByCivID() >= 0) {
                str4 = ": ";
            } else {
                int height7 = height6 + ImageManager.getImage(Images.buildingsFrameSmall).getHeight() + CFG.TEXT_HEIGHT + (CFG.PADDING * 4) + CFG.PADDING;
                str4 = ": ";
                arrayList.add(new AnonymousClass27(Game.lang.get("DaysX", Game.revolutionManager.declareIndependence_TurnsLeft(iProvinceID)) + ": ", Game.lang.get("Liberation"), Images.revolutionRisk, i5, height7, (i25 - (i5 * 2)) - Images.boxTitleBORDERWIDTH, CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ImageManager.getImage(Images.revolutionRisk).getWidth()));
                height6 = height7 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (Game.getProvinceData9(iProvinceID).getColonizationStartedTurnID() >= 0) {
                arrayList.add(new AnonymousClass28(Game.lang.get("SettlementProgress") + str4, CFG.getPrecision2(ColonizationManager.getSettlementEstablishmentProgress(iProvinceID) * 100.0f, 10) + str6, Images.population, i5, height6 + ImageManager.getImage(Images.buildingsFrameSmall).getHeight() + CFG.TEXT_HEIGHT + (CFG.PADDING * 4) + CFG.PADDING, (i25 - (i5 * 2)) - Images.boxTitleBORDERWIDTH, CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ImageManager.getImage(Images.population).getWidth()));
                arrayList.get(arrayList.size() - 1).getHeight();
                int i26 = CFG.PADDING;
            }
            i = i25;
        } else {
            i = width2;
            int width17 = ((((i - ImageManager.getImage(Images.terrainFrame).getWidth()) - Images.boxTitleBORDERWIDTH) - (CFG.PADDING * 2)) - (CFG.PADDING * 4)) / 4;
            int height8 = ImageManager.getImage(Images.terrainFrame).getHeight() - CFG.PADDING;
            int width18 = ImageManager.getImage(Images.terrainFrame).getWidth() + CFG.PADDING;
            arrayList.add(new AnonymousClass29(iProvinceID, "" + CFG.getPrecision2(Game.getProvince(iProvinceID).getProvinceIncome() - Game.getProvince(iProvinceID).fProvinceMaintenance, 100), Images.gold, width18, i10, width17, height8));
            int width19 = width18 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            arrayList.add(new AnonymousClass30(iProvinceID, "" + CFG.getPrecision2(Game.getProvince(iProvinceID).getGrowthRateWithBonuses(), 10) + "%", Images.populationGrowth, width19, CFG.PADDING, width17, height8));
            int width20 = width19 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            arrayList.add(new AnonymousClass31(iProvinceID, "" + CFG.getPrecision2(Game.getProvince(iProvinceID).getEconomyWithBonuses(), 10), Game_Calendar.IMG_ECONOMY, width20, i10, width17, height8));
            arrayList.add(new AnonymousClass32(ResourcesManager.getResourceName(Game.getProvince(iProvinceID).getResourceID()), Game.getProvince(iProvinceID).getResourceID(), width20 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, i10, width17, height8));
            arrayList.get(arrayList.size() - 1).getWidth();
            int i27 = CFG.PADDING;
            int posY = arrayList.get(0).getPosY() + arrayList.get(0).getHeight() + CFG.PADDING;
            int i28 = i - (i5 * 2);
            arrayList.add(new AnonymousClass33(Game.lang.get("ColonizationTutorialText") + " " + Game.lang.get("ThePopulationOfTheProvinceWillBeEqualToTheNumberOfSettlers"), i5, posY, i28 - Images.boxTitleBORDERWIDTH, getSecondLineH() + CFG.PADDING + ImageManager.getImage(Images.buildingsFrameSmall).getHeight() + CFG.TEXT_HEIGHT + (CFG.PADDING * 4)));
            if (GameValues.colonization.ALLOW_COLONIZATION_BY_SPENDING_GOLD || (GameValues.colonization.ALLOW_COLONIZATION_BY_SPENDING_GOLD_PLAYER_TRIBAL && Game.ideologiesManager.getIdeology(Game.getCiv(Game.player.iCivID).getIdeologyID()).TRIBAL)) {
                int height9 = posY + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i29 = ((i28 - Images.boxTitleBORDERWIDTH) - CFG.PADDING) / 2;
                int i30 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
                str = "";
                arrayList.add(new AnonymousClass34(Game.lang.get("Cost") + ": ", "" + CFG.getPrecision2(GameValues.colonization.ALLOW_COLONIZATION_BY_SPENDING_GOLD_COST, 100), Images.gold, i5, height9, i29, i30, ImageManager.getImage(Images.population).getWidth()));
                arrayList.add(new AnonymousClass35(Game.lang.get("EstablishSettlement"), CFG.FONT_REGULAR, -1, i5 + i29 + CFG.PADDING, height9, i29, i30, true));
                arrayList.get(arrayList.size() - 1).getHeight();
                int i31 = CFG.PADDING;
            } else {
                str = "";
            }
        }
        int size2 = arrayList.size();
        int posY2 = 0;
        for (int i32 = 0; i32 < size2; i32++) {
            if (posY2 < arrayList.get(i32).getPosY() + arrayList.get(i32).getHeight() + CFG.PADDING) {
                posY2 = arrayList.get(i32).getPosY() + arrayList.get(i32).getHeight() + CFG.PADDING;
            }
        }
        int iMax = Math.max(240, posY2);
        int i33 = CFG.GAME_HEIGHT - iMax;
        InGame_ProvinceInfoBuildings.mPosY += i33;
        arrayList.add(new Empty(0, 0, i, Math.max(posY2, iMax)));
        menuPosY = i33;
        menuW = i;
        HOVER_POSX = 0 + i + Images.boxTitleBORDERWIDTH + CFG.PADDING;
        HOVER_POSY = i33;
        String provinceName = Game.getProvince(iProvinceID).getProvinceName();
        if (Game.getProvince(iProvinceID).getWasteland() < 0) {
            if (Game.getProvince(iProvinceID).getCivID() == 0) {
                languageManager = Game.lang;
                str2 = "UncolonizedLand";
            } else {
                string = new StringBuilder().append(Game.getCiv(Game.getProvince(iProvinceID).getCivID()).getCivName()).append(Game.getProvince(iProvinceID).isOccupied() ? " - " + Game.lang.get("OccupiedByX", Game.getProvinceData(iProvinceID).getOccupiedByCivID() < 0 ? Game.lang.get("Rebels") : Game.getCiv(Game.getProvinceData(iProvinceID).getOccupiedByCivID()).getCivName()) : str).toString();
            }
            initMenu(new AnonymousClass36(provinceName, string, false, false, Images.title580, Game.mapCities.getProvinceCityTitle(iProvinceID)), 0, i33, i, iMax, arrayList, false, true);
        }
        languageManager = Game.lang;
        str2 = "Wasteland";
        string = languageManager.get(str2);
        initMenu(new AnonymousClass36(provinceName, string, false, false, Images.title580, Game.mapCities.getProvinceCityTitle(iProvinceID)), 0, i33, i, iMax, arrayList, false, true);
    }

    public static boolean actionEconomy(int i) {
        if (Game.getProvince(i).getCivID() != Game.player.iCivID && Game.getCiv(Game.getProvince(i).getCivID()).getPuppetOfCivID() != Game.player.iCivID) {
            return false;
        }
        if (!AA_KeyManager.SHIFT_HOLD && !AA_KeyManager.CTRL_HOLD) {
            if (Game.canInvestInEconomy(i)) {
                Game.menuManager.addToastGold(Game.lang.get("IncreasePopulationGrowthRate"), Images.populationUp);
                Game.menuManager.addToastInsufficient(Game.lang.get("MaximumEconomy") + ": ", CFG.getPrecision2(Game.getProvince(i).getEconomyWithBonuses(), 10) + " / " + CFG.getPrecision2(Game.getMaxEconomy(i), 10), Game_Calendar.IMG_ECONOMY);
                return false;
            }
            if (Game.getCiv(Game.player.iCivID).fLegacy < Game.getInvestCost_Legacy(i)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + ": ", CFG.getPrecision2(Game.getInvestCost_Legacy(i), 100), Images.legacy);
                return false;
            }
            if (Game.getProvince(i).addInvestInProvince(Game.player.iCivID)) {
                ProvinceDraw.addProvinceDot_Economy(i);
                return true;
            }
            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getInvestCost(i), 100), Images.gold);
            return false;
        }
        boolean z = false;
        for (int i2 = 0; i2 < 5; i2++) {
            if (Game.canInvestInEconomy(i)) {
                Game.menuManager.addToastGold(Game.lang.get("IncreasePopulationGrowthRate"), Images.populationUp);
                Game.menuManager.addToastInsufficient(Game.lang.get("MaximumEconomy") + ": ", CFG.getPrecision2(Game.getProvince(i).getEconomyWithBonuses(), 10) + " / " + CFG.getPrecision2(Game.getMaxEconomy(i), 10), Game_Calendar.IMG_ECONOMY);
                break;
            }
            if (Game.getCiv(Game.player.iCivID).fLegacy < Game.getInvestCost_Legacy(i)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + ": ", CFG.getPrecision2(Game.getInvestCost_Legacy(i), 100), Images.legacy);
            } else {
                if (!Game.getProvince(i).addInvestInProvince(Game.player.iCivID)) {
                    Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getInvestCost(i), 100), Images.gold);
                    break;
                }
                ProvinceDraw.addProvinceDot_Economy(i);
                z = true;
            }
        }
        return z;
    }

    public static boolean actionGrowthRate(int i) {
        int i2 = 0;
        if (Game.getProvince(i).getCivID() != Game.player.iCivID && Game.getCiv(Game.getProvince(i).getCivID()).getPuppetOfCivID() != Game.player.iCivID) {
            return false;
        }
        if (!AA_KeyManager.SHIFT_HOLD && !AA_KeyManager.CTRL_HOLD) {
            if (Game.getProvince(i).addIncreaseGrowthRateInProvince(Game.player.iCivID)) {
                ProvinceDraw.addProvinceDot_GrowthRate(i);
                return true;
            }
            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getIncreaseGrowthRateCost(i), 100), Images.gold);
            return false;
        }
        boolean z = false;
        while (i2 < 5) {
            if (!Game.getProvince(i).addIncreaseGrowthRateInProvince(Game.player.iCivID)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getIncreaseGrowthRateCost(i), 100), Images.gold);
                break;
            }
            ProvinceDraw.addProvinceDot_GrowthRate(i);
            i2++;
            z = true;
        }
        return z;
    }

    public static boolean actionInfrastructure(int i) {
        if ((Game.getProvince(i).getCivID() != Game.player.iCivID && Game.getCiv(Game.getProvince(i).getCivID()).getPuppetOfCivID() != Game.player.iCivID) || !addDevelopInfrastructureCost(i)) {
            return false;
        }
        ProvinceDraw.addProvinceDot_Infrastructure(i);
        return true;
    }

    public static boolean actionManpower(int i) {
        if (Game.getProvince(i).getCivID() != Game.player.iCivID && Game.getCiv(Game.getProvince(i).getCivID()).getPuppetOfCivID() != Game.player.iCivID) {
            return false;
        }
        if (!AA_KeyManager.SHIFT_HOLD && !AA_KeyManager.CTRL_HOLD) {
            if (Game.getCiv(Game.player.iCivID).fLegacy < Game.getIncreaseManpowerCostLegacy(i)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + ": ", CFG.getPrecision2(Game.getIncreaseManpowerCostLegacy(i), 100), Images.legacy);
                return false;
            }
            if (Game.getProvince(i).addIncreaseManpowerInProvince(Game.player.iCivID)) {
                ProvinceDraw.addProvinceDot_Manpower(i);
                return true;
            }
            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getIncreaseManpowerCost(i), 100), Images.gold);
            return false;
        }
        boolean z = false;
        for (int i2 = 0; i2 < 5; i2++) {
            if (Game.getCiv(Game.player.iCivID).fLegacy < Game.getIncreaseManpowerCostLegacy(i)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + ": ", CFG.getPrecision2(Game.getIncreaseManpowerCostLegacy(i), 100), Images.legacy);
                break;
            }
            if (Game.getProvince(i).addIncreaseManpowerInProvince(Game.player.iCivID)) {
                ProvinceDraw.addProvinceDot_Manpower(i);
                z = true;
            } else {
                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getIncreaseManpowerCost(i), 100), Images.gold);
            }
        }
        return z;
    }

    public static boolean actionTax(int i) {
        if (Game.getProvince(i).getCivID() != Game.player.iCivID && Game.getCiv(Game.getProvince(i).getCivID()).getPuppetOfCivID() != Game.player.iCivID) {
            return false;
        }
        if (!AA_KeyManager.SHIFT_HOLD && !AA_KeyManager.CTRL_HOLD) {
            if (Game.getCiv(Game.player.iCivID).fLegacy < Game.getIncreaseTaxEfficiencyCostLegacy(i)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + ": ", CFG.getPrecision2(Game.getIncreaseTaxEfficiencyCostLegacy(i), 100), Images.legacy);
                return false;
            }
            if (Game.getProvince(i).addIncreaseTaxEfficiencyInProvince(Game.player.iCivID)) {
                ProvinceDraw.addProvinceDot_TaxEfficiency(i);
                return true;
            }
            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getIncreaseTaxEfficiencyCost(i), 100), Images.gold);
            return false;
        }
        boolean z = false;
        for (int i2 = 0; i2 < 5; i2++) {
            if (Game.getCiv(Game.player.iCivID).fLegacy < Game.getIncreaseTaxEfficiencyCostLegacy(i)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + ": ", CFG.getPrecision2(Game.getIncreaseTaxEfficiencyCostLegacy(i), 100), Images.legacy);
            } else {
                if (!Game.getProvince(i).addIncreaseTaxEfficiencyInProvince(Game.player.iCivID)) {
                    Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getIncreaseTaxEfficiencyCost(i), 100), Images.gold);
                    break;
                }
                ProvinceDraw.addProvinceDot_TaxEfficiency(i);
                z = true;
            }
        }
        return z;
    }

    public static boolean actionUnrest(int i) {
        if (Game.getProvince(i).getRevulutionaryRisk() <= 0.0f || Game.getProvince(i).getRevulutionaryRisk() <= 0.0f || Game.getProvince(i).getCivID() != Game.player.iCivID) {
            return false;
        }
        if (Game.getCiv(Game.player.iCivID).fGold < GameValues.province.UNREST_DECREASE_COST_GOLD) {
            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(GameValues.province.UNREST_DECREASE_COST_GOLD, 100), Images.gold);
            return false;
        }
        if (Game.getCiv(Game.player.iCivID).fLegacy < GameValues.province.UNREST_DECREASE_COST_LEGACY) {
            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + ": ", CFG.getPrecision2(GameValues.province.UNREST_DECREASE_COST_LEGACY, 100), Images.legacy);
            return false;
        }
        if (Game.revolutionManager.decreaseRevolutionaryRisk(Game.player.iCivID, i)) {
            InGame_Info.iCivID = Game.player.iCivID;
            InGame_Info.iCivID2 = Game.player.iCivID;
            Game.menuManager.rebuildInGame_Info(Game.lang.get("RevolutionaryRiskReduced"), Game.getProvince(i).getProvinceName());
            InGame_Info.imgID = Images.infoUnrest;
            return true;
        }
        return false;
    }

    public static final boolean addDevelopInfrastructureCost(int i) {
        if (Game.getDevelopInfrastructureCost(i) > Game.getCiv(Game.player.iCivID).fGold) {
            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getDevelopInfrastructureCost(i), 100), Images.gold);
            return false;
        }
        if (Game.getDevelopInfrastructureCostLegacy(i) > Game.getCiv(Game.player.iCivID).fLegacy) {
            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + ": ", CFG.getPrecision2(Game.getDevelopInfrastructureCostLegacy(i), 100), Images.legacy);
            return false;
        }
        if (Game.getProvince(i).getInfrastructure() + Game.getProvince(i).iProvinceDevelopInfrastructureSize < Game.getProvince(i).iInfrastructureMax) {
            return Game.getProvince(i).addDevelopInfrastructure(Game.player.iCivID);
        }
        Game.menuManager.addToastInsufficient(Game.lang.get("MaximumInfrastructureLevel") + ": ", (Game.getProvince(i).getInfrastructure() + Game.getProvince(i).iProvinceDevelopInfrastructureSize) + " / " + Game.getProvince(i).iInfrastructureMax, Images.infrastructure);
        return false;
    }

    public static MenuElement_Hover getHoverCores(int i, boolean z) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        StringBuilder sbAppend = new StringBuilder().append(Game.lang.get("Cores"));
        int i2 = Game.getProvince(i).iCoresSize;
        String str = PZBvyl.RaEqFEJsY;
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(sbAppend.append(i2 == 0 ? ": " : str).toString(), Game.getProvince(i).iCoresSize == 0 ? Game.lang.get("None") : str, Images.core, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (Game.getProvince(i).iCoresSize != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            for (int i3 = 0; i3 < Game.getProvince(i).iCoresSize; i3++) {
                arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(i).getCore(i3), 0, CFG.PADDING));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(Game.getProvince(i).getCore(i3)).getCivName(), CFG.FONT_REGULAR_SMALL));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("CoreIsALegitimatePartOfCivilization"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (Game.getProvince(i).getCivID() == Game.player.iCivID && !Game.getProvince(i).haveACore(Game.player.iCivID) && Game.getProvince(i).coreCreation == null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Empty());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("AddCore"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.core, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Cost") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(str + CFG.getPrecision2(Game.getCoreCreationCost(i), 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(" = " + CFG.getPrecision2(GameValues.core.CORE_CREATION_COST_DEFAULT, 100) + " + " + Game.lang.get("Economy") + " * " + CFG.getPrecision2(GameValues.core.CORE_CREATION_COST_PER_ECONOMY, 100) + " + " + Game.lang.get("Infrastructure") + " * " + CFG.getPrecision2(GameValues.infrastructure.INFRASTRUCTURE_CORE_COST_PER_LVL, 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ConstructionTime") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(str + Game.lang.get("DaysX", Game.getCoreCreationTime(i)), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(" = " + CFG.getPrecision2(GameValues.core.CORE_CREATION_TIME_DEFAULT, 100) + " + " + Game.lang.get("TaxEfficiency") + " * " + CFG.getPrecision2(GameValues.core.CORE_CREATION_TIME_PER_TAX_EFFICIENCY, 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
        } else if (Game.getProvince(i).coreCreation != null) {
            try {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("CoreConstruction") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str + CFG.getPrecision2((1.0f - (Game.getProvince(i).coreCreation.daysLeft / Game.getProvince(i).coreCreation.investTime)) * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.core, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        if (!Game.getProvince(i).haveACore(Game.getProvince(i).getCivID())) {
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("NonCoreProvince") + ":", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(i).getCivID(), CFG.PADDING, CFG.PADDING));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ProvinceMonthlyIncome") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(str + CFG.getPrecision2(GameValues.core.BASE_INCOME_NON_CORE * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        return z ? new AnonymousClass43(arrayList) : new MenuElement_Hover(arrayList);
    }

    public static MenuElement_Hover getHoverEconomy(int i, boolean z) {
        return getHoverEconomy(i, z, true);
    }

    public static MenuElement_Hover getHoverEconomy(int i, boolean z, boolean z2) {
        String str;
        boolean z3;
        try {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Economy") + ": ", CFG.getPrecision2(Game.getProvince(i).getEconomyWithBonuses(), 100), Game_Calendar.IMG_ECONOMY, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MonthlyIncome") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(Game.getIncomeFromEconomy(i), 100), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(" = " + Game.lang.get("Economy") + " * " + CFG.getPrecision2(GameValues.economy.INCOME_ECONOMY_PER_ECONOMY, 1000), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            if (Game.getCiv(Game.getProvince(i).getCivID()).getCorruption() > 0.005f) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Corruption") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("-" + CFG.getPrecision2(Game.getCiv(Game.getProvince(i).getCivID()).getCorruption() * 100.0f, 10) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.corruption, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2, !z));
                arrayList2.clear();
            }
            boolean zHaveACore = Game.getProvince(i).haveACore(Game.getProvince(i).getCivID());
            String str2 = XjthpFh.hUYsUPByMioYKVq;
            if (!zHaveACore) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("NonCoreProvince") + ":", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(i).getCivID(), CFG.PADDING, CFG.PADDING));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str2 + CFG.getPrecision2(GameValues.core.BASE_INCOME_NON_CORE * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2, !z));
                arrayList2.clear();
            }
            if (Game.getProvince(i).getReligion() != Game.getCiv(Game.getProvince(i).getCivID()).getReligionID()) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DifferentReligion") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str2 + CFG.getPrecision2(GameValues.religion.BASE_INCOME_DIFFERENT_RELIGION * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2, !z));
                arrayList2.clear();
            }
            if (Game.getProvince(i).getDevastation() > 5.0E-5f) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Devastation") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str2 + CFG.getPrecision2(Game.getProvince(i).getDevastation() * 100.0f, 10) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.devastation, CFG.PADDING, CFG.PADDING));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ProvinceIncome") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("-" + CFG.getPrecision2(Game.getProvince(i).getDevastation() * 100.0f, 10) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2, !z));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ProductionEfficiency") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(ResourcesManager.getProductionEfficiency_FromEconomy(i) * 100.0f, 10) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.goods, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(" = " + Game.lang.get("Economy") + " * " + CFG.getPrecision2(GameValues.production.PRODUCTION_EFFICIENCY_PER_ECONOMY * 100.0f, 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(fTNtCctcBZcqKK.ozaWi) + ": ", CFG.FONT_REGULAR, !Game.canInvestInEconomy(i) ? Colors.HOVER_LEFT : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(Game.getMaxEconomy(i), 100), CFG.FONT_BOLD, !Game.canInvestInEconomy(i) ? Colors.HOVER_GOLD : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_ECONOMY, CFG.PADDING, CFG.PADDING));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("[" + CFG.getPrecision2((Game.getProvince(i).getEconomyWithBonuses() / Game.getMaxEconomy(i)) * 100.0f, 10) + "%]", CFG.FONT_REGULAR, Colors.HOVER_RIGHT3));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(" = " + Game.lang.get("GrowthRate") + " * " + CFG.getPrecision2(GameValues.economy.MAX_ECONOMY_GROWTH_RATE, 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList.add(new MenuElement_HoverElement(arrayList2, Game.canInvestInEconomy(i)));
            arrayList2.clear();
            if ((Game.getProvince(i).getCivID() == Game.player.iCivID || Game.getCiv(Game.getProvince(i).getCivID()).getPuppetOfCivID() == Game.player.iCivID) && z2) {
                if ((Game.getProvince(i).getCivID() == Game.player.iCivID || Game.getCiv(Game.getProvince(i).getCivID()).getPuppetOfCivID() == Game.player.iCivID) && Game.getProvince(i).iProvinceInvestSize > 0) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Line());
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("InvestProgress") + ": ", CFG.FONT_REGULAR_SMALL));
                    str = "ProductionEfficiency";
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DaysX", Game.getProvince(i).provinceInvestDaysLeft.get(0).daysLeft), CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, CFG.PADDING));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("[" + CFG.getPrecision2((1.0f - (Game.getProvince(i).provinceInvestDaysLeft.get(0).daysLeft / Game.getProvince(i).provinceInvestDaysLeft.get(0).investTime)) * 100.0f, 10) + "%]", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    if (Game.getProvince(i).iProvinceInvestSize > 1) {
                        int i2 = 0;
                        for (int i3 = 0; i3 < Game.getProvince(i).iProvinceInvestSize; i3++) {
                            i2 += Game.getProvince(i).provinceInvestDaysLeft.get(i3).daysLeft;
                        }
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("InQueue") + ": ", CFG.FONT_REGULAR_SMALL));
                        z3 = true;
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(str2 + (Game.getProvince(i).iProvinceInvestSize - 1), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(" [" + Game.lang.get("DaysX", i2) + "]", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, CFG.PADDING));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    } else {
                        z3 = true;
                    }
                } else {
                    str = "ProductionEfficiency";
                    z3 = true;
                }
                if (!Game.canInvestInEconomy(i)) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Empty());
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(uNBYrZVGzy.uBylTkAbolrkZh), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_ECONOMY_UP, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    if (Game.getProvince(i).getCivID() != Game.player.iCivID) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(Game.getProvince(i).getCivID()).getCivName(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                        arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(i).getCivID(), CFG.PADDING, 0));
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.vassal, CFG.PADDING, 0));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        arrayList2.add(new MenuElement_HoverElement_Type_Line());
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Cost") + ": ", CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(str2 + CFG.getPrecision2(Game.getInvestCost(i), 10), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("LegacyPoints") + ": ", CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(str2 + CFG.getPrecision2(Game.getInvestCost_Legacy(i), 10), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.legacy, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" = " + CFG.getPrecision2(GameValues.economy.INVEST_COST, 10) + " + " + Game.lang.get("Economy") + " * " + CFG.getPrecision2(GameValues.economy.INVEST_COST_PER_ECONOMY, 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                    arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Line());
                    arrayList.add(new MenuElement_HoverElement(arrayList2, !z ? z3 : false));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AfterXDays", Game.getInvestTime(Game.player.iCivID)) + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT2));
                    arrayList.add(new MenuElement_HoverElement(arrayList2, !z ? z3 : false));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Economy") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(Game.getInvestEconomyGrowth(i), 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_ECONOMY, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2, !z ? z3 : false));
                    arrayList2.clear();
                    float monthlyIncome = (ResourcesManager.getMonthlyIncome(i, Game.getProvince(i).getResourceID(), ResourcesManager.getProductionEfficiency(i) + ResourcesManager.getProductionEfficiency_FromEconomy(Game.getInvestEconomyGrowth(i))) - ResourcesManager.getMonthlyIncome(i, Game.getProvince(i).getResourceID(), ResourcesManager.getProductionEfficiency(i))) / 100.0f;
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MonthlyIncome") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(Game.getIncomeFromEconomy_Invest(i) + monthlyIncome, 1000), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2, !z ? z3 : false));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(str) + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(ResourcesManager.getProductionEfficiency_FromEconomy(Game.getInvestEconomyGrowth(i)), 100) + "%", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.goods, CFG.PADDING, 0));
                    if (z) {
                        z3 = false;
                    }
                    arrayList.add(new MenuElement_HoverElement(arrayList2, z3));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("InvestmentPayoff") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(str2 + Game_Calendar.getNumOfDates_ByTurnID(Game_Calendar.TURN_ID + ((int) ((Game.getInvestCost(i) / (Game.getIncomeFromEconomy_Invest(i) + monthlyIncome)) * 30.0f))), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    if (CFG.isDesktop()) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Line());
                        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                        arrayList2.clear();
                        arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("ShiftClickToInvestXTimes", 5), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                        arrayList2.clear();
                    }
                }
            }
            return z ? new AnonymousClass37(arrayList) : new MenuElement_Hover(arrayList);
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return null;
        }
    }

    public static MenuElement_Hover getHoverFort(int i, boolean z) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("DefenseLevel") + ": ", "" + Game.getProvince(i).getFortLevel(), Images.fort, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ProvinceDefense") + ": ", "" + Game.getProvince(i).getFortDefense(), Game_Calendar.IMG_FORT_DEFENSE, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(" = " + CFG.getPrecision2(GameValues.siege.SIEGE_FORT_DEFENSE_DEFAULT, 100) + " + " + Game.lang.get("DefenseLevel") + " * " + CFG.getPrecision2(GameValues.siege.SIEGE_FORT_DEFENSE_PER_FORT_LVL, 100) + " + " + Game.lang.get("LocalManpowerLevel") + " * " + CFG.getPrecision2(GameValues.siege.SIEGE_FORT_DEFENSE_PER_MANPOWER_LVL, 100) + " + " + Game.lang.get("GrowthRate") + "*" + CFG.getPrecision2(GameValues.siege.SIEGE_FORT_DEFENSE_PER_GROWTH_RATE_LVL, 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("AfterASuccessfulSiegeAllNeighboringProvincesWithoutDefensiveBuildingsWillBeOccupied"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("MinimumArmyRequiredToSiegeProvinceX", CFG.getPrecision2(GameValues.siege.SIEGE_REGIMENTS_MIN * Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE, 1)), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        int i2 = 0;
        for (int i3 = 0; i3 < Game.getProvince(i).getNeighboringProvincesSize(); i3++) {
            if (Game.getProvince(Game.getProvince(i).getNeighboringProvinces(i3)).getCivID() == Game.getProvince(i).getCivID() && Game.getProvince(Game.getProvince(i).getNeighboringProvinces(i3)).getFortLevel() == 0) {
                i2++;
            }
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("NeighboringProvinces") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getProvince(i).getNeighboringProvincesSize(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.provinces, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ProvincesWithoutForts") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + i2, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.provinces, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        return z ? new AnonymousClass49(arrayList) : new MenuElement_Hover(arrayList);
    }

    public static MenuElement_Hover getHoverInfrastructure(int i, boolean z) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Infrastructure") + ": ", "" + Game.getProvince(i).getInfrastructure() + " / " + Game.getProvince(i).iInfrastructureMax, Images.infrastructure, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("TaxEfficiency") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text((Game.getProvince(i).getInfrastructure() > 0 ? "+" : "") + CFG.getPrecision2(GameValues.infrastructure.INFRASTRUCTURE_TAX_EFFICIENCY_PER_LVL * Game.getProvince(i).getInfrastructure(), 100) + "%", CFG.FONT_BOLD_SMALL, Game.getProvince(i).getInfrastructure() > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEUTRAL));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.tax, CFG.PADDING, CFG.PADDING));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("PerLevel") + ": " + CFG.getPrecision2(GameValues.infrastructure.INFRASTRUCTURE_TAX_EFFICIENCY_PER_LVL, 100) + "%", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ConstructionCost") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(GameValues.infrastructure.INFRASTRUCTURE_CONSTRUCTION_COST_PER_LVL * 100.0f * Game.getProvince(i).getInfrastructure(), 100) + "%", CFG.FONT_BOLD_SMALL, Game.getProvince(i).getInfrastructure() > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEUTRAL));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.build, CFG.PADDING, CFG.PADDING));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("PerLevel") + ": " + CFG.getPrecision2(GameValues.infrastructure.INFRASTRUCTURE_CONSTRUCTION_COST_PER_LVL * 100.0f, 100) + "%", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ConstructionTime") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(GameValues.infrastructure.INFRASTRUCTURE_CONSTRUCTION_TIME_PER_LVL * 100.0f * Game.getProvince(i).getInfrastructure(), 100) + "%", CFG.FONT_BOLD_SMALL, Game.getProvince(i).getInfrastructure() > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEUTRAL));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.buildTime, CFG.PADDING, CFG.PADDING));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("PerLevel") + ": " + CFG.getPrecision2(GameValues.infrastructure.INFRASTRUCTURE_CONSTRUCTION_TIME_PER_LVL * 100.0f, 100) + "%", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("BuildingSlots") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (GameValues.infrastructure.INFRASTRUCTURE_BUILDINGS_SLOT_PER_LVL * Game.getProvince(i).getInfrastructure()), CFG.FONT_BOLD_SMALL, Game.getProvince(i).getInfrastructure() > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEUTRAL));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.build, CFG.PADDING, CFG.PADDING));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("PerLevel") + ": " + GameValues.infrastructure.INFRASTRUCTURE_BUILDINGS_SLOT_PER_LVL, CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(hQfu.YbEVSSjJADBJT) + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(GameValues.infrastructure.INFRASTRUCTURE_INVEST_COST_PER_LVL * 100.0f * Game.getProvince(i).getInfrastructure(), 100) + "%", CFG.FONT_BOLD_SMALL, Game.getProvince(i).getInfrastructure() > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEUTRAL));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_ECONOMY, CFG.PADDING, CFG.PADDING));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("PerLevel") + ": " + CFG.getPrecision2(GameValues.infrastructure.INFRASTRUCTURE_INVEST_COST_PER_LVL * 100.0f, 100) + "%", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ProductionEfficiency") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text((Game.getProvince(i).getInfrastructure() > 0 ? "+" : "") + CFG.getPrecision2(GameValues.infrastructure.INFRASTRUCTURE_PRODUCTION_EFFICIENCY_PER_LVL * 100.0f * Game.getProvince(i).getInfrastructure(), 100) + "%", CFG.FONT_BOLD_SMALL, Game.getProvince(i).getInfrastructure() > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEUTRAL));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.goods, CFG.PADDING, CFG.PADDING));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("PerLevel") + ": " + CFG.getPrecision2(GameValues.infrastructure.INFRASTRUCTURE_PRODUCTION_EFFICIENCY_PER_LVL * 100.0f, 100) + "%", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("RecruitmentTime") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(GameValues.infrastructure.INFRASTRUCTURE_RECRUITMENT_TIME_PER_LVL * 100.0f * Game.getProvince(i).getInfrastructure(), 100) + "%", CFG.FONT_BOLD_SMALL, Game.getProvince(i).getInfrastructure() > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEUTRAL));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER_TIME, CFG.PADDING, CFG.PADDING));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("PerLevel") + ": " + CFG.getPrecision2(GameValues.infrastructure.INFRASTRUCTURE_RECRUITMENT_TIME_PER_LVL * 100.0f, 100) + "%", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("LocalGrowthRate") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text((Game.getProvince(i).getInfrastructure() > 0 ? "+" : "") + CFG.getPrecision2(GameValues.infrastructure.INFRASTRUCTURE_GROWTH_RATE_PER_LVL * Game.getProvince(i).getInfrastructure(), 100) + "%", CFG.FONT_BOLD_SMALL, Game.getProvince(i).getInfrastructure() > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEUTRAL));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.populationGrowth, CFG.PADDING, CFG.PADDING));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("PerLevel") + ": " + CFG.getPrecision2(GameValues.infrastructure.INFRASTRUCTURE_GROWTH_RATE_PER_LVL, 100) + "%", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ArmyMovementSpeed") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text((Game.getProvince(i).getInfrastructure() > 0 ? "+" : "") + CFG.getPrecision2(GameValues.infrastructure.INFRASTRUCTURE_ARMY_MOVEMENT_PER_LVL * 100.0f * Game.getProvince(i).getInfrastructure(), 100) + "%", CFG.FONT_BOLD_SMALL, Game.getProvince(i).getInfrastructure() > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEUTRAL));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.movementSpeed, CFG.PADDING, CFG.PADDING));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("PerLevel") + ": " + CFG.getPrecision2(GameValues.infrastructure.INFRASTRUCTURE_ARMY_MOVEMENT_PER_LVL * 100.0f, 100) + "%", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DiseasesDeathRate") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(GameValues.infrastructure.INFRASTRUCTURE_DISEASE_DEATH_RATE_PER_LVL * 100.0f * Game.getProvince(i).getInfrastructure(), 100) + "%", CFG.FONT_BOLD_SMALL, Game.getProvince(i).getInfrastructure() > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEUTRAL));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.disease, CFG.PADDING, CFG.PADDING));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("PerLevel") + ": " + CFG.getPrecision2(GameValues.infrastructure.INFRASTRUCTURE_DISEASE_DEATH_RATE_PER_LVL * 100.0f, 100) + "%", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ProvinceMaintenance") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text((Game.getProvince(i).getInfrastructure() <= 0 ? "" : "+") + CFG.getPrecision2(GameValues.infrastructure.INFRASTRUCTURE_PROVINCE_MAINTENANCE_PER_LVL * 100.0f * Game.getProvince(i).getInfrastructure(), 100) + "%", CFG.FONT_BOLD_SMALL, Game.getProvince(i).getInfrastructure() > 0 ? Colors.COLOR_TEXT_MODIFIER_NEGATIVE : Colors.COLOR_TEXT_MODIFIER_NEUTRAL));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.provinces, CFG.PADDING, CFG.PADDING));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("PerLevel") + ": " + CFG.getPrecision2(GameValues.infrastructure.INFRASTRUCTURE_PROVINCE_MAINTENANCE_PER_LVL * 100.0f, 100) + "%", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (Game.getProvince(i).wonderID >= 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Wonder") + ", " + Game.lang.get("ConstructionCost") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(GameValues.infrastructure.INFRASTRUCTURE_WONDER_CONSTRUCTION_COST_PER_LVL * 100.0f * Game.getProvince(i).getInfrastructure(), 100) + "%", CFG.FONT_BOLD_SMALL, Game.getProvince(i).getInfrastructure() > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEUTRAL));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.mapModesWonders, CFG.PADDING, CFG.PADDING));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("PerLevel") + ": " + CFG.getPrecision2(GameValues.infrastructure.INFRASTRUCTURE_WONDER_CONSTRUCTION_COST_PER_LVL * 100.0f, 100) + "%", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaximumInfrastructureLevel") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getProvince(i).iInfrastructureMax + " / " + GameValues.infrastructure.INFRASTRUCTURE_MAX_LVL, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.infrastructure, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(" = min(" + GameValues.infrastructure.INFRASTRUCTURE_MAX_DEFAULT + (Game.getProvince(i).isCapital ? " + " + Game.lang.get("Capital") + ": + " + GameValues.infrastructure.INFRASTRUCTURE_MAX_CAPITAL : "") + " + " + Game.lang.get("Economy") + " / " + CFG.getPrecision2(GameValues.infrastructure.INFRASTRUCTURE_MAX_PER_ECONOMY, 10) + " + " + Game.lang.get("GrowthRate") + " / " + CFG.getPrecision2(GameValues.infrastructure.INFRASTRUCTURE_MAX_PER_GROWTH_RATE, 10) + ", " + GameValues.infrastructure.INFRASTRUCTURE_MAX_LVL + ")", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
        arrayList2.clear();
        if (Game.getProvince(i).iProvinceDevelopInfrastructureSize > 1) {
            int i2 = 0;
            for (int i3 = 0; i3 < Game.getProvince(i).iProvinceDevelopInfrastructureSize; i3++) {
                i2 += Game.getProvince(i).provinceDevelopInfrastructureDaysLeft.get(i3).daysLeft;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("InQueue") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (Game.getProvince(i).iProvinceDevelopInfrastructureSize - 1), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(" [" + Game.lang.get("DaysX", i2) + "]", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, CFG.PADDING));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if ((Game.getProvince(i).getCivID() == Game.player.iCivID || Game.getCiv(Game.getProvince(i).getCivID()).getPuppetOfCivID() == Game.player.iCivID) && Game.getProvince(i).getInfrastructure() < Game.getProvince(i).iInfrastructureMax) {
            arrayList2.add(new MenuElement_HoverElement_Type_Empty());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ClickToDevelopInfrastructure"), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.infrastructureUp, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (Game.getProvince(i).getCivID() != Game.player.iCivID) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(Game.getProvince(i).getCivID()).getCivName(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(i).getCivID(), CFG.PADDING, 0));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.vassal, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Cost") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.getDevelopInfrastructureCost(i), 10), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(" = " + CFG.getPrecision2(GameValues.infrastructure.DEVELOP_INFRASTRUCTURE_COST_GOLD, 10) + " + " + Game.lang.get("Infrastructure") + " * " + CFG.getPrecision2(GameValues.infrastructure.DEVELOP_INFRASTRUCTURE_COST_GOLD_PER_INFRASTRUCTURE, 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("LegacyPoints") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.getDevelopInfrastructureCostLegacy(i), 10), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.legacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(" = " + CFG.getPrecision2(GameValues.infrastructure.DEVELOP_INFRASTRUCTURE_COST_LEGACY, 10) + " + " + Game.lang.get("Infrastructure") + " * " + CFG.getPrecision2(GameValues.infrastructure.DEVELOP_INFRASTRUCTURE_COST_LEGACY_PER_INFRASTRUCTURE, 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ConstructionTime") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DaysX", Game.getDevelopInfrastructureTime(i)), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        return z ? new AnonymousClass45(arrayList) : new MenuElement_Hover(arrayList);
    }

    public static MenuElement_Hover getHoverLoot(int i, boolean z) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        String str = Game.lang.get("Loot") + ": ";
        String str2 = SwmJtrccN.qXCT;
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str, str2 + CFG.getPrecision2(Game.getProvince(i).getLoot() * 100.0f, 1) + "%", Images.loot, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Gold") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(str2 + CFG.getPrecision2(Game.getLootValue(i), 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(" = " + Game.lang.get("ProvinceIncome") + " * " + CFG.getPrecision2(GameValues.siege.LOOT_PROVINCE_PER_PROVINCE_INCOME, 100) + " * " + Game.lang.get("Loot"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
        arrayList2.clear();
        if (Game.getProvince(i).getLoot() < 0.99f && !Game.getProvince(i).isOccupied()) {
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("MonthlyChange") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("+" + CFG.getPrecision2(GameValues.siege.LOOT_PROVINCE_RECOVERY_PER_MONTH * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.loot, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (GameValues.siege.OCCUPY_PROVINCE_DECREASE_GROWTH_RATE != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Occupation") + ", " + Game.lang.get("GrowthRate") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(str2 + CFG.getPrecision2(GameValues.siege.OCCUPY_PROVINCE_DECREASE_GROWTH_RATE, 100), CFG.FONT_BOLD_SMALL, GameValues.siege.OCCUPY_PROVINCE_DECREASE_GROWTH_RATE < 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.populationGrowth, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        return z ? new AnonymousClass48(arrayList) : new MenuElement_Hover(arrayList);
    }

    public static MenuElement_Hover getHoverManpower(int i, boolean z, boolean z2) {
        String str;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("LocalManpowerLevel") + ": ", "" + CFG.getPrecision2(Game.getProvince(i).getManpower(), 100), Game_Calendar.IMG_MANPOWER, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaximumManpower") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(Game.getManpowerMaxFromProvinceManpowerLvl(i), 1), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        String str2 = lJxd.OnWnZIabrmAcU;
        arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(str2 + Game.lang.get("LocalManpowerLevel") + " * " + CFG.getPrecision2(GameValues.manpower.MANPOWER_MAX_PER_PROVINCE_MANPOWER_LVL, 100) + " * min(" + Game.lang.get("GrowthRate") + ", " + GameValues.manpower.MANPOWER_MAX_PER_PROVINCE_MAX_GROWTH_RATE + ") %", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ManpowerPerMonth") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(Game.getManpowerFromProvincePerMonth_Info(i), 100), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(str2 + Game.lang.get("MaximumManpower") + " / " + Game.lang.get("MonthsX", (int) GameValues.manpower.MANPOWER_FULL_RECOVERY_MONTHS), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ProvinceDefense") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(Game.getProvince(i).getFortDefense_Manpower(), 100), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_FORT_DEFENSE, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(str2 + Game.lang.get("LocalManpowerLevel") + " * " + CFG.getPrecision2(GameValues.siege.SIEGE_FORT_DEFENSE_PER_MANPOWER_LVL, 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("LocalGrowthRate") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.getProvince(i).getGrowthRateWithBonuses(), 1) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.populationGrowth, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (!Game.getProvince(i).haveACore(Game.getProvince(i).getCivID())) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("NonCoreProvince") + ":", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(i).getCivID(), CFG.PADDING, CFG.PADDING));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(GameValues.manpower.MANPOWER_MAX_NON_CORE * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2, !z));
            arrayList2.clear();
        }
        if (Game.getProvince(i).getReligion() != Game.getCiv(Game.getProvince(i).getCivID()).getReligionID()) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DifferentReligion") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(GameValues.manpower.MANPOWER_MAX_DIFFERENT_RELIGION * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2, !z));
            arrayList2.clear();
        }
        if (z2 && (Game.getProvince(i).getCivID() == Game.player.iCivID || Game.getCiv(Game.getProvince(i).getCivID()).getPuppetOfCivID() == Game.player.iCivID)) {
            if ((Game.getProvince(i).getCivID() == Game.player.iCivID || Game.getCiv(Game.getProvince(i).getCivID()).getPuppetOfCivID() == Game.player.iCivID) && Game.getProvince(i).iProvinceIncreaseManpowerSize > 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Progress") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DaysX", Game.getProvince(i).provinceIncreaseManpowerDaysLeft.get(0).daysLeft), CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, CFG.PADDING));
                str = "ProvinceDefense";
                arrayList2.add(new MenuElement_HoverElement_Type_Text("[" + CFG.getPrecision2((1.0f - (Game.getProvince(i).provinceIncreaseManpowerDaysLeft.get(0).daysLeft / Game.getProvince(i).provinceIncreaseManpowerDaysLeft.get(0).investTime)) * 100.0f, 10) + "%]", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                if (Game.getProvince(i).iProvinceIncreaseManpowerSize > 1) {
                    int i2 = 0;
                    for (int i3 = 0; i3 < Game.getProvince(i).iProvinceIncreaseManpowerSize; i3++) {
                        i2 += Game.getProvince(i).provinceIncreaseManpowerDaysLeft.get(i3).daysLeft;
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("InQueue") + ": ", CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (Game.getProvince(i).iProvinceIncreaseManpowerSize - 1), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" [" + Game.lang.get("DaysX", i2) + "]", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, CFG.PADDING));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                }
            } else {
                str = "ProvinceDefense";
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Empty());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ClickToIncreaseManpower"), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (Game.getProvince(i).getCivID() != Game.player.iCivID) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(Game.getProvince(i).getCivID()).getCivName(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(i).getCivID(), CFG.PADDING, 0));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.vassal, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Cost") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.getIncreaseManpowerCost(i), 10), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(str2 + CFG.getPrecision2(GameValues.manpower.INCREASE_MANPOWER_COST, 10) + " + " + Game.lang.get("Manpower") + " * " + CFG.getPrecision2(GameValues.manpower.INCREASE_MANPOWER_COST_PER_LEVEL, 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("LegacyPoints") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.getIncreaseManpowerCostLegacy(i), 10), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.legacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(str2 + CFG.getPrecision2(GameValues.manpower.INCREASE_MANPOWER_COST_LEGACY, 100) + " + " + Game.lang.get("Manpower") + " * " + CFG.getPrecision2(GameValues.manpower.INCREASE_MANPOWER_COST_LEGACY_PER_LEVEL, 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2, !z));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AfterXDays", Game.getIncreseManpowerTime(Game.player.iCivID)) + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT2));
            arrayList.add(new MenuElement_HoverElement(arrayList2, !z));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("LocalManpowerLevel") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(GameValues.manpower.INCREASE_MANPOWER_GROWTH, 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2, !z));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaximumManpower") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(Game.getIncreseManpower_MaximumManpowerInfo(i), 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2, !z));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ManpowerPerMonth") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(Game.getIncreseManpower_ManpowerPerMonthInfo(i), 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2, !z));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(str) + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(GameValues.siege.SIEGE_FORT_DEFENSE_PER_MANPOWER_LVL, 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_FORT_DEFENSE, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2, !z));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2, !z));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("TipForBestResultsIncreaseManpowerInProvincesWithHighestGrowthRateOfPopulation"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
            arrayList.add(new MenuElement_HoverElement(arrayList2, !z));
            arrayList2.clear();
            if (CFG.isDesktop()) {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("ShiftClickToIncreaseManpowerXTimes", 5), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
            }
        }
        return z ? new AnonymousClass41(arrayList) : new MenuElement_Hover(arrayList);
    }

    public static MenuElement_Hover getHoverPopulation(int i, boolean z) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", "" + CFG.getNumberWithSpaces("" + Game.getProvince(i).getPopulationTotal()), Images.population, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        for (int i2 = 0; i2 < Game.getProvince(i).getPopulationSize(); i2++) {
            arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(i).getPopulationCivID(i2), 0, CFG.PADDING));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getNumberWithSpaces("" + Game.getProvince(i).getPopulationID(i2)), CFG.FONT_BOLD_SMALL, Colors.COLOR_POPULATION));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.population, CFG.PADDING, CFG.PADDING));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(fTNtCctcBZcqKK.YJm + CFG.getPrecision2((Game.getProvince(i).getPopulationID(i2) / Game.getProvince(i).getPopulationTotal()) * 100.0f, 100) + "%]", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(" " + Game.getCiv(Game.getProvince(i).getPopulationCivID(i2)).getCivName(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("PopulationGrowth") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2((int) Math.max(1.0f, Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).POPULATION_GROWTH_PER_MONTH * (Game.getProvince(i).getGrowthRateWithBonuses() / 100.0f)), 1), CFG.FONT_BOLD_SMALL, Colors.COLOR_POPULATION));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.population, CFG.PADDING, CFG.PADDING));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DaysX", GameValues.gameUpdate.GAME_UPDATE_POPULATION_STEPS * Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).GAME_DAYS_PER_TURN), CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(PZBvyl.fiYqsrUWP + CFG.getPrecision2(Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).POPULATION_GROWTH_PER_MONTH, 10) + " * " + Game.lang.get("GrowthRate") + " %", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("GrowthRate") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.getProvince(i).getGrowthRateWithBonuses(), 1) + CaiJWNfqszJNZ.sCXZ, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.populationGrowth, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("ThePopulationWillSlowlyAssimilateIfTheCivilizationHasACore"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        return z ? new AnonymousClass40(arrayList) : new MenuElement_Hover(arrayList);
    }

    public static final MenuElement_Hover getHoverPopulationGrowth(int i, boolean z, boolean z2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("GrowthRate") + ": ", CFG.getPrecision2(Game.getProvince(i).getGrowthRateWithBonuses(), 10) + "%", Images.populationGrowth, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("BaseValue") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.getProvince(i).getGrowthRate(), 100) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_RIGHT));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.populationGrowth, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("CivilizationBonuses") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.getCiv(Game.getProvince(i).getCivID()).civBonuses.GrowthRate, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_RIGHT));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.populationGrowth, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ProvinceBonuses") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.getProvince(i).provBonuses.LocalGrowthRate + Game.getProvinceData7(i).getIncreasedGrowthRate(), 100) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_RIGHT));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.populationGrowth, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(hQfu.ROcYJOoWZ) + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.getProvince(i).getInfrastructure() * GameValues.infrastructure.INFRASTRUCTURE_GROWTH_RATE_PER_LVL, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_RIGHT));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.populationGrowth, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (Game.getProvinceData9(i).getColonizationGrowthRateExtra() > 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Colonization") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.getProvinceData9(i).getColonizationGrowthRateExtra(), 100) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.populationGrowth, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.terrainManager.terrains.get(Game.getProvince(i).getTerrainID()).Name + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.terrainManager.terrains.get(Game.getProvince(i).getTerrainID()).PopulationGrowth, 100) + "%", CFG.FONT_BOLD_SMALL, Game.terrainManager.terrains.get(Game.getProvince(i).getTerrainID()).PopulationGrowth < 0 ? Colors.COLOR_TEXT_MODIFIER_NEGATIVE : Colors.HOVER_RIGHT));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.populationGrowth, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (Game.getProvince(i).isCapital) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Capital") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(GameValues.capital.CAPITAL_GROWTH_RATE, 100) + "%", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.populationGrowth, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("PopulationGrowth") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2((int) Math.max(1.0f, Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).POPULATION_GROWTH_PER_MONTH * (Game.getProvince(i).getGrowthRateWithBonuses() / 100.0f)), 1), CFG.FONT_BOLD_SMALL, Colors.COLOR_POPULATION));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.population, CFG.PADDING, CFG.PADDING));
        LanguageManager languageManager = Game.lang;
        int i2 = GameValues.gameUpdate.GAME_UPDATE_POPULATION_STEPS * Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).GAME_DAYS_PER_TURN;
        String str = lOow.BmdxtgO;
        arrayList2.add(new MenuElement_HoverElement_Type_Text(languageManager.get(str, i2), CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(" = " + CFG.getPrecision2(Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).POPULATION_GROWTH_PER_MONTH, 10) + " * " + Game.lang.get("GrowthRate") + TGqtTWl.nAIVydc, CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
        arrayList2.clear();
        if (z2 && (Game.getProvince(i).getCivID() == Game.player.iCivID || Game.getCiv(Game.getProvince(i).getCivID()).getPuppetOfCivID() == Game.player.iCivID)) {
            if ((Game.getProvince(i).getCivID() == Game.player.iCivID || Game.getCiv(Game.getProvince(i).getCivID()).getPuppetOfCivID() == Game.player.iCivID) && Game.getProvince(i).iProvinceIncreaseGrowthRateSize > 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Progress") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(str, Game.getProvince(i).provinceIncreaseGrowthRateDaysLeft.get(0).daysLeft), CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, CFG.PADDING));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("[" + CFG.getPrecision2((1.0f - (Game.getProvince(i).provinceIncreaseGrowthRateDaysLeft.get(0).daysLeft / Game.getProvince(i).provinceIncreaseGrowthRateDaysLeft.get(0).investTime)) * 100.0f, 10) + "%]", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                if (Game.getProvince(i).iProvinceIncreaseGrowthRateSize > 1) {
                    int i3 = 0;
                    for (int i4 = 0; i4 < Game.getProvince(i).iProvinceIncreaseGrowthRateSize; i4++) {
                        i3 += Game.getProvince(i).provinceIncreaseGrowthRateDaysLeft.get(i4).daysLeft;
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("InQueue") + ": ", CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (Game.getProvince(i).iProvinceIncreaseGrowthRateSize - 1), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" [" + Game.lang.get(str, i3) + "]", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, CFG.PADDING));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                }
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Empty());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ClickToIncreasePopulationGrowthRate"), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.populationGrowth, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (Game.getProvince(i).getCivID() != Game.player.iCivID) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(Game.getProvince(i).getCivID()).getCivName(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(i).getCivID(), CFG.PADDING, 0));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.vassal, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Cost") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.getIncreaseGrowthRateCost(i), 10), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(" = " + CFG.getPrecision2(GameValues.growthRate.INCREASE_GROWTH_RATE_COST, 10) + " + " + Game.lang.get("GrowthRate") + " * " + CFG.getPrecision2(GameValues.growthRate.INCREASE_GROWTH_RATE_COST_PER_GROWTH_RATE, 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AfterXDays", Game.getIncreaseGrowthRateTime(Game.player.iCivID)) + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT2));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("LocalGrowthRate") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(GameValues.growthRate.INCREASE_GROWTH_RATE_GROWTH, 100) + "%", CFG.FONT_REGULAR_SMALL, Colors.COLOR_POPULATION));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.populationGrowth, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (CFG.isDesktop()) {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("ShiftClickToIncreaseGrowthRateXTimes", 5), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
            }
        }
        return z ? new AnonymousClass44(arrayList) : new MenuElement_Hover(arrayList);
    }

    public static MenuElement_Hover getHoverProvince(int i) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(Game.getProvince(i).getCivID(), Game.getProvince(i).getProvinceName()));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", CFG.getNumberWithSpaces("" + Game.getProvince(i).getPopulationTotal()), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Economy") + ": ", CFG.getPrecision2(Game.getProvince(i).getEconomyWithBonuses(), 10), Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Income") + ": ", CFG.getPrecision2(Game.getProvince(i).getProvinceIncome() - Game.getProvince(i).fProvinceMaintenance, 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        return new MenuElement_Hover(arrayList);
    }

    public static MenuElement_Hover getHoverProvinceIncome(int i, boolean z) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ProvinceMonthlyIncome") + ": ", CFG.getPrecision2(Game.getProvince(i).getProvinceIncome() - Game.getProvince(i).fProvinceMaintenance, 100), Images.gold, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        float f = Game.getProvince(i).fProvinceIncomeTaxation;
        float f2 = f + 0.0f;
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("IncomeTaxation") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(f, 100), CFG.FONT_BOLD_SMALL, f > 0.0f ? Colors.HOVER_POSITIVE : Colors.HOVER_NEUTRAL));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.tax, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        float f3 = Game.getProvince(i).fProvinceIncomeEconomy;
        float f4 = f2 + f3;
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Economy") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(f3, 100), CFG.FONT_BOLD_SMALL, f3 > 0.0f ? Colors.HOVER_POSITIVE : Colors.HOVER_NEUTRAL));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_ECONOMY, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        float f5 = Game.getProvince(i).fProvinceIncomeProduction;
        float f6 = f4 + f5;
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(fiRhHJntP.LPlouTPzT) + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(f5, 100), CFG.FONT_BOLD_SMALL, f5 > 0.0f ? Colors.HOVER_POSITIVE : Colors.HOVER_NEUTRAL));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.goods, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        float f7 = Game.getProvince(i).provBonuses.MonthlyIncome;
        float f8 = f6 + f7;
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Buildings") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(f7, 100), CFG.FONT_BOLD_SMALL, f7 > 0.0f ? Colors.HOVER_POSITIVE : Colors.HOVER_NEUTRAL));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (Game.getProvince(i).isCapital) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Capital") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(GameValues.capital.CAPITAL_MONTHLY_INCOME, 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("TotalIncome") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(f8, 100), CFG.FONT_BOLD_SMALL, f8 > 0.0f ? Colors.HOVER_POSITIVE : Colors.HOVER_NEUTRAL));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (!Game.getProvince(i).haveACore(Game.getProvince(i).getCivID()) || Game.getProvince(i).getReligion() != Game.getCiv(Game.getProvince(i).getCivID()).getReligionID() || Game.getCiv(Game.getProvince(i).getCivID()).getCorruption() > 0.005f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(Game.getProvince(i).getCivID()).getCorruption() > 0.005f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Corruption") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("-" + CFG.getPrecision2(Game.getCiv(Game.getProvince(i).getCivID()).getCorruption() * 100.0f, 10) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.corruption, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (!Game.getProvince(i).haveACore(Game.getProvince(i).getCivID())) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("NonCoreProvince") + ":", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(i).getCivID(), CFG.PADDING, CFG.PADDING));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(GameValues.core.BASE_INCOME_NON_CORE * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getProvince(i).getReligion() != Game.getCiv(Game.getProvince(i).getCivID()).getReligionID()) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DifferentReligion") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(GameValues.religion.BASE_INCOME_DIFFERENT_RELIGION * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getProvince(i).getDevastation() > 5.0E-5f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Devastation") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.getProvince(i).getDevastation() * 100.0f, 10) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.devastation, CFG.PADDING, CFG.PADDING));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ProvinceIncome") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("-" + CFG.getPrecision2(Game.getProvince(i).getDevastation() * 100.0f, 10) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        float provinceBuildingsMaintenance = Game.getProvince(i).fProvinceMaintenance - Game.getProvince(i).getProvinceBuildingsMaintenance();
        float f9 = provinceBuildingsMaintenance + 0.0f;
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ProvinceMaintenance") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text((provinceBuildingsMaintenance > 0.0f ? "-" : "") + CFG.getPrecision2(provinceBuildingsMaintenance, 100), CFG.FONT_BOLD_SMALL, provinceBuildingsMaintenance > 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_NEUTRAL));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(" = " + Game.lang.get("Economy") + " * " + CFG.getPrecision2(GameValues.province.PROVINCE_MAINTENANCE_PER_ECONOMY, 1000) + " + " + Game.lang.get("TaxEfficiency") + " * " + CFG.getPrecision2(GameValues.province.PROVINCE_MAINTENANCE_PER_TAX, 1000) + " + " + Game.lang.get("Manpower") + " * " + CFG.getPrecision2(GameValues.province.PROVINCE_MAINTENANCE_PER_MANPOWER, 1000), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
        arrayList2.clear();
        float provinceBuildingsMaintenance2 = Game.getProvince(i).getProvinceBuildingsMaintenance();
        float f10 = f9 + provinceBuildingsMaintenance2;
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("BuildingsMaintenance") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text((provinceBuildingsMaintenance2 > 0.0f ? "-" : "") + CFG.getPrecision2(provinceBuildingsMaintenance2, 100), CFG.FONT_BOLD_SMALL, provinceBuildingsMaintenance2 > 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_NEUTRAL));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("TotalExpenses") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text((f10 > 0.0f ? "-" : "") + CFG.getPrecision2(f10, 100), CFG.FONT_BOLD_SMALL, f10 > 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_NEUTRAL));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        return z ? new AnonymousClass46(arrayList) : new MenuElement_Hover(arrayList);
    }

    public static MenuElement_Hover getHoverReligion(int i, boolean z, boolean z2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusReligion(Game.lang.get("Religion") + ": ", Game.religionManager.getReligion(Game.getProvince(i).getReligion()).Name, Game.getProvince(i).getReligion(), CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        try {
            if (Game.getProvince(i).religionConversion != null) {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ReligionConversionProgress") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2((1.0f - (Game.getProvince(i).religionConversion.daysLeft / Game.getProvince(i).religionConversion.investTime)) * 100.0f, 10) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_RIGHT));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } else if (z2 && Game.getProvince(i).getCivID() == Game.player.iCivID && Game.getProvince(i).getReligion() != Game.getCiv(Game.player.iCivID).getReligionID()) {
                arrayList2.add(new MenuElement_HoverElement_Type_Empty());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ConvertReligion") + ": ", CFG.FONT_BOLD_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.religionManager.getReligion(Game.getCiv(Game.player.iCivID).getReligionID()).Name, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ReligionConversionCost") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.religionManager.getReligionConversionCost(i), CFG.FONT_BOLD_SMALL, Colors.HOVER_RIGHT));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.religion, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(" = " + CFG.getPrecision2(GameValues.religion.DEFAULT_CONVERSION_COST, 100) + " + " + Game.lang.get("GrowthRate") + " * " + CFG.getPrecision2(GameValues.religion.CONVERSION_COST_PER_GROWTH_RATE, 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ReligionConversionTime") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.religionManager.getReligionConversionTime(i), CFG.FONT_BOLD_SMALL, Colors.HOVER_RIGHT));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(" = " + GameValues.religion.DEFAULT_CONVERSION_TIME + " + min(" + CFG.getPrecision2(GameValues.religion.DEFAULT_CONVERSION_TIME_POPULATION_MIN, 10) + ", " + Game.lang.get("Population") + " / " + CFG.getPrecision2(GameValues.religion.DEFAULT_CONVERSION_TIME_POPULATION, 10) + ")", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        if (Game.getProvince(i).getReligion() != Game.getCiv(Game.getProvince(i).getCivID()).getReligionID()) {
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DifferentReligion"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.religion, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ProvinceMonthlyIncome") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(GameValues.religion.BASE_INCOME_DIFFERENT_RELIGION * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        return z ? new AnonymousClass42(arrayList) : new MenuElement_Hover(arrayList);
    }

    public static MenuElement_Hover getHoverResource(int i, int i2, boolean z) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (i2 >= 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusResource(Game.lang.get("Resource") + ": ", ResourcesManager.lResources.get(i2).Name, i2, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        } else {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Resource") + ": ", Game.lang.get("None"), Images.resourceNone, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (i2 >= 0) {
            if (Game.getCiv(Game.getProvince(i).getCivID()).getTechResearched(ResourcesManager.lResources.get(i2).RequiredTechID)) {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Price") + ": ", "" + CFG.getPrecision2(ResourcesManager.getPrice(i2), 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MonthlyIncome") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(jkEBdieJhbh.DvWBqpKiq + CFG.getPrecision2(ResourcesManager.getMonthlyIncome(i, i2), 100), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.tax, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(" = " + Game.lang.get("Price") + " * " + Game.lang.get("ProductionEfficiency") + " %", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
                if (Game.getCiv(Game.getProvince(i).getCivID()).getCorruption() > 0.005f) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Corruption") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("-" + CFG.getPrecision2(Game.getCiv(Game.getProvince(i).getCivID()).getCorruption() * 100.0f, 10) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.corruption, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2, !z));
                    arrayList2.clear();
                }
                if (!Game.getProvince(i).haveACore(Game.getProvince(i).getCivID())) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("NonCoreProvince") + ":", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                    arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(i).getCivID(), CFG.PADDING, CFG.PADDING));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(GameValues.core.BASE_INCOME_NON_CORE * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2, !z));
                    arrayList2.clear();
                }
                if (Game.getProvince(i).getReligion() != Game.getCiv(Game.getProvince(i).getCivID()).getReligionID()) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DifferentReligion") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(GameValues.religion.BASE_INCOME_DIFFERENT_RELIGION * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2, !z));
                    arrayList2.clear();
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Production") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(ResourcesManager.getProducedGoods(i), 10), CFG.FONT_BOLD_SMALL, Colors.HOVER_RIGHT));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(" = " + CFG.getPrecision2(GameValues.production.BASE_PRODUCTION, 100) + " + " + Game.lang.get("Economy") + " * " + CFG.getPrecision2(GameValues.production.GOODS_PRODUCED_PER_ECONOMY, 100) + " * " + Game.lang.get("ProductionEfficiency") + " %", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ProductionEfficiency") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(ResourcesManager.getProductionEfficiency(i) * 100.0f, 10) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_RIGHT));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.goods, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(" = (" + CFG.getPrecision2(GameValues.production.BASE_PRODUCTION_EFFICIENCY * 100.0f, 100) + " + " + Game.lang.get("Economy") + " * " + CFG.getPrecision2(GameValues.production.PRODUCTION_EFFICIENCY_PER_ECONOMY * 100.0f, 100) + ") * " + Game.lang.get("Bonuses"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
                if (ResourcesManager.worldResourcesProduced.get(i2).intValue() > 0) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Line());
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("LargestProducer") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT2));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(ResourcesManager.worldResources_LargestProducer.get(i2).intValue()).getCivName(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Flag(ResourcesManager.worldResources_LargestProducer.get(i2).intValue(), CFG.PADDING, CFG.PADDING));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    InGame_Goods.BonusText bonusText = InGame_Goods.getBonusText(i2);
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Bonus") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT2));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(bonusText.bonusText, CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT2));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(bonusText.bonusText2, CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(bonusText.bonusIMGID, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                }
                if (ResourcesManager.lResources.get(i2).uniqueBuildingID >= 0) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Line());
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("UniqueBuilding") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT2));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + BuildingsManager.buildings.get(ResourcesManager.lResources.get(i2).uniqueBuildingID).Name[0], CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                    arrayList2.add(new MenuElement_HoverElement_Type_Resource(i2, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(ResourcesManager.getResourceGroupName(ResourcesManager.lResources.get(i2).GroupID), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.goods, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("RequiredTechnology") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + TechnologyTree.lTechnology.get(ResourcesManager.lResources.get(i2).RequiredTechID).Name, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
        }
        if (!z) {
            return new MenuElement_Hover(arrayList);
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Empty());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ProducedGoods"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.goods, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        return new AnonymousClass38(arrayList, true);
    }

    public static MenuElement_Hover getHoverTaxEfficiency(int i, boolean z) {
        String str;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("TaxEfficiency") + ": ", CFG.getPrecision2(Game.getProvinceTaxEfficiency(i), 100) + "%", Images.tax, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        StringBuilder sb = new StringBuilder();
        LanguageManager languageManager = Game.lang;
        String str2 = qIuEvFbUtcea.PIrYwWHosN;
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(sb.append(languageManager.get(str2)).append(": ").toString(), "" + CFG.getNumberWithSpaces("" + Game.getProvince(i).getPopulationTotal()), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MonthlyIncomeTaxation") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(Game.getIncomePopulationTaxation(i), 100), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(" = " + GameValues.tax.BASE_INCOME_POPULATION_INCOME + " + (min(" + Game.lang.get(str2) + ", " + GameValues.tax.TAX_EFFICIENCY_MAX_POPULATION + ") / " + CFG.getPrecision2(GameValues.tax.TAX_EFFICIENCY_POPULATION_DIVIDE, 10) + ") * " + Game.lang.get("TaxEfficiency") + " %", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
        arrayList2.clear();
        if (Game.getCiv(Game.getProvince(i).getCivID()).getCorruption() > 0.005f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Corruption") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("-" + CFG.getPrecision2(Game.getCiv(Game.getProvince(i).getCivID()).getCorruption() * 100.0f, 10) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.corruption, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2, !z));
            arrayList2.clear();
        }
        if (Game.getProvince(i).haveACore(Game.getProvince(i).getCivID())) {
            str = "";
        } else {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("NonCoreProvince") + ":", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(i).getCivID(), CFG.PADDING, CFG.PADDING));
            str = "";
            arrayList2.add(new MenuElement_HoverElement_Type_Text(str + CFG.getPrecision2(GameValues.core.BASE_INCOME_NON_CORE * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2, !z));
            arrayList2.clear();
        }
        if (Game.getProvince(i).getReligion() != Game.getCiv(Game.getProvince(i).getCivID()).getReligionID()) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DifferentReligion") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(str + CFG.getPrecision2(GameValues.religion.BASE_INCOME_DIFFERENT_RELIGION * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2, !z));
            arrayList2.clear();
        }
        if (Game.getProvince(i).getDevastation() > 1.0E-4f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Devastation") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(str + CFG.getPrecision2(Game.getProvince(i).getDevastation() * 100.0f, 10) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.devastation, CFG.PADDING, CFG.PADDING));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ProvinceIncome") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("-" + CFG.getPrecision2(Game.getProvince(i).getDevastation() * 100.0f, 10) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2, !z));
            arrayList2.clear();
        }
        if (Game.getProvince(i).getCivID() == Game.player.iCivID || Game.getCiv(Game.getProvince(i).getCivID()).getPuppetOfCivID() == Game.player.iCivID) {
            if ((Game.getProvince(i).getCivID() == Game.player.iCivID || Game.getCiv(Game.getProvince(i).getCivID()).getPuppetOfCivID() == Game.player.iCivID) && Game.getProvince(i).iProvinceIncreaseTaxEfficiencySize > 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Progress") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DaysX", Game.getProvince(i).provinceIncreasTaxEfficiencyDaysLeft.get(0).daysLeft), CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, CFG.PADDING));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("[" + CFG.getPrecision2((1.0f - (Game.getProvince(i).provinceIncreasTaxEfficiencyDaysLeft.get(0).daysLeft / Game.getProvince(i).provinceIncreasTaxEfficiencyDaysLeft.get(0).investTime)) * 100.0f, 10) + "%]", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                if (Game.getProvince(i).iProvinceIncreaseTaxEfficiencySize > 1) {
                    int i2 = 0;
                    for (int i3 = 0; i3 < Game.getProvince(i).iProvinceIncreaseTaxEfficiencySize; i3++) {
                        i2 += Game.getProvince(i).provinceIncreasTaxEfficiencyDaysLeft.get(i3).daysLeft;
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("InQueue") + ": ", CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(str + (Game.getProvince(i).iProvinceIncreaseTaxEfficiencySize - 1), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" [" + Game.lang.get("DaysX", i2) + "]", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, CFG.PADDING));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                }
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Empty());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ClickToIncreaseLocalTaxEfficiency"), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.taxUp, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (Game.getProvince(i).getCivID() != Game.player.iCivID) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(Game.getProvince(i).getCivID()).getCivName(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(i).getCivID(), CFG.PADDING, 0));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.vassal, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Cost") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(str + CFG.getPrecision2(Game.getIncreaseTaxEfficiencyCost(i), 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(" = " + CFG.getPrecision2(GameValues.tax.INCREASE_TAX_EFFICIENCY_COST, 10) + " + " + Game.lang.get("TaxEfficiency") + " * " + CFG.getPrecision2(GameValues.tax.INCREASE_TAX_EFFICIENCY_COST_PER_TAX_EFFICIENCY, 10), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("LegacyPoints") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(str + CFG.getPrecision2(Game.getIncreaseTaxEfficiencyCostLegacy(i), 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.legacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(" = " + CFG.getPrecision2(GameValues.tax.INCREASE_TAX_EFFICIENCY_COST_LEGACY, 10) + " + " + Game.lang.get("TaxEfficiency") + " * " + CFG.getPrecision2(GameValues.tax.INCREASE_TAX_EFFICIENCY_COST_LEGACY_PER_TAX, 10), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2, !z));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AfterXDays", Game.getIncreasTaxEfficiencyTime(Game.player.iCivID)) + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT2));
            arrayList.add(new MenuElement_HoverElement(arrayList2, !z));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("TaxEfficiency") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(GameValues.tax.INCREASE_TAX_EFFICIENCY_GROWTH, 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.tax, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2, !z));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MonthlyIncomeTaxation") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(Game.getIncomePopulationTaxation_Invest(i), 1000), CFG.FONT_REGULAR_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2, !z));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("InvestmentPayoff") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(str + Game_Calendar.getNumOfDates_ByTurnID(Game_Calendar.TURN_ID + ((int) ((Game.getIncreaseTaxEfficiencyCost(i) / Game.getIncomePopulationTaxation_Invest(i)) * 30.0f))), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (CFG.isDesktop()) {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("ShiftClickToIncreaseTaxationEfficiencyXTimes", 5), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
            }
        }
        return z ? new AnonymousClass39(arrayList) : new MenuElement_Hover(arrayList);
    }

    public static MenuElement_Hover getHoverUnrest(int i, boolean z, boolean z2) {
        Color color;
        Color color2;
        Color color3;
        Color color4;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Unrest") + ": ", CFG.getPrecision2(Game.getProvince(i).getRevulutionaryRisk(), 100) + "%", Images.revolutionRisk, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        float revolutionaryRisk_MonhtlyChange = Game.getProvince(i).getRevolutionaryRisk_MonhtlyChange();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MonthlyChange") + ": ", CFG.FONT_REGULAR_SMALL));
        String str = (revolutionaryRisk_MonhtlyChange > 0.0f ? "+" : "") + CFG.getPrecision2(revolutionaryRisk_MonhtlyChange, 1000);
        int i2 = CFG.FONT_BOLD_SMALL;
        if (revolutionaryRisk_MonhtlyChange == 0.0f) {
            color = Colors.HOVER_NEUTRAL;
        } else {
            color = revolutionaryRisk_MonhtlyChange < 0.0f ? Colors.HOVER_POSITIVE : Colors.HOVER_NEGATIVE;
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Text(str, i2, color));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        float revolutionaryRisk_MonhtlyChange_BudgetTaxation = Game.getProvince(i).getRevolutionaryRisk_MonhtlyChange_BudgetTaxation();
        String str2 = Game.lang.get("TaxationLevel") + ": ";
        String precision2 = CFG.getPrecision2(revolutionaryRisk_MonhtlyChange_BudgetTaxation, 1000);
        int i3 = Images.gold;
        int i4 = CFG.FONT_REGULAR_SMALL;
        int i5 = CFG.FONT_BOLD_SMALL;
        Color color5 = Colors.HOVER_LEFT;
        if (revolutionaryRisk_MonhtlyChange_BudgetTaxation == 0.0f) {
            color2 = Colors.HOVER_NEUTRAL;
        } else {
            color2 = revolutionaryRisk_MonhtlyChange_BudgetTaxation < 0.0f ? Colors.HOVER_POSITIVE : Colors.HOVER_NEGATIVE;
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str2, precision2, i3, i4, i5, color5, color2));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        float revolutionaryRisk_MonhtlyChange_WarWeariness = Game.getProvince(i).getRevolutionaryRisk_MonhtlyChange_WarWeariness();
        String str3 = Game.lang.get(CaiJWNfqszJNZ.nowjZOHFqpx) + ": ";
        String precision3 = CFG.getPrecision2(revolutionaryRisk_MonhtlyChange_WarWeariness, Toast.TIME_INVIEW_VERY_VERY_LONG);
        int i6 = Images.weariness;
        int i7 = CFG.FONT_REGULAR_SMALL;
        int i8 = CFG.FONT_BOLD_SMALL;
        Color color6 = Colors.HOVER_LEFT;
        if (revolutionaryRisk_MonhtlyChange_WarWeariness == 0.0f) {
            color3 = Colors.HOVER_NEUTRAL;
        } else {
            color3 = revolutionaryRisk_MonhtlyChange_WarWeariness < 0.0f ? Colors.HOVER_POSITIVE : Colors.HOVER_NEGATIVE;
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str3, precision3, i6, i7, i8, color6, color3));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        float revolutionaryRisk_MonhtlyChange_CivStability = Game.getProvince(i).getRevolutionaryRisk_MonhtlyChange_CivStability();
        String str4 = Game.lang.get("CivilizationStability") + ": ";
        String precision4 = CFG.getPrecision2(revolutionaryRisk_MonhtlyChange_CivStability, Toast.TIME_INVIEW_VERY_VERY_LONG);
        int i9 = Images.civStability;
        int i10 = CFG.FONT_REGULAR_SMALL;
        int i11 = CFG.FONT_BOLD_SMALL;
        Color color7 = Colors.HOVER_LEFT;
        if (revolutionaryRisk_MonhtlyChange_CivStability == 0.0f) {
            color4 = Colors.HOVER_NEUTRAL;
        } else {
            color4 = revolutionaryRisk_MonhtlyChange_CivStability < 0.0f ? Colors.HOVER_POSITIVE : Colors.HOVER_NEGATIVE;
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str4, precision4, i9, i10, i11, color7, color4));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (Game.getProvince(i).getRevulutionaryRisk() > 0.0f && z2) {
            arrayList2.add(new MenuElement_HoverElement_Type_Empty());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ReduceRevolutionaryRisk"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.revolutionRisk, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Cost") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.revolutionManager.getDecreaseRevolutionaryRisk_CostGold(i), 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("LegacyPoints") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.revolutionManager.getDecreaseRevolutionaryRisk_CostLegacy(i), 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.legacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        return z ? new AnonymousClass47(arrayList) : new MenuElement_Hover(arrayList);
    }

    public static int getSecondLineH() {
        return (ImageManager.getImage(Images.terrainFrame).getHeight() - CFG.TEXT_HEIGHT) - (CFG.PADDING * 3);
    }

    public static void loadProvinceIMG() {
        try {
            int i = provinceIMG_ID;
            if (i >= 0) {
                Image image = provinceIMG;
                if (image == null || i != provinceIMG_ID_Loaded) {
                    if (image != null) {
                        image.dispose();
                        provinceIMG = null;
                    }
                    provinceIMG = loadProvinceImage();
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static Image loadProvinceImage() {
        try {
            if (FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_PROVINCES_IMG + provinceIMG_ID + ".png").exists()) {
                provinceIMG_ID_Loaded = provinceIMG_ID;
                return new Image(ImageManager.loadTexture_RGB888("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_PROVINCES_IMG + provinceIMG_ID + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
            }
        } catch (Exception e) {
            provinceIMG_ID_Loaded = -1;
            CFG.exceptionStack(e);
        }
        try {
            Image image = provinceIMG;
            if (image == null) {
                return null;
            }
            image.dispose();
            return null;
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
            return null;
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void actionCloseMenu() {
        super.actionCloseMenu();
        Game.gameActiveProvince.resetLastActiveProvince();
        Game.setActiveProvinceID(-1);
        Game.menuManager.setVisibleInGame_ProvinceInfo(false);
        Keyboard keyboard = Game.keyboard;
        if (Keyboard.keyboardMode && Keyboard.keyboardActionType == Keyboard.KeyboardActionType.INGAME_RENAME_PROVINCE) {
            Game.keyboard.hideKeyboard();
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3;
        int i4;
        if (Game.iActiveProvince < 0) {
            Game.menuManager.setVisibleInGame_ProvinceInfo(false);
            return;
        }
        if (lTime + 60 >= CFG.currentTimeMillis) {
            i3 = (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - lTime) / 60.0f)));
            i4 = i2 + ((int) ((CFG.BUTTON_HEIGHT / 2.0f) - ((CFG.BUTTON_HEIGHT / 2) * ((CFG.currentTimeMillis - lTime) / 60.0f))));
        } else {
            i3 = i;
            i4 = i2;
        }
        nTranslateX = i3;
        nTranslateY = i4;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - getTitle().getHeight()) + i4, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i4, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop580, Images.insideBot580);
        ImageManager.getImage(this.imageOverID).draw2(spriteBatch, getPosX() + i3, getPosY() + i4, getWidth(), Math.min(getHeight(), ImageManager.getImage(this.imageOverID).getHeight()));
        spriteBatch.setColor(Color.WHITE);
        super.draw(spriteBatch, i3, i4, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public boolean getVisible() {
        return super.getVisible() && Game.mapBG.getHideMenuZoomOut();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void onHovered() {
        super.onHovered();
        Game.menuManager.setOrderOfMenu_InGameProvinceInfo();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        if (!getVisible()) {
            long j = CFG.currentTimeMillis;
            lTime = j;
            lTime2 = j;
        }
        Keyboard keyboard = Game.keyboard;
        if (Keyboard.keyboardMode && Keyboard.keyboardActionType == Keyboard.KeyboardActionType.INGAME_RENAME_PROVINCE) {
            Game.keyboard.hideKeyboard();
        }
        super.setVisible(z);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void updateLanguage() {
        super.updateLanguage();
    }
}
