package aoc.kingdoms.lukasz.menusInGame.Right;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.advisors.VjN.hQfu;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Religion;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRect_Active;
import aoc.kingdoms.lukasz.menu_element.graph.Graph;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagCiv_Title;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ReligionTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_Flag;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort;
import aoc.kingdoms.lukasz.menusInGame.DrawOver.SQ.XjthpFh;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_RightTaxEfficiency extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int iModeID = 0;
    public static int iSortID = 2;
    public static long lTime;
    public static long lTime2;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightTaxEfficiency$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonStatsRect_Active {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightTaxEfficiency.iModeID != 0) {
                InGame_RightTaxEfficiency.iModeID = 0;
                Game.menuManager.rebuildInGame_RightTaxEfficiency();
                InGame_RightTaxEfficiency.lTime = 0L;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Civilizations"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.council, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return InGame_RightTaxEfficiency.iModeID == 0 ? Colors.HOVER_GOLD : super.getColor(z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightTaxEfficiency$10, reason: invalid class name */
    class AnonymousClass10 extends Text_StaticBG_ID {
        AnonymousClass10(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.continents.lContinents.get(getCurrent()).sName, CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            float taxEfficiencyWithBonuses = 0.0f;
            int i = 0;
            float f = 0.0f;
            for (int i2 = 0; i2 < Game.getProvincesSize(); i2++) {
                if (Game.getProvince(i2).getCivID() > 0 && Game.getProvince(i2).getContinent() == getCurrent()) {
                    taxEfficiencyWithBonuses += Game.getProvince(i2).getTaxEfficiencyWithBonuses();
                    f += Game.getProvince(i2).fProvinceIncomeTaxation;
                    i++;
                }
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Average") + ", " + Game.lang.get("TaxEfficiency") + ": ", CFG.getPrecision2(taxEfficiencyWithBonuses / i, 100) + "%", Images.tax, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("IncomeTaxation") + ": ", CFG.getPrecision2(f, 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightTaxEfficiency$11, reason: invalid class name */
    class AnonymousClass11 extends ButtonStatsRectIMG_Religion {
        AnonymousClass11(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Religion, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.religionManager.getReligion(this.imageID).Name, CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ReligionTitle(this.imageID, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            float taxEfficiencyWithBonuses = 0.0f;
            float f = 0.0f;
            int i = 0;
            for (int i2 = 0; i2 < Game.getProvincesSize(); i2++) {
                if (Game.getProvince(i2).getCivID() > 0 && Game.getProvince(i2).getReligion() == this.imageID) {
                    taxEfficiencyWithBonuses += Game.getProvince(i2).getTaxEfficiencyWithBonuses();
                    f += Game.getProvince(i2).fProvinceIncomeTaxation;
                    i++;
                }
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Average") + ", " + Game.lang.get("TaxEfficiency") + ": ", CFG.getPrecision2(taxEfficiencyWithBonuses / i, 100) + "%", Images.tax, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("IncomeTaxation") + ": ", CFG.getPrecision2(f, 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightTaxEfficiency$12, reason: invalid class name */
    class AnonymousClass12 extends MenuTitleIMG {
        AnonymousClass12(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG, aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public void draw(SpriteBatch spriteBatch, int i, int i2, int i3, Status status) {
            ImageManager.getImage(this.imageID).draw2(spriteBatch, i, i2 - getHeight(), i3, getHeight());
            drawGradient(spriteBatch, i, i2, i3, status);
            drawText(spriteBatch, i + (Images.boxTitleBORDERWIDTH / 2), i2, i3, status);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_RightTaxEfficiency.lTime2;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightTaxEfficiency$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonStatsRect_Active {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightTaxEfficiency.iModeID != 1) {
                InGame_RightTaxEfficiency.iModeID = 1;
                Game.menuManager.rebuildInGame_RightTaxEfficiency();
                InGame_RightTaxEfficiency.lTime = 0L;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Provinces"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return InGame_RightTaxEfficiency.iModeID == 1 ? Colors.HOVER_GOLD : super.getColor(z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightTaxEfficiency$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRect_Active {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightTaxEfficiency.iModeID != 2) {
                InGame_RightTaxEfficiency.iModeID = 2;
                Game.menuManager.rebuildInGame_RightTaxEfficiency();
                InGame_RightTaxEfficiency.lTime = 0L;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Continents"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return InGame_RightTaxEfficiency.iModeID == 2 ? Colors.HOVER_GOLD : super.getColor(z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightTaxEfficiency$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonStatsRect_Active {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightTaxEfficiency.iModeID != 3) {
                InGame_RightTaxEfficiency.iModeID = 3;
                Game.menuManager.rebuildInGame_RightTaxEfficiency();
                InGame_RightTaxEfficiency.lTime = 0L;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Religion"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.religion, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return InGame_RightTaxEfficiency.iModeID == 3 ? Colors.HOVER_GOLD : super.getColor(z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightTaxEfficiency$5, reason: invalid class name */
    class AnonymousClass5 extends Text_TitleBlueSort {
        AnonymousClass5(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightTaxEfficiency.iSortID == 0) {
                InGame_RightTaxEfficiency.iSortID = 1;
            } else {
                InGame_RightTaxEfficiency.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_RightTaxEfficiency();
            InGame_RightTaxEfficiency.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightTaxEfficiency$6, reason: invalid class name */
    class AnonymousClass6 extends Text_TitleBlueSort {
        AnonymousClass6(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightTaxEfficiency.iSortID == 2) {
                InGame_RightTaxEfficiency.iSortID = 3;
            } else {
                InGame_RightTaxEfficiency.iSortID = 2;
            }
            Game.menuManager.rebuildInGame_RightTaxEfficiency();
            InGame_RightTaxEfficiency.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + hQfu.kCz));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("TaxEfficiency"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightTaxEfficiency$7, reason: invalid class name */
    class AnonymousClass7 extends Text_TitleBlueSort {
        AnonymousClass7(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightTaxEfficiency.iSortID == 4) {
                InGame_RightTaxEfficiency.iSortID = 5;
            } else {
                InGame_RightTaxEfficiency.iSortID = 4;
            }
            Game.menuManager.rebuildInGame_RightTaxEfficiency();
            InGame_RightTaxEfficiency.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("IncomeTaxation"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightTaxEfficiency$8, reason: invalid class name */
    class AnonymousClass8 extends Text_StaticBG_ID_FlagCiv {
        AnonymousClass8(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(getCurrent()).getCapitalProvinceID() < 0 || Game.getProvince(Game.getCiv(getCurrent()).getCapitalProvinceID()).getCivID() != getCurrent()) {
                return;
            }
            if (Game.iActiveProvince >= 0 && Game.getProvince(Game.iActiveProvince).getCivID() == getCurrent()) {
                Game.menuManager.rebuildInGame_Civ();
                return;
            }
            Game.mapCoords.centerToProvinceID(Game.getCiv(getCurrent()).getCapitalProvinceID());
            Game.setActiveProvinceID(Game.getCiv(getCurrent()).getCapitalProvinceID());
            ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
            if (Game.menuManager.getVisibleInGame_ProvinceInfo()) {
                Game.menuManager.rebuildInGame_ProvinceInfo(false);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int current = getCurrent();
            StringBuilder sbAppend = new StringBuilder().append(Game.lang.get("Provinces"));
            String str = XjthpFh.naFsZLmUXdXH;
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(current, sbAppend.append(str).append(CFG.getNumberWithSpaces("" + Game.getCiv(getCurrent()).getNumOfProvinces())).toString()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Average") + ", " + Game.lang.get("TaxEfficiency") + str, CFG.getPrecision2(Game.getCiv(getCurrent()).getAverageTaxEfficiency(), 100) + "%", Images.tax, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("IncomeTaxation") + str, CFG.getPrecision2(Game.getCiv(getCurrent()).getTotalProvinceIncomeTax(), 10), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightTaxEfficiency$9, reason: invalid class name */
    class AnonymousClass9 extends Text_StaticBG_ID_Flag {
        AnonymousClass9(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.iActiveProvince == getCurrent()) {
                Game.menuManager.hideCourtCiv();
                Game.menuManager.setVisibleInGame_Civ(false);
                Game.setActiveProvinceID(getCurrent());
                Game.menuManager.rebuildInGame_ProvinceInfo(true);
                ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
                return;
            }
            Game.mapCoords.centerToProvinceID(getCurrent());
            Game.setActiveProvinceID(getCurrent());
            ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
            if (Game.menuManager.getVisibleInGame_ProvinceInfo()) {
                Game.menuManager.rebuildInGame_ProvinceInfo(false);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(Game.getProvince(getCurrent()).getCivID(), Game.getProvince(getCurrent()).getProvinceName()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("TaxEfficiency") + ": ", CFG.getPrecision2(Game.getProvince(getCurrent()).getTaxEfficiency(), 10) + "%", Images.tax, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("IncomeTaxation") + ": ", CFG.getPrecision2(Game.getProvince(getCurrent()).fProvinceIncomeTaxation, 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX WARN: Code duplicated, block: B:366:0x0dbe  */
    /* JADX WARN: Code duplicated, block: B:368:0x0dd8  */
    /* JADX WARN: Code duplicated, block: B:408:0x0df0 A[SYNTHETIC] */
    public InGame_RightTaxEfficiency() {
        String str;
        Exception exc;
        int size;
        int posY;
        int i;
        int i2;
        int i3;
        char c;
        char c2;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        ArrayList arrayList = new ArrayList();
        int i10 = CFG.PADDING;
        ImageManager.getImage(Images.title2).getHeight();
        int i11 = Images.boxTitleBORDERWIDTH;
        int width = ImageManager.getImage(Images.title1Red).getWidth();
        int i12 = CFG.GAME_WIDTH - width;
        int height = ImageManager.getImage(Images.title1Red).getHeight() + ImageManager.getImage(Images.topStats).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i13 = CFG.PADDING;
        int i14 = Images.boxTitleBORDERWIDTH + i10;
        int i15 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
        int i16 = (int) ((((width - (i10 * 2)) - CFG.PADDING) - Images.boxTitleBORDERWIDTH) / 2.0f);
        arrayList.add(new AnonymousClass1(Game.lang.get("Civilizations"), i14, i13, i16, i15, iModeID == 0 ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL));
        int i17 = 1;
        arrayList.add(new AnonymousClass2(Game.lang.get("Provinces"), CFG.PADDING + i14 + i16, i13, i16, i15, iModeID == 1 ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL));
        int height2 = i13 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass3(Game.lang.get("Continents"), i14, height2, i16, i15, iModeID == 2 ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL));
        arrayList.add(new AnonymousClass4(Game.lang.get("Religion"), i14 + CFG.PADDING + i16, height2, i16, i15, iModeID == 3 ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i18 = (int) ((width - Images.boxTitleBORDERWIDTH) * 0.5f);
        int i19 = (int) ((width - Images.boxTitleBORDERWIDTH) * 0.25f);
        int i20 = (int) ((width - Images.boxTitleBORDERWIDTH) * 0.25f);
        int i21 = (int) (((width - Images.boxTitleBORDERWIDTH) - (CFG.PADDING * 4)) * 0.5f);
        int i22 = (int) (((width - Images.boxTitleBORDERWIDTH) - (CFG.PADDING * 4)) * 0.25f);
        int i23 = (int) (((width - Images.boxTitleBORDERWIDTH) - (CFG.PADDING * 4)) * 0.25f);
        int i24 = Images.boxTitleBORDERWIDTH;
        int i25 = iSortID;
        arrayList.add(new AnonymousClass5(i25 == 0 || i25 == 1, i25 == 1, Game.lang.get("Name"), -1, i24, height3, i18, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width2 = i24 + arrayList.get(arrayList.size() - 1).getWidth();
        int i26 = iSortID;
        String str2 = "TaxEfficiency";
        arrayList.add(new AnonymousClass6(i26 == 2 || i26 == 3, i26 == 3, Game.lang.get("TaxEfficiency"), -1, width2, height3, i19, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width3 = width2 + arrayList.get(arrayList.size() - 1).getWidth();
        int i27 = iSortID;
        boolean z = i27 == 4 || i27 == 5;
        boolean z2 = i27 == 5;
        String str3 = Game.lang.get("IncomeTaxation");
        int i28 = CFG.TEXT_HEIGHT + (CFG.PADDING * 6);
        arrayList.add(new AnonymousClass7(z, z2, str3, -1, width3, height3, i20, i28, CFG.FONT_BOLD_SMALL));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        try {
            int i29 = iModeID;
            String str4 = "%";
            try {
                if (i29 == 0) {
                    try {
                        ArrayList arrayList2 = new ArrayList();
                        ArrayList arrayList3 = new ArrayList();
                        ArrayList arrayList4 = new ArrayList();
                        for (int i30 = 1; i30 < Game.getCivsSize(); i30++) {
                            try {
                                if (Game.getCiv(i30).getNumOfProvinces() > 0) {
                                    arrayList2.add(Integer.valueOf(i30));
                                    arrayList3.add(Float.valueOf(Game.getCiv(i30).getAverageTaxEfficiency()));
                                    arrayList4.add(Float.valueOf(Game.getCiv(i30).getTotalProvinceIncomeTax()));
                                }
                            } catch (Exception e) {
                                exc = e;
                                i28 = width;
                                str = str2;
                                CFG.exceptionStack(exc);
                                size = arrayList.size();
                                posY = 0;
                                for (i = 0; i < size; i++) {
                                    if (posY < arrayList.get(i).getPosY() + arrayList.get(i).getHeight() + CFG.PADDING) {
                                        posY = arrayList.get(i).getPosY() + arrayList.get(i).getHeight() + CFG.PADDING;
                                    }
                                }
                                int iMin = Math.min(posY, (CFG.GAME_HEIGHT - height) - ((CFG.GAME_HEIGHT - Game.menuManager.getInGame_MapModesPosY()) + (CFG.PADDING * 3)));
                                int i31 = i28;
                                arrayList.add(new Empty(0, 0, i31, Math.max(posY, iMin)));
                                initMenu(new AnonymousClass12(Game.lang.get(str), false, false, Images.title600), i12, height, i31, iMin, arrayList, false, true);
                                this.scrollExtraPosX = Images.boxTitleBORDERWIDTH;
                            }
                        }
                        while (arrayList2.size() > 0) {
                            int i32 = iSortID;
                            if (i32 == 0) {
                                i3 = 0;
                                for (int i33 = i17; i33 < arrayList2.size(); i33++) {
                                    if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList2.get(i3)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList2.get(i33)).intValue()).getCivName())) {
                                        i3 = i33;
                                    }
                                }
                            } else if (i32 == i17) {
                                i3 = 0;
                                for (int i34 = 1; i34 < arrayList2.size(); i34++) {
                                    if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList2.get(i34)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList2.get(i3)).intValue()).getCivName())) {
                                        i3 = i34;
                                    }
                                }
                            } else if (i32 == 2) {
                                i3 = 0;
                                for (int i35 = 1; i35 < arrayList2.size(); i35++) {
                                    if (((Float) arrayList3.get(i3)).floatValue() < ((Float) arrayList3.get(i35)).floatValue()) {
                                        i3 = i35;
                                    }
                                }
                            } else if (i32 == 3) {
                                i3 = 0;
                                for (int i36 = 1; i36 < arrayList2.size(); i36++) {
                                    if (((Float) arrayList3.get(i3)).floatValue() > ((Float) arrayList3.get(i36)).floatValue()) {
                                        i3 = i36;
                                    }
                                }
                            } else {
                                if (i32 == 4) {
                                    i3 = 0;
                                    for (int i37 = 1; i37 < arrayList2.size(); i37++) {
                                        if (((Float) arrayList4.get(i3)).floatValue() < ((Float) arrayList4.get(i37)).floatValue()) {
                                            i3 = i37;
                                        }
                                    }
                                } else if (i32 == 5) {
                                    int i38 = 0;
                                    for (int i39 = 1; i39 < arrayList2.size(); i39++) {
                                        if (((Float) arrayList4.get(i38)).floatValue() > ((Float) arrayList4.get(i39)).floatValue()) {
                                            i38 = i39;
                                        }
                                    }
                                    i2 = i38;
                                } else {
                                    i2 = 0;
                                }
                                int i40 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                                ArrayList arrayList5 = arrayList3;
                                int i41 = width;
                                String str5 = str4;
                                ArrayList arrayList6 = arrayList2;
                                int i42 = i23;
                                int i43 = i22;
                                String str6 = str2;
                                arrayList.add(new AnonymousClass8(Game.getCiv(((Integer) arrayList2.get(i2)).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i40, height4, i21, i15, ((Integer) arrayList2.get(i2)).intValue()));
                                int width4 = i40 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                                arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList5.get(i2)).floatValue(), 10) + str5, CFG.FONT_REGULAR_SMALL, -1, width4, height4, i43, i15));
                                arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList4.get(i2)).floatValue(), 100), CFG.FONT_REGULAR_SMALL, -1, width4 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height4, i42, i15));
                                arrayList.get(arrayList.size() - 1).getWidth();
                                int i44 = CFG.PADDING;
                                height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                                arrayList2 = arrayList6;
                                arrayList2.remove(i2);
                                arrayList5.remove(i2);
                                arrayList4.remove(i2);
                                str4 = str5;
                                arrayList3 = arrayList5;
                                i23 = i42;
                                i22 = i43;
                                width = i41;
                                str2 = str6;
                                i17 = 1;
                            }
                            i2 = i3;
                            int i45 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                            ArrayList arrayList7 = arrayList3;
                            int i46 = width;
                            String str7 = str4;
                            ArrayList arrayList8 = arrayList2;
                            int i47 = i23;
                            int i48 = i22;
                            String str8 = str2;
                            arrayList.add(new AnonymousClass8(Game.getCiv(((Integer) arrayList2.get(i2)).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i45, height4, i21, i15, ((Integer) arrayList2.get(i2)).intValue()));
                            int width5 = i45 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                            arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList7.get(i2)).floatValue(), 10) + str7, CFG.FONT_REGULAR_SMALL, -1, width5, height4, i48, i15));
                            arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList4.get(i2)).floatValue(), 100), CFG.FONT_REGULAR_SMALL, -1, width5 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height4, i47, i15));
                            arrayList.get(arrayList.size() - 1).getWidth();
                            int i49 = CFG.PADDING;
                            height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                            arrayList2 = arrayList8;
                            arrayList2.remove(i2);
                            arrayList7.remove(i2);
                            arrayList4.remove(i2);
                            str4 = str7;
                            arrayList3 = arrayList7;
                            i23 = i47;
                            i22 = i48;
                            width = i46;
                            str2 = str8;
                            i17 = 1;
                        }
                        i28 = width;
                        str = str2;
                    } catch (Exception e2) {
                        e = e2;
                        i28 = width;
                        str = str2;
                        exc = e;
                        CFG.exceptionStack(exc);
                        size = arrayList.size();
                        posY = 0;
                        while (i < size) {
                            if (posY < arrayList.get(i).getPosY() + arrayList.get(i).getHeight() + CFG.PADDING) {
                                posY = arrayList.get(i).getPosY() + arrayList.get(i).getHeight() + CFG.PADDING;
                            }
                        }
                        int iMin2 = Math.min(posY, (CFG.GAME_HEIGHT - height) - ((CFG.GAME_HEIGHT - Game.menuManager.getInGame_MapModesPosY()) + (CFG.PADDING * 3)));
                        int i310 = i28;
                        arrayList.add(new Empty(0, 0, i310, Math.max(posY, iMin2)));
                        initMenu(new AnonymousClass12(Game.lang.get(str), false, false, Images.title600), i12, height, i310, iMin2, arrayList, false, true);
                        this.scrollExtraPosX = Images.boxTitleBORDERWIDTH;
                    }
                } else {
                    i28 = width;
                    str = "TaxEfficiency";
                    if (i29 == 1) {
                        ArrayList arrayList9 = new ArrayList();
                        ArrayList arrayList10 = new ArrayList();
                        ArrayList arrayList11 = new ArrayList();
                        for (int i50 = 0; i50 < Game.getProvincesSize(); i50++) {
                            if (Game.getProvince(i50).getCivID() > 0) {
                                arrayList9.add(Integer.valueOf(i50));
                                arrayList10.add(Float.valueOf(Game.getProvince(i50).getTaxEfficiencyWithBonuses()));
                                arrayList11.add(Float.valueOf(Game.getProvince(i50).fProvinceIncomeTaxation));
                            }
                        }
                        int i51 = Graph.ANIMATION_TIME;
                        while (arrayList9.size() > 0) {
                            int i52 = i51 - 1;
                            if (i51 <= 0) {
                                break;
                            }
                            int i53 = iSortID;
                            if (i53 == 0) {
                                i9 = 0;
                                for (int i54 = 1; i54 < arrayList9.size(); i54++) {
                                    if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList9.get(i9)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList9.get(i54)).intValue()).getProvinceName())) {
                                        i9 = i54;
                                    }
                                }
                            } else if (i53 == 1) {
                                i9 = 0;
                                for (int i55 = 1; i55 < arrayList9.size(); i55++) {
                                    if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList9.get(i55)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList9.get(i9)).intValue()).getProvinceName())) {
                                        i9 = i55;
                                    }
                                }
                            } else if (i53 == 2) {
                                i9 = 0;
                                for (int i56 = 1; i56 < arrayList9.size(); i56++) {
                                    if (((Float) arrayList10.get(i9)).floatValue() < ((Float) arrayList10.get(i56)).floatValue()) {
                                        i9 = i56;
                                    }
                                }
                            } else {
                                if (i53 == 3) {
                                    i9 = 0;
                                    for (int i57 = 1; i57 < arrayList9.size(); i57++) {
                                        if (((Float) arrayList10.get(i9)).floatValue() > ((Float) arrayList10.get(i57)).floatValue()) {
                                            i9 = i57;
                                        }
                                    }
                                } else if (i53 == 4) {
                                    int i58 = 0;
                                    for (int i59 = 1; i59 < arrayList9.size(); i59++) {
                                        if (((Float) arrayList11.get(i58)).floatValue() < ((Float) arrayList11.get(i59)).floatValue()) {
                                            i58 = i59;
                                        }
                                    }
                                    i9 = i58;
                                } else if (i53 == 5) {
                                    int i60 = 0;
                                    for (int i61 = 1; i61 < arrayList9.size(); i61++) {
                                        if (((Float) arrayList11.get(i60)).floatValue() > ((Float) arrayList11.get(i61)).floatValue()) {
                                            i60 = i61;
                                        }
                                    }
                                    i9 = i60;
                                } else {
                                    i9 = 0;
                                }
                                int i62 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                                ArrayList arrayList12 = arrayList9;
                                arrayList.add(new AnonymousClass9(Game.getProvince(((Integer) arrayList9.get(i9)).intValue()).getProvinceName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i62, height4, i21, i15, ((Integer) arrayList9.get(i9)).intValue()));
                                int width6 = i62 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                                arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList10.get(i9)).floatValue(), 10) + "%", CFG.FONT_REGULAR_SMALL, -1, width6, height4, i22, i15));
                                arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList11.get(i9)).floatValue(), 100), CFG.FONT_REGULAR_SMALL, -1, width6 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height4, i23, i15));
                                arrayList.get(arrayList.size() - 1).getWidth();
                                int i63 = CFG.PADDING;
                                height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                                arrayList9 = arrayList12;
                                arrayList9.remove(i9);
                                arrayList10.remove(i9);
                                arrayList11.remove(i9);
                                i51 = i52;
                            }
                            int i64 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                            ArrayList arrayList13 = arrayList9;
                            arrayList.add(new AnonymousClass9(Game.getProvince(((Integer) arrayList9.get(i9)).intValue()).getProvinceName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i64, height4, i21, i15, ((Integer) arrayList9.get(i9)).intValue()));
                            int width7 = i64 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                            arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList10.get(i9)).floatValue(), 10) + "%", CFG.FONT_REGULAR_SMALL, -1, width7, height4, i22, i15));
                            arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList11.get(i9)).floatValue(), 100), CFG.FONT_REGULAR_SMALL, -1, width7 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height4, i23, i15));
                            arrayList.get(arrayList.size() - 1).getWidth();
                            int i65 = CFG.PADDING;
                            height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                            arrayList9 = arrayList13;
                            arrayList9.remove(i9);
                            arrayList10.remove(i9);
                            arrayList11.remove(i9);
                            i51 = i52;
                        }
                    } else if (i29 == 2) {
                        ArrayList arrayList14 = new ArrayList();
                        ArrayList arrayList15 = new ArrayList();
                        ArrayList arrayList16 = new ArrayList();
                        ArrayList arrayList17 = new ArrayList();
                        for (int i66 = 0; i66 < Game.continents.iContinentsSize; i66++) {
                            arrayList14.add(Integer.valueOf(i66));
                            arrayList15.add(Float.valueOf(0.0f));
                            arrayList16.add(Float.valueOf(0.0f));
                            arrayList17.add(0);
                        }
                        for (int i67 = 0; i67 < Game.getProvincesSize(); i67++) {
                            if (Game.getProvince(i67).getCivID() > 0) {
                                arrayList15.set(Game.getProvince(i67).getContinent(), Float.valueOf(((Float) arrayList15.get(Game.getProvince(i67).getContinent())).floatValue() + Game.getProvince(i67).getTaxEfficiencyWithBonuses()));
                                arrayList16.set(Game.getProvince(i67).getContinent(), Float.valueOf(((Float) arrayList16.get(Game.getProvince(i67).getContinent())).floatValue() + Game.getProvince(i67).fProvinceIncomeTaxation));
                                arrayList17.set(Game.getProvince(i67).getContinent(), Integer.valueOf(((Integer) arrayList17.get(Game.getProvince(i67).getContinent())).intValue() + 1));
                            }
                        }
                        int i68 = 0;
                        arrayList14.remove(0);
                        arrayList15.remove(0);
                        arrayList16.remove(0);
                        arrayList17.remove(0);
                        for (int i69 = 0; i69 < arrayList15.size(); i69++) {
                            arrayList15.set(i69, Float.valueOf(((Float) arrayList15.get(i69)).floatValue() / ((Integer) arrayList17.get(i69)).intValue()));
                        }
                        while (arrayList14.size() > 0) {
                            int i70 = iSortID;
                            if (i70 == 0) {
                                i8 = i68;
                                for (int i71 = 1; i71 < arrayList14.size(); i71++) {
                                    if (CFG.compareAlphabetic_TwoString(Game.continents.lContinents.get(((Integer) arrayList14.get(i8)).intValue()).sName, Game.continents.lContinents.get(((Integer) arrayList14.get(i71)).intValue()).sName)) {
                                        i8 = i71;
                                    }
                                }
                            } else if (i70 == 1) {
                                i8 = i68;
                                for (int i72 = 1; i72 < arrayList14.size(); i72++) {
                                    if (CFG.compareAlphabetic_TwoString(Game.continents.lContinents.get(((Integer) arrayList14.get(i72)).intValue()).sName, Game.continents.lContinents.get(((Integer) arrayList14.get(i8)).intValue()).sName)) {
                                        i8 = i72;
                                    }
                                }
                            } else if (i70 == 2) {
                                i8 = i68;
                                for (int i73 = 1; i73 < arrayList14.size(); i73++) {
                                    if (((Float) arrayList15.get(i8)).floatValue() < ((Float) arrayList15.get(i73)).floatValue()) {
                                        i8 = i73;
                                    }
                                }
                            } else {
                                if (i70 == 3) {
                                    i8 = i68;
                                    for (int i74 = 1; i74 < arrayList14.size(); i74++) {
                                        if (((Float) arrayList15.get(i8)).floatValue() > ((Float) arrayList15.get(i74)).floatValue()) {
                                            i8 = i74;
                                        }
                                    }
                                } else if (i70 == 4) {
                                    int i75 = i68;
                                    for (int i76 = 1; i76 < arrayList14.size(); i76++) {
                                        if (((Float) arrayList16.get(i75)).floatValue() < ((Float) arrayList16.get(i76)).floatValue()) {
                                            i75 = i76;
                                        }
                                    }
                                    i7 = i75;
                                } else if (i70 == 5) {
                                    int i77 = i68;
                                    for (int i78 = 1; i78 < arrayList14.size(); i78++) {
                                        if (((Float) arrayList16.get(i77)).floatValue() > ((Float) arrayList16.get(i78)).floatValue()) {
                                            i77 = i78;
                                        }
                                    }
                                    i7 = i77;
                                } else {
                                    i7 = i68;
                                }
                                int i79 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                                String str9 = Game.continents.lContinents.get(((Integer) arrayList14.get(i7)).intValue()).sName;
                                int i80 = CFG.FONT_REGULAR_SMALL;
                                int i81 = CFG.PADDING * 2;
                                int iIntValue = ((Integer) arrayList14.get(i7)).intValue();
                                ArrayList arrayList18 = arrayList14;
                                int i82 = i7;
                                ArrayList arrayList19 = arrayList17;
                                arrayList.add(new AnonymousClass10(str9, i80, i81, i79, height4, i21, i15, iIntValue));
                                int width8 = i79 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                                arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList15.get(i82)).floatValue(), 100) + "%", CFG.FONT_REGULAR_SMALL, -1, width8, height4, i22, i15));
                                arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList16.get(i82)).floatValue(), 100), CFG.FONT_REGULAR_SMALL, -1, width8 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height4, i23, i15));
                                arrayList.get(arrayList.size() - 1).getWidth();
                                int i83 = CFG.PADDING;
                                height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                                arrayList18.remove(i82);
                                arrayList15.remove(i82);
                                arrayList16.remove(i82);
                                arrayList19.remove(i82);
                                arrayList14 = arrayList18;
                                arrayList17 = arrayList19;
                                i68 = 0;
                            }
                            i7 = i8;
                            int i710 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                            String str10 = Game.continents.lContinents.get(((Integer) arrayList14.get(i7)).intValue()).sName;
                            int i84 = CFG.FONT_REGULAR_SMALL;
                            int i85 = CFG.PADDING * 2;
                            int iIntValue2 = ((Integer) arrayList14.get(i7)).intValue();
                            ArrayList arrayList110 = arrayList14;
                            int i86 = i7;
                            ArrayList arrayList111 = arrayList17;
                            arrayList.add(new AnonymousClass10(str10, i84, i85, i710, height4, i21, i15, iIntValue2));
                            int width9 = i710 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                            arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList15.get(i86)).floatValue(), 100) + "%", CFG.FONT_REGULAR_SMALL, -1, width9, height4, i22, i15));
                            arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList16.get(i86)).floatValue(), 100), CFG.FONT_REGULAR_SMALL, -1, width9 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height4, i23, i15));
                            arrayList.get(arrayList.size() - 1).getWidth();
                            int i87 = CFG.PADDING;
                            height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                            arrayList110.remove(i86);
                            arrayList15.remove(i86);
                            arrayList16.remove(i86);
                            arrayList111.remove(i86);
                            arrayList14 = arrayList110;
                            arrayList17 = arrayList111;
                            i68 = 0;
                        }
                    } else {
                        int i88 = 0;
                        if (i29 == 3) {
                            ArrayList arrayList20 = new ArrayList();
                            ArrayList arrayList21 = new ArrayList();
                            ArrayList arrayList22 = new ArrayList();
                            ArrayList arrayList23 = new ArrayList();
                            for (int i89 = 0; i89 < Game.religionManager.getReligionsSize(); i89++) {
                                arrayList20.add(Integer.valueOf(i89));
                                arrayList21.add(Float.valueOf(0.0f));
                                arrayList22.add(Float.valueOf(0.0f));
                                arrayList23.add(0);
                            }
                            for (int i90 = 0; i90 < Game.getProvincesSize(); i90++) {
                                if (Game.getProvince(i90).getCivID() > 0) {
                                    arrayList21.set(Game.getProvince(i90).getReligion(), Float.valueOf(((Float) arrayList21.get(Game.getProvince(i90).getReligion())).floatValue() + Game.getProvince(i90).getTaxEfficiencyWithBonuses()));
                                    arrayList22.set(Game.getProvince(i90).getReligion(), Float.valueOf(((Float) arrayList22.get(Game.getProvince(i90).getReligion())).floatValue() + Game.getProvince(i90).fProvinceIncomeTaxation));
                                    arrayList23.set(Game.getProvince(i90).getReligion(), Integer.valueOf(((Integer) arrayList23.get(Game.getProvince(i90).getReligion())).intValue() + 1));
                                }
                            }
                            for (int i91 = 0; i91 < arrayList21.size(); i91++) {
                                arrayList21.set(i91, Float.valueOf(((Float) arrayList21.get(i91)).floatValue() / ((Integer) arrayList23.get(i91)).intValue()));
                            }
                            while (arrayList20.size() > 0) {
                                int i92 = iSortID;
                                if (i92 == 0) {
                                    i6 = i88;
                                    for (int i93 = 1; i93 < arrayList20.size(); i93++) {
                                        if (CFG.compareAlphabetic_TwoString(Game.religionManager.getReligion(((Integer) arrayList20.get(i6)).intValue()).Name, Game.religionManager.getReligion(((Integer) arrayList20.get(i93)).intValue()).Name)) {
                                            i6 = i93;
                                        }
                                    }
                                } else {
                                    if (i92 == 1) {
                                        i6 = i88;
                                        for (int i94 = 1; i94 < arrayList20.size(); i94++) {
                                            if (CFG.compareAlphabetic_TwoString(Game.religionManager.getReligion(((Integer) arrayList20.get(i94)).intValue()).Name, Game.religionManager.getReligion(((Integer) arrayList20.get(i6)).intValue()).Name)) {
                                                i6 = i94;
                                            }
                                        }
                                    } else {
                                        c = 2;
                                        if (i92 == 2) {
                                            i5 = i88;
                                            for (int i95 = 1; i95 < arrayList20.size(); i95++) {
                                                if (((Float) arrayList21.get(i5)).floatValue() < ((Float) arrayList21.get(i95)).floatValue()) {
                                                    i5 = i95;
                                                }
                                            }
                                        } else if (i92 == 3) {
                                            i5 = i88;
                                            for (int i96 = 1; i96 < arrayList20.size(); i96++) {
                                                if (((Float) arrayList21.get(i5)).floatValue() > ((Float) arrayList21.get(i96)).floatValue()) {
                                                    i5 = i96;
                                                }
                                            }
                                        } else {
                                            c2 = 4;
                                            if (i92 == 4) {
                                                int i97 = i88;
                                                for (int i98 = 1; i98 < arrayList20.size(); i98++) {
                                                    if (((Float) arrayList22.get(i97)).floatValue() < ((Float) arrayList22.get(i98)).floatValue()) {
                                                        i97 = i98;
                                                    }
                                                }
                                                i4 = i97;
                                            } else if (i92 == 5) {
                                                int i99 = i88;
                                                for (int i100 = 1; i100 < arrayList20.size(); i100++) {
                                                    if (((Float) arrayList22.get(i99)).floatValue() > ((Float) arrayList22.get(i100)).floatValue()) {
                                                        i99 = i100;
                                                    }
                                                }
                                                i4 = i99;
                                            } else {
                                                i4 = i88;
                                            }
                                        }
                                        i4 = i5;
                                        c2 = 4;
                                    }
                                    int i101 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                                    ArrayList arrayList24 = arrayList23;
                                    ArrayList arrayList25 = arrayList20;
                                    ArrayList arrayList26 = arrayList22;
                                    arrayList.add(new AnonymousClass11(Game.religionManager.getReligion(((Integer) arrayList20.get(i4)).intValue()).Name, ((Integer) arrayList20.get(i4)).intValue(), i101, height4, i21, i15, ImageManager.getImage(Images.religion).getWidth(), 0));
                                    int width10 = i101 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                                    arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList21.get(i4)).floatValue(), 100) + "%", CFG.FONT_REGULAR_SMALL, -1, width10, height4, i22, i15));
                                    arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList26.get(i4)).floatValue(), 100), CFG.FONT_REGULAR_SMALL, -1, width10 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height4, i23, i15));
                                    arrayList.get(arrayList.size() - 1).getWidth();
                                    int i102 = CFG.PADDING;
                                    height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                                    arrayList25.remove(i4);
                                    arrayList21.remove(i4);
                                    arrayList26.remove(i4);
                                    arrayList24.remove(i4);
                                    arrayList22 = arrayList26;
                                    arrayList20 = arrayList25;
                                    arrayList23 = arrayList24;
                                    i88 = 0;
                                }
                                i4 = i6;
                                c2 = 4;
                                c = 2;
                                int i103 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                                ArrayList arrayList27 = arrayList23;
                                ArrayList arrayList28 = arrayList20;
                                ArrayList arrayList29 = arrayList22;
                                arrayList.add(new AnonymousClass11(Game.religionManager.getReligion(((Integer) arrayList20.get(i4)).intValue()).Name, ((Integer) arrayList20.get(i4)).intValue(), i103, height4, i21, i15, ImageManager.getImage(Images.religion).getWidth(), 0));
                                int width11 = i103 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                                arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList21.get(i4)).floatValue(), 100) + "%", CFG.FONT_REGULAR_SMALL, -1, width11, height4, i22, i15));
                                arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList29.get(i4)).floatValue(), 100), CFG.FONT_REGULAR_SMALL, -1, width11 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height4, i23, i15));
                                arrayList.get(arrayList.size() - 1).getWidth();
                                int i104 = CFG.PADDING;
                                height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                                arrayList28.remove(i4);
                                arrayList21.remove(i4);
                                arrayList29.remove(i4);
                                arrayList27.remove(i4);
                                arrayList22 = arrayList29;
                                arrayList20 = arrayList28;
                                arrayList23 = arrayList27;
                                i88 = 0;
                            }
                        }
                    }
                }
            } catch (Exception e3) {
                e = e3;
            }
        } catch (Exception e4) {
            e = e4;
            i28 = width;
            str = "TaxEfficiency";
        }
        size = arrayList.size();
        posY = 0;
        while (i < size) {
            if (posY < arrayList.get(i).getPosY() + arrayList.get(i).getHeight() + CFG.PADDING) {
                posY = arrayList.get(i).getPosY() + arrayList.get(i).getHeight() + CFG.PADDING;
            }
        }
        int iMin3 = Math.min(posY, (CFG.GAME_HEIGHT - height) - ((CFG.GAME_HEIGHT - Game.menuManager.getInGame_MapModesPosY()) + (CFG.PADDING * 3)));
        int i311 = i28;
        arrayList.add(new Empty(0, 0, i311, Math.max(posY, iMin3)));
        initMenu(new AnonymousClass12(Game.lang.get(str), false, false, Images.title600), i12, height, i311, iMin3, arrayList, false, true);
        this.scrollExtraPosX = Images.boxTitleBORDERWIDTH;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (CFG.BUTTON_WIDTH + i) - ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), CFG.PADDING + getHeight(), false, Images.insideTop600, Images.insideBot600);
        spriteBatch.setColor(Colors.COLOR_GRADIENT);
        Images.gradientXY.draw(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight(), false, true);
        spriteBatch.setColor(Color.WHITE);
        super.draw(spriteBatch, i3, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public boolean getVisible() {
        return super.getVisible() && Game.mapBG.getHideMenuZoomOut() && !Game.menuManager.getVisibleInGame_CivBonuses();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        long j = CFG.currentTimeMillis;
        lTime = j;
        lTime2 = j;
    }
}
