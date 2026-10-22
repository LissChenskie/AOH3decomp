package aoc.kingdoms.lukasz.menusInGame.RecruitArmy;

import androidx.core.text.util.pRCP.IwYCCQBuFGwl;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Ages;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.Renderer.SparksAnimation;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.map.allianceHRE.HREManager;
import aoc.kingdoms.lukasz.map.army.ArmyManager;
import aoc.kingdoms.lukasz.map.army.ArmyRecruit;
import aoc.kingdoms.lukasz.map.battles.BattleManager;
import aoc.kingdoms.lukasz.map.civilization.Civilization;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_DoubleText;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Click;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Click_Sparks;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style;
import aoc.kingdoms.lukasz.menu_element.button.ButtonUnit3_3;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_BattleRegiment;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_BattleRegimentEmpty;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus_Perc;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Empty;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageFull;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Center;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Clear;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Desc;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_BattleLine;
import aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battlefield;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.InGame_Generals;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.menusInGame.Province.iOYW.ALZmnpZHj;
import aoc.kingdoms.lukasz.menusInGame.Technology.InGame_TechnologyTree;
import aoc.kingdoms.lukasz.menusScenarioEditor.YGiX.gpVDKipRURuzw;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.assets.loaders.Wkvw.nEtnPpUF;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g3d.model.data.xlbt.LBhZogys;
import com.google.android.gms.internal.tasks.Vhe.SwmJtrccN;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_RecruitArmy extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static SparksAnimation sparksAnimation = new SparksAnimation();
    public static Color sparksColor = new Color(1.0f, 1.0f, 1.0f, 0.25f);
    public static int HOVER_POSX = 0;
    public static long lTime = 0;
    public static String key = "";

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonStatsRectIMG_Active_Click_Sparks {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, i7, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_Armies()) {
                Game.menuManager.setVisibleInGame_Armies(false);
                return;
            }
            Game.menuManager.rebuildInGame_Armies(false, false);
            Game.menuManager.setVisibleInGame_Armies(true);
            Game.menuManager.setVisibleInGame_RecruitArmy(false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("UpgradeRegiments"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_MANPOWER_UP, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            int regimentsAvailableToUpgrade = ArmyManager.getRegimentsAvailableToUpgrade(Game.player.iCivID);
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AvailableUpgrades") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getNumberWithSpaces("" + regimentsAvailableToUpgrade), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.upgrade, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy$10, reason: invalid class name */
    class AnonymousClass10 extends ButtonStatsRectIMG_Bonuses_Style {
        AnonymousClass10(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_Civ_Regiments();
            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_CIV_POPULATION_HOVER) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DIPLOMACY);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Civilizations") + ": " + Game.lang.get("RegimentsLimit"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.regimentsLimit, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("RegimentsLimit") + ": ", "" + Game.getCiv(Game.player.iCivID).iRegimentsLimit, Images.regimentsLimit, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumManpower") + ": ", "" + CFG.getNumberWithSpaces("" + ((int) Game.getCiv(Game.player.iCivID).fManpowerMax)), Game_Calendar.IMG_MANPOWER_UP, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("BaseValue") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENTS_LIMIT_BASE_VALUE, CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.regimentsLimit, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (Game.getCiv(Game.player.iCivID).civBonuses.RegimentsLimit > 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Bonuses") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getCiv(Game.player.iCivID).civBonuses.RegimentsLimit, CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.regimentsLimit, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.getCiv(Game.player.iCivID).diplomacy.iVassalsSize > 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Vassals") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (GameValues.army.REGIMENTS_LIMIT_PER_VASSAL * Game.getCiv(Game.player.iCivID).diplomacy.iVassalsSize), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.vassal, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("LocalManpower") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getCiv(Game.player.iCivID).getRegimentsLimit_Manpower(), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            float regimentsLimit_FromAllianceSpecial = Game.getCiv(Game.player.iCivID).getRegimentsLimit_FromAllianceSpecial();
            if (regimentsLimit_FromAllianceSpecial > 0.0f) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Alliances") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(regimentsLimit_FromAllianceSpecial, 1), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.alliance, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.getCiv(Game.player.iCivID).getPuppetOfCivID() != Game.player.iCivID) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Vassal") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(GameValues.army.REGIMENTS_LIMIT_VASSAL * 100.0f, 1) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.vassal, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        public Color getColorBonus() {
            return Colors.HOVER_GOLD;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy$11, reason: invalid class name */
    class AnonymousClass11 extends ButtonStatsRectIMG_Bonuses_Style {
        AnonymousClass11(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_Civ_Regiments();
            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_CIV_POPULATION_HOVER) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DIPLOMACY);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Civilizations") + ": " + Game.lang.get("MaximumManpower"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            float fMin = (float) Math.min(1.0d, Game.getCiv(Game.player.iCivID).fManpower / Game.getCiv(Game.player.iCivID).fManpowerMax);
            int i = (int) ((1.0f - fMin) * GameValues.manpower.MANPOWER_FULL_RECOVERY_MONTHS * 30.0f);
            int i2 = (int) (fMin * 100.0f);
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus_Perc(Game.lang.get("Manpower") + ": ", "" + CFG.getNumberWithSpaces("" + ((int) Game.getCiv(Game.player.iCivID).fManpower)) + " [" + i2 + "%]", Game_Calendar.IMG_MANPOWER, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD, fMin));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumManpower") + ": ", "" + CFG.getNumberWithSpaces("" + ((int) Game.getCiv(Game.player.iCivID).fManpowerMax)), Game_Calendar.IMG_MANPOWER, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (fMin < 0.98f && Game_Calendar.getNumOfDays_ByTurnsPlayed(i).length() > 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(i2 + "% -> 100%: ", Game_Calendar.getNumOfDays_ByTurnsPlayed(i), Game_Calendar.IMG_MANPOWER_TIME, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus("0% -> 100%: ", "" + Game.lang.get("MonthsX", (int) (GameValues.manpower.MANPOWER_FULL_RECOVERY_MONTHS * (Game.getCiv(Game.player.iCivID).civBonuses.ManpowerRecoverySpeed + 1.0f))), Game_Calendar.IMG_MANPOWER_TIME, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            Civilization civ = Game.getCiv(Game.player.iCivID);
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
            for (int i3 = 0; i3 < civ.inAllianceSize; i3++) {
                if (Game.alliancesSpecial.get(civ.inAlliance.get(i3).intValue()).iLeaderCivID == Game.player.iCivID && Game.alliancesSpecial.get(civ.inAlliance.get(i3).intValue()).typeOfAlliance == 0) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(Game.alliancesSpecial.get(civ.inAlliance.get(i3).intValue()).Name_Alliance) + ": ", CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getNumberWithSpaces("" + CFG.getPrecision2(HREManager.getManpower_Emperor(civ.inAlliance.get(i3).intValue()), 1)), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                    arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                    arrayList2.clear();
                }
            }
            if (civ.civBonuses.MaxManpower_Percentage != 0.0f) {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaximumManpower") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text((civ.civBonuses.MaxManpower_Percentage > 0.0f ? "+" : "") + CFG.getPrecision2(civ.civBonuses.MaxManpower_Percentage * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        public Color getColorBonus() {
            return Colors.HOVER_GOLD;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy$12, reason: invalid class name */
    class AnonymousClass12 extends ButtonStatsRectIMG_Bonuses_Style {
        AnonymousClass12(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_Civ_Regiments();
            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_CIV_POPULATION_HOVER) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DIPLOMACY);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Civilizations") + ": " + Game.lang.get("MaximumManpower"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            float fMin = (float) Math.min(1.0d, Game.getCiv(Game.player.iCivID).fManpower / Game.getCiv(Game.player.iCivID).fManpowerMax);
            int i = (int) ((1.0f - fMin) * GameValues.manpower.MANPOWER_FULL_RECOVERY_MONTHS * 30.0f);
            int i2 = (int) (fMin * 100.0f);
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus_Perc(Game.lang.get("Manpower") + ": ", "" + CFG.getNumberWithSpaces("" + ((int) Game.getCiv(Game.player.iCivID).fManpower)) + " [" + i2 + "%]", Game_Calendar.IMG_MANPOWER, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD, fMin));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumManpower") + ": ", "" + CFG.getNumberWithSpaces("" + ((int) Game.getCiv(Game.player.iCivID).fManpowerMax)), Game_Calendar.IMG_MANPOWER, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (fMin < 0.98f && Game_Calendar.getNumOfDays_ByTurnsPlayed(i).length() > 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(i2 + "% -> 100%: ", Game_Calendar.getNumOfDays_ByTurnsPlayed(i), Game_Calendar.IMG_MANPOWER_TIME, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus("0% -> 100%: ", "" + Game.lang.get("MonthsX", (int) (GameValues.manpower.MANPOWER_FULL_RECOVERY_MONTHS * (Game.getCiv(Game.player.iCivID).civBonuses.ManpowerRecoverySpeed + 1.0f))), Game_Calendar.IMG_MANPOWER_TIME, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            Civilization civ = Game.getCiv(Game.player.iCivID);
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("BaseValue") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getNumberWithSpaces("" + GameValues.manpower.MANPOWER_MAX_BASE), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Provinces") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getNumberWithSpaces("" + ((int) Math.floor(Math.max(0.0f, civ.getManpowerMax_Provinces_INFO())))), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (GameValues.civRank.CIV_RANK_MANPOWER_MAX[civ.iCivRankID] != 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("CivilizationRank") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getNumberWithSpaces("" + CFG.getPrecision2(GameValues.civRank.CIV_RANK_MANPOWER_MAX[civ.iCivRankID], 1)), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("CivilizationBonuses") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getNumberWithSpaces("" + CFG.getPrecision2(civ.civBonuses.MaxManpower, 1)), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            float manpowerMax_Vassals_INFO = civ.getManpowerMax_Vassals_INFO();
            if (manpowerMax_Vassals_INFO > 0.0f) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(Game_Ages.getVassals()) + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getNumberWithSpaces("" + ((int) Math.floor(manpowerMax_Vassals_INFO))), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (civ.fManpowerMax_ToLord != 0.0d) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(Game_Ages.getLord()) + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(civ.fManpowerMax_ToLord * (-1.0d), 1), CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            for (int i3 = 0; i3 < civ.inAllianceSize; i3++) {
                if (Game.alliancesSpecial.get(civ.inAlliance.get(i3).intValue()).iLeaderCivID == Game.player.iCivID && Game.alliancesSpecial.get(civ.inAlliance.get(i3).intValue()).typeOfAlliance == 0) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(Game.alliancesSpecial.get(civ.inAlliance.get(i3).intValue()).Name_Alliance) + ": ", CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getNumberWithSpaces("" + CFG.getPrecision2(HREManager.getManpower_Emperor(civ.inAlliance.get(i3).intValue()), 1)), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                }
            }
            if (civ.civBonuses.MaxManpower_Percentage != 0.0f) {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaximumManpower") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text((civ.civBonuses.MaxManpower_Percentage > 0.0f ? "+" : "") + CFG.getPrecision2(civ.civBonuses.MaxManpower_Percentage * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        public Color getColorBonus() {
            return Colors.HOVER_GOLD;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy$13, reason: invalid class name */
    class AnonymousClass13 extends Text_Title {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy$13$1, reason: invalid class name */
        class AnonymousClass1 extends MenuElement_Hover {
            AnonymousClass1(List list) {
                super(list);
            }

            @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover
            public int getMinPosX() {
                return InGame_RecruitArmy.HOVER_POSX;
            }
        }

        AnonymousClass13(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("ToBeResearched"), CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new AnonymousClass1(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy$14, reason: invalid class name */
    class AnonymousClass14 extends ButtonUnit3_3 {
        AnonymousClass14(int i, int i2, int i3, int i4, int i5, boolean z, boolean z2) {
            super(i, i2, i3, i4, i5, z, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_TechnologyTree()) {
                Game.menuManager.setVisibleInGame_TechnologyTree(false);
                return;
            }
            Game.menuManager.setVisibleInGame_TechnologyChoose(false);
            InGame_TechnologyTree.centerToTechID = ArmyManager.lArmy.get(getValue1()).get(getValue2()).RequiredTechID;
            Game.menuManager.rebuildInGame_TechnologyTree(false, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy$15, reason: invalid class name */
    class AnonymousClass15 extends MenuTitleIMG_DoubleText {
        AnonymousClass15(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_RecruitArmy.lTime;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy$16, reason: invalid class name */
    class AnonymousClass16 extends Text_Title_BattleLine {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy$16$1, reason: invalid class name */
        class AnonymousClass1 extends MenuElement_Hover {
            AnonymousClass1(List list) {
                super(list);
            }

            @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover
            public int getMinPosX() {
                return InGame_RecruitArmy.HOVER_POSX;
            }
        }

        AnonymousClass16(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).iArmyPositionSize > 0) {
                try {
                    if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 51) {
                        Game.menuManager.setVisibleInGame_PopUp(false);
                    } else {
                        InGame_Battlefield.armyDivision = Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(0)).getArmy(Game.getCiv(Game.player.iCivID).getArmyPositionKey(0));
                        if (InGame_Battlefield.armyDivision != null) {
                            Game.menuManager.rebuildInGame_Battlefield();
                        } else {
                            Game.menuManager.setVisibleInGame_PopUp(false);
                        }
                    }
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("BattlePosition") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.lang.get("FirstLine"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy1));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy1));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy1));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy1));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy1));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy1));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy1));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy1));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new AnonymousClass1(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy$17, reason: invalid class name */
    class AnonymousClass17 extends Text_Title_BattleLine {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy$17$1, reason: invalid class name */
        class AnonymousClass1 extends MenuElement_Hover {
            AnonymousClass1(List list) {
                super(list);
            }

            @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover
            public int getMinPosX() {
                return InGame_RecruitArmy.HOVER_POSX;
            }
        }

        AnonymousClass17(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).iArmyPositionSize > 0) {
                try {
                    if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 51) {
                        Game.menuManager.setVisibleInGame_PopUp(false);
                    } else {
                        InGame_Battlefield.armyDivision = Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(0)).getArmy(Game.getCiv(Game.player.iCivID).getArmyPositionKey(0));
                        if (InGame_Battlefield.armyDivision != null) {
                            Game.menuManager.rebuildInGame_Battlefield();
                        } else {
                            Game.menuManager.setVisibleInGame_PopUp(false);
                        }
                    }
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("BattlePosition") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.lang.get("Flank"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy1));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy1));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy1));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy1));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy1));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy1));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy1));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy1));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy2));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new AnonymousClass1(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy$18, reason: invalid class name */
    class AnonymousClass18 extends Text_Title_BattleLine {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy$18$1, reason: invalid class name */
        class AnonymousClass1 extends MenuElement_Hover {
            AnonymousClass1(List list) {
                super(list);
            }

            @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover
            public int getMinPosX() {
                return InGame_RecruitArmy.HOVER_POSX;
            }
        }

        AnonymousClass18(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).iArmyPositionSize > 0) {
                try {
                    if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 51) {
                        Game.menuManager.setVisibleInGame_PopUp(false);
                    } else {
                        InGame_Battlefield.armyDivision = Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(0)).getArmy(Game.getCiv(Game.player.iCivID).getArmyPositionKey(0));
                        if (InGame_Battlefield.armyDivision != null) {
                            Game.menuManager.rebuildInGame_Battlefield();
                        } else {
                            Game.menuManager.setVisibleInGame_PopUp(false);
                        }
                    }
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("BattlePosition") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.lang.get("Support"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy2));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy1));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy1));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy1));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy1));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy1));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy1));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy0));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy1));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegimentEmpty(Game.player.iCivID, Images.battleArmy1));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy2));
            arrayList2.add(new MenuElement_HoverElement_Type_BattleRegiment(Game.player.iCivID, Images.battleArmy2));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new AnonymousClass1(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy$19, reason: invalid class name */
    class AnonymousClass19 extends ButtonUnit3_3 {
        AnonymousClass19(int i, int i2, int i3, int i4, int i5, boolean z, boolean z2) {
            super(i, i2, i3, i4, i5, z, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            super.actionElement();
            if (Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_RECRUIT_ARMY) {
                Game.gameActiveProvince.resetLastActiveProvince();
                Game.setActiveProvinceID(-1);
                Game.menuManager.setVisibleInGame_ProvinceInfo(false);
                Game.armyRecruit = new ArmyRecruit(0, getValue1(), getValue2(), InGame_RecruitArmy.key);
                Game.armyRecruit.cost = ArmyManager.getRecruitmentCost(Game.player.iCivID, -1, getValue1(), getValue2());
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_RECRUIT_ARMY);
                return;
            }
            if (Game.armyRecruit.unitID == getValue1() && Game.armyRecruit.armyID == getValue2()) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
                return;
            }
            Game.gameActiveProvince.resetLastActiveProvince();
            Game.setActiveProvinceID(-1);
            Game.menuManager.setVisibleInGame_ProvinceInfo(false);
            Game.armyRecruit = new ArmyRecruit(0, getValue1(), getValue2(), InGame_RecruitArmy.key);
            Game.armyRecruit.cost = ArmyManager.getRecruitmentCost(Game.player.iCivID, -1, getValue1(), getValue2());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonStatsRectIMG_Active_Click_Sparks {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, i7, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_RecruitArmy.actionCreateNewArmy();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("CreateNewArmy"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("CreateArmyT"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (CFG.isDesktop()) {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Shortcut") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("V", CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy$20, reason: invalid class name */
    class AnonymousClass20 extends ButtonUnit3_3 {
        AnonymousClass20(int i, int i2, int i3, int i4, int i5, boolean z, boolean z2) {
            super(i, i2, i3, i4, i5, z, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            super.actionElement();
            if (Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_RECRUIT_ARMY) {
                Game.gameActiveProvince.resetLastActiveProvince();
                Game.setActiveProvinceID(-1);
                Game.menuManager.setVisibleInGame_ProvinceInfo(false);
                Game.armyRecruit = new ArmyRecruit(0, getValue1(), getValue2(), InGame_RecruitArmy.key);
                Game.armyRecruit.cost = ArmyManager.getRecruitmentCost(Game.player.iCivID, -1, getValue1(), getValue2());
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_RECRUIT_ARMY);
                return;
            }
            if (Game.armyRecruit.unitID == getValue1() && Game.armyRecruit.armyID == getValue2()) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
                return;
            }
            Game.gameActiveProvince.resetLastActiveProvince();
            Game.setActiveProvinceID(-1);
            Game.menuManager.setVisibleInGame_ProvinceInfo(false);
            Game.armyRecruit = new ArmyRecruit(0, getValue1(), getValue2(), InGame_RecruitArmy.key);
            Game.armyRecruit.cost = ArmyManager.getRecruitmentCost(Game.player.iCivID, -1, getValue1(), getValue2());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy$21, reason: invalid class name */
    class AnonymousClass21 extends ButtonUnit3_3 {
        AnonymousClass21(int i, int i2, int i3, int i4, int i5, boolean z, boolean z2) {
            super(i, i2, i3, i4, i5, z, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            super.actionElement();
            if (Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_RECRUIT_ARMY) {
                Game.gameActiveProvince.resetLastActiveProvince();
                Game.setActiveProvinceID(-1);
                Game.menuManager.setVisibleInGame_ProvinceInfo(false);
                Game.armyRecruit = new ArmyRecruit(0, getValue1(), getValue2(), InGame_RecruitArmy.key);
                Game.armyRecruit.cost = ArmyManager.getRecruitmentCost(Game.player.iCivID, -1, getValue1(), getValue2());
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_RECRUIT_ARMY);
                return;
            }
            if (Game.armyRecruit.unitID == getValue1() && Game.armyRecruit.armyID == getValue2()) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
                return;
            }
            Game.gameActiveProvince.resetLastActiveProvince();
            Game.setActiveProvinceID(-1);
            Game.menuManager.setVisibleInGame_ProvinceInfo(false);
            Game.armyRecruit = new ArmyRecruit(0, getValue1(), getValue2(), InGame_RecruitArmy.key);
            Game.armyRecruit.cost = ArmyManager.getRecruitmentCost(Game.player.iCivID, -1, getValue1(), getValue2());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy$22, reason: invalid class name */
    class AnonymousClass22 extends Text_TitleBlue {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy$22$1, reason: invalid class name */
        class AnonymousClass1 extends MenuElement_Hover {
            AnonymousClass1(List list) {
                super(list);
            }

            @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover
            public int getMinPosX() {
                return InGame_RecruitArmy.HOVER_POSX;
            }
        }

        AnonymousClass22(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Settlers"), CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.population, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new AnonymousClass1(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy$23, reason: invalid class name */
    class AnonymousClass23 extends ButtonUnit3_3 {
        AnonymousClass23(int i, int i2, int i3, int i4, int i5, boolean z, boolean z2) {
            super(i, i2, i3, i4, i5, z, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            super.actionElement();
            if (Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_RECRUIT_ARMY) {
                Game.gameActiveProvince.resetLastActiveProvince();
                Game.setActiveProvinceID(-1);
                Game.menuManager.setVisibleInGame_ProvinceInfo(false);
                Game.armyRecruit = new ArmyRecruit(0, getValue1(), getValue2(), InGame_RecruitArmy.key);
                Game.armyRecruit.cost = ArmyManager.getRecruitmentCost(Game.player.iCivID, -1, getValue1(), getValue2());
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_RECRUIT_ARMY);
                return;
            }
            if (Game.armyRecruit.unitID == getValue1() && Game.armyRecruit.armyID == getValue2()) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
                return;
            }
            Game.gameActiveProvince.resetLastActiveProvince();
            Game.setActiveProvinceID(-1);
            Game.menuManager.setVisibleInGame_ProvinceInfo(false);
            Game.armyRecruit = new ArmyRecruit(0, getValue1(), getValue2(), InGame_RecruitArmy.key);
            Game.armyRecruit.cost = ArmyManager.getRecruitmentCost(Game.player.iCivID, -1, getValue1(), getValue2());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy$24, reason: invalid class name */
    class AnonymousClass24 extends Text_TitleBlue {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy$24$1, reason: invalid class name */
        class AnonymousClass1 extends MenuElement_Hover {
            AnonymousClass1(List list) {
                super(list);
            }

            @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover
            public int getMinPosX() {
                return InGame_RecruitArmy.HOVER_POSX;
            }
        }

        AnonymousClass24(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Obsolete"), CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new AnonymousClass1(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy$25, reason: invalid class name */
    class AnonymousClass25 extends Text_Title {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy$25$1, reason: invalid class name */
        class AnonymousClass1 extends MenuElement_Hover {
            AnonymousClass1(List list) {
                super(list);
            }

            @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover
            public int getMinPosX() {
                return InGame_RecruitArmy.HOVER_POSX;
            }
        }

        AnonymousClass25(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Obsolete"), CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new AnonymousClass1(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy$26, reason: invalid class name */
    class AnonymousClass26 extends ButtonUnit3_3 {
        AnonymousClass26(int i, int i2, int i3, int i4, int i5, boolean z, boolean z2) {
            super(i, i2, i3, i4, i5, z, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            super.actionElement();
            if (GameValues.army.CAN_RECRUIT_OBSOLETE_UNITS) {
                if (Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_RECRUIT_ARMY) {
                    Game.gameActiveProvince.resetLastActiveProvince();
                    Game.setActiveProvinceID(-1);
                    Game.menuManager.setVisibleInGame_ProvinceInfo(false);
                    Game.armyRecruit = new ArmyRecruit(0, getValue1(), getValue2(), InGame_RecruitArmy.key);
                    Game.armyRecruit.cost = ArmyManager.getRecruitmentCost(Game.player.iCivID, -1, getValue1(), getValue2());
                    Game.mapModes.setActiveViewID(Game.mapModes.MODE_RECRUIT_ARMY);
                    return;
                }
                if (Game.armyRecruit.unitID == getValue1() && Game.armyRecruit.armyID == getValue2()) {
                    Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
                    return;
                }
                Game.gameActiveProvince.resetLastActiveProvince();
                Game.setActiveProvinceID(-1);
                Game.menuManager.setVisibleInGame_ProvinceInfo(false);
                Game.armyRecruit = new ArmyRecruit(0, getValue1(), getValue2(), InGame_RecruitArmy.key);
                Game.armyRecruit.cost = ArmyManager.getRecruitmentCost(Game.player.iCivID, -1, getValue1(), getValue2());
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_RecruitArmy.actionArmies();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Armies"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ArmySize") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getNumberWithSpaces("" + Game.getCiv(Game.player.iCivID).getArmySize()), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("RegimentsLimit") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getCiv(Game.player.iCivID).iRegimentsLimit, CFG.FONT_BOLD_SMALL, Game.getCiv(Game.player.iCivID).getArmyRegimentSize() + Game.getCiv(Game.player.iCivID).iArmyRecruitSize_Total > Game.getCiv(Game.player.iCivID).iRegimentsLimit ? Colors.COLOR_TEXT_MODIFIER_NEGATIVE : Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.regimentsLimit, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("BaseValue") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENTS_LIMIT_BASE_VALUE, CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.regimentsLimit, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            if (Game.getCiv(Game.player.iCivID).civBonuses.RegimentsLimit > 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Bonuses") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getCiv(Game.player.iCivID).civBonuses.RegimentsLimit, CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.regimentsLimit, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
            }
            if (Game.getCiv(Game.player.iCivID).diplomacy.iVassalsSize > 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Vassals") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (GameValues.army.REGIMENTS_LIMIT_PER_VASSAL * Game.getCiv(Game.player.iCivID).diplomacy.iVassalsSize), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.vassal, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("LocalManpower") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getCiv(Game.player.iCivID).getRegimentsLimit_Manpower(), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            float regimentsLimit_FromAllianceSpecial = Game.getCiv(Game.player.iCivID).getRegimentsLimit_FromAllianceSpecial();
            if (regimentsLimit_FromAllianceSpecial > 0.0f) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Alliances") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(regimentsLimit_FromAllianceSpecial, 1), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.alliance, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
            }
            if (Game.getCiv(Game.player.iCivID).getPuppetOfCivID() != Game.player.iCivID) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Vassal") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(GameValues.army.REGIMENTS_LIMIT_VASSAL * 100.0f, 1) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.vassal, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
            }
            if (Game.getCiv(Game.player.iCivID).getArmyRegimentSize() + Game.getCiv(Game.player.iCivID).iArmyRecruitSize_Total >= Game.getCiv(Game.player.iCivID).iRegimentsLimit) {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("WhenTheMaximumRegimentLimitIsReachedArmyRecruitmentCostIncreasesBy") + ": " + CFG.getPrecision2(GameValues.army.REGIMENTS_LIMIT_RECRUIT_COST_OVER * 100.0f, 10) + "%", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("BattleWidth") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + BattleManager.getBattleWidth(Game.player.iCivID), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.battleWidth, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Discipline") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).civBonuses.Discipline * 100.0f, 10) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.discipline, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("ManpowerRecoveryFromADisbandedArmy") + ": " + CFG.getPrecision2(Game.getManpowerRecoveryFromADisbandedArmy(Game.player.iCivID) * 100.0f, 10) + "%", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (CFG.isDesktop()) {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Shortcut") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("M", CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Click, aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active, aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return Game.getCiv(Game.player.iCivID).getArmyRegimentSize() + Game.getCiv(Game.player.iCivID).iArmyRecruitSize_Total > Game.getCiv(Game.player.iCivID).iRegimentsLimit ? Colors.COLOR_TEXT_MODIFIER_NEGATIVE : super.getColor(z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, i7, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_RecruitArmy.actionMercenaries();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("RecruitMercenaries"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.mercenaries, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (CFG.isDesktop()) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Shortcut") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("C", CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.mercenaries, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList, !CFG.isDesktop());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Generals.backButton = true;
            InGame_RecruitArmy.actionGenerals();
            InGame_Generals.backButton = true;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Generals"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.general, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Generals") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getCiv(Game.player.iCivID).getTotalGenerals(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.general, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("UnassignedGenerals") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getCiv(Game.player.iCivID).getGeneralsNotAssignedSize(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.general, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MilitaryAcademyForGenerals"), CFG.FONT_BOLD_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.general, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Level") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(Game.player.iCivID).getMilitaryAcademyForGeneralsLevel() + " / " + Game.getMilitaryAcademyForGenerals_MaxLvl(Game.player.iCivID), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (CFG.isDesktop()) {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(SwmJtrccN.euCq) + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("G", CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.general, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.GENERALS_CLICK;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy$6, reason: invalid class name */
    class AnonymousClass6 extends Text_TitleBlue {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy$6$1, reason: invalid class name */
        class AnonymousClass1 extends MenuElement_Hover {
            AnonymousClass1(List list) {
                super(list);
            }

            @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover
            public int getMinPosX() {
                return InGame_RecruitArmy.HOVER_POSX;
            }
        }

        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("More"), CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new AnonymousClass1(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonStatsRectIMG_Bonuses_Style {
        AnonymousClass7(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).getMilitaryAcademyLevel() >= Game.getMilitaryAcademy_MaxLvl(Game.player.iCivID)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("MaximumLevel") + ": ", "" + Game.getCiv(Game.player.iCivID).getMilitaryAcademyLevel() + " / " + Game.getMilitaryAcademy_MaxLvl(Game.player.iCivID), Game_Calendar.IMG_MANPOWER);
            } else if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 2) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_UpgradeMilitaryAcademy();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_RecruitArmy.getHoverMilitaryAcademy();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        public Color getColorBonus() {
            return Colors.HOVER_GOLD;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy$8, reason: invalid class name */
    class AnonymousClass8 extends ButtonStatsRectIMG_Bonuses_Style {
        AnonymousClass8(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).iArmyPositionSize > 0) {
                try {
                    if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 51) {
                        Game.menuManager.setVisibleInGame_PopUp(false);
                    } else {
                        InGame_Battlefield.armyDivision = Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(0)).getArmy(Game.getCiv(Game.player.iCivID).getArmyPositionKey(0));
                        if (InGame_Battlefield.armyDivision != null) {
                            Game.menuManager.rebuildInGame_Battlefield();
                        } else {
                            Game.menuManager.setVisibleInGame_PopUp(false);
                        }
                    }
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("BattleWidth") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + BattleManager.getBattleWidth(Game.player.iCivID) + " / " + GameValues.battle.BATTLE_MAX_BATTLE_WIDTH, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.battleWidth, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("BattleWidthRefersToTheNumberOfUnitsThatCanBeDeployedInAFormationOnTheBattlefield"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Empty());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ArmyDeployment"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.battleWidth, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        public Color getColorBonus() {
            return Colors.HOVER_GOLD;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy$9, reason: invalid class name */
    class AnonymousClass9 extends ButtonStatsRectIMG_Bonuses_Style {
        AnonymousClass9(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_Civ_Regiments();
            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_CIV_POPULATION_HOVER) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DIPLOMACY);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Civilizations") + ": " + Game.lang.get("Discipline"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.discipline, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Discipline") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(nEtnPpUF.punjtSLk + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).civBonuses.Discipline * 100.0f, 10) + "%", Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.discipline, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get(gpVDKipRURuzw.CFlSZk), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        public Color getColorBonus() {
            return Colors.HOVER_GOLD;
        }
    }

    public InGame_RecruitArmy() {
        String str;
        ArrayList arrayList = new ArrayList();
        int i = CFG.PADDING + Images.boxTitleBORDERWIDTH;
        ImageManager.getImage(Images.title2).getHeight();
        int width = ImageManager.getImage(Images.insideTop).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height = ImageManager.getImage(Images.title1Red).getHeight() + ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i2 = CFG.PADDING;
        int height2 = CFG.PADDING;
        int iMax = Math.max((ImageManager.getImage(Images.battleArmy0).getHeight() * 2) + (CFG.PADDING * 3), CFG.TEXT_HEIGHT + (CFG.PADDING * 6));
        int i3 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
        if (ArmyManager.getRegimentsAvailableToUpgrade(Game.player.iCivID) > 0) {
            arrayList.add(new AnonymousClass1(Game.lang.get("UpgradeRegiments"), Game_Calendar.IMG_MANPOWER_UP, i, height2, width - (i * 2), i3, ImageManager.getImage(Game_Calendar.IMG_MANPOWER).getWidth(), 0, true));
            height2 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        int i4 = width - (i * 2);
        int i5 = ((i4 - CFG.PADDING) * 3) / 5;
        int i6 = ((i4 - CFG.PADDING) * 2) / 5;
        int width2 = ImageManager.getImage(Game_Calendar.IMG_MANPOWER).getWidth();
        arrayList.add(new AnonymousClass2(Game.lang.get("CreateNewArmy"), Game_Calendar.IMG_MANPOWER, CFG.PADDING + i + i6, height2, i5, i3, width2, 0, true));
        arrayList.add(new AnonymousClass3("" + CFG.getShortNumber(Game.getCiv(Game.player.iCivID).getArmySize()) + " / " + CFG.getShortNumber(Game.getCiv(Game.player.iCivID).iRegimentsLimit * Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE), Game_Calendar.IMG_MANPOWER, i, height2, i6, i3, width2, 0));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass4(Game.lang.get("Mercenaries"), Images.mercenaries, CFG.PADDING + i + i6, height3, i5, i3, width2, 0, true));
        arrayList.add(new AnonymousClass5("" + Game.getCiv(Game.player.iCivID).getTotalGenerals(), Images.general, i, height3, i6, i3, width2, 0));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        List<MenuElement> recruitMenuElements = getRecruitMenuElements(height4, width, i, CFG.PADDING, iMax);
        int size = recruitMenuElements.size();
        for (int i7 = 0; i7 < size; i7++) {
            arrayList.add(recruitMenuElements.get(i7));
            height4 = Math.max(height4, recruitMenuElements.get(i7).getPosY() + recruitMenuElements.get(i7).getHeight() + CFG.PADDING);
        }
        arrayList.add(new AnonymousClass6(Game.lang.get("Army"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height4, width - (Images.boxTitleBORDERWIDTH * 2), iMax));
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        String str2 = ": ";
        arrayList.add(new AnonymousClass7(Game.lang.get("MilitaryAcademy") + ": ", "" + Game.getCiv(Game.player.iCivID).getMilitaryAcademyLevel() + " / " + Game.getMilitaryAcademy_MaxLvl(Game.player.iCivID), Game_Calendar.IMG_MANPOWER, i, height5, i4, i3, ImageManager.getImage(Images.battleWidth).getWidth()));
        int height6 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass8(Game.lang.get("BattleWidth") + str2, "" + BattleManager.getBattleWidth(Game.player.iCivID) + " / " + GameValues.battle.BATTLE_MAX_BATTLE_WIDTH, Images.battleWidth, i, height6, i4, CFG.BUTTON_HEIGHT3, ImageManager.getImage(Images.battleWidth).getWidth()));
        int height7 = height6 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass9(Game.lang.get("Discipline") + str2, "" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).civBonuses.Discipline * 100.0f, 10) + "%", Images.discipline, i, height7, i4, CFG.BUTTON_HEIGHT3, ImageManager.getImage(Images.battleWidth).getWidth()));
        int height8 = height7 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass10(Game.lang.get("RegimentsLimit") + str2, CFG.getNumberWithSpaces("" + Game.getCiv(Game.player.iCivID).iRegimentsLimit), Images.regimentsLimit, i, height8, i4, CFG.BUTTON_HEIGHT3, ImageManager.getImage(Images.battleWidth).getWidth()));
        int height9 = height8 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass11(Game.lang.get("Manpower") + str2, CFG.getNumberWithSpaces("" + ((int) Game.getCiv(Game.player.iCivID).fManpower)) + " [" + ((int) (Math.min(1.0d, Game.getCiv(Game.player.iCivID).fManpower / Game.getCiv(Game.player.iCivID).fManpowerMax) * 100.0d)) + "%]", Game_Calendar.IMG_MANPOWER, i, height9, i4, CFG.BUTTON_HEIGHT3, ImageManager.getImage(Images.battleWidth).getWidth()));
        int height10 = height9 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass12(Game.lang.get("MaximumManpower") + str2, CFG.getNumberWithSpaces("" + ((int) Game.getCiv(Game.player.iCivID).fManpowerMax)), Game_Calendar.IMG_MANPOWER, i, height10, i4, CFG.BUTTON_HEIGHT3, ImageManager.getImage(Images.battleWidth).getWidth()));
        int height11 = height10 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new Text_Desc(Game.lang.get("Manpower") + ": 0% -> 100%: " + Game.lang.get("MonthsX", (int) GameValues.manpower.MANPOWER_FULL_RECOVERY_MONTHS), i, height11, i4));
        int height12 = height11 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        if (GameValues.inGame.SHOW_TO_BE_RESEARCHED_UNITS) {
            arrayList.add(new AnonymousClass13(Game.lang.get("ToBeResearched"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height12, width - (Images.boxTitleBORDERWIDTH * 2), iMax));
            height12 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int i8 = 0;
            int i9 = 0;
            for (int i10 = 3; i8 < i10; i10 = 3) {
                int i11 = 0;
                while (i11 < ArmyManager.iUnitsTypesSize) {
                    int i12 = i9;
                    int i13 = 0;
                    while (i13 < ArmyManager.lArmySize.get(i11).intValue()) {
                        if (ArmyManager.lUnitsTypes.get(i11).Line == i8 && !Game.getCiv(Game.player.iCivID).isUnitResearched(i11, i13)) {
                            arrayList.add(new AnonymousClass14(i11, i13, i, height12, i4, true, false));
                            height12 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                            i12++;
                        }
                        i13++;
                        str2 = str2;
                    }
                    i11++;
                    i9 = i12;
                }
                i8++;
            }
            str = str2;
            if (i9 == 0) {
                arrayList.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i, height12, i4, CFG.BUTTON_HEIGHT2));
                height12 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
        } else {
            str = str2;
        }
        int iMin = Math.min(height12, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, 0, width, Math.max(height12, iMin)));
        HOVER_POSX = otherMenuPosX_2 + width + CFG.PADDING;
        initMenu(new AnonymousClass15("", Game.lang.get("BattleWidth") + str + BattleManager.getBattleWidth(Game.player.iCivID), false, false, Images.title1Red), otherMenuPosX_2, height, width, iMin, arrayList, false, true);
        this.drawScrollPositionAlways = false;
    }

    public static void actionArmies() {
        if (Game.menuManager.getVisibleInGame_Armies()) {
            Game.menuManager.setVisibleInGame_Armies(false);
            return;
        }
        Game.menuManager.rebuildInGame_Armies(false, false);
        Game.menuManager.setVisibleInGame_Armies(true);
        Game.menuManager.setVisibleInGame_RecruitArmy(false);
    }

    public static void actionCreateNewArmy() {
        if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_RECRUIT_ARMY) {
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
        }
        Game.menuManager.rebuildInGame_RecruitArmy_NewArmy();
    }

    public static void actionGenerals() {
        Game.menuManager.setVisibleInGame_RecruitArmy(false);
        InGame_Generals.assignProvinceID = -1;
        InGame_Generals.assignArmyKey = "";
        Game.menuManager.rebuildInGame_Generals();
        Game.menuManager.setVisibleInGame_Generals(true);
        InGame_Generals.backButton = false;
    }

    public static void actionMercenaries() {
        if (Game.menuManager.getVisibleInGame_Armies()) {
            Game.menuManager.setVisibleInGame_Armies(false);
            return;
        }
        Game.menuManager.rebuildInGame_Mercenaries();
        Game.menuManager.setVisibleInGame_Armies(true);
        Game.menuManager.setVisibleInGame_RecruitArmy(false);
    }

    public static MenuElement_Hover getHoverMilitaryAcademy() {
        return getHoverMilitaryAcademy(true, Game.player.iCivID);
    }

    public static MenuElement_Hover getHoverMilitaryAcademy(boolean z, int i) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center(Game.lang.get("MilitaryAcademy"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_ImageFull(Images.armyMilitaryAcademyBig, 0, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        StringBuilder sbAppend = new StringBuilder().append(Game.lang.get("Level"));
        String str = LBhZogys.USuCeExSg;
        arrayList2.add(new MenuElement_HoverElement_Type_Text(sbAppend.append(str).toString(), CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(i).getMilitaryAcademyLevel() + " / " + Game.getMilitaryAcademy_MaxLvl(i), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(IwYCCQBuFGwl.aaPtbDdbKRzEkT) + str, (Game.getMilitaryAcademy_Attack(i) > 0 ? "+" : "") + CFG.getPrecision2(Game.getMilitaryAcademy_Attack(i), 100), Images.attack, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Game.getMilitaryAcademy_Attack(i) > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.HOVER_RIGHT));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("UnitsDefense") + str, (Game.getMilitaryAcademy_Defense(i) > 0 ? "+" : "") + CFG.getPrecision2(Game.getMilitaryAcademy_Defense(i), 100), Images.defense, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Game.getMilitaryAcademy_Defense(i) > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.HOVER_RIGHT));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("RegimentsLimit") + str, (Game.getMilitaryAcademy_RegimentsLimit(i) > 0 ? "+" : "") + CFG.getPrecision2(Game.getMilitaryAcademy_RegimentsLimit(i), 1), Images.regimentsLimit, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Game.getMilitaryAcademy_RegimentsLimit(i) > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.HOVER_RIGHT));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaintenanceCost") + str, "" + CFG.getPrecision2(Game.getMilitaryAcademy_MaintenanceCost(i), 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Game.getMilitaryAcademy_MaintenanceCost(i) > 0.0f ? Colors.COLOR_TEXT_MODIFIER_NEGATIVE : Colors.HOVER_RIGHT));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (z) {
            if (Game.getCiv(i).getMilitaryAcademyLevel() >= Game.getMilitaryAcademy_MaxLvl(i)) {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaximumLevel"), CFG.FONT_BOLD_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_Empty());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("UpgradeMilitaryAcademy"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Cost") + str, CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(Game.getMilitaryAcademy_Cost(i), 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(ALZmnpZHj.YJcNrjnZahavaLR) + str, CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(GameValues.militaryAcademy.MILITARY_ACADEMY_ATTACK_PER_LVL, 100), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.attack, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("UnitsDefensePerLevel") + str, CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(GameValues.militaryAcademy.MILITARY_ACADEMY_DEFENSE_PER_LVL, 100), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.defense, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("RegimentsLimitPerLevel") + str, CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(GameValues.militaryAcademy.MILITARY_ACADEMY_REGIMENTS_LIMIT_PER_LVL, 1), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.regimentsLimit, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaintenanceCost") + str, CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(GameValues.militaryAcademy.MILITARY_ACADEMY_MAINTENANCE_COST_PER_LVL, 100), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
        }
        return new MenuElement_Hover(arrayList);
    }

    public static List<MenuElement> getRecruitMenuElements(int i, int i2, int i3, int i4, int i5) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(getTitleFirstLine(i, i2, i5));
        int i6 = 1;
        int height = i + ((MenuElement) arrayList.get(arrayList.size() - 1)).getHeight() + i4;
        InGame_RecruitSameType.firstLineUnits = arrayList.size() - 1;
        int i7 = 0;
        for (int i8 = 0; i8 < ArmyManager.iUnitsTypesSize; i8++) {
            for (int i9 = 0; i9 < ArmyManager.lArmySize.get(i8).intValue(); i9++) {
                if (ArmyManager.lUnitsTypes.get(i8).Line == 0 && !ArmyManager.lArmy.get(i8).get(i9).isSettler && Game.getCiv(Game.player.iCivID).isUnitBest(i8, i9)) {
                    arrayList.add(new AnonymousClass19(i8, i9, i3, height, i2 - (i3 * 2), true, true));
                    height += ((MenuElement) arrayList.get(arrayList.size() - 1)).getHeight() + i4;
                    i7++;
                }
            }
        }
        if (i7 == 0) {
            arrayList.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i3, height, i2 - (i3 * 2), CFG.BUTTON_HEIGHT2));
            height += ((MenuElement) arrayList.get(arrayList.size() - 1)).getHeight() + CFG.PADDING;
        }
        arrayList.add(getTitleFirstLineSide(height, i2, i5));
        int height2 = height + ((MenuElement) arrayList.get(arrayList.size() - 1)).getHeight() + i4;
        InGame_RecruitSameType.flankLineElemID = arrayList.size() - 1;
        int i10 = 0;
        int i11 = 0;
        while (i11 < ArmyManager.iUnitsTypesSize) {
            int i12 = 0;
            while (i12 < ArmyManager.lArmySize.get(i11).intValue()) {
                if (ArmyManager.lUnitsTypes.get(i11).Line == i6 && !ArmyManager.lArmy.get(i11).get(i12).isSettler && Game.getCiv(Game.player.iCivID).isUnitBest(i11, i12)) {
                    arrayList.add(new AnonymousClass20(i11, i12, i3, height2, i2 - (i3 * 2), true, true));
                    height2 += ((MenuElement) arrayList.get(arrayList.size() - 1)).getHeight() + i4;
                    i10++;
                }
                i12++;
                i6 = 1;
            }
            i11++;
            i6 = 1;
        }
        if (i10 == 0) {
            arrayList.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i3, height2, i2 - (i3 * 2), CFG.BUTTON_HEIGHT2));
            height2 += ((MenuElement) arrayList.get(arrayList.size() - 1)).getHeight() + CFG.PADDING;
        }
        arrayList.add(getTitleSecondLine(height2, i2, i5));
        int height3 = height2 + ((MenuElement) arrayList.get(arrayList.size() - 1)).getHeight() + i4;
        InGame_RecruitSameType.supportLineElemID = arrayList.size() - 1;
        int i13 = 0;
        for (int i14 = 0; i14 < ArmyManager.iUnitsTypesSize; i14++) {
            for (int i15 = 0; i15 < ArmyManager.lArmySize.get(i14).intValue(); i15++) {
                if (ArmyManager.lUnitsTypes.get(i14).Line > 1 && !ArmyManager.lArmy.get(i14).get(i15).isSettler && Game.getCiv(Game.player.iCivID).isUnitBest(i14, i15)) {
                    arrayList.add(new AnonymousClass21(i14, i15, i3, height3, i2 - (i3 * 2), true, true));
                    height3 += ((MenuElement) arrayList.get(arrayList.size() - 1)).getHeight() + i4;
                    i13++;
                }
            }
        }
        if (i13 == 0) {
            arrayList.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i3, height3, i2 - (i3 * 2), CFG.BUTTON_HEIGHT2));
            height3 += ((MenuElement) arrayList.get(arrayList.size() - 1)).getHeight() + CFG.PADDING;
        }
        arrayList.add(new AnonymousClass22(Game.lang.get("Settlers"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i2 - (Images.boxTitleBORDERWIDTH * 2), i5));
        int height4 = height3 + ((MenuElement) arrayList.get(arrayList.size() - 1)).getHeight() + i4;
        int i16 = 0;
        for (int i17 = 0; i17 < ArmyManager.iUnitsTypesSize; i17++) {
            for (int i18 = 0; i18 < ArmyManager.lArmySize.get(i17).intValue(); i18++) {
                if (ArmyManager.lArmy.get(i17).get(i18).isSettler && Game.getCiv(Game.player.iCivID).isUnitBest(i17, i18)) {
                    arrayList.add(new AnonymousClass23(i17, i18, i3, height4, i2 - (i3 * 2), true, true));
                    height4 += ((MenuElement) arrayList.get(arrayList.size() - 1)).getHeight() + i4;
                    i16++;
                }
            }
        }
        if (i16 == 0) {
            arrayList.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i3, height4, i2 - (i3 * 2), CFG.BUTTON_HEIGHT2));
            height4 += ((MenuElement) arrayList.get(arrayList.size() - 1)).getHeight() + CFG.PADDING;
        }
        if (GameValues.inGame.SHOW_OBSOLETE_UNITS) {
            if (GameValues.army.CAN_RECRUIT_OBSOLETE_UNITS) {
                arrayList.add(new AnonymousClass24(Game.lang.get("Obsolete"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height4, i2 - (Images.boxTitleBORDERWIDTH * 2), i5));
            } else {
                arrayList.add(new AnonymousClass25(Game.lang.get("Obsolete"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height4, i2 - (Images.boxTitleBORDERWIDTH * 2), i5));
            }
            int height5 = height4 + ((MenuElement) arrayList.get(arrayList.size() - 1)).getHeight() + i4;
            int i19 = 0;
            for (int i20 = 0; i20 < 3; i20++) {
                int i21 = 0;
                while (i21 < ArmyManager.iUnitsTypesSize) {
                    int height6 = height5;
                    for (int i22 = 0; i22 < ArmyManager.lArmySize.get(i21).intValue(); i22++) {
                        if (ArmyManager.lUnitsTypes.get(i21).Line == i20 && Game.getCiv(Game.player.iCivID).isUnitResearched(i21, i22) && !Game.getCiv(Game.player.iCivID).isUnitBest(i21, i22)) {
                            arrayList.add(new AnonymousClass26(i21, i22, i3, height6, i2 - (i3 * 2), true, true));
                            height6 += ((MenuElement) arrayList.get(arrayList.size() - 1)).getHeight() + i4;
                            i19++;
                        }
                    }
                    i21++;
                    height5 = height6;
                }
            }
            if (i19 == 0) {
                arrayList.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i3, height5, i2 - (i3 * 2), CFG.BUTTON_HEIGHT2));
                ((MenuElement) arrayList.get(arrayList.size() - 1)).getHeight();
                int i23 = CFG.PADDING;
            }
        }
        return arrayList;
    }

    public static MenuElement getTitleFirstLine(int i, int i2, int i3) {
        return new AnonymousClass16(Game.lang.get("FirstLine"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, i, i2 - (Images.boxTitleBORDERWIDTH * 2), i3, 0);
    }

    public static MenuElement getTitleFirstLineSide(int i, int i2, int i3) {
        return new AnonymousClass17(Game.lang.get("Flank"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, i, i2 - (Images.boxTitleBORDERWIDTH * 2), i3, 1);
    }

    public static MenuElement getTitleSecondLine(int i, int i2, int i3) {
        return new AnonymousClass18(Game.lang.get("Support"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, i, i2 - (Images.boxTitleBORDERWIDTH * 2), i3, 2);
    }

    public static final void upgradeMilitaryAcademy() {
        int militaryAcademyLevel = Game.getCiv(Game.player.iCivID).getMilitaryAcademyLevel();
        int militaryAcademy_MaxLvl = Game.getMilitaryAcademy_MaxLvl(Game.player.iCivID);
        String str = gpVDKipRURuzw.zHY;
        if (militaryAcademyLevel >= militaryAcademy_MaxLvl) {
            Game.menuManager.addToastInsufficient(Game.lang.get("MaximumLevel") + ": ", "" + Game.getCiv(Game.player.iCivID).getMilitaryAcademyLevel() + str + Game.getMilitaryAcademy_MaxLvl(Game.player.iCivID), Game_Calendar.IMG_MANPOWER);
            return;
        }
        if (Game.getCiv(Game.player.iCivID).fGold < Game.getMilitaryAcademy_Cost(Game.player.iCivID)) {
            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getMilitaryAcademy_Cost(Game.player.iCivID), 100), Images.gold);
            return;
        }
        Game.getCiv(Game.player.iCivID).upgradeMilitaryAcademy();
        InGame_Info.iCivID = Game.player.iCivID;
        InGame_Info.iCivID2 = 0;
        Game.menuManager.rebuildInGame_Info(Game.lang.get("MilitaryAcademy"), Game.lang.get("Level") + ": " + Game.getCiv(Game.player.iCivID).getMilitaryAcademyLevel() + str + Game.getMilitaryAcademy_MaxLvl(Game.player.iCivID));
        InGame_Info.imgID = Images.infoGeneral;
        Game.getCiv(Game.player.iCivID).updateTotalIncomePerMonth();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), CFG.PADDING + getHeight(), false);
        ImageManager.getImage(Images.recruitArmyOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.recruitArmyOver).getWidth() / 2)) + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.recruitArmyOver).getHeight()));
        if (Game.getCiv(Game.player.iCivID).diplomacy.isAtWar()) {
            spriteBatch.setColor(sparksColor);
            sparksAnimation.draw2(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), Images.sparkHeight, false, true);
            spriteBatch.setColor(Color.WHITE);
        }
        super.draw(spriteBatch, i3, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
        if (z || Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_RECRUIT_ARMY) {
            return;
        }
        Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void updateLanguage() {
        super.updateLanguage();
        getTitle().setText(Game.lang.get("LandUnits"));
    }
}
