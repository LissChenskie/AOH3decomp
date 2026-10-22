package aoc.kingdoms.lukasz.menusInGame;

import aoc.kingdoms.lukasz.jakowski.AI.Values.nvwi.cIUGJCqyPXfp;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Ages;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.jakowski.Touch;
import aoc.kingdoms.lukasz.map.allianceHRE.HREManager;
import aoc.kingdoms.lukasz.map.allianceHRE.JgPF.HTGgowNjn;
import aoc.kingdoms.lukasz.map.army.ArmyDivision;
import aoc.kingdoms.lukasz.map.civilization.Civilization;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRanking;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.technology.Bhs.fiRhHJntP;
import aoc.kingdoms.lukasz.map.technology.TechnologyTree;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.HoverManager;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.Minimap;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.Button32Padd;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_CurrentSituation;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Rank;
import aoc.kingdoms.lukasz.menu_element.button.ButtonTopDate;
import aoc.kingdoms.lukasz.menu_element.button.ButtonTopFlag;
import aoc.kingdoms.lukasz.menu_element.button.ButtonTopOutliner;
import aoc.kingdoms.lukasz.menu_element.button.ButtonTopSpeed;
import aoc.kingdoms.lukasz.menu_element.graph.Graph;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus_Perc;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Empty;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagCiv_Title;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Graph;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Space;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Clear;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextTop_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextTop_Gold;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextTop_Legacy;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextTop_Manpower;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextTop_Nukes;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextTop_Technology;
import aoc.kingdoms.lukasz.menus.MainMenu;
import aoc.kingdoms.lukasz.menusInGame.Battle.InGame_OngoingBattles;
import aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Compare;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_List;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.DrawOver.InGameDrawOver;
import aoc.kingdoms.lukasz.menusInGame.DrawOver.InGameDrawOver_RecruitArmy;
import aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy;
import aoc.kingdoms.lukasz.menusInGame.Right.InGame_Right;
import aoc.kingdoms.lukasz.menusInGame.Technology.InGame_TechnologyChoose;
import aoc.kingdoms.lukasz.menusInGame.Technology.InGame_TechnologyTree;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g3d.model.data.xlbt.LBhZogys;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame extends Menu {
    public int dateElementID;
    public int lastStatElementID;
    public int lastStatElementID2;
    public int minimapElementID;
    public int minusElementID;
    public int outlinerElementID;
    public int plusElementID;
    public static InGameDrawOver drawOver = new InGameDrawOver();
    public static boolean ONLY_MAP_MODE = false;
    public static int rankPosXW = 0;
    public static int topStatsPadding = 0;
    public static int topRightPadding = 0;
    public static int topStatsHeight = 0;
    public static int topBar2PosY = 0;
    public static int leftSideBarPadding = 0;
    public static int leftSideBarInnerWidth = 0;
    public static int outlinerExtraX = 0;
    public static int outlinerExtraClassic = 0;
    public static int outlinerExtraUQ = 0;
    public static int iMinimapPosY = 0;
    public static boolean inAnimation = false;
    public static boolean hideAnimation = false;
    public long minimapTime = 0;
    public int minimapAnimationTime = 275;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonTopFlag {
        AnonymousClass1(int i, int i2, boolean z) {
            super(i, i2, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame.action1();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(Game.player.iCivID, CivilizationRanking.getCivilizationRank_Name(Game.getCiv(Game.player.iCivID).iCivRankID)));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(GameValues.court.COUNCIL_NAME), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.council, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (Game.getCiv(Game.player.iCivID).ruler != null) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.ideologiesManager.getIdeology(Game.getCiv(Game.player.iCivID).getIdeologyID()).RulerTitle + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(Game.player.iCivID).ruler.Name));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (CFG.isDesktop()) {
                arrayList2.add(new MenuElement_HoverElement_Type_Space());
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Shortcut") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("F1", CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.FLAG_CLICK;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame$10, reason: invalid class name */
    class AnonymousClass10 extends ButtonTopSpeed {
        AnonymousClass10(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.gameThread.updateSpeedPlus();
            Game.menuManager.TOAST_TIME = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getPosX() {
            InGame inGame = InGame.this;
            return inGame.getMenuElement(inGame.dateElementID).getPosX() - getWidth();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CLICK_TOP;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame$11, reason: invalid class name */
    class AnonymousClass11 extends ButtonTopDate {
        AnonymousClass11(String str, int i, int i2) {
            super(str, i, i2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.gameThread.play = !Game.gameThread.play;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getPosX() {
            return (CFG.GAME_WIDTH - InGame.getDatePadding()) - getWidth();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return Game.gameThread.play ? SoundsManager.SOUND_CLICK_TOP : SoundsManager.PLAY;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame$12, reason: invalid class name */
    class AnonymousClass12 extends ButtonTopSpeed {
        AnonymousClass12(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.gameThread.updateSpeedMinus();
            Game.menuManager.TOAST_TIME = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getPosX() {
            InGame inGame = InGame.this;
            return inGame.getMenuElement(inGame.plusElementID).getPosX() - getWidth();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CLICK_TOP;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame$13, reason: invalid class name */
    class AnonymousClass13 extends ButtonTopOutliner {
        AnonymousClass13(int i, int i2) {
            super(i, i2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (!CFG.isDesktop()) {
                Touch.selectArmiesMode = !Touch.selectArmiesMode;
            } else {
                InGame_Right.outlinerInView = !InGame_Right.outlinerInView;
                Game.menuManager.rebuildInGame_Right();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getPosX() {
            InGame inGame = InGame.this;
            return (inGame.getMenuElement(inGame.minusElementID).getPosX() - InGame.topRightPadding) - getWidth();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CLICK_TOP;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame$14, reason: invalid class name */
    class AnonymousClass14 extends Minimap {
        AnonymousClass14(int i, int i2) {
            super(i, i2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getPosX() {
            return CFG.GAME_WIDTH - getWidth();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getPosY() {
            return (CFG.GAME_HEIGHT - getHeight()) + InGame.iMinimapPosY;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getVisible() {
            return super.getVisible() && Game.mapBG.getHideMenuZoomOut();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame$15, reason: invalid class name */
    class AnonymousClass15 extends Button32Padd {
        AnonymousClass15(int i) {
            super(i);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (!InGame.inAnimation) {
                InGame.this.minimapTime = CFG.currentTimeMillis;
            }
            InGame.inAnimation = true;
            InGame.hideAnimation = !InGame.hideAnimation;
            this.menuElementHover = null;
            Game.mapBG.requestToDisposeMinimap = true;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(InGame.iMinimapPosY == 0 ? "HideMinimap" : "ShowMinimap"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button32Padd, aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            if (z) {
                return Colors.COLOR_TOP_STATS_ACTIVE;
            }
            return getIsHovered() ? Colors.COLOR_TOP_STATS_HOVER : buttonColor;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button32Padd
        public boolean getFlipY() {
            return InGame.iMinimapPosY == 0;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getPosX() {
            return (CFG.GAME_WIDTH - getWidth()) - CFG.PADDING;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getPosY() {
            InGame inGame = InGame.this;
            return (inGame.getMenuElement(inGame.minimapElementID).getPosY() - getHeight()) - CFG.PADDING;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button32Padd, aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CLICK_TOP;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getVisible() {
            return super.getVisible() && Game.mapBG.getHideMenuZoomOut();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button32Padd, aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getWidth() {
            return ImageManager.getImage(this.iconImageID).getWidth() + (CFG.PADDING * 2);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame$2, reason: invalid class name */
    class AnonymousClass2 extends TextTop_Gold {
        AnonymousClass2(int i, String str, String str2, int i2, int i3) {
            super(i, str, str2, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame.action2();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            InGame_Budget.actionTakeLoan();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            Color color;
            Color color2;
            Color color3;
            Color color4;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Budget"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            float f = Game.getCiv(Game.player.iCivID).fGold;
            String str = Game.lang.get("Treasury") + ": ";
            String str2 = "" + CFG.getPrecision2(f, 100);
            int i = Images.gold;
            int i2 = CFG.FONT_REGULAR;
            int i3 = CFG.FONT_BOLD;
            Color color5 = Colors.HOVER_LEFT;
            if (f == 0.0f) {
                color = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
            } else {
                color = f > 0.0f ? Colors.HOVER_GOLD : Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
            }
            String str3 = "";
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus_Perc(str, str2, i, i2, i3, color5, color, f / Game.getMaxAmountOfGold(Game.player.iCivID)));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumAmountOfGold") + ": ", str3 + CFG.getNumberWithSpaces(str3 + CFG.getPrecision2(Game.getMaxAmountOfGold(Game.player.iCivID), 1)), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Game.getCiv(Game.player.iCivID).fGold >= ((float) Game.getMaxAmountOfGold(Game.player.iCivID)) ? Colors.HOVER_NEGATIVE : Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            float f2 = Game.getCiv(Game.player.iCivID).fTotalIncomePerMonth + Game.getCiv(Game.player.iCivID).civBonuses.MonthlyIncome;
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("TotalIncome") + ": ", CFG.FONT_REGULAR_SMALL));
            String str4 = (f2 > 0.0f ? "+" : str3) + CFG.getPrecision2(f2, 100);
            int i4 = CFG.FONT_BOLD_SMALL;
            if (f2 == 0.0f) {
                color2 = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
            } else {
                color2 = f2 > 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Text(str4, i4, color2));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            float f3 = Game.getCiv(Game.player.iCivID).fTotalExpensesPerMonth;
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("TotalExpenses") + ": ", CFG.FONT_REGULAR_SMALL));
            String str5 = (f3 > 0.0f ? "-" : "+") + CFG.getPrecision2(f3, 100);
            int i5 = CFG.FONT_BOLD_SMALL;
            if (f3 == 0.0f) {
                color3 = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
            } else {
                color3 = f3 > 0.0f ? Colors.COLOR_TEXT_MODIFIER_NEGATIVE : Colors.COLOR_TEXT_MODIFIER_POSITIVE;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Text(str5, i5, color3));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.goldNegative, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            float f4 = (Game.getCiv(Game.player.iCivID).fTotalIncomePerMonth + Game.getCiv(Game.player.iCivID).civBonuses.MonthlyIncome) - Game.getCiv(Game.player.iCivID).fTotalExpensesPerMonth;
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Balance") + ": ", CFG.FONT_REGULAR_SMALL));
            String str6 = (f4 > 0.0f ? "+" : "") + CFG.getPrecision2(f4, 100);
            int i6 = CFG.FONT_BOLD_SMALL;
            if (f4 == 0.0f) {
                color4 = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
            } else {
                color4 = f4 > 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Text(str6, i6, color4));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            try {
                arrayList2.add(new MenuElement_HoverElement_Type_Empty());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Graph(Game.lang.get("Income"), Graph.GraphType.PLAYER_INCOME, true));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Empty());
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
            if (CFG.isDesktop()) {
                arrayList2.add(new MenuElement_HoverElement_Type_Space());
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Shortcut") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("F2", CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return getIsActiveButton() ? SoundsManager.SOUND_CLICK_TOP : SoundsManager.BUDGET_CLICK;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextTop, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setIsHovered(boolean z) {
            super.setIsHovered(z);
            if (CFG.isDesktop() && GameValues.mapModes.TOP_HOVER_BUDGET && !z && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_PROVINCE_INCOME_HOVER) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateHovered() {
            super.updateHovered();
            if (CFG.isDesktop() && GameValues.mapModes.TOP_HOVER_BUDGET && HoverManager.hoverTime + GameValues.mapModes.HOVER_TIME <= CFG.currentTimeMillis && getIsHovered() && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DEFAULT) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_PROVINCE_INCOME_HOVER);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame$3, reason: invalid class name */
    class AnonymousClass3 extends TextTop_Manpower {
        AnonymousClass3(int i, String str, String str2, int i2, int i3) {
            super(i, str, str2, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame.action3();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            if (Game.menuManager.inCreateNewArmy && Game.menuManager.getVisibleInGame_RecruitArmy()) {
                Game.menuManager.setVisibleInGame_RecruitArmy(false);
            } else {
                InGame_RecruitArmy.actionCreateNewArmy();
                Game.menuManager.hideMenus_RecruitArmy(true);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            String str;
            boolean z;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            Civilization civ = Game.getCiv(Game.player.iCivID);
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(fiRhHJntP.hCkdGQicvUyit), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            float fMin = (float) Math.min(1.0d, civ.fManpower / civ.fManpowerMax);
            int i = (int) ((1.0f - fMin) * GameValues.manpower.MANPOWER_FULL_RECOVERY_MONTHS * 30.0f);
            int i2 = (int) (fMin * 100.0f);
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus_Perc(Game.lang.get("Manpower") + ": ", "" + CFG.getNumberWithSpaces("" + ((int) Math.floor(civ.fManpower))) + " [" + i2 + "%]", Game_Calendar.IMG_MANPOWER, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD, fMin));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumManpower") + ": ", "" + CFG.getNumberWithSpaces("" + ((int) Math.floor(civ.fManpowerMax))), Game_Calendar.IMG_MANPOWER, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (fMin < 0.98f && Game_Calendar.getNumOfDays_ByTurnsPlayed_WithoutDays(i).length() > 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(i2 + "% -> 100%: ", Game_Calendar.getNumOfDays_ByTurnsPlayed_WithoutDays(i), Game_Calendar.IMG_MANPOWER_TIME, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus("0% -> 100%: ", "" + Game.lang.get("MonthsX", (int) GameValues.manpower.MANPOWER_FULL_RECOVERY_MONTHS), Game_Calendar.IMG_MANPOWER_TIME, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < civ.iArmyPositionSize; i5++) {
                try {
                    ArmyDivision army = Game.getProvince(civ.getArmyPosition(i5)).getArmy(civ.getArmyPositionKey(i5));
                    if (army != null) {
                        for (int i6 = 0; i6 < army.iArmyRegimentSize; i6++) {
                            i4 += army.lArmyRegiment.get(i6).num;
                            i3++;
                        }
                    }
                } catch (Exception unused) {
                    str = "%";
                }
            }
            int i7 = i3 * Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE;
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Armies") + ", " + Game.lang.get(cIUGJCqyPXfp.wFGREVi) + ": ", CFG.FONT_REGULAR_SMALL));
            str = "%";
            try {
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2((i4 / i7) * 100.0f, 10) + str, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Armies") + ", " + Game.lang.get("Manpower") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getNumberWithSpaces("" + i4) + " / " + CFG.getNumberWithSpaces("" + i7), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
            } catch (Exception unused2) {
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MonthlyChange") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getNumberWithSpaces("" + CFG.getPrecision2(civ.fManpowerPerMonth, 1)), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("BaseValue") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getNumberWithSpaces("" + GameValues.manpower.MANPOWER_MAX_BASE), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Provinces") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getNumberWithSpaces("" + ((int) Math.floor(Math.max(0.0f, civ.getManpowerMax_Provinces_INFO())))), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            if (GameValues.civRank.CIV_RANK_MANPOWER_MAX[civ.iCivRankID] != 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("CivilizationRank") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getNumberWithSpaces("" + CFG.getPrecision2(GameValues.civRank.CIV_RANK_MANPOWER_MAX[civ.iCivRankID], 1)), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("CivilizationBonuses") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getNumberWithSpaces("" + CFG.getPrecision2(civ.civBonuses.MaxManpower, 1)), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            float manpowerMax_Vassals_INFO = civ.getManpowerMax_Vassals_INFO();
            if (manpowerMax_Vassals_INFO > 0.0f) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(Game_Ages.getVassals()) + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getNumberWithSpaces("" + ((int) Math.floor(manpowerMax_Vassals_INFO))), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
            }
            if (civ.fManpowerMax_ToLord != 0.0d) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(Game_Ages.getLord()) + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(civ.fManpowerMax_ToLord * (-1.0d), 1), CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
            }
            for (int i8 = 0; i8 < civ.inAllianceSize; i8++) {
                if (Game.alliancesSpecial.get(civ.inAlliance.get(i8).intValue()).iLeaderCivID == Game.player.iCivID && Game.alliancesSpecial.get(civ.inAlliance.get(i8).intValue()).typeOfAlliance == 0) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(Game.alliancesSpecial.get(civ.inAlliance.get(i8).intValue()).Name_Alliance) + ": ", CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getNumberWithSpaces("" + CFG.getPrecision2(HREManager.getManpower_Emperor(civ.inAlliance.get(i8).intValue()), 1)), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                    arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                    arrayList2.clear();
                }
            }
            if (civ.civBonuses.MaxManpower_Percentage != 0.0f) {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaximumManpower") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text((civ.civBonuses.MaxManpower_Percentage <= 0.0f ? "" : "+") + CFG.getPrecision2(civ.civBonuses.MaxManpower_Percentage * 100.0f, 100) + str, CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                z = false;
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
            } else {
                z = false;
            }
            if (CFG.isDesktop()) {
                arrayList2.add(new MenuElement_HoverElement_Type_Space());
                arrayList.add(new MenuElement_HoverElement(arrayList2, z));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Shortcut") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("F3", CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextTop
        public int getImageID() {
            return Game_Calendar.IMG_MANPOWER;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getPosX() {
            return InGame.this.getMenuElement(1).getPosX() + InGame.this.getMenuElement(1).getWidth() + InGame.this.getStatsPadding();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return getIsActiveButton() ? SoundsManager.SOUND_CLICK_TOP : SoundsManager.ARMY_CLICK;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextTop, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setIsHovered(boolean z) {
            super.setIsHovered(z);
            if (CFG.isDesktop() && GameValues.mapModes.TOP_HOVER_ARMY && !z && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_PROVINCE_MANPOWER_HOVER_PLAYER) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateHovered() {
            super.updateHovered();
            if (CFG.isDesktop() && GameValues.mapModes.TOP_HOVER_ARMY && HoverManager.hoverTime + GameValues.mapModes.HOVER_TIME <= CFG.currentTimeMillis && getIsHovered() && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DEFAULT) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_PROVINCE_MANPOWER_HOVER_PLAYER);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame$4, reason: invalid class name */
    class AnonymousClass4 extends TextTop_Technology {
        AnonymousClass4(int i, String str, String str2, int i2, int i3) {
            super(i, str, str2, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame.action4();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            if (Game.menuManager.getVisibleInGame_TechnologyTree()) {
                Game.menuManager.setVisibleInGame_TechnologyTree(false);
                return;
            }
            Game.menuManager.setVisibleInGame_TechnologyChoose(false);
            InGame_TechnologyTree.centerToTechID = -1;
            Game.menuManager.rebuildInGame_TechnologyTree(false, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            boolean z;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            if (Game.getCiv(Game.player.iCivID).getActiveTechResearch() >= 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(HTGgowNjn.OpXWGecpohIZcu) + ": ", CFG.FONT_BOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(TechnologyTree.lTechnology.get(Game.getCiv(Game.player.iCivID).getActiveTechResearch()).Name, CFG.FONT_BOLD, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus_Perc(Game.lang.get("ResearchProgress") + ": ", CFG.getPrecision2(Game.getCiv(Game.player.iCivID).getResearchProgress(Game.getCiv(Game.player.iCivID).getActiveTechResearch()) * 100.0f, 100) + "%", Game_Calendar.IMG_TECHNOLOGY, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD, Game.getCiv(Game.player.iCivID).getResearchProgress(Game.getCiv(Game.player.iCivID).getActiveTechResearch())));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ChooseResearch"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus_Perc(Game.lang.get("MonthlyChange") + ": ", "+" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).fResearchPerMonth, 100) + " / " + CFG.getPrecision2(TechnologyTree.getMaxResearch(Game.player.iCivID), 100), Game_Calendar.IMG_TECHNOLOGY, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD, Game.getCiv(Game.player.iCivID).fResearchPerMonth / TechnologyTree.getMaxResearch(Game.player.iCivID)));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumResearch") + ": ", CFG.getPrecision2(TechnologyTree.getMaxResearch(Game.player.iCivID), 100), Game_Calendar.IMG_TECHNOLOGY, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("MaximumResearch") + " = " + CFG.getPrecision2(GameValues.research.MAX_RESEARCH_BASE, 100) + " + " + Game.lang.get("Capital") + ", " + Game.lang.get("GrowthRate") + " * " + CFG.getPrecision2(GameValues.research.MAX_RESEARCH_PER_GROWTH_RATE_IN_CAPITAL, 100) + " + " + Game.lang.get("CapitalCity") + ", " + Game.lang.get("Level") + " * " + CFG.getPrecision2(GameValues.capital.CAPITAL_MAX_RESEARCH_PER_LVL, 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("BaseValue") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(GameValues.research.BASE_RESEARCH, 100), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Buildings") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).getResearchFromBuildings(), 100), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            if (Game.getCiv(Game.player.iCivID).advisorTechnology.Research != 0.0f) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(GameValues.court.ADVISOR_NAME_INNOVATION) + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).advisorTechnology.Research, 100), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
            }
            if (GameValues.civRank.CIV_RANK_MONTHLY_RESEARCH[Game.getCiv(Game.player.iCivID).iCivRankID] != 0.0f) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("CivilizationRank") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(GameValues.civRank.CIV_RANK_MONTHLY_RESEARCH[Game.getCiv(Game.player.iCivID).iCivRankID], 100), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
            }
            if (Game.getCiv(Game.player.iCivID).civBonuses.ResearchPoints != 0.0f) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("CivilizationBonuses") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).civBonuses.ResearchPoints, 100), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
            }
            if (Game.getCiv(Game.player.iCivID).civBonuses.Research != 0.0f) {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Research") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).civBonuses.Research, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                z = false;
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
            } else {
                z = false;
            }
            if (CFG.isDesktop()) {
                arrayList2.add(new MenuElement_HoverElement_Type_Space());
                arrayList.add(new MenuElement_HoverElement(arrayList2, z));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Shortcut") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("F4", CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getPosX() {
            return InGame.this.getMenuElement(2).getPosX() + InGame.this.getMenuElement(2).getWidth() + InGame.this.getStatsPadding();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return getIsActiveButton() ? SoundsManager.SOUND_CLICK_TOP : SoundsManager.TECHNOLOGY_CLICK;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame$5, reason: invalid class name */
    class AnonymousClass5 extends TextTop_Legacy {
        AnonymousClass5(int i, String str, String str2, int i2, int i3) {
            super(i, str, str2, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame.action5();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            if (Game.menuManager.getVisibleInGame_TechnologyChoose()) {
                Game.menuManager.setVisibleInGame_TechnologyChoose(false);
            } else {
                Game.menuManager.rebuildInGame_CivilizationAdvantages(Game.player.iCivID);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("CivilizationLegacy"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.legacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus_Perc(Game.lang.get("LegacyPoints") + ": ", "" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).fLegacy, 100), Images.legacy, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD, Game.getCiv(Game.player.iCivID).fLegacy / GameValues.legacy.MAX_LEGACY_POINTS));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MonthlyChange") + ": ", "" + (Game.getCiv(Game.player.iCivID).getLegacyPerMonth() > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).fLegacyPerMonth, 100), Images.legacy, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("Legacy0"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Max") + ": ", "" + CFG.getPrecision2(GameValues.legacy.MAX_LEGACY_POINTS, 100), Images.legacy, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            if (CFG.isDesktop()) {
                arrayList2.add(new MenuElement_HoverElement_Type_Space());
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Shortcut") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("F5", CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getPosX() {
            return InGame.this.getMenuElement(3).getPosX() + InGame.this.getMenuElement(3).getWidth() + InGame.this.getStatsPadding();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CLICK_TOP;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame$6, reason: invalid class name */
    class AnonymousClass6 extends TextTop_Diplomacy {
        AnonymousClass6(int i, String str, String str2, int i2, int i3) {
            super(i, str, str2, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame.action6();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Diplomacy"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.diplomacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus_Perc(Game.lang.get("DiplomacyPoints") + ": ", "" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).fDiplomacy, 100), Images.diplomacy, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD, Game.getCiv(Game.player.iCivID).fDiplomacy / Game.getCiv(Game.player.iCivID).fDiplomacyMax));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumDiplomacyPoints") + ": ", "" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).fDiplomacyMax, 100), Images.diplomacy, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MonthlyChange") + ": ", (Game.getCiv(Game.player.iCivID).getDiplomacyPerMonth() > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).getDiplomacyPerMonth(), 100), Images.diplomacy, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("BaseValue") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(GameValues.diplomacy.DIPLOMACY_POINTS_MAX, 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.diplomacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Provinces") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(GameValues.diplomacy.DIPLOMACY_POINTS_MAX_PER_PROVINCE * Game.getCiv(Game.player.iCivID).getNumOfProvinces(), 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.diplomacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaxNumOfAlliances") + ": ", "" + DiplomacyManager.getMaxNumberOfAlliances(Game.player.iCivID), Images.alliance, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (CFG.isDesktop()) {
                arrayList2.add(new MenuElement_HoverElement_Type_Space());
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Shortcut") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("F6", CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextTop_Diplomacy, aoc.kingdoms.lukasz.menu_element.textStatic.TextTop
        public boolean getIsActiveButton() {
            return Game.menuManager.getVisibleInGame_Civ();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getPosX() {
            return InGame.this.getMenuElement(4).getPosX() + InGame.this.getMenuElement(4).getWidth() + InGame.this.getStatsPadding();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return getIsActiveButton() ? SoundsManager.SOUND_CLICK_TOP : SoundsManager.DIPLOMACY1;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame$7, reason: invalid class name */
    class AnonymousClass7 extends TextTop_Nukes {
        AnonymousClass7(int i, String str, String str2, int i2, int i3) {
            super(i, str, str2, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_Nukes()) {
                Game.menuManager.setVisibleInGame_Nukes(false);
            } else {
                Game.menuManager.rebuildInGame_Nukes();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("NuclearWeapons"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.nuke, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("AtomicBombs") + ": ", "" + Game.getCiv(Game.player.iCivID).getNukes(), Images.nuke, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (Game.getCiv(Game.player.iCivID).iNukesSize > 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AtomicBombUnderConstruction") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DaysX", Game.getCiv(Game.player.iCivID).nukesDaysLeft.get(0).daysLeft), CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, CFG.PADDING));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("[" + CFG.getPrecision2((1.0f - (Game.getCiv(Game.player.iCivID).nukesDaysLeft.get(0).daysLeft / Game.getCiv(Game.player.iCivID).nukesDaysLeft.get(0).investTime)) * 100.0f, 10) + "%]", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                if (Game.getCiv(Game.player.iCivID).iNukesSize > 1) {
                    int i = 0;
                    for (int i2 = 0; i2 < Game.getCiv(Game.player.iCivID).iNukesSize; i2++) {
                        i += Game.getCiv(Game.player.iCivID).nukesDaysLeft.get(i2).daysLeft;
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("InQueue") + ": ", CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (Game.getCiv(Game.player.iCivID).iNukesSize - 1), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" [" + Game.lang.get("DaysX", i) + "]", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, CFG.PADDING));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                }
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextTop
        public int getImageID() {
            return Images.nuke;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getPosX() {
            InGame inGame;
            int i;
            if (getVisible()) {
                inGame = InGame.this;
                i = 5;
            } else {
                inGame = InGame.this;
                i = 4;
            }
            return inGame.getMenuElement(i).getPosX() + InGame.this.getMenuElement(i).getWidth() + InGame.this.getStatsPadding();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CLICK_TOP;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getVisible() {
            return Game.getCiv(Game.player.iCivID).canBuildNuke;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame$8, reason: invalid class name */
    class AnonymousClass8 extends ButtonStatsRectIMG_Rank {
        AnonymousClass8(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame.actionRanking();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            if (Game.player.iCivID <= 0 || Game.getCiv(Game.player.iCivID).getNumOfProvinces() <= 0) {
                return;
            }
            if (Game.menuManager.getVisibleInGame_Civ()) {
                Game.menuManager.setVisibleInGame_Civ(false);
                return;
            }
            InGame_Civ_List.civsList.clear();
            InGame_Civ_List.civsListTitle = Game.lang.get("NeighbouringCivilizations");
            InGame_Civ_List.civsListTitle2 = Game.getCiv(Game.player.iCivID).getCivName();
            InGame_Civ_List.civsList.add(Integer.valueOf(Game.player.iCivID));
            for (int i = 0; i < Game.getCiv(Game.player.iCivID).civNeighbors.civsSize; i++) {
                if (Game.getCiv(Game.player.iCivID).civNeighbors.civs.get(i).byLand) {
                    InGame_Civ_List.civsList.add(Integer.valueOf(Game.getCiv(Game.player.iCivID).civNeighbors.civs.get(i).civID));
                }
            }
            Game.menuManager.rebuildInGame_Civ_List();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Rank, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = CivilizationRanking.getHover_CivilizationRanking(Game.player.iCivID, true, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Rank, aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return Colors.getColorTopStats(z, getIsHovered());
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CLICK_TOP;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.iCurrent != Game.getCiv(Game.player.iCivID).iCivRankPosition) {
                this.iCurrent = Game.getCiv(Game.player.iCivID).iCivRankPosition;
                setText("" + (Game.getCiv(Game.player.iCivID).iCivRankPosition < 1 ? LBhZogys.JfV : Integer.valueOf(Game.getCiv(Game.player.iCivID).iCivRankPosition)));
                if (Game.getCiv(Game.player.iCivID).iCivRankPosition < 1) {
                    this.imageID = Images.rankBlack;
                } else {
                    this.imageID = CivilizationRanking.getCivilizationRanking_IMG_STAR_CIVID(Game.player.iCivID);
                }
            }
            return super.getTextToDraw();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame$9, reason: invalid class name */
    class AnonymousClass9 extends ButtonStatsRectIMG_CurrentSituation {
        AnonymousClass9(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame.actionCurrent();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_CurrentSituation, aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return Colors.getColorTopStats(z, getIsHovered());
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CLICK_TOP;
        }
    }

    public InGame() {
        this.lastStatElementID = 0;
        this.lastStatElementID2 = 0;
        this.dateElementID = 0;
        this.plusElementID = 0;
        this.minusElementID = 0;
        this.outlinerElementID = 0;
        this.minimapElementID = 0;
        ArrayList arrayList = new ArrayList();
        int i = iMinimapPosY;
        iMinimapPosY = 0;
        arrayList.add(new AnonymousClass1(0, 0, true));
        int width = ImageManager.getImage(Images.flagBG).getWidth() + CFG.PADDING + (CFG.PADDING / 2);
        arrayList.add(new AnonymousClass2(Images.gold, "", "", width, CFG.PADDING));
        arrayList.add(new AnonymousClass3(Game_Calendar.IMG_MANPOWER, "", "", width, CFG.PADDING));
        arrayList.add(new AnonymousClass4(Game_Calendar.IMG_TECHNOLOGY, "", "", width, CFG.PADDING));
        arrayList.add(new AnonymousClass5(Images.legacy, "", "", width, CFG.PADDING));
        arrayList.add(new AnonymousClass6(Images.diplomacy, "", "", width, CFG.PADDING));
        arrayList.add(new AnonymousClass7(Images.nuke, "", "", width, CFG.PADDING));
        this.lastStatElementID = arrayList.size() - 1;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), "999");
        rankPosXW = ((int) Renderer.glyphLayout.width) + ImageManager.getImage(Images.victoryPoints).getWidth() + (CFG.PADDING * 4);
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), "99");
        int width2 = ((int) Renderer.glyphLayout.width) + ImageManager.getImage(Images.victoryPoints).getWidth() + (CFG.PADDING * 4);
        int height = (ImageManager.getImage(Images.topStats).getHeight() * 3) / 5;
        arrayList.add(new AnonymousClass8("" + Game.getCiv(Game.player.iCivID).iCivRankPosition, CivilizationRanking.getCivilizationRanking_IMG_STAR_CIVID(Game.player.iCivID), width, ImageManager.getImage(Images.topStats).getHeight() + (CFG.PADDING / 2), rankPosXW, height, ImageManager.getImage(Images.rankGold).getWidth()));
        arrayList.add(new AnonymousClass9("0", 0, width + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, ImageManager.getImage(Images.topStats).getHeight() + (CFG.PADDING / 2), width2, height, ImageManager.getImage(Images.rankGold).getWidth()));
        this.lastStatElementID2 = arrayList.size() - 1;
        rankPosXW = arrayList.get(arrayList.size() - 1).getPosX() + arrayList.get(arrayList.size() - 1).getWidth() + topStatsPadding;
        arrayList.add(new AnonymousClass10(Images.plus, 0, topStatsHeight));
        this.plusElementID = arrayList.size() - 1;
        arrayList.add(new AnonymousClass11(Game_Calendar.getCurrentDate(), 0, topStatsHeight));
        this.dateElementID = arrayList.size() - 1;
        arrayList.add(new AnonymousClass12(Images.minus, 0, topStatsHeight));
        this.minusElementID = arrayList.size() - 1;
        arrayList.add(new AnonymousClass13(0, topStatsHeight));
        this.outlinerElementID = arrayList.size() - 1;
        arrayList.add(new AnonymousClass14(0, 0));
        this.minimapElementID = arrayList.size() - 1;
        arrayList.add(new AnonymousClass15(Images.arrowUpDown));
        initMenu(null, 0, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT, arrayList, true);
        iMinimapPosY = i;
        if (CFG.isDesktop() || !GameValues.value.MOBILE_HIDE_MINIMAP) {
            return;
        }
        iMinimapPosY = getMenuElement(this.minimapElementID).getHeight();
        inAnimation = false;
        hideAnimation = true;
    }

    public static void action1() {
        CFG.brushTool = false;
        if (Game.menuManager.getColorPicker().getVisible()) {
            Game.menuManager.getColorPicker().setVisible(false, null);
        }
        if (Game.menuManager.getVisibleInGame_Court()) {
            Game.menuManager.setVisibleInGame_Court(false);
            return;
        }
        InGame_CourtOptions.iActiveID = InGame_CourtOptions2.idCourt;
        InGame_Court.modeID = 0;
        InGame_Court.iActiveCivID = Game.player.iCivID;
        Game.menuManager.rebuildInGame_Court();
        Game.menuManager.setVisibleInGame_Court(true);
        Game.setRegroupArmyMode(false);
        if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 35) {
            Game.menuManager.setVisibleInGame_PopUp(false);
        }
    }

    public static void action2() {
        if (Game.menuManager.getColorPicker().getVisible()) {
            Game.menuManager.getColorPicker().setVisible(false, null);
        }
        if (Game.menuManager.getVisibleInGame_Budget()) {
            Game.menuManager.setVisibleInGame_Budget(false);
        } else {
            Game.menuManager.rebuildInGame_Budget();
            Game.menuManager.setVisibleInGame_Budget(true);
        }
    }

    public static void action3() {
        if (Game.menuManager.getColorPicker().getVisible()) {
            Game.menuManager.getColorPicker().setVisible(false, null);
        }
        if (Game.menuManager.getVisibleInGame_RecruitArmy()) {
            Game.menuManager.setVisibleInGame_RecruitArmy(false);
            return;
        }
        if (Game.menuManager.getVisibleInGame_Armies()) {
            Game.menuManager.setVisibleInGame_Armies(false);
        }
        Game.menuManager.rebuildInGame_RecruitArmy();
        Game.menuManager.setVisibleInGame_RecruitArmy(true);
    }

    public static void action4() {
        if (Game.menuManager.getColorPicker().getVisible()) {
            Game.menuManager.getColorPicker().setVisible(false, null);
        }
        if (Game.menuManager.getVisibleInGame_TechnologyTree()) {
            Game.menuManager.setVisibleInGame_TechnologyTree(false);
        } else if (Game.menuManager.getVisibleInGame_TechnologyChoose() && InGame_TechnologyChoose.IN_TECHNOLOGY_CHOOSE) {
            Game.menuManager.setVisibleInGame_TechnologyChoose(false);
        } else {
            Game.menuManager.rebuildInGame_TechnologyChoose(false, true);
        }
    }

    public static void action5() {
        if (Game.menuManager.getColorPicker().getVisible()) {
            Game.menuManager.getColorPicker().setVisible(false, null);
        }
        if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_RECRUIT_ARMY) {
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
        }
        InGame_Legacies.iActiveCivID = Game.player.iCivID;
        MainMenu.bgTIME = System.currentTimeMillis();
        MainMenu.bgTIME_CHANGE = System.currentTimeMillis();
        MainMenu.bgAlpha = 0.0f;
        Game.menuManager.setViewIDWithoutAnimation(View.IN_GAME_LEGACIES);
        Game.menuManager.setOrderOfMenu_InGameLegacies();
    }

    public static void action6() {
        if (Game.menuManager.getColorPicker().getVisible()) {
            Game.menuManager.getColorPicker().setVisible(false, null);
        }
        if (Game.menuManager.getVisibleInGame_Civ()) {
            Game.menuManager.setVisibleInGame_Civ(false);
        } else {
            Game.menuManager.rebuildInGame_Civ();
        }
    }

    public static void actionCurrent() {
        if ((Game.menuManager.getVisibleInGame_CurrentSituation() && MenuManager.currentSituationMode) || Game.player.currSituation.currentSituationNum == 0) {
            Game.menuManager.setVisibleInGame_CurrentSituation(false);
        } else {
            Game.menuManager.rebuildInGame_CurrentSituation();
        }
    }

    public static void actionRanking() {
        if (Game.menuManager.getVisibleInGame_CurrentSituation() && !MenuManager.currentSituationMode) {
            Game.menuManager.setVisibleInGame_CurrentSituation(false);
            return;
        }
        InGame_Civ_Compare.civLeft_Rank = -1;
        InGame_Civ_Compare.civRight_Rank = -1;
        InGame_Ranking.sSearch = "";
        Game.menuManager.rebuildInGame_CurrentSituation_Ranking();
    }

    public static final int getDatePadding() {
        return CFG.PADDING;
    }

    public static void initInGame() {
        try {
            String[] strArrSplit = FileManager.loadFile(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "top/topStatsAndRightPadding.txt").readString().split(";");
            topStatsPadding = Integer.parseInt(strArrSplit[0]);
            topRightPadding = Integer.parseInt(strArrSplit[1]);
            topStatsHeight = Integer.parseInt(strArrSplit[2]);
            topBar2PosY = ImageManager.getImage(Images.topStats).getHeight() - Integer.parseInt(strArrSplit[2]);
            leftSideBarPadding = Integer.parseInt(strArrSplit[4]);
            leftSideBarInnerWidth = Integer.parseInt(strArrSplit[5]);
            outlinerExtraClassic = Integer.parseInt(strArrSplit[6]);
            outlinerExtraUQ = Integer.parseInt(strArrSplit[7]);
        } catch (GdxRuntimeException e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void updateDrawOver() {
        if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_RECRUIT_ARMY || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_NEW_ARMY_CHOOSE_PROVINCE || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_NUKE_CHOOSE_PROVINCE || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_COLONIZE_CHOOSE_PROVINCE || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_MERCENARIES_CHOOSE_PROVINCE || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_INVEST_IN_ECONOMY || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DEVELOP_INFRASTRUCTURE || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_INCREASE_TAX_EFFICIENCY || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_INCREASE_MANPOWER || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_MOVE_CAPITAL || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_INCREASE_GROWTH_RATE || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_BUILDING || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_CONVERT_RELIGION || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DIPLOMACY_IMPROVE_RELATIONS || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DIPLOMACY_DAMAGE_RELATIONS || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_CORE) {
            drawOver = new InGameDrawOver_RecruitArmy();
        } else {
            drawOver = new InGameDrawOver();
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int posX;
        int i3;
        minimapAnimation();
        Image image = ImageManager.getImage(Images.topStats);
        spriteBatch.setColor(Color.WHITE);
        if (!Game.settingsManager.enableHideSideMenu || Game.menuManager.getVisibleInGame_Court()) {
            ImageManager.getImage(Images.leftSideBar).draw2(spriteBatch, i + Game.settingsManager.IN_GAME_LEFT_PADDING_EXTRA, i2, ImageManager.getImage(Images.leftSideBar).getWidth(), InGame_CourtOptions2.HEIGHT, false, true);
        }
        image.draw2(spriteBatch, (ImageManager.getImage(Images.flagBG).getWidth() / 2) + i, topBar2PosY + getMenuElement(this.lastStatElementID2).getHeight() + CFG.PADDING + i2, ((getMenuElement(this.lastStatElementID2).getPosX() + getMenuElement(this.lastStatElementID2).getWidth()) + topStatsPadding) - (ImageManager.getImage(Images.flagBG).getWidth() / 2), image.getHeight(), true, false);
        int width = (ImageManager.getImage(Images.flagBG).getWidth() / 2) + i;
        if (getMenuElement(this.lastStatElementID).getVisible()) {
            posX = getMenuElement(this.lastStatElementID).getPosX();
            i3 = this.lastStatElementID;
        } else {
            posX = getMenuElement(this.lastStatElementID - 1).getPosX();
            i3 = this.lastStatElementID - 1;
        }
        image.draw2(spriteBatch, width, i2, ((posX + getMenuElement(i3).getWidth()) + topStatsPadding) - (ImageManager.getImage(Images.flagBG).getWidth() / 2), image.getHeight(), true, false);
        image.draw2(spriteBatch, (getMenuElement(this.outlinerElementID).getPosX() - topRightPadding) + i, i2, CFG.GAME_WIDTH - (getMenuElement(this.outlinerElementID).getPosX() - topRightPadding), image.getHeight());
        int posX2 = ((getMenuElement(this.minusElementID).getPosX() + CFG.PADDING) - getDatePadding()) - topRightPadding;
        int i4 = posX2 + i;
        ImageManager.getImage(Images.topStats2).draw2(spriteBatch, i4, i2, CFG.GAME_WIDTH - posX2, image.getHeight());
        if (Game.gameThread.play) {
            spriteBatch.setColor(new Color(Colors.COLOR_TEXT_MODIFIER_NEGATIVE.r, Colors.COLOR_TEXT_MODIFIER_NEGATIVE.g, Colors.COLOR_TEXT_MODIFIER_NEGATIVE.b, 0.175f));
        } else {
            spriteBatch.setColor(new Color(Colors.COLOR_TEXT_MODIFIER_NEGATIVE.r, Colors.COLOR_TEXT_MODIFIER_NEGATIVE.g, Colors.COLOR_TEXT_MODIFIER_NEGATIVE.b, 0.05f));
        }
        ImageManager.getImage(Images.gradientXYVertical).draw(spriteBatch, i4, i2, CFG.GAME_WIDTH - posX2, image.getHeight(), true, false);
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, i4, i2, CFG.GAME_WIDTH - posX2, image.getHeight(), true, false);
        spriteBatch.setColor(Color.WHITE);
        if (getMenuElement(this.minimapElementID).getVisible()) {
            MenuElement menuElement = getMenuElement(this.minimapElementID);
            Renderer.drawBoxCorner(spriteBatch, (menuElement.getPosX() - Images.boxTitleBORDERWIDTH) + i, Game.menuManager.getInGame_MapModesPosY() + i2, (CFG.GAME_WIDTH - menuElement.getPosX()) + Images.boxTitleBORDERWIDTH, (CFG.GAME_HEIGHT - Game.menuManager.getInGame_MapModesPosY()) + Images.boxTitleBORDERWIDTH);
            ImageManager.getImage(Images.boxBIG_Red).draw2(spriteBatch, (menuElement.getPosX() - Images.boxTitleBORDERWIDTH) + i, Game.menuManager.getInGame_MapModesPosY() + i2, Images.boxTitleBORDERWIDTH + menuElement.getWidth(), Images.boxTitleBORDERWIDTH + (CFG.GAME_HEIGHT - Game.menuManager.getInGame_MapModesPosY()));
            spriteBatch.setColor(new Color(Colors.COLOR_TITLE.r, Colors.COLOR_TITLE.g, Colors.COLOR_TITLE.b, 0.15f));
            ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, menuElement.getPosX() + i, (menuElement.getPosY() - (CFG.PADDING * 2)) + i2, menuElement.getWidth(), CFG.PADDING * 2, false, true);
            Images.gradientXY.draw(spriteBatch, menuElement.getPosX() + i, (menuElement.getPosY() - (CFG.PADDING * 4)) + i2, menuElement.getWidth(), CFG.PADDING * 4);
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.2f));
            ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, menuElement.getPosX() + i, (menuElement.getPosY() - CFG.PADDING) + i2, menuElement.getWidth(), CFG.PADDING, false, true);
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.5f));
            Images.gradientFull.draw(spriteBatch, menuElement.getPosX() + i, (menuElement.getPosY() - 2) + i2, menuElement.getWidth(), 1);
            spriteBatch.setColor(Color.WHITE);
            ImageManager.getImage(Images.boxBIG).draw2(spriteBatch, (menuElement.getPosX() - Images.boxTitleBORDERWIDTH) + i, menuElement.getPosY() + i2, Images.boxTitleBORDERWIDTH + menuElement.getWidth(), CFG.GAME_HEIGHT - menuElement.getPosY(), 0, Images.boxTitleBORDERWIDTH * 2);
        }
        super.draw(spriteBatch, i, i2, z, status);
        InGame_OngoingBattles.draw(spriteBatch, i, i2);
        drawOver.draw(spriteBatch, i, i2);
        Game.soundsManager.playRandomSounds();
    }

    public final int getRightButtonsPadding() {
        return 0;
    }

    public final int getStatsPadding() {
        return CFG.PADDING * 2;
    }

    public final void minimapAnimation() {
        if (inAnimation) {
            if (hideAnimation) {
                if (iMinimapPosY >= getMenuElement(this.minimapElementID).getHeight()) {
                    iMinimapPosY = getMenuElement(this.minimapElementID).getHeight();
                    inAnimation = false;
                    return;
                }
                int height = (int) (getMenuElement(this.minimapElementID).getHeight() * ((CFG.currentTimeMillis - this.minimapTime) / this.minimapAnimationTime));
                iMinimapPosY = height;
                if (height > getMenuElement(this.minimapElementID).getHeight()) {
                    iMinimapPosY = getMenuElement(this.minimapElementID).getHeight();
                    inAnimation = false;
                    return;
                }
                return;
            }
            if (iMinimapPosY <= 0) {
                iMinimapPosY = 0;
                inAnimation = false;
                return;
            }
            int height2 = (int) (getMenuElement(this.minimapElementID).getHeight() - (getMenuElement(this.minimapElementID).getHeight() * ((CFG.currentTimeMillis - this.minimapTime) / this.minimapAnimationTime)));
            iMinimapPosY = height2;
            if (height2 < 0) {
                iMinimapPosY = 0;
                inAnimation = false;
            }
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void onHovered() {
        super.onHovered();
        Game.menuManager.setOrderOfMenu_InGame();
    }
}
