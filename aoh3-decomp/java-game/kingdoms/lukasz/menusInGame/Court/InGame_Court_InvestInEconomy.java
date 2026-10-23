package aoc.kingdoms.lukasz.menusInGame.Court;

import aoc.kingdoms.lukasz.jakowski.AA_KeyManager;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.map.advisors.VjN.hQfu;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.map.technology.Bhs.fiRhHJntP;
import aoc.kingdoms.lukasz.map.terrain.exjB.uiwPYaNhJS;
import aoc.kingdoms.lukasz.menu.ClickAnimation;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonCurrentSituation;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRect;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Click;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Value;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Resource;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Desc2_Special;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Economy;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Economy2;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_GrowthRate;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2Center;
import aoc.kingdoms.lukasz.menusInGame.DrawOver.SQ.XjthpFh;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.assets.loaders.Wkvw.PZBvyl;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Court_InvestInEconomy extends Menu {
    public static int CLICK_X_TIMES = 1;
    public static int iSortID;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_InvestInEconomy$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonCurrentSituation {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_CourtOptions2.idExploitEconomy != InGame_CourtOptions.iActiveID) {
                InGame_CourtOptions.iActiveID = InGame_CourtOptions2.idExploitEconomy;
                InGame_CourtOptions2.disableAllViews();
                Game.menuManager.rebuildInGame_ExploitEconomy();
                Game.menuManager.setVisibleInGame_Court(true);
                InGame_Court.lTime = 0L;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(uiwPYaNhJS.rhbznMNwzRYM), CFG.FONT_BOLD, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_ECONOMY, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            float economyWithBonuses = 0.0f;
            for (int i = 0; i < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i++) {
                economyWithBonuses += Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i)).getEconomyWithBonuses();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Average") + ": ", CFG.FONT_REGULAR));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + CFG.getPrecision2(economyWithBonuses / Game.getCiv(Game.player.iCivID).getNumOfProvinces(), 100), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Game_Calendar.IMG_ECONOMY, CFG.PADDING, 0));
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.player.iCivID, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.getClickSound_CivOptions();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_InvestInEconomy$10, reason: invalid class name */
    class AnonymousClass10 extends Text_StaticBG_ID {
        AnonymousClass10(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
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
            this.menuElementHover = InGame_ProvinceInfo.getHoverPopulation(getCurrent(), false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_InvestInEconomy$11, reason: invalid class name */
    class AnonymousClass11 extends ButtonStatsRectIMG_Resource {
        AnonymousClass11(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverResource(getCurrent(), getValue1(), false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_InvestInEconomy$12, reason: invalid class name */
    class AnonymousClass12 extends Text_StaticBG_Economy2 {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_InvestInEconomy$12$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.COLOR_TEXT_ECONOMY;
            }
        }

        AnonymousClass12(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            boolean z;
            if (Game.getProvince(getCurrent()).getCivID() == Game.player.iCivID) {
                int i = 0;
                if (AA_KeyManager.SHIFT_HOLD || AA_KeyManager.CTRL_HOLD) {
                    z = false;
                    while (i < 5) {
                        if (Game.canInvestInEconomy(getCurrent())) {
                            Game.menuManager.addToastGold(Game.lang.get("IncreasePopulationGrowthRate"), Images.populationUp);
                            Game.menuManager.addToastInsufficient(Game.lang.get("MaximumEconomy") + ": ", CFG.getPrecision2(Game.getProvince(getCurrent()).getEconomyWithBonuses(), 10) + " / " + CFG.getPrecision2(Game.getMaxEconomy(getCurrent()), 10), Game_Calendar.IMG_ECONOMY);
                            return;
                        }
                        if (Game.getCiv(Game.player.iCivID).fLegacy < Game.getInvestCost_Legacy(getCurrent())) {
                            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + ": ", CFG.getPrecision2(Game.getInvestCost_Legacy(getCurrent()), 100), Images.legacy);
                        } else if (!Game.getProvince(getCurrent()).addInvestInProvince()) {
                            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getInvestCost(getCurrent()), 100), Images.gold);
                            return;
                        } else {
                            ProvinceDraw.addProvinceDot_Economy(getCurrent());
                            z = true;
                        }
                        i++;
                    }
                } else {
                    z = false;
                    while (i < InGame_Court_InvestInEconomy.CLICK_X_TIMES) {
                        if (Game.canInvestInEconomy(getCurrent())) {
                            Game.menuManager.addToastGold(Game.lang.get("IncreasePopulationGrowthRate"), Images.populationUp);
                            Game.menuManager.addToastInsufficient(Game.lang.get("MaximumEconomy") + ": ", CFG.getPrecision2(Game.getProvince(getCurrent()).getEconomyWithBonuses(), 10) + " / " + CFG.getPrecision2(Game.getMaxEconomy(getCurrent()), 10), Game_Calendar.IMG_ECONOMY);
                            return;
                        }
                        if (Game.getCiv(Game.player.iCivID).fLegacy < Game.getInvestCost_Legacy(getCurrent())) {
                            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + ": ", CFG.getPrecision2(Game.getInvestCost_Legacy(getCurrent()), 100), Images.legacy);
                        } else if (!Game.getProvince(getCurrent()).addInvestInProvince()) {
                            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getInvestCost(getCurrent()), 100), Images.gold);
                            return;
                        } else {
                            ProvinceDraw.addProvinceDot_Economy(getCurrent());
                            z = true;
                        }
                        i++;
                    }
                }
                if (z) {
                    MenuManager menuManager = Game.menuManager;
                    MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Court_InvestInEconomy.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Court_InvestInEconomy.this.getMenuPosY(), getWidth(), getHeight()));
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverEconomy(getCurrent(), false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_InvestInEconomy$13, reason: invalid class name */
    class AnonymousClass13 extends ButtonStatsRectIMG_Active_Value {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_InvestInEconomy$13$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.COLOR_TEXT_ECONOMY;
            }
        }

        AnonymousClass13(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            boolean z;
            if (Game.getProvince(getCurrent()).getCivID() == Game.player.iCivID) {
                int i = 0;
                if (AA_KeyManager.SHIFT_HOLD || AA_KeyManager.CTRL_HOLD) {
                    z = false;
                    while (i < 5) {
                        if (Game.canInvestInEconomy(getCurrent())) {
                            Game.menuManager.addToastGold(Game.lang.get("IncreasePopulationGrowthRate"), Images.populationUp);
                            Game.menuManager.addToastInsufficient(Game.lang.get("MaximumEconomy") + ": ", CFG.getPrecision2(Game.getProvince(getCurrent()).getEconomyWithBonuses(), 10) + " / " + CFG.getPrecision2(Game.getMaxEconomy(getCurrent()), 10), Game_Calendar.IMG_ECONOMY);
                            return;
                        }
                        if (Game.getCiv(Game.player.iCivID).fLegacy < Game.getInvestCost_Legacy(getCurrent())) {
                            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + ": ", CFG.getPrecision2(Game.getInvestCost_Legacy(getCurrent()), 100), Images.legacy);
                        } else if (!Game.getProvince(getCurrent()).addInvestInProvince()) {
                            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getInvestCost(getCurrent()), 100), Images.gold);
                            return;
                        } else {
                            ProvinceDraw.addProvinceDot_Economy(getCurrent());
                            z = true;
                        }
                        i++;
                    }
                } else {
                    z = false;
                    while (i < InGame_Court_InvestInEconomy.CLICK_X_TIMES) {
                        if (Game.canInvestInEconomy(getCurrent())) {
                            Game.menuManager.addToastGold(Game.lang.get("IncreasePopulationGrowthRate"), Images.populationUp);
                            Game.menuManager.addToastInsufficient(Game.lang.get("MaximumEconomy") + ": ", CFG.getPrecision2(Game.getProvince(getCurrent()).getEconomyWithBonuses(), 10) + " / " + CFG.getPrecision2(Game.getMaxEconomy(getCurrent()), 10), Game_Calendar.IMG_ECONOMY);
                            return;
                        }
                        if (Game.getCiv(Game.player.iCivID).fLegacy < Game.getInvestCost_Legacy(getCurrent())) {
                            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + ": ", CFG.getPrecision2(Game.getInvestCost_Legacy(getCurrent()), 100), Images.legacy);
                        } else if (!Game.getProvince(getCurrent()).addInvestInProvince()) {
                            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getInvestCost(getCurrent()), 100), Images.gold);
                            return;
                        } else {
                            ProvinceDraw.addProvinceDot_Economy(getCurrent());
                            z = true;
                        }
                        i++;
                    }
                }
                if (z) {
                    MenuManager menuManager = Game.menuManager;
                    MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Court_InvestInEconomy.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Court_InvestInEconomy.this.getMenuPosY(), getWidth(), getHeight()));
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverEconomy(getCurrent(), false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != Game.getInvestCost_Legacy(this.id) * InGame_Court_InvestInEconomy.CLICK_X_TIMES) {
                setText("" + CFG.getPrecision2(Game.getInvestCost_Legacy(this.id) * InGame_Court_InvestInEconomy.CLICK_X_TIMES, 10));
                this.lastValue = Game.getInvestCost_Legacy(this.id) * InGame_Court_InvestInEconomy.CLICK_X_TIMES;
            }
            return this.sText;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_InvestInEconomy$14, reason: invalid class name */
    class AnonymousClass14 extends ButtonStatsRectIMG_Active_Value {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_InvestInEconomy$14$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.COLOR_TEXT_ECONOMY;
            }
        }

        AnonymousClass14(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            boolean z;
            if (Game.getProvince(getCurrent()).getCivID() == Game.player.iCivID) {
                boolean z2 = AA_KeyManager.SHIFT_HOLD;
                int i = 0;
                String str = hQfu.ieiQ;
                if (z2 || AA_KeyManager.CTRL_HOLD) {
                    z = false;
                    while (i < 5) {
                        if (Game.canInvestInEconomy(getCurrent())) {
                            Game.menuManager.addToastGold(Game.lang.get("IncreasePopulationGrowthRate"), Images.populationUp);
                            Game.menuManager.addToastInsufficient(Game.lang.get("MaximumEconomy") + str, CFG.getPrecision2(Game.getProvince(getCurrent()).getEconomyWithBonuses(), 10) + " / " + CFG.getPrecision2(Game.getMaxEconomy(getCurrent()), 10), Game_Calendar.IMG_ECONOMY);
                            return;
                        }
                        if (Game.getCiv(Game.player.iCivID).fLegacy < Game.getInvestCost_Legacy(getCurrent())) {
                            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + str, CFG.getPrecision2(Game.getInvestCost_Legacy(getCurrent()), 100), Images.legacy);
                        } else if (!Game.getProvince(getCurrent()).addInvestInProvince()) {
                            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + str, CFG.getPrecision2(Game.getInvestCost(getCurrent()), 100), Images.gold);
                            return;
                        } else {
                            ProvinceDraw.addProvinceDot_Economy(getCurrent());
                            z = true;
                        }
                        i++;
                    }
                } else {
                    z = false;
                    while (i < InGame_Court_InvestInEconomy.CLICK_X_TIMES) {
                        if (Game.canInvestInEconomy(getCurrent())) {
                            Game.menuManager.addToastGold(Game.lang.get("IncreasePopulationGrowthRate"), Images.populationUp);
                            Game.menuManager.addToastInsufficient(Game.lang.get("MaximumEconomy") + str, CFG.getPrecision2(Game.getProvince(getCurrent()).getEconomyWithBonuses(), 10) + " / " + CFG.getPrecision2(Game.getMaxEconomy(getCurrent()), 10), Game_Calendar.IMG_ECONOMY);
                            return;
                        }
                        if (Game.getCiv(Game.player.iCivID).fLegacy < Game.getInvestCost_Legacy(getCurrent())) {
                            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + str, CFG.getPrecision2(Game.getInvestCost_Legacy(getCurrent()), 100), Images.legacy);
                        } else if (!Game.getProvince(getCurrent()).addInvestInProvince()) {
                            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + str, CFG.getPrecision2(Game.getInvestCost(getCurrent()), 100), Images.gold);
                            return;
                        } else {
                            ProvinceDraw.addProvinceDot_Economy(getCurrent());
                            z = true;
                        }
                        i++;
                    }
                }
                if (z) {
                    MenuManager menuManager = Game.menuManager;
                    MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Court_InvestInEconomy.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Court_InvestInEconomy.this.getMenuPosY(), getWidth(), getHeight()));
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverEconomy(getCurrent(), false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != Game.getInvestCost(this.id) * InGame_Court_InvestInEconomy.CLICK_X_TIMES) {
                setText("" + CFG.getPrecision2(Game.getInvestCost(this.id) * InGame_Court_InvestInEconomy.CLICK_X_TIMES, 10));
                this.lastValue = Game.getInvestCost(this.id) * InGame_Court_InvestInEconomy.CLICK_X_TIMES;
            }
            return this.sText;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_InvestInEconomy$15, reason: invalid class name */
    class AnonymousClass15 extends Text_Title_v2Center {
        AnonymousClass15(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("Economy1"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_InvestInEconomy$16, reason: invalid class name */
    class AnonymousClass16 extends Text_TitleBlue {
        AnonymousClass16(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_InvestInEconomy.iSortID == 0) {
                InGame_Court_InvestInEconomy.iSortID = 1;
            } else {
                InGame_Court_InvestInEconomy.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_InvestInEconomy();
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

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_InvestInEconomy$17, reason: invalid class name */
    class AnonymousClass17 extends Text_TitleBlue {
        AnonymousClass17(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_InvestInEconomy.iSortID == 2) {
                InGame_Court_InvestInEconomy.iSortID = 3;
            } else {
                InGame_Court_InvestInEconomy.iSortID = 2;
            }
            Game.menuManager.rebuildInGame_InvestInEconomy();
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

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_InvestInEconomy$18, reason: invalid class name */
    class AnonymousClass18 extends Text_TitleBlue {
        AnonymousClass18(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_InvestInEconomy.iSortID == 4) {
                InGame_Court_InvestInEconomy.iSortID = 5;
            } else {
                InGame_Court_InvestInEconomy.iSortID = 4;
            }
            Game.menuManager.rebuildInGame_InvestInEconomy();
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

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_InvestInEconomy$19, reason: invalid class name */
    class AnonymousClass19 extends Text_TitleBlue {
        AnonymousClass19(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_InvestInEconomy.iSortID == 6) {
                InGame_Court_InvestInEconomy.iSortID = 7;
            } else {
                InGame_Court_InvestInEconomy.iSortID = 6;
            }
            Game.menuManager.rebuildInGame_InvestInEconomy();
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

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_InvestInEconomy$2, reason: invalid class name */
    class AnonymousClass2 extends Text_Desc2_Special {
        AnonymousClass2(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Desc2_Special, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Desc, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
        protected Color getColor(boolean z) {
            return Colors.getColorButton(z, getIsHovered());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_InvestInEconomy$20, reason: invalid class name */
    class AnonymousClass20 extends Text_StaticBG_ID {
        AnonymousClass20(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
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
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_InvestInEconomy$21, reason: invalid class name */
    class AnonymousClass21 extends ButtonStatsRectIMG_Resource {
        AnonymousClass21(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverResource(getCurrent(), getValue1(), false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_InvestInEconomy$22, reason: invalid class name */
    class AnonymousClass22 extends Text_StaticBG_Economy {
        AnonymousClass22(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverEconomy(getCurrent(), false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_InvestInEconomy$23, reason: invalid class name */
    class AnonymousClass23 extends Text_StaticBG_GrowthRate {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_InvestInEconomy$23$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.COLOR_POPULATION;
            }
        }

        AnonymousClass23(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getProvince(getCurrent()).getCivID() == Game.player.iCivID) {
                int i = 0;
                if (AA_KeyManager.SHIFT_HOLD || AA_KeyManager.CTRL_HOLD) {
                    int i2 = 0;
                    while (i < 5) {
                        if (!Game.getProvince(getCurrent()).addIncreaseGrowthRateInProvince()) {
                            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getIncreaseGrowthRateCost(getCurrent()), 100), Images.gold);
                            break;
                        } else {
                            ProvinceDraw.addProvinceDot_GrowthRate(getCurrent());
                            i++;
                            i2 = 1;
                        }
                    }
                    i = i2;
                } else if (Game.getProvince(getCurrent()).addIncreaseGrowthRateInProvince()) {
                    ProvinceDraw.addProvinceDot_GrowthRate(getCurrent());
                    i = 1;
                } else {
                    Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getIncreaseGrowthRateCost(getCurrent()), 100), Images.gold);
                }
                if (i != 0) {
                    MenuManager menuManager = Game.menuManager;
                    MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Court_InvestInEconomy.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Court_InvestInEconomy.this.getMenuPosY(), getWidth(), getHeight()));
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverPopulationGrowth(getCurrent(), false, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_InvestInEconomy$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != InGame_Court_InvestInEconomy.CLICK_X_TIMES) {
                setText(PZBvyl.whASuqjeOYB + Game.lang.get("PerformTheActionXTimes", InGame_Court_InvestInEconomy.CLICK_X_TIMES));
                this.lastValue = InGame_Court_InvestInEconomy.CLICK_X_TIMES;
            }
            return this.sText;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_InvestInEconomy$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonStatsRect {
        AnonymousClass4(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Court_InvestInEconomy.CLICK_X_TIMES--;
            if (InGame_Court_InvestInEconomy.CLICK_X_TIMES < 1) {
                InGame_Court_InvestInEconomy.CLICK_X_TIMES = 1;
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_InvestInEconomy$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonStatsRect {
        AnonymousClass5(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Court_InvestInEconomy.CLICK_X_TIMES++;
            if (InGame_Court_InvestInEconomy.CLICK_X_TIMES > 9) {
                InGame_Court_InvestInEconomy.CLICK_X_TIMES = 9;
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_InvestInEconomy$6, reason: invalid class name */
    class AnonymousClass6 extends Text_TitleBlueSort {
        AnonymousClass6(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_InvestInEconomy.iSortID == 0) {
                InGame_Court_InvestInEconomy.iSortID = 1;
            } else {
                InGame_Court_InvestInEconomy.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_InvestInEconomy();
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_InvestInEconomy$7, reason: invalid class name */
    class AnonymousClass7 extends Text_TitleBlueSort {
        AnonymousClass7(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_InvestInEconomy.iSortID == 2) {
                InGame_Court_InvestInEconomy.iSortID = 3;
            } else {
                InGame_Court_InvestInEconomy.iSortID = 2;
            }
            Game.menuManager.rebuildInGame_InvestInEconomy();
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_InvestInEconomy$8, reason: invalid class name */
    class AnonymousClass8 extends Text_TitleBlueSort {
        AnonymousClass8(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_InvestInEconomy.iSortID == 4) {
                InGame_Court_InvestInEconomy.iSortID = 5;
            } else {
                InGame_Court_InvestInEconomy.iSortID = 4;
            }
            Game.menuManager.rebuildInGame_InvestInEconomy();
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_InvestInEconomy$9, reason: invalid class name */
    class AnonymousClass9 extends Text_TitleBlueSort {
        AnonymousClass9(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_InvestInEconomy.iSortID == 6) {
                InGame_Court_InvestInEconomy.iSortID = 7;
            } else {
                InGame_Court_InvestInEconomy.iSortID = 6;
            }
            Game.menuManager.rebuildInGame_InvestInEconomy();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Cost"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0435  */
    /* JADX WARN: Code duplicated, block: B:103:0x045d  */
    /* JADX WARN: Code duplicated, block: B:105:0x0461  */
    /* JADX WARN: Code duplicated, block: B:107:0x0464  */
    /* JADX WARN: Code duplicated, block: B:110:0x046c  */
    /* JADX WARN: Code duplicated, block: B:112:0x0494  */
    /* JADX WARN: Code duplicated, block: B:114:0x0498  */
    /* JADX WARN: Code duplicated, block: B:116:0x049b  */
    /* JADX WARN: Code duplicated, block: B:119:0x04a3  */
    /* JADX WARN: Code duplicated, block: B:121:0x04c3  */
    /* JADX WARN: Code duplicated, block: B:123:0x04c7  */
    /* JADX WARN: Code duplicated, block: B:125:0x04ca  */
    /* JADX WARN: Code duplicated, block: B:128:0x04d2  */
    /* JADX WARN: Code duplicated, block: B:130:0x04f2  */
    /* JADX WARN: Code duplicated, block: B:133:0x04f8  */
    /* JADX WARN: Code duplicated, block: B:136:0x0573  */
    /* JADX WARN: Code duplicated, block: B:137:0x05c6  */
    /* JADX WARN: Code duplicated, block: B:141:0x077b  */
    /* JADX WARN: Code duplicated, block: B:143:0x07af  */
    /* JADX WARN: Code duplicated, block: B:146:0x08ac  */
    /* JADX WARN: Code duplicated, block: B:148:0x08b0  */
    /* JADX WARN: Code duplicated, block: B:151:0x08ba  */
    /* JADX WARN: Code duplicated, block: B:153:0x08e4  */
    /* JADX WARN: Code duplicated, block: B:156:0x08f1  */
    /* JADX WARN: Code duplicated, block: B:158:0x08f6  */
    /* JADX WARN: Code duplicated, block: B:161:0x08fe  */
    /* JADX WARN: Code duplicated, block: B:163:0x0928  */
    /* JADX WARN: Code duplicated, block: B:165:0x092c  */
    /* JADX WARN: Code duplicated, block: B:167:0x092f  */
    /* JADX WARN: Code duplicated, block: B:170:0x0937  */
    /* JADX WARN: Code duplicated, block: B:172:0x0969  */
    /* JADX WARN: Code duplicated, block: B:174:0x096d  */
    /* JADX WARN: Code duplicated, block: B:176:0x0970  */
    /* JADX WARN: Code duplicated, block: B:179:0x0978  */
    /* JADX WARN: Code duplicated, block: B:181:0x09aa  */
    /* JADX WARN: Code duplicated, block: B:184:0x09b4  */
    /* JADX WARN: Code duplicated, block: B:186:0x09b7  */
    /* JADX WARN: Code duplicated, block: B:189:0x09bf  */
    /* JADX WARN: Code duplicated, block: B:191:0x09e7  */
    /* JADX WARN: Code duplicated, block: B:194:0x09f0  */
    /* JADX WARN: Code duplicated, block: B:196:0x09f3  */
    /* JADX WARN: Code duplicated, block: B:199:0x09fb  */
    /* JADX WARN: Code duplicated, block: B:201:0x0a23  */
    /* JADX WARN: Code duplicated, block: B:204:0x0a2b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:205:0x0a2d  */
    /* JADX WARN: Code duplicated, block: B:208:0x0a35  */
    /* JADX WARN: Code duplicated, block: B:210:0x0a5d  */
    /* JADX WARN: Code duplicated, block: B:212:0x0a61  */
    /* JADX WARN: Code duplicated, block: B:214:0x0a64  */
    /* JADX WARN: Code duplicated, block: B:217:0x0a6c  */
    /* JADX WARN: Code duplicated, block: B:219:0x0a94  */
    /* JADX WARN: Code duplicated, block: B:222:0x0a9a  */
    /* JADX WARN: Code duplicated, block: B:225:0x0b11  */
    /* JADX WARN: Code duplicated, block: B:226:0x0b65  */
    /* JADX WARN: Code duplicated, block: B:238:0x035f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:241:0x03a1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:244:0x03e2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:247:0x0423 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:250:0x045e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:253:0x0495 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:256:0x04c4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:259:0x04f3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:263:0x08ea A[EDGE_INSN: B:263:0x08ea->B:155:0x08ea BREAK  A[LOOP:11: B:149:0x08b2->B:154:0x08e5], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:265:0x08e5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:268:0x0929 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:271:0x096a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:274:0x09ab A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:277:0x09e8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:280:0x0a24 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:283:0x0a5e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:286:0x0a95 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x0227  */
    /* JADX WARN: Code duplicated, block: B:37:0x022a  */
    /* JADX WARN: Code duplicated, block: B:43:0x026d  */
    /* JADX WARN: Code duplicated, block: B:45:0x0271  */
    /* JADX WARN: Code duplicated, block: B:46:0x0274  */
    /* JADX WARN: Code duplicated, block: B:50:0x02e0  */
    /* JADX WARN: Code duplicated, block: B:52:0x02f2  */
    /* JADX WARN: Code duplicated, block: B:53:0x0306  */
    /* JADX WARN: Code duplicated, block: B:57:0x0326  */
    /* JADX WARN: Code duplicated, block: B:59:0x032a  */
    /* JADX WARN: Code duplicated, block: B:62:0x0332  */
    /* JADX WARN: Code duplicated, block: B:64:0x035e  */
    /* JADX WARN: Code duplicated, block: B:68:0x036a  */
    /* JADX WARN: Code duplicated, block: B:70:0x036e  */
    /* JADX WARN: Code duplicated, block: B:73:0x0376  */
    /* JADX WARN: Code duplicated, block: B:75:0x03a0  */
    /* JADX WARN: Code duplicated, block: B:77:0x03a4  */
    /* JADX WARN: Code duplicated, block: B:79:0x03a7  */
    /* JADX WARN: Code duplicated, block: B:82:0x03af  */
    /* JADX WARN: Code duplicated, block: B:84:0x03e1  */
    /* JADX WARN: Code duplicated, block: B:86:0x03e5  */
    /* JADX WARN: Code duplicated, block: B:88:0x03e8  */
    /* JADX WARN: Code duplicated, block: B:91:0x03f0  */
    /* JADX WARN: Code duplicated, block: B:93:0x0422  */
    /* JADX WARN: Code duplicated, block: B:96:0x042a  */
    /* JADX WARN: Code duplicated, block: B:98:0x042d  */
    public InGame_Court_InvestInEconomy() {
        int i;
        boolean z;
        boolean z2;
        String str;
        int i2;
        boolean z3;
        boolean z4;
        int height;
        int i3;
        int i4;
        ArrayList arrayList;
        ArrayList arrayList2;
        int i5;
        int i6;
        int i7;
        ArrayList arrayList3;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        char c;
        int i8;
        int height2;
        int height3;
        int i9;
        int i10;
        int i11;
        ArrayList arrayList4;
        char c2;
        char c3;
        char c4;
        char c5;
        int i12;
        int i13;
        int i14;
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
        ArrayList arrayList5;
        String str7;
        int width;
        int i25;
        int i26;
        ArrayList arrayList6;
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
        ArrayList arrayList7;
        int width2;
        int i37;
        int i38;
        ArrayList arrayList8 = new ArrayList();
        int i39 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
        int width3 = ImageManager.getImage(Images.insideTop500).getWidth();
        int otherMenuPosX = InGame_CourtOptions2.getOtherMenuPosX();
        int height4 = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i40 = CFG.PADDING;
        int i41 = Images.boxTitleBORDERWIDTH;
        int i42 = CFG.PADDING;
        int i43 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
        int i44 = (int) ((width3 - (Images.boxTitleBORDERWIDTH * 2)) * 0.2f);
        int i45 = (int) ((width3 - (Images.boxTitleBORDERWIDTH * 2)) * 0.2f);
        int i46 = (int) (((width3 - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 5)) * 0.6f);
        int i47 = (int) (((width3 - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 5)) * 0.2f);
        int i48 = width3 - (i39 * 2);
        arrayList8.add(new AnonymousClass1(Game.lang.get("ExploitEconomy"), Game_Calendar.IMG_ECONOMY_DOWN, i39, i42, i48, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.encyclopedia).getWidth() + (CFG.PADDING * 4), true));
        int height5 = i42 + arrayList8.get(arrayList8.size() - 1).getHeight() + CFG.PADDING;
        if (Game.settingsManager.COUNCIL_TIPS) {
            arrayList8.add(new AnonymousClass2(Game.lang.get("Economy0"), i39, height5, i48));
            height5 += arrayList8.get(arrayList8.size() - 1).getHeight() + CFG.PADDING;
        }
        int i49 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
        int i50 = 1;
        arrayList8.add(new AnonymousClass3("", Game_Calendar.IMG_ECONOMY, i49, height5, i46, i43, ImageManager.getImage(Images.gold).getWidth(), 0));
        int width4 = i49 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
        int i51 = height5;
        int i52 = i43;
        arrayList8.add(new AnonymousClass4("-", width4, i51, i47, i52));
        arrayList8.add(new AnonymousClass5("+", width4 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING, i51, i47, i52));
        int height6 = height5 + arrayList8.get(arrayList8.size() - 1).getHeight() + CFG.PADDING;
        int i53 = Images.boxTitleBORDERWIDTH;
        int i54 = iSortID;
        String str8 = "Name";
        arrayList8.add(new AnonymousClass6(i54 == 0 || i54 == 1, i54 == 1, Game.lang.get("Name"), -1, i53, height6, i44, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width5 = i53 + arrayList8.get(arrayList8.size() - 1).getWidth();
        int i55 = iSortID;
        String str9 = "Resource";
        arrayList8.add(new AnonymousClass7(i55 == 2 || i55 == 3, i55 == 3, Game.lang.get("Resource"), -1, width5, height6, i44, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width6 = width5 + arrayList8.get(arrayList8.size() - 1).getWidth();
        int i56 = iSortID;
        if (i56 != 4) {
            i = 5;
            if (i56 != 5) {
                z = false;
            }
            if (i56 == i) {
                z2 = true;
            } else {
                z2 = false;
            }
            str = "Economy";
            arrayList8.add(new AnonymousClass8(z, z2, Game.lang.get("Economy"), -1, width6, height6, i45, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
            int width7 = width6 + arrayList8.get(arrayList8.size() - 1).getWidth();
            i2 = iSortID;
            if (i2 != 6 || i2 == 7) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (i2 == 7) {
                z4 = true;
            } else {
                z4 = false;
            }
            arrayList8.add(new AnonymousClass9(z3, z4, Game.lang.get(XjthpFh.SmFVr), -1, width7, height6, i45 * 2, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
            height = height6 + arrayList8.get(arrayList8.size() - 1).getHeight() + CFG.PADDING;
            i3 = (int) (((width3 - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 6)) * 0.2f);
            i4 = (int) (((width3 - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 6)) * 0.2f);
            arrayList = new ArrayList();
            arrayList2 = new ArrayList();
            for (i5 = 0; i5 < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i5++) {
                if (Game.canInvestInEconomy(Game.getCiv(Game.player.iCivID).getProvinceID(i5))) {
                    arrayList2.add(Integer.valueOf(Game.getCiv(Game.player.iCivID).getProvinceID(i5)));
                } else {
                    arrayList.add(Integer.valueOf(Game.getCiv(Game.player.iCivID).getProvinceID(i5)));
                }
            }
            while (arrayList.size() > 0) {
                i26 = iSortID;
                if (i26 == 0) {
                    i37 = i50;
                    i38 = 0;
                    while (i37 < arrayList.size()) {
                        ArrayList arrayList9 = arrayList2;
                        if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList.get(i38)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList.get(i37)).intValue()).getProvinceName())) {
                            i38 = i37;
                        }
                        i37++;
                        arrayList2 = arrayList9;
                    }
                    arrayList6 = arrayList2;
                    i27 = i38;
                } else {
                    arrayList6 = arrayList2;
                    if (i26 == i50) {
                        i27 = 0;
                        for (i36 = 1; i36 < arrayList.size(); i36++) {
                            if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList.get(i36)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList.get(i27)).intValue()).getProvinceName())) {
                                i27 = i36;
                            }
                        }
                    } else if (i26 == 2) {
                        i27 = 0;
                        for (i35 = 1; i35 < arrayList.size(); i35++) {
                            if (CFG.compareAlphabetic_TwoString(ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList.get(i27)).intValue()).getResourceID()), ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList.get(i35)).intValue()).getResourceID()))) {
                                i27 = i35;
                            }
                        }
                    } else {
                        if (i26 == 3) {
                            i30 = 0;
                            for (i34 = 1; i34 < arrayList.size(); i34++) {
                                if (CFG.compareAlphabetic_TwoString(ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList.get(i34)).intValue()).getResourceID()), ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList.get(i30)).intValue()).getResourceID()))) {
                                    i30 = i34;
                                }
                            }
                        } else if (i26 == 4) {
                            i27 = 0;
                            for (i33 = 1; i33 < arrayList.size(); i33++) {
                                if (Game.getProvince(((Integer) arrayList.get(i27)).intValue()).getEconomyWithBonuses() < Game.getProvince(((Integer) arrayList.get(i33)).intValue()).getEconomyWithBonuses()) {
                                    i27 = i33;
                                }
                            }
                        } else {
                            if (i26 == 5) {
                                i27 = 0;
                                for (i32 = 1; i32 < arrayList.size(); i32++) {
                                    if (Game.getProvince(((Integer) arrayList.get(i27)).intValue()).getEconomyWithBonuses() > Game.getProvince(((Integer) arrayList.get(i32)).intValue()).getEconomyWithBonuses()) {
                                        i27 = i32;
                                    }
                                }
                            } else if (i26 == 6) {
                                i30 = 0;
                                for (i31 = 1; i31 < arrayList.size(); i31++) {
                                    if (Game.getInvestCost(((Integer) arrayList.get(i30)).intValue()) < Game.getInvestCost(((Integer) arrayList.get(i31)).intValue())) {
                                        i30 = i31;
                                    }
                                }
                            } else if (i26 == 7) {
                                i29 = 0;
                                for (i28 = 1; i28 < arrayList.size(); i28++) {
                                    if (Game.getInvestCost(((Integer) arrayList.get(i29)).intValue()) > Game.getInvestCost(((Integer) arrayList.get(i28)).intValue())) {
                                        i29 = i28;
                                    }
                                }
                                i27 = i29;
                            } else {
                                i27 = 0;
                            }
                            ArrayList arrayList10 = arrayList6;
                            int i57 = width3;
                            arrayList7 = arrayList;
                            String str10 = str;
                            String str11 = str9;
                            int i58 = i4;
                            String str12 = str8;
                            arrayList8.add(new AnonymousClass10(Game.getProvince(((Integer) arrayList.get(i27)).intValue()).getProvinceName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i39, height, i3, i43, ((Integer) arrayList.get(i27)).intValue()));
                            width2 = i39 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                            if (Game.getProvince(((Integer) arrayList7.get(i27)).intValue()).getResourceID() >= 0) {
                                arrayList8.add(new AnonymousClass11(ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList7.get(i27)).intValue()).getResourceID()), Game.getProvince(((Integer) arrayList7.get(i27)).intValue()).getResourceID(), width2, height, i3, i43, ImageManager.getImage(Images.gold).getWidth(), ((Integer) arrayList7.get(i27)).intValue()));
                            } else {
                                arrayList8.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR_SMALL, -1, width2, height, i3, i43));
                            }
                            int width8 = width2 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                            int i59 = i27;
                            arrayList8.add(new AnonymousClass12("" + CFG.getPrecision2(Game.getProvince(((Integer) arrayList7.get(i59)).intValue()).getEconomyWithBonuses(), 100), CFG.FONT_REGULAR_SMALL, -1, width8, height, i58, i43, ((Integer) arrayList7.get(i59)).intValue()));
                            int width9 = width8 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                            int i60 = height;
                            int i61 = i43;
                            arrayList8.add(new AnonymousClass13("" + CFG.getPrecision2(Game.getInvestCost_Legacy(((Integer) arrayList7.get(i59)).intValue()), 10), Images.legacy, width9, i60, i58, i43, ImageManager.getImage(Images.gold).getWidth(), ((Integer) arrayList7.get(i59)).intValue()));
                            arrayList8.add(new AnonymousClass14("" + CFG.getPrecision2(Game.getInvestCost(((Integer) arrayList7.get(i59)).intValue()), 10), Images.gold, width9 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING, i60, i58, i61, ImageManager.getImage(Images.gold).getWidth(), ((Integer) arrayList7.get(i59)).intValue()));
                            height += arrayList8.get(arrayList8.size() - 1).getHeight() + CFG.PADDING;
                            arrayList7.remove(i59);
                            arrayList = arrayList7;
                            i4 = i58;
                            i3 = i3;
                            arrayList2 = arrayList10;
                            width3 = i57;
                            i43 = i61;
                            str = str10;
                            str9 = str11;
                            str8 = str12;
                            i50 = 1;
                        }
                        i27 = i30;
                    }
                }
                ArrayList arrayList11 = arrayList6;
                int i510 = width3;
                arrayList7 = arrayList;
                String str13 = str;
                String str14 = str9;
                int i511 = i4;
                String str15 = str8;
                arrayList8.add(new AnonymousClass10(Game.getProvince(((Integer) arrayList.get(i27)).intValue()).getProvinceName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i39, height, i3, i43, ((Integer) arrayList.get(i27)).intValue()));
                width2 = i39 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                if (Game.getProvince(((Integer) arrayList7.get(i27)).intValue()).getResourceID() >= 0) {
                    arrayList8.add(new AnonymousClass11(ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList7.get(i27)).intValue()).getResourceID()), Game.getProvince(((Integer) arrayList7.get(i27)).intValue()).getResourceID(), width2, height, i3, i43, ImageManager.getImage(Images.gold).getWidth(), ((Integer) arrayList7.get(i27)).intValue()));
                } else {
                    arrayList8.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR_SMALL, -1, width2, height, i3, i43));
                }
                int width10 = width2 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                int i512 = i27;
                arrayList8.add(new AnonymousClass12("" + CFG.getPrecision2(Game.getProvince(((Integer) arrayList7.get(i512)).intValue()).getEconomyWithBonuses(), 100), CFG.FONT_REGULAR_SMALL, -1, width10, height, i511, i43, ((Integer) arrayList7.get(i512)).intValue()));
                int width11 = width10 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                int i62 = height;
                int i63 = i43;
                arrayList8.add(new AnonymousClass13("" + CFG.getPrecision2(Game.getInvestCost_Legacy(((Integer) arrayList7.get(i512)).intValue()), 10), Images.legacy, width11, i62, i511, i43, ImageManager.getImage(Images.gold).getWidth(), ((Integer) arrayList7.get(i512)).intValue()));
                arrayList8.add(new AnonymousClass14("" + CFG.getPrecision2(Game.getInvestCost(((Integer) arrayList7.get(i512)).intValue()), 10), Images.gold, width11 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING, i62, i511, i63, ImageManager.getImage(Images.gold).getWidth(), ((Integer) arrayList7.get(i512)).intValue()));
                height += arrayList8.get(arrayList8.size() - 1).getHeight() + CFG.PADDING;
                arrayList7.remove(i512);
                arrayList = arrayList7;
                i4 = i511;
                i3 = i3;
                arrayList2 = arrayList11;
                width3 = i510;
                i43 = i63;
                str = str13;
                str9 = str14;
                str8 = str15;
                i50 = 1;
            }
            i6 = width3;
            i7 = i43;
            arrayList3 = arrayList2;
            str2 = str;
            str3 = str9;
            str4 = "";
            str5 = "None";
            str6 = str8;
            c = 'd';
            i8 = 6;
            arrayList8.add(new AnonymousClass15(Game.lang.get("MaximumEconomy"), -1, Images.boxTitleBORDERWIDTH, height, i6 - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
            height2 = height + arrayList8.get(arrayList8.size() - 1).getHeight();
            if (arrayList3.size() == 0) {
                int i64 = height2 + CFG.PADDING;
                arrayList8.add(new Text_StaticBG(Game.lang.get(str5), CFG.FONT_REGULAR, -1, i39, i64, i48, CFG.BUTTON_HEIGHT2));
                height3 = i64 + arrayList8.get(arrayList8.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i65 = Images.boxTitleBORDERWIDTH;
                int i66 = (int) ((i6 - (Images.boxTitleBORDERWIDTH * 2)) * 0.3f);
                int i67 = (int) ((i6 - (Images.boxTitleBORDERWIDTH * 2)) * 0.2f);
                arrayList8.add(new AnonymousClass16(Game.lang.get(str6), -1, i65, height2, i66, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
                int width12 = i65 + arrayList8.get(arrayList8.size() - 1).getWidth();
                arrayList8.add(new AnonymousClass17(Game.lang.get(str3), -1, width12, height2, i66, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
                int width13 = width12 + arrayList8.get(arrayList8.size() - 1).getWidth();
                arrayList8.add(new AnonymousClass18(Game.lang.get(str2), -1, width13, height2, i67, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
                arrayList8.add(new AnonymousClass19(Game.lang.get(fiRhHJntP.CtIsKoy), -1, width13 + arrayList8.get(arrayList8.size() - 1).getWidth(), height2, i67, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
                height3 = height2 + arrayList8.get(arrayList8.size() - 1).getHeight() + CFG.PADDING;
                i9 = (int) (((i6 - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 5)) * 0.3f);
                i10 = (int) (((i6 - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 5)) * 0.2f);
                while (arrayList3.size() > 0) {
                    i11 = iSortID;
                    if (i11 == 0) {
                        i25 = 1;
                        i23 = 0;
                        while (true) {
                            arrayList4 = arrayList3;
                            if (i25 < arrayList3.size()) {
                                break;
                            }
                            if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList4.get(i23)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList4.get(i25)).intValue()).getProvinceName())) {
                                i23 = i25;
                            }
                            i25++;
                            arrayList3 = arrayList4;
                        }
                    } else {
                        arrayList4 = arrayList3;
                        if (i11 == 1) {
                            i23 = 0;
                            for (i24 = 1; i24 < arrayList4.size(); i24++) {
                                if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList4.get(i24)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList4.get(i23)).intValue()).getProvinceName())) {
                                    i23 = i24;
                                }
                            }
                        } else {
                            if (i11 == 2) {
                                i23 = 0;
                                for (i22 = 1; i22 < arrayList4.size(); i22++) {
                                    if (CFG.compareAlphabetic_TwoString(ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList4.get(i23)).intValue()).getResourceID()), ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList4.get(i22)).intValue()).getResourceID()))) {
                                        i23 = i22;
                                    }
                                }
                            } else {
                                c2 = 3;
                                if (i11 == 3) {
                                    i21 = 0;
                                    for (i20 = 1; i20 < arrayList4.size(); i20++) {
                                        if (CFG.compareAlphabetic_TwoString(ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList4.get(i20)).intValue()).getResourceID()), ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList4.get(i21)).intValue()).getResourceID()))) {
                                            i21 = i20;
                                        }
                                    }
                                    i12 = i21;
                                    c5 = 7;
                                    c4 = 5;
                                    c3 = 4;
                                } else {
                                    c3 = 4;
                                    if (i11 == 4) {
                                        i19 = 0;
                                        for (i18 = 1; i18 < arrayList4.size(); i18++) {
                                            if (Game.getProvince(((Integer) arrayList4.get(i19)).intValue()).getEconomyWithBonuses() < Game.getProvince(((Integer) arrayList4.get(i18)).intValue()).getEconomyWithBonuses()) {
                                                i19 = i18;
                                            }
                                        }
                                        i12 = i19;
                                        c5 = 7;
                                        c4 = 5;
                                    } else {
                                        c4 = 5;
                                        if (i11 == 5) {
                                            i16 = 0;
                                            for (i17 = 1; i17 < arrayList4.size(); i17++) {
                                                if (Game.getProvince(((Integer) arrayList4.get(i16)).intValue()).getEconomyWithBonuses() > Game.getProvince(((Integer) arrayList4.get(i17)).intValue()).getEconomyWithBonuses()) {
                                                    i16 = i17;
                                                }
                                            }
                                        } else if (i11 == i8) {
                                            i16 = 0;
                                            for (i15 = 1; i15 < arrayList4.size(); i15++) {
                                                if (Game.getProvince(((Integer) arrayList4.get(i16)).intValue()).getGrowthRateWithBonuses() < Game.getProvince(((Integer) arrayList4.get(i15)).intValue()).getGrowthRateWithBonuses()) {
                                                    i16 = i15;
                                                }
                                            }
                                        } else {
                                            c5 = 7;
                                            if (i11 == 7) {
                                                i14 = 0;
                                                for (i13 = 1; i13 < arrayList4.size(); i13++) {
                                                    if (Game.getProvince(((Integer) arrayList4.get(i14)).intValue()).getGrowthRateWithBonuses() > Game.getProvince(((Integer) arrayList4.get(i13)).intValue()).getGrowthRateWithBonuses()) {
                                                        i14 = i13;
                                                    }
                                                }
                                                i12 = i14;
                                            } else {
                                                i12 = 0;
                                            }
                                        }
                                        i12 = i16;
                                        c5 = 7;
                                    }
                                }
                            }
                            int i68 = i10;
                            arrayList5 = arrayList4;
                            String str16 = str4;
                            str7 = str5;
                            arrayList8.add(new AnonymousClass20(Game.getProvince(((Integer) arrayList4.get(i12)).intValue()).getProvinceName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i39, height3, i9, i7, ((Integer) arrayList4.get(i12)).intValue()));
                            width = i39 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                            if (Game.getProvince(((Integer) arrayList5.get(i12)).intValue()).getResourceID() >= 0) {
                                arrayList8.add(new AnonymousClass21(ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList5.get(i12)).intValue()).getResourceID()), Game.getProvince(((Integer) arrayList5.get(i12)).intValue()).getResourceID(), width, height3, i9, i7, ImageManager.getImage(Images.gold).getWidth(), ((Integer) arrayList5.get(i12)).intValue()));
                            } else {
                                arrayList8.add(new Text_StaticBG(Game.lang.get(str7), CFG.FONT_REGULAR_SMALL, -1, width, height3, i9, i7));
                            }
                            int width14 = width + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                            int i69 = height3;
                            arrayList8.add(new AnonymousClass22(str16 + CFG.getPrecision2(Game.getProvince(((Integer) arrayList5.get(i12)).intValue()).getEconomyWithBonuses(), 100), CFG.FONT_REGULAR_SMALL, -1, width14, i69, i68, i7, ((Integer) arrayList5.get(i12)).intValue()));
                            arrayList8.add(new AnonymousClass23(str16 + Game.getProvince(((Integer) arrayList5.get(i12)).intValue()).getGrowthRateWithBonuses() + "%", CFG.FONT_REGULAR_SMALL, -1, width14 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING, i69, i68, i7, ((Integer) arrayList5.get(i12)).intValue()));
                            height3 += arrayList8.get(arrayList8.size() - 1).getHeight() + CFG.PADDING;
                            arrayList5.remove(i12);
                            arrayList3 = arrayList5;
                            str5 = str7;
                            c = 'd';
                            i10 = i68;
                            str4 = str16;
                            i8 = 6;
                        }
                    }
                    i12 = i23;
                    c5 = 7;
                    c4 = 5;
                    c3 = 4;
                    c2 = 3;
                    int i610 = i10;
                    arrayList5 = arrayList4;
                    String str17 = str4;
                    str7 = str5;
                    arrayList8.add(new AnonymousClass20(Game.getProvince(((Integer) arrayList4.get(i12)).intValue()).getProvinceName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i39, height3, i9, i7, ((Integer) arrayList4.get(i12)).intValue()));
                    width = i39 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                    if (Game.getProvince(((Integer) arrayList5.get(i12)).intValue()).getResourceID() >= 0) {
                        arrayList8.add(new AnonymousClass21(ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList5.get(i12)).intValue()).getResourceID()), Game.getProvince(((Integer) arrayList5.get(i12)).intValue()).getResourceID(), width, height3, i9, i7, ImageManager.getImage(Images.gold).getWidth(), ((Integer) arrayList5.get(i12)).intValue()));
                    } else {
                        arrayList8.add(new Text_StaticBG(Game.lang.get(str7), CFG.FONT_REGULAR_SMALL, -1, width, height3, i9, i7));
                    }
                    int width15 = width + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                    int i611 = height3;
                    arrayList8.add(new AnonymousClass22(str17 + CFG.getPrecision2(Game.getProvince(((Integer) arrayList5.get(i12)).intValue()).getEconomyWithBonuses(), 100), CFG.FONT_REGULAR_SMALL, -1, width15, i611, i610, i7, ((Integer) arrayList5.get(i12)).intValue()));
                    arrayList8.add(new AnonymousClass23(str17 + Game.getProvince(((Integer) arrayList5.get(i12)).intValue()).getGrowthRateWithBonuses() + "%", CFG.FONT_REGULAR_SMALL, -1, width15 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING, i611, i610, i7, ((Integer) arrayList5.get(i12)).intValue()));
                    height3 += arrayList8.get(arrayList8.size() - 1).getHeight() + CFG.PADDING;
                    arrayList5.remove(i12);
                    arrayList3 = arrayList5;
                    str5 = str7;
                    c = 'd';
                    i10 = i610;
                    str4 = str17;
                    i8 = 6;
                }
            }
            int i70 = height4 + InGame_CourtOptions.menuH;
            int iMin = Math.min(height3, (CFG.GAME_HEIGHT - i70) - (CFG.PADDING * 3));
            arrayList8.add(new Empty(0, 0, i6, Math.max(height3, iMin)));
            initMenu(null, otherMenuPosX, i70, i6, iMin, arrayList8, false, false);
            this.drawScrollPositionAlways = false;
            Game.menuManager.setInGame_CivOptions_Title(Game.lang.get("InvestInEconomy"));
        }
        i = 5;
        z = true;
        if (i56 == i) {
            z2 = true;
        } else {
            z2 = false;
        }
        str = "Economy";
        arrayList8.add(new AnonymousClass8(z, z2, Game.lang.get("Economy"), -1, width6, height6, i45, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width16 = width6 + arrayList8.get(arrayList8.size() - 1).getWidth();
        i2 = iSortID;
        if (i2 != 6) {
            z3 = true;
        } else {
            z3 = true;
        }
        if (i2 == 7) {
            z4 = true;
        } else {
            z4 = false;
        }
        arrayList8.add(new AnonymousClass9(z3, z4, Game.lang.get(XjthpFh.SmFVr), -1, width16, height6, i45 * 2, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        height = height6 + arrayList8.get(arrayList8.size() - 1).getHeight() + CFG.PADDING;
        i3 = (int) (((width3 - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 6)) * 0.2f);
        i4 = (int) (((width3 - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 6)) * 0.2f);
        arrayList = new ArrayList();
        arrayList2 = new ArrayList();
        while (i5 < Game.getCiv(Game.player.iCivID).getNumOfProvinces()) {
            if (Game.canInvestInEconomy(Game.getCiv(Game.player.iCivID).getProvinceID(i5))) {
                arrayList2.add(Integer.valueOf(Game.getCiv(Game.player.iCivID).getProvinceID(i5)));
            } else {
                arrayList.add(Integer.valueOf(Game.getCiv(Game.player.iCivID).getProvinceID(i5)));
            }
        }
        while (arrayList.size() > 0) {
            i26 = iSortID;
            if (i26 == 0) {
                i37 = i50;
                i38 = 0;
                while (i37 < arrayList.size()) {
                    ArrayList arrayList12 = arrayList2;
                    if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList.get(i38)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList.get(i37)).intValue()).getProvinceName())) {
                        i38 = i37;
                    }
                    i37++;
                    arrayList2 = arrayList12;
                }
                arrayList6 = arrayList2;
                i27 = i38;
            } else {
                arrayList6 = arrayList2;
                if (i26 == i50) {
                    i27 = 0;
                    while (i36 < arrayList.size()) {
                        if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList.get(i36)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList.get(i27)).intValue()).getProvinceName())) {
                            i27 = i36;
                        }
                    }
                } else if (i26 == 2) {
                    i27 = 0;
                    while (i35 < arrayList.size()) {
                        if (CFG.compareAlphabetic_TwoString(ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList.get(i27)).intValue()).getResourceID()), ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList.get(i35)).intValue()).getResourceID()))) {
                            i27 = i35;
                        }
                    }
                } else {
                    if (i26 == 3) {
                        i30 = 0;
                        while (i34 < arrayList.size()) {
                            if (CFG.compareAlphabetic_TwoString(ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList.get(i34)).intValue()).getResourceID()), ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList.get(i30)).intValue()).getResourceID()))) {
                                i30 = i34;
                            }
                        }
                    } else if (i26 == 4) {
                        i27 = 0;
                        while (i33 < arrayList.size()) {
                            if (Game.getProvince(((Integer) arrayList.get(i27)).intValue()).getEconomyWithBonuses() < Game.getProvince(((Integer) arrayList.get(i33)).intValue()).getEconomyWithBonuses()) {
                                i27 = i33;
                            }
                        }
                    } else {
                        if (i26 == 5) {
                            i27 = 0;
                            while (i32 < arrayList.size()) {
                                if (Game.getProvince(((Integer) arrayList.get(i27)).intValue()).getEconomyWithBonuses() > Game.getProvince(((Integer) arrayList.get(i32)).intValue()).getEconomyWithBonuses()) {
                                    i27 = i32;
                                }
                            }
                        } else if (i26 == 6) {
                            i30 = 0;
                            while (i31 < arrayList.size()) {
                                if (Game.getInvestCost(((Integer) arrayList.get(i30)).intValue()) < Game.getInvestCost(((Integer) arrayList.get(i31)).intValue())) {
                                    i30 = i31;
                                }
                            }
                        } else if (i26 == 7) {
                            i29 = 0;
                            while (i28 < arrayList.size()) {
                                if (Game.getInvestCost(((Integer) arrayList.get(i29)).intValue()) > Game.getInvestCost(((Integer) arrayList.get(i28)).intValue())) {
                                    i29 = i28;
                                }
                            }
                            i27 = i29;
                        } else {
                            i27 = 0;
                        }
                        ArrayList arrayList13 = arrayList6;
                        int i513 = width3;
                        arrayList7 = arrayList;
                        String str18 = str;
                        String str19 = str9;
                        int i514 = i4;
                        String str110 = str8;
                        arrayList8.add(new AnonymousClass10(Game.getProvince(((Integer) arrayList.get(i27)).intValue()).getProvinceName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i39, height, i3, i43, ((Integer) arrayList.get(i27)).intValue()));
                        width2 = i39 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                        if (Game.getProvince(((Integer) arrayList7.get(i27)).intValue()).getResourceID() >= 0) {
                            arrayList8.add(new AnonymousClass11(ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList7.get(i27)).intValue()).getResourceID()), Game.getProvince(((Integer) arrayList7.get(i27)).intValue()).getResourceID(), width2, height, i3, i43, ImageManager.getImage(Images.gold).getWidth(), ((Integer) arrayList7.get(i27)).intValue()));
                        } else {
                            arrayList8.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR_SMALL, -1, width2, height, i3, i43));
                        }
                        int width17 = width2 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                        int i515 = i27;
                        arrayList8.add(new AnonymousClass12("" + CFG.getPrecision2(Game.getProvince(((Integer) arrayList7.get(i515)).intValue()).getEconomyWithBonuses(), 100), CFG.FONT_REGULAR_SMALL, -1, width17, height, i514, i43, ((Integer) arrayList7.get(i515)).intValue()));
                        int width18 = width17 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                        int i612 = height;
                        int i613 = i43;
                        arrayList8.add(new AnonymousClass13("" + CFG.getPrecision2(Game.getInvestCost_Legacy(((Integer) arrayList7.get(i515)).intValue()), 10), Images.legacy, width18, i612, i514, i43, ImageManager.getImage(Images.gold).getWidth(), ((Integer) arrayList7.get(i515)).intValue()));
                        arrayList8.add(new AnonymousClass14("" + CFG.getPrecision2(Game.getInvestCost(((Integer) arrayList7.get(i515)).intValue()), 10), Images.gold, width18 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING, i612, i514, i613, ImageManager.getImage(Images.gold).getWidth(), ((Integer) arrayList7.get(i515)).intValue()));
                        height += arrayList8.get(arrayList8.size() - 1).getHeight() + CFG.PADDING;
                        arrayList7.remove(i515);
                        arrayList = arrayList7;
                        i4 = i514;
                        i3 = i3;
                        arrayList2 = arrayList13;
                        width3 = i513;
                        i43 = i613;
                        str = str18;
                        str9 = str19;
                        str8 = str110;
                        i50 = 1;
                    }
                    i27 = i30;
                }
            }
            ArrayList arrayList14 = arrayList6;
            int i516 = width3;
            arrayList7 = arrayList;
            String str111 = str;
            String str112 = str9;
            int i517 = i4;
            String str113 = str8;
            arrayList8.add(new AnonymousClass10(Game.getProvince(((Integer) arrayList.get(i27)).intValue()).getProvinceName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i39, height, i3, i43, ((Integer) arrayList.get(i27)).intValue()));
            width2 = i39 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
            if (Game.getProvince(((Integer) arrayList7.get(i27)).intValue()).getResourceID() >= 0) {
                arrayList8.add(new AnonymousClass11(ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList7.get(i27)).intValue()).getResourceID()), Game.getProvince(((Integer) arrayList7.get(i27)).intValue()).getResourceID(), width2, height, i3, i43, ImageManager.getImage(Images.gold).getWidth(), ((Integer) arrayList7.get(i27)).intValue()));
            } else {
                arrayList8.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR_SMALL, -1, width2, height, i3, i43));
            }
            int width19 = width2 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
            int i518 = i27;
            arrayList8.add(new AnonymousClass12("" + CFG.getPrecision2(Game.getProvince(((Integer) arrayList7.get(i518)).intValue()).getEconomyWithBonuses(), 100), CFG.FONT_REGULAR_SMALL, -1, width19, height, i517, i43, ((Integer) arrayList7.get(i518)).intValue()));
            int width110 = width19 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
            int i614 = height;
            int i615 = i43;
            arrayList8.add(new AnonymousClass13("" + CFG.getPrecision2(Game.getInvestCost_Legacy(((Integer) arrayList7.get(i518)).intValue()), 10), Images.legacy, width110, i614, i517, i43, ImageManager.getImage(Images.gold).getWidth(), ((Integer) arrayList7.get(i518)).intValue()));
            arrayList8.add(new AnonymousClass14("" + CFG.getPrecision2(Game.getInvestCost(((Integer) arrayList7.get(i518)).intValue()), 10), Images.gold, width110 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING, i614, i517, i615, ImageManager.getImage(Images.gold).getWidth(), ((Integer) arrayList7.get(i518)).intValue()));
            height += arrayList8.get(arrayList8.size() - 1).getHeight() + CFG.PADDING;
            arrayList7.remove(i518);
            arrayList = arrayList7;
            i4 = i517;
            i3 = i3;
            arrayList2 = arrayList14;
            width3 = i516;
            i43 = i615;
            str = str111;
            str9 = str112;
            str8 = str113;
            i50 = 1;
        }
        i6 = width3;
        i7 = i43;
        arrayList3 = arrayList2;
        str2 = str;
        str3 = str9;
        str4 = "";
        str5 = "None";
        str6 = str8;
        c = 'd';
        i8 = 6;
        arrayList8.add(new AnonymousClass15(Game.lang.get("MaximumEconomy"), -1, Images.boxTitleBORDERWIDTH, height, i6 - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        height2 = height + arrayList8.get(arrayList8.size() - 1).getHeight();
        if (arrayList3.size() == 0) {
            int i616 = height2 + CFG.PADDING;
            arrayList8.add(new Text_StaticBG(Game.lang.get(str5), CFG.FONT_REGULAR, -1, i39, i616, i48, CFG.BUTTON_HEIGHT2));
            height3 = i616 + arrayList8.get(arrayList8.size() - 1).getHeight() + CFG.PADDING;
        } else {
            int i617 = Images.boxTitleBORDERWIDTH;
            int i618 = (int) ((i6 - (Images.boxTitleBORDERWIDTH * 2)) * 0.3f);
            int i619 = (int) ((i6 - (Images.boxTitleBORDERWIDTH * 2)) * 0.2f);
            arrayList8.add(new AnonymousClass16(Game.lang.get(str6), -1, i617, height2, i618, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
            int width111 = i617 + arrayList8.get(arrayList8.size() - 1).getWidth();
            arrayList8.add(new AnonymousClass17(Game.lang.get(str3), -1, width111, height2, i618, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
            int width112 = width111 + arrayList8.get(arrayList8.size() - 1).getWidth();
            arrayList8.add(new AnonymousClass18(Game.lang.get(str2), -1, width112, height2, i619, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
            arrayList8.add(new AnonymousClass19(Game.lang.get(fiRhHJntP.CtIsKoy), -1, width112 + arrayList8.get(arrayList8.size() - 1).getWidth(), height2, i619, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
            height3 = height2 + arrayList8.get(arrayList8.size() - 1).getHeight() + CFG.PADDING;
            i9 = (int) (((i6 - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 5)) * 0.3f);
            i10 = (int) (((i6 - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 5)) * 0.2f);
            while (arrayList3.size() > 0) {
                i11 = iSortID;
                if (i11 == 0) {
                    i25 = 1;
                    i23 = 0;
                    while (true) {
                        arrayList4 = arrayList3;
                        if (i25 < arrayList3.size()) {
                            break;
                            break;
                        }
                        if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList4.get(i23)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList4.get(i25)).intValue()).getProvinceName())) {
                            i23 = i25;
                        }
                        i25++;
                        arrayList3 = arrayList4;
                    }
                } else {
                    arrayList4 = arrayList3;
                    if (i11 == 1) {
                        i23 = 0;
                        while (i24 < arrayList4.size()) {
                            if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList4.get(i24)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList4.get(i23)).intValue()).getProvinceName())) {
                                i23 = i24;
                            }
                        }
                    } else {
                        if (i11 == 2) {
                            i23 = 0;
                            while (i22 < arrayList4.size()) {
                                if (CFG.compareAlphabetic_TwoString(ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList4.get(i23)).intValue()).getResourceID()), ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList4.get(i22)).intValue()).getResourceID()))) {
                                    i23 = i22;
                                }
                            }
                        } else {
                            c2 = 3;
                            if (i11 == 3) {
                                i21 = 0;
                                while (i20 < arrayList4.size()) {
                                    if (CFG.compareAlphabetic_TwoString(ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList4.get(i20)).intValue()).getResourceID()), ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList4.get(i21)).intValue()).getResourceID()))) {
                                        i21 = i20;
                                    }
                                }
                                i12 = i21;
                                c5 = 7;
                                c4 = 5;
                                c3 = 4;
                            } else {
                                c3 = 4;
                                if (i11 == 4) {
                                    i19 = 0;
                                    while (i18 < arrayList4.size()) {
                                        if (Game.getProvince(((Integer) arrayList4.get(i19)).intValue()).getEconomyWithBonuses() < Game.getProvince(((Integer) arrayList4.get(i18)).intValue()).getEconomyWithBonuses()) {
                                            i19 = i18;
                                        }
                                    }
                                    i12 = i19;
                                    c5 = 7;
                                    c4 = 5;
                                } else {
                                    c4 = 5;
                                    if (i11 == 5) {
                                        i16 = 0;
                                        while (i17 < arrayList4.size()) {
                                            if (Game.getProvince(((Integer) arrayList4.get(i16)).intValue()).getEconomyWithBonuses() > Game.getProvince(((Integer) arrayList4.get(i17)).intValue()).getEconomyWithBonuses()) {
                                                i16 = i17;
                                            }
                                        }
                                    } else if (i11 == i8) {
                                        i16 = 0;
                                        while (i15 < arrayList4.size()) {
                                            if (Game.getProvince(((Integer) arrayList4.get(i16)).intValue()).getGrowthRateWithBonuses() < Game.getProvince(((Integer) arrayList4.get(i15)).intValue()).getGrowthRateWithBonuses()) {
                                                i16 = i15;
                                            }
                                        }
                                    } else {
                                        c5 = 7;
                                        if (i11 == 7) {
                                            i14 = 0;
                                            while (i13 < arrayList4.size()) {
                                                if (Game.getProvince(((Integer) arrayList4.get(i14)).intValue()).getGrowthRateWithBonuses() > Game.getProvince(((Integer) arrayList4.get(i13)).intValue()).getGrowthRateWithBonuses()) {
                                                    i14 = i13;
                                                }
                                            }
                                            i12 = i14;
                                        } else {
                                            i12 = 0;
                                        }
                                    }
                                    i12 = i16;
                                    c5 = 7;
                                }
                            }
                        }
                        int i6110 = i10;
                        arrayList5 = arrayList4;
                        String str114 = str4;
                        str7 = str5;
                        arrayList8.add(new AnonymousClass20(Game.getProvince(((Integer) arrayList4.get(i12)).intValue()).getProvinceName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i39, height3, i9, i7, ((Integer) arrayList4.get(i12)).intValue()));
                        width = i39 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                        if (Game.getProvince(((Integer) arrayList5.get(i12)).intValue()).getResourceID() >= 0) {
                            arrayList8.add(new AnonymousClass21(ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList5.get(i12)).intValue()).getResourceID()), Game.getProvince(((Integer) arrayList5.get(i12)).intValue()).getResourceID(), width, height3, i9, i7, ImageManager.getImage(Images.gold).getWidth(), ((Integer) arrayList5.get(i12)).intValue()));
                        } else {
                            arrayList8.add(new Text_StaticBG(Game.lang.get(str7), CFG.FONT_REGULAR_SMALL, -1, width, height3, i9, i7));
                        }
                        int width113 = width + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                        int i6111 = height3;
                        arrayList8.add(new AnonymousClass22(str114 + CFG.getPrecision2(Game.getProvince(((Integer) arrayList5.get(i12)).intValue()).getEconomyWithBonuses(), 100), CFG.FONT_REGULAR_SMALL, -1, width113, i6111, i6110, i7, ((Integer) arrayList5.get(i12)).intValue()));
                        arrayList8.add(new AnonymousClass23(str114 + Game.getProvince(((Integer) arrayList5.get(i12)).intValue()).getGrowthRateWithBonuses() + "%", CFG.FONT_REGULAR_SMALL, -1, width113 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING, i6111, i6110, i7, ((Integer) arrayList5.get(i12)).intValue()));
                        height3 += arrayList8.get(arrayList8.size() - 1).getHeight() + CFG.PADDING;
                        arrayList5.remove(i12);
                        arrayList3 = arrayList5;
                        str5 = str7;
                        c = 'd';
                        i10 = i6110;
                        str4 = str114;
                        i8 = 6;
                    }
                }
                i12 = i23;
                c5 = 7;
                c4 = 5;
                c3 = 4;
                c2 = 3;
                int i6112 = i10;
                arrayList5 = arrayList4;
                String str115 = str4;
                str7 = str5;
                arrayList8.add(new AnonymousClass20(Game.getProvince(((Integer) arrayList4.get(i12)).intValue()).getProvinceName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i39, height3, i9, i7, ((Integer) arrayList4.get(i12)).intValue()));
                width = i39 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                if (Game.getProvince(((Integer) arrayList5.get(i12)).intValue()).getResourceID() >= 0) {
                    arrayList8.add(new AnonymousClass21(ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList5.get(i12)).intValue()).getResourceID()), Game.getProvince(((Integer) arrayList5.get(i12)).intValue()).getResourceID(), width, height3, i9, i7, ImageManager.getImage(Images.gold).getWidth(), ((Integer) arrayList5.get(i12)).intValue()));
                } else {
                    arrayList8.add(new Text_StaticBG(Game.lang.get(str7), CFG.FONT_REGULAR_SMALL, -1, width, height3, i9, i7));
                }
                int width114 = width + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                int i6113 = height3;
                arrayList8.add(new AnonymousClass22(str115 + CFG.getPrecision2(Game.getProvince(((Integer) arrayList5.get(i12)).intValue()).getEconomyWithBonuses(), 100), CFG.FONT_REGULAR_SMALL, -1, width114, i6113, i6112, i7, ((Integer) arrayList5.get(i12)).intValue()));
                arrayList8.add(new AnonymousClass23(str115 + Game.getProvince(((Integer) arrayList5.get(i12)).intValue()).getGrowthRateWithBonuses() + "%", CFG.FONT_REGULAR_SMALL, -1, width114 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING, i6113, i6112, i7, ((Integer) arrayList5.get(i12)).intValue()));
                height3 += arrayList8.get(arrayList8.size() - 1).getHeight() + CFG.PADDING;
                arrayList5.remove(i12);
                arrayList3 = arrayList5;
                str5 = str7;
                c = 'd';
                i10 = i6112;
                str4 = str115;
                i8 = 6;
            }
        }
        int i71 = height4 + InGame_CourtOptions.menuH;
        int iMin2 = Math.min(height3, (CFG.GAME_HEIGHT - i71) - (CFG.PADDING * 3));
        arrayList8.add(new Empty(0, 0, i6, Math.max(height3, iMin2)));
        initMenu(null, otherMenuPosX, i71, i6, iMin2, arrayList8, false, false);
        this.drawScrollPositionAlways = false;
        Game.menuManager.setInGame_CivOptions_Title(Game.lang.get("InvestInEconomy"));
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = InGame_Court.lTime + 60 >= CFG.currentTimeMillis ? (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - InGame_Court.lTime) / 60.0f))) : i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - InGame_CourtOptions.menuH) + i2, getWidth(), getHeight() + InGame_CourtOptions.menuH + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop500, Images.insideBot500);
        ImageManager.getImage(Images.civOptionsOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.civOptionsOver).getWidth() / 2)) + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.civOptionsOver).getHeight()));
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
    }
}
