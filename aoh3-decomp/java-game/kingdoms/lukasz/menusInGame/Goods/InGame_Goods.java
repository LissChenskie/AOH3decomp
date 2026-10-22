package aoc.kingdoms.lukasz.menusInGame.Goods;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_DoubleText;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag2;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon3;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Resource;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_LargestProducer;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusScenarioEditor.YGiX.gpVDKipRURuzw;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.assets.loaders.Wkvw.PZBvyl;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Goods extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int iCivID = 0;
    public static boolean inGoods = true;
    public static boolean inGoodsView;
    public static long lTime;
    public static long lTime2;
    public static int sortBy;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods$1, reason: invalid class name */
    class AnonymousClass1 extends Text_TitleBlueSort {
        AnonymousClass1(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5) {
            super(z, z2, str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Goods.sortBy != 0) {
                InGame_Goods.sortBy = 0;
                Game.menuManager.rebuildInGame_Goods();
                Game.menuManager.setVisibleInGame_Goods(true);
                InGame_Goods.lTime = 0L;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Name"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.goods, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods$2, reason: invalid class name */
    class AnonymousClass2 extends Text_TitleBlueSort {
        AnonymousClass2(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5) {
            super(z, z2, str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Goods.sortBy != 1) {
                InGame_Goods.sortBy = 1;
                Game.menuManager.rebuildInGame_Goods();
                Game.menuManager.setVisibleInGame_Goods(true);
                InGame_Goods.lTime = 0L;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Bonus"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods$3, reason: invalid class name */
    class AnonymousClass3 extends Text_TitleBlueSort {
        AnonymousClass3(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5) {
            super(z, z2, str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Goods.sortBy != 2) {
                InGame_Goods.sortBy = 2;
                Game.menuManager.rebuildInGame_Goods();
                Game.menuManager.setVisibleInGame_Goods(true);
                InGame_Goods.lTime = 0L;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Civilization"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods$4, reason: invalid class name */
    class AnonymousClass4 extends TextIcon_Resource {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Goods_Provinces.RESOURCE_ID = getCurrent();
            InGame_Goods_Provinces.lTime = 0L;
            InGame_Goods.lTime = 0L;
            Game.menuManager.rebuildInGame_Goods_Provinces();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods$5, reason: invalid class name */
    class AnonymousClass5 extends Text_StaticBG_LargestProducer {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Goods_LargestProducers.RESOURCE_ID = getCurrent();
            InGame_Goods_LargestProducers.lTime = 0L;
            InGame_Goods.lTime = 0L;
            Game.menuManager.rebuildInGame_Goods_LargestProducers();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods$6, reason: invalid class name */
    class AnonymousClass6 extends Text_StaticBG_LargestProducer {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Goods_LargestProducers.RESOURCE_ID = getCurrent();
            InGame_Goods_LargestProducers.lTime = 0L;
            InGame_Goods.lTime = 0L;
            Game.menuManager.rebuildInGame_Goods_LargestProducers();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonFlag2 {
        AnonymousClass7(int i, int i2, int i3, boolean z) {
            super(i, i2, i3, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(getCurrent()).getCapitalProvinceID() >= 0) {
                if (!Game.getProvince(Game.getCiv(getCurrent()).getCapitalProvinceID()).getDrawProvince()) {
                    Game.mapCoords.centerToProvinceID(Game.getCiv(getCurrent()).getCapitalProvinceID());
                }
                Game.setActiveProvinceID(Game.getCiv(getCurrent()).getCapitalProvinceID());
                ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
                Game.menuManager.setVisibleInGame_Goods(false);
                Game.menuManager.rebuildInGame_Civ();
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods$8, reason: invalid class name */
    class AnonymousClass8 extends MenuTitleIMG_DoubleText {
        AnonymousClass8(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Goods.lTime2;
        }
    }

    public static class BonusText {
        public int bonusIMGID;
        public String bonusText;
        public String bonusText2;

        public BonusText(String str, String str2, int i) {
            this.bonusText = str;
            this.bonusText2 = str2;
            this.bonusIMGID = i;
        }
    }

    public InGame_Goods() {
        int i;
        ArrayList arrayList = new ArrayList();
        int i2 = Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2);
        int width = ImageManager.getImage(Images.title928).getWidth();
        InGame_CourtOptions2.getOtherMenuPosX_2();
        int height = ImageManager.getImage(Images.title1Red).getHeight() + ImageManager.getImage(Images.topStats).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i3 = CFG.PADDING * 2;
        int i4 = Images.boxTitleBORDERWIDTH;
        int i5 = (int) (CFG.BUTTON_WIDTH * 1.25f);
        int height2 = ImageManager.getImage(Images.flagOverDefault).getHeight() + CFG.TEXT_HEIGHT + (CFG.PADDING * 3);
        int width2 = (((width - (i2 * 2)) - i5) - ImageManager.getImage(Images.flagOverDefault).getWidth()) - (CFG.PADDING * 4);
        inGoods = true;
        inGoodsView = true;
        arrayList.add(new AnonymousClass1(sortBy == 0, false, Game.lang.get("Name"), -1, i4, 0, i5 + (CFG.PADDING * 3), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int i6 = 1;
        int width3 = i4 + arrayList.get(arrayList.size() - 1).getWidth();
        float f = width2;
        int i7 = (int) (0.65f * f);
        arrayList.add(new AnonymousClass2(sortBy == 1, false, Game.lang.get("Bonus"), -1, width3, 0, i7, CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int width4 = width3 + arrayList.get(arrayList.size() - 1).getWidth();
        arrayList.add(new AnonymousClass3(sortBy == 2, false, Game.lang.get("LargestProducer"), -1, width4, 0, (width - width4) - Images.boxTitleBORDERWIDTH, CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int i8 = 0;
        int height3 = arrayList.get(arrayList.size() - 1).getHeight() + i3 + 0;
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (int i9 = 0; i9 < ResourcesManager.iResourcesSize; i9++) {
            if (ResourcesManager.worldResourcesProduced.get(i9).intValue() > 0) {
                arrayList2.add(Integer.valueOf(i9));
            }
        }
        if (sortBy == 1) {
            int size = arrayList2.size();
            for (int i10 = 0; i10 < size; i10++) {
                arrayList3.add(getBonusText(((Integer) arrayList2.get(i10)).intValue()).bonusText);
            }
        }
        while (arrayList2.size() > 0) {
            int i11 = sortBy;
            if (i11 == 0) {
                i = i8;
                for (int i12 = i6; i12 < arrayList2.size(); i12++) {
                    if (CFG.compareAlphabetic_TwoString(ResourcesManager.getResourceName(((Integer) arrayList2.get(i)).intValue()), ResourcesManager.getResourceName(((Integer) arrayList2.get(i12)).intValue()))) {
                        i = i12;
                    }
                }
            } else if (i11 == i6) {
                i = i8;
                for (int i13 = i6; i13 < arrayList2.size(); i13++) {
                    if (CFG.compareAlphabetic_TwoString((String) arrayList3.get(i), (String) arrayList3.get(i13))) {
                        i = i13;
                    }
                }
            } else {
                i = i8;
                for (int i14 = i6; i14 < arrayList2.size(); i14++) {
                    if (CFG.compareAlphabetic_TwoString(Game.getCiv(ResourcesManager.worldResources_LargestProducer.get(((Integer) arrayList2.get(i)).intValue()).intValue()).getCivName(), Game.getCiv(ResourcesManager.worldResources_LargestProducer.get(((Integer) arrayList2.get(i14)).intValue()).intValue()).getCivName())) {
                        i = i14;
                    }
                }
            }
            int i15 = i;
            int i16 = width;
            ArrayList arrayList4 = arrayList3;
            int i17 = height;
            ArrayList arrayList5 = arrayList2;
            int i18 = i7;
            float f2 = f;
            arrayList.add(new AnonymousClass4(ResourcesManager.getResourceName(((Integer) arrayList2.get(i15)).intValue()), ((Integer) arrayList2.get(i15)).intValue(), i2, height3, i5, height2));
            int width5 = arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING + i2;
            BonusText bonusText = getBonusText(((Integer) arrayList5.get(i15)).intValue());
            arrayList.add(new TextIcon3(bonusText.bonusText, bonusText.bonusText2, bonusText.bonusIMGID, width5, height3, i18, height2));
            int width6 = width5 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            int i19 = height3;
            arrayList.add(new AnonymousClass5("" + CFG.getPrecision2(ResourcesManager.worldResources_LargestProducer_Amount.get(((Integer) arrayList5.get(i15)).intValue()).intValue() / 100.0f, 10) + " / " + CFG.getPrecision2(ResourcesManager.worldResourcesProduced.get(((Integer) arrayList5.get(i15)).intValue()).intValue() / 100.0f, 10), ((Integer) arrayList5.get(i15)).intValue(), CFG.FONT_REGULAR, -1, width6, i19, (int) (f2 * 0.25f), height2));
            int width7 = width6 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            arrayList.add(new AnonymousClass6("" + CFG.getPrecision2((float) Math.min(100.0d, Math.floor((ResourcesManager.worldResources_LargestProducer_Amount.get(((Integer) arrayList5.get(i15)).intValue()).intValue() / ResourcesManager.worldResourcesProduced.get(((Integer) arrayList5.get(i15)).intValue()).intValue()) * 100.0f)), 10) + "%", ((Integer) arrayList5.get(i15)).intValue(), CFG.FONT_BOLD, -1, width7, i19, (int) (f2 * 0.1f), height2));
            int width8 = width7 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            arrayList.add(new AnonymousClass7(ResourcesManager.worldResources_LargestProducer.get(((Integer) arrayList5.get(i15)).intValue()).intValue(), width8, height3, true));
            arrayList.add(new Text_StaticBG(Game.getCiv(ResourcesManager.worldResources_LargestProducer.get(((Integer) arrayList5.get(i15)).intValue()).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, -1, width8, ImageManager.getImage(Images.flagOverDefault).getHeight() + height3 + CFG.PADDING, ImageManager.getImage(Images.flagOverDefault).getWidth(), CFG.TEXT_HEIGHT + (CFG.PADDING * 2)));
            height3 += height2 + i3;
            arrayList5.remove(i15);
            if (sortBy == 1) {
                arrayList4.remove(i15);
            }
            arrayList2 = arrayList5;
            arrayList3 = arrayList4;
            i6 = 1;
            width = i16;
            height = i17;
            i7 = i18;
            f = f2;
            i8 = 0;
        }
        int i20 = height;
        int i21 = width;
        int size2 = arrayList.size();
        int posY = 0;
        for (int i22 = 0; i22 < size2; i22++) {
            if (posY < arrayList.get(i22).getPosY() + arrayList.get(i22).getHeight() + (CFG.PADDING * 2)) {
                posY = arrayList.get(i22).getPosY() + arrayList.get(i22).getHeight() + (CFG.PADDING * 2);
            }
        }
        int iMin = Math.min(posY, (CFG.GAME_HEIGHT - i20) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, 0, i21, Math.max(posY + CFG.PADDING, iMin)));
        initMenu(new AnonymousClass8("", Game.lang.get("Year") + ": " + Game_Calendar.currentYear, false, false, Images.title928), (CFG.GAME_WIDTH / 2) - (i21 / 2), i20, i21, iMin, arrayList, false, true);
        this.drawScrollPositionAlways = false;
    }

    public static BonusText getBonusText(int i) {
        float f = ResourcesManager.lResources.get(i).MonthlyIncome;
        String str = PZBvyl.HbJCNUCnDsZopq;
        if (f != 0.0f) {
            return new BonusText(Game.lang.get("MonthlyIncome") + str, "+" + CFG.getPrecision2(ResourcesManager.lResources.get(i).MonthlyIncome, 100), Images.gold);
        }
        if (ResourcesManager.lResources.get(i).TaxEfficiency != 0.0f) {
            return new BonusText(Game.lang.get("TaxEfficiency") + str, "+" + CFG.getPrecision2(ResourcesManager.lResources.get(i).TaxEfficiency, 100) + "%", Images.tax);
        }
        if (ResourcesManager.lResources.get(i).IncomeProduction != 0.0f) {
            return new BonusText(Game.lang.get("IncomeProduction") + str, "+" + CFG.getPrecision2(ResourcesManager.lResources.get(i).IncomeProduction, 100) + "%", Images.gold);
        }
        if (ResourcesManager.lResources.get(i).ProductionEfficiency != 0.0f) {
            return new BonusText(Game.lang.get("ProductionEfficiency") + str, "+" + CFG.getPrecision2(ResourcesManager.lResources.get(i).ProductionEfficiency, 100) + "%", Images.goods);
        }
        if (ResourcesManager.lResources.get(i).ProvinceMaintenance != 0.0f) {
            return new BonusText(Game.lang.get("ProvinceMaintenance") + str, "" + CFG.getPrecision2(ResourcesManager.lResources.get(i).ProvinceMaintenance, 100) + "%", Images.gold);
        }
        if (ResourcesManager.lResources.get(i).GrowthRate != 0.0f) {
            return new BonusText(Game.lang.get("GrowthRate") + str, "+" + CFG.getPrecision2(ResourcesManager.lResources.get(i).GrowthRate, 100) + "%", Images.populationGrowth);
        }
        if (ResourcesManager.lResources.get(i).MonthlyLegacy != 0.0f) {
            return new BonusText(Game.lang.get("MonthlyLegacy") + str, "+" + CFG.getPrecision2(ResourcesManager.lResources.get(i).MonthlyLegacy, 100), Images.legacy);
        }
        if (ResourcesManager.lResources.get(i).MaxManpower != 0.0f) {
            return new BonusText(Game.lang.get("MaximumManpower") + str, "+" + ((int) ResourcesManager.lResources.get(i).MaxManpower), Game_Calendar.IMG_MANPOWER_UP);
        }
        if (ResourcesManager.lResources.get(i).ManpowerRecoverySpeed != 0.0f) {
            return new BonusText(Game.lang.get("ManpowerRecoverySpeed") + str, (ResourcesManager.lResources.get(i).ManpowerRecoverySpeed <= 0.0f ? "" : "+") + CFG.getPrecision2(ResourcesManager.lResources.get(i).ManpowerRecoverySpeed * 100.0f, 100) + "%", Game_Calendar.IMG_MANPOWER_TIME);
        }
        if (ResourcesManager.lResources.get(i).ArmyMaintenance != 0.0f) {
            return new BonusText(Game.lang.get("ArmyMaintenance") + str, "" + CFG.getPrecision2(ResourcesManager.lResources.get(i).ArmyMaintenance, 100) + "%", Images.armyMaintenance);
        }
        if (ResourcesManager.lResources.get(i).RecruitmentTime != 0.0f) {
            return new BonusText(Game.lang.get("RecruitmentTime") + str, "" + CFG.getPrecision2(ResourcesManager.lResources.get(i).RecruitmentTime, 100) + "%", Game_Calendar.IMG_MANPOWER_TIME);
        }
        if (ResourcesManager.lResources.get(i).RecruitArmyCost != 0.0f) {
            return new BonusText(Game.lang.get("ArmyRecruitmentCost") + str, "" + CFG.getPrecision2(ResourcesManager.lResources.get(i).RecruitArmyCost, 100) + "%", Images.gold);
        }
        if (ResourcesManager.lResources.get(i).RecruitArmyFirstLineCost != 0.0f) {
            return new BonusText(Game.lang.get("FirstLineArmyRecruitmentCost") + str, "" + CFG.getPrecision2(ResourcesManager.lResources.get(i).RecruitArmyFirstLineCost, 100) + "%", Images.gold);
        }
        if (ResourcesManager.lResources.get(i).RecruitArmySecondLineCost != 0.0f) {
            return new BonusText(Game.lang.get("SecondLineArmyRecruitmentCost") + str, "" + CFG.getPrecision2(ResourcesManager.lResources.get(i).RecruitArmySecondLineCost, 100) + "%", Images.gold);
        }
        if (ResourcesManager.lResources.get(i).ResearchPoints != 0.0f) {
            return new BonusText(Game.lang.get("ResearchPerMonth") + str, "+" + CFG.getPrecision2(ResourcesManager.lResources.get(i).ResearchPoints, 100), Game_Calendar.IMG_TECHNOLOGY);
        }
        if (ResourcesManager.lResources.get(i).TechnologyCost != 0.0f) {
            return new BonusText(Game.lang.get(gpVDKipRURuzw.OSpDusJR) + str, "" + CFG.getPrecision2(ResourcesManager.lResources.get(i).TechnologyCost, 100) + "%", Game_Calendar.IMG_TECHNOLOGY);
        }
        if (ResourcesManager.lResources.get(i).ConstructionCost != 0.0f) {
            return new BonusText(Game.lang.get("ConstructionCost") + str, "" + CFG.getPrecision2(ResourcesManager.lResources.get(i).ConstructionCost * 100.0f, 100) + "%", Images.construction);
        }
        if (ResourcesManager.lResources.get(i).AdministrationBuildingsCost != 0.0f) {
            return new BonusText(Game.lang.get("AdministrationBuildingsCost") + str, "" + CFG.getPrecision2(ResourcesManager.lResources.get(i).AdministrationBuildingsCost * 100.0f, 100) + "%", Images.construction);
        }
        if (ResourcesManager.lResources.get(i).MilitaryBuildingsCost != 0.0f) {
            return new BonusText(Game.lang.get("MilitaryBuildingsCost") + str, "" + CFG.getPrecision2(ResourcesManager.lResources.get(i).MilitaryBuildingsCost * 100.0f, 100) + "%", Images.construction);
        }
        if (ResourcesManager.lResources.get(i).EconomyBuildingsCost != 0.0f) {
            return new BonusText(Game.lang.get("EconomyBuildingsCost") + str, "" + CFG.getPrecision2(ResourcesManager.lResources.get(i).EconomyBuildingsCost * 100.0f, 100) + "%", Images.construction);
        }
        if (ResourcesManager.lResources.get(i).ConstructionTime != 0.0f) {
            return new BonusText(Game.lang.get("ConstructionTime") + str, "" + CFG.getPrecision2(ResourcesManager.lResources.get(i).ConstructionTime * 100.0f, 100) + "%", Images.buildTime);
        }
        if (ResourcesManager.lResources.get(i).InvestInEconomyCost != 0.0f) {
            return new BonusText(Game.lang.get("InvestInEconomyCost") + str, "" + CFG.getPrecision2(ResourcesManager.lResources.get(i).InvestInEconomyCost * 100.0f, 100) + "%", Game_Calendar.IMG_ECONOMY_UP);
        }
        if (ResourcesManager.lResources.get(i).IncreaseManpowerCost != 0.0f) {
            return new BonusText(Game.lang.get("IncreaseManpowerCost") + str, "" + CFG.getPrecision2(ResourcesManager.lResources.get(i).IncreaseManpowerCost, 100) + "%", Game_Calendar.IMG_MANPOWER_UP);
        }
        if (ResourcesManager.lResources.get(i).GeneralAttack != 0) {
            return new BonusText(Game.lang.get("GeneralsAttack") + str, "+" + ResourcesManager.lResources.get(i).GeneralAttack, Images.attack);
        }
        if (ResourcesManager.lResources.get(i).GeneralDefense != 0) {
            return new BonusText(Game.lang.get("GeneralsDefense") + str, "+" + ResourcesManager.lResources.get(i).GeneralDefense, Images.defense);
        }
        if (ResourcesManager.lResources.get(i).UnitsAttack != 0) {
            return new BonusText(Game.lang.get("UnitsAttack") + str, "+" + ResourcesManager.lResources.get(i).UnitsAttack, Images.attack);
        }
        if (ResourcesManager.lResources.get(i).UnitsDefense != 0) {
            return new BonusText(Game.lang.get("UnitsDefense") + str, "+" + ResourcesManager.lResources.get(i).UnitsDefense, Images.defense);
        }
        if (ResourcesManager.lResources.get(i).MaxMorale != 0.0f) {
            return new BonusText(Game.lang.get("Morale") + str, "+" + CFG.getPrecision2(ResourcesManager.lResources.get(i).MaxMorale * 100.0f, 100) + "%", Images.morale);
        }
        if (ResourcesManager.lResources.get(i).ArmyMovementSpeed != 0.0f) {
            return new BonusText(Game.lang.get("ArmyMovementSpeed") + str, "+" + CFG.getPrecision2(ResourcesManager.lResources.get(i).ArmyMovementSpeed, 100) + "%", Images.movementSpeed);
        }
        if (ResourcesManager.lResources.get(i).SiegeEffectiveness != 0.0f) {
            return new BonusText(Game.lang.get("SiegeEffectiveness") + str, "+" + CFG.getPrecision2(ResourcesManager.lResources.get(i).SiegeEffectiveness * 100.0f, 100) + "%", Images.siege);
        }
        if (ResourcesManager.lResources.get(i).ImproveRelationsModifier != 0.0f) {
            return new BonusText(Game.lang.get("ImproveRelationsModifier") + str, "+" + CFG.getPrecision2(ResourcesManager.lResources.get(i).ImproveRelationsModifier, 100) + "%", Images.relations);
        }
        if (ResourcesManager.lResources.get(i).IncomeFromVassals != 0.0f) {
            return new BonusText(Game.lang.get("IncomeFromVassals") + str, "+" + CFG.getPrecision2(ResourcesManager.lResources.get(i).IncomeFromVassals * 100.0f, 100) + "%", Images.vassal);
        }
        if (ResourcesManager.lResources.get(i).LoanInterest != 0.0f) {
            return new BonusText(Game.lang.get("LoanInterest") + str, "" + CFG.getPrecision2(ResourcesManager.lResources.get(i).LoanInterest, 100) + "%", Images.loan);
        }
        if (ResourcesManager.lResources.get(i).AggressiveExpansion != 0.0f) {
            return new BonusText(Game.lang.get("AggressiveExpansion") + str, "" + CFG.getPrecision2(ResourcesManager.lResources.get(i).AggressiveExpansion, 100) + "%", Images.war);
        }
        if (ResourcesManager.lResources.get(i).RevolutionaryRisk != 0.0f) {
            return new BonusText(Game.lang.get("RevolutionaryRisk") + str, "" + CFG.getPrecision2(ResourcesManager.lResources.get(i).RevolutionaryRisk, 100) + "%", Images.revolutionRisk);
        }
        if (ResourcesManager.lResources.get(i).CoreCost != 0.0f) {
            return new BonusText(Game.lang.get("CoreConstruction") + str, "" + CFG.getPrecision2(ResourcesManager.lResources.get(i).CoreCost, 100) + "%", Images.core);
        }
        if (ResourcesManager.lResources.get(i).RegimentsLimit != 0) {
            return new BonusText(Game.lang.get("RegimentsLimit") + str, "+" + CFG.getPrecision2(ResourcesManager.lResources.get(i).RegimentsLimit, 1), Images.regimentsLimit);
        }
        return ResourcesManager.lResources.get(i).BattleWidth != 0 ? new BonusText(Game.lang.get("BattleWidth") + str, "+" + CFG.getPrecision2(ResourcesManager.lResources.get(i).BattleWidth, 1), Images.battleWidth) : new BonusText(Game.lang.get("None"), "", Images.x);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void actionCloseMenu() {
        super.actionCloseMenu();
        Game.menuManager.setVisibleInGame_Goods(false);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        float f = lTime + 60 >= CFG.currentTimeMillis ? (CFG.currentTimeMillis - lTime) / 60.0f : 1.0f;
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG.r, Colors.COLOR_GRADIENT_BG.g, Colors.COLOR_GRADIENT_BG.b, 0.2f * f));
        Images.pix.draw2(spriteBatch, i, i2, CFG.GAME_WIDTH, CFG.GAME_HEIGHT);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG.r, Colors.COLOR_GRADIENT_BG.g, Colors.COLOR_GRADIENT_BG.b, f * 0.65f));
        Images.gradientFull.draw(spriteBatch, i, i2, CFG.GAME_WIDTH, CFG.GAME_HEIGHT);
        spriteBatch.setColor(Color.WHITE);
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i2 - CFG.BUTTON_HEIGHT) + ((int) (((CFG.BUTTON_HEIGHT * 4) / 5) * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i2;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i3, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i, getPosY() + i3, getWidth(), CFG.PADDING + getHeight(), false, Images.insideTop928, Images.insideBot928);
        spriteBatch.setColor(Colors.COLOR_GRADIENT);
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i3, getWidth(), getHeight(), false, true);
        spriteBatch.setColor(Color.WHITE);
        super.draw(spriteBatch, i, i3, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void onHovered() {
        super.onHovered();
        Game.menuManager.setOrderOfMenu_InGameGoods();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        long j = CFG.currentTimeMillis;
        lTime = j;
        lTime2 = j;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void updateLanguage() {
        super.updateLanguage();
        getTitle().setText(Game.lang.get("LargestGoodsProducers"));
    }
}
