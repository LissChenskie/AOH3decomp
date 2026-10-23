package aoc.kingdoms.lukasz.menusInGame.Court;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Keyboard;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.menu.ClickAnimation;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.HoverManager;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonCurrentSituation;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Economy;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_GrowthRate;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Infrastructure;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Manpower;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_ProvinceIncome;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Tax;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Resource_Small;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_Special;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_SpecialEmpty;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Write;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Court_Provinces extends Menu {
    public static int iSortID = 2;
    public static String sSearch = "";

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Provinces$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonCurrentSituation {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Court.iActiveCivID = Game.player.iCivID;
            InGame_CourtOptions.iActiveID = InGame_CourtOptions2.idCourt;
            Game.menuManager.rebuildInGame_Court();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
            Game.setRegroupArmyMode(false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(GameValues.court.COUNCIL_NAME), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.council, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.getClickSound_CivOptions();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Provinces$10, reason: invalid class name */
    class AnonymousClass10 extends Text_TitleBlueSort {
        AnonymousClass10(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_Provinces.iSortID == 14) {
                InGame_Court_Provinces.iSortID = 15;
            } else {
                InGame_Court_Provinces.iSortID = 14;
            }
            Game.menuManager.rebuildInGame_CourtProvinces();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Economy"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Provinces$11, reason: invalid class name */
    class AnonymousClass11 extends Text_TitleBlueSort {
        AnonymousClass11(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_Provinces.iSortID == 16) {
                InGame_Court_Provinces.iSortID = 17;
            } else {
                InGame_Court_Provinces.iSortID = 16;
            }
            Game.menuManager.rebuildInGame_CourtProvinces();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Resource"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Provinces$12, reason: invalid class name */
    class AnonymousClass12 extends Text_StaticBG_ID_FlagCiv_Special {
        AnonymousClass12(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, String str2) {
            super(str, i, i2, i3, i4, i5, i6, i7, i8, str2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.iActiveProvince != getCurrent()) {
                Game.mapCoords.centerToProvinceID(getCurrent());
                Game.setActiveProvinceID(getCurrent());
                ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
            } else {
                Game.menuManager.hideCourtCiv();
                Game.menuManager.setVisibleInGame_Civ(false);
                Game.setActiveProvinceID(getCurrent());
                Game.menuManager.rebuildInGame_ProvinceInfo(true);
                ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverProvince(this.id);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_Special
        public Color getColor2(boolean z) {
            return Colors.getColorPopulation(z, getIsHovered());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Provinces$13, reason: invalid class name */
    class AnonymousClass13 extends TextIcon2_ProvinceIncome {
        AnonymousClass13(int i, String str, int i2, int i3, int i4, int i5, int i6) {
            super(i, str, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_PROVINCE_INCOME) {
                this.menuElementHover = null;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverProvinceIncome(this.iProvinceID, false);
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Provinces$14, reason: invalid class name */
    class AnonymousClass14 extends TextIcon2_Tax {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Provinces$14$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.HOVER_YELLOW;
            }
        }

        AnonymousClass14(int i, String str, int i2, int i3, int i4, int i5, int i6) {
            super(i, str, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_ProvinceInfo.actionTax(this.iProvinceID)) {
                MenuManager menuManager = Game.menuManager;
                MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Court_Provinces.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Court_Provinces.this.getMenuPosY(), getWidth(), getHeight()));
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_TAX_EFFICIENCY) {
                this.menuElementHover = null;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverTaxEfficiency(this.iProvinceID, false);
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Provinces$15, reason: invalid class name */
    class AnonymousClass15 extends TextIcon2_GrowthRate {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Provinces$15$1, reason: invalid class name */
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
                MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Court_Provinces.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Court_Provinces.this.getMenuPosY(), getWidth(), getHeight()));
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
            this.menuElementHover = InGame_ProvinceInfo.getHoverPopulationGrowth(this.iProvinceID, false, true);
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Provinces$16, reason: invalid class name */
    class AnonymousClass16 extends TextIcon2_Manpower {
        AnonymousClass16(int i, String str, int i2, int i3, int i4, int i5, int i6) {
            super(i, str, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_ProvinceInfo.actionManpower(this.iProvinceID)) {
                MenuManager menuManager = Game.menuManager;
                MenuManager.addClickAnimation(new ClickAnimation(getPosX() + (getWidth() / 2) + InGame_Court_Provinces.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Court_Provinces.this.getMenuPosY(), getWidth(), getHeight()));
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
            this.menuElementHover = InGame_ProvinceInfo.getHoverManpower(this.iProvinceID, false, true);
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Provinces$17, reason: invalid class name */
    class AnonymousClass17 extends TextIcon2_Infrastructure {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Provinces$17$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.HOVER_LEFT;
            }
        }

        AnonymousClass17(int i, String str, int i2, int i3, int i4, int i5, int i6) {
            super(i, str, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_ProvinceInfo.actionInfrastructure(this.iProvinceID)) {
                MenuManager menuManager = Game.menuManager;
                MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Court_Provinces.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Court_Provinces.this.getMenuPosY(), getWidth(), getHeight()));
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_INFRASTRUCTURE) {
                this.menuElementHover = null;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverInfrastructure(this.iProvinceID, false);
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Provinces$18, reason: invalid class name */
    class AnonymousClass18 extends TextIcon2_Economy {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Provinces$18$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.COLOR_TEXT_ECONOMY;
            }
        }

        AnonymousClass18(int i, String str, int i2, int i3, int i4, int i5, int i6) {
            super(i, str, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_ProvinceInfo.actionEconomy(this.iProvinceID)) {
                MenuManager menuManager = Game.menuManager;
                MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Court_Provinces.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Court_Provinces.this.getMenuPosY(), getWidth(), getHeight()));
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            if (CFG.isDesktop() && GameValues.mapModes.PROVINCE_INFO_HOVER_ECONOMY) {
                this.menuElementHover = null;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverEconomy(this.iProvinceID, false);
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Provinces$19, reason: invalid class name */
    class AnonymousClass19 extends TextIcon_Resource_Small {
        AnonymousClass19(int i, String str, int i2, int i3, int i4, int i5, int i6) {
            super(i, str, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Resource_Small, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverResource(this.iProvinceID, this.resourceID, false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Provinces$2, reason: invalid class name */
    class AnonymousClass2 extends Text_StaticBG_Write {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.SEARCH_COURT_PROVINCES, InGame_Court_Provinces.sSearch);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Write, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return InGame_Court_Provinces.sSearch + Keyboard.getKeyboardVerticalLine();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Provinces$3, reason: invalid class name */
    class AnonymousClass3 extends Text_TitleBlueSort {
        AnonymousClass3(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_Provinces.iSortID == 0) {
                InGame_Court_Provinces.iSortID = 1;
            } else {
                InGame_Court_Provinces.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_CourtProvinces();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Name"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Provinces$4, reason: invalid class name */
    class AnonymousClass4 extends Text_TitleBlueSort {
        AnonymousClass4(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_Provinces.iSortID == 2) {
                InGame_Court_Provinces.iSortID = 3;
            } else {
                InGame_Court_Provinces.iSortID = 2;
            }
            Game.menuManager.rebuildInGame_CourtProvinces();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Population"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Provinces$5, reason: invalid class name */
    class AnonymousClass5 extends Text_TitleBlueSort {
        AnonymousClass5(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_Provinces.iSortID == 4) {
                InGame_Court_Provinces.iSortID = 5;
            } else {
                InGame_Court_Provinces.iSortID = 4;
            }
            Game.menuManager.rebuildInGame_CourtProvinces();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Income"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Provinces$6, reason: invalid class name */
    class AnonymousClass6 extends Text_TitleBlueSort {
        AnonymousClass6(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_Provinces.iSortID == 6) {
                InGame_Court_Provinces.iSortID = 7;
            } else {
                InGame_Court_Provinces.iSortID = 6;
            }
            Game.menuManager.rebuildInGame_CourtProvinces();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("TaxEfficiency"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Provinces$7, reason: invalid class name */
    class AnonymousClass7 extends Text_TitleBlueSort {
        AnonymousClass7(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_Provinces.iSortID == 8) {
                InGame_Court_Provinces.iSortID = 9;
            } else {
                InGame_Court_Provinces.iSortID = 8;
            }
            Game.menuManager.rebuildInGame_CourtProvinces();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("GrowthRate"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Provinces$8, reason: invalid class name */
    class AnonymousClass8 extends Text_TitleBlueSort {
        AnonymousClass8(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_Provinces.iSortID == 10) {
                InGame_Court_Provinces.iSortID = 11;
            } else {
                InGame_Court_Provinces.iSortID = 10;
            }
            Game.menuManager.rebuildInGame_CourtProvinces();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Manpower"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Provinces$9, reason: invalid class name */
    class AnonymousClass9 extends Text_TitleBlueSort {
        AnonymousClass9(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_Provinces.iSortID == 12) {
                InGame_Court_Provinces.iSortID = 13;
            } else {
                InGame_Court_Provinces.iSortID = 12;
            }
            Game.menuManager.rebuildInGame_CourtProvinces();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Infrastructure"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0442 A[LOOP:20: B:99:0x0434->B:101:0x0442, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:104:0x045e  */
    /* JADX WARN: Code duplicated, block: B:107:0x0467  */
    /* JADX WARN: Code duplicated, block: B:109:0x046f  */
    /* JADX WARN: Code duplicated, block: B:111:0x0473  */
    /* JADX WARN: Code duplicated, block: B:114:0x047b  */
    /* JADX WARN: Code duplicated, block: B:116:0x04a5  */
    /* JADX WARN: Code duplicated, block: B:119:0x04b0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:120:0x04b2  */
    /* JADX WARN: Code duplicated, block: B:123:0x04ba  */
    /* JADX WARN: Code duplicated, block: B:125:0x04e4  */
    /* JADX WARN: Code duplicated, block: B:127:0x04e8  */
    /* JADX WARN: Code duplicated, block: B:129:0x04eb  */
    /* JADX WARN: Code duplicated, block: B:132:0x04f3  */
    /* JADX WARN: Code duplicated, block: B:134:0x0519  */
    /* JADX WARN: Code duplicated, block: B:136:0x051d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:137:0x051f  */
    /* JADX WARN: Code duplicated, block: B:140:0x0527  */
    /* JADX WARN: Code duplicated, block: B:142:0x054d  */
    /* JADX WARN: Code duplicated, block: B:144:0x0551  */
    /* JADX WARN: Code duplicated, block: B:146:0x0554  */
    /* JADX WARN: Code duplicated, block: B:149:0x055c  */
    /* JADX WARN: Code duplicated, block: B:151:0x05a6  */
    /* JADX WARN: Code duplicated, block: B:153:0x05ac A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:154:0x05ae  */
    /* JADX WARN: Code duplicated, block: B:157:0x05b6  */
    /* JADX WARN: Code duplicated, block: B:159:0x0600  */
    /* JADX WARN: Code duplicated, block: B:161:0x0604  */
    /* JADX WARN: Code duplicated, block: B:163:0x0607  */
    /* JADX WARN: Code duplicated, block: B:166:0x060f  */
    /* JADX WARN: Code duplicated, block: B:168:0x0637  */
    /* JADX WARN: Code duplicated, block: B:171:0x063f  */
    /* JADX WARN: Code duplicated, block: B:173:0x0642  */
    /* JADX WARN: Code duplicated, block: B:176:0x064a  */
    /* JADX WARN: Code duplicated, block: B:178:0x0672  */
    /* JADX WARN: Code duplicated, block: B:181:0x0679 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:182:0x067b  */
    /* JADX WARN: Code duplicated, block: B:185:0x0683  */
    /* JADX WARN: Code duplicated, block: B:187:0x06ab  */
    /* JADX WARN: Code duplicated, block: B:189:0x06af A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:190:0x06b1  */
    /* JADX WARN: Code duplicated, block: B:193:0x06b9  */
    /* JADX WARN: Code duplicated, block: B:195:0x06e1  */
    /* JADX WARN: Code duplicated, block: B:197:0x06e5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:198:0x06e7  */
    /* JADX WARN: Code duplicated, block: B:201:0x06ef  */
    /* JADX WARN: Code duplicated, block: B:203:0x0717  */
    /* JADX WARN: Code duplicated, block: B:205:0x071b  */
    /* JADX WARN: Code duplicated, block: B:207:0x071f  */
    /* JADX WARN: Code duplicated, block: B:210:0x0727  */
    /* JADX WARN: Code duplicated, block: B:212:0x074f  */
    /* JADX WARN: Code duplicated, block: B:214:0x0753  */
    /* JADX WARN: Code duplicated, block: B:216:0x0757  */
    /* JADX WARN: Code duplicated, block: B:219:0x075f  */
    /* JADX WARN: Code duplicated, block: B:221:0x0785  */
    /* JADX WARN: Code duplicated, block: B:223:0x078b  */
    /* JADX WARN: Code duplicated, block: B:225:0x078f  */
    /* JADX WARN: Code duplicated, block: B:228:0x0797  */
    /* JADX WARN: Code duplicated, block: B:230:0x07bd  */
    /* JADX WARN: Code duplicated, block: B:232:0x07c3  */
    /* JADX WARN: Code duplicated, block: B:234:0x07c7  */
    /* JADX WARN: Code duplicated, block: B:237:0x07cf  */
    /* JADX WARN: Code duplicated, block: B:239:0x07f7  */
    /* JADX WARN: Code duplicated, block: B:241:0x07fb  */
    /* JADX WARN: Code duplicated, block: B:243:0x07ff  */
    /* JADX WARN: Code duplicated, block: B:246:0x0807  */
    /* JADX WARN: Code duplicated, block: B:248:0x082f  */
    /* JADX WARN: Code duplicated, block: B:250:0x0833  */
    /* JADX WARN: Code duplicated, block: B:252:0x0837  */
    /* JADX WARN: Code duplicated, block: B:255:0x083f  */
    /* JADX WARN: Code duplicated, block: B:257:0x0871  */
    /* JADX WARN: Code duplicated, block: B:259:0x0877  */
    /* JADX WARN: Code duplicated, block: B:261:0x087b  */
    /* JADX WARN: Code duplicated, block: B:264:0x0883  */
    /* JADX WARN: Code duplicated, block: B:266:0x08b5  */
    /* JADX WARN: Code duplicated, block: B:268:0x08bb  */
    /* JADX WARN: Code duplicated, block: B:271:0x0b20  */
    /* JADX WARN: Code duplicated, block: B:276:0x0430 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:278:0x0b1b A[EDGE_INSN: B:278:0x0b1b->B:270:0x0b1b BREAK  A[LOOP:1: B:105:0x0461->B:269:0x08bc], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:285:0x04a6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:288:0x04e5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:291:0x051a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:294:0x054e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:297:0x05a7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:300:0x0601 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:303:0x0638 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:306:0x0673 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:309:0x06ac A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:312:0x06e2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:315:0x0718 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:318:0x0750 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:321:0x0786 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:324:0x07be A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:327:0x07f8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:330:0x0830 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:333:0x0872 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:336:0x08b6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:42:0x0209  */
    /* JADX WARN: Code duplicated, block: B:43:0x020c  */
    /* JADX WARN: Code duplicated, block: B:49:0x0253  */
    /* JADX WARN: Code duplicated, block: B:51:0x0257  */
    /* JADX WARN: Code duplicated, block: B:52:0x025a  */
    /* JADX WARN: Code duplicated, block: B:58:0x02a0  */
    /* JADX WARN: Code duplicated, block: B:60:0x02a4  */
    /* JADX WARN: Code duplicated, block: B:61:0x02a7  */
    /* JADX WARN: Code duplicated, block: B:67:0x02ef  */
    /* JADX WARN: Code duplicated, block: B:69:0x02f3  */
    /* JADX WARN: Code duplicated, block: B:70:0x02f6  */
    /* JADX WARN: Code duplicated, block: B:76:0x033e  */
    /* JADX WARN: Code duplicated, block: B:78:0x0342  */
    /* JADX WARN: Code duplicated, block: B:79:0x0345  */
    /* JADX WARN: Code duplicated, block: B:85:0x038e  */
    /* JADX WARN: Code duplicated, block: B:87:0x0392  */
    /* JADX WARN: Code duplicated, block: B:88:0x0395  */
    /* JADX WARN: Code duplicated, block: B:91:0x03ea  */
    /* JADX WARN: Code duplicated, block: B:94:0x03ff  */
    /* JADX WARN: Code duplicated, block: B:96:0x041d  */
    /* JADX WARN: Code duplicated, block: B:98:0x0433  */
    public InGame_Court_Provinces() {
        int i;
        boolean z;
        boolean z2;
        int i2;
        int i3;
        int i4;
        boolean z3;
        boolean z4;
        int i5;
        int i6;
        boolean z5;
        boolean z6;
        int i7;
        boolean z7;
        boolean z8;
        int i8;
        boolean z9;
        boolean z10;
        int i9;
        boolean z11;
        boolean z12;
        int height;
        ArrayList arrayList;
        int i10;
        int i11;
        int height2;
        int i12;
        int i13;
        int i14;
        char c;
        char c2;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        int i30;
        int i31;
        int i32;
        int i33;
        int i34;
        int i35;
        int i36;
        String lowerCase;
        int i37;
        ArrayList arrayList2 = new ArrayList();
        int i38 = Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2);
        int i39 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int otherMenuPosX = InGame_CourtOptions2.getOtherMenuPosX();
        int height3 = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i40 = CFG.PADDING;
        int i41 = CFG.PADDING;
        int i42 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
        int i43 = width - (i38 * 2);
        int i44 = (i43 - (CFG.PADDING * 6)) / 7;
        int i45 = CFG.BUTTON_HEIGHT;
        int i46 = i42 + CFG.PADDING + i45;
        int i47 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) / 4.0f);
        int i48 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) / 5.0f);
        int i49 = Images.boxTitleBORDERWIDTH;
        arrayList2.add(new AnonymousClass1(Game.lang.get(GameValues.court.COUNCIL_NAME), Images.council, i38, i41, i43, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.council).getWidth() + (CFG.PADDING * 4), true));
        int height4 = i41 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        int i50 = 1;
        arrayList2.add(new AnonymousClass2(Game.lang.get("Search") + ": ", CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i38, height4, i43, CFG.BUTTON_HEIGHT2));
        int height5 = height4 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        int i51 = iSortID;
        arrayList2.add(new AnonymousClass3(i51 == 0 || i51 == 1, i51 == 1, Game.lang.get("Name"), -1, i49, height5, i47, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width2 = i49 + arrayList2.get(arrayList2.size() - 1).getWidth();
        int i52 = iSortID;
        int i53 = 3;
        arrayList2.add(new AnonymousClass4(i52 == 2 || i52 == 3, i52 == 3, Game.lang.get("Population"), -1, width2, height5, i47, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width3 = width2 + arrayList2.get(arrayList2.size() - 1).getWidth();
        int i54 = iSortID;
        int i55 = 5;
        arrayList2.add(new AnonymousClass5(i54 == 4 || i54 == 5, i54 == 5, Game.lang.get("Income"), -1, width3, height5, i47, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width4 = width3 + arrayList2.get(arrayList2.size() - 1).getWidth();
        int i56 = iSortID;
        if (i56 != 6) {
            i = 7;
            if (i56 != 7) {
                z = false;
            }
            if (i56 == i) {
                z2 = true;
            } else {
                z2 = false;
            }
            arrayList2.add(new AnonymousClass6(z, z2, Game.lang.get("TaxEfficiency"), -1, width4, height5, i47, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
            int i57 = Images.boxTitleBORDERWIDTH;
            int height6 = height5 + arrayList2.get(arrayList2.size() - 1).getHeight();
            i2 = iSortID;
            i3 = 8;
            i4 = 9;
            if (i2 != 8 || i2 == 9) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (i2 == 9) {
                z4 = true;
            } else {
                z4 = false;
            }
            arrayList2.add(new AnonymousClass7(z3, z4, Game.lang.get("GrowthRate"), -1, i57, height6, i48, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
            int width5 = i57 + arrayList2.get(arrayList2.size() - 1).getWidth();
            i5 = iSortID;
            i6 = 10;
            if (i5 != 10 || i5 == 11) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (i5 == 11) {
                z6 = true;
            } else {
                z6 = false;
            }
            arrayList2.add(new AnonymousClass8(z5, z6, Game.lang.get("Manpower"), -1, width5, height6, i48, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
            int width6 = width5 + arrayList2.get(arrayList2.size() - 1).getWidth();
            i7 = iSortID;
            if (i7 != 12 || i7 == 13) {
                z7 = true;
            } else {
                z7 = false;
            }
            if (i7 == 13) {
                z8 = true;
            } else {
                z8 = false;
            }
            arrayList2.add(new AnonymousClass9(z7, z8, Game.lang.get("Infrastructure"), -1, width6, height6, i48, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
            int width7 = width6 + arrayList2.get(arrayList2.size() - 1).getWidth();
            i8 = iSortID;
            if (i8 != 14 || i8 == 15) {
                z9 = true;
            } else {
                z9 = false;
            }
            if (i8 == 15) {
                z10 = true;
            } else {
                z10 = false;
            }
            arrayList2.add(new AnonymousClass10(z9, z10, Game.lang.get("Economy"), -1, width7, height6, i48, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
            int width8 = width7 + arrayList2.get(arrayList2.size() - 1).getWidth();
            i9 = iSortID;
            if (i9 != 16 || i9 == 17) {
                z11 = true;
            } else {
                z11 = false;
            }
            if (i9 == 17) {
                z12 = true;
            } else {
                z12 = false;
            }
            arrayList2.add(new AnonymousClass11(z11, z12, Game.lang.get("Resource"), -1, width8, height6, i48, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
            arrayList2.get(arrayList2.size() - 1).getWidth();
            height = height6 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
            arrayList = new ArrayList();
            if (sSearch.length() > 0) {
                lowerCase = sSearch.toLowerCase();
                for (i37 = 0; i37 < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i37++) {
                    if (Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i37)).getProvinceName().toLowerCase().indexOf(lowerCase) >= 0) {
                        arrayList.add(Integer.valueOf(Game.getCiv(Game.player.iCivID).getProvinceID(i37)));
                    }
                }
            } else {
                for (i10 = 0; i10 < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i10++) {
                    arrayList.add(Integer.valueOf(Game.getCiv(Game.player.iCivID).getProvinceID(i10)));
                }
            }
            if (arrayList.size() > 0) {
                height2 = height;
                i12 = 0;
                while (arrayList.size() > 0) {
                    i13 = i12 + 1;
                    if (i12 < GameValues.inGame.COURT_PROVINCES_LIMIT) {
                        break;
                    }
                    i14 = iSortID;
                    if (i14 == 0) {
                        i31 = 0;
                        for (i36 = i50; i36 < arrayList.size(); i36++) {
                            if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList.get(i31)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList.get(i36)).intValue()).getProvinceName())) {
                                i31 = i36;
                            }
                        }
                    } else if (i14 == i50) {
                        i31 = 0;
                        for (i35 = i50; i35 < arrayList.size(); i35++) {
                            if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList.get(i35)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList.get(i31)).intValue()).getProvinceName())) {
                                i31 = i35;
                            }
                        }
                    } else if (i14 == 2) {
                        i31 = 0;
                        for (i34 = i50; i34 < arrayList.size(); i34++) {
                            if (Game.getProvince(((Integer) arrayList.get(i34)).intValue()).getPopulationTotal() > Game.getProvince(((Integer) arrayList.get(i31)).intValue()).getPopulationTotal()) {
                                i31 = i34;
                            }
                        }
                    } else if (i14 == i53) {
                        i31 = 0;
                        for (i33 = i50; i33 < arrayList.size(); i33++) {
                            if (Game.getProvince(((Integer) arrayList.get(i33)).intValue()).getPopulationTotal() < Game.getProvince(((Integer) arrayList.get(i31)).intValue()).getPopulationTotal()) {
                                i31 = i33;
                            }
                        }
                    } else if (i14 == 4) {
                        i31 = 0;
                        for (i32 = i50; i32 < arrayList.size(); i32++) {
                            if (Game.getProvince(((Integer) arrayList.get(i32)).intValue()).getProvinceIncome() - Game.getProvince(((Integer) arrayList.get(i32)).intValue()).fProvinceMaintenance > Game.getProvince(((Integer) arrayList.get(i31)).intValue()).getProvinceIncome() - Game.getProvince(((Integer) arrayList.get(i31)).intValue()).fProvinceMaintenance) {
                                i31 = i32;
                            }
                        }
                    } else {
                        if (i14 == i55) {
                            i31 = 0;
                            for (i30 = i50; i30 < arrayList.size(); i30++) {
                                if (Game.getProvince(((Integer) arrayList.get(i30)).intValue()).getProvinceIncome() - Game.getProvince(((Integer) arrayList.get(i30)).intValue()).fProvinceMaintenance < Game.getProvince(((Integer) arrayList.get(i31)).intValue()).getProvinceIncome() - Game.getProvince(((Integer) arrayList.get(i31)).intValue()).fProvinceMaintenance) {
                                    i31 = i30;
                                }
                            }
                        } else {
                            c = 6;
                            if (i14 == 6) {
                                i29 = 0;
                                for (i28 = i50; i28 < arrayList.size(); i28++) {
                                    if (Game.getProvince(((Integer) arrayList.get(i28)).intValue()).getTaxEfficiencyWithBonuses() > Game.getProvince(((Integer) arrayList.get(i29)).intValue()).getTaxEfficiencyWithBonuses()) {
                                        i29 = i28;
                                    }
                                }
                                i15 = i29;
                                c2 = 7;
                            } else {
                                c2 = 7;
                                if (i14 == 7) {
                                    i17 = 0;
                                    for (i27 = i50; i27 < arrayList.size(); i27++) {
                                        if (Game.getProvince(((Integer) arrayList.get(i27)).intValue()).getTaxEfficiencyWithBonuses() < Game.getProvince(((Integer) arrayList.get(i17)).intValue()).getTaxEfficiencyWithBonuses()) {
                                            i17 = i27;
                                        }
                                    }
                                } else if (i14 == i3) {
                                    i17 = 0;
                                    for (i26 = i50; i26 < arrayList.size(); i26++) {
                                        if (Game.getProvince(((Integer) arrayList.get(i26)).intValue()).getGrowthRateWithBonuses() > Game.getProvince(((Integer) arrayList.get(i17)).intValue()).getGrowthRateWithBonuses()) {
                                            i17 = i26;
                                        }
                                    }
                                } else if (i14 == i4) {
                                    i17 = 0;
                                    for (i25 = i50; i25 < arrayList.size(); i25++) {
                                        if (Game.getProvince(((Integer) arrayList.get(i25)).intValue()).getGrowthRateWithBonuses() < Game.getProvince(((Integer) arrayList.get(i17)).intValue()).getGrowthRateWithBonuses()) {
                                            i17 = i25;
                                        }
                                    }
                                } else if (i14 == i6) {
                                    i17 = 0;
                                    for (i24 = i50; i24 < arrayList.size(); i24++) {
                                        if (Game.getProvince(((Integer) arrayList.get(i24)).intValue()).getManpower() > Game.getProvince(((Integer) arrayList.get(i17)).intValue()).getManpower()) {
                                            i17 = i24;
                                        }
                                    }
                                } else if (i14 == 11) {
                                    i17 = 0;
                                    for (i23 = i50; i23 < arrayList.size(); i23++) {
                                        if (Game.getProvince(((Integer) arrayList.get(i23)).intValue()).getManpower() < Game.getProvince(((Integer) arrayList.get(i17)).intValue()).getManpower()) {
                                            i17 = i23;
                                        }
                                    }
                                } else if (i14 == 12) {
                                    i17 = 0;
                                    for (i22 = i50; i22 < arrayList.size(); i22++) {
                                        if (Game.getProvince(((Integer) arrayList.get(i22)).intValue()).getInfrastructure() > Game.getProvince(((Integer) arrayList.get(i17)).intValue()).getInfrastructure()) {
                                            i17 = i22;
                                        }
                                    }
                                } else if (i14 == 13) {
                                    i17 = 0;
                                    for (i21 = i50; i21 < arrayList.size(); i21++) {
                                        if (Game.getProvince(((Integer) arrayList.get(i21)).intValue()).getInfrastructure() < Game.getProvince(((Integer) arrayList.get(i17)).intValue()).getInfrastructure()) {
                                            i17 = i21;
                                        }
                                    }
                                } else if (i14 == 14) {
                                    i17 = 0;
                                    for (i20 = i50; i20 < arrayList.size(); i20++) {
                                        if (Game.getProvince(((Integer) arrayList.get(i20)).intValue()).getEconomyWithBonuses() > Game.getProvince(((Integer) arrayList.get(i17)).intValue()).getEconomyWithBonuses()) {
                                            i17 = i20;
                                        }
                                    }
                                } else if (i14 == 15) {
                                    i17 = 0;
                                    for (i19 = i50; i19 < arrayList.size(); i19++) {
                                        if (Game.getProvince(((Integer) arrayList.get(i19)).intValue()).getEconomyWithBonuses() < Game.getProvince(((Integer) arrayList.get(i17)).intValue()).getEconomyWithBonuses()) {
                                            i17 = i19;
                                        }
                                    }
                                } else if (i14 == 16) {
                                    i17 = 0;
                                    for (i18 = i50; i18 < arrayList.size(); i18++) {
                                        if (CFG.compareAlphabetic_TwoString(ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList.get(i17)).intValue()).getResourceID()), ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList.get(i18)).intValue()).getResourceID()))) {
                                            i17 = i18;
                                        }
                                    }
                                } else if (i14 == 17) {
                                    i17 = 0;
                                    for (i16 = i50; i16 < arrayList.size(); i16++) {
                                        if (CFG.compareAlphabetic_TwoString(ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList.get(i16)).intValue()).getResourceID()), ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList.get(i17)).intValue()).getResourceID()))) {
                                            i17 = i16;
                                        }
                                    }
                                } else {
                                    i15 = 0;
                                }
                                i15 = i17;
                            }
                        }
                        int iIntValue = ((Integer) arrayList.get(i15)).intValue();
                        ArrayList arrayList3 = arrayList;
                        arrayList2.add(new AnonymousClass12(Game.getProvince(iIntValue).getProvinceName(), CFG.FONT_REGULAR, CFG.PADDING * 2, i38, height2, i43, i42, iIntValue, Images.population, CFG.getNumberWithSpaces("" + Game.getProvince(iIntValue).getPopulationTotal())));
                        int height7 = height2 + arrayList2.get(arrayList2.size() - 1).getHeight();
                        int i58 = width;
                        arrayList2.add(new AnonymousClass13(iIntValue, "" + CFG.getPrecision2(Game.getProvince(iIntValue).getProvinceIncome() - Game.getProvince(iIntValue).fProvinceMaintenance, 100), Images.gold, i38, height7, i44, i45));
                        int width9 = arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING + i38;
                        arrayList2.add(new AnonymousClass14(iIntValue, "" + CFG.getPrecision2(Game.getProvince(iIntValue).getTaxEfficiencyWithBonuses(), 10) + "%", Images.tax, width9, height7, i44, i45));
                        int width10 = width9 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                        arrayList2.add(new AnonymousClass15(iIntValue, "" + CFG.getPrecision2(Game.getProvince(iIntValue).getGrowthRateWithBonuses(), 10) + "%", Images.populationGrowth, width10, height7, i44, i45));
                        int width11 = width10 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                        arrayList2.add(new AnonymousClass16(iIntValue, "1", Game_Calendar.IMG_MANPOWER, width11, height7, i44, i45));
                        int width12 = width11 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                        arrayList2.add(new AnonymousClass17(iIntValue, "", Images.infrastructure, width12, height7, i44, i45));
                        int width13 = width12 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                        i6 = 10;
                        arrayList2.add(new AnonymousClass18(iIntValue, "" + CFG.getPrecision2(Game.getProvince(iIntValue).getEconomyWithBonuses(), 10), Game_Calendar.IMG_ECONOMY, width13, height7, i44, i45));
                        arrayList2.add(new AnonymousClass19(iIntValue, ResourcesManager.getResourceName(Game.getProvince(iIntValue).getResourceID()), Game.getProvince(iIntValue).getResourceID(), width13 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING, height7, i44, i45));
                        arrayList2.get(arrayList2.size() - 1).getWidth();
                        int i59 = CFG.PADDING;
                        int height8 = height7 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                        arrayList2.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(i39, height8 - i46, i58 - (i39 * 2), i46));
                        height2 = height8 + CFG.PADDING;
                        arrayList = arrayList3;
                        arrayList.remove(i15);
                        width = i58;
                        i12 = i13;
                        i4 = 9;
                        i3 = i3;
                        i55 = i55;
                        i53 = 3;
                        i50 = 1;
                    }
                    i15 = i31;
                    c2 = 7;
                    c = 6;
                    int iIntValue2 = ((Integer) arrayList.get(i15)).intValue();
                    ArrayList arrayList4 = arrayList;
                    arrayList2.add(new AnonymousClass12(Game.getProvince(iIntValue2).getProvinceName(), CFG.FONT_REGULAR, CFG.PADDING * 2, i38, height2, i43, i42, iIntValue2, Images.population, CFG.getNumberWithSpaces("" + Game.getProvince(iIntValue2).getPopulationTotal())));
                    int height9 = height2 + arrayList2.get(arrayList2.size() - 1).getHeight();
                    int i510 = width;
                    arrayList2.add(new AnonymousClass13(iIntValue2, "" + CFG.getPrecision2(Game.getProvince(iIntValue2).getProvinceIncome() - Game.getProvince(iIntValue2).fProvinceMaintenance, 100), Images.gold, i38, height9, i44, i45));
                    int width14 = arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING + i38;
                    arrayList2.add(new AnonymousClass14(iIntValue2, "" + CFG.getPrecision2(Game.getProvince(iIntValue2).getTaxEfficiencyWithBonuses(), 10) + "%", Images.tax, width14, height9, i44, i45));
                    int width15 = width14 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                    arrayList2.add(new AnonymousClass15(iIntValue2, "" + CFG.getPrecision2(Game.getProvince(iIntValue2).getGrowthRateWithBonuses(), 10) + "%", Images.populationGrowth, width15, height9, i44, i45));
                    int width16 = width15 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                    arrayList2.add(new AnonymousClass16(iIntValue2, "1", Game_Calendar.IMG_MANPOWER, width16, height9, i44, i45));
                    int width17 = width16 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                    arrayList2.add(new AnonymousClass17(iIntValue2, "", Images.infrastructure, width17, height9, i44, i45));
                    int width18 = width17 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                    i6 = 10;
                    arrayList2.add(new AnonymousClass18(iIntValue2, "" + CFG.getPrecision2(Game.getProvince(iIntValue2).getEconomyWithBonuses(), 10), Game_Calendar.IMG_ECONOMY, width18, height9, i44, i45));
                    arrayList2.add(new AnonymousClass19(iIntValue2, ResourcesManager.getResourceName(Game.getProvince(iIntValue2).getResourceID()), Game.getProvince(iIntValue2).getResourceID(), width18 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING, height9, i44, i45));
                    arrayList2.get(arrayList2.size() - 1).getWidth();
                    int i511 = CFG.PADDING;
                    int height10 = height9 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                    arrayList2.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(i39, height10 - i46, i510 - (i39 * 2), i46));
                    height2 = height10 + CFG.PADDING;
                    arrayList = arrayList4;
                    arrayList.remove(i15);
                    width = i510;
                    i12 = i13;
                    i4 = 9;
                    i3 = i3;
                    i55 = i55;
                    i53 = 3;
                    i50 = 1;
                }
                i11 = width;
            } else {
                i11 = width;
                arrayList2.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i38, height, i43, CFG.BUTTON_HEIGHT2));
                height2 = height + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
            }
            int i60 = height2;
            int i61 = height3 + InGame_CourtOptions.menuH;
            int iMin = Math.min(i60, (CFG.GAME_HEIGHT - i61) - (CFG.PADDING * 3));
            int i62 = i11;
            arrayList2.add(new Empty(0, 0, i62, Math.max(i60, iMin)));
            initMenu(null, otherMenuPosX, i61, i62, iMin, arrayList2, false, false);
            this.drawScrollPositionAlways = false;
            Game.menuManager.setInGame_CivOptions_Title(Game.lang.get("Provinces") + ": " + Game.getCiv(Game.player.iCivID).getNumOfProvinces());
        }
        i = 7;
        z = true;
        if (i56 == i) {
            z2 = true;
        } else {
            z2 = false;
        }
        arrayList2.add(new AnonymousClass6(z, z2, Game.lang.get("TaxEfficiency"), -1, width4, height5, i47, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int i512 = Images.boxTitleBORDERWIDTH;
        int height11 = height5 + arrayList2.get(arrayList2.size() - 1).getHeight();
        i2 = iSortID;
        i3 = 8;
        i4 = 9;
        if (i2 != 8) {
            z3 = true;
        } else {
            z3 = true;
        }
        if (i2 == 9) {
            z4 = true;
        } else {
            z4 = false;
        }
        arrayList2.add(new AnonymousClass7(z3, z4, Game.lang.get("GrowthRate"), -1, i512, height11, i48, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width19 = i512 + arrayList2.get(arrayList2.size() - 1).getWidth();
        i5 = iSortID;
        i6 = 10;
        if (i5 != 10) {
            z5 = true;
        } else {
            z5 = true;
        }
        if (i5 == 11) {
            z6 = true;
        } else {
            z6 = false;
        }
        arrayList2.add(new AnonymousClass8(z5, z6, Game.lang.get("Manpower"), -1, width19, height11, i48, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width20 = width19 + arrayList2.get(arrayList2.size() - 1).getWidth();
        i7 = iSortID;
        if (i7 != 12) {
            z7 = true;
        } else {
            z7 = true;
        }
        if (i7 == 13) {
            z8 = true;
        } else {
            z8 = false;
        }
        arrayList2.add(new AnonymousClass9(z7, z8, Game.lang.get("Infrastructure"), -1, width20, height11, i48, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width21 = width20 + arrayList2.get(arrayList2.size() - 1).getWidth();
        i8 = iSortID;
        if (i8 != 14) {
            z9 = true;
        } else {
            z9 = true;
        }
        if (i8 == 15) {
            z10 = true;
        } else {
            z10 = false;
        }
        arrayList2.add(new AnonymousClass10(z9, z10, Game.lang.get("Economy"), -1, width21, height11, i48, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width22 = width21 + arrayList2.get(arrayList2.size() - 1).getWidth();
        i9 = iSortID;
        if (i9 != 16) {
            z11 = true;
        } else {
            z11 = true;
        }
        if (i9 == 17) {
            z12 = true;
        } else {
            z12 = false;
        }
        arrayList2.add(new AnonymousClass11(z11, z12, Game.lang.get("Resource"), -1, width22, height11, i48, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        arrayList2.get(arrayList2.size() - 1).getWidth();
        height = height11 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        arrayList = new ArrayList();
        if (sSearch.length() > 0) {
            lowerCase = sSearch.toLowerCase();
            while (i37 < Game.getCiv(Game.player.iCivID).getNumOfProvinces()) {
                if (Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i37)).getProvinceName().toLowerCase().indexOf(lowerCase) >= 0) {
                    arrayList.add(Integer.valueOf(Game.getCiv(Game.player.iCivID).getProvinceID(i37)));
                }
            }
        } else {
            while (i10 < Game.getCiv(Game.player.iCivID).getNumOfProvinces()) {
                arrayList.add(Integer.valueOf(Game.getCiv(Game.player.iCivID).getProvinceID(i10)));
            }
        }
        if (arrayList.size() > 0) {
            height2 = height;
            i12 = 0;
            while (arrayList.size() > 0) {
                i13 = i12 + 1;
                if (i12 < GameValues.inGame.COURT_PROVINCES_LIMIT) {
                    break;
                    break;
                }
                i14 = iSortID;
                if (i14 == 0) {
                    i31 = 0;
                    while (i36 < arrayList.size()) {
                        if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList.get(i31)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList.get(i36)).intValue()).getProvinceName())) {
                            i31 = i36;
                        }
                    }
                } else if (i14 == i50) {
                    i31 = 0;
                    while (i35 < arrayList.size()) {
                        if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList.get(i35)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList.get(i31)).intValue()).getProvinceName())) {
                            i31 = i35;
                        }
                    }
                } else if (i14 == 2) {
                    i31 = 0;
                    while (i34 < arrayList.size()) {
                        if (Game.getProvince(((Integer) arrayList.get(i34)).intValue()).getPopulationTotal() > Game.getProvince(((Integer) arrayList.get(i31)).intValue()).getPopulationTotal()) {
                            i31 = i34;
                        }
                    }
                } else if (i14 == i53) {
                    i31 = 0;
                    while (i33 < arrayList.size()) {
                        if (Game.getProvince(((Integer) arrayList.get(i33)).intValue()).getPopulationTotal() < Game.getProvince(((Integer) arrayList.get(i31)).intValue()).getPopulationTotal()) {
                            i31 = i33;
                        }
                    }
                } else if (i14 == 4) {
                    i31 = 0;
                    while (i32 < arrayList.size()) {
                        if (Game.getProvince(((Integer) arrayList.get(i32)).intValue()).getProvinceIncome() - Game.getProvince(((Integer) arrayList.get(i32)).intValue()).fProvinceMaintenance > Game.getProvince(((Integer) arrayList.get(i31)).intValue()).getProvinceIncome() - Game.getProvince(((Integer) arrayList.get(i31)).intValue()).fProvinceMaintenance) {
                            i31 = i32;
                        }
                    }
                } else {
                    if (i14 == i55) {
                        i31 = 0;
                        while (i30 < arrayList.size()) {
                            if (Game.getProvince(((Integer) arrayList.get(i30)).intValue()).getProvinceIncome() - Game.getProvince(((Integer) arrayList.get(i30)).intValue()).fProvinceMaintenance < Game.getProvince(((Integer) arrayList.get(i31)).intValue()).getProvinceIncome() - Game.getProvince(((Integer) arrayList.get(i31)).intValue()).fProvinceMaintenance) {
                                i31 = i30;
                            }
                        }
                    } else {
                        c = 6;
                        if (i14 == 6) {
                            i29 = 0;
                            while (i28 < arrayList.size()) {
                                if (Game.getProvince(((Integer) arrayList.get(i28)).intValue()).getTaxEfficiencyWithBonuses() > Game.getProvince(((Integer) arrayList.get(i29)).intValue()).getTaxEfficiencyWithBonuses()) {
                                    i29 = i28;
                                }
                            }
                            i15 = i29;
                            c2 = 7;
                        } else {
                            c2 = 7;
                            if (i14 == 7) {
                                i17 = 0;
                                while (i27 < arrayList.size()) {
                                    if (Game.getProvince(((Integer) arrayList.get(i27)).intValue()).getTaxEfficiencyWithBonuses() < Game.getProvince(((Integer) arrayList.get(i17)).intValue()).getTaxEfficiencyWithBonuses()) {
                                        i17 = i27;
                                    }
                                }
                            } else if (i14 == i3) {
                                i17 = 0;
                                while (i26 < arrayList.size()) {
                                    if (Game.getProvince(((Integer) arrayList.get(i26)).intValue()).getGrowthRateWithBonuses() > Game.getProvince(((Integer) arrayList.get(i17)).intValue()).getGrowthRateWithBonuses()) {
                                        i17 = i26;
                                    }
                                }
                            } else if (i14 == i4) {
                                i17 = 0;
                                while (i25 < arrayList.size()) {
                                    if (Game.getProvince(((Integer) arrayList.get(i25)).intValue()).getGrowthRateWithBonuses() < Game.getProvince(((Integer) arrayList.get(i17)).intValue()).getGrowthRateWithBonuses()) {
                                        i17 = i25;
                                    }
                                }
                            } else if (i14 == i6) {
                                i17 = 0;
                                while (i24 < arrayList.size()) {
                                    if (Game.getProvince(((Integer) arrayList.get(i24)).intValue()).getManpower() > Game.getProvince(((Integer) arrayList.get(i17)).intValue()).getManpower()) {
                                        i17 = i24;
                                    }
                                }
                            } else if (i14 == 11) {
                                i17 = 0;
                                while (i23 < arrayList.size()) {
                                    if (Game.getProvince(((Integer) arrayList.get(i23)).intValue()).getManpower() < Game.getProvince(((Integer) arrayList.get(i17)).intValue()).getManpower()) {
                                        i17 = i23;
                                    }
                                }
                            } else if (i14 == 12) {
                                i17 = 0;
                                while (i22 < arrayList.size()) {
                                    if (Game.getProvince(((Integer) arrayList.get(i22)).intValue()).getInfrastructure() > Game.getProvince(((Integer) arrayList.get(i17)).intValue()).getInfrastructure()) {
                                        i17 = i22;
                                    }
                                }
                            } else if (i14 == 13) {
                                i17 = 0;
                                while (i21 < arrayList.size()) {
                                    if (Game.getProvince(((Integer) arrayList.get(i21)).intValue()).getInfrastructure() < Game.getProvince(((Integer) arrayList.get(i17)).intValue()).getInfrastructure()) {
                                        i17 = i21;
                                    }
                                }
                            } else if (i14 == 14) {
                                i17 = 0;
                                while (i20 < arrayList.size()) {
                                    if (Game.getProvince(((Integer) arrayList.get(i20)).intValue()).getEconomyWithBonuses() > Game.getProvince(((Integer) arrayList.get(i17)).intValue()).getEconomyWithBonuses()) {
                                        i17 = i20;
                                    }
                                }
                            } else if (i14 == 15) {
                                i17 = 0;
                                while (i19 < arrayList.size()) {
                                    if (Game.getProvince(((Integer) arrayList.get(i19)).intValue()).getEconomyWithBonuses() < Game.getProvince(((Integer) arrayList.get(i17)).intValue()).getEconomyWithBonuses()) {
                                        i17 = i19;
                                    }
                                }
                            } else if (i14 == 16) {
                                i17 = 0;
                                while (i18 < arrayList.size()) {
                                    if (CFG.compareAlphabetic_TwoString(ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList.get(i17)).intValue()).getResourceID()), ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList.get(i18)).intValue()).getResourceID()))) {
                                        i17 = i18;
                                    }
                                }
                            } else if (i14 == 17) {
                                i17 = 0;
                                while (i16 < arrayList.size()) {
                                    if (CFG.compareAlphabetic_TwoString(ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList.get(i16)).intValue()).getResourceID()), ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList.get(i17)).intValue()).getResourceID()))) {
                                        i17 = i16;
                                    }
                                }
                            } else {
                                i15 = 0;
                            }
                            i15 = i17;
                        }
                    }
                    int iIntValue3 = ((Integer) arrayList.get(i15)).intValue();
                    ArrayList arrayList5 = arrayList;
                    arrayList2.add(new AnonymousClass12(Game.getProvince(iIntValue3).getProvinceName(), CFG.FONT_REGULAR, CFG.PADDING * 2, i38, height2, i43, i42, iIntValue3, Images.population, CFG.getNumberWithSpaces("" + Game.getProvince(iIntValue3).getPopulationTotal())));
                    int height12 = height2 + arrayList2.get(arrayList2.size() - 1).getHeight();
                    int i513 = width;
                    arrayList2.add(new AnonymousClass13(iIntValue3, "" + CFG.getPrecision2(Game.getProvince(iIntValue3).getProvinceIncome() - Game.getProvince(iIntValue3).fProvinceMaintenance, 100), Images.gold, i38, height12, i44, i45));
                    int width110 = arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING + i38;
                    arrayList2.add(new AnonymousClass14(iIntValue3, "" + CFG.getPrecision2(Game.getProvince(iIntValue3).getTaxEfficiencyWithBonuses(), 10) + "%", Images.tax, width110, height12, i44, i45));
                    int width111 = width110 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                    arrayList2.add(new AnonymousClass15(iIntValue3, "" + CFG.getPrecision2(Game.getProvince(iIntValue3).getGrowthRateWithBonuses(), 10) + "%", Images.populationGrowth, width111, height12, i44, i45));
                    int width112 = width111 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                    arrayList2.add(new AnonymousClass16(iIntValue3, "1", Game_Calendar.IMG_MANPOWER, width112, height12, i44, i45));
                    int width113 = width112 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                    arrayList2.add(new AnonymousClass17(iIntValue3, "", Images.infrastructure, width113, height12, i44, i45));
                    int width114 = width113 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                    i6 = 10;
                    arrayList2.add(new AnonymousClass18(iIntValue3, "" + CFG.getPrecision2(Game.getProvince(iIntValue3).getEconomyWithBonuses(), 10), Game_Calendar.IMG_ECONOMY, width114, height12, i44, i45));
                    arrayList2.add(new AnonymousClass19(iIntValue3, ResourcesManager.getResourceName(Game.getProvince(iIntValue3).getResourceID()), Game.getProvince(iIntValue3).getResourceID(), width114 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING, height12, i44, i45));
                    arrayList2.get(arrayList2.size() - 1).getWidth();
                    int i514 = CFG.PADDING;
                    int height13 = height12 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                    arrayList2.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(i39, height13 - i46, i513 - (i39 * 2), i46));
                    height2 = height13 + CFG.PADDING;
                    arrayList = arrayList5;
                    arrayList.remove(i15);
                    width = i513;
                    i12 = i13;
                    i4 = 9;
                    i3 = i3;
                    i55 = i55;
                    i53 = 3;
                    i50 = 1;
                }
                i15 = i31;
                c2 = 7;
                c = 6;
                int iIntValue4 = ((Integer) arrayList.get(i15)).intValue();
                ArrayList arrayList6 = arrayList;
                arrayList2.add(new AnonymousClass12(Game.getProvince(iIntValue4).getProvinceName(), CFG.FONT_REGULAR, CFG.PADDING * 2, i38, height2, i43, i42, iIntValue4, Images.population, CFG.getNumberWithSpaces("" + Game.getProvince(iIntValue4).getPopulationTotal())));
                int height14 = height2 + arrayList2.get(arrayList2.size() - 1).getHeight();
                int i515 = width;
                arrayList2.add(new AnonymousClass13(iIntValue4, "" + CFG.getPrecision2(Game.getProvince(iIntValue4).getProvinceIncome() - Game.getProvince(iIntValue4).fProvinceMaintenance, 100), Images.gold, i38, height14, i44, i45));
                int width115 = arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING + i38;
                arrayList2.add(new AnonymousClass14(iIntValue4, "" + CFG.getPrecision2(Game.getProvince(iIntValue4).getTaxEfficiencyWithBonuses(), 10) + "%", Images.tax, width115, height14, i44, i45));
                int width116 = width115 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                arrayList2.add(new AnonymousClass15(iIntValue4, "" + CFG.getPrecision2(Game.getProvince(iIntValue4).getGrowthRateWithBonuses(), 10) + "%", Images.populationGrowth, width116, height14, i44, i45));
                int width117 = width116 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                arrayList2.add(new AnonymousClass16(iIntValue4, "1", Game_Calendar.IMG_MANPOWER, width117, height14, i44, i45));
                int width118 = width117 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                arrayList2.add(new AnonymousClass17(iIntValue4, "", Images.infrastructure, width118, height14, i44, i45));
                int width119 = width118 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                i6 = 10;
                arrayList2.add(new AnonymousClass18(iIntValue4, "" + CFG.getPrecision2(Game.getProvince(iIntValue4).getEconomyWithBonuses(), 10), Game_Calendar.IMG_ECONOMY, width119, height14, i44, i45));
                arrayList2.add(new AnonymousClass19(iIntValue4, ResourcesManager.getResourceName(Game.getProvince(iIntValue4).getResourceID()), Game.getProvince(iIntValue4).getResourceID(), width119 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING, height14, i44, i45));
                arrayList2.get(arrayList2.size() - 1).getWidth();
                int i516 = CFG.PADDING;
                int height15 = height14 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                arrayList2.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(i39, height15 - i46, i515 - (i39 * 2), i46));
                height2 = height15 + CFG.PADDING;
                arrayList = arrayList6;
                arrayList.remove(i15);
                width = i515;
                i12 = i13;
                i4 = 9;
                i3 = i3;
                i55 = i55;
                i53 = 3;
                i50 = 1;
            }
            i11 = width;
        } else {
            i11 = width;
            arrayList2.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i38, height, i43, CFG.BUTTON_HEIGHT2));
            height2 = height + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        }
        int i63 = height2;
        int i64 = height3 + InGame_CourtOptions.menuH;
        int iMin2 = Math.min(i63, (CFG.GAME_HEIGHT - i64) - (CFG.PADDING * 3));
        int i65 = i11;
        arrayList2.add(new Empty(0, 0, i65, Math.max(i63, iMin2)));
        initMenu(null, otherMenuPosX, i64, i65, iMin2, arrayList2, false, false);
        this.drawScrollPositionAlways = false;
        Game.menuManager.setInGame_CivOptions_Title(Game.lang.get("Provinces") + ": " + Game.getCiv(Game.player.iCivID).getNumOfProvinces());
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void actionCloseMenu() {
        super.actionCloseMenu();
        Game.keyboard.hideKeyboard();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = InGame_Court.lTime + 60 >= CFG.currentTimeMillis ? (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - InGame_Court.lTime) / 60.0f))) : i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - InGame_CourtOptions.menuH) + i2, getWidth(), getHeight() + InGame_CourtOptions.menuH + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop500, Images.insideBot500);
        ImageManager.getImage(Images.rulerOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.rulerOver).getWidth() / 2)) + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.rulerOver).getHeight()));
        super.draw(spriteBatch, i3, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void onHovered() {
        super.onHovered();
        Game.menuManager.setOrderOfMenu_InGameCourt();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        InGame_Court.lTime = CFG.currentTimeMillis;
        InGame_Court.lTime2 = CFG.currentTimeMillis;
        if (z) {
            return;
        }
        Game.keyboard.hideKeyboard();
    }
}
