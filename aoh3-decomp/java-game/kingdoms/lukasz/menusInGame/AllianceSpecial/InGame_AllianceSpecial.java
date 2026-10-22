package aoc.kingdoms.lukasz.menusInGame.AllianceSpecial;

import androidx.arch.core.ht.qIuEvFbUtcea;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.RulersManager;
import aoc.kingdoms.lukasz.map.allianceHRE.HREManager;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRanking;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlagRect;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_AllianceSpecial;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame_Image;
import aoc.kingdoms.lukasz.menu_element.button.ButtonRuler_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Rank;
import aoc.kingdoms.lukasz.menu_element.button.Button_HRE_Reform;
import aoc.kingdoms.lukasz.menu_element.button.Button_HRE_Reform_Green;
import aoc.kingdoms.lukasz.menu_element.button.Button_HRE_Reform_Red;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagCiv_Title;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagCiv_Title_AllianceSpecial;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Horizontal;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_SpecialEmperor;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_SpecialEmpty;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_Special;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_TitleSpecial_ID;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2_TextLR;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.InGame_CivBonuses;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_AllianceSpecial extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int allianceID = 0;
    public static long lTime = 0;
    public static long lTime2 = 0;
    public static boolean showFirstTier = true;
    public static boolean showSecondTier;
    public boolean leaveAllianceConfirm = false;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AllianceSpecial.InGame_AllianceSpecial$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonRuler_Diplomacy {
        AnonymousClass1(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonRuler_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_PopUp(false);
            super.actionElement();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AllianceSpecial.InGame_AllianceSpecial$10, reason: invalid class name */
    class AnonymousClass10 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass10(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(Game.alliancesSpecial.get(InGame_AllianceSpecial.allianceID).iLeaderCivID, Game.lang.get(Game.alliancesSpecial.get(InGame_AllianceSpecial.allianceID).Name_Leader)));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumManpower") + ": ", "+" + CFG.getPrecision2(HREManager.getManpower_Emperor(InGame_AllianceSpecial.allianceID), 1), Game_Calendar.IMG_MANPOWER, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AllianceSpecial.InGame_AllianceSpecial$11, reason: invalid class name */
    class AnonymousClass11 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass11(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(Game.alliancesSpecial.get(InGame_AllianceSpecial.allianceID).iLeaderCivID, Game.lang.get(Game.alliancesSpecial.get(InGame_AllianceSpecial.allianceID).Name_Leader)));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(qIuEvFbUtcea.JdYaMkMQ) + ": ", "+" + CFG.getPrecision2(GameValues.hre.HRE_EMPEROR_REGIMENTS, 1), Images.regimentsLimit, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AllianceSpecial.InGame_AllianceSpecial$12, reason: invalid class name */
    class AnonymousClass12 extends TextIcon2_Horizontal {
        AnonymousClass12(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AllianceSpecial.InGame_AllianceSpecial$13, reason: invalid class name */
    class AnonymousClass13 extends Text_StaticBG_TitleSpecial_ID {
        AnonymousClass13(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_AllianceSpecial.showFirstTier = !InGame_AllianceSpecial.showFirstTier;
            Game.menuManager.rebuildInGame_AllianceSpecial_SavePos(InGame_AllianceSpecial.allianceID);
            InGame_AllianceSpecial.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(getText() + ": ", CFG.getNumberWithSpaces("" + Game.alliancesSpecial.get(InGame_AllianceSpecial.allianceID).getNumOfCivilizations_FirstTier()), InGame_AllianceSpecial.this.getCivilizationsIMG(), CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AllianceSpecial.InGame_AllianceSpecial$14, reason: invalid class name */
    class AnonymousClass14 extends ButtonFlag_Diplomacy {
        AnonymousClass14(int i, int i2, int i3, boolean z) {
            super(i, i2, i3, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (this.iCivID < 0 || this.iCivID == InGame_Civ.iActiveCivID) {
                if (Game.getCiv(this.iCivID).getCapitalProvinceID() < 0 || Game.getProvince(Game.getCiv(this.iCivID).getCapitalProvinceID()).getCivID() != this.iCivID) {
                    return;
                }
                Game.mapCoords.centerToProvinceID(Game.getCiv(this.iCivID).getCapitalProvinceID());
                Game.setActiveProvinceID(Game.getCiv(this.iCivID).getCapitalProvinceID());
                ProvinceBorderManager.action.setProvinceID(Game.getCiv(this.iCivID).getCapitalProvinceID());
                Game.menuManager.setVisibleInGame_PopUp(false);
                return;
            }
            Game.menuManager.setVisibleInGame_PopUp(false);
            InGame_Civ.iRebuildToCivID = this.iCivID;
            Game.menuManager.rebuildInGame_Civ();
            InGame_Civ.lTime = 0L;
            if (!Game.menuManager.getVisibleInGame_CivBonuses() || InGame_Civ.iActiveCivID == 0 || InGame_CivBonuses.iCivID == InGame_Civ.iActiveCivID) {
                return;
            }
            InGame_CivBonuses.iCivID = InGame_Civ.iActiveCivID;
            Game.menuManager.rebuildInGame_CivBonuses();
            Game.menuManager.setVisibleInGame_CivBonuses(true);
            InGame_CivBonuses.lTime = 0L;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AllianceSpecial.InGame_AllianceSpecial$15, reason: invalid class name */
    class AnonymousClass15 extends Text_StaticBG_TitleSpecial_ID {
        AnonymousClass15(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_AllianceSpecial.showSecondTier = !InGame_AllianceSpecial.showSecondTier;
            Game.menuManager.rebuildInGame_AllianceSpecial_SavePos(InGame_AllianceSpecial.allianceID);
            InGame_AllianceSpecial.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(getText() + ": ", CFG.getNumberWithSpaces("" + Game.alliancesSpecial.get(InGame_AllianceSpecial.allianceID).getNumOfCivilizations_SecondTier()), InGame_AllianceSpecial.this.getCivilizationsIMG(), CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AllianceSpecial.InGame_AllianceSpecial$16, reason: invalid class name */
    class AnonymousClass16 extends ButtonFlagRect {
        AnonymousClass16(int i, int i2, int i3, boolean z) {
            super(i, i2, i3, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlagRect, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (this.iCivID < 0 || this.iCivID == InGame_Civ.iActiveCivID) {
                if (Game.getCiv(this.iCivID).getCapitalProvinceID() < 0 || Game.getProvince(Game.getCiv(this.iCivID).getCapitalProvinceID()).getCivID() != this.iCivID) {
                    return;
                }
                Game.mapCoords.centerToProvinceID(Game.getCiv(this.iCivID).getCapitalProvinceID());
                Game.setActiveProvinceID(Game.getCiv(this.iCivID).getCapitalProvinceID());
                ProvinceBorderManager.action.setProvinceID(Game.getCiv(this.iCivID).getCapitalProvinceID());
                Game.menuManager.setVisibleInGame_PopUp(false);
                return;
            }
            Game.menuManager.setVisibleInGame_PopUp(false);
            InGame_Civ.iRebuildToCivID = this.iCivID;
            Game.menuManager.rebuildInGame_Civ();
            InGame_Civ.lTime = 0L;
            if (!Game.menuManager.getVisibleInGame_CivBonuses() || InGame_Civ.iActiveCivID == 0 || InGame_CivBonuses.iCivID == InGame_Civ.iActiveCivID) {
                return;
            }
            InGame_CivBonuses.iCivID = InGame_Civ.iActiveCivID;
            Game.menuManager.rebuildInGame_CivBonuses();
            Game.menuManager.setVisibleInGame_CivBonuses(true);
            InGame_CivBonuses.lTime = 0L;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AllianceSpecial.InGame_AllianceSpecial$17, reason: invalid class name */
    class AnonymousClass17 extends ButtonGame_Image {
        AnonymousClass17(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z, int i7) {
            super(str, i, i2, i3, i4, i5, i6, z, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (!InGame_AllianceSpecial.this.leaveAllianceConfirm) {
                InGame_AllianceSpecial.this.leaveAllianceConfirm = true;
                setText(Game.lang.get("Confirm") + ": " + Game.lang.get("LeaveAlliance"));
                return;
            }
            Game.alliancesSpecial.get(InGame_AllianceSpecial.allianceID).removeCiv(Game.player.iCivID);
            Game.getCiv(Game.player.iCivID).removeInAllianceSpecial(InGame_AllianceSpecial.allianceID);
            InGame_Info.iCivID = Game.player.iCivID;
            InGame_Info.iCivID2 = Game.player.iCivID;
            Game.menuManager.rebuildInGame_Info(Game.lang.get(Game.alliancesSpecial.get(InGame_AllianceSpecial.allianceID).Name_Alliance), Game.lang.get("LeaveAlliance"));
            InGame_Info.imgID = Images.infoDiplomacy;
            InGame_AllianceSpecial.this.setVisible(false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("LeaveAlliance") + ": " + Game.lang.get(Game.alliancesSpecial.get(InGame_AllianceSpecial.allianceID).Name_Alliance), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.x, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getIsHovered() {
            return super.getIsHovered() || InGame_AllianceSpecial.this.leaveAllianceConfirm;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AllianceSpecial.InGame_AllianceSpecial$18, reason: invalid class name */
    class AnonymousClass18 extends Text_Title_v2_TextLR {
        AnonymousClass18(String str, int i, int i2, int i3, int i4, int i5, String str2) {
            super(str, i, i2, i3, i4, i5, str2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get(Game.alliancesSpecial.get(InGame_AllianceSpecial.allianceID).Name_Alliance), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("CivilizationWithTheHighestRankWillWinNextElection"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AllianceSpecial.InGame_AllianceSpecial$19, reason: invalid class name */
    class AnonymousClass19 extends ButtonStatsRectIMG_Rank {
        AnonymousClass19(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AllianceSpecial.InGame_AllianceSpecial$2, reason: invalid class name */
    class AnonymousClass2 extends Text_StaticBG_ID_FlagCiv_SpecialEmperor {
        AnonymousClass2(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, str2, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.alliancesSpecial.get(InGame_AllianceSpecial.allianceID).iLeaderCivID).getCapitalProvinceID() >= 0) {
                if (Game.iActiveProvince != Game.getCiv(Game.alliancesSpecial.get(InGame_AllianceSpecial.allianceID).iLeaderCivID).getCapitalProvinceID()) {
                    Game.mapCoords.centerToProvinceID(Game.getCiv(Game.alliancesSpecial.get(InGame_AllianceSpecial.allianceID).iLeaderCivID).getCapitalProvinceID());
                    Game.setActiveProvinceID(Game.getCiv(Game.alliancesSpecial.get(InGame_AllianceSpecial.allianceID).iLeaderCivID).getCapitalProvinceID());
                    ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
                } else {
                    Game.menuManager.hideCourtCiv();
                    Game.menuManager.setVisibleInGame_Civ(false);
                    Game.setActiveProvinceID(Game.getCiv(Game.alliancesSpecial.get(InGame_AllianceSpecial.allianceID).iLeaderCivID).getCapitalProvinceID());
                    Game.menuManager.rebuildInGame_ProvinceInfo(true);
                    ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
                    Game.menuManager.setVisibleInGame_PopUp(false);
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AllianceSpecial.InGame_AllianceSpecial$20, reason: invalid class name */
    class AnonymousClass20 extends Text_StaticBG_ID_FlagCiv {
        AnonymousClass20(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(getCurrent()).getCapitalProvinceID() < 0 || Game.getProvince(Game.getCiv(getCurrent()).getCapitalProvinceID()).getCivID() != getCurrent()) {
                return;
            }
            if (Game.iActiveProvince >= 0 && Game.getProvince(Game.iActiveProvince).getCivID() == getCurrent()) {
                Game.menuManager.setVisibleInGame_PopUp(false);
                Game.menuManager.rebuildInGame_Civ();
            } else {
                Game.mapCoords.centerToProvinceID(Game.getCiv(getCurrent()).getCapitalProvinceID());
                Game.setActiveProvinceID(Game.getCiv(getCurrent()).getCapitalProvinceID());
                ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = CivilizationRanking.getHover_CivilizationRanking(getCurrent(), false, false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AllianceSpecial.InGame_AllianceSpecial$21, reason: invalid class name */
    class AnonymousClass21 extends Text_StaticBG_ID_Special {
        AnonymousClass21(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = CivilizationRanking.getHover_CivilizationRanking(getCurrent(), false, false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AllianceSpecial.InGame_AllianceSpecial$22, reason: invalid class name */
    class AnonymousClass22 extends Button_HRE_Reform {
        AnonymousClass22(String str, String str2, int i, int i2, int i3, int i4, int i5) {
            super(str, str2, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 36 && InGame_AllianceSpecialReformHRE.allianceID == InGame_AllianceSpecial.allianceID && InGame_AllianceSpecialReformHRE.reformID == getCurrent()) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_AllianceSpecialReform(InGame_AllianceSpecial.allianceID, getCurrent());
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = HREManager.getHoverReform(InGame_AllianceSpecial.allianceID, this.reformID);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AllianceSpecial.InGame_AllianceSpecial$23, reason: invalid class name */
    class AnonymousClass23 extends Button_HRE_Reform_Green {
        AnonymousClass23(String str, String str2, int i, int i2, int i3, int i4, int i5) {
            super(str, str2, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = HREManager.getHoverReform(InGame_AllianceSpecial.allianceID, this.reformID);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AllianceSpecial.InGame_AllianceSpecial$24, reason: invalid class name */
    class AnonymousClass24 extends Button_HRE_Reform_Red {
        AnonymousClass24(String str, String str2, int i, int i2, int i3, int i4, int i5) {
            super(str, str2, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 36 && InGame_AllianceSpecialReformHRE.allianceID == InGame_AllianceSpecial.allianceID && InGame_AllianceSpecialReformHRE.reformID == getCurrent()) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_AllianceSpecialReform(InGame_AllianceSpecial.allianceID, getCurrent());
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = HREManager.getHoverReform(InGame_AllianceSpecial.allianceID, this.reformID);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AllianceSpecial.InGame_AllianceSpecial$25, reason: invalid class name */
    class AnonymousClass25 extends MenuTitleIMG {
        AnonymousClass25(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_AllianceSpecial.lTime2;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AllianceSpecial.InGame_AllianceSpecial$3, reason: invalid class name */
    class AnonymousClass3 extends TextIcon2_Horizontal {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.alliancesSpecial.get(InGame_AllianceSpecial.allianceID).iLeaderCivID).getCapitalProvinceID() >= 0) {
                if (Game.iActiveProvince != Game.getCiv(Game.alliancesSpecial.get(InGame_AllianceSpecial.allianceID).iLeaderCivID).getCapitalProvinceID()) {
                    Game.mapCoords.centerToProvinceID(Game.getCiv(Game.alliancesSpecial.get(InGame_AllianceSpecial.allianceID).iLeaderCivID).getCapitalProvinceID());
                    Game.setActiveProvinceID(Game.getCiv(Game.alliancesSpecial.get(InGame_AllianceSpecial.allianceID).iLeaderCivID).getCapitalProvinceID());
                    ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
                } else {
                    Game.menuManager.hideCourtCiv();
                    Game.menuManager.setVisibleInGame_Civ(false);
                    Game.setActiveProvinceID(Game.getCiv(Game.alliancesSpecial.get(InGame_AllianceSpecial.allianceID).iLeaderCivID).getCapitalProvinceID());
                    Game.menuManager.rebuildInGame_ProvinceInfo(true);
                    ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
                    Game.menuManager.setVisibleInGame_PopUp(false);
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            if (Game.getCiv(Game.alliancesSpecial.get(InGame_AllianceSpecial.allianceID).iLeaderCivID).getCapitalProvinceID() < 0) {
                this.menuElementHover = null;
                return;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(Game.alliancesSpecial.get(InGame_AllianceSpecial.allianceID).iLeaderCivID, Game.lang.get("Capital") + ": " + Game.getProvince(Game.getCiv(Game.alliancesSpecial.get(InGame_AllianceSpecial.allianceID).iLeaderCivID).getCapitalProvinceID()).getProvinceName()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", CFG.getNumberWithSpaces("" + Game.getProvince(Game.getCiv(Game.alliancesSpecial.get(InGame_AllianceSpecial.allianceID).iLeaderCivID).getCapitalProvinceID()).getPopulationTotal()), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AllianceSpecial.InGame_AllianceSpecial$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonFlag_AllianceSpecial {
        AnonymousClass4(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AllianceSpecial.InGame_AllianceSpecial$5, reason: invalid class name */
    class AnonymousClass5 extends TextIcon2 {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title_AllianceSpecial(InGame_AllianceSpecial.allianceID, Game.lang.get("Civilizations") + ": " + Game.alliancesSpecial.get(InGame_AllianceSpecial.allianceID).getNumOfCivilizations()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Civilizations") + ": ", CFG.getNumberWithSpaces("" + Game.alliancesSpecial.get(InGame_AllianceSpecial.allianceID).getNumOfCivilizations()), InGame_AllianceSpecial.this.getCivilizationsIMG(), CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AllianceSpecial.InGame_AllianceSpecial$6, reason: invalid class name */
    class AnonymousClass6 extends TextIcon2 {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title_AllianceSpecial(InGame_AllianceSpecial.allianceID, Game.lang.get("Civilizations") + ": " + Game.alliancesSpecial.get(InGame_AllianceSpecial.allianceID).getNumOfCivilizations()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Provinces") + ": ", CFG.getNumberWithSpaces("" + Game.alliancesSpecial.get(InGame_AllianceSpecial.allianceID).getProvinces()), Images.provinces, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AllianceSpecial.InGame_AllianceSpecial$7, reason: invalid class name */
    class AnonymousClass7 extends TextIcon2 {
        AnonymousClass7(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title_AllianceSpecial(InGame_AllianceSpecial.allianceID, Game.lang.get("Civilizations") + ": " + Game.alliancesSpecial.get(InGame_AllianceSpecial.allianceID).getNumOfCivilizations()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", CFG.getNumberWithSpaces("" + Game.alliancesSpecial.get(InGame_AllianceSpecial.allianceID).getPopulation()), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2, aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return Colors.getColorPopulation(z, getIsHovered());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AllianceSpecial.InGame_AllianceSpecial$8, reason: invalid class name */
    class AnonymousClass8 extends TextIcon2 {
        AnonymousClass8(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title_AllianceSpecial(InGame_AllianceSpecial.allianceID, Game.lang.get("Civilizations") + ": " + Game.alliancesSpecial.get(InGame_AllianceSpecial.allianceID).getNumOfCivilizations()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Economy") + ": ", CFG.getNumberWithSpaces("" + Game.alliancesSpecial.get(InGame_AllianceSpecial.allianceID).getEconomy()), Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AllianceSpecial.InGame_AllianceSpecial$9, reason: invalid class name */
    class AnonymousClass9 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass9(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(Game.alliancesSpecial.get(InGame_AllianceSpecial.allianceID).iLeaderCivID, Game.lang.get(Game.alliancesSpecial.get(InGame_AllianceSpecial.allianceID).Name_Leader)));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MonthlyIncome") + ": ", "+" + CFG.getPrecision2(HREManager.getIncome_Emperor(InGame_AllianceSpecial.allianceID), 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    public InGame_AllianceSpecial(int i) {
        int i2;
        int width;
        int width2;
        allianceID = i;
        ArrayList arrayList = new ArrayList();
        int i3 = Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2);
        int i4 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
        ImageManager.getImage(Images.title500).getHeight();
        int width3 = ImageManager.getImage(Images.title500).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title1Red).getHeight();
        int i5 = CFG.PADDING;
        int buttonHeight = ButtonRuler_Diplomacy.getButtonHeight() + (CFG.PADDING * 2);
        RulersManager.loadRulerIMG_DiplomacyLeft(Game.alliancesSpecial.get(allianceID).iLeaderCivID);
        int i6 = i5 + CFG.PADDING;
        int i7 = CFG.BUTTON_HEIGHT3 - (CFG.PADDING * 2);
        arrayList.add(new AnonymousClass1(Game.alliancesSpecial.get(allianceID).iLeaderCivID, (width3 - ButtonRuler_Diplomacy.getButtonWidth()) - i3, i6));
        int i8 = width3 - (i3 * 2);
        arrayList.add(new AnonymousClass2(Game.lang.get(Game.alliancesSpecial.get(allianceID).Name_Leader) + ": ", Game.getCiv(Game.alliancesSpecial.get(allianceID).iLeaderCivID).getCivName(), CFG.FONT_REGULAR, CFG.PADDING * 2, i3, i6, (i8 - CFG.PADDING) - ButtonRuler_Diplomacy.getButtonWidth(), i7, Game.alliancesSpecial.get(allianceID).iLeaderCivID));
        int i9 = i6 + i7 + CFG.PADDING;
        int buttonWidth = (((i8 - CFG.PADDING) - ButtonRuler_Diplomacy.getButtonWidth()) - CFG.PADDING) / 2;
        String str = "";
        arrayList.add(new AnonymousClass3(Game.getCiv(Game.alliancesSpecial.get(allianceID).iLeaderCivID).getCapitalProvinceID() >= 0 ? Game.getProvince(Game.getCiv(Game.alliancesSpecial.get(allianceID).iLeaderCivID).getCapitalProvinceID()).getProvinceName() : "", Images.capital, i3, i9, buttonWidth, i7, ImageManager.getImage(Images.capital).getWidth() + (CFG.PADDING * 2)));
        arrayList.add(new AnonymousClass4(allianceID, ((buttonWidth / 2) + i3) - (ButtonFlag_AllianceSpecial.getButtonWidth() / 2), (((arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING) + i9) + (((ButtonRuler_Diplomacy.getButtonHeight() - (i7 * 2)) - (CFG.PADDING * 2)) / 2)) - (ButtonFlag_AllianceSpecial.getButtonHeight() / 2)));
        int i10 = (buttonWidth - CFG.PADDING) / 2;
        int buttonHeight2 = ((ButtonRuler_Diplomacy.getButtonHeight() - i7) - (CFG.PADDING * 2)) / 2;
        int i11 = buttonWidth + i3;
        arrayList.add(new AnonymousClass5(str + CFG.getNumberWithSpaces(str + Game.alliancesSpecial.get(allianceID).getNumOfCivilizations()), getCivilizationsIMG(), i11 + CFG.PADDING, i9, i10, buttonHeight2));
        arrayList.add(new AnonymousClass6(str + CFG.getNumberWithSpaces(str + Game.alliancesSpecial.get(allianceID).getProvinces()), Images.provinces, (CFG.PADDING * 2) + i11 + i10, i9, i10, buttonHeight2));
        int i12 = i9 + buttonHeight2 + CFG.PADDING;
        arrayList.add(new AnonymousClass7(str + CFG.getShortNumber(Game.alliancesSpecial.get(allianceID).getPopulation()), Images.population, i11 + CFG.PADDING, i12, i10, buttonHeight2));
        arrayList.add(new AnonymousClass8(str + CFG.getShortNumber(Game.alliancesSpecial.get(allianceID).getEconomy()), Game_Calendar.IMG_ECONOMY, i11 + (CFG.PADDING * 2) + i10, i12, i10, buttonHeight2));
        int i13 = i6 - CFG.PADDING;
        int i14 = width3;
        int i15 = i14 - (i4 * 2);
        arrayList.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(i4, i13, i15, buttonHeight));
        int height2 = i13 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        if (Game.alliancesSpecial.get(allianceID).typeOfAlliance == 0) {
            int width4 = ImageManager.getImage(Images.gold).getWidth();
            int i16 = (i8 - (CFG.PADDING * 2)) / 3;
            int i17 = CFG.TEXT_HEIGHT + (CFG.PADDING * 4);
            arrayList.add(new AnonymousClass9("", "+" + CFG.getPrecision2(HREManager.getIncome_Emperor(allianceID), 100), Images.gold, i3, height2, i16, i17, width4));
            arrayList.add(new AnonymousClass10("", "+" + CFG.getPrecision2(HREManager.getManpower_Emperor(allianceID), 1), Game_Calendar.IMG_MANPOWER, i3 + i16 + CFG.PADDING, height2, i16, i17, width4));
            arrayList.add(new AnonymousClass11("", "+" + CFG.getPrecision2(GameValues.hre.HRE_EMPEROR_REGIMENTS, 1), Images.regimentsLimit, (i16 * 2) + i3 + (CFG.PADDING * 2), height2, i16, i17, width4));
            height2 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        if (Game.alliancesSpecial.get(allianceID).typeOfAlliance == 1) {
            arrayList.add(new AnonymousClass12(Game.lang.get("DefensiveAlliance"), Images.defensivePact, i3, height2, i8, i7, ImageManager.getImage(Images.defensivePact).getWidth() + (CFG.PADDING * 2)));
            height2 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        int i18 = height2;
        int i19 = i18 + CFG.PADDING;
        arrayList.add(new AnonymousClass13(Game.lang.get(Game.alliancesSpecial.get(allianceID).Name_FirstTier), CFG.FONT_REGULAR, -1, i3, i19, i8, i7, allianceID));
        int height3 = i19 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        if (showFirstTier) {
            int i20 = i3;
            for (int i21 = 0; i21 < Game.alliancesSpecial.get(allianceID).firstTier.size(); i21++) {
                if (ButtonFlag_Diplomacy.getButtonWidth() + i20 > i14 - i3) {
                    height3 += ButtonFlag_Diplomacy.getButtonHeight() + CFG.PADDING;
                    width2 = i3;
                } else {
                    width2 = i20;
                }
                if (Game.getCiv(Game.alliancesSpecial.get(allianceID).firstTier.get(i21).intValue()).getNumOfProvinces() > 0) {
                    arrayList.add(new AnonymousClass14(Game.alliancesSpecial.get(allianceID).firstTier.get(i21).intValue(), width2, height3, true));
                    width2 += arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                }
                i20 = width2;
            }
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                height3 = Math.max(height3, arrayList.get(size).getPosY() + arrayList.get(size).getHeight() + CFG.PADDING);
            }
        }
        arrayList.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(i4, i18, i15, height3 - i18));
        int i22 = height3 + CFG.PADDING;
        int i23 = i22 + CFG.PADDING;
        arrayList.add(new AnonymousClass15(Game.lang.get(Game.alliancesSpecial.get(allianceID).Name_Rest), CFG.FONT_REGULAR, -1, i3, i23, i8, i7, allianceID));
        int height4 = i23 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        if (showSecondTier) {
            int i24 = i3;
            for (int i25 = 0; i25 < Game.alliancesSpecial.get(allianceID).secondTier.size(); i25++) {
                if (ButtonFlagRect.getButtonWidth() + i24 > i14 - i3) {
                    height4 += ButtonFlagRect.getButtonHeight() + (CFG.PADDING / 2);
                    width = i3;
                } else {
                    width = i24;
                }
                if (Game.getCiv(Game.alliancesSpecial.get(allianceID).secondTier.get(i25).intValue()).getNumOfProvinces() > 0) {
                    arrayList.add(new AnonymousClass16(Game.alliancesSpecial.get(allianceID).secondTier.get(i25).intValue(), width, height4, true));
                    width += arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                }
                i24 = width;
            }
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                height4 = Math.max(height4, arrayList.get(size2).getPosY() + arrayList.get(size2).getHeight() + CFG.PADDING);
            }
        }
        arrayList.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(i4, i22, i15, height4 - i22));
        int height5 = height4 + CFG.PADDING;
        if (Game.alliancesSpecial.get(allianceID).isInAlliance(Game.player.iCivID)) {
            arrayList.add(new AnonymousClass17(Game.lang.get("LeaveAlliance"), CFG.FONT_REGULAR, -1, i3, height5, i8, CFG.BUTTON_HEIGHT4, true, Images.x));
            height5 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        if (Game.alliancesSpecial.get(allianceID).typeOfAlliance == 0) {
            arrayList.add(new AnonymousClass18(Game.lang.get("NextElections"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height5, i14 - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ""));
            int height6 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(Integer.valueOf(Game.alliancesSpecial.get(allianceID).iLeaderCivID));
            for (int size3 = Game.alliancesSpecial.get(allianceID).firstTier.size() - 1; size3 >= 0; size3--) {
                if (!arrayList2.contains(Game.alliancesSpecial.get(allianceID).firstTier.get(size3)) && Game.getCiv(Game.alliancesSpecial.get(allianceID).firstTier.get(size3).intValue()).getNumOfProvinces() > 0 && Game.getCiv(Game.alliancesSpecial.get(allianceID).firstTier.get(size3).intValue()).iCivRankPosition >= 0) {
                    arrayList2.add(Game.alliancesSpecial.get(allianceID).firstTier.get(size3));
                }
            }
            for (int size4 = Game.alliancesSpecial.get(allianceID).secondTier.size() - 1; size4 >= 0; size4--) {
                if (!arrayList2.contains(Game.alliancesSpecial.get(allianceID).secondTier.get(size4)) && Game.getCiv(Game.alliancesSpecial.get(allianceID).secondTier.get(size4).intValue()).getNumOfProvinces() > 0 && Game.getCiv(Game.alliancesSpecial.get(allianceID).secondTier.get(size4).intValue()).iCivRankPosition >= 0) {
                    arrayList2.add(Game.alliancesSpecial.get(allianceID).secondTier.get(size4));
                }
            }
            int i26 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
            int i27 = (int) ((i8 - (CFG.PADDING * 2)) * 0.2f);
            int i28 = (int) ((i8 - (CFG.PADDING * 2)) * 0.6f);
            int i29 = (int) ((i8 - (CFG.PADDING * 2)) * 0.2f);
            int i30 = 0;
            while (i30 < GameValues.hre.HRE_VIEW_ELECTIONS_TOP_CIVS && i30 < arrayList2.size()) {
                int i31 = 0;
                for (int size5 = arrayList2.size() - 1; size5 > 0; size5--) {
                    if (Game.getCiv(((Integer) arrayList2.get(size5)).intValue()).iCivRankPosition < Game.getCiv(((Integer) arrayList2.get(i31)).intValue()).iCivRankPosition) {
                        i31 = size5;
                    }
                }
                String str2 = str;
                ArrayList arrayList3 = arrayList2;
                int i32 = i31;
                int i33 = i28;
                arrayList.add(new AnonymousClass19(str2 + Game.getCiv(((Integer) arrayList2.get(i31)).intValue()).iCivRankPosition, CivilizationRanking.getCivilizationRanking_IMG_STAR_CIVID(((Integer) arrayList2.get(i31)).intValue()), i3, height6, i27, i26, ImageManager.getImage(Images.rankGold).getWidth()));
                int width5 = i3 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                String str3 = str2 + Game.getCiv(((Integer) arrayList3.get(i32)).intValue()).getCivName();
                int i34 = CFG.FONT_REGULAR_SMALL;
                int i35 = CFG.PADDING * 2;
                int iIntValue = ((Integer) arrayList3.get(i32)).intValue();
                int i36 = height6;
                arrayList.add(new AnonymousClass20(str3, i34, i35, width5, height6, i33, i26, iIntValue));
                i29 = i29;
                arrayList.add(new AnonymousClass21(str2 + CFG.getPrecision2(Game.getCiv(((Integer) arrayList3.get(i32)).intValue()).iCivRankScore, 1), CFG.FONT_REGULAR_SMALL, -1, width5 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, i36, i29, i26, ((Integer) arrayList3.get(i32)).intValue()));
                int height7 = i36 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                arrayList3.remove(i32);
                i30++;
                arrayList2 = arrayList3;
                i3 = i3;
                i28 = i33;
                i27 = i27;
                height6 = height7;
                i14 = i14;
                str = str2;
            }
            int i37 = height6;
            i2 = i14;
            int i38 = i3;
            arrayList2.clear();
            arrayList.add(new Text_Title_v2_TextLR(Game.lang.get("Reforms"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, i37, i2 - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), Game.alliancesSpecial.get(allianceID).iReformsPassed + " / " + HREManager.numOfReforms));
            height5 = i37 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            for (int i39 = 0; i39 < HREManager.numOfReforms; i39++) {
                if (i39 == Game.alliancesSpecial.get(allianceID).iReformsPassed) {
                    arrayList.add(new AnonymousClass22(Game.lang.get("Reform" + i39), Game.lang.get("Reform" + i39 + ".d"), i38 + CFG.PADDING, height5, i8 - (CFG.PADDING * 2), i39, i39));
                } else if (i39 < Game.alliancesSpecial.get(allianceID).iReformsPassed) {
                    arrayList.add(new AnonymousClass23(Game.lang.get("Reform" + i39), Game.lang.get("Reform" + i39 + ".d"), i38 + CFG.PADDING, height5, i8 - (CFG.PADDING * 2), i39, i39));
                } else {
                    arrayList.add(new AnonymousClass24(Game.lang.get("Reform" + i39), Game.lang.get("Reform" + i39 + ".d"), i38 + CFG.PADDING, height5, i8 - (CFG.PADDING * 2), i39, i39));
                }
                height5 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
        } else {
            i2 = i14;
        }
        int iMin = Math.min(height5, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 3));
        int i40 = i2;
        arrayList.add(new Empty(0, 0, i40, Math.max(height5, iMin)));
        initMenu(new AnonymousClass25(Game.lang.get(Game.alliancesSpecial.get(allianceID).Name_Alliance), true, false, Images.title500), otherMenuPosX_2, height, i40, iMin, arrayList, true, true);
        this.drawScrollPositionAlways = false;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i2 - CFG.BUTTON_HEIGHT) + ((int) (CFG.BUTTON_HEIGHT * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i2;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i3, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i, getPosY() + i3, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop500, Images.insideBot500);
        ImageManager.getImage(Images.rulerOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.rulerOver).getWidth() / 2)) + i, getPosY() + i3, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.rulerOver).getHeight()));
        super.draw(spriteBatch, i, i3, z, status);
    }

    public int getCivilizationsIMG() {
        return Game.alliancesSpecial.get(allianceID).typeOfAlliance == 0 ? Images.hre : Images.council;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        long j = CFG.currentTimeMillis;
        lTime = j;
        lTime2 = j;
    }
}
