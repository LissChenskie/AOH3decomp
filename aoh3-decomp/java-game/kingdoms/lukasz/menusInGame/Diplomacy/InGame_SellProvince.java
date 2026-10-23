package aoc.kingdoms.lukasz.menusInGame.Diplomacy;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.technology.Bhs.fiRhHJntP;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Formable;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Value;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Clear;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_Flag;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_SpecialEmpty;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_RulerTitle;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2Center;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_SellProvince extends Menu {
    public static final int ANIMATION_TIME = 60;
    public static long lTime;
    public static int sellToCivID;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_SellProvince$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonFlag {
        AnonymousClass1(int i, int i2, int i3, boolean z) {
            super(i, i2, i3, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag
        public int getFlagCivID() {
            return InGame_SellProvince.sellToCivID;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_SellProvince$2, reason: invalid class name */
    class AnonymousClass2 extends Text_StaticBG_RulerTitle {
        AnonymousClass2(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_SellProvince$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass3(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.HOVER_GOLD;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public String getText2() {
            return "" + Game.getCiv(InGame_SellProvince.sellToCivID).getNumOfProvinces();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_SellProvince$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonGame {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_PopUp(false);
            Game.menuManager.rebuildInGame_Civ(true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_SellProvince$5, reason: invalid class name */
    class AnonymousClass5 extends Text_StaticBG_ID_Flag {
        boolean confirm;

        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, i7, z);
            this.confirm = false;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (!this.confirm) {
                this.confirm = true;
                setText(Game.lang.get("Confirm") + ": " + getText());
            } else if (InGame_SellProvince.getSellProvince(getCurrent())) {
                InGame_Info.iCivID = Game.player.iCivID;
                InGame_Info.iCivID2 = InGame_SellProvince.sellToCivID;
                Game.menuManager.rebuildInGame_Info(Game.lang.get("ProvinceSold"), Game.getProvince(getCurrent()).getProvinceName());
                InGame_Info.imgID = Images.infoCrown;
                setText(Game.lang.get("ProvinceSold") + ": " + Game.getProvince(getCurrent()).getProvinceName());
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_Flag, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            this.confirm = false;
            setText(Game.getProvince(getCurrent()).getProvinceName());
            Game.mapCoords.centerToProvinceID(getCurrent());
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("SellProvince") + ": ", CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.getProvince(getCurrent()).getProvinceName(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", CFG.getNumberWithSpaces("" + Game.getProvince(getCurrent()).getPopulationTotal()), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Economy") + ": ", CFG.getPrecision2(Game.getProvince(getCurrent()).getEconomyWithBonuses(), 10), Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Gold") + ": ", CFG.getPrecision2(InGame_SellProvince.getSellProvince_Gold(getCurrent()), 10), Images.victoryPoints, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
        protected Color getColor(boolean z) {
            return (!this.confirm || Game.getProvince(getCurrent()).getCivID() == InGame_SellProvince.sellToCivID) ? super.getColor(z) : Colors.getColorNegative(z, getIsHovered());
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_Flag
        public int getFlagID() {
            return Game.getProvince(getCurrent()).peaceTreatyIsTaken ? Game.player.iCivID : super.getFlagID();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_SellProvince$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonStatsRectIMG_Active_Value {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.getProvince(getCurrent()).getProvinceName(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(fiRhHJntP.LATNUldZASykqGs) + ": ", CFG.getNumberWithSpaces("" + Game.getProvince(getCurrent()).getPopulationTotal()), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Economy") + ": ", CFG.getPrecision2(Game.getProvince(getCurrent()).getEconomyWithBonuses(), 10), Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Gold") + ": ", CFG.getPrecision2(InGame_SellProvince.getSellProvince_Gold(getCurrent()), 10), Images.victoryPoints, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_SellProvince$7, reason: invalid class name */
    class AnonymousClass7 extends MenuTitleIMG {
        AnonymousClass7(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_SellProvince.lTime;
        }
    }

    public InGame_SellProvince(int i) {
        int i2;
        int i3;
        ArrayList arrayList = new ArrayList();
        int i4 = CFG.PADDING + Images.boxTitleBORDERWIDTH;
        int i5 = Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2);
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title1Red).getHeight();
        int i6 = CFG.PADDING;
        int i7 = CFG.PADDING;
        sellToCivID = i;
        int width2 = ImageManager.getImage(Images.gold).getWidth();
        int i8 = i7 + CFG.PADDING;
        arrayList.add(new AnonymousClass1(sellToCivID, i5, i8, true));
        int width3 = arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING + i5;
        int buttonHeight = (ButtonFlag_Formable.getButtonHeight() - CFG.PADDING) / 2;
        int i9 = (width - width3) - i5;
        arrayList.add(new AnonymousClass2(Game.getCiv(sellToCivID).getCivName(), width3, i8, i9, buttonHeight));
        arrayList.add(new AnonymousClass3(Game.lang.get("Provinces") + ": ", "" + Game.getCiv(sellToCivID).getNumOfProvinces(), Images.provinces, width3, i8 + buttonHeight + CFG.PADDING, i9, buttonHeight, width2));
        int buttonHeight2 = i8 + ButtonFlag_Formable.getButtonHeight() + CFG.PADDING;
        int i10 = width - (i4 * 2);
        arrayList.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(i4, buttonHeight2 - (ButtonFlag_Formable.getButtonHeight() + (CFG.PADDING * 2)), i10, ButtonFlag_Formable.getButtonHeight() + (CFG.PADDING * 2)));
        int i11 = buttonHeight2 + CFG.PADDING;
        arrayList.add(new AnonymousClass4(Game.lang.get("Close"), CFG.FONT_REGULAR, -1, i4, i11, i10, true));
        int height2 = i11 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        ArrayList arrayList2 = new ArrayList();
        for (int i12 = 0; i12 < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i12++) {
            if (Game.getCiv(Game.player.iCivID).getProvinceID(i12) != Game.getCiv(Game.player.iCivID).getCapitalProvinceID()) {
                arrayList2.add(Integer.valueOf(Game.getCiv(Game.player.iCivID).getProvinceID(i12)));
            }
        }
        int i13 = (int) ((width - Images.boxTitleBORDERWIDTH) * 0.25f);
        int i14 = (int) ((i10 - CFG.PADDING) * 0.75f);
        int i15 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
        arrayList.add(new Text_Title_v2Center(Game.lang.get("Provinces"), -1, Images.boxTitleBORDERWIDTH, height2, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        if (arrayList2.isEmpty()) {
            i2 = height;
            i3 = width;
            arrayList.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i4, height3, i10, CFG.BUTTON_HEIGHT4));
            height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        } else {
            while (arrayList2.size() > 0) {
                int size = arrayList2.size();
                int i16 = 0;
                for (int i17 = 1; i17 < size; i17++) {
                    if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList2.get(i16)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList2.get(i17)).intValue()).getProvinceName())) {
                        i16 = i17;
                    }
                }
                int i18 = i13;
                int i19 = height;
                int i20 = i16;
                arrayList.add(new AnonymousClass5(Game.getProvince(((Integer) arrayList2.get(i16)).intValue()).getProvinceName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i4, height3, i14, i15, ((Integer) arrayList2.get(i16)).intValue(), false));
                arrayList.add(new AnonymousClass6("" + CFG.getPrecision2(getSellProvince_Gold(((Integer) arrayList2.get(i20)).intValue()), 100), Images.gold, i4 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height3, i18, i15, ImageManager.getImage(Images.gold).getWidth(), ((Integer) arrayList2.get(i20)).intValue()));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                arrayList2.remove(i20);
                width = width;
                i13 = i18;
                height = i19;
            }
            i2 = height;
            i3 = width;
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            height3 = Math.max(height3, arrayList.get(size2).getPosY() + arrayList.get(size2).getHeight() + CFG.PADDING);
        }
        int iMin = Math.min(height3, (CFG.GAME_HEIGHT - i2) - (CFG.PADDING * 3));
        int i21 = i3;
        arrayList.add(new Empty(0, 0, i21, Math.max(height3, height3)));
        initMenu(new AnonymousClass7(Game.lang.get("SellProvince"), true, false, Images.title500), otherMenuPosX_2, i2, i21, iMin, arrayList, false, true);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0056 A[Catch: Exception -> 0x005f, TRY_LEAVE, TryCatch #0 {Exception -> 0x005f, blocks: (B:9:0x0028, B:11:0x0034, B:13:0x0040, B:15:0x0056), top: B:20:0x0028 }] */
    public static boolean getSellProvince(int i) {
        if (Game.player.iCivID != Game.getProvince(i).getCivID()) {
            return false;
        }
        boolean z = Game.getCiv(sellToCivID).getNumOfProvinces() == 0;
        Game.getProvince(i).setCivID(sellToCivID);
        if (z) {
            Game.getCiv(sellToCivID).moveCapital_ToLargestProvince();
        } else {
            try {
                if (Game.getCiv(sellToCivID).getCapitalProvinceID() == i || Game.getCiv(sellToCivID).getCapitalProvinceID() < 0 || Game.getProvince(Game.getCiv(sellToCivID).getCapitalProvinceID()).getCivID() != sellToCivID) {
                    Game.getCiv(sellToCivID).moveCapital_ToLargestProvince();
                }
            } catch (Exception unused) {
            }
        }
        Game.getCiv(Game.player.iCivID).fGold += getSellProvince_Gold(i);
        return true;
    }

    public static float getSellProvince_Gold(int i) {
        return Game.getProvince(i).fProvinceValue * GameValues.diplomacy.SELL_PROVINCE_GOLD_PER_PROVINCE_VALUE;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        DiplomacyManager.updateInAnimation();
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop500, Images.insideBot500);
        ImageManager.getImage(Images.rulerOver).draw2(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.rulerOver).getHeight()));
        super.draw(spriteBatch, i3, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
        DiplomacyManager.updateAnimationTime();
    }
}
