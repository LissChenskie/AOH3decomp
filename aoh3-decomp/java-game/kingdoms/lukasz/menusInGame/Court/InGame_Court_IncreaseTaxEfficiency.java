package aoc.kingdoms.lukasz.menusInGame.Court;

import aoc.kingdoms.lukasz.jakowski.AA_KeyManager;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.advisors.VjN.hQfu;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.menu.ClickAnimation;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRect;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Click;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Value;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Empty;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageFull;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Center;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Desc2_Special;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Population;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_TaxEfficiency;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.assets.loaders.Wkvw.PZBvyl;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.pairip.licensecheck.CohD.CaiJWNfqszJNZ;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Court_IncreaseTaxEfficiency extends Menu {
    public static int CLICK_X_TIMES = 1;
    public static int iSortID;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_IncreaseTaxEfficiency$1, reason: invalid class name */
    class AnonymousClass1 extends Text_Desc2_Special {
        AnonymousClass1(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Desc2_Special, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Desc, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
        protected Color getColor(boolean z) {
            return Colors.getColorButton(z, getIsHovered());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_IncreaseTaxEfficiency$10, reason: invalid class name */
    class AnonymousClass10 extends Text_StaticBG_Population {
        AnonymousClass10(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverPopulation(getCurrent(), false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_IncreaseTaxEfficiency$11, reason: invalid class name */
    class AnonymousClass11 extends Text_StaticBG_TaxEfficiency {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_IncreaseTaxEfficiency$11$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.HOVER_YELLOW;
            }
        }

        AnonymousClass11(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
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
                        if (Game.getCiv(Game.player.iCivID).fLegacy < Game.getIncreaseTaxEfficiencyCostLegacy(getCurrent())) {
                            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + ": ", CFG.getPrecision2(Game.getIncreaseTaxEfficiencyCostLegacy(getCurrent()), 100), Images.legacy);
                        } else if (!Game.getProvince(getCurrent()).addIncreaseTaxEfficiencyInProvince()) {
                            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getIncreaseTaxEfficiencyCost(getCurrent()), 100), Images.gold);
                            break;
                        } else {
                            ProvinceDraw.addProvinceDot_TaxEfficiency(getCurrent());
                            z = true;
                        }
                        i++;
                    }
                } else {
                    z = false;
                    while (i < InGame_Court_IncreaseTaxEfficiency.CLICK_X_TIMES) {
                        if (Game.getCiv(Game.player.iCivID).fLegacy < Game.getIncreaseTaxEfficiencyCostLegacy(getCurrent())) {
                            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + ": ", CFG.getPrecision2(Game.getIncreaseTaxEfficiencyCostLegacy(getCurrent()), 100), Images.legacy);
                        } else if (!Game.getProvince(getCurrent()).addIncreaseTaxEfficiencyInProvince()) {
                            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getIncreaseTaxEfficiencyCost(getCurrent()), 100), Images.gold);
                            break;
                        } else {
                            ProvinceDraw.addProvinceDot_TaxEfficiency(getCurrent());
                            z = true;
                        }
                        i++;
                    }
                }
                if (z) {
                    MenuManager menuManager = Game.menuManager;
                    MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Court_IncreaseTaxEfficiency.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Court_IncreaseTaxEfficiency.this.getMenuPosY(), getWidth(), getHeight()));
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverTaxEfficiency(getCurrent(), false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_IncreaseTaxEfficiency$12, reason: invalid class name */
    class AnonymousClass12 extends ButtonStatsRectIMG_Active_Value {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_IncreaseTaxEfficiency$12$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.HOVER_YELLOW;
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
                        if (Game.getCiv(Game.player.iCivID).fLegacy < Game.getIncreaseTaxEfficiencyCostLegacy(getCurrent())) {
                            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + ": ", CFG.getPrecision2(Game.getIncreaseTaxEfficiencyCostLegacy(getCurrent()), 100), Images.legacy);
                        } else if (!Game.getProvince(getCurrent()).addIncreaseTaxEfficiencyInProvince()) {
                            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getIncreaseTaxEfficiencyCost(getCurrent()), 100), Images.gold);
                            break;
                        } else {
                            ProvinceDraw.addProvinceDot_TaxEfficiency(getCurrent());
                            z = true;
                        }
                        i++;
                    }
                } else {
                    z = false;
                    while (i < InGame_Court_IncreaseTaxEfficiency.CLICK_X_TIMES) {
                        if (Game.getCiv(Game.player.iCivID).fLegacy < Game.getIncreaseTaxEfficiencyCostLegacy(getCurrent())) {
                            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + ": ", CFG.getPrecision2(Game.getIncreaseTaxEfficiencyCostLegacy(getCurrent()), 100), Images.legacy);
                        } else if (!Game.getProvince(getCurrent()).addIncreaseTaxEfficiencyInProvince()) {
                            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getIncreaseTaxEfficiencyCost(getCurrent()), 100), Images.gold);
                            break;
                        } else {
                            ProvinceDraw.addProvinceDot_TaxEfficiency(getCurrent());
                            z = true;
                        }
                        i++;
                    }
                }
                if (z) {
                    MenuManager menuManager = Game.menuManager;
                    MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Court_IncreaseTaxEfficiency.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Court_IncreaseTaxEfficiency.this.getMenuPosY(), getWidth(), getHeight()));
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverTaxEfficiency(getCurrent(), false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != Game.getIncreaseTaxEfficiencyCostLegacy(this.id) * InGame_Court_IncreaseTaxEfficiency.CLICK_X_TIMES) {
                setText("" + CFG.getPrecision2(Game.getIncreaseTaxEfficiencyCostLegacy(this.id) * InGame_Court_IncreaseTaxEfficiency.CLICK_X_TIMES, 100));
                this.lastValue = Game.getIncreaseTaxEfficiencyCostLegacy(this.id) * InGame_Court_IncreaseTaxEfficiency.CLICK_X_TIMES;
            }
            return this.sText;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_IncreaseTaxEfficiency$13, reason: invalid class name */
    class AnonymousClass13 extends ButtonStatsRectIMG_Active_Value {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_IncreaseTaxEfficiency$13$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.HOVER_YELLOW;
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
                        if (Game.getCiv(Game.player.iCivID).fLegacy < Game.getIncreaseTaxEfficiencyCostLegacy(getCurrent())) {
                            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + ": ", CFG.getPrecision2(Game.getIncreaseTaxEfficiencyCostLegacy(getCurrent()), 100), Images.legacy);
                        } else if (!Game.getProvince(getCurrent()).addIncreaseTaxEfficiencyInProvince()) {
                            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getIncreaseTaxEfficiencyCost(getCurrent()), 100), Images.gold);
                            break;
                        } else {
                            ProvinceDraw.addProvinceDot_TaxEfficiency(getCurrent());
                            z = true;
                        }
                        i++;
                    }
                } else {
                    z = false;
                    while (i < InGame_Court_IncreaseTaxEfficiency.CLICK_X_TIMES) {
                        if (Game.getCiv(Game.player.iCivID).fLegacy < Game.getIncreaseTaxEfficiencyCostLegacy(getCurrent())) {
                            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + ": ", CFG.getPrecision2(Game.getIncreaseTaxEfficiencyCostLegacy(getCurrent()), 100), Images.legacy);
                        } else if (!Game.getProvince(getCurrent()).addIncreaseTaxEfficiencyInProvince()) {
                            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getIncreaseTaxEfficiencyCost(getCurrent()), 100), Images.gold);
                            break;
                        } else {
                            ProvinceDraw.addProvinceDot_TaxEfficiency(getCurrent());
                            z = true;
                        }
                        i++;
                    }
                }
                if (z) {
                    MenuManager menuManager = Game.menuManager;
                    MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Court_IncreaseTaxEfficiency.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Court_IncreaseTaxEfficiency.this.getMenuPosY(), getWidth(), getHeight()));
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverTaxEfficiency(getCurrent(), false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != Game.getIncreaseTaxEfficiencyCost(this.id) * InGame_Court_IncreaseTaxEfficiency.CLICK_X_TIMES) {
                setText(hQfu.ZijPWtcgbYNZq + CFG.getPrecision2(Game.getIncreaseTaxEfficiencyCost(this.id) * InGame_Court_IncreaseTaxEfficiency.CLICK_X_TIMES, 10));
                this.lastValue = Game.getIncreaseTaxEfficiencyCost(this.id) * InGame_Court_IncreaseTaxEfficiency.CLICK_X_TIMES;
            }
            return this.sText;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_IncreaseTaxEfficiency$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != InGame_Court_IncreaseTaxEfficiency.CLICK_X_TIMES) {
                setText("" + Game.lang.get("PerformTheActionXTimes", InGame_Court_IncreaseTaxEfficiency.CLICK_X_TIMES));
                this.lastValue = InGame_Court_IncreaseTaxEfficiency.CLICK_X_TIMES;
            }
            return this.sText;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_IncreaseTaxEfficiency$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRect {
        AnonymousClass3(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Court_IncreaseTaxEfficiency.CLICK_X_TIMES--;
            if (InGame_Court_IncreaseTaxEfficiency.CLICK_X_TIMES < 1) {
                InGame_Court_IncreaseTaxEfficiency.CLICK_X_TIMES = 1;
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_IncreaseTaxEfficiency$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonStatsRect {
        AnonymousClass4(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Court_IncreaseTaxEfficiency.CLICK_X_TIMES++;
            if (InGame_Court_IncreaseTaxEfficiency.CLICK_X_TIMES > 9) {
                InGame_Court_IncreaseTaxEfficiency.CLICK_X_TIMES = 9;
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_IncreaseTaxEfficiency$5, reason: invalid class name */
    class AnonymousClass5 extends Text_TitleBlueSort {
        AnonymousClass5(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_IncreaseTaxEfficiency.iSortID == 0) {
                InGame_Court_IncreaseTaxEfficiency.iSortID = 1;
            } else {
                InGame_Court_IncreaseTaxEfficiency.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_IncreaseTaxEfficiency();
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_IncreaseTaxEfficiency$6, reason: invalid class name */
    class AnonymousClass6 extends Text_TitleBlueSort {
        AnonymousClass6(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_IncreaseTaxEfficiency.iSortID == 2) {
                InGame_Court_IncreaseTaxEfficiency.iSortID = 3;
            } else {
                InGame_Court_IncreaseTaxEfficiency.iSortID = 2;
            }
            Game.menuManager.rebuildInGame_IncreaseTaxEfficiency();
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_IncreaseTaxEfficiency$7, reason: invalid class name */
    class AnonymousClass7 extends Text_TitleBlueSort {
        AnonymousClass7(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_IncreaseTaxEfficiency.iSortID == 4) {
                InGame_Court_IncreaseTaxEfficiency.iSortID = 5;
            } else {
                InGame_Court_IncreaseTaxEfficiency.iSortID = 4;
            }
            Game.menuManager.rebuildInGame_IncreaseTaxEfficiency();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + CaiJWNfqszJNZ.DXpqAJL));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("TaxEfficiency"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_IncreaseTaxEfficiency$8, reason: invalid class name */
    class AnonymousClass8 extends Text_TitleBlueSort {
        AnonymousClass8(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_IncreaseTaxEfficiency.iSortID == 6) {
                InGame_Court_IncreaseTaxEfficiency.iSortID = 7;
            } else {
                InGame_Court_IncreaseTaxEfficiency.iSortID = 6;
            }
            Game.menuManager.rebuildInGame_IncreaseTaxEfficiency();
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_IncreaseTaxEfficiency$9, reason: invalid class name */
    class AnonymousClass9 extends Text_StaticBG_ID {
        AnonymousClass9(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
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

    public InGame_Court_IncreaseTaxEfficiency() {
        int i;
        ArrayList arrayList = new ArrayList();
        int i2 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int otherMenuPosX = InGame_CourtOptions2.getOtherMenuPosX();
        int height = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i3 = CFG.PADDING;
        int i4 = Images.boxTitleBORDERWIDTH;
        int height2 = CFG.PADDING;
        int i5 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
        int i6 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.2f);
        int i7 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.2f);
        int i8 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 4)) * 0.6f);
        int i9 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 4)) * 0.2f);
        if (Game.settingsManager.COUNCIL_TIPS) {
            arrayList.add(new AnonymousClass1(Game.lang.get("TaxEfficiency0"), i2, height2, width - (i2 * 2)));
            height2 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        int i10 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
        int i11 = 2;
        arrayList.add(new AnonymousClass2("", Images.tax, i10, height2, i8, i5, ImageManager.getImage(Images.gold).getWidth(), 0));
        int width2 = i10 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
        int i12 = height2;
        int i13 = i5;
        arrayList.add(new AnonymousClass3("-", width2, i12, i9, i13));
        arrayList.add(new AnonymousClass4("+", width2 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, i12, i9, i13));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i14 = Images.boxTitleBORDERWIDTH;
        int i15 = iSortID;
        char c = 6;
        arrayList.add(new AnonymousClass5(i15 == 0 || i15 == 1, i15 == 1, Game.lang.get("Name"), -1, i14, height3, i6, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width3 = i14 + arrayList.get(arrayList.size() - 1).getWidth();
        int i16 = iSortID;
        int i17 = 3;
        arrayList.add(new AnonymousClass6(i16 == 2 || i16 == 3, i16 == 3, Game.lang.get("Population"), -1, width3, height3, i6, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width4 = width3 + arrayList.get(arrayList.size() - 1).getWidth();
        int i18 = iSortID;
        int i19 = 5;
        int i20 = 4;
        arrayList.add(new AnonymousClass7(i18 == 4 || i18 == 5, i18 == 5, Game.lang.get("TaxEfficiency"), -1, width4, height3, i7, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width5 = width4 + arrayList.get(arrayList.size() - 1).getWidth();
        int i21 = iSortID;
        arrayList.add(new AnonymousClass8(i21 == 6 || i21 == 7, i21 == 7, Game.lang.get("Cost"), -1, width5, height3, i7 * 2, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i22 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 6)) * 0.2f);
        int i23 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 6)) * 0.2f);
        ArrayList arrayList2 = new ArrayList();
        for (int i24 = 0; i24 < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i24++) {
            if (!Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i24)).isOccupied()) {
                arrayList2.add(Integer.valueOf(Game.getCiv(Game.player.iCivID).getProvinceID(i24)));
            }
        }
        while (arrayList2.size() > 0) {
            int i25 = iSortID;
            if (i25 == 0) {
                int i26 = 1;
                i = 0;
                while (i26 < arrayList2.size()) {
                    if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList2.get(i)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList2.get(i26)).intValue()).getProvinceName())) {
                        i = i26;
                    }
                    i26++;
                    c = 6;
                }
            } else {
                if (i25 == 1) {
                    i = 0;
                    for (int i27 = 1; i27 < arrayList2.size(); i27++) {
                        if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList2.get(i27)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList2.get(i)).intValue()).getProvinceName())) {
                            i = i27;
                        }
                    }
                } else if (i25 == i11) {
                    i = 0;
                    for (int i28 = 1; i28 < arrayList2.size(); i28++) {
                        if (Game.getProvince(((Integer) arrayList2.get(i28)).intValue()).getPopulationTotal() > Game.getProvince(((Integer) arrayList2.get(i)).intValue()).getPopulationTotal()) {
                            i = i28;
                        }
                    }
                } else if (i25 == i17) {
                    i = 0;
                    for (int i29 = 1; i29 < arrayList2.size(); i29++) {
                        if (Game.getProvince(((Integer) arrayList2.get(i29)).intValue()).getPopulationTotal() < Game.getProvince(((Integer) arrayList2.get(i)).intValue()).getPopulationTotal()) {
                            i = i29;
                        }
                    }
                } else if (i25 == i20) {
                    i = 0;
                    for (int i30 = 1; i30 < arrayList2.size(); i30++) {
                        if (Game.getProvince(((Integer) arrayList2.get(i30)).intValue()).getTaxEfficiencyWithBonuses() > Game.getProvince(((Integer) arrayList2.get(i)).intValue()).getTaxEfficiencyWithBonuses()) {
                            i = i30;
                        }
                    }
                } else if (i25 == i19) {
                    i = 0;
                    for (int i31 = 1; i31 < arrayList2.size(); i31++) {
                        if (Game.getProvince(((Integer) arrayList2.get(i31)).intValue()).getTaxEfficiencyWithBonuses() < Game.getProvince(((Integer) arrayList2.get(i)).intValue()).getTaxEfficiencyWithBonuses()) {
                            i = i31;
                        }
                    }
                } else {
                    c = 6;
                    if (i25 == 6) {
                        i = 0;
                        for (int i32 = 1; i32 < arrayList2.size(); i32++) {
                            if (Game.getIncreaseTaxEfficiencyCost(((Integer) arrayList2.get(i)).intValue()) < Game.getIncreaseTaxEfficiencyCost(((Integer) arrayList2.get(i32)).intValue())) {
                                i = i32;
                            }
                        }
                    } else if (i25 == 7) {
                        i = 0;
                        for (int i33 = 1; i33 < arrayList2.size(); i33++) {
                            if (Game.getIncreaseTaxEfficiencyCost(((Integer) arrayList2.get(i)).intValue()) > Game.getIncreaseTaxEfficiencyCost(((Integer) arrayList2.get(i33)).intValue())) {
                                i = i33;
                            }
                        }
                    } else {
                        i = 0;
                    }
                }
                c = 6;
            }
            ArrayList arrayList3 = arrayList2;
            int i34 = i23;
            int i35 = width;
            int i36 = i19;
            int i37 = i17;
            int i38 = height4;
            char c2 = c;
            int i39 = i22;
            int i40 = i22;
            int i41 = i;
            arrayList.add(new AnonymousClass9(Game.getProvince(((Integer) arrayList2.get(i)).intValue()).getProvinceName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i2, i38, i39, i5, ((Integer) arrayList2.get(i)).intValue()));
            int width6 = arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING + i2;
            arrayList.add(new AnonymousClass10(CFG.getNumberWithSpaces("" + Game.getProvince(((Integer) arrayList3.get(i41)).intValue()).getPopulationTotal()), CFG.FONT_REGULAR_SMALL, -1, width6, i38, i40, i5, ((Integer) arrayList3.get(i41)).intValue()));
            int width7 = width6 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            arrayList.add(new AnonymousClass11("" + CFG.getPrecision2(Game.getProvince(((Integer) arrayList3.get(i41)).intValue()).getTaxEfficiencyWithBonuses(), 100) + "%", CFG.FONT_REGULAR_SMALL, -1, width7, i38, i34, i5, ((Integer) arrayList3.get(i41)).intValue()));
            int width8 = width7 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            int i42 = height4;
            int i43 = i5;
            arrayList.add(new AnonymousClass12("" + Game.getIncreaseTaxEfficiencyCostLegacy(((Integer) arrayList3.get(i41)).intValue()), Images.legacy, width8, i42, i34, i5, ImageManager.getImage(Images.gold).getWidth(), ((Integer) arrayList3.get(i41)).intValue()));
            arrayList.add(new AnonymousClass13("" + Game.getIncreaseTaxEfficiencyCost(((Integer) arrayList3.get(i41)).intValue()), Images.gold, width8 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, i42, i34, i43, ImageManager.getImage(Images.gold).getWidth(), ((Integer) arrayList3.get(i41)).intValue()));
            height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            arrayList3.remove(i41);
            arrayList2 = arrayList3;
            width = i35;
            i20 = i20;
            i19 = i36;
            i23 = i34;
            i17 = i37;
            c = c2;
            i22 = i40;
            i2 = i2;
            i5 = i43;
            i11 = 2;
        }
        int i44 = width;
        int i45 = height + InGame_CourtOptions.menuH;
        int iMin = Math.min(height4, (CFG.GAME_HEIGHT - i45) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, 0, i44, Math.max(height4, iMin)));
        initMenu(null, otherMenuPosX, i45, i44, iMin, arrayList, false, false);
        this.drawScrollPositionAlways = false;
        Game.menuManager.setInGame_CivOptions_Title(Game.lang.get("IncreaseTaxEfficiency"));
    }

    public static MenuElement_Hover getHoverSupremeCourt() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center(Game.lang.get("SupremeCourt"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_ImageFull(Images.supremeCourtBig, 0, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Level") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(Game.player.iCivID).getSupremeCourtLevel() + " / " + Game.getSupremeCourt_MaxLvl(Game.player.iCivID), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(PZBvyl.CxgjMprGb) + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(Game.getCiv(Game.player.iCivID).getCorruption() * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Game.getCiv(Game.player.iCivID).getCorruption() > 0.0f ? Colors.COLOR_TEXT_MODIFIER_NEGATIVE : Colors.COLOR_TEXT_MODIFIER_POSITIVE));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.corruption, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("CorruptionPerLevel") + ": ", CFG.getPrecision2(GameValues.supremeCourt.SUPREME_COURT_CORRUPTION_REDUCTION_PER_LVL * 100.0f, 100) + "%", Images.corruption, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (Game.getCiv(Game.player.iCivID).getSupremeCourtLevel() >= Game.getSupremeCourt_MaxLvl(Game.player.iCivID)) {
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaximumLevel"), CFG.FONT_BOLD_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.stability, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        } else {
            arrayList2.add(new MenuElement_HoverElement_Type_Empty());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("UpgradeSupremeCourt"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.stability, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Cost") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(Game.getSupremeCourt_Cost(Game.player.iCivID), 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("CorruptionPerLevel") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(GameValues.supremeCourt.SUPREME_COURT_CORRUPTION_REDUCTION_PER_LVL * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.corruption, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        return new MenuElement_Hover(arrayList);
    }

    public static final void upgradeSupremeCourt() {
        if (Game.getCiv(Game.player.iCivID).getSupremeCourtLevel() >= Game.getSupremeCourt_MaxLvl(Game.player.iCivID)) {
            Game.menuManager.addToastInsufficient(Game.lang.get("MaximumLevel") + ": ", "" + Game.getCiv(Game.player.iCivID).getSupremeCourtLevel() + " / " + Game.getSupremeCourt_MaxLvl(Game.player.iCivID), Images.stability);
            return;
        }
        if (Game.getCiv(Game.player.iCivID).fGold < Game.getSupremeCourt_Cost(Game.player.iCivID)) {
            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getSupremeCourt_Cost(Game.player.iCivID), 100), Images.gold);
            return;
        }
        Game.getCiv(Game.player.iCivID).upgradeSupremeCourt();
        InGame_Info.iCivID = Game.player.iCivID;
        InGame_Info.iCivID2 = 0;
        Game.menuManager.rebuildInGame_Info(Game.lang.get("SupremeCourt"), Game.lang.get("Level") + ": " + Game.getCiv(Game.player.iCivID).getSupremeCourtLevel() + " / " + Game.getSupremeCourt_MaxLvl(Game.player.iCivID));
        InGame_Info.imgID = Images.infoCrown;
        Game.getCiv(Game.player.iCivID).updateTotalIncomePerMonth();
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
