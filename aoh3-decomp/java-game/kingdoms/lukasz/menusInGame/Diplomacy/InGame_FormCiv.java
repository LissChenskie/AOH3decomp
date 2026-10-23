package aoc.kingdoms.lukasz.menusInGame.Diplomacy;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.map.FormableCivManager;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Formable;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame_ImageSparks;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagCiv_Title;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_SpecialEmpty;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_RulerTitle;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_TitleSpecial_ID;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_FormCiv extends Menu {
    public static final int ANIMATION_TIME = 60;
    public static boolean GO_BACK_TO_COURT = true;
    public static int formCivID;
    public static long lTime;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_FormCiv$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonFlag_Formable {
        AnonymousClass1(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_FormCiv$10, reason: invalid class name */
    class AnonymousClass10 extends MenuTitleIMG {
        AnonymousClass10(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_FormCiv.lTime;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_FormCiv$2, reason: invalid class name */
    class AnonymousClass2 extends Text_StaticBG_RulerTitle {
        AnonymousClass2(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_FormCiv$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass3(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ControlsProvinces") + ": ", this.sText2, this.imageID, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.HOVER_GOLD;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_FormCiv$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass4(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.COLOR_POPULATION;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_FormCiv$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass5(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.COLOR_TEXT_ECONOMY;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_FormCiv$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonGame {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_PopUp(false);
            if (InGame_FormCiv.GO_BACK_TO_COURT) {
                if (Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_DEFAULT) {
                    Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
                }
                Game.menuManager.rebuildInGame_Government();
                Game.menuManager.setVisibleInGame_Court(true);
                return;
            }
            InGame_Civ.iRebuildToCivID = Game.player.iCivID;
            Game.menuManager.rebuildInGame_Civ(true);
            if (Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_DIPLOMACY) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DIPLOMACY);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_FormCiv$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonGame_ImageSparks {
        AnonymousClass7(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_FormCiv.confirm();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = FormableCivManager.getHover(InGame_FormCiv.formCivID);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_FormCiv$8, reason: invalid class name */
    class AnonymousClass8 extends Text_StaticBG_TitleSpecial_ID {
        AnonymousClass8(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(getText() + ": ", CFG.getNumberWithSpaces("" + this.id), Images.provinces, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_FormCiv$9, reason: invalid class name */
    class AnonymousClass9 extends ButtonFlag_Diplomacy {
        AnonymousClass9(int i, int i2, int i3, boolean z) {
            super(i, i2, i3, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(this.iCivID).getCapitalProvinceID() < 0 || Game.getProvince(Game.getCiv(this.iCivID).getCapitalProvinceID()).getCivID() != this.iCivID) {
                return;
            }
            Game.mapCoords.centerToProvinceID(Game.getCiv(this.iCivID).getCapitalProvinceID());
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(this.iCivID, Game.getCiv(this.iCivID).iCivRankPosition >= 0 ? Game.lang.get("Ranking") + ": " + Game.getCiv(this.iCivID).iCivRankPosition : Game.getProvince(Game.getCiv(this.iCivID).getCapitalProvinceID()).getProvinceName()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            int i = 0;
            for (int i2 = 0; i2 < Game.player.formableCivs.get(InGame_FormCiv.formCivID).getProvincesSize(); i2++) {
                if (Game.getProvince(Game.player.formableCivs.get(InGame_FormCiv.formCivID).Provinces.get(i2).intValue()).getCivID() == this.iCivID) {
                    i++;
                }
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Provinces") + ": ", CFG.getNumberWithSpaces("" + i), Images.provinces, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    public InGame_FormCiv(int i) {
        ArrayList arrayList = new ArrayList();
        int i2 = CFG.PADDING + Images.boxTitleBORDERWIDTH;
        int i3 = Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2);
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title1Red).getHeight();
        int i4 = CFG.PADDING;
        int i5 = CFG.PADDING;
        formCivID = i;
        int width2 = ImageManager.getImage(Images.gold).getWidth();
        int i6 = i5 + CFG.PADDING;
        arrayList.add(new AnonymousClass1(formCivID, i3, i6));
        int width3 = arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING + i3;
        int buttonHeight = (ButtonFlag_Formable.getButtonHeight() - CFG.PADDING) / 2;
        int i7 = (width - width3) - i3;
        arrayList.add(new AnonymousClass2(Game.lang.getCiv(Game.getCiv(Game.player.iCivID).sTagsCanForm.get(formCivID)), width3, i6, i7, buttonHeight));
        arrayList.add(new AnonymousClass3(Game.lang.get("Provinces") + ": ", Game.player.formableCivs.get(formCivID).getControlledProvinces(Game.player.iCivID) + " / " + Game.player.formableCivs.get(formCivID).getProvincesSize_WithoutNeutral(), Images.provinces, width3, i6 + buttonHeight + CFG.PADDING, i7, buttonHeight, width2));
        int buttonHeight2 = i6 + ButtonFlag_Formable.getButtonHeight() + CFG.PADDING;
        int i8 = width - (i2 * 2);
        arrayList.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(i2, buttonHeight2 - (ButtonFlag_Formable.getButtonHeight() + (CFG.PADDING * 2)), i8, ButtonFlag_Formable.getButtonHeight() + (CFG.PADDING * 2)));
        int i9 = buttonHeight2 + CFG.PADDING;
        long populationTotal = 0;
        float economyWithBonuses = 0.0f;
        for (int i10 = 0; i10 < Game.player.formableCivs.get(formCivID).getProvincesSize(); i10++) {
            if (Game.getProvince(Game.player.formableCivs.get(formCivID).Provinces.get(i10).intValue()).getCivID() > 0) {
                populationTotal += (long) Game.getProvince(Game.player.formableCivs.get(formCivID).Provinces.get(i10).intValue()).getPopulationTotal();
                economyWithBonuses += Game.getProvince(Game.player.formableCivs.get(formCivID).Provinces.get(i10).intValue()).getEconomyWithBonuses();
            }
        }
        arrayList.add(new AnonymousClass4(Game.lang.get("Population") + ": ", "" + CFG.getNumberWithSpaces("" + populationTotal), Images.population, i2, i9, i8, buttonHeight, width2));
        int height2 = i9 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass5(Game.lang.get("Economy") + ": ", "" + CFG.getNumberWithSpaces("" + CFG.getPrecision2(economyWithBonuses, 1)), Game_Calendar.IMG_ECONOMY, i2, height2, i8, buttonHeight, width2));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass6(Game.lang.get("Cancel"), CFG.FONT_REGULAR, -1, i2, height3, (i8 - ((CFG.PADDING / 2) * 2)) / 2, true));
        arrayList.add(new AnonymousClass7(Game.lang.get("FormCivilization"), CFG.FONT_REGULAR, -1, CFG.PADDING + i2 + ((i8 - ((CFG.PADDING / 2) * 2)) / 2), height3, (i8 - ((CFG.PADDING / 2) * 2)) / 2, FormableCivManager.canFormACiv(Game.player.iCivID, Game.player.formableCivs.get(formCivID).FormableCivTag), Images.v));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        ArrayList arrayList2 = new ArrayList();
        for (int i11 = 0; i11 < Game.player.formableCivs.get(formCivID).getProvincesSize(); i11++) {
            if (Game.getProvince(Game.player.formableCivs.get(formCivID).Provinces.get(i11).intValue()).getCivID() > 0 && !arrayList2.contains(Integer.valueOf(Game.getProvince(Game.player.formableCivs.get(formCivID).Provinces.get(i11).intValue()).getCivID()))) {
                arrayList2.add(Integer.valueOf(Game.getProvince(Game.player.formableCivs.get(formCivID).Provinces.get(i11).intValue()).getCivID()));
            }
        }
        if (!arrayList2.isEmpty()) {
            int i12 = CFG.PADDING + height4;
            arrayList.add(new AnonymousClass8(Game.lang.get("Civilizations"), CFG.FONT_REGULAR, -1, i2, i12, i8, CFG.BUTTON_HEIGHT3 - (CFG.PADDING * 2), arrayList2.size()));
            int height5 = i12 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int width4 = i2;
            for (int i13 = 0; i13 < arrayList2.size(); i13++) {
                if (ButtonFlag_Diplomacy.getButtonWidth() + width4 > width - i2) {
                    height5 += ButtonFlag_Diplomacy.getButtonHeight() + CFG.PADDING;
                    width4 = i2;
                }
                if (Game.getCiv(((Integer) arrayList2.get(i13)).intValue()).getNumOfProvinces() > 0) {
                    arrayList.add(new AnonymousClass9(((Integer) arrayList2.get(i13)).intValue(), width4, height5, true));
                    width4 += arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                }
            }
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                height5 = Math.max(height5, arrayList.get(size).getPosY() + arrayList.get(size).getHeight() + CFG.PADDING);
            }
            arrayList.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(i3, height4, width - (i3 * 2), height5 - height4));
            height4 = height5 + CFG.PADDING;
        }
        int iMin = Math.min(height4, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, 0, width, Math.max(height4, height4)));
        initMenu(new AnonymousClass10(Game.lang.get("FormCivilization"), true, false, Images.title500), otherMenuPosX_2, height, width, iMin, arrayList, false, true);
    }

    public static void confirm() {
        if (FormableCivManager.canFormACiv(Game.player.iCivID, Game.player.formableCivs.get(formCivID).FormableCivTag) && FormableCivManager.formCiv(Game.player.iCivID, Game.player.formableCivs.get(formCivID).FormableCivTag)) {
            Game.soundsManager.playSound(SoundsManager.SOUND_FORMABLE);
            Game.menuManager.addToastPositive(Game.lang.get("Civilization") + ": ", Game.getCiv(Game.player.iCivID).getCivName(), Images.v);
        }
        Game.menuManager.setVisibleInGame_PopUp(false);
        if (Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_DEFAULT) {
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
        }
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
