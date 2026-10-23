package aoc.kingdoms.lukasz.menusInGame.Civ;

import androidx.core.text.util.pRCP.IwYCCQBuFGwl;
import aoc.kingdoms.lukasz.jakowski.AI.Values.nvwi.cIUGJCqyPXfp;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FBO.idYW.HjHDSSkYG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Ages;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Keyboard;
import aoc.kingdoms.lukasz.jakowski.LanguageManager;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.map.FormableCivManager;
import aoc.kingdoms.lukasz.map.LegacyManager;
import aoc.kingdoms.lukasz.map.PeaceTreaty;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.map.RivalsManager;
import aoc.kingdoms.lukasz.map.RulersManager;
import aoc.kingdoms.lukasz.map.advisors.VjN.hQfu;
import aoc.kingdoms.lukasz.map.battles.BattleManager;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRanking;
import aoc.kingdoms.lukasz.map.diplomacy.Diplomacy;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.map.technology.Bhs.fiRhHJntP;
import aoc.kingdoms.lukasz.map.war.WarManager;
import aoc.kingdoms.lukasz.menu.ClickAnimation;
import aoc.kingdoms.lukasz.menu.ColorPicker;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.FQy.TGqtTWl;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.MessageWar;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_DiplomacyWar;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy_Alliance;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Formable;
import aoc.kingdoms.lukasz.menu_element.button.ButtonIdeology2;
import aoc.kingdoms.lukasz.menu_element.button.ButtonReligion2;
import aoc.kingdoms.lukasz.menu_element.button.ButtonResource2;
import aoc.kingdoms.lukasz.menu_element.button.ButtonRuler;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Click;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Rank;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonusFlag;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonusResource;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Empty;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Flag;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagCiv_Title;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ResourceTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Horizontal;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_HorizontalSplit;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Rank;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_SpecialEmpty;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_SpecialColor;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_RulerTitle;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static_Opinion;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2Center;
import aoc.kingdoms.lukasz.menusEditor.RJR.ATsAGKCnv;
import aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battlefield;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Alliance;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_DefensivePact;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_DemandMilitaryAccess;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_FormCiv;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Guarantee;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_LiberateCivilization;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_NonAggression;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_OfferMilitaryAccess;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Rivals;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Rivals_End;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_SellProvince;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_SendGift;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_SendInsult;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_ShareTechnology;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Ultimatum;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Union;
import aoc.kingdoms.lukasz.menusInGame.DrawOver.SQ.XjthpFh;
import aoc.kingdoms.lukasz.menusInGame.Goods.InGame_GoodsMarket;
import aoc.kingdoms.lukasz.menusInGame.InGame_CivBonuses;
import aoc.kingdoms.lukasz.menusInGame.InGame_Generals;
import aoc.kingdoms.lukasz.menusInGame.InGame_Legacies;
import aoc.kingdoms.lukasz.menusInGame.InGame_MapModes;
import aoc.kingdoms.lukasz.menusInGame.InGame_Ranking;
import aoc.kingdoms.lukasz.menusInGame.InGame_War;
import aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy;
import aoc.kingdoms.lukasz.menusScenarioEditor.YGiX.gpVDKipRURuzw;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.backends.android.surfaceview.JuyF.CvuNnwgYwe;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g3d.model.data.xlbt.LBhZogys;
import com.badlogic.gdx.graphics.g3d.model.ia.uNBYrZVGzy;
import com.badlogic.gdx.net.HttpResponseHeader;
import com.google.android.gms.internal.common.oss.ClXgFvsSKQc;
import com.google.android.gms.internal.tasks.Vhe.SwmJtrccN;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Civ extends Menu {
    public static final int ANIMATION_TIME = 60;
    public static boolean diplomacyMode = true;
    public static boolean enabledByScaleOut = false;
    public static int iActiveCivID = 0;
    public static int iMaxH_DiplomacyIcon = 0;
    public static int iRebuildToCivID = -1;
    public static int iSortID = 0;
    public static long lTime = 0;
    public static long lTime2 = 0;
    public static boolean relationsMode = false;
    public static String renameCiv = "";
    public int flagH;
    public int flagW;
    public int flagX;
    public int flagY;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonRuler {
        AnonymousClass1(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Court.iActiveCivID = InGame_Civ.iActiveCivID;
            Game.menuManager.setVisibleInGame_Civ(false);
            Game.menuManager.rebuildInGame_Court();
            Game.menuManager.setVisibleInGame_Court(true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$10, reason: invalid class name */
    class AnonymousClass10 extends TextIcon2_Rank {
        AnonymousClass10(String str, String str2, int i, int i2, int i3, int i4, int i5) {
            super(str, str2, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Civ_Population.goBackToRank = false;
            Game.menuManager.rebuildInGame_Civ_Population();
            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_CIV_POPULATION_HOVER) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DIPLOMACY);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_POPULATION);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.getCiv(InGame_Civ.iActiveCivID).getCivName() + ": " + Game.lang.get("Population"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.population, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", "" + CFG.getNumberWithSpaces("" + Game.getCiv(InGame_Civ.iActiveCivID).getPopulationTotal()), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Ranking") + ": ", "#" + InGame_Civ.getRankPopulation(InGame_Civ.iActiveCivID) + " / " + InGame_Civ.getRankCivsWithProvinces(InGame_Civ.iActiveCivID), CivilizationRanking.getCivilizationRanking_IMG_STAR_CIVID(InGame_Civ.iActiveCivID), CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("GrowthRate") + ", " + Game.lang.get("Average") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.getCiv(InGame_Civ.iActiveCivID).getAverageGrowthRate(), 100) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.populationGrowth, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Rank, aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            if (z) {
                return Colors.COLOR_POPULATION_ACTIVE;
            }
            if (getIsHovered()) {
                return Colors.COLOR_POPULATION_HOVER;
            }
            return getClickable() ? Colors.COLOR_POPULATION : Colors.BUTTON_TEXT_DISABLED;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setIsHovered(boolean z) {
            super.setIsHovered(z);
            if (!z) {
                if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_CIV_POPULATION_HOVER) {
                    Game.mapModes.setActiveViewID(Game.mapModes.MODE_DIPLOMACY);
                }
            } else if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DIPLOMACY || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DEFAULT || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_CIV_ECONOMY_HOVER) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_CIV_POPULATION_HOVER);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$100, reason: invalid class name */
    class AnonymousClass100 extends ButtonDiplomacy {
        AnonymousClass100(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 43 && InGame_LiberateCivilization.iCivID == InGame_Civ.iActiveCivID) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_LiberateCivilization(InGame_Civ.iActiveCivID);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CLICK_TOP;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$101, reason: invalid class name */
    class AnonymousClass101 extends ButtonDiplomacy {
        AnonymousClass101(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 27 && InGame_SendGift.iCivID == InGame_Civ.iActiveCivID) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_SendSpy(InGame_Civ.iActiveCivID);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover1() {
            return new Color(DiplomacyManager.COLOR_SPY.r, DiplomacyManager.COLOR_SPY.g, DiplomacyManager.COLOR_SPY.b, 0.15f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover2() {
            return new Color(DiplomacyManager.COLOR_SPY.r, DiplomacyManager.COLOR_SPY.g, DiplomacyManager.COLOR_SPY.b, 0.5f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CLICK_TOP;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$102, reason: invalid class name */
    class AnonymousClass102 extends ButtonDiplomacy {
        AnonymousClass102(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 44 && InGame_ShareTechnology.shareWithCivID == InGame_Civ.iActiveCivID) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_ShareTechnology(InGame_Civ.iActiveCivID);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CLICK_TOP;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$103, reason: invalid class name */
    class AnonymousClass103 extends ButtonDiplomacy {
        AnonymousClass103(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 41 && InGame_SellProvince.sellToCivID == InGame_Civ.iActiveCivID) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.setVisibleInGame_Civ(false);
                Game.menuManager.rebuildInGame_SellProvince(InGame_Civ.iActiveCivID);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CLICK_TOP;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$104, reason: invalid class name */
    class AnonymousClass104 extends ButtonDiplomacy {
        AnonymousClass104(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Civ_Compare.civLeft = Game.player.iCivID;
            InGame_Civ_Compare.civRight = InGame_Civ.iActiveCivID;
            Game.menuManager.rebuildInGame_Civ_Compare();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("CompareCivilizations"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.compare, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(InGame_Civ.iActiveCivID).getCivName(), "", InGame_Civ.iActiveCivID, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(Game.player.iCivID).getCivName(), "", Game.player.iCivID, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CLICK_TOP;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$105, reason: invalid class name */
    class AnonymousClass105 extends MenuTitleIMG {
        AnonymousClass105(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public void action() {
            super.action();
            if (Keyboard.keyboardActionType == Keyboard.KeyboardActionType.INGAME_RENAME_CIV) {
                Game.keyboard.hideKeyboard();
                return;
            }
            InGame_Civ.renameCiv = Game.getCiv(InGame_Civ.iActiveCivID).getCivName();
            Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.INGAME_RENAME_CIV, Game.getCiv(InGame_Civ.iActiveCivID).getCivName());
            Game.menuManager.addToastGold(Game.lang.get("CivilizationName") + ": " + Game.getCiv(InGame_Civ.iActiveCivID).getCivName(), Images.council);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public String getText() {
            return Keyboard.keyboardActionType == Keyboard.KeyboardActionType.INGAME_RENAME_CIV ? InGame_Civ.renameCiv + Keyboard.getKeyboardVerticalLine() : super.getText();
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Civ.lTime2;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$11, reason: invalid class name */
    class AnonymousClass11 extends TextIcon2_Rank {
        AnonymousClass11(String str, String str2, int i, int i2, int i3, int i4, int i5) {
            super(str, str2, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Civ_Economy.goBackToRank = false;
            Game.menuManager.rebuildInGame_Civ_Economy();
            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_CIV_ECONOMY_HOVER) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DIPLOMACY);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_ECONOMY);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.getCiv(InGame_Civ.iActiveCivID).getCivName() + ": " + Game.lang.get("Economy"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_ECONOMY, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Economy") + ": ", "" + CFG.getPrecision2(Game.getCiv(InGame_Civ.iActiveCivID).getEconomyTotal(), 100), Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_ECONOMY));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Ranking") + ": ", "#" + InGame_Civ.this.getRankEconomy(InGame_Civ.iActiveCivID) + " / " + InGame_Civ.getRankCivsWithProvinces(InGame_Civ.iActiveCivID), CivilizationRanking.getCivilizationRanking_IMG_STAR_CIVID(InGame_Civ.iActiveCivID), CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Infrastructure") + ": ", "" + CFG.getPrecision2(Game.getCiv(InGame_Civ.iActiveCivID).getInfrastructure(), 1), Images.infrastructure, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_ECONOMY));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Loans") + ": ", "" + Game.getCiv(InGame_Civ.iActiveCivID).loans.size() + " / " + Game.getLoanMaxNumber(InGame_Civ.iActiveCivID), Images.loan, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_ECONOMY));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ProsperityTier") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getProsperityLevel(InGame_Civ.iActiveCivID), CFG.FONT_BOLD_SMALL, Colors.getEconomyColor((int) (Game.getCiv(InGame_Civ.iActiveCivID).fProsperity_AverageEconomy / GameValues.prosperity.PROSPERITY_INCOME), 1.0f)));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.goldPositive, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MonthlyIncomeEconomy") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(Game.getCiv(InGame_Civ.iActiveCivID).fProsperity_AverageEconomy * GameValues.prosperity.PROSPERITY_INCOME, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.goldPositive, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setIsHovered(boolean z) {
            super.setIsHovered(z);
            if (!z) {
                if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_CIV_ECONOMY_HOVER) {
                    Game.mapModes.setActiveViewID(Game.mapModes.MODE_DIPLOMACY);
                }
            } else if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DIPLOMACY || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DEFAULT || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_CIV_POPULATION_HOVER) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_CIV_ECONOMY_HOVER);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$12, reason: invalid class name */
    class AnonymousClass12 extends TextIcon2_Horizontal {
        AnonymousClass12(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_Civ(false);
            InGame_GoodsMarket.iActiveCivID = InGame_Civ.iActiveCivID;
            Game.menuManager.rebuildInGame_GoodsMarket();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            InGame_MapModes.actionGoods();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.getCiv(InGame_Civ.iActiveCivID).getCivName() + ": " + Game.lang.get("ProducedGoods"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.goods, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("UniqueResources") + ": ", "" + Game.getCiv(InGame_Civ.iActiveCivID).iUniqueResources, Images.goods, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("LargestProducer") + ": ", "" + Game.getCiv(InGame_Civ.iActiveCivID).largestProducerNum, Images.goods, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (Game.getCiv(InGame_Civ.iActiveCivID).largestProducerNum > 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                for (int i = 0; i < ResourcesManager.worldResources_LargestProducer.size(); i++) {
                    if (InGame_Civ.iActiveCivID == ResourcesManager.worldResources_LargestProducer.get(i).intValue()) {
                        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(ResourcesManager.lResources.get(i).Name, CFG.FONT_REGULAR_SMALL));
                        arrayList2.add(new MenuElement_HoverElement_Type_ResourceTitle(i, CFG.PADDING, 0));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    }
                }
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$13, reason: invalid class name */
    class AnonymousClass13 extends TextIcon2_Horizontal {
        AnonymousClass13(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Legacies.iActiveCivID = InGame_Civ.iActiveCivID;
            Game.menuManager.setViewIDWithoutAnimation(View.IN_GAME_LEGACIES);
            Game.menuManager.setOrderOfMenu_InGameLegacies();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            StringBuilder sbAppend = new StringBuilder().append(Game.getCiv(InGame_Civ.iActiveCivID).getCivName());
            String str = HjHDSSkYG.jupIoxKHL;
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(sbAppend.append(str).append(Game.lang.get("Legacy")).toString(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.legacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("UnlockedLegacy") + str, "" + Game.getCiv(InGame_Civ.iActiveCivID).getLegaciesUnlocked(), Images.legacy, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            for (int i = 0; i < LegacyManager.iLegacyGroupsSize; i++) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(LegacyManager.legacyGroups.get(i) + str, CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getCiv(InGame_Civ.iActiveCivID).getLegaciesUnlocked(i), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.legacy, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$14, reason: invalid class name */
    class AnonymousClass14 extends TextIcon2_Horizontal {
        AnonymousClass14(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_Civ_UnlockedTechnologies();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.getCiv(InGame_Civ.iActiveCivID).getCivName() + ": " + Game.lang.get("UnlockedTechnologies"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Technologies") + ": ", "" + Game.getCiv(InGame_Civ.iActiveCivID).getResearchedTechnologies(), Game_Calendar.IMG_TECHNOLOGY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ResearchPerMonth") + ": ", "" + CFG.getPrecision2(Game.getCiv(InGame_Civ.iActiveCivID).fResearchPerMonth, 100), Game_Calendar.IMG_TECHNOLOGY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$15, reason: invalid class name */
    class AnonymousClass15 extends TextIcon2_Horizontal {
        AnonymousClass15(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_Civ_UnlockedAdvantages();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            StringBuilder sbAppend = new StringBuilder().append(Game.getCiv(InGame_Civ.iActiveCivID).getCivName()).append(": ");
            LanguageManager languageManager = Game.lang;
            String str = cIUGJCqyPXfp.anVpikUidj;
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(sbAppend.append(languageManager.get(str)).toString(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.advantages, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(str) + ": ", "" + Game.getCiv(InGame_Civ.iActiveCivID).iAdvantagesSize, Images.advantages, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$16, reason: invalid class name */
    class AnonymousClass16 extends TextIcon2_Horizontal {
        AnonymousClass16(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_Civ_Regiments();
            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_CIV_POPULATION_HOVER) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DIPLOMACY);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            if (Game.getCiv(InGame_Civ.iActiveCivID).getCapitalProvinceID() < 0) {
                this.menuElementHover = null;
                return;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Civilizations") + ": " + Game.lang.get("RegimentsLimit"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.regimentsLimit, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("RegimentsLimit") + ": ", "" + Game.getCiv(InGame_Civ.iActiveCivID).iRegimentsLimit, Images.regimentsLimit, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
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
            if (Game.getCiv(InGame_Civ.iActiveCivID).civBonuses.RegimentsLimit > 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Bonuses") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getCiv(InGame_Civ.iActiveCivID).civBonuses.RegimentsLimit, CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.regimentsLimit, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.iVassalsSize > 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Vassals") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (GameValues.army.REGIMENTS_LIMIT_PER_VASSAL * Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.iVassalsSize), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.vassal, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("LocalManpower") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getCiv(InGame_Civ.iActiveCivID).getRegimentsLimit_Manpower(), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            float regimentsLimit_FromAllianceSpecial = Game.getCiv(InGame_Civ.iActiveCivID).getRegimentsLimit_FromAllianceSpecial();
            if (regimentsLimit_FromAllianceSpecial > 0.0f) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Alliances") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(regimentsLimit_FromAllianceSpecial, 1), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.alliance, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.getCiv(InGame_Civ.iActiveCivID).getPuppetOfCivID() != InGame_Civ.iActiveCivID) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Vassal") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(GameValues.army.REGIMENTS_LIMIT_VASSAL * 100.0f, 1) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.vassal, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumManpower") + ": ", "" + CFG.getNumberWithSpaces("" + ((int) Game.getCiv(InGame_Civ.iActiveCivID).fManpowerMax)), Game_Calendar.IMG_MANPOWER_UP, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$17, reason: invalid class name */
    class AnonymousClass17 extends TextIcon2_Horizontal {
        AnonymousClass17(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Civ.actionCivBonuses();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            if (Game.getCiv(InGame_Civ.iActiveCivID).getCapitalProvinceID() < 0) {
                this.menuElementHover = null;
                return;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("CivilizationBonuses"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(CivilizationRanking.getCivilizationRank_IMG(InGame_Civ.iActiveCivID), CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Discipline") + ": ", CFG.getPrecision2(Game.getCiv(InGame_Civ.iActiveCivID).civBonuses.Discipline * 100.0f, 100) + "%", Images.discipline, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$18, reason: invalid class name */
    class AnonymousClass18 extends TextIcon2_Horizontal {
        int lastValue;

        AnonymousClass18(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
            this.lastValue = 0;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Civ.iActiveCivID != Game.player.iCivID) {
                Game.menuManager.rebuildInGame_Civ_CapitalCity();
                if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_CIV_POPULATION_HOVER) {
                    Game.mapModes.setActiveViewID(Game.mapModes.MODE_DIPLOMACY);
                    return;
                }
                return;
            }
            if (Game.getCiv(Game.player.iCivID).getCapitalLevel() >= Game.getCapital_MaxLvl(Game.player.iCivID)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("MaximumLevel") + ": ", "" + Game.getCiv(Game.player.iCivID).getCapitalLevel() + " / " + Game.getCapital_MaxLvl(Game.player.iCivID), Images.capital);
            } else if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 8) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_UpgradeCapital();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            if (Game.getCiv(InGame_Civ.iActiveCivID).getCapitalProvinceID() >= 0) {
                this.menuElementHover = InGame_Court_Government.getHoverCapitalCity(InGame_Civ.iActiveCivID == Game.player.iCivID, InGame_Civ.iActiveCivID);
            } else {
                this.menuElementHover = null;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != Game.getCiv(InGame_Civ.iActiveCivID).getCapitalLevel()) {
                this.lastValue = Game.getCiv(InGame_Civ.iActiveCivID).getCapitalLevel();
                setText(ATsAGKCnv.CchQDTwYTsfQoq + this.lastValue);
            }
            return this.sText;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$19, reason: invalid class name */
    class AnonymousClass19 extends TextIcon2_Horizontal {
        int lastValue;

        AnonymousClass19(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
            this.lastValue = 0;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Civ.iActiveCivID != Game.player.iCivID) {
                Game.menuManager.rebuildInGame_Civ_MilitaryAcademy();
                if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_CIV_POPULATION_HOVER) {
                    Game.mapModes.setActiveViewID(Game.mapModes.MODE_DIPLOMACY);
                    return;
                }
                return;
            }
            if (Game.getCiv(Game.player.iCivID).getMilitaryAcademyLevel() >= Game.getMilitaryAcademy_MaxLvl(Game.player.iCivID)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("MaximumLevel") + ClXgFvsSKQc.JWLjLXlQvJ, "" + Game.getCiv(Game.player.iCivID).getMilitaryAcademyLevel() + " / " + Game.getMilitaryAcademy_MaxLvl(Game.player.iCivID), Game_Calendar.IMG_MANPOWER);
            } else if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 2) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_UpgradeMilitaryAcademy();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_RecruitArmy.getHoverMilitaryAcademy(InGame_Civ.iActiveCivID == Game.player.iCivID, InGame_Civ.iActiveCivID);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != Game.getCiv(InGame_Civ.iActiveCivID).getMilitaryAcademyLevel()) {
                this.lastValue = Game.getCiv(InGame_Civ.iActiveCivID).getMilitaryAcademyLevel();
                setText("" + this.lastValue);
            }
            return this.sText;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonFlag {
        AnonymousClass2(int i, int i2, boolean z) {
            super(i, i2, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getColorPicker().getVisible()) {
                Game.menuManager.getColorPicker().hideColorPicker();
                return;
            }
            ColorPicker.ACTIVE_CIV_ID = InGame_Civ.iActiveCivID;
            Game.menuManager.getColorPicker().setActiveRGBColor(Game.getCiv(InGame_Civ.iActiveCivID).getR(), Game.getCiv(InGame_Civ.iActiveCivID).getG(), Game.getCiv(InGame_Civ.iActiveCivID).getB());
            Game.menuManager.getColorPicker().setVisible(true, ColorPicker.PickerAction.CIV_COLOR_INGAME);
            Game.menuManager.getColorPicker().setPosX((CFG.GAME_WIDTH - CFG.BUTTON_WIDTH) - Game.menuManager.getColorPicker().getWidth());
            Game.menuManager.getColorPicker().setPosY(CFG.GAME_HEIGHT / 10);
            Game.menuManager.setVisibleInGame_Civ(false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ShowHideColorPicker"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (Game.getCiv(InGame_Civ.iActiveCivID).getPuppetOfCivID() != InGame_Civ.iActiveCivID) {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.lang.get(Game_Ages.getLord()) + ": ", Game.getCiv(Game.getCiv(InGame_Civ.iActiveCivID).getPuppetOfCivID()).getCivName(), Game.getCiv(InGame_Civ.iActiveCivID).getPuppetOfCivID(), CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("CapitalCity") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(InGame_Civ.iActiveCivID).getCapitalLevel() + " / " + Game.getCapital_MaxLvl(InGame_Civ.iActiveCivID), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.capital, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MilitaryAcademy") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(InGame_Civ.iActiveCivID).getMilitaryAcademyLevel() + " / " + Game.getMilitaryAcademy_MaxLvl(InGame_Civ.iActiveCivID), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(hQfu.qFjsbFb) + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(InGame_Civ.iActiveCivID).getMilitaryAcademyForGeneralsLevel() + " / " + Game.getMilitaryAcademyForGenerals_MaxLvl(InGame_Civ.iActiveCivID), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.general, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("SupremeCourt") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(InGame_Civ.iActiveCivID).getSupremeCourtLevel() + " / " + Game.getSupremeCourt_MaxLvl(InGame_Civ.iActiveCivID), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.stability, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (Game.getCiv(InGame_Civ.iActiveCivID).canBuildNuke || Game.getCiv(InGame_Civ.iActiveCivID).getNuclearReactorLevel() > 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("NuclearReactor") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(InGame_Civ.iActiveCivID).getNuclearReactorLevel() + " / " + Game.getNuclearReactor_MaxLvl(InGame_Civ.iActiveCivID), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.nuke, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.getCiv(InGame_Civ.iActiveCivID).canBuildNuke) {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("NuclearWeapons"), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.nuke, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AtomicBombs") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getCiv(InGame_Civ.iActiveCivID).getNukes(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.nuke, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag, aoc.kingdoms.lukasz.menu_element.button.Button
        protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f));
            Renderer.drawBox(spriteBatch, Images.statsRectBG, InGame_Civ.this.flagX + i, InGame_Civ.this.flagY + i2, InGame_Civ.this.flagW, InGame_Civ.this.flagH, 1.0f);
            spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f));
            Images.gradientXY.draw(spriteBatch, InGame_Civ.this.flagX + i, InGame_Civ.this.flagY + i2, InGame_Civ.this.flagW, InGame_Civ.this.flagH);
            spriteBatch.setColor(Color.WHITE);
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT.r, Colors.COLOR_GRADIENT.g, Colors.COLOR_GRADIENT.b, 0.55f));
            Images.gradientXY.draw(spriteBatch, InGame_Civ.this.flagX + i, InGame_Civ.this.flagY + i2, InGame_Civ.this.flagW, InGame_Civ.this.flagH / 2, false, true);
            Images.gradientXY.draw(spriteBatch, InGame_Civ.this.flagX + i, InGame_Civ.this.flagY + (InGame_Civ.this.flagH / 2) + i2, InGame_Civ.this.flagW, InGame_Civ.this.flagH / 2, false, false);
            Images.gradientFull.draw(spriteBatch, InGame_Civ.this.flagX + i, ((InGame_Civ.this.flagY + InGame_Civ.this.flagH) - 2) + i2, InGame_Civ.this.flagW, 1);
            Images.gradientFull.draw(spriteBatch, InGame_Civ.this.flagX + i, InGame_Civ.this.flagY + 1 + i2, InGame_Civ.this.flagW, 1);
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.2f));
            Images.gradientFull.draw(spriteBatch, InGame_Civ.this.flagX + i, InGame_Civ.this.flagY + i2, InGame_Civ.this.flagW, 1);
            Images.gradientFull.draw(spriteBatch, InGame_Civ.this.flagX + i, ((InGame_Civ.this.flagY + InGame_Civ.this.flagH) - 1) + i2, InGame_Civ.this.flagW, 1);
            spriteBatch.setColor(Color.WHITE);
            if (getIsHovered()) {
                spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 1.0f));
                Renderer.drawBox(spriteBatch, Images.statsRectBGBorder, InGame_Civ.this.flagX + i, InGame_Civ.this.flagY + i2, InGame_Civ.this.flagW, InGame_Civ.this.flagH, 1.0f);
                spriteBatch.setColor(Color.WHITE);
            }
            super.drawButtonBG(spriteBatch, i, i2, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag
        public int getFlagCivID() {
            return InGame_Civ.iActiveCivID;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$20, reason: invalid class name */
    class AnonymousClass20 extends TextIcon2_Horizontal {
        int lastValue;

        AnonymousClass20(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
            this.lastValue = 0;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Civ.iActiveCivID != Game.player.iCivID) {
                Game.menuManager.rebuildInGame_Civ_MilitaryAcademy();
                if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_CIV_POPULATION_HOVER) {
                    Game.mapModes.setActiveViewID(Game.mapModes.MODE_DIPLOMACY);
                    return;
                }
                return;
            }
            if (Game.getCiv(Game.player.iCivID).getMilitaryAcademyForGeneralsLevel() >= Game.getMilitaryAcademyForGenerals_MaxLvl(Game.player.iCivID)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("MaximumLevel") + ": ", "" + Game.getCiv(Game.player.iCivID).getMilitaryAcademyForGeneralsLevel() + ATsAGKCnv.NwhvcdVpV + Game.getMilitaryAcademyForGenerals_MaxLvl(Game.player.iCivID), Images.general);
            } else if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 3) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_UpgradeMilitaryAcademyForGenerals();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Generals.getHoverMilitaryAcademyForGenerals(InGame_Civ.iActiveCivID == Game.player.iCivID, InGame_Civ.iActiveCivID);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != Game.getCiv(InGame_Civ.iActiveCivID).getMilitaryAcademyForGeneralsLevel()) {
                this.lastValue = Game.getCiv(InGame_Civ.iActiveCivID).getMilitaryAcademyForGeneralsLevel();
                setText("" + this.lastValue);
            }
            return this.sText;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$21, reason: invalid class name */
    class AnonymousClass21 extends TextIcon2_Horizontal {
        float lastValue;

        AnonymousClass21(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
            this.lastValue = 0.0f;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_Civ_AggressiveExpansion();
            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_CIV_POPULATION_HOVER) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DIPLOMACY);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            if (Game.getCiv(InGame_Civ.iActiveCivID).getCapitalProvinceID() >= 0) {
                this.menuElementHover = InGame_Civ.getHover_AggressiveExpansion(InGame_Civ.iActiveCivID, true);
            } else {
                this.menuElementHover = null;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != Game.getCiv(InGame_Civ.iActiveCivID).getAggressiveExpansion()) {
                this.lastValue = Game.getCiv(InGame_Civ.iActiveCivID).getAggressiveExpansion();
                setText("" + CFG.getPrecision2(Game.getCiv(InGame_Civ.iActiveCivID).getAggressiveExpansion(), Game.getCiv(InGame_Civ.iActiveCivID).getAggressiveExpansion() < 100.0f ? 10 : 1));
            }
            return this.sText;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$22, reason: invalid class name */
    class AnonymousClass22 extends TextIcon2_Horizontal {
        float lastValue;

        AnonymousClass22(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
            this.lastValue = 0.0f;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_Civ_AggressiveExpansion();
            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_CIV_POPULATION_HOVER) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DIPLOMACY);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            if (Game.getCiv(InGame_Civ.iActiveCivID).getCapitalProvinceID() >= 0) {
                this.menuElementHover = InGame_Civ.getHover_WarWeariness(InGame_Civ.iActiveCivID, true);
            } else {
                this.menuElementHover = null;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != Game.getCiv(InGame_Civ.iActiveCivID).getWarWeariness()) {
                this.lastValue = Game.getCiv(InGame_Civ.iActiveCivID).getWarWeariness();
                setText(CFG.getPrecision2(Game.getCiv(InGame_Civ.iActiveCivID).getWarWeariness(), 1) + "%");
            }
            return this.sText;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$23, reason: invalid class name */
    class AnonymousClass23 extends TextIcon2_Horizontal {
        AnonymousClass23(String str, int i, int i2, int i3, int i4, int i5, int i6) {
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
            if (Game.getCiv(InGame_Civ.iActiveCivID).getCapitalProvinceID() < 0) {
                this.menuElementHover = null;
                return;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("BattleWidth") + ": ", "" + BattleManager.getBattleWidth(InGame_Civ.iActiveCivID) + " / " + GameValues.battle.BATTLE_MAX_BATTLE_WIDTH, Images.battleWidth, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Empty());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(cIUGJCqyPXfp.ZqATLD), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.battleWidth, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$24, reason: invalid class name */
    class AnonymousClass24 extends Text_Title_Diplomacy {
        AnonymousClass24(String str, int i, int i2, int i3, int i4, boolean z) {
            super(str, i, i2, i3, i4, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Civ.diplomacyMode = !InGame_Civ.diplomacyMode;
            if (Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_DIPLOMACY) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DIPLOMACY);
            }
            InGame_Civ.iRebuildToCivID = InGame_Civ.iActiveCivID;
            Game.menuManager.rebuildInGame_Civ(true);
            InGame_Civ.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return Game.soundsManager.getTab();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$25, reason: invalid class name */
    class AnonymousClass25 extends Text_Title_Diplomacy {
        AnonymousClass25(String str, int i, int i2, int i3, int i4, boolean z) {
            super(str, i, i2, i3, i4, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Civ.diplomacyMode = !InGame_Civ.diplomacyMode;
            if (Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_DIPLOMACY) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DIPLOMACY);
            }
            InGame_Civ.iRebuildToCivID = InGame_Civ.iActiveCivID;
            Game.menuManager.rebuildInGame_Civ(true);
            InGame_Civ.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return Game.soundsManager.getTab();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$26, reason: invalid class name */
    class AnonymousClass26 extends Text_Title_Diplomacy {
        AnonymousClass26(String str, int i, int i2, int i3, int i4, boolean z) {
            super(str, i, i2, i3, i4, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Civ.diplomacyMode = !InGame_Civ.diplomacyMode;
            if (Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_DIPLOMACY) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DIPLOMACY);
            }
            InGame_Civ.iRebuildToCivID = InGame_Civ.iActiveCivID;
            Game.menuManager.rebuildInGame_Civ(true);
            InGame_Civ.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return Game.soundsManager.getTab();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$27, reason: invalid class name */
    class AnonymousClass27 extends Text_Title_Diplomacy {
        AnonymousClass27(String str, int i, int i2, int i3, int i4, boolean z) {
            super(str, i, i2, i3, i4, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Civ.diplomacyMode = !InGame_Civ.diplomacyMode;
            if (Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_DIPLOMACY) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DIPLOMACY);
            }
            InGame_Civ.iRebuildToCivID = InGame_Civ.iActiveCivID;
            Game.menuManager.rebuildInGame_Civ(true);
            InGame_Civ.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return Game.soundsManager.getTab();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$28, reason: invalid class name */
    class AnonymousClass28 extends Text_Static_Opinion {
        AnonymousClass28(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, i7, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Civ.diplomacyMode = !InGame_Civ.diplomacyMode;
            if (Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_DIPLOMACY) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DIPLOMACY);
            }
            InGame_Civ.iRebuildToCivID = InGame_Civ.iActiveCivID;
            Game.menuManager.rebuildInGame_Civ(true);
            InGame_Civ.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Civ.getHoverBetweenCivilizations(InGame_Civ.iActiveCivID, Game.player.iCivID, false, false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return Game.soundsManager.getTab();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$29, reason: invalid class name */
    class AnonymousClass29 extends Text_Static_Opinion {
        AnonymousClass29(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, i7, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Civ.diplomacyMode = !InGame_Civ.diplomacyMode;
            if (Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_DIPLOMACY) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DIPLOMACY);
            }
            InGame_Civ.iRebuildToCivID = InGame_Civ.iActiveCivID;
            Game.menuManager.rebuildInGame_Civ(true);
            InGame_Civ.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Civ.getHoverBetweenCivilizations(InGame_Civ.iActiveCivID, Game.player.iCivID, false, false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return Game.soundsManager.getTab();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$3, reason: invalid class name */
    class AnonymousClass3 extends TextIcon2_Horizontal {
        int lastValue;

        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
            this.lastValue = 0;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_CurrentSituation() && !MenuManager.currentSituationMode) {
                Game.menuManager.setVisibleInGame_CurrentSituation(false);
                return;
            }
            InGame_Civ_Compare.civLeft_Rank = -1;
            InGame_Civ_Compare.civRight_Rank = -1;
            InGame_Ranking.sSearch = "";
            Game.menuManager.rebuildInGame_CurrentSituation_Ranking();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = CivilizationRanking.getHover_CivilizationRanking(InGame_Civ.iActiveCivID, true, false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != Game.getCiv(InGame_Civ.iActiveCivID).iCivRankPosition) {
                this.lastValue = Game.getCiv(InGame_Civ.iActiveCivID).iCivRankPosition;
                setText("" + (this.lastValue > 0 ? "" + this.lastValue : "---"));
            }
            return this.sText;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$30, reason: invalid class name */
    class AnonymousClass30 extends TextIcon2_HorizontalSplit {
        AnonymousClass30(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Civ.diplomacyMode = !InGame_Civ.diplomacyMode;
            if (Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_DIPLOMACY) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DIPLOMACY);
            }
            InGame_Civ.iRebuildToCivID = InGame_Civ.iActiveCivID;
            Game.menuManager.rebuildInGame_Civ(true);
            InGame_Civ.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return Game.soundsManager.getTab();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$31, reason: invalid class name */
    class AnonymousClass31 extends TextIcon2_HorizontalSplit {
        int id;

        AnonymousClass31(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
            this.id = 0;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Civ_List.civsList.clear();
            InGame_Civ_List.civsListTitle = Game.lang.get(Game.alliancesSpecial.get(Game.getCiv(InGame_Civ.iActiveCivID).inAlliance.get(this.id).intValue()).Name_Alliance);
            InGame_Civ_List.civsListTitle2 = Game.getCiv(InGame_Civ.iActiveCivID).getCivName();
            InGame_Civ_List.civsList.add(Integer.valueOf(Game.alliancesSpecial.get(Game.getCiv(InGame_Civ.iActiveCivID).inAlliance.get(this.id).intValue()).iLeaderCivID));
            for (int size = Game.alliancesSpecial.get(Game.getCiv(InGame_Civ.iActiveCivID).inAlliance.get(this.id).intValue()).firstTier.size() - 1; size >= 0; size--) {
                InGame_Civ_List.addCiv(Game.alliancesSpecial.get(Game.getCiv(InGame_Civ.iActiveCivID).inAlliance.get(this.id).intValue()).firstTier.get(size).intValue());
            }
            for (int size2 = Game.alliancesSpecial.get(Game.getCiv(InGame_Civ.iActiveCivID).inAlliance.get(this.id).intValue()).secondTier.size() - 1; size2 >= 0; size2--) {
                InGame_Civ_List.addCiv(Game.alliancesSpecial.get(Game.getCiv(InGame_Civ.iActiveCivID).inAlliance.get(this.id).intValue()).secondTier.get(size2).intValue());
            }
            InGame_Civ_List.addCiv(InGame_Civ.iActiveCivID);
            Game.menuManager.rebuildInGame_Civ_List();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return Game.soundsManager.getTab();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setCurrent(int i) {
            this.id = i;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$32, reason: invalid class name */
    class AnonymousClass32 extends Text_Static {
        AnonymousClass32(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(InGame_Civ.iActiveCivID).getCivName(), "", InGame_Civ.iActiveCivID, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("LibertyDesire") + ": ", CFG.getPrecision2(Game.getCiv(Game.getCiv(InGame_Civ.iActiveCivID).getPuppetOfCivID()).diplomacy.getVassal_LibertyDesire(InGame_Civ.iActiveCivID), 10) + "%", Images.revolutionRisk, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return this.sText;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$33, reason: invalid class name */
    class AnonymousClass33 extends TextIcon2_HorizontalSplit {
        AnonymousClass33(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Civ_List.civsList.clear();
            InGame_Civ_List.civsListTitle = Game.lang.get(Game_Ages.getLord());
            InGame_Civ_List.civsListTitle2 = Game.getCiv(InGame_Civ.iActiveCivID).getCivName();
            InGame_Civ_List.civsList.add(Integer.valueOf(InGame_Civ.iActiveCivID));
            InGame_Civ_List.civsList.add(Integer.valueOf(Game.getCiv(InGame_Civ.iActiveCivID).getPuppetOfCivID()));
            Game.menuManager.rebuildInGame_Civ_List();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$34, reason: invalid class name */
    class AnonymousClass34 extends ButtonDiplomacy {
        AnonymousClass34(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(Game.player.iCivID).getCivName(), "", Game.player.iCivID, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Provinces") + ": ", CFG.FONT_BOLD, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + Game.getCiv(Game.player.iCivID).getNumOfProvinces(), CFG.FONT_BOLD, Colors.HOVER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover1() {
            return new Color(DiplomacyManager.COLOR_RED.r, DiplomacyManager.COLOR_RED.g, DiplomacyManager.COLOR_RED.b, 0.15f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover2() {
            return new Color(DiplomacyManager.COLOR_RED.r, DiplomacyManager.COLOR_RED.g, DiplomacyManager.COLOR_RED.b, 0.5f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getIsHovered() {
            return true;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CLICK_TOP;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$35, reason: invalid class name */
    class AnonymousClass35 extends ButtonDiplomacy {
        AnonymousClass35(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DIPLOMACY_IMPROVE_RELATIONS) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DIPLOMACY);
            } else {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DIPLOMACY_IMPROVE_RELATIONS);
            }
            InGame_Civ.iRebuildToCivID = InGame_Civ.iActiveCivID;
            Game.menuManager.rebuildInGame_Civ(true);
            InGame_Civ.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ImproveRelations"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.relationsUp, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("SelectOnMap"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover1() {
            return new Color(DiplomacyManager.COLOR_GREEN.r, DiplomacyManager.COLOR_GREEN.g, DiplomacyManager.COLOR_GREEN.b, 0.15f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover2() {
            return new Color(DiplomacyManager.COLOR_GREEN.r, DiplomacyManager.COLOR_GREEN.g, DiplomacyManager.COLOR_GREEN.b, 0.5f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getIsHovered() {
            return super.getIsHovered() || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DIPLOMACY_IMPROVE_RELATIONS;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CLICK_TOP;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$36, reason: invalid class name */
    class AnonymousClass36 extends ButtonDiplomacy {
        AnonymousClass36(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DIPLOMACY_DAMAGE_RELATIONS) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DIPLOMACY);
            } else {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DIPLOMACY_DAMAGE_RELATIONS);
            }
            InGame_Civ.iRebuildToCivID = InGame_Civ.iActiveCivID;
            Game.menuManager.rebuildInGame_Civ(true);
            InGame_Civ.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(SwmJtrccN.GVWvkabbzIEN), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.relationsDown, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("SelectOnMap"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover1() {
            return new Color(DiplomacyManager.COLOR_RED.r, DiplomacyManager.COLOR_RED.g, DiplomacyManager.COLOR_RED.b, 0.15f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover2() {
            return new Color(DiplomacyManager.COLOR_RED.r, DiplomacyManager.COLOR_RED.g, DiplomacyManager.COLOR_RED.b, 0.5f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getIsHovered() {
            return super.getIsHovered() || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DIPLOMACY_DAMAGE_RELATIONS;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CLICK_TOP;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$37, reason: invalid class name */
    class AnonymousClass37 extends ButtonDiplomacy {
        AnonymousClass37(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Civ.actionRivals();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ChooseYourRivals"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.rivals, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            StringBuilder sbAppend = new StringBuilder().append(Game.lang.get("Rivals"));
            String str = gpVDKipRURuzw.sunfxjKkWNCQf;
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(sbAppend.append(str).toString(), "" + Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.rivals.size() + " / " + GameValues.rivals.RIVALS_LIMIT, Images.rivals, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumManpower") + str, "+" + CFG.getPrecision2(Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.rivals.size() * GameValues.rivals.RIVAL_MANPOWER_MIN, 1), Game_Calendar.IMG_MANPOWER, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, !Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.rivals.isEmpty() ? Colors.HOVER_GOLD : Colors.HOVER_NEUTRAL));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(IwYCCQBuFGwl.lIbckx) + str, "+" + CFG.getPrecision2(Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.rivals.size() * GameValues.rivals.RIVAL_LEGACY_MIN, 100), Images.legacy, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, !Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.rivals.isEmpty() ? Colors.HOVER_GOLD : Colors.HOVER_NEUTRAL));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (!Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.rivals.isEmpty()) {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                if (!Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.rivals.isEmpty()) {
                    Iterator<Map.Entry<Integer, Diplomacy.DiplomacyData>> it = Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.rivals.entrySet().iterator();
                    while (it.hasNext()) {
                        Diplomacy.DiplomacyData value = it.next().getValue();
                        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(value.iCivID).getCivName(), "", value.iCivID, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD, Colors.HOVER_GOLD));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    }
                }
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover1() {
            return new Color(DiplomacyManager.COLOR_RED.r, DiplomacyManager.COLOR_RED.g, DiplomacyManager.COLOR_RED.b, 0.15f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover2() {
            return new Color(DiplomacyManager.COLOR_RED.r, DiplomacyManager.COLOR_RED.g, DiplomacyManager.COLOR_RED.b, 0.5f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CLICK_TOP;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$38, reason: invalid class name */
    class AnonymousClass38 extends ButtonDiplomacy {
        AnonymousClass38(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 47) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_AllianceList();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover1() {
            return new Color(DiplomacyManager.COLOR_ALLIANCE.r, DiplomacyManager.COLOR_ALLIANCE.g, DiplomacyManager.COLOR_ALLIANCE.b, 0.15f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover2() {
            return new Color(DiplomacyManager.COLOR_ALLIANCE.r, DiplomacyManager.COLOR_ALLIANCE.g, DiplomacyManager.COLOR_ALLIANCE.b, 0.5f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CLICK_TOP;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$39, reason: invalid class name */
    class AnonymousClass39 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass39(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, i7, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Civ.relationsMode = !InGame_Civ.relationsMode;
            InGame_Civ.iRebuildToCivID = InGame_Civ.iActiveCivID;
            Game.menuManager.rebuildInGame_Civ(true);
            InGame_Civ.lTime = 0L;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$4, reason: invalid class name */
    class AnonymousClass4 extends TextIcon2_Horizontal {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_CivRank();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = CivilizationRanking.buildElementHover(InGame_Civ.iActiveCivID, Game.getCiv(InGame_Civ.iActiveCivID).iCivRankID);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$40, reason: invalid class name */
    class AnonymousClass40 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass40(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, i7, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_Civ(false);
            InGame_Court.iActiveCivID = Game.player.iCivID;
            InGame_CourtOptions.iActiveID = InGame_CourtOptions.iGovernmentID;
            InGame_CourtOptions2.disableAllViews();
            Game.menuManager.rebuildInGame_Government();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$41, reason: invalid class name */
    class AnonymousClass41 extends ButtonFlag_Formable {
        AnonymousClass41(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_Civ(false);
            Game.menuManager.setVisibleInGame_CivBonuses(false);
            InGame_FormCiv.GO_BACK_TO_COURT = false;
            Game.menuManager.rebuildInGame_FormCiv(getCurrent());
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_FORM_CIV);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Formable, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = FormableCivManager.getHover(getCurrent());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$42, reason: invalid class name */
    class AnonymousClass42 extends Text_StaticBG_RulerTitle {
        int id;

        AnonymousClass42(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_Civ(false);
            Game.menuManager.setVisibleInGame_CivBonuses(false);
            InGame_FormCiv.GO_BACK_TO_COURT = false;
            Game.menuManager.rebuildInGame_FormCiv(getCurrent());
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_FORM_CIV);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = FormableCivManager.getHover(getCurrent());
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static, aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getCurrent() {
            return this.id;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setCurrent(int i) {
            this.id = i;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$43, reason: invalid class name */
    class AnonymousClass43 extends ButtonStatsRectIMG_Bonuses {
        int id;

        AnonymousClass43(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_Civ(false);
            Game.menuManager.setVisibleInGame_CivBonuses(false);
            InGame_FormCiv.GO_BACK_TO_COURT = false;
            Game.menuManager.rebuildInGame_FormCiv(getCurrent());
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_FORM_CIV);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = FormableCivManager.getHover(getCurrent());
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.HOVER_GOLD;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getCurrent() {
            return this.id;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setCurrent(int i) {
            this.id = i;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$44, reason: invalid class name */
    class AnonymousClass44 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass44(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, i7, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Civ.relationsMode = false;
            InGame_Civ.iRebuildToCivID = InGame_Civ.iActiveCivID;
            Game.menuManager.rebuildInGame_Civ(true);
            InGame_Civ.lTime = 0L;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$45, reason: invalid class name */
    class AnonymousClass45 extends Text_TitleBlueSort {
        AnonymousClass45(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Civ.iSortID == 0) {
                InGame_Civ.iSortID = 1;
            } else {
                InGame_Civ.iSortID = 0;
            }
            InGame_Civ.relationsMode = true;
            InGame_Civ.iRebuildToCivID = InGame_Civ.iActiveCivID;
            Game.menuManager.rebuildInGame_Civ(true);
            InGame_Civ.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Ranking"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$46, reason: invalid class name */
    class AnonymousClass46 extends Text_TitleBlueSort {
        AnonymousClass46(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Civ.iSortID == 2) {
                InGame_Civ.iSortID = 3;
            } else {
                InGame_Civ.iSortID = 2;
            }
            InGame_Civ.relationsMode = true;
            InGame_Civ.iRebuildToCivID = InGame_Civ.iActiveCivID;
            Game.menuManager.rebuildInGame_Civ(true);
            InGame_Civ.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$47, reason: invalid class name */
    class AnonymousClass47 extends Text_TitleBlueSort {
        AnonymousClass47(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Civ.iSortID == 4) {
                InGame_Civ.iSortID = 5;
            } else {
                InGame_Civ.iSortID = 4;
            }
            InGame_Civ.relationsMode = true;
            InGame_Civ.iRebuildToCivID = InGame_Civ.iActiveCivID;
            Game.menuManager.rebuildInGame_Civ(true);
            InGame_Civ.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Opinion"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$48, reason: invalid class name */
    class AnonymousClass48 extends ButtonStatsRectIMG_Rank {
        AnonymousClass48(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$49, reason: invalid class name */
    class AnonymousClass49 extends Text_StaticBG_ID_FlagCiv {
        AnonymousClass49(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
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
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(getCurrent(), DiplomacyManager.getOpinion_String((int) Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.getRelation(getCurrent()))));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Prestige") + ": ", "" + CFG.getPrecision2(CivilizationRanking.getCivilizationRanking_INFO(getCurrent()), 10), CivilizationRanking.getCivilizationRanking_IMG_STAR_CIVID(getCurrent()), CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", CFG.getShortNumber(Game.getCiv(getCurrent()).getPopulationTotal()), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Economy") + ": ", CFG.getPrecision2(Game.getCiv(getCurrent()).getEconomyTotal(), 10), Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$5, reason: invalid class name */
    class AnonymousClass5 extends TextIcon2_Horizontal {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(InGame_Civ.iActiveCivID).getCapitalProvinceID() >= 0) {
                if (Game.iActiveProvince != Game.getCiv(InGame_Civ.iActiveCivID).getCapitalProvinceID()) {
                    Game.mapCoords.centerToProvinceID(Game.getCiv(InGame_Civ.iActiveCivID).getCapitalProvinceID());
                    Game.setActiveProvinceID(Game.getCiv(InGame_Civ.iActiveCivID).getCapitalProvinceID());
                    ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
                } else {
                    Game.menuManager.hideCourtCiv();
                    Game.menuManager.setVisibleInGame_Civ(false);
                    Game.setActiveProvinceID(Game.getCiv(InGame_Civ.iActiveCivID).getCapitalProvinceID());
                    Game.menuManager.rebuildInGame_ProvinceInfo(true);
                    ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            if (Game.getCiv(InGame_Civ.iActiveCivID).getCapitalProvinceID() < 0) {
                this.menuElementHover = null;
                return;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(InGame_Civ.iActiveCivID, Game.lang.get("Capital") + ": " + Game.getProvince(Game.getCiv(InGame_Civ.iActiveCivID).getCapitalProvinceID()).getProvinceName()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            String str = Game.lang.get("Population") + ": ";
            String str2 = XjthpFh.CmN;
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str, CFG.getNumberWithSpaces(str2 + Game.getProvince(Game.getCiv(InGame_Civ.iActiveCivID).getCapitalProvinceID()).getPopulationTotal()), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Economy") + ": ", CFG.getPrecision2(Game.getProvince(Game.getCiv(InGame_Civ.iActiveCivID).getCapitalProvinceID()).getEconomyWithBonuses(), 10), Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Income") + ": ", CFG.getPrecision2(Game.getProvince(Game.getCiv(InGame_Civ.iActiveCivID).getCapitalProvinceID()).getProvinceIncome() - Game.getProvince(Game.getCiv(InGame_Civ.iActiveCivID).getCapitalProvinceID()).fProvinceMaintenance, 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            try {
                if (Game.player.iCivID != InGame_Civ.iActiveCivID && Game.getCiv(Game.player.iCivID).getCapitalProvinceID() >= 0 && Game.getCiv(InGame_Civ.iActiveCivID).getCapitalProvinceID() >= 0) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Line());
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DistanceFromCapital") + ": ", CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(str2 + CFG.getPrecision2(Game.getDistanceFromAToB_Km(Game.getCiv(Game.player.iCivID).getCapitalProvinceID(), Game.getCiv(InGame_Civ.iActiveCivID).getCapitalProvinceID()), 10) + " km", CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.player.iCivID, CFG.PADDING, 0));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.capital, CFG.PADDING, 0));
                    arrayList2.add(new MenuElement_HoverElement_Type_Flag(InGame_Civ.iActiveCivID, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(InGame_Civ.iActiveCivID).getCivName() + " - " + Game.getCiv(Game.player.iCivID).getCivName(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
            if (InGame_Civ.iActiveCivID == Game.player.iCivID) {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Shortcut") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("HOME", CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$50, reason: invalid class name */
    class AnonymousClass50 extends Text_StaticBG_ID_SpecialColor {
        AnonymousClass50(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, int i7, Color color) {
            super(str, str2, i, i2, i3, i4, i5, i6, i7, color);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            int current;
            int i = Game.mapModes.iActiveMapModeID;
            int i2 = Game.mapModes.MODE_DIPLOMACY_IMPROVE_RELATIONS;
            String str = XjthpFh.dhQrZPdYrYM;
            if (i != i2) {
                if (Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_DIPLOMACY_DAMAGE_RELATIONS || (current = getCurrent()) == Game.player.iCivID) {
                    return;
                }
                if (DiplomacyManager.isAtWar(Game.player.iCivID, current)) {
                    Game.menuManager.addToastNegative(str, Game.lang.get("WeAreAtWar"), Images.war);
                } else if (Game.getCiv(Game.player.iCivID).diplomacy.isDamagingRelations(current)) {
                    Game.getCiv(Game.player.iCivID).diplomacy.removeDamageRelations(current);
                    Game.menuManager.addToastNegative(Game.lang.get("Removed") + ": ", str + Game.getCiv(current).getCivName(), Images.relationsDown);
                    ProvinceDraw.addDiplomacyLines(Game.getCiv(current).getCapitalProvinceID(), Game.getCiv(Game.player.iCivID).getCapitalProvinceID(), Colors.HOVER_POSITIVE);
                } else if (Game.getCiv(current).diplomacy.getRelation(Game.player.iCivID) <= GameValues.diplomacy.DIPLOMACY_DAMAGE_RELATIONS_MAX) {
                    Game.menuManager.addToastInsufficient(Game.lang.get("MaximumOpinion") + ": ", str + CFG.getPrecision2(GameValues.diplomacy.DIPLOMACY_DAMAGE_RELATIONS_MAX, 1), Images.relations);
                } else {
                    Game.getCiv(Game.player.iCivID).diplomacy.addDamageRelations(Game.player.iCivID, current);
                    ProvinceDraw.addDiplomacyLines(Game.getCiv(Game.player.iCivID).getCapitalProvinceID(), Game.getCiv(current).getCapitalProvinceID(), Colors.HOVER_NEGATIVE);
                    Game.menuManager.addToastNegative(Game.lang.get("DamagingRelations") + ": ", str + Game.getCiv(current).getCivName(), Images.relationsDown);
                }
                Game.menuManager.rebuildInGame_Right();
                Game.soundsManager.playSound(SoundsManager.DIPLOMACY_CLICK);
                return;
            }
            int current2 = getCurrent();
            if (current2 != Game.player.iCivID) {
                if (DiplomacyManager.isAtWar(Game.player.iCivID, current2)) {
                    Game.menuManager.addToastNegative(str, Game.lang.get("WeAreAtWar"), Images.war);
                } else if (Game.getCiv(Game.player.iCivID).diplomacy.isRival(current2) || Game.getCiv(current2).diplomacy.isRival(Game.player.iCivID)) {
                    Game.menuManager.addToastNegative(str, Game.lang.get(cIUGJCqyPXfp.FqyCVxeiaf), Images.rivals);
                } else if (Game.getCiv(Game.player.iCivID).diplomacy.isImprovingRelations(current2)) {
                    Game.getCiv(Game.player.iCivID).diplomacy.removeImproveRelations(current2);
                    Game.menuManager.addToastNegative(Game.lang.get("Removed") + ": ", str + Game.getCiv(current2).getCivName(), Images.relationsDown);
                    ProvinceDraw.addDiplomacyLines(Game.getCiv(current2).getCapitalProvinceID(), Game.getCiv(Game.player.iCivID).getCapitalProvinceID(), Colors.HOVER_POSITIVE);
                } else if (Game.getCiv(current2).diplomacy.getRelation(Game.player.iCivID) >= GameValues.diplomacy.DIPLOMACY_IMPROVE_RELATIONS_MAX) {
                    Game.menuManager.addToastNegative(Game.lang.get("MaximumOpinion") + ": ", str + CFG.getPrecision2(GameValues.diplomacy.DIPLOMACY_IMPROVE_RELATIONS_MAX, 1), Images.relations);
                } else {
                    Game.getCiv(Game.player.iCivID).diplomacy.addImproveRelations(Game.player.iCivID, current2);
                    Game.menuManager.addToastPositive(Game.lang.get("ImprovingRelations") + ": ", str + Game.getCiv(current2).getCivName(), Images.relationsDown);
                    ProvinceDraw.addDiplomacyLines(Game.getCiv(Game.player.iCivID).getCapitalProvinceID(), Game.getCiv(current2).getCapitalProvinceID(), Colors.HOVER_POSITIVE);
                }
                Game.menuManager.rebuildInGame_Right();
                Game.soundsManager.playSound(SoundsManager.DIPLOMACY_CLICK);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Civ.getHoverBetweenCivilizations_RightMenu(InGame_Civ.iActiveCivID, getCurrent(), false, false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$51, reason: invalid class name */
    class AnonymousClass51 extends TextIcon2_HorizontalSplit {
        AnonymousClass51(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Civ_List.civsList.clear();
            InGame_Civ_List.civsListTitle = Game.lang.get("AtWarWith");
            InGame_Civ_List.civsListTitle2 = Game.getCiv(InGame_Civ.iActiveCivID).getCivName();
            InGame_Civ_List.civsList.add(Integer.valueOf(InGame_Civ.iActiveCivID));
            for (int i = 0; i < Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.iAtWarSize; i++) {
                InGame_Civ_List.civsList.add(Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.atWar.get(i));
            }
            Game.menuManager.rebuildInGame_Civ_List();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$52, reason: invalid class name */
    class AnonymousClass52 extends TextIcon2_HorizontalSplit {
        AnonymousClass52(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Civ_List.civsList.clear();
            InGame_Civ_List.civsListTitle = Game.lang.get(Game_Ages.getVassals());
            InGame_Civ_List.civsListTitle2 = Game.getCiv(InGame_Civ.iActiveCivID).getCivName();
            InGame_Civ_List.civsList.add(Integer.valueOf(InGame_Civ.iActiveCivID));
            for (int i = 0; i < Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.iVassalsSize; i++) {
                InGame_Civ_List.civsList.add(Integer.valueOf(Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.lVassals.get(i).c));
            }
            Game.menuManager.rebuildInGame_Civ_List();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$53, reason: invalid class name */
    class AnonymousClass53 extends ButtonFlag_Diplomacy {
        AnonymousClass53(int i, int i2, int i3, boolean z) {
            super(i, i2, i3, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(getFlagCivID()).getCivName(), "", getFlagCivID(), CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            try {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(HttpResponseHeader.Expires) + ": ", "" + Game_Calendar.getDate_ByTurnID(Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.alliance.get(Integer.valueOf(getFlagCivID())).iTurnID), Images.time, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } catch (Exception unused) {
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$54, reason: invalid class name */
    class AnonymousClass54 extends TextIcon2_HorizontalSplit {
        AnonymousClass54(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Civ_List.civsList.clear();
            InGame_Civ_List.civsListTitle = Game.lang.get("Alliance");
            InGame_Civ_List.civsListTitle2 = Game.getCiv(InGame_Civ.iActiveCivID).getCivName();
            InGame_Civ_List.civsList.add(Integer.valueOf(InGame_Civ.iActiveCivID));
            Iterator<Diplomacy.DiplomacyData> it = Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.alliance.values().iterator();
            while (it.hasNext()) {
                InGame_Civ_List.civsList.add(Integer.valueOf(it.next().iCivID));
            }
            Game.menuManager.rebuildInGame_Civ_List();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$55, reason: invalid class name */
    class AnonymousClass55 extends ButtonFlag_Diplomacy {
        AnonymousClass55(int i, int i2, int i3, boolean z) {
            super(i, i2, i3, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(getFlagCivID()).getCivName(), "", getFlagCivID(), CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            try {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(HttpResponseHeader.Expires) + ": ", "" + Game_Calendar.getDate_ByTurnID(Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.truce.get(Integer.valueOf(getFlagCivID())).iTurnID), Images.time, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } catch (Exception unused) {
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$56, reason: invalid class name */
    class AnonymousClass56 extends TextIcon2_HorizontalSplit {
        AnonymousClass56(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Civ_List.civsList.clear();
            InGame_Civ_List.civsListTitle = Game.lang.get("Truce");
            InGame_Civ_List.civsListTitle2 = Game.getCiv(InGame_Civ.iActiveCivID).getCivName();
            InGame_Civ_List.civsList.add(Integer.valueOf(InGame_Civ.iActiveCivID));
            Iterator<Diplomacy.DiplomacyData> it = Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.truce.values().iterator();
            while (it.hasNext()) {
                InGame_Civ_List.civsList.add(Integer.valueOf(it.next().iCivID));
            }
            Game.menuManager.rebuildInGame_Civ_List();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$57, reason: invalid class name */
    class AnonymousClass57 extends ButtonFlag_Diplomacy {
        AnonymousClass57(int i, int i2, int i3, boolean z) {
            super(i, i2, i3, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(getFlagCivID()).getCivName(), "", getFlagCivID(), CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            try {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(HttpResponseHeader.Expires) + ": ", "" + Game_Calendar.getDate_ByTurnID(Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.defensivePact.get(Integer.valueOf(getFlagCivID())).iTurnID), Images.time, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } catch (Exception unused) {
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$58, reason: invalid class name */
    class AnonymousClass58 extends TextIcon2_HorizontalSplit {
        AnonymousClass58(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Civ_List.civsList.clear();
            InGame_Civ_List.civsListTitle = Game.lang.get("DefensivePact");
            InGame_Civ_List.civsListTitle2 = Game.getCiv(InGame_Civ.iActiveCivID).getCivName();
            InGame_Civ_List.civsList.add(Integer.valueOf(InGame_Civ.iActiveCivID));
            Iterator<Diplomacy.DiplomacyData> it = Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.defensivePact.values().iterator();
            while (it.hasNext()) {
                InGame_Civ_List.civsList.add(Integer.valueOf(it.next().iCivID));
            }
            Game.menuManager.rebuildInGame_Civ_List();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$59, reason: invalid class name */
    class AnonymousClass59 extends ButtonFlag_Diplomacy {
        AnonymousClass59(int i, int i2, int i3, boolean z) {
            super(i, i2, i3, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(getFlagCivID()).getCivName(), "", getFlagCivID(), CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            try {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(HttpResponseHeader.Expires) + ": ", "" + Game_Calendar.getDate_ByTurnID(Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.rivals.get(Integer.valueOf(getFlagCivID())).iTurnID), Images.time, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } catch (Exception unused) {
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonIdeology2 {
        AnonymousClass6(int i, int i2, int i3, int i4, int i5) {
            super(i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Civ_Government.iGovID = Game.getCiv(InGame_Civ.iActiveCivID).getIdeologyID();
            Game.menuManager.rebuildInGame_Civ_Government();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            InGame_MapModes.actionGovernment();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$60, reason: invalid class name */
    class AnonymousClass60 extends TextIcon2_HorizontalSplit {
        AnonymousClass60(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Civ_List.civsList.clear();
            InGame_Civ_List.civsListTitle = Game.lang.get("Rivals");
            InGame_Civ_List.civsListTitle2 = Game.getCiv(InGame_Civ.iActiveCivID).getCivName();
            InGame_Civ_List.civsList.add(Integer.valueOf(InGame_Civ.iActiveCivID));
            Iterator<Diplomacy.DiplomacyData> it = Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.rivals.values().iterator();
            while (it.hasNext()) {
                InGame_Civ_List.civsList.add(Integer.valueOf(it.next().iCivID));
            }
            Game.menuManager.rebuildInGame_Civ_List();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$61, reason: invalid class name */
    class AnonymousClass61 extends ButtonFlag_Diplomacy {
        AnonymousClass61(int i, int i2, int i3, boolean z) {
            super(i, i2, i3, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(getFlagCivID()).getCivName(), "", getFlagCivID(), CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            try {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(HttpResponseHeader.Expires) + ": ", "" + Game_Calendar.getDate_ByTurnID(Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.guarantee.get(Integer.valueOf(getFlagCivID())).iTurnID), Images.time, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } catch (Exception unused) {
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$62, reason: invalid class name */
    class AnonymousClass62 extends TextIcon2_HorizontalSplit {
        AnonymousClass62(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Civ_List.civsList.clear();
            InGame_Civ_List.civsListTitle = Game.lang.get("GuaranteeIndependence");
            InGame_Civ_List.civsListTitle2 = Game.getCiv(InGame_Civ.iActiveCivID).getCivName();
            InGame_Civ_List.civsList.add(Integer.valueOf(InGame_Civ.iActiveCivID));
            Iterator<Diplomacy.DiplomacyData> it = Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.guarantee.values().iterator();
            while (it.hasNext()) {
                InGame_Civ_List.civsList.add(Integer.valueOf(it.next().iCivID));
            }
            Game.menuManager.rebuildInGame_Civ_List();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$63, reason: invalid class name */
    class AnonymousClass63 extends ButtonFlag_Diplomacy {
        AnonymousClass63(int i, int i2, int i3, boolean z) {
            super(i, i2, i3, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(getFlagCivID()).getCivName(), "", getFlagCivID(), CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            try {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(HttpResponseHeader.Expires) + ": ", "" + Game_Calendar.getDate_ByTurnID(Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.guaranteeByCivID.get(Integer.valueOf(getFlagCivID())).iTurnID), Images.time, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } catch (Exception unused) {
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$64, reason: invalid class name */
    class AnonymousClass64 extends TextIcon2_HorizontalSplit {
        AnonymousClass64(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Civ_List.civsList.clear();
            InGame_Civ_List.civsListTitle = Game.lang.get("GuaranteeTheirIndependence");
            InGame_Civ_List.civsListTitle2 = Game.getCiv(InGame_Civ.iActiveCivID).getCivName();
            InGame_Civ_List.civsList.add(Integer.valueOf(InGame_Civ.iActiveCivID));
            Iterator<Diplomacy.DiplomacyData> it = Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.guaranteeByCivID.values().iterator();
            while (it.hasNext()) {
                InGame_Civ_List.civsList.add(Integer.valueOf(it.next().iCivID));
            }
            Game.menuManager.rebuildInGame_Civ_List();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$65, reason: invalid class name */
    class AnonymousClass65 extends ButtonFlag_Diplomacy {
        AnonymousClass65(int i, int i2, int i3, boolean z) {
            super(i, i2, i3, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(getFlagCivID()).getCivName(), "", getFlagCivID(), CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            try {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(HttpResponseHeader.Expires) + HjHDSSkYG.CgnRXwXrvfgaCp, "" + Game_Calendar.getDate_ByTurnID(Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.nonAggressionPact.get(Integer.valueOf(getFlagCivID())).iTurnID), Images.time, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } catch (Exception unused) {
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$66, reason: invalid class name */
    class AnonymousClass66 extends TextIcon2_HorizontalSplit {
        AnonymousClass66(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Civ_List.civsList.clear();
            InGame_Civ_List.civsListTitle = Game.lang.get("NonAggressionPact");
            InGame_Civ_List.civsListTitle2 = Game.getCiv(InGame_Civ.iActiveCivID).getCivName();
            InGame_Civ_List.civsList.add(Integer.valueOf(InGame_Civ.iActiveCivID));
            Iterator<Diplomacy.DiplomacyData> it = Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.nonAggressionPact.values().iterator();
            while (it.hasNext()) {
                InGame_Civ_List.civsList.add(Integer.valueOf(it.next().iCivID));
            }
            Game.menuManager.rebuildInGame_Civ_List();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$67, reason: invalid class name */
    class AnonymousClass67 extends TextIcon2_HorizontalSplit {
        AnonymousClass67(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            ArrayList arrayList = new ArrayList();
            for (int i = 1; i < Game.getCivsSize(); i++) {
                if (Game.getCiv(i).diplomacy.isImprovingRelations(InGame_Civ.iActiveCivID) && !Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.isImprovingRelations(i)) {
                    arrayList.add(Integer.valueOf(i));
                }
            }
            InGame_Civ_List.civsList.clear();
            InGame_Civ_List.civsListTitle = Game.lang.get("ImprovingRelations");
            InGame_Civ_List.civsListTitle2 = Game.getCiv(InGame_Civ.iActiveCivID).getCivName();
            InGame_Civ_List.civsList.add(Integer.valueOf(InGame_Civ.iActiveCivID));
            for (int i2 = 0; i2 < Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.iImprovingRelationsSize; i2++) {
                InGame_Civ_List.addCiv(Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.improvingRelations.get(i2).iCivID);
            }
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                InGame_Civ_List.addCiv(((Integer) arrayList.get(size)).intValue());
            }
            Game.menuManager.rebuildInGame_Civ_List();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$68, reason: invalid class name */
    class AnonymousClass68 extends TextIcon2_HorizontalSplit {
        AnonymousClass68(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            ArrayList arrayList = new ArrayList();
            for (int i = 1; i < Game.getCivsSize(); i++) {
                if (Game.getCiv(i).diplomacy.isDamagingRelations(InGame_Civ.iActiveCivID) && !Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.isDamagingRelations(i)) {
                    arrayList.add(Integer.valueOf(i));
                }
            }
            InGame_Civ_List.civsList.clear();
            InGame_Civ_List.civsListTitle = Game.lang.get("DamagingRelations");
            InGame_Civ_List.civsListTitle2 = Game.getCiv(InGame_Civ.iActiveCivID).getCivName();
            InGame_Civ_List.civsList.add(Integer.valueOf(InGame_Civ.iActiveCivID));
            for (int i2 = 0; i2 < Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.iDamagingRelationsSize; i2++) {
                InGame_Civ_List.addCiv(Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.damagingRelations.get(i2).iCivID);
            }
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                InGame_Civ_List.addCiv(((Integer) arrayList.get(size)).intValue());
            }
            Game.menuManager.rebuildInGame_Civ_List();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$69, reason: invalid class name */
    class AnonymousClass69 extends TextIcon2_HorizontalSplit {
        AnonymousClass69(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            ArrayList arrayList = new ArrayList();
            for (int i = 1; i < Game.getCivsSize(); i++) {
                if (Game.getCiv(i).diplomacy.getRelation(InGame_Civ.iActiveCivID) >= GameValues.diplomacy.DIPLOMACY_RELATIONS_FRIENDLY && !Game.getCiv(i).diplomacy.isRival(InGame_Civ.iActiveCivID) && !Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.isRival(i)) {
                    arrayList.add(Integer.valueOf(i));
                }
            }
            InGame_Civ_List.civsList.clear();
            InGame_Civ_List.civsListTitle = Game.lang.get("FriendlyCivilizations");
            InGame_Civ_List.civsListTitle2 = Game.getCiv(InGame_Civ.iActiveCivID).getCivName();
            InGame_Civ_List.civsList.add(Integer.valueOf(InGame_Civ.iActiveCivID));
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                InGame_Civ_List.civsList.add((Integer) arrayList.get(size));
            }
            Game.menuManager.rebuildInGame_Civ_List();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonResource2 {
        AnonymousClass7(int i, int i2, int i3, int i4, int i5) {
            super(i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_Civ(false);
            InGame_GoodsMarket.iActiveCivID = InGame_Civ.iActiveCivID;
            Game.menuManager.rebuildInGame_GoodsMarket();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            InGame_MapModes.actionGoods();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonResource2, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(InGame_Civ.iActiveCivID, Game.lang.get("ProducedGoods")));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            ArrayList arrayList3 = new ArrayList();
            for (int i = 0; i < ResourcesManager.iResourcesSize; i++) {
                arrayList3.add(Float.valueOf(0.0f));
            }
            int resourceID = -1;
            for (int i2 = 0; i2 < Game.getCiv(InGame_Civ.iActiveCivID).getNumOfProvinces(); i2++) {
                if (Game.getProvince(Game.getCiv(InGame_Civ.iActiveCivID).getProvinceID(i2)).getResourceID() >= 0) {
                    arrayList3.set(Game.getProvince(Game.getCiv(InGame_Civ.iActiveCivID).getProvinceID(i2)).getResourceID(), Float.valueOf(((Float) arrayList3.get(Game.getProvince(Game.getCiv(InGame_Civ.iActiveCivID).getProvinceID(i2)).getResourceID())).floatValue() + ResourcesManager.getProducedGoods(Game.getCiv(InGame_Civ.iActiveCivID).getProvinceID(i2))));
                    resourceID = Game.getProvince(Game.getCiv(InGame_Civ.iActiveCivID).getProvinceID(i2)).getResourceID();
                }
            }
            if (resourceID >= 0) {
                int i3 = 0;
                while (true) {
                    int i4 = i3 + 1;
                    if (i3 >= 6) {
                        break;
                    }
                    for (int i5 = 0; i5 < ResourcesManager.iResourcesSize; i5++) {
                        if (((Float) arrayList3.get(resourceID)).floatValue() < ((Float) arrayList3.get(i5)).floatValue()) {
                            resourceID = i5;
                        }
                    }
                    if (((Float) arrayList3.get(resourceID)).floatValue() <= 0.0f) {
                        break;
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusResource(ResourcesManager.getResourceName(resourceID) + ": ", CFG.getPrecision2(((Float) arrayList3.get(resourceID)).floatValue(), 10), resourceID, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList3.set(resourceID, Float.valueOf(0.0f));
                    i3 = i4;
                }
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("None"), "", Images.resourceNone, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList3.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$70, reason: invalid class name */
    class AnonymousClass70 extends ButtonFlag_Diplomacy {
        AnonymousClass70(int i, int i2, int i3, boolean z) {
            super(i, i2, i3, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(getFlagCivID()).getCivName(), "", getFlagCivID(), CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            try {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(HttpResponseHeader.Expires) + ": ", "" + Game_Calendar.getDate_ByTurnID(Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.militaryAccess.get(Integer.valueOf(getFlagCivID())).iTurnID), Images.time, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } catch (Exception unused) {
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$71, reason: invalid class name */
    class AnonymousClass71 extends TextIcon2_HorizontalSplit {
        AnonymousClass71(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Civ_List.civsList.clear();
            InGame_Civ_List.civsListTitle = Game.lang.get("HaveMilitaryAccess");
            InGame_Civ_List.civsListTitle2 = Game.getCiv(InGame_Civ.iActiveCivID).getCivName();
            InGame_Civ_List.civsList.add(Integer.valueOf(InGame_Civ.iActiveCivID));
            Iterator<Diplomacy.DiplomacyData> it = Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.militaryAccess.values().iterator();
            while (it.hasNext()) {
                InGame_Civ_List.civsList.add(Integer.valueOf(it.next().iCivID));
            }
            Game.menuManager.rebuildInGame_Civ_List();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$72, reason: invalid class name */
    class AnonymousClass72 extends ButtonFlag_Diplomacy {
        AnonymousClass72(int i, int i2, int i3, boolean z) {
            super(i, i2, i3, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(getFlagCivID()).getCivName(), "", getFlagCivID(), CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            try {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(HttpResponseHeader.Expires) + ": ", "" + Game_Calendar.getDate_ByTurnID(Game.getCiv(getFlagCivID()).diplomacy.militaryAccess.get(Integer.valueOf(InGame_Civ.iActiveCivID)).iTurnID), Images.time, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } catch (Exception unused) {
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$73, reason: invalid class name */
    class AnonymousClass73 extends TextIcon2_HorizontalSplit {
        AnonymousClass73(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            ArrayList arrayList = new ArrayList();
            for (int i = 1; i < Game.getCivsSize(); i++) {
                if (Game.getCiv(i).getNumOfProvinces() > 0 && Game.getCiv(i).diplomacy.militaryAccess.containsKey(Integer.valueOf(InGame_Civ.iActiveCivID))) {
                    arrayList.add(Integer.valueOf(i));
                }
            }
            InGame_Civ_List.civsList.clear();
            InGame_Civ_List.civsListTitle = Game.lang.get("GivesMilitaryAccess");
            InGame_Civ_List.civsListTitle2 = Game.getCiv(InGame_Civ.iActiveCivID).getCivName();
            InGame_Civ_List.civsList.add(Integer.valueOf(InGame_Civ.iActiveCivID));
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                InGame_Civ_List.civsList.add((Integer) arrayList.get(i2));
            }
            Game.menuManager.rebuildInGame_Civ_List();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$74, reason: invalid class name */
    class AnonymousClass74 extends TextIcon2_HorizontalSplit {
        AnonymousClass74(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            List<Integer> rivaledBy = RivalsManager.getRivaledBy(InGame_Civ.iActiveCivID);
            InGame_Civ_List.civsList.clear();
            InGame_Civ_List.civsListTitle = Game.lang.get("RivaledBy");
            InGame_Civ_List.civsListTitle2 = Game.getCiv(InGame_Civ.iActiveCivID).getCivName();
            InGame_Civ_List.civsList.add(Integer.valueOf(InGame_Civ.iActiveCivID));
            for (int i = 0; i < rivaledBy.size(); i++) {
                InGame_Civ_List.civsList.add(rivaledBy.get(i));
            }
            Game.menuManager.rebuildInGame_Civ_List();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$75, reason: invalid class name */
    class AnonymousClass75 extends ButtonFlag_Diplomacy {
        AnonymousClass75(int i, int i2, int i3, boolean z) {
            super(i, i2, i3, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            String str = TGqtTWl.twFAfUiQXIjHEo;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(getFlagCivID()).getCivName(), "", getFlagCivID(), CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            try {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Provinces") + str, "" + Game.getCiv(getCurrent()).getNumOfProvinces(), Images.provinces, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + str, "" + CFG.getNumberWithSpaces("" + Game.getCiv(getCurrent()).getPopulationTotal()), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Economy") + str, "" + CFG.getPrecision2(Game.getCiv(getCurrent()).getEconomyTotal(), 1), Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } catch (Exception unused) {
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$76, reason: invalid class name */
    class AnonymousClass76 extends TextIcon2_HorizontalSplit {
        AnonymousClass76(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Civ_List.civsList.clear();
            InGame_Civ_List.civsListTitle = Game.lang.get("NeighbouringCivilizations");
            InGame_Civ_List.civsListTitle2 = Game.getCiv(InGame_Civ.iActiveCivID).getCivName();
            InGame_Civ_List.civsList.add(Integer.valueOf(InGame_Civ.iActiveCivID));
            for (int i = 0; i < Game.getCiv(InGame_Civ.iActiveCivID).civNeighbors.civsSize; i++) {
                if (Game.getCiv(InGame_Civ.iActiveCivID).civNeighbors.civs.get(i).byLand) {
                    InGame_Civ_List.civsList.add(Integer.valueOf(Game.getCiv(InGame_Civ.iActiveCivID).civNeighbors.civs.get(i).civID));
                }
            }
            Game.menuManager.rebuildInGame_Civ_List();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$77, reason: invalid class name */
    class AnonymousClass77 extends ButtonFlag_Diplomacy {
        AnonymousClass77(int i, int i2, int i3, boolean z) {
            super(i, i2, i3, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(getFlagCivID()).getCivName(), "", getFlagCivID(), CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            try {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Provinces") + ": ", "" + PeaceTreaty.getLiberateCivProvinces(InGame_Civ.iActiveCivID, getCurrent()), Images.provinces, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", "" + CFG.getNumberWithSpaces("" + PeaceTreaty.getLiberateCivPopulation(InGame_Civ.iActiveCivID, getCurrent())), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Economy") + ": ", "" + PeaceTreaty.getLiberateCivEconomy(InGame_Civ.iActiveCivID, getCurrent()), Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } catch (Exception unused) {
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$78, reason: invalid class name */
    class AnonymousClass78 extends TextIcon2_HorizontalSplit {
        AnonymousClass78(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            List<Integer> civsPossibleToLiberate = PeaceTreaty.getCivsPossibleToLiberate(InGame_Civ.iActiveCivID);
            InGame_Civ_List.civsList.clear();
            InGame_Civ_List.civsListTitle = Game.lang.get(CvuNnwgYwe.DPBsyzSQllSro);
            InGame_Civ_List.civsListTitle2 = Game.getCiv(InGame_Civ.iActiveCivID).getCivName();
            InGame_Civ_List.civsList.add(Integer.valueOf(InGame_Civ.iActiveCivID));
            for (int i = 0; i < civsPossibleToLiberate.size(); i++) {
                InGame_Civ_List.civsList.add(civsPossibleToLiberate.get(i));
            }
            Game.menuManager.rebuildInGame_Civ_List();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$79, reason: invalid class name */
    class AnonymousClass79 extends ButtonDiplomacy {
        AnonymousClass79(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(Game.player.iCivID).getCivName(), "", Game.player.iCivID, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Provinces") + ": ", CFG.FONT_BOLD, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + Game.getCiv(Game.player.iCivID).getNumOfProvinces(), CFG.FONT_BOLD, Colors.HOVER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover1() {
            return new Color(DiplomacyManager.COLOR_RED.r, DiplomacyManager.COLOR_RED.g, DiplomacyManager.COLOR_RED.b, 0.15f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover2() {
            return new Color(DiplomacyManager.COLOR_RED.r, DiplomacyManager.COLOR_RED.g, DiplomacyManager.COLOR_RED.b, 0.5f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getIsHovered() {
            return true;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CLICK_TOP;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$8, reason: invalid class name */
    class AnonymousClass8 extends ButtonReligion2 {
        AnonymousClass8(int i, int i2, int i3, int i4, int i5) {
            super(i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Civ_Religion.iReligionID = Game.getCiv(InGame_Civ.iActiveCivID).getReligionID();
            Game.menuManager.rebuildInGame_Civ_Religion();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            InGame_MapModes.actionReligion();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonReligion2, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = Game.religionManager.getHoverReligion(this.religionID, InGame_Civ.iActiveCivID);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$80, reason: invalid class name */
    class AnonymousClass80 extends ButtonDiplomacy {
        AnonymousClass80(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(InGame_Civ.iActiveCivID).getCivName(), "", InGame_Civ.iActiveCivID, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get(SwmJtrccN.KsEOPBrwBcb) + ": ", CFG.FONT_BOLD, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + Game.getCiv(InGame_Civ.iActiveCivID).getNumOfProvinces(), CFG.FONT_BOLD, Colors.HOVER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover1() {
            return new Color(DiplomacyManager.COLOR_RED.r, DiplomacyManager.COLOR_RED.g, DiplomacyManager.COLOR_RED.b, 0.15f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover2() {
            return new Color(DiplomacyManager.COLOR_RED.r, DiplomacyManager.COLOR_RED.g, DiplomacyManager.COLOR_RED.b, 0.5f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getIsHovered() {
            return true;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CLICK_TOP;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$81, reason: invalid class name */
    class AnonymousClass81 extends ButtonDiplomacy {
        AnonymousClass81(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 41 && InGame_SellProvince.sellToCivID == InGame_Civ.iActiveCivID) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.setVisibleInGame_Civ(false);
                Game.menuManager.rebuildInGame_SellProvince(InGame_Civ.iActiveCivID);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CLICK_TOP;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$82, reason: invalid class name */
    class AnonymousClass82 extends ButtonDiplomacy {
        AnonymousClass82(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            String warKey = WarManager.getWarKey(Game.player.iCivID, InGame_Civ.iActiveCivID);
            if (warKey != null) {
                if (Game.menuManager.getVisibleInGame_War() && InGame_War.key.equals(warKey)) {
                    Game.menuManager.setVisibleInGame_War(false);
                    return;
                }
                Game.gameActiveProvince.resetLastActiveProvince();
                Game.setActiveProvinceID(-1);
                Game.clearActiveArmy();
                Game.menuManager.showInGame_Battle_HideMenus();
                InGame_War.key = warKey;
                Game.menuManager.rebuildInGame_War();
                if (Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_WAR_VIEW) {
                    Game.mapModes.setActiveViewID(Game.mapModes.MODE_WAR_VIEW);
                } else {
                    Game.mapModes.updateWarView(InGame_War.key);
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = MessageWar.getHoverWar(WarManager.getWarKey(Game.player.iCivID, InGame_Civ.iActiveCivID), Game.player.iCivID);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover1() {
            return new Color(DiplomacyManager.COLOR_WAR.r, DiplomacyManager.COLOR_WAR.g, DiplomacyManager.COLOR_WAR.b, 0.15f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover2() {
            return new Color(DiplomacyManager.COLOR_WAR.r, DiplomacyManager.COLOR_WAR.g, DiplomacyManager.COLOR_WAR.b, 0.5f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getIsHovered() {
            return true;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CLICK_TOP;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$83, reason: invalid class name */
    class AnonymousClass83 extends ButtonDiplomacy {
        AnonymousClass83(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (!Game.getCiv(Game.player.iCivID).diplomacy.truce.containsKey(Integer.valueOf(InGame_Civ.iActiveCivID))) {
                InGame_Civ.rebuildMenu();
            } else {
                if (Game.getCiv(Game.player.iCivID).diplomacy.truce.get(Integer.valueOf(InGame_Civ.iActiveCivID)).iTurnID >= Game_Calendar.TURN_ID) {
                    Game.menuManager.addToastInsufficient(Game.lang.get(HttpResponseHeader.Expires) + ": ", Game_Calendar.getDate_ByTurnID(Game.getCiv(Game.player.iCivID).diplomacy.truce.get(Integer.valueOf(InGame_Civ.iActiveCivID)).iTurnID), Images.time);
                    return;
                }
                Game.getCiv(Game.player.iCivID).diplomacy.truce.remove(Integer.valueOf(InGame_Civ.iActiveCivID));
                Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.truce.remove(Integer.valueOf(Game.player.iCivID));
                InGame_Civ.rebuildMenu();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(InGame_Civ.iActiveCivID).getCivName(), "", InGame_Civ.iActiveCivID, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            try {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(HttpResponseHeader.Expires) + uNBYrZVGzy.AeUFzm, "" + Game_Calendar.getDate_ByTurnID(Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.truce.get(Integer.valueOf(Game.player.iCivID)).iTurnID), Images.time, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } catch (Exception unused) {
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover1() {
            return new Color(DiplomacyManager.COLOR_PEACE.r, DiplomacyManager.COLOR_PEACE.g, DiplomacyManager.COLOR_PEACE.b, 0.15f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover2() {
            return new Color(DiplomacyManager.COLOR_PEACE.r, DiplomacyManager.COLOR_PEACE.g, DiplomacyManager.COLOR_PEACE.b, 0.5f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CLICK_TOP;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$84, reason: invalid class name */
    class AnonymousClass84 extends ButtonDiplomacy {
        AnonymousClass84(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 12) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
                Game.menuManager.setVisibleInGame_PopUp(false);
                return;
            }
            Game.menuManager.setVisibleInGame_Civ(false);
            Game.menuManager.rebuildInGame_DeclareWar(InGame_Civ.iActiveCivID);
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_DECLARE_WAR);
            if (Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.getRelation(Game.player.iCivID) > GameValues.war.RELATIONS_TO_DECLARE_WAR) {
                Game.menuManager.addToast_Error(Game.lang.get("ToDeclareWarTheRelationsBetweenCivilizationsMustBeBelowX", GameValues.war.RELATIONS_TO_DECLARE_WAR), Images.relations);
            }
            if (Game.getCiv(Game.player.iCivID).diplomacy.haveNonAggressionPact(InGame_Civ.iActiveCivID)) {
                Game.menuManager.addToast_Error(Game.lang.get("NonAggressionPact") + ": " + Game.getCiv(Game.player.iCivID).getCivName() + " - " + Game.getCiv(InGame_Civ.iActiveCivID).getCivName(), Images.nonAggression);
            }
            if (Game.getCiv(Game.player.iCivID).diplomacy.haveAlliance(InGame_Civ.iActiveCivID) || Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.haveAlliance(Game.player.iCivID)) {
                Game.menuManager.addToast_Error(Game.lang.get("Alliance") + ": " + Game.getCiv(Game.player.iCivID).getCivName() + " - " + Game.getCiv(InGame_Civ.iActiveCivID).getCivName(), Images.alliance);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            try {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                int i = InGame_Civ.iActiveCivID;
                int i2 = Game.player.iCivID;
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ProclaimIndependence"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.war, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                if (Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.getRelation(Game.player.iCivID) > GameValues.war.RELATIONS_TO_DECLARE_WAR) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("ToDeclareWarTheRelationsBetweenCivilizationsMustBeBelowX", GameValues.war.RELATIONS_TO_DECLARE_WAR), CFG.FONT_REGULAR_SMALL, Colors.HOVER_NEGATIVE));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Line());
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                }
                if (Game.getCiv(Game.player.iCivID).diplomacy.haveNonAggressionPact(InGame_Civ.iActiveCivID)) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("NonAggressionPact"), "", Images.nonAggression, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(HttpResponseHeader.Expires) + ": ", "" + Game_Calendar.getDate_ByTurnID(Game.getCiv(Game.player.iCivID).diplomacy.nonAggressionPact.get(Integer.valueOf(InGame_Civ.iActiveCivID)).iTurnID), Images.time, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Line());
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Opinion") + ": ", (Game.getCiv(i).diplomacy.getRelation(i2) > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(i).diplomacy.getRelation(i2), 10), Images.relations, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, DiplomacyManager.getOpinion_Color((int) Game.getCiv(i).diplomacy.getRelation(i2))));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                this.menuElementHover = new MenuElement_Hover(arrayList);
            } catch (Exception unused) {
                this.menuElementHover = null;
            }
            if (Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.getRelation(Game.player.iCivID) > GameValues.war.RELATIONS_TO_DECLARE_WAR) {
                return;
            }
            this.menuElementHover = null;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover1() {
            return new Color(DiplomacyManager.COLOR_BATTLE.r, DiplomacyManager.COLOR_BATTLE.g, DiplomacyManager.COLOR_BATTLE.b, 0.15f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover2() {
            return new Color(DiplomacyManager.COLOR_BATTLE.r, DiplomacyManager.COLOR_BATTLE.g, DiplomacyManager.COLOR_BATTLE.b, 0.5f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CLICK_TOP;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$85, reason: invalid class name */
    class AnonymousClass85 extends ButtonDiplomacy {
        AnonymousClass85(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 12) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
                Game.menuManager.setVisibleInGame_PopUp(false);
                return;
            }
            Game.menuManager.setVisibleInGame_Civ(false);
            Game.menuManager.rebuildInGame_DeclareWar(InGame_Civ.iActiveCivID);
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_DECLARE_WAR);
            if (Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.getRelation(Game.player.iCivID) > GameValues.war.RELATIONS_TO_DECLARE_WAR) {
                Game.menuManager.addToast_Error(Game.lang.get("ToDeclareWarTheRelationsBetweenCivilizationsMustBeBelowX", GameValues.war.RELATIONS_TO_DECLARE_WAR), Images.relations);
            }
            if (Game.getCiv(Game.player.iCivID).diplomacy.haveNonAggressionPact(InGame_Civ.iActiveCivID)) {
                Game.menuManager.addToast_Error(Game.lang.get("NonAggressionPact") + ": " + Game.getCiv(Game.player.iCivID).getCivName() + " - " + Game.getCiv(InGame_Civ.iActiveCivID).getCivName(), Images.nonAggression);
            }
            if (Game.getCiv(Game.player.iCivID).diplomacy.haveAlliance(InGame_Civ.iActiveCivID) || Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.haveAlliance(Game.player.iCivID)) {
                Game.menuManager.addToast_Error(Game.lang.get("Alliance") + ": " + Game.getCiv(Game.player.iCivID).getCivName() + " - " + Game.getCiv(InGame_Civ.iActiveCivID).getCivName(), Images.alliance);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            try {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                int i = InGame_Civ.iActiveCivID;
                int i2 = Game.player.iCivID;
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("DeclareWar"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.war, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                if (Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.getRelation(Game.player.iCivID) > GameValues.war.RELATIONS_TO_DECLARE_WAR) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("ToDeclareWarTheRelationsBetweenCivilizationsMustBeBelowX", GameValues.war.RELATIONS_TO_DECLARE_WAR), CFG.FONT_REGULAR_SMALL, Colors.HOVER_NEGATIVE));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Line());
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                }
                if (Game.getCiv(Game.player.iCivID).diplomacy.haveNonAggressionPact(InGame_Civ.iActiveCivID)) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("NonAggressionPact"), "", Images.nonAggression, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(HttpResponseHeader.Expires) + ": ", "" + Game_Calendar.getDate_ByTurnID(Game.getCiv(Game.player.iCivID).diplomacy.nonAggressionPact.get(Integer.valueOf(InGame_Civ.iActiveCivID)).iTurnID), Images.time, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Line());
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Opinion") + ": ", (Game.getCiv(i).diplomacy.getRelation(i2) > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(i).diplomacy.getRelation(i2), 10), Images.relations, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, DiplomacyManager.getOpinion_Color((int) Game.getCiv(i).diplomacy.getRelation(i2))));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                this.menuElementHover = new MenuElement_Hover(arrayList);
            } catch (Exception unused) {
                this.menuElementHover = null;
            }
            if (Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.getRelation(Game.player.iCivID) > GameValues.war.RELATIONS_TO_DECLARE_WAR) {
                return;
            }
            this.menuElementHover = null;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover1() {
            return new Color(DiplomacyManager.COLOR_WAR.r, DiplomacyManager.COLOR_WAR.g, DiplomacyManager.COLOR_WAR.b, 0.15f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover2() {
            return new Color(DiplomacyManager.COLOR_WAR.r, DiplomacyManager.COLOR_WAR.g, DiplomacyManager.COLOR_WAR.b, 0.5f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CLICK_TOP;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$86, reason: invalid class name */
    class AnonymousClass86 extends ButtonDiplomacy {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$86$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return DiplomacyManager.COLOR_GREEN;
            }
        }

        AnonymousClass86(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (DiplomacyManager.isAtWar(Game.player.iCivID, InGame_Civ.iActiveCivID)) {
                Game.menuManager.addToastNegative("", Game.lang.get("WeAreAtWar"), Images.war);
            } else if (Game.getCiv(Game.player.iCivID).diplomacy.isRival(InGame_Civ.iActiveCivID) || Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.isRival(Game.player.iCivID)) {
                Game.menuManager.addToastNegative("", Game.lang.get("WeAreRivals"), Images.rivals);
            } else if (Game.getCiv(Game.player.iCivID).diplomacy.isImprovingRelations(InGame_Civ.iActiveCivID)) {
                Game.getCiv(Game.player.iCivID).diplomacy.removeImproveRelations(InGame_Civ.iActiveCivID);
                Game.menuManager.addToastNegative(Game.lang.get("Removed") + ": ", "" + Game.getCiv(InGame_Civ.iActiveCivID).getCivName(), Images.relationsDown);
                ProvinceDraw.addDiplomacyLines(Game.getCiv(InGame_Civ.iActiveCivID).getCapitalProvinceID(), Game.getCiv(Game.player.iCivID).getCapitalProvinceID(), Colors.HOVER_POSITIVE);
            } else if (Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.getRelation(Game.player.iCivID) >= GameValues.diplomacy.DIPLOMACY_IMPROVE_RELATIONS_MAX) {
                Game.menuManager.addToastInsufficient(Game.lang.get("MaximumOpinion") + ": ", "" + CFG.getPrecision2(GameValues.diplomacy.DIPLOMACY_IMPROVE_RELATIONS_MAX, 1), Images.relations);
            } else {
                Game.getCiv(Game.player.iCivID).diplomacy.addImproveRelations(Game.player.iCivID, InGame_Civ.iActiveCivID);
                ProvinceDraw.addDiplomacyLines(Game.getCiv(Game.player.iCivID).getCapitalProvinceID(), Game.getCiv(InGame_Civ.iActiveCivID).getCapitalProvinceID(), Colors.HOVER_POSITIVE);
                Game.menuManager.addToastPositive(Game.lang.get("ImprovingRelations") + ": ", "" + Game.getCiv(InGame_Civ.iActiveCivID).getCivName(), Images.relationsDown);
                MenuManager menuManager = Game.menuManager;
                MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Civ.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Civ.this.getMenuPosY(), getWidth(), getHeight()));
            }
            Game.menuManager.rebuildInGame_Right();
            InGame_Civ.rebuildMenu();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Civ.getHoverBetweenCivilizations(InGame_Civ.iActiveCivID, Game.player.iCivID, true, false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover1() {
            return new Color(DiplomacyManager.COLOR_GREEN.r, DiplomacyManager.COLOR_GREEN.g, DiplomacyManager.COLOR_GREEN.b, 0.15f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover2() {
            return new Color(DiplomacyManager.COLOR_GREEN.r, DiplomacyManager.COLOR_GREEN.g, DiplomacyManager.COLOR_GREEN.b, 0.5f);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$87, reason: invalid class name */
    class AnonymousClass87 extends ButtonDiplomacy {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$87$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return DiplomacyManager.COLOR_RED;
            }
        }

        AnonymousClass87(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (DiplomacyManager.isAtWar(Game.player.iCivID, InGame_Civ.iActiveCivID)) {
                Game.menuManager.addToastNegative("", Game.lang.get("WeAreAtWar"), Images.war);
            } else if (Game.getCiv(Game.player.iCivID).diplomacy.isDamagingRelations(InGame_Civ.iActiveCivID)) {
                Game.getCiv(Game.player.iCivID).diplomacy.removeDamageRelations(InGame_Civ.iActiveCivID);
                Game.menuManager.addToastNegative(Game.lang.get("Removed") + ": ", "" + Game.getCiv(InGame_Civ.iActiveCivID).getCivName(), Images.relationsDown);
                ProvinceDraw.addDiplomacyLines(Game.getCiv(InGame_Civ.iActiveCivID).getCapitalProvinceID(), Game.getCiv(Game.player.iCivID).getCapitalProvinceID(), Colors.HOVER_NEGATIVE);
            } else if (Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.getRelation(Game.player.iCivID) <= GameValues.diplomacy.DIPLOMACY_DAMAGE_RELATIONS_MAX) {
                Game.menuManager.addToastInsufficient(Game.lang.get("MaximumOpinion") + ": ", "" + CFG.getPrecision2(GameValues.diplomacy.DIPLOMACY_DAMAGE_RELATIONS_MAX, 1), Images.relations);
            } else {
                Game.getCiv(Game.player.iCivID).diplomacy.addDamageRelations(Game.player.iCivID, InGame_Civ.iActiveCivID);
                ProvinceDraw.addDiplomacyLines(Game.getCiv(Game.player.iCivID).getCapitalProvinceID(), Game.getCiv(InGame_Civ.iActiveCivID).getCapitalProvinceID(), Colors.HOVER_NEGATIVE);
                Game.menuManager.addToastNegative(Game.lang.get("DamagingRelations") + ": ", "" + Game.getCiv(InGame_Civ.iActiveCivID).getCivName(), Images.relationsDown);
                MenuManager menuManager = Game.menuManager;
                MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Civ.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Civ.this.getMenuPosY(), getWidth(), getHeight()));
            }
            Game.menuManager.rebuildInGame_Right();
            InGame_Civ.rebuildMenu();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Civ.getHoverBetweenCivilizations(InGame_Civ.iActiveCivID, Game.player.iCivID, false, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover1() {
            return new Color(DiplomacyManager.COLOR_RED.r, DiplomacyManager.COLOR_RED.g, DiplomacyManager.COLOR_RED.b, 0.15f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover2() {
            return new Color(DiplomacyManager.COLOR_RED.r, DiplomacyManager.COLOR_RED.g, DiplomacyManager.COLOR_RED.b, 0.5f);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$88, reason: invalid class name */
    class AnonymousClass88 extends ButtonDiplomacy {
        AnonymousClass88(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 13 && InGame_SendInsult.iCivID == InGame_Civ.iActiveCivID) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_SendInsult(InGame_Civ.iActiveCivID);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Civ.getHoverInsult(Game.player.iCivID, InGame_Civ.iActiveCivID);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover1() {
            return new Color(DiplomacyManager.COLOR_INSULT.r, DiplomacyManager.COLOR_INSULT.g, DiplomacyManager.COLOR_INSULT.b, 0.15f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover2() {
            return new Color(DiplomacyManager.COLOR_INSULT.r, DiplomacyManager.COLOR_INSULT.g, DiplomacyManager.COLOR_INSULT.b, 0.5f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CLICK_TOP;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$89, reason: invalid class name */
    class AnonymousClass89 extends ButtonDiplomacy {
        AnonymousClass89(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 52 && InGame_Ultimatum.iCivID == InGame_Civ.iActiveCivID) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_SendUltimatum(InGame_Civ.iActiveCivID);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover1() {
            return new Color(DiplomacyManager.COLOR_INSULT.r, DiplomacyManager.COLOR_INSULT.g, DiplomacyManager.COLOR_INSULT.b, 0.15f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover2() {
            return new Color(DiplomacyManager.COLOR_INSULT.r, DiplomacyManager.COLOR_INSULT.g, DiplomacyManager.COLOR_INSULT.b, 0.5f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CLICK_TOP;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$9, reason: invalid class name */
    class AnonymousClass9 extends TextIcon2_Rank {
        AnonymousClass9(String str, String str2, int i, int i2, int i3, int i4, int i5) {
            super(str, str2, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_Civ_Provinces();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            if (Game.getCiv(InGame_Civ.iActiveCivID).getCapitalProvinceID() < 0) {
                this.menuElementHover = null;
                return;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.getCiv(InGame_Civ.iActiveCivID).getCivName() + ": " + Game.lang.get("Provinces"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            int iCountPlayableProvince = Game.countPlayableProvince();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Provinces") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + Game.getCiv(InGame_Civ.iActiveCivID).getNumOfProvinces() + " / " + iCountPlayableProvince, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(" [" + CFG.getPrecision2((Game.getCiv(InGame_Civ.iActiveCivID).getNumOfProvinces() / iCountPlayableProvince) * 100.0f, 100) + "%]", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            try {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                ArrayList arrayList3 = new ArrayList();
                for (int i = 0; i < Game.continents.iContinentsSize; i++) {
                    arrayList3.add(0);
                }
                for (int i2 = 0; i2 < Game.getCiv(InGame_Civ.iActiveCivID).getNumOfProvinces(); i2++) {
                    arrayList3.set(Game.getProvince(Game.getCiv(InGame_Civ.iActiveCivID).getProvinceID(i2)).getContinent(), Integer.valueOf(((Integer) arrayList3.get(Game.getProvince(Game.getCiv(InGame_Civ.iActiveCivID).getProvinceID(i2)).getContinent())).intValue() + 1));
                }
                for (int i3 = 0; i3 < Game.continents.iContinentsSize; i3++) {
                    int i4 = 0;
                    for (int i5 = 1; i5 < Game.continents.iContinentsSize; i5++) {
                        if (((Integer) arrayList3.get(i4)).intValue() < ((Integer) arrayList3.get(i5)).intValue()) {
                            i4 = i5;
                        }
                    }
                    if (((Integer) arrayList3.get(i4)).intValue() <= 0) {
                        break;
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.continents.lContinents.get(i4).sName + ": ", CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + arrayList3.get(i4), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.provinces, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList3.set(i4, 0);
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$90, reason: invalid class name */
    class AnonymousClass90 extends ButtonDiplomacy {
        AnonymousClass90(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).diplomacy.isRival(InGame_Civ.iActiveCivID)) {
                if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 40 && InGame_Rivals_End.endRivalryWithCivID == InGame_Civ.iActiveCivID) {
                    Game.menuManager.setVisibleInGame_PopUp(false);
                    return;
                } else {
                    InGame_Rivals_End.endRivalryWithCivID = InGame_Civ.iActiveCivID;
                    Game.menuManager.rebuildInGame_Rivals_End();
                    return;
                }
            }
            if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 25 && InGame_Rivals.rivalCivID == InGame_Civ.iActiveCivID) {
                Game.menuManager.setVisibleInGame_PopUp(false);
                return;
            }
            InGame_Rivals.rivalCivID = InGame_Civ.iActiveCivID;
            InGame_Rivals.backToRivalsList = false;
            Game.menuManager.rebuildInGame_Rivals();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover1() {
            return new Color(DiplomacyManager.COLOR_RED.r, DiplomacyManager.COLOR_RED.g, DiplomacyManager.COLOR_RED.b, 0.15f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover2() {
            return new Color(DiplomacyManager.COLOR_RED.r, DiplomacyManager.COLOR_RED.g, DiplomacyManager.COLOR_RED.b, 0.5f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CLICK_TOP;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$91, reason: invalid class name */
    class AnonymousClass91 extends ButtonDiplomacy {
        AnonymousClass91(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 53 && InGame_Union.iCivID == InGame_Civ.iActiveCivID) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_Union(InGame_Civ.iActiveCivID);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover1() {
            return new Color(DiplomacyManager.COLOR_UNION.r, DiplomacyManager.COLOR_UNION.g, DiplomacyManager.COLOR_UNION.b, 0.15f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover2() {
            return new Color(DiplomacyManager.COLOR_UNION.r, DiplomacyManager.COLOR_UNION.g, DiplomacyManager.COLOR_UNION.b, 0.5f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CLICK_TOP;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$92, reason: invalid class name */
    class AnonymousClass92 extends ButtonDiplomacy {
        AnonymousClass92(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 18 && InGame_Alliance.iCivID == InGame_Civ.iActiveCivID) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_Alliance(InGame_Civ.iActiveCivID);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover1() {
            return new Color(DiplomacyManager.COLOR_ALLIANCE.r, DiplomacyManager.COLOR_ALLIANCE.g, DiplomacyManager.COLOR_ALLIANCE.b, 0.15f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover2() {
            return new Color(DiplomacyManager.COLOR_ALLIANCE.r, DiplomacyManager.COLOR_ALLIANCE.g, DiplomacyManager.COLOR_ALLIANCE.b, 0.5f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CLICK_TOP;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$94, reason: invalid class name */
    class AnonymousClass94 extends ButtonDiplomacy {
        AnonymousClass94(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 16 && InGame_DefensivePact.iCivID == InGame_Civ.iActiveCivID) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_DefensivePact(InGame_Civ.iActiveCivID);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover1() {
            return new Color(DiplomacyManager.COLOR_DEFENSIVE_PACT.r, DiplomacyManager.COLOR_DEFENSIVE_PACT.g, DiplomacyManager.COLOR_DEFENSIVE_PACT.b, 0.15f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover2() {
            return new Color(DiplomacyManager.COLOR_DEFENSIVE_PACT.r, DiplomacyManager.COLOR_DEFENSIVE_PACT.g, DiplomacyManager.COLOR_DEFENSIVE_PACT.b, 0.5f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CLICK_TOP;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$95, reason: invalid class name */
    class AnonymousClass95 extends ButtonDiplomacy {
        AnonymousClass95(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 17 && InGame_NonAggression.iCivID == InGame_Civ.iActiveCivID) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_NonAggression(InGame_Civ.iActiveCivID);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover1() {
            return new Color(DiplomacyManager.COLOR_NON_AGGRESSION_PACT.r, DiplomacyManager.COLOR_NON_AGGRESSION_PACT.g, DiplomacyManager.COLOR_NON_AGGRESSION_PACT.b, 0.15f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover2() {
            return new Color(DiplomacyManager.COLOR_NON_AGGRESSION_PACT.r, DiplomacyManager.COLOR_NON_AGGRESSION_PACT.g, DiplomacyManager.COLOR_NON_AGGRESSION_PACT.b, 0.5f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CLICK_TOP;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$96, reason: invalid class name */
    class AnonymousClass96 extends ButtonDiplomacy {
        AnonymousClass96(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 19 && InGame_DemandMilitaryAccess.iCivID == InGame_Civ.iActiveCivID) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_DemandMilitaryAccess(InGame_Civ.iActiveCivID);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover1() {
            return new Color(DiplomacyManager.COLOR_MILITARY_ACCESS.r, DiplomacyManager.COLOR_MILITARY_ACCESS.g, DiplomacyManager.COLOR_MILITARY_ACCESS.b, 0.15f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover2() {
            return new Color(DiplomacyManager.COLOR_MILITARY_ACCESS.r, DiplomacyManager.COLOR_MILITARY_ACCESS.g, DiplomacyManager.COLOR_MILITARY_ACCESS.b, 0.5f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CLICK_TOP;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$97, reason: invalid class name */
    class AnonymousClass97 extends ButtonDiplomacy {
        AnonymousClass97(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 20 && InGame_OfferMilitaryAccess.iCivID == InGame_Civ.iActiveCivID) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_OfferMilitaryAccess(InGame_Civ.iActiveCivID);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover1() {
            return new Color(DiplomacyManager.COLOR_MILITARY_ACCESS.r, DiplomacyManager.COLOR_MILITARY_ACCESS.g, DiplomacyManager.COLOR_MILITARY_ACCESS.b, 0.15f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover2() {
            return new Color(DiplomacyManager.COLOR_MILITARY_ACCESS.r, DiplomacyManager.COLOR_MILITARY_ACCESS.g, DiplomacyManager.COLOR_MILITARY_ACCESS.b, 0.5f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CLICK_TOP;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$98, reason: invalid class name */
    class AnonymousClass98 extends ButtonDiplomacy {
        AnonymousClass98(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 21 && InGame_Guarantee.iCivID == InGame_Civ.iActiveCivID) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_Guarantee(InGame_Civ.iActiveCivID);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover1() {
            return new Color(DiplomacyManager.COLOR_GUARANTEE.r, DiplomacyManager.COLOR_GUARANTEE.g, DiplomacyManager.COLOR_GUARANTEE.b, 0.15f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover2() {
            return new Color(DiplomacyManager.COLOR_GUARANTEE.r, DiplomacyManager.COLOR_GUARANTEE.g, DiplomacyManager.COLOR_GUARANTEE.b, 0.5f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CLICK_TOP;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ$99, reason: invalid class name */
    class AnonymousClass99 extends ButtonDiplomacy {
        AnonymousClass99(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 22 && InGame_SendGift.iCivID == InGame_Civ.iActiveCivID) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_SendGift(InGame_Civ.iActiveCivID);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover1() {
            return new Color(Colors.HOVER_GOLD.r, Colors.HOVER_GOLD.g, Colors.HOVER_GOLD.b, 0.15f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover2() {
            return new Color(Colors.HOVER_GOLD.r, Colors.HOVER_GOLD.g, Colors.HOVER_GOLD.b, 0.5f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CLICK_TOP;
        }
    }

    /* JADX WARN: Code duplicated, block: B:103:0x0ba0  */
    /* JADX WARN: Code duplicated, block: B:104:0x0c15  */
    /* JADX WARN: Code duplicated, block: B:107:0x0c63  */
    /* JADX WARN: Code duplicated, block: B:110:0x0c74 A[Catch: Exception -> 0x0d9d, TRY_LEAVE, TryCatch #29 {Exception -> 0x0d9d, blocks: (B:108:0x0c64, B:110:0x0c74, B:114:0x0d49), top: B:826:0x0c64 }] */
    /* JADX WARN: Code duplicated, block: B:127:0x0daa  */
    /* JADX WARN: Code duplicated, block: B:135:0x0e3e  */
    /* JADX WARN: Code duplicated, block: B:192:0x1245  */
    /* JADX WARN: Code duplicated, block: B:194:0x124f  */
    /* JADX WARN: Code duplicated, block: B:220:0x12de  */
    /* JADX WARN: Code duplicated, block: B:221:0x12e0  */
    /* JADX WARN: Code duplicated, block: B:227:0x1320  */
    /* JADX WARN: Code duplicated, block: B:229:0x1323  */
    /* JADX WARN: Code duplicated, block: B:230:0x1325  */
    /* JADX WARN: Code duplicated, block: B:234:0x136a  */
    /* JADX WARN: Code duplicated, block: B:242:0x13bc  */
    /* JADX WARN: Code duplicated, block: B:243:0x13bf  */
    /* JADX WARN: Code duplicated, block: B:247:0x13cb  */
    /* JADX WARN: Code duplicated, block: B:249:0x13cf  */
    /* JADX WARN: Code duplicated, block: B:252:0x13d7  */
    /* JADX WARN: Code duplicated, block: B:254:0x13f9  */
    /* JADX WARN: Code duplicated, block: B:257:0x1401  */
    /* JADX WARN: Code duplicated, block: B:259:0x1404  */
    /* JADX WARN: Code duplicated, block: B:262:0x140c  */
    /* JADX WARN: Code duplicated, block: B:264:0x142e  */
    /* JADX WARN: Code duplicated, block: B:266:0x1432  */
    /* JADX WARN: Code duplicated, block: B:268:0x1435  */
    /* JADX WARN: Code duplicated, block: B:271:0x143d  */
    /* JADX WARN: Code duplicated, block: B:273:0x1467  */
    /* JADX WARN: Code duplicated, block: B:275:0x146b  */
    /* JADX WARN: Code duplicated, block: B:277:0x146e  */
    /* JADX WARN: Code duplicated, block: B:280:0x1476  */
    /* JADX WARN: Code duplicated, block: B:282:0x14a0  */
    /* JADX WARN: Code duplicated, block: B:284:0x14a4  */
    /* JADX WARN: Code duplicated, block: B:286:0x14a7  */
    /* JADX WARN: Code duplicated, block: B:289:0x14af  */
    /* JADX WARN: Code duplicated, block: B:291:0x14c7  */
    /* JADX WARN: Code duplicated, block: B:293:0x14cb A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:294:0x14cd  */
    /* JADX WARN: Code duplicated, block: B:297:0x14d5  */
    /* JADX WARN: Code duplicated, block: B:299:0x14ed  */
    /* JADX WARN: Code duplicated, block: B:302:0x14f3  */
    /* JADX WARN: Code duplicated, block: B:305:0x150f  */
    /* JADX WARN: Code duplicated, block: B:306:0x1524  */
    /* JADX WARN: Code duplicated, block: B:311:0x16a0  */
    /* JADX WARN: Code duplicated, block: B:323:0x1723  */
    /* JADX WARN: Code duplicated, block: B:324:0x1726  */
    /* JADX WARN: Code duplicated, block: B:331:0x174d A[Catch: Exception -> 0x1799, TryCatch #32 {Exception -> 0x1799, blocks: (B:329:0x1742, B:331:0x174d, B:337:0x175d, B:335:0x1757, B:336:0x175a), top: B:832:0x1742 }] */
    /* JADX WARN: Code duplicated, block: B:333:0x1752  */
    /* JADX WARN: Code duplicated, block: B:335:0x1757 A[Catch: Exception -> 0x1799, TryCatch #32 {Exception -> 0x1799, blocks: (B:329:0x1742, B:331:0x174d, B:337:0x175d, B:335:0x1757, B:336:0x175a), top: B:832:0x1742 }] */
    /* JADX WARN: Code duplicated, block: B:336:0x175a A[Catch: Exception -> 0x1799, TryCatch #32 {Exception -> 0x1799, blocks: (B:329:0x1742, B:331:0x174d, B:337:0x175d, B:335:0x1757, B:336:0x175a), top: B:832:0x1742 }] */
    /* JADX WARN: Code duplicated, block: B:352:0x17fb  */
    /* JADX WARN: Code duplicated, block: B:355:0x180b  */
    /* JADX WARN: Code duplicated, block: B:358:0x181e  */
    /* JADX WARN: Code duplicated, block: B:360:0x1825  */
    /* JADX WARN: Code duplicated, block: B:365:0x189e A[Catch: Exception -> 0x194d, TRY_LEAVE, TryCatch #38 {Exception -> 0x194d, blocks: (B:363:0x188e, B:365:0x189e, B:375:0x1920), top: B:844:0x188e }] */
    /* JADX WARN: Code duplicated, block: B:369:0x18bb A[Catch: Exception -> 0x1945, TryCatch #53 {Exception -> 0x1945, blocks: (B:367:0x18b5, B:369:0x18bb, B:371:0x18c8, B:372:0x18d0, B:373:0x18f8), top: B:874:0x18b5 }] */
    /* JADX WARN: Code duplicated, block: B:371:0x18c8 A[Catch: Exception -> 0x1945, TryCatch #53 {Exception -> 0x1945, blocks: (B:367:0x18b5, B:369:0x18bb, B:371:0x18c8, B:372:0x18d0, B:373:0x18f8), top: B:874:0x18b5 }] */
    /* JADX WARN: Code duplicated, block: B:385:0x1964 A[Catch: Exception -> 0x1a4f, TryCatch #37 {Exception -> 0x1a4f, blocks: (B:383:0x1954, B:385:0x1964, B:386:0x1976, B:388:0x197c, B:393:0x1993), top: B:842:0x1954 }] */
    /* JADX WARN: Code duplicated, block: B:388:0x197c A[Catch: Exception -> 0x1a4f, TryCatch #37 {Exception -> 0x1a4f, blocks: (B:383:0x1954, B:385:0x1964, B:386:0x1976, B:388:0x197c, B:393:0x1993), top: B:842:0x1954 }] */
    /* JADX WARN: Code duplicated, block: B:393:0x1993 A[Catch: Exception -> 0x1a4f, TRY_LEAVE, TryCatch #37 {Exception -> 0x1a4f, blocks: (B:383:0x1954, B:385:0x1964, B:386:0x1976, B:388:0x197c, B:393:0x1993), top: B:842:0x1954 }] */
    /* JADX WARN: Code duplicated, block: B:397:0x19b0 A[Catch: Exception -> 0x1a4b, TryCatch #41 {Exception -> 0x1a4b, blocks: (B:395:0x19aa, B:397:0x19b0, B:399:0x19c2, B:401:0x19c9, B:402:0x19d1, B:403:0x19f9), top: B:850:0x19aa }] */
    /* JADX WARN: Code duplicated, block: B:401:0x19c9 A[Catch: Exception -> 0x1a4b, TryCatch #41 {Exception -> 0x1a4b, blocks: (B:395:0x19aa, B:397:0x19b0, B:399:0x19c2, B:401:0x19c9, B:402:0x19d1, B:403:0x19f9), top: B:850:0x19aa }] */
    /* JADX WARN: Code duplicated, block: B:416:0x1a64 A[Catch: Exception -> 0x1b14, TRY_LEAVE, TryCatch #12 {Exception -> 0x1b14, blocks: (B:414:0x1a54, B:416:0x1a64), top: B:792:0x1a54 }] */
    /* JADX WARN: Code duplicated, block: B:420:0x1a81 A[Catch: Exception -> 0x1b10, TryCatch #8 {Exception -> 0x1b10, blocks: (B:418:0x1a7b, B:420:0x1a81, B:422:0x1a8e, B:423:0x1a96, B:424:0x1abe), top: B:784:0x1a7b }] */
    /* JADX WARN: Code duplicated, block: B:422:0x1a8e A[Catch: Exception -> 0x1b10, TryCatch #8 {Exception -> 0x1b10, blocks: (B:418:0x1a7b, B:420:0x1a81, B:422:0x1a8e, B:423:0x1a96, B:424:0x1abe), top: B:784:0x1a7b }] */
    /* JADX WARN: Code duplicated, block: B:437:0x1b29 A[Catch: Exception -> 0x1bd9, TRY_LEAVE, TryCatch #5 {Exception -> 0x1bd9, blocks: (B:435:0x1b19, B:437:0x1b29), top: B:778:0x1b19 }] */
    /* JADX WARN: Code duplicated, block: B:441:0x1b46 A[Catch: Exception -> 0x1bd5, TryCatch #45 {Exception -> 0x1bd5, blocks: (B:439:0x1b40, B:441:0x1b46, B:443:0x1b53, B:444:0x1b5b, B:445:0x1b83), top: B:858:0x1b40 }] */
    /* JADX WARN: Code duplicated, block: B:443:0x1b53 A[Catch: Exception -> 0x1bd5, TryCatch #45 {Exception -> 0x1bd5, blocks: (B:439:0x1b40, B:441:0x1b46, B:443:0x1b53, B:444:0x1b5b, B:445:0x1b83), top: B:858:0x1b40 }] */
    /* JADX WARN: Code duplicated, block: B:458:0x1bee A[Catch: Exception -> 0x1c9e, TRY_LEAVE, TryCatch #28 {Exception -> 0x1c9e, blocks: (B:456:0x1bde, B:458:0x1bee), top: B:824:0x1bde }] */
    /* JADX WARN: Code duplicated, block: B:462:0x1c0b A[Catch: Exception -> 0x1c9a, TryCatch #31 {Exception -> 0x1c9a, blocks: (B:460:0x1c05, B:462:0x1c0b, B:464:0x1c18, B:465:0x1c20, B:466:0x1c48), top: B:830:0x1c05 }] */
    /* JADX WARN: Code duplicated, block: B:464:0x1c18 A[Catch: Exception -> 0x1c9a, TryCatch #31 {Exception -> 0x1c9a, blocks: (B:460:0x1c05, B:462:0x1c0b, B:464:0x1c18, B:465:0x1c20, B:466:0x1c48), top: B:830:0x1c05 }] */
    /* JADX WARN: Code duplicated, block: B:479:0x1cb3 A[Catch: Exception -> 0x1d63, TRY_LEAVE, TryCatch #7 {Exception -> 0x1d63, blocks: (B:477:0x1ca3, B:479:0x1cb3), top: B:782:0x1ca3 }] */
    /* JADX WARN: Code duplicated, block: B:483:0x1cd0 A[Catch: Exception -> 0x1d5f, TryCatch #2 {Exception -> 0x1d5f, blocks: (B:481:0x1cca, B:483:0x1cd0, B:485:0x1cdd, B:486:0x1ce5, B:487:0x1d0d), top: B:772:0x1cca }] */
    /* JADX WARN: Code duplicated, block: B:485:0x1cdd A[Catch: Exception -> 0x1d5f, TryCatch #2 {Exception -> 0x1d5f, blocks: (B:481:0x1cca, B:483:0x1cd0, B:485:0x1cdd, B:486:0x1ce5, B:487:0x1d0d), top: B:772:0x1cca }] */
    /* JADX WARN: Code duplicated, block: B:500:0x1d78 A[Catch: Exception -> 0x1e30, TRY_LEAVE, TryCatch #22 {Exception -> 0x1e30, blocks: (B:498:0x1d68, B:500:0x1d78), top: B:812:0x1d68 }] */
    /* JADX WARN: Code duplicated, block: B:504:0x1d95 A[Catch: Exception -> 0x1e2c, TryCatch #24 {Exception -> 0x1e2c, blocks: (B:502:0x1d8f, B:504:0x1d95, B:506:0x1da2, B:507:0x1daa, B:508:0x1dd2), top: B:816:0x1d8f }] */
    /* JADX WARN: Code duplicated, block: B:506:0x1da2 A[Catch: Exception -> 0x1e2c, TryCatch #24 {Exception -> 0x1e2c, blocks: (B:502:0x1d8f, B:504:0x1d95, B:506:0x1da2, B:507:0x1daa, B:508:0x1dd2), top: B:816:0x1d8f }] */
    /* JADX WARN: Code duplicated, block: B:522:0x1e41 A[Catch: Exception -> 0x1fbe, TryCatch #48 {Exception -> 0x1fbe, blocks: (B:519:0x1e35, B:520:0x1e3b, B:522:0x1e41, B:524:0x1e4f, B:526:0x1e5d, B:527:0x1e64, B:528:0x1e67, B:530:0x1e73, B:532:0x1e79), top: B:864:0x1e35 }] */
    /* JADX WARN: Code duplicated, block: B:524:0x1e4f A[Catch: Exception -> 0x1fbe, TryCatch #48 {Exception -> 0x1fbe, blocks: (B:519:0x1e35, B:520:0x1e3b, B:522:0x1e41, B:524:0x1e4f, B:526:0x1e5d, B:527:0x1e64, B:528:0x1e67, B:530:0x1e73, B:532:0x1e79), top: B:864:0x1e35 }] */
    /* JADX WARN: Code duplicated, block: B:530:0x1e73 A[Catch: Exception -> 0x1fbe, TryCatch #48 {Exception -> 0x1fbe, blocks: (B:519:0x1e35, B:520:0x1e3b, B:522:0x1e41, B:524:0x1e4f, B:526:0x1e5d, B:527:0x1e64, B:528:0x1e67, B:530:0x1e73, B:532:0x1e79), top: B:864:0x1e35 }] */
    /* JADX WARN: Code duplicated, block: B:532:0x1e79 A[Catch: Exception -> 0x1fbe, TRY_LEAVE, TryCatch #48 {Exception -> 0x1fbe, blocks: (B:519:0x1e35, B:520:0x1e3b, B:522:0x1e41, B:524:0x1e4f, B:526:0x1e5d, B:527:0x1e64, B:528:0x1e67, B:530:0x1e73, B:532:0x1e79), top: B:864:0x1e35 }] */
    /* JADX WARN: Code duplicated, block: B:536:0x1e8b A[Catch: Exception -> 0x1fba, TryCatch #49 {Exception -> 0x1fba, blocks: (B:534:0x1e7f, B:536:0x1e8b, B:538:0x1e92, B:539:0x1e9a, B:541:0x1eba, B:543:0x1f00, B:542:0x1edd), top: B:866:0x1e7f }] */
    /* JADX WARN: Code duplicated, block: B:538:0x1e92 A[Catch: Exception -> 0x1fba, TryCatch #49 {Exception -> 0x1fba, blocks: (B:534:0x1e7f, B:536:0x1e8b, B:538:0x1e92, B:539:0x1e9a, B:541:0x1eba, B:543:0x1f00, B:542:0x1edd), top: B:866:0x1e7f }] */
    /* JADX WARN: Code duplicated, block: B:541:0x1eba A[Catch: Exception -> 0x1fba, TryCatch #49 {Exception -> 0x1fba, blocks: (B:534:0x1e7f, B:536:0x1e8b, B:538:0x1e92, B:539:0x1e9a, B:541:0x1eba, B:543:0x1f00, B:542:0x1edd), top: B:866:0x1e7f }] */
    /* JADX WARN: Code duplicated, block: B:542:0x1edd A[Catch: Exception -> 0x1fba, TryCatch #49 {Exception -> 0x1fba, blocks: (B:534:0x1e7f, B:536:0x1e8b, B:538:0x1e92, B:539:0x1e9a, B:541:0x1eba, B:543:0x1f00, B:542:0x1edd), top: B:866:0x1e7f }] */
    /* JADX WARN: Code duplicated, block: B:548:0x1f22 A[Catch: Exception -> 0x1fb5, TryCatch #26 {Exception -> 0x1fb5, blocks: (B:546:0x1f1c, B:548:0x1f22, B:550:0x1f29, B:551:0x1f31, B:552:0x1f63), top: B:820:0x1f1c }] */
    /* JADX WARN: Code duplicated, block: B:550:0x1f29 A[Catch: Exception -> 0x1fb5, TryCatch #26 {Exception -> 0x1fb5, blocks: (B:546:0x1f1c, B:548:0x1f22, B:550:0x1f29, B:551:0x1f31, B:552:0x1f63), top: B:820:0x1f1c }] */
    /* JADX WARN: Code duplicated, block: B:568:0x1fcf A[Catch: Exception -> 0x214c, TryCatch #40 {Exception -> 0x214c, blocks: (B:565:0x1fc3, B:566:0x1fc9, B:568:0x1fcf, B:570:0x1fdd, B:572:0x1feb, B:573:0x1ff2, B:574:0x1ff5, B:576:0x2001, B:578:0x2007), top: B:848:0x1fc3 }] */
    /* JADX WARN: Code duplicated, block: B:570:0x1fdd A[Catch: Exception -> 0x214c, TryCatch #40 {Exception -> 0x214c, blocks: (B:565:0x1fc3, B:566:0x1fc9, B:568:0x1fcf, B:570:0x1fdd, B:572:0x1feb, B:573:0x1ff2, B:574:0x1ff5, B:576:0x2001, B:578:0x2007), top: B:848:0x1fc3 }] */
    /* JADX WARN: Code duplicated, block: B:576:0x2001 A[Catch: Exception -> 0x214c, TryCatch #40 {Exception -> 0x214c, blocks: (B:565:0x1fc3, B:566:0x1fc9, B:568:0x1fcf, B:570:0x1fdd, B:572:0x1feb, B:573:0x1ff2, B:574:0x1ff5, B:576:0x2001, B:578:0x2007), top: B:848:0x1fc3 }] */
    /* JADX WARN: Code duplicated, block: B:578:0x2007 A[Catch: Exception -> 0x214c, TRY_LEAVE, TryCatch #40 {Exception -> 0x214c, blocks: (B:565:0x1fc3, B:566:0x1fc9, B:568:0x1fcf, B:570:0x1fdd, B:572:0x1feb, B:573:0x1ff2, B:574:0x1ff5, B:576:0x2001, B:578:0x2007), top: B:848:0x1fc3 }] */
    /* JADX WARN: Code duplicated, block: B:582:0x2019 A[Catch: Exception -> 0x2148, TryCatch #50 {Exception -> 0x2148, blocks: (B:580:0x200d, B:582:0x2019, B:584:0x2020, B:585:0x2028, B:587:0x2048, B:589:0x208e, B:588:0x206b), top: B:868:0x200d }] */
    /* JADX WARN: Code duplicated, block: B:584:0x2020 A[Catch: Exception -> 0x2148, TryCatch #50 {Exception -> 0x2148, blocks: (B:580:0x200d, B:582:0x2019, B:584:0x2020, B:585:0x2028, B:587:0x2048, B:589:0x208e, B:588:0x206b), top: B:868:0x200d }] */
    /* JADX WARN: Code duplicated, block: B:587:0x2048 A[Catch: Exception -> 0x2148, TryCatch #50 {Exception -> 0x2148, blocks: (B:580:0x200d, B:582:0x2019, B:584:0x2020, B:585:0x2028, B:587:0x2048, B:589:0x208e, B:588:0x206b), top: B:868:0x200d }] */
    /* JADX WARN: Code duplicated, block: B:588:0x206b A[Catch: Exception -> 0x2148, TryCatch #50 {Exception -> 0x2148, blocks: (B:580:0x200d, B:582:0x2019, B:584:0x2020, B:585:0x2028, B:587:0x2048, B:589:0x208e, B:588:0x206b), top: B:868:0x200d }] */
    /* JADX WARN: Code duplicated, block: B:594:0x20b0 A[Catch: Exception -> 0x2143, TryCatch #54 {Exception -> 0x2143, blocks: (B:592:0x20aa, B:594:0x20b0, B:596:0x20b7, B:597:0x20bf, B:598:0x20f1), top: B:876:0x20aa }] */
    /* JADX WARN: Code duplicated, block: B:596:0x20b7 A[Catch: Exception -> 0x2143, TryCatch #54 {Exception -> 0x2143, blocks: (B:592:0x20aa, B:594:0x20b0, B:596:0x20b7, B:597:0x20bf, B:598:0x20f1), top: B:876:0x20aa }] */
    /* JADX WARN: Code duplicated, block: B:614:0x215d A[Catch: Exception -> 0x2284, TryCatch #20 {Exception -> 0x2284, blocks: (B:611:0x2151, B:612:0x2157, B:614:0x215d, B:616:0x2171, B:618:0x217f, B:620:0x218d, B:621:0x2194, B:622:0x2197, B:624:0x219d), top: B:808:0x2151 }] */
    /* JADX WARN: Code duplicated, block: B:616:0x2171 A[Catch: Exception -> 0x2284, TryCatch #20 {Exception -> 0x2284, blocks: (B:611:0x2151, B:612:0x2157, B:614:0x215d, B:616:0x2171, B:618:0x217f, B:620:0x218d, B:621:0x2194, B:622:0x2197, B:624:0x219d), top: B:808:0x2151 }] */
    /* JADX WARN: Code duplicated, block: B:624:0x219d A[Catch: Exception -> 0x2284, TRY_LEAVE, TryCatch #20 {Exception -> 0x2284, blocks: (B:611:0x2151, B:612:0x2157, B:614:0x215d, B:616:0x2171, B:618:0x217f, B:620:0x218d, B:621:0x2194, B:622:0x2197, B:624:0x219d), top: B:808:0x2151 }] */
    /* JADX WARN: Code duplicated, block: B:628:0x21ab A[Catch: Exception -> 0x227f, TryCatch #16 {Exception -> 0x227f, blocks: (B:626:0x21a5, B:628:0x21ab, B:630:0x21b1, B:632:0x21ba, B:635:0x21eb, B:636:0x21ee, B:638:0x21f5, B:639:0x21fd, B:640:0x222d), top: B:800:0x21a5 }] */
    /* JADX WARN: Code duplicated, block: B:632:0x21ba A[Catch: Exception -> 0x227f, TryCatch #16 {Exception -> 0x227f, blocks: (B:626:0x21a5, B:628:0x21ab, B:630:0x21b1, B:632:0x21ba, B:635:0x21eb, B:636:0x21ee, B:638:0x21f5, B:639:0x21fd, B:640:0x222d), top: B:800:0x21a5 }] */
    /* JADX WARN: Code duplicated, block: B:634:0x21ea  */
    /* JADX WARN: Code duplicated, block: B:638:0x21f5 A[Catch: Exception -> 0x227f, TryCatch #16 {Exception -> 0x227f, blocks: (B:626:0x21a5, B:628:0x21ab, B:630:0x21b1, B:632:0x21ba, B:635:0x21eb, B:636:0x21ee, B:638:0x21f5, B:639:0x21fd, B:640:0x222d), top: B:800:0x21a5 }] */
    /* JADX WARN: Code duplicated, block: B:653:0x2299 A[Catch: Exception -> 0x2349, TRY_LEAVE, TryCatch #42 {Exception -> 0x2349, blocks: (B:651:0x2289, B:653:0x2299), top: B:852:0x2289 }] */
    /* JADX WARN: Code duplicated, block: B:657:0x22b6 A[Catch: Exception -> 0x2345, TryCatch #52 {Exception -> 0x2345, blocks: (B:655:0x22b0, B:657:0x22b6, B:659:0x22c3, B:660:0x22cb, B:661:0x22f3), top: B:872:0x22b0 }] */
    /* JADX WARN: Code duplicated, block: B:659:0x22c3 A[Catch: Exception -> 0x2345, TryCatch #52 {Exception -> 0x2345, blocks: (B:655:0x22b0, B:657:0x22b6, B:659:0x22c3, B:660:0x22cb, B:661:0x22f3), top: B:872:0x22b0 }] */
    /* JADX WARN: Code duplicated, block: B:675:0x235a A[Catch: Exception -> 0x242f, TryCatch #23 {Exception -> 0x242f, blocks: (B:672:0x234e, B:673:0x2354, B:675:0x235a, B:677:0x2364, B:679:0x2378, B:680:0x237f, B:681:0x2382, B:683:0x2388), top: B:814:0x234e }] */
    /* JADX WARN: Code duplicated, block: B:677:0x2364 A[Catch: Exception -> 0x242f, TryCatch #23 {Exception -> 0x242f, blocks: (B:672:0x234e, B:673:0x2354, B:675:0x235a, B:677:0x2364, B:679:0x2378, B:680:0x237f, B:681:0x2382, B:683:0x2388), top: B:814:0x234e }] */
    /* JADX WARN: Code duplicated, block: B:683:0x2388 A[Catch: Exception -> 0x242f, TRY_LEAVE, TryCatch #23 {Exception -> 0x242f, blocks: (B:672:0x234e, B:673:0x2354, B:675:0x235a, B:677:0x2364, B:679:0x2378, B:680:0x237f, B:681:0x2382, B:683:0x2388), top: B:814:0x234e }] */
    /* JADX WARN: Code duplicated, block: B:687:0x2396 A[Catch: Exception -> 0x242a, TryCatch #25 {Exception -> 0x242a, blocks: (B:685:0x2390, B:687:0x2396, B:689:0x239d, B:690:0x23a5, B:691:0x23d8), top: B:818:0x2390 }] */
    /* JADX WARN: Code duplicated, block: B:689:0x239d A[Catch: Exception -> 0x242a, TryCatch #25 {Exception -> 0x242a, blocks: (B:685:0x2390, B:687:0x2396, B:689:0x239d, B:690:0x23a5, B:691:0x23d8), top: B:818:0x2390 }] */
    /* JADX WARN: Code duplicated, block: B:704:0x2440 A[Catch: Exception -> 0x24e0, TRY_LEAVE, TryCatch #0 {Exception -> 0x24e0, blocks: (B:702:0x2434, B:704:0x2440), top: B:768:0x2434 }] */
    /* JADX WARN: Code duplicated, block: B:709:0x2455 A[Catch: Exception -> 0x24db, TryCatch #3 {Exception -> 0x24db, blocks: (B:707:0x244e, B:709:0x2455, B:710:0x245d, B:711:0x2489), top: B:774:0x244e }] */
    /* JADX WARN: Code duplicated, block: B:724:0x24f1 A[Catch: Exception -> 0x25e4, TRY_LEAVE, TryCatch #6 {Exception -> 0x25e4, blocks: (B:722:0x24e5, B:724:0x24f1), top: B:780:0x24e5 }] */
    /* JADX WARN: Code duplicated, block: B:728:0x2509 A[Catch: Exception -> 0x25df, TryCatch #1 {Exception -> 0x25df, blocks: (B:726:0x24fd, B:728:0x2509, B:730:0x251d, B:732:0x2524, B:733:0x252c, B:734:0x2565, B:735:0x2568, B:737:0x256e), top: B:770:0x24fd }] */
    /* JADX WARN: Code duplicated, block: B:730:0x251d A[Catch: Exception -> 0x25df, TryCatch #1 {Exception -> 0x25df, blocks: (B:726:0x24fd, B:728:0x2509, B:730:0x251d, B:732:0x2524, B:733:0x252c, B:734:0x2565, B:735:0x2568, B:737:0x256e), top: B:770:0x24fd }] */
    /* JADX WARN: Code duplicated, block: B:732:0x2524 A[Catch: Exception -> 0x25df, TryCatch #1 {Exception -> 0x25df, blocks: (B:726:0x24fd, B:728:0x2509, B:730:0x251d, B:732:0x2524, B:733:0x252c, B:734:0x2565, B:735:0x2568, B:737:0x256e), top: B:770:0x24fd }] */
    /* JADX WARN: Code duplicated, block: B:737:0x256e A[Catch: Exception -> 0x25df, TRY_LEAVE, TryCatch #1 {Exception -> 0x25df, blocks: (B:726:0x24fd, B:728:0x2509, B:730:0x251d, B:732:0x2524, B:733:0x252c, B:734:0x2565, B:735:0x2568, B:737:0x256e), top: B:770:0x24fd }] */
    /* JADX WARN: Code duplicated, block: B:743:0x25dc  */
    /* JADX WARN: Code duplicated, block: B:751:0x25f5 A[Catch: Exception -> 0x2695, TRY_LEAVE, TryCatch #10 {Exception -> 0x2695, blocks: (B:749:0x25e9, B:751:0x25f5), top: B:788:0x25e9 }] */
    /* JADX WARN: Code duplicated, block: B:756:0x2609 A[Catch: Exception -> 0x2691, TryCatch #15 {Exception -> 0x2691, blocks: (B:754:0x2602, B:756:0x2609, B:757:0x2611, B:758:0x2645), top: B:798:0x2602 }] */
    /* JADX WARN: Code duplicated, block: B:774:0x244e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:798:0x2602 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:838:0x16b3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:846:0x16bc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:898:0x13fa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:901:0x142f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:904:0x1468 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:907:0x14a1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:910:0x14c8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:913:0x14ee A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:919:0x182d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:922:0x18d0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:923:0x1990 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:924:0x198e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:925:? A[LOOP:16: B:386:0x1976->B:925:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:927:0x19c2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:929:0x19aa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:933:0x1a96 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:936:0x1b5b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:939:0x1c20 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:942:0x1ce5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:945:0x1daa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:948:0x1e64 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:952:0x1ff2 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:956:0x2194 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:962:0x21fd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:965:0x21eb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:968:0x22cb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:971:0x237f A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:975:0x23a5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:978:0x245d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:981:0x2565 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:984:0x2611 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:988:0x20bf A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:992:0x1f31 A[SYNTHETIC] */
    public InGame_Civ() {
        int i;
        String str;
        int i2;
        String str2;
        String str3;
        String str4;
        int i3;
        String str5;
        String str6;
        String str7;
        int i4;
        Exception exc;
        int iMax;
        int i5;
        Exception exc2;
        Exception exc3;
        Exception exc4;
        Exception exc5;
        Exception exc6;
        Exception exc7;
        Exception exc8;
        Exception exc9;
        Exception exc10;
        Exception exc11;
        Exception exc12;
        Exception exc13;
        Exception exc14;
        Exception exc15;
        List<Integer> civsPossibleToLiberate;
        int width;
        int size;
        int i6;
        int i7;
        int i8;
        int size2;
        int i9;
        int width2;
        int i10;
        int i11;
        List<Integer> rivaledBy;
        int size3;
        int i12;
        int width3;
        int i13;
        int i14;
        ArrayList arrayList;
        int i15;
        int i16;
        int width4;
        int i17;
        int i18;
        int width5;
        int i19;
        ArrayList arrayList2;
        int i20;
        int i21;
        int width6;
        int i22;
        int i23;
        int size4;
        int i24;
        ArrayList arrayList3;
        int i25;
        int width7;
        int i26;
        int i27;
        int i28;
        int width8;
        int i29;
        int i30;
        ArrayList arrayList4;
        int i31;
        int width9;
        int i32;
        int i33;
        int i34;
        int width10;
        int i35;
        int i36;
        int width11;
        int i37;
        int width12;
        int i38;
        int width13;
        int i39;
        int width14;
        int i40;
        int width15;
        int i41;
        Iterator<Diplomacy.DiplomacyData> it;
        boolean z;
        int width16;
        int i42;
        int width17;
        int i43;
        int width18;
        int i44;
        int i45;
        int i46;
        int width19;
        int i47;
        int i48;
        int i49;
        int i50;
        String str8;
        Exception exc16;
        float warScore_Side;
        String str9;
        Color color;
        int i51;
        boolean z2;
        boolean z3;
        int i52;
        int i53;
        boolean z4;
        boolean z5;
        ArrayList arrayList5;
        ArrayList arrayList6;
        int i54;
        int i55;
        int i56;
        int i57;
        int i58;
        int i59;
        int height;
        int i60;
        int i61;
        int i62;
        int i63;
        int i64;
        int i65;
        int i66;
        int i67;
        int i68;
        Object objValueOf;
        int i69;
        LanguageManager languageManager;
        String str10;
        LanguageManager languageManager2;
        String str11;
        LanguageManager languageManager3;
        String str12;
        int i70;
        ArrayList arrayList7;
        int height2;
        int i71;
        int i72;
        int i73;
        String str13;
        String str14;
        int i74;
        int i75;
        ArrayList arrayList8 = new ArrayList();
        int i76 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
        int i77 = Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2);
        int width20 = ImageManager.getImage(Images.insideTop500).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height3 = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title1Red).getHeight();
        int i78 = CFG.PADDING;
        int i79 = iRebuildToCivID;
        if (i79 >= 0) {
            iActiveCivID = i79;
            iRebuildToCivID = -1;
        } else if (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getCivID() <= 0) {
            iActiveCivID = Game.player.iCivID;
        } else {
            iActiveCivID = Game.getProvince(Game.iActiveProvince).getCivID();
        }
        updateMaxIconH();
        RulersManager.loadRulerIMG(iActiveCivID);
        arrayList8.add(new AnonymousClass1(iActiveCivID, i76, i78));
        int width21 = arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING + i76;
        int i80 = CFG.PADDING * 3;
        this.flagX = width21;
        this.flagY = i78;
        int i81 = i76 * 2;
        this.flagW = ((width20 - (ButtonRuler.getButtonWidth() * 2)) - i81) - (CFG.PADDING * 2);
        this.flagH = ButtonFlag.getButtonHeight() + (i80 * 2);
        arrayList8.add(new AnonymousClass2((this.flagX + (this.flagW / 2)) - (ButtonFlag.getButtonWidth() / 2), this.flagY + i80, true));
        int i82 = this.flagX + this.flagW + CFG.PADDING;
        int i83 = (this.flagH - (CFG.PADDING * 2)) / 3;
        int width22 = ImageManager.getImage(Images.capital).getWidth();
        int i84 = i77;
        int i85 = i76;
        arrayList8.add(new AnonymousClass3("" + (Game.getCiv(iActiveCivID).iCivRankPosition > 0 ? Integer.valueOf(Game.getCiv(iActiveCivID).iCivRankPosition) : "---"), CivilizationRanking.getCivilizationRanking_IMG_STAR_CIVID(iActiveCivID), i82, i78, ButtonRuler.getButtonWidth(), i83, width22, true));
        int height4 = i78 + arrayList8.get(arrayList8.size() - 1).getHeight() + CFG.PADDING;
        arrayList8.add(new AnonymousClass4(CivilizationRanking.getCivilizationRank_Name(Game.getCiv(iActiveCivID).iCivRankID), CivilizationRanking.getCivilizationRank_IMG(Game.getCiv(iActiveCivID).iCivRankID), i82, height4, ButtonRuler.getButtonWidth(), i83, width22, true));
        int height5 = height4 + arrayList8.get(arrayList8.size() - 1).getHeight() + CFG.PADDING;
        arrayList8.add(new AnonymousClass5(Game.getCiv(iActiveCivID).getCapitalProvinceID() >= 0 ? Game.getProvince(Game.getCiv(iActiveCivID).getCapitalProvinceID()).getProvinceName() : "", Images.capital, i82, height5, ButtonRuler.getButtonWidth(), i83, width22, true));
        int height6 = height5 + arrayList8.get(arrayList8.size() - 1).getHeight() + CFG.PADDING;
        arrayList8.add(new AnonymousClass6(Game.getCiv(iActiveCivID).getIdeologyID(), i82, height6, (ButtonRuler.getButtonWidth() / 2) - (CFG.PADDING / 2), (ButtonRuler.getButtonHeight() - height6) + CFG.PADDING));
        arrayList8.add(new AnonymousClass7(ResourcesManager.getLargestGoodsProducedByCiv(iActiveCivID), i82 + (ButtonRuler.getButtonWidth() / 2) + CFG.PADDING, height6, (ButtonRuler.getButtonWidth() / 2) - (CFG.PADDING / 2), (ButtonRuler.getButtonHeight() - height6) + CFG.PADDING));
        arrayList8.add(new AnonymousClass8(Game.getCiv(iActiveCivID).getReligionID(), this.flagX, height6, this.flagW, (ButtonRuler.getButtonHeight() - height6) + CFG.PADDING));
        int buttonHeight = i78 + ButtonRuler.getButtonHeight() + CFG.PADDING;
        int i86 = width20 - i81;
        int i87 = (i86 - (CFG.PADDING * 5)) / 6;
        int height7 = ImageManager.getImage(Images.provinces).getHeight() + CFG.TEXT_HEIGHT + (CFG.PADDING * 6);
        int height8 = (((ImageManager.getImage(Images.provinces).getHeight() + CFG.TEXT_HEIGHT) + (CFG.PADDING * 6)) - CFG.PADDING) / 2;
        int i88 = i86;
        arrayList8.add(new AnonymousClass9("#" + getRankProvinces(iActiveCivID), "" + Game.getCiv(iActiveCivID).getNumOfProvinces(), Images.provinces, i85, buttonHeight, i87, height7));
        int width23 = i85 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
        arrayList8.add(new AnonymousClass10("#" + getRankPopulation(iActiveCivID), CFG.getShortNumber(Game.getCiv(iActiveCivID).getPopulationTotal()), Images.population, width23, buttonHeight, i87, height7));
        int width24 = width23 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
        arrayList8.add(new AnonymousClass11("#" + getRankEconomy(iActiveCivID), "" + CFG.getShortNumber((int) Game.getCiv(iActiveCivID).getEconomyTotal()), Game_Calendar.IMG_ECONOMY, width24, buttonHeight, i87, height7));
        int width25 = width24 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
        arrayList8.add(new AnonymousClass12("" + Game.getCiv(iActiveCivID).largestProducerNum, Images.goods, width25, buttonHeight, i87, height8, width22));
        arrayList8.add(new AnonymousClass13("" + CFG.getShortNumber(Game.getCiv(iActiveCivID).getLegaciesUnlocked()), Images.legacy, width25, buttonHeight + CFG.PADDING + height8, i87, height8, width22));
        int width26 = width25 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
        arrayList8.add(new AnonymousClass14("" + Game.getCiv(iActiveCivID).getResearchedTechnologies(), Game_Calendar.IMG_TECHNOLOGY, width26, buttonHeight, i87, height8, width22));
        arrayList8.add(new AnonymousClass15("" + Game.getCiv(iActiveCivID).iAdvantagesSize, Images.advantages, width26, buttonHeight + CFG.PADDING + height8, i87, height8, width22));
        int width27 = width26 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
        arrayList8.add(new AnonymousClass16("" + Game.getCiv(iActiveCivID).iRegimentsLimit, Images.regimentsLimit, width27, buttonHeight, i87, height8, width22));
        arrayList8.add(new AnonymousClass17("" + CFG.getPrecision2(Game.getCiv(iActiveCivID).civBonuses.Discipline * 100.0f, 1) + "%", Images.discipline, width27, buttonHeight + CFG.PADDING + height8, i87, height8, width22));
        arrayList8.get(arrayList8.size() - 1).getWidth();
        int i89 = CFG.PADDING;
        int posY = arrayList8.get(0).getPosY() + arrayList8.get(0).getHeight() + CFG.PADDING + height7 + CFG.PADDING;
        arrayList8.add(new AnonymousClass18("" + Game.getCiv(iActiveCivID).getCapitalLevel(), Images.capital, i85, posY, i87, height8, width22));
        int width28 = i85 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
        arrayList8.add(new AnonymousClass19("" + Game.getCiv(iActiveCivID).getMilitaryAcademyLevel(), Game_Calendar.IMG_MANPOWER, width28, posY, i87, height8, width22));
        int width29 = width28 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
        arrayList8.add(new AnonymousClass20("" + Game.getCiv(iActiveCivID).getMilitaryAcademyForGeneralsLevel(), Images.general, width29, posY, i87, height8, width22));
        int width30 = width29 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
        arrayList8.add(new AnonymousClass21("" + CFG.getPrecision2(Game.getCiv(iActiveCivID).getAggressiveExpansion(), Game.getCiv(iActiveCivID).getAggressiveExpansion() < 100.0f ? 10 : 1), Images.aggressiveExpansion, width30, posY, i87, height8, width22));
        int width31 = width30 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
        arrayList8.add(new AnonymousClass22("" + CFG.getPrecision2(Game.getCiv(iActiveCivID).getWarWeariness(), 10) + "%", Images.weariness, width31, posY, i87, height8, width22));
        arrayList8.add(new AnonymousClass23("" + BattleManager.getBattleWidth(iActiveCivID), Images.battleWidth, width31 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING, posY, i87, height8, width22));
        arrayList8.get(arrayList8.size() - 1).getWidth();
        int i90 = CFG.PADDING;
        int iMax2 = posY + height8 + CFG.PADDING;
        if (CFG.debugMode) {
            i = width20;
            List<MenuElement> menuElements = InGame_Civ_AI.getMenuElements(iActiveCivID, iMax2, i);
            int size5 = menuElements.size();
            for (int i91 = 0; i91 < size5; i91++) {
                arrayList8.add(menuElements.get(i91));
                iMax2 = Math.max(iMax2, menuElements.get(i91).getPosY() + menuElements.get(i91).getHeight() + CFG.PADDING);
            }
        } else {
            i = width20;
        }
        int i92 = iMax2;
        if (iActiveCivID == Game.player.iCivID) {
            arrayList8.add(new AnonymousClass24(Game.lang.get("Diplomacy"), Images.boxTitleBORDERWIDTH, i92, (i - (Images.boxTitleBORDERWIDTH * 2)) / 2, CFG.BUTTON_HEIGHT4, diplomacyMode));
            arrayList8.add(new AnonymousClass25(Game.lang.get("Civilizations"), Images.boxTitleBORDERWIDTH + ((i - (Images.boxTitleBORDERWIDTH * 2)) / 2), i92, (i - (Images.boxTitleBORDERWIDTH * 2)) / 2, CFG.BUTTON_HEIGHT4, !diplomacyMode));
        } else {
            arrayList8.add(new AnonymousClass26(Game.lang.get("Diplomacy"), Images.boxTitleBORDERWIDTH, i92, (i - (Images.boxTitleBORDERWIDTH * 2)) / 2, CFG.BUTTON_HEIGHT4, diplomacyMode || iActiveCivID == Game.player.iCivID));
            arrayList8.add(new AnonymousClass27(Game.lang.get("Interactions"), Images.boxTitleBORDERWIDTH + ((i - (Images.boxTitleBORDERWIDTH * 2)) / 2), i92, (i - (Images.boxTitleBORDERWIDTH * 2)) / 2, CFG.BUTTON_HEIGHT4, (diplomacyMode || iActiveCivID == Game.player.iCivID) ? false : true));
        }
        int height9 = i92 + arrayList8.get(arrayList8.size() - 1).getHeight();
        int buttonWidth = (i88 - (ButtonFlag_Diplomacy.getButtonWidth() * 4)) - (CFG.PADDING * 4);
        int height10 = ImageManager.getImage(Images.flagDiplomacyOver).getHeight() + (CFG.PADDING * 2);
        int width32 = ImageManager.getImage(Images.relations).getWidth() + (CFG.PADDING * 2);
        int relation = (int) Game.getCiv(iActiveCivID).diplomacy.getRelation(Game.player.iCivID);
        int i93 = i88 - buttonWidth;
        if (iActiveCivID != Game.player.iCivID) {
            int i94 = i85 + buttonWidth;
            int i95 = i93 / 2;
            arrayList8.add(new AnonymousClass28((relation > 0 ? "+" : "") + relation, CFG.FONT_REGULAR_SMALL, -1, i94, height9, i95, height10, relation, false));
            arrayList8.add(new AnonymousClass29(DiplomacyManager.getOpinion_String(relation), CFG.FONT_REGULAR_SMALL, -1, i94 + i95, height9, i95, height10, relation, true));
            str = "Opinion";
            arrayList8.add(new AnonymousClass30(Game.lang.get(str), Images.relations, i85, height9, buttonWidth, height10, width32, i88));
            i2 = height10;
            height9 += i2;
        } else {
            str = "Opinion";
            i2 = height10;
        }
        int i96 = 0;
        while (i96 < Game.getCiv(iActiveCivID).inAlliance.size()) {
            int i97 = i85 + buttonWidth;
            try {
                int i98 = CFG.PADDING;
                arrayList8.add(new ButtonFlag_Diplomacy_Alliance(Game.getCiv(iActiveCivID).inAlliance.get(i96).intValue(), i97 + CFG.PADDING, CFG.PADDING + height9, true));
                str14 = str;
                i74 = i;
                i75 = i96;
                try {
                    arrayList8.add(new AnonymousClass31(Game.lang.get(Game.alliancesSpecial.get(Game.getCiv(iActiveCivID).inAlliance.get(i96).intValue()).Name_Alliance), Images.alliance, i85, height9, buttonWidth, i2, width32, i88));
                    arrayList8.get(arrayList8.size() - 1).setCurrent(i75);
                    height9 += Math.max(i2, arrayList8.get(arrayList8.size() - 1).getHeight());
                } catch (Exception e) {
                    e = e;
                    CFG.exceptionStack(e);
                }
            } catch (Exception e2) {
                e = e2;
                str14 = str;
                i74 = i;
                i75 = i96;
            }
            i96 = i75 + 1;
            i = i74;
            str = str14;
        }
        String str15 = str;
        int i99 = i;
        int i100 = i85 + buttonWidth;
        int i101 = CFG.PADDING;
        if (Game.getCiv(iActiveCivID).getPuppetOfCivID() != Game.getCiv(iActiveCivID).getCivID()) {
            int i102 = CFG.PADDING;
            arrayList8.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).getPuppetOfCivID(), i100 + CFG.PADDING, height9 + CFG.PADDING, true, true, false));
            if (iActiveCivID != Game.player.iCivID) {
                str3 = "";
                str2 = "%";
                arrayList8.add(new AnonymousClass32(str3 + CFG.getPrecision2(Game.getCiv(Game.getCiv(iActiveCivID).getPuppetOfCivID()).diplomacy.getVassal_LibertyDesire(iActiveCivID), 10) + "%", CFG.FONT_REGULAR_SMALL, -1, (CFG.PADDING * 2) + i100 + ButtonFlag_Diplomacy.getButtonWidth(), height9, (i99 - i85) - (((CFG.PADDING * 2) + i100) + ButtonFlag_Diplomacy.getButtonWidth()), i2));
            } else {
                str2 = r10;
                str3 = r11;
            }
            arrayList8.add(new AnonymousClass33(Game.lang.get(Game_Ages.getLord()), Images.vassal, i85, height9, buttonWidth, i2, width32, i88));
            height9 += i2;
        } else {
            str2 = r10;
            str3 = r11;
        }
        String str16 = "DamageRelations";
        String str17 = ": ";
        if (iActiveCivID != Game.player.iCivID || diplomacyMode) {
            str17 = ": ";
            str4 = "ImproveRelations";
            i2 = i2;
            str3 = str3;
            str16 = "DamageRelations";
            i3 = i85;
            str5 = "Provinces";
        } else {
            height9 += CFG.PADDING;
            int i103 = (i88 - (CFG.PADDING * 3)) / 4;
            int i104 = (int) (i103 * 1.1f);
            if (relationsMode) {
                str17 = ": ";
                str4 = "ImproveRelations";
                i2 = i2;
                str3 = str3;
                str16 = "DamageRelations";
                i70 = i85;
                str5 = "Provinces";
                if (!GameValues.diplomacy.SHOW_LIST_OF_CIVS_RELATIONS_IN_PLAYERS_CIV_VIEW) {
                    i3 = i70;
                    arrayList8.add(new AnonymousClass44(Game.lang.get("Back"), Images.relations, i70, height9, i88, CFG.BUTTON_HEIGHT3, width32, 0, true));
                    height9 += arrayList8.get(arrayList8.size() - 1).getHeight() + CFG.PADDING;
                }
            } else {
                ArrayList arrayList9 = new ArrayList();
                if (Game.getCiv(Game.player.iCivID).getNumOfProvinces() <= 0) {
                    arrayList7 = arrayList9;
                    arrayList7.add(new AnonymousClass34(Game.lang.get("Provinces") + ": " + Game.getCiv(Game.player.iCivID).getNumOfProvinces(), Images.provinces, i85, height9, i88, i104));
                } else {
                    arrayList7 = arrayList9;
                    arrayList7.add(new AnonymousClass35(Game.lang.get("ImproveRelations"), Images.relationsUp, i85, height9, i103, i104));
                    arrayList7.add(new AnonymousClass36(Game.lang.get("DamageRelations"), Images.relationsDown, i85, height9, i103, i104));
                    arrayList7.add(new AnonymousClass37(Game.lang.get("Rivals"), Images.rivals, i85, height9, i103, i104));
                    arrayList7.add(new AnonymousClass38(Game.lang.get("FormAlliance"), Images.alliance, i85, height9, i103, i104));
                }
                int size6 = arrayList7.size();
                int width33 = i85;
                int i105 = 0;
                while (i105 < size6) {
                    ((MenuElement) arrayList7.get(i105)).setPosX(width33);
                    ((MenuElement) arrayList7.get(i105)).setPosY(height9);
                    width33 += ((MenuElement) arrayList7.get(i105)).getWidth() + CFG.PADDING;
                    arrayList8.add((MenuElement) arrayList7.get(i105));
                    int i106 = i105 + 1;
                    if (i106 % 4 == 0 || i105 == size6 - 1) {
                        height9 += ((MenuElement) arrayList7.get(i105)).getHeight() + CFG.PADDING;
                        width33 = i85;
                    }
                    i105 = i106;
                }
                arrayList7.clear();
                if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DIPLOMACY_IMPROVE_RELATIONS) {
                    str5 = "Provinces";
                    str4 = "ImproveRelations";
                    arrayList8.add(new Text_StaticBG(Game.lang.get("ChooseAProvince"), CFG.FONT_REGULAR, -1, i85, height9, i88, CFG.BUTTON_HEIGHT2));
                    height2 = arrayList8.get(arrayList8.size() - 1).getHeight();
                    i71 = CFG.PADDING;
                } else {
                    str4 = "ImproveRelations";
                    str5 = r9;
                    if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DIPLOMACY_DAMAGE_RELATIONS) {
                        arrayList8.add(new Text_StaticBG(Game.lang.get("ChooseAProvince"), CFG.FONT_REGULAR, -1, i85, height9, i88, CFG.BUTTON_HEIGHT2));
                        height2 = arrayList8.get(arrayList8.size() - 1).getHeight();
                        i71 = CFG.PADDING;
                    } else {
                        if (!GameValues.diplomacy.SHOW_LIST_OF_CIVS_RELATIONS_IN_PLAYERS_CIV_VIEW) {
                            arrayList8.add(new AnonymousClass39(Game.lang.get("Relations"), Images.relations, i85, height9, (i88 - CFG.PADDING) / 2, CFG.BUTTON_HEIGHT3, width32, 0, true));
                            arrayList8.add(new AnonymousClass40(Game.lang.get("Government"), Images.government, i85 + CFG.PADDING + ((i88 - CFG.PADDING) / 2), height9, (i88 - CFG.PADDING) / 2, CFG.BUTTON_HEIGHT3, width32, 0, true));
                            height9 += arrayList8.get(arrayList8.size() - 1).getHeight() + CFG.PADDING;
                        }
                        arrayList8.add(new Text_Title_v2Center(Game.lang.get("FormableCivilizations"), -1, Images.boxTitleBORDERWIDTH, height9, i99 - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
                        height9 += arrayList8.get(arrayList8.size() - 1).getHeight() + CFG.PADDING;
                        if (Game.getCiv(Game.player.iCivID).sTagsCanForm.isEmpty()) {
                            i70 = i85;
                            arrayList8.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i70, height9, i88, CFG.BUTTON_HEIGHT4));
                            height9 += arrayList8.get(arrayList8.size() - 1).getHeight() + CFG.PADDING;
                        } else {
                            i72 = 0;
                            while (i72 < Game.getCiv(Game.player.iCivID).sTagsCanForm.size()) {
                                try {
                                    height9 += CFG.PADDING;
                                    int i107 = i84;
                                    arrayList8.add(new AnonymousClass41(i72, i107, height9));
                                    int width34 = i107 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                    int buttonHeight2 = (ButtonFlag_Formable.getButtonHeight() - CFG.PADDING) / 2;
                                    int i108 = (i99 - width34) - i107;
                                    arrayList8.add(new AnonymousClass42(Game.lang.getCiv(Game.getCiv(Game.player.iCivID).sTagsCanForm.get(i72)), width34, height9, i108, buttonHeight2));
                                    arrayList8.get(arrayList8.size() - 1).setCurrent(i72);
                                    str13 = str17;
                                    try {
                                        str17 = str13;
                                        arrayList8.add(new AnonymousClass43(Game.lang.get(str5) + str13, Game.player.formableCivs.get(i72).getControlledProvinces(Game.player.iCivID) + " / " + Game.player.formableCivs.get(i72).getProvincesSize_WithoutNeutral(), Images.provinces, width34, height9 + buttonHeight2 + CFG.PADDING, i108, buttonHeight2, width32));
                                        arrayList8.get(arrayList8.size() - 1).setCurrent(i72);
                                        height9 += ButtonFlag_Formable.getButtonHeight() + CFG.PADDING;
                                        i73 = i88;
                                        i70 = i85;
                                        try {
                                            arrayList8.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(i70, height9 - (ButtonFlag_Formable.getButtonHeight() + (CFG.PADDING * 2)), i73, ButtonFlag_Formable.getButtonHeight() + (CFG.PADDING * 2)));
                                            height9 += CFG.PADDING;
                                            i72++;
                                            i88 = i73;
                                            i85 = i70;
                                            i84 = i107;
                                        } catch (Exception e3) {
                                            e = e3;
                                            CFG.exceptionStack(e);
                                            i88 = i73;
                                            i3 = i70;
                                            if (diplomacyMode) {
                                                str6 = str17;
                                                if (iActiveCivID == Game.player.iCivID) {
                                                }
                                                if (Game.getCiv(iActiveCivID).diplomacy.iAtWarSize > 0) {
                                                    width19 = i100 + CFG.PADDING;
                                                    i47 = height9;
                                                    i48 = 0;
                                                    i49 = 0;
                                                    while (i49 < Game.getCiv(iActiveCivID).diplomacy.iAtWarSize) {
                                                        i50 = i99;
                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width19 > i50) {
                                                            width19 = i100 + CFG.PADDING;
                                                            i47 += i2 + CFG.TEXT_HEIGHT + (CFG.PADDING * 2);
                                                            i48++;
                                                        }
                                                        int i109 = iActiveCivID;
                                                        String warKey = WarManager.getWarKey(i109, Game.getCiv(i109).diplomacy.atWar.get(i49).intValue());
                                                        warScore_Side = WarManager.lWars.get(warKey).warScore * WarManager.lWars.get(warKey).getWarScore_Side(Game.getCiv(iActiveCivID).diplomacy.atWar.get(i49).intValue());
                                                        StringBuilder sb = new StringBuilder();
                                                        if (warScore_Side > 0.0f) {
                                                            str9 = "+";
                                                        } else {
                                                            str9 = str3;
                                                        }
                                                        str8 = str2;
                                                        String string = sb.append(str9).append(CFG.getPrecision2(Math.max(Math.min(warScore_Side, 100.0f), -100.0f), 1)).append(str8).toString();
                                                        if (((int) warScore_Side) == 0) {
                                                            color = Colors.COLOR_TOP_STATS3;
                                                        } else if (warScore_Side < 0.0f) {
                                                            color = Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
                                                        } else {
                                                            color = Colors.COLOR_TEXT_MODIFIER_POSITIVE;
                                                        }
                                                        arrayList8.add(new ButtonFlag_DiplomacyWar(Game.getCiv(iActiveCivID).diplomacy.atWar.get(i49).intValue(), width19, i47 + CFG.PADDING, true, string, color, warKey));
                                                        width19 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                        i49++;
                                                        str2 = str8;
                                                        i99 = i50;
                                                    }
                                                    i4 = i99;
                                                    str7 = str6;
                                                    arrayList8.add(new AnonymousClass51(Game.lang.get("AtWarWith"), Images.war, i3, i47 - ((i2 + (CFG.TEXT_HEIGHT + (CFG.PADDING * 2))) * i48), buttonWidth, (i2 + CFG.TEXT_HEIGHT + (CFG.PADDING * 2)) * (i48 + 1), width32, i88));
                                                    height9 = i47 + i2 + CFG.TEXT_HEIGHT + (CFG.PADDING * 2);
                                                } else {
                                                    str7 = str6;
                                                    i4 = i99;
                                                }
                                                if (Game.getCiv(iActiveCivID).diplomacy.iVassalsSize > 0) {
                                                    width18 = i100 + CFG.PADDING;
                                                    i44 = height9;
                                                    i45 = 0;
                                                    for (i46 = 0; i46 < Game.getCiv(iActiveCivID).diplomacy.iVassalsSize; i46++) {
                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width18 > i4) {
                                                            width18 = i100 + CFG.PADDING;
                                                            i44 += i2;
                                                            i45++;
                                                        }
                                                        arrayList8.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).diplomacy.lVassals.get(i46).c, width18, i44 + CFG.PADDING, true, true, true));
                                                        width18 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                    }
                                                    arrayList8.add(new AnonymousClass52(Game.lang.get(Game_Ages.getVassals()), Images.vassal, i3, i44 - (i2 * i45), buttonWidth, i2 * (i45 + 1), width32, i88));
                                                    height9 = i44 + i2;
                                                }
                                                if (!Game.getCiv(iActiveCivID).diplomacy.alliance.isEmpty()) {
                                                    width17 = i100 + CFG.PADDING;
                                                    i43 = 0;
                                                    for (Diplomacy.DiplomacyData diplomacyData : Game.getCiv(iActiveCivID).diplomacy.alliance.values()) {
                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width17 > i4) {
                                                            width17 = i100 + CFG.PADDING;
                                                            height9 += i2;
                                                            i43++;
                                                        }
                                                        int i110 = width17;
                                                        arrayList8.add(new AnonymousClass53(diplomacyData.iCivID, i110, height9 + CFG.PADDING, true));
                                                        width17 = arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING + i110;
                                                    }
                                                    arrayList8.add(new AnonymousClass54(Game.lang.get("Alliance"), Images.alliance, i3, height9 - (i2 * i43), buttonWidth, i2 * (i43 + 1), width32, i88));
                                                    height9 = Math.max(height9 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                }
                                                iMax = height9;
                                                i5 = 0;
                                                if (!Game.getCiv(iActiveCivID).diplomacy.truce.isEmpty()) {
                                                    it = Game.getCiv(iActiveCivID).diplomacy.truce.values().iterator();
                                                    while (true) {
                                                        if (it.hasNext()) {
                                                            if (Game.getCiv(it.next().iCivID).getNumOfProvinces() > 0) {
                                                                z = true;
                                                                break;
                                                            }
                                                        } else {
                                                            z = false;
                                                            break;
                                                        }
                                                    }
                                                    if (z) {
                                                        width16 = i100 + CFG.PADDING;
                                                        i42 = iMax;
                                                        for (Diplomacy.DiplomacyData diplomacyData2 : Game.getCiv(iActiveCivID).diplomacy.truce.values()) {
                                                            if (Game.getCiv(diplomacyData2.iCivID).getNumOfProvinces() > 0) {
                                                                if (ButtonFlag_Diplomacy.getButtonWidth() + width16 > i4) {
                                                                    width16 = i100 + CFG.PADDING;
                                                                    i42 += i2;
                                                                    i5++;
                                                                }
                                                                arrayList8.add(new AnonymousClass55(diplomacyData2.iCivID, width16, i42 + CFG.PADDING, true));
                                                                width16 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                            }
                                                        }
                                                        arrayList8.add(new AnonymousClass56(Game.lang.get("Truce"), Images.truce, i3, i42 - (i2 * i5), buttonWidth, i2 * (i5 + 1), width32, i88));
                                                        iMax = Math.max(i42 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                        i5 = 0;
                                                    }
                                                }
                                                if (!Game.getCiv(iActiveCivID).diplomacy.defensivePact.isEmpty()) {
                                                    width15 = i100 + CFG.PADDING;
                                                    i41 = iMax;
                                                    for (Diplomacy.DiplomacyData diplomacyData3 : Game.getCiv(iActiveCivID).diplomacy.defensivePact.values()) {
                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width15 > i4) {
                                                            width15 = i100 + CFG.PADDING;
                                                            i41 += i2;
                                                            i5++;
                                                        }
                                                        arrayList8.add(new AnonymousClass57(diplomacyData3.iCivID, width15, i41 + CFG.PADDING, true));
                                                        width15 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                    }
                                                    arrayList8.add(new AnonymousClass58(Game.lang.get("DefensivePact"), Images.defensivePact, i3, i41 - (i2 * i5), buttonWidth, i2 * (i5 + 1), width32, i88));
                                                    iMax = Math.max(i41 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                    i5 = 0;
                                                }
                                                if (!Game.getCiv(iActiveCivID).diplomacy.rivals.isEmpty()) {
                                                    width14 = i100 + CFG.PADDING;
                                                    i40 = iMax;
                                                    for (Diplomacy.DiplomacyData diplomacyData4 : Game.getCiv(iActiveCivID).diplomacy.rivals.values()) {
                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width14 > i4) {
                                                            width14 = i100 + CFG.PADDING;
                                                            i40 += i2;
                                                            i5++;
                                                        }
                                                        arrayList8.add(new AnonymousClass59(diplomacyData4.iCivID, width14, i40 + CFG.PADDING, true));
                                                        width14 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                    }
                                                    arrayList8.add(new AnonymousClass60(Game.lang.get("Rivals"), Images.rivals, i3, i40 - (i2 * i5), buttonWidth, i2 * (i5 + 1), width32, i88));
                                                    iMax = Math.max(i40 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                    i5 = 0;
                                                }
                                                if (!Game.getCiv(iActiveCivID).diplomacy.guarantee.isEmpty()) {
                                                    width13 = i100 + CFG.PADDING;
                                                    i39 = iMax;
                                                    for (Diplomacy.DiplomacyData diplomacyData5 : Game.getCiv(iActiveCivID).diplomacy.guarantee.values()) {
                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width13 > i4) {
                                                            width13 = i100 + CFG.PADDING;
                                                            i39 += i2;
                                                            i5++;
                                                        }
                                                        arrayList8.add(new AnonymousClass61(diplomacyData5.iCivID, width13, i39 + CFG.PADDING, true));
                                                        width13 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                    }
                                                    arrayList8.add(new AnonymousClass62(Game.lang.get("GuaranteeIndependence"), Images.guaranteeIndependence, i3, i39 - (i2 * i5), buttonWidth, i2 * (i5 + 1), width32, i88));
                                                    iMax = Math.max(i39 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                    i5 = 0;
                                                }
                                                if (!Game.getCiv(iActiveCivID).diplomacy.guaranteeByCivID.isEmpty()) {
                                                    width12 = i100 + CFG.PADDING;
                                                    i38 = iMax;
                                                    for (Diplomacy.DiplomacyData diplomacyData6 : Game.getCiv(iActiveCivID).diplomacy.guaranteeByCivID.values()) {
                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width12 > i4) {
                                                            width12 = i100 + CFG.PADDING;
                                                            i38 += i2;
                                                            i5++;
                                                        }
                                                        arrayList8.add(new AnonymousClass63(diplomacyData6.iCivID, width12, i38 + CFG.PADDING, true));
                                                        width12 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                    }
                                                    arrayList8.add(new AnonymousClass64(Game.lang.get("GuaranteeTheirIndependence"), Images.guaranteeIndependence, i3, i38 - (i2 * i5), buttonWidth, i2 * (i5 + 1), width32, i88));
                                                    iMax = Math.max(i38 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                    i5 = 0;
                                                }
                                                if (!Game.getCiv(iActiveCivID).diplomacy.nonAggressionPact.isEmpty()) {
                                                    width11 = i100 + CFG.PADDING;
                                                    i37 = iMax;
                                                    for (Diplomacy.DiplomacyData diplomacyData7 : Game.getCiv(iActiveCivID).diplomacy.nonAggressionPact.values()) {
                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width11 > i4) {
                                                            width11 = i100 + CFG.PADDING;
                                                            i37 += i2;
                                                            i5++;
                                                        }
                                                        arrayList8.add(new AnonymousClass65(diplomacyData7.iCivID, width11, i37 + CFG.PADDING, true));
                                                        width11 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                    }
                                                    arrayList8.add(new AnonymousClass66(Game.lang.get("NonAggressionPact").replace("-", " "), Images.nonAggression, i3, i37 - (i2 * i5), buttonWidth, i2 * (i5 + 1), width32, i88));
                                                    iMax = Math.max(i37 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                    i5 = 0;
                                                }
                                                arrayList4 = new ArrayList();
                                                while (i31 < Game.getCivsSize()) {
                                                    if (!Game.getCiv(i31).diplomacy.isImprovingRelations(iActiveCivID)) {
                                                    }
                                                }
                                                if (Game.getCiv(iActiveCivID).diplomacy.iImprovingRelationsSize <= 0) {
                                                    width9 = i100 + CFG.PADDING;
                                                    i32 = i5;
                                                    for (i33 = 0; i33 < Game.getCiv(iActiveCivID).diplomacy.iImprovingRelationsSize; i33++) {
                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width9 > i4) {
                                                            width9 = i100 + CFG.PADDING;
                                                            iMax += i2;
                                                            i32++;
                                                        }
                                                        if (Game.getCiv(Game.getCiv(iActiveCivID).diplomacy.improvingRelations.get(i33).iCivID).diplomacy.isImprovingRelations(iActiveCivID)) {
                                                            arrayList8.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).diplomacy.improvingRelations.get(i33).iCivID, width9, iMax + CFG.PADDING, true, true));
                                                        } else {
                                                            arrayList8.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).diplomacy.improvingRelations.get(i33).iCivID, width9, iMax + CFG.PADDING, true, true, true));
                                                        }
                                                        width9 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                    }
                                                    i34 = iMax;
                                                    width10 = width9;
                                                    i36 = i32;
                                                    for (i35 = 0; i35 < arrayList4.size(); i35++) {
                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width10 > i4) {
                                                            width10 = i100 + CFG.PADDING;
                                                            i34 += i2;
                                                            i36++;
                                                        }
                                                        arrayList8.add(new ButtonFlag_Diplomacy(((Integer) arrayList4.get(i35)).intValue(), width10, i34 + CFG.PADDING, true, true, false));
                                                        width10 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                    }
                                                    arrayList8.add(new AnonymousClass67(Game.lang.get("ImprovingRelations"), Images.relationsUp, i3, i34 - (i2 * i36), buttonWidth, i2 * (i36 + 1), width32, i88));
                                                    iMax = Math.max(i34 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                    i5 = 0;
                                                } else {
                                                    width9 = i100 + CFG.PADDING;
                                                    i32 = i5;
                                                    while (i33 < Game.getCiv(iActiveCivID).diplomacy.iImprovingRelationsSize) {
                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width9 > i4) {
                                                            width9 = i100 + CFG.PADDING;
                                                            iMax += i2;
                                                            i32++;
                                                        }
                                                        if (Game.getCiv(Game.getCiv(iActiveCivID).diplomacy.improvingRelations.get(i33).iCivID).diplomacy.isImprovingRelations(iActiveCivID)) {
                                                            arrayList8.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).diplomacy.improvingRelations.get(i33).iCivID, width9, iMax + CFG.PADDING, true, true));
                                                        } else {
                                                            arrayList8.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).diplomacy.improvingRelations.get(i33).iCivID, width9, iMax + CFG.PADDING, true, true, true));
                                                        }
                                                        width9 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                    }
                                                    i34 = iMax;
                                                    width10 = width9;
                                                    i36 = i32;
                                                    while (i35 < arrayList4.size()) {
                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width10 > i4) {
                                                            width10 = i100 + CFG.PADDING;
                                                            i34 += i2;
                                                            i36++;
                                                        }
                                                        arrayList8.add(new ButtonFlag_Diplomacy(((Integer) arrayList4.get(i35)).intValue(), width10, i34 + CFG.PADDING, true, true, false));
                                                        width10 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                    }
                                                    arrayList8.add(new AnonymousClass67(Game.lang.get("ImprovingRelations"), Images.relationsUp, i3, i34 - (i2 * i36), buttonWidth, i2 * (i36 + 1), width32, i88));
                                                    iMax = Math.max(i34 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                    i5 = 0;
                                                }
                                                arrayList3 = new ArrayList();
                                                while (i25 < Game.getCivsSize()) {
                                                    if (!Game.getCiv(i25).diplomacy.isDamagingRelations(iActiveCivID)) {
                                                    }
                                                }
                                                if (Game.getCiv(iActiveCivID).diplomacy.iDamagingRelationsSize <= 0) {
                                                    width7 = i100 + CFG.PADDING;
                                                    i26 = i5;
                                                    for (i27 = 0; i27 < Game.getCiv(iActiveCivID).diplomacy.iDamagingRelationsSize; i27++) {
                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width7 > i4) {
                                                            width7 = i100 + CFG.PADDING;
                                                            iMax += i2;
                                                            i26++;
                                                        }
                                                        if (Game.getCiv(Game.getCiv(iActiveCivID).diplomacy.damagingRelations.get(i27).iCivID).diplomacy.isDamagingRelations(iActiveCivID)) {
                                                            arrayList8.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).diplomacy.damagingRelations.get(i27).iCivID, width7, iMax + CFG.PADDING, true, true));
                                                        } else {
                                                            arrayList8.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).diplomacy.damagingRelations.get(i27).iCivID, width7, iMax + CFG.PADDING, true, true, true));
                                                        }
                                                        width7 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                    }
                                                    i28 = iMax;
                                                    width8 = width7;
                                                    i30 = i26;
                                                    for (i29 = 0; i29 < arrayList3.size(); i29++) {
                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width8 > i4) {
                                                            width8 = i100 + CFG.PADDING;
                                                            i28 += i2;
                                                            i30++;
                                                        }
                                                        arrayList8.add(new ButtonFlag_Diplomacy(((Integer) arrayList3.get(i29)).intValue(), width8, i28 + CFG.PADDING, true, true, false));
                                                        width8 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                    }
                                                    arrayList8.add(new AnonymousClass68(Game.lang.get("DamagingRelations"), Images.relationsDown, i3, i28 - (i2 * i30), buttonWidth, i2 * (i30 + 1), width32, i88));
                                                    iMax = Math.max(i28 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                    i5 = 0;
                                                } else {
                                                    width7 = i100 + CFG.PADDING;
                                                    i26 = i5;
                                                    while (i27 < Game.getCiv(iActiveCivID).diplomacy.iDamagingRelationsSize) {
                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width7 > i4) {
                                                            width7 = i100 + CFG.PADDING;
                                                            iMax += i2;
                                                            i26++;
                                                        }
                                                        if (Game.getCiv(Game.getCiv(iActiveCivID).diplomacy.damagingRelations.get(i27).iCivID).diplomacy.isDamagingRelations(iActiveCivID)) {
                                                            arrayList8.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).diplomacy.damagingRelations.get(i27).iCivID, width7, iMax + CFG.PADDING, true, true));
                                                        } else {
                                                            arrayList8.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).diplomacy.damagingRelations.get(i27).iCivID, width7, iMax + CFG.PADDING, true, true, true));
                                                        }
                                                        width7 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                    }
                                                    i28 = iMax;
                                                    width8 = width7;
                                                    i30 = i26;
                                                    while (i29 < arrayList3.size()) {
                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width8 > i4) {
                                                            width8 = i100 + CFG.PADDING;
                                                            i28 += i2;
                                                            i30++;
                                                        }
                                                        arrayList8.add(new ButtonFlag_Diplomacy(((Integer) arrayList3.get(i29)).intValue(), width8, i28 + CFG.PADDING, true, true, false));
                                                        width8 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                    }
                                                    arrayList8.add(new AnonymousClass68(Game.lang.get("DamagingRelations"), Images.relationsDown, i3, i28 - (i2 * i30), buttonWidth, i2 * (i30 + 1), width32, i88));
                                                    iMax = Math.max(i28 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                    i5 = 0;
                                                }
                                                arrayList2 = new ArrayList();
                                                while (i20 < Game.getCivsSize()) {
                                                    if (Game.getCiv(i20).diplomacy.getRelation(iActiveCivID) < GameValues.diplomacy.DIPLOMACY_RELATIONS_FRIENDLY) {
                                                    }
                                                }
                                                if (!arrayList2.isEmpty()) {
                                                    i21 = iMax;
                                                    width6 = i100 + CFG.PADDING;
                                                    i22 = i5;
                                                    while (i23 < GameValues.diplomacy.DIPLOMACY_FRIENDLY_LIMIT_IN_DIPLOMACY_VIEW) {
                                                        i24 = 0;
                                                        for (size4 = arrayList2.size() - 1; size4 > 0; size4--) {
                                                            if (Game.getCiv(((Integer) arrayList2.get(i24)).intValue()).diplomacy.getRelation(iActiveCivID) < Game.getCiv(((Integer) arrayList2.get(size4)).intValue()).diplomacy.getRelation(iActiveCivID)) {
                                                                i24 = size4;
                                                            }
                                                        }
                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width6 > i4) {
                                                            width6 = i100 + CFG.PADDING;
                                                            i21 += i2;
                                                            i22++;
                                                        }
                                                        arrayList8.add(new ButtonFlag_Diplomacy(((Integer) arrayList2.get(i24)).intValue(), width6, CFG.PADDING + i21, true));
                                                        width6 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                        arrayList2.remove(i24);
                                                    }
                                                    arrayList8.add(new AnonymousClass69(Game.lang.get("FriendlyCivilizations"), Images.heart, i3, i21 - (i2 * i22), buttonWidth, i2 * (i22 + 1), width32, i88));
                                                    iMax = Math.max(i21 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                    i5 = 0;
                                                }
                                                if (!Game.getCiv(iActiveCivID).diplomacy.militaryAccess.isEmpty()) {
                                                    width5 = i100 + CFG.PADDING;
                                                    i19 = iMax;
                                                    for (Diplomacy.DiplomacyData diplomacyData8 : Game.getCiv(iActiveCivID).diplomacy.militaryAccess.values()) {
                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width5 > i4) {
                                                            width5 = i100 + CFG.PADDING;
                                                            i19 += i2;
                                                            i5++;
                                                        }
                                                        arrayList8.add(new AnonymousClass70(diplomacyData8.iCivID, width5, i19 + CFG.PADDING, true));
                                                        width5 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                    }
                                                    arrayList8.add(new AnonymousClass71(Game.lang.get("HaveMilitaryAccess"), Images.militaryAccess, i3, i19 - (i2 * i5), buttonWidth, i2 * (i5 + 1), width32, i88));
                                                    iMax = Math.max(i19 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                    i5 = 0;
                                                }
                                                arrayList = new ArrayList();
                                                while (i15 < Game.getCivsSize()) {
                                                    if (Game.getCiv(i15).getNumOfProvinces() <= 0) {
                                                    }
                                                }
                                                if (!arrayList.isEmpty()) {
                                                    i16 = iMax;
                                                    width4 = i100 + CFG.PADDING;
                                                    i17 = i5;
                                                    for (i18 = 0; i18 < arrayList.size(); i18++) {
                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width4 > i4) {
                                                            width4 = i100 + CFG.PADDING;
                                                            i16 += i2;
                                                            i17++;
                                                        }
                                                        int i111 = width4;
                                                        arrayList8.add(new AnonymousClass72(((Integer) arrayList.get(i18)).intValue(), i111, i16 + CFG.PADDING, true));
                                                        width4 = arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING + i111;
                                                    }
                                                    arrayList8.add(new AnonymousClass73(Game.lang.get("GivesMilitaryAccess"), Images.militaryAccess2, i3, i16 - (i2 * i17), buttonWidth, i2 * (i17 + 1), width32, i88));
                                                    iMax = Math.max(i16 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                    i5 = 0;
                                                }
                                                rivaledBy = RivalsManager.getRivaledBy(iActiveCivID);
                                                if (!rivaledBy.isEmpty()) {
                                                    int i112 = i100 + CFG.PADDING;
                                                    size3 = rivaledBy.size();
                                                    i12 = iMax;
                                                    width3 = i112;
                                                    i13 = i5;
                                                    for (i14 = 0; i14 < size3; i14++) {
                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width3 > i4) {
                                                            width3 = i100 + CFG.PADDING;
                                                            i12 += i2;
                                                            i13++;
                                                        }
                                                        arrayList8.add(new ButtonFlag_Diplomacy(rivaledBy.get(i14).intValue(), width3, CFG.PADDING + i12, true));
                                                        width3 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                    }
                                                    arrayList8.add(new AnonymousClass74(Game.lang.get("RivaledBy"), Images.rivals, i3, i12 - (i2 * i13), buttonWidth, i2 * (i13 + 1), width32, i88));
                                                    iMax = Math.max(i12 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                    i5 = 0;
                                                }
                                                if (Game.getCiv(iActiveCivID).civNeighbors.civsSize > 0) {
                                                    int i113 = i100 + CFG.PADDING;
                                                    size2 = arrayList8.size();
                                                    i9 = iMax;
                                                    width2 = i113;
                                                    i10 = i5;
                                                    for (i11 = 0; i11 < Game.getCiv(iActiveCivID).civNeighbors.civsSize; i11++) {
                                                        if (!Game.getCiv(iActiveCivID).civNeighbors.civs.get(i11).byLand) {
                                                            if (ButtonFlag_Diplomacy.getButtonWidth() + width2 > i4) {
                                                                width2 = i100 + CFG.PADDING;
                                                                i9 += i2;
                                                                i10++;
                                                            }
                                                            int i114 = width2;
                                                            arrayList8.add(new AnonymousClass75(Game.getCiv(iActiveCivID).civNeighbors.civs.get(i11).civID, i114, i9 + CFG.PADDING, true));
                                                            width2 = i114 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                        }
                                                    }
                                                    if (size2 != arrayList8.size()) {
                                                        arrayList8.add(new AnonymousClass76(Game.lang.get("NeighbouringCivilizations") + str7 + (arrayList8.size() - size2), Images.frontLine, i3, i9 - (i2 * i10), buttonWidth, i2 * (i10 + 1), width32, i88));
                                                        iMax = Math.max(i9 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                        i5 = 0;
                                                    } else {
                                                        iMax = i9;
                                                        i5 = i10;
                                                    }
                                                }
                                                civsPossibleToLiberate = PeaceTreaty.getCivsPossibleToLiberate(iActiveCivID);
                                                if (!civsPossibleToLiberate.isEmpty()) {
                                                    width = i100 + CFG.PADDING;
                                                    size = civsPossibleToLiberate.size();
                                                    i6 = iMax;
                                                    i7 = i5;
                                                    i8 = 0;
                                                    while (i8 < size) {
                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width > i4) {
                                                            width = i100 + CFG.PADDING;
                                                            i6 += i2;
                                                            i7++;
                                                        }
                                                        arrayList8.add(new AnonymousClass77(civsPossibleToLiberate.get(i8).intValue(), width, i6 + CFG.PADDING, true));
                                                        width += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                        i8++;
                                                        i7 = i7;
                                                    }
                                                    arrayList8.add(new AnonymousClass78(Game.lang.get("ConqueredCivilizations"), Images.conqueredCivs, i3, i6 - (i2 * i7), buttonWidth, i2 * (i7 + 1), width32, i88));
                                                    iMax = Math.max(i6 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                }
                                                height9 = iMax + CFG.PADDING;
                                            } else {
                                                str6 = str17;
                                                if (iActiveCivID == Game.player.iCivID) {
                                                }
                                                if (Game.getCiv(iActiveCivID).diplomacy.iAtWarSize > 0) {
                                                    width19 = i100 + CFG.PADDING;
                                                    i47 = height9;
                                                    i48 = 0;
                                                    i49 = 0;
                                                    while (i49 < Game.getCiv(iActiveCivID).diplomacy.iAtWarSize) {
                                                        try {
                                                            i50 = i99;
                                                            if (ButtonFlag_Diplomacy.getButtonWidth() + width19 > i50) {
                                                                try {
                                                                    width19 = i100 + CFG.PADDING;
                                                                    i47 += i2 + CFG.TEXT_HEIGHT + (CFG.PADDING * 2);
                                                                    i48++;
                                                                } catch (Exception e4) {
                                                                    exc16 = e4;
                                                                    str8 = str2;
                                                                    CFG.exceptionStack(exc16);
                                                                }
                                                            }
                                                            try {
                                                                int i1010 = iActiveCivID;
                                                                String warKey2 = WarManager.getWarKey(i1010, Game.getCiv(i1010).diplomacy.atWar.get(i49).intValue());
                                                                warScore_Side = WarManager.lWars.get(warKey2).warScore * WarManager.lWars.get(warKey2).getWarScore_Side(Game.getCiv(iActiveCivID).diplomacy.atWar.get(i49).intValue());
                                                                StringBuilder sb2 = new StringBuilder();
                                                                if (warScore_Side > 0.0f) {
                                                                    str9 = "+";
                                                                } else {
                                                                    str9 = str3;
                                                                }
                                                                try {
                                                                    str8 = str2;
                                                                    try {
                                                                        String string2 = sb2.append(str9).append(CFG.getPrecision2(Math.max(Math.min(warScore_Side, 100.0f), -100.0f), 1)).append(str8).toString();
                                                                        if (((int) warScore_Side) == 0) {
                                                                            color = Colors.COLOR_TOP_STATS3;
                                                                        } else if (warScore_Side < 0.0f) {
                                                                            color = Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
                                                                        } else {
                                                                            color = Colors.COLOR_TEXT_MODIFIER_POSITIVE;
                                                                        }
                                                                        arrayList8.add(new ButtonFlag_DiplomacyWar(Game.getCiv(iActiveCivID).diplomacy.atWar.get(i49).intValue(), width19, i47 + CFG.PADDING, true, string2, color, warKey2));
                                                                        width19 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                                    } catch (Exception e5) {
                                                                        e = e5;
                                                                        exc16 = e;
                                                                        CFG.exceptionStack(exc16);
                                                                    }
                                                                } catch (Exception e6) {
                                                                    e = e6;
                                                                    str8 = str2;
                                                                }
                                                            } catch (Exception e7) {
                                                                e = e7;
                                                                str8 = str2;
                                                                exc16 = e;
                                                                CFG.exceptionStack(exc16);
                                                                i49++;
                                                                str2 = str8;
                                                                i99 = i50;
                                                            }
                                                        } catch (Exception e8) {
                                                            e = e8;
                                                            i50 = i99;
                                                        }
                                                        i49++;
                                                        str2 = str8;
                                                        i99 = i50;
                                                    }
                                                    i4 = i99;
                                                    str7 = str6;
                                                    arrayList8.add(new AnonymousClass51(Game.lang.get("AtWarWith"), Images.war, i3, i47 - ((i2 + (CFG.TEXT_HEIGHT + (CFG.PADDING * 2))) * i48), buttonWidth, (i2 + CFG.TEXT_HEIGHT + (CFG.PADDING * 2)) * (i48 + 1), width32, i88));
                                                    height9 = i47 + i2 + CFG.TEXT_HEIGHT + (CFG.PADDING * 2);
                                                } else {
                                                    str7 = str6;
                                                    i4 = i99;
                                                }
                                                if (Game.getCiv(iActiveCivID).diplomacy.iVassalsSize > 0) {
                                                    width18 = i100 + CFG.PADDING;
                                                    i44 = height9;
                                                    i45 = 0;
                                                    while (i46 < Game.getCiv(iActiveCivID).diplomacy.iVassalsSize) {
                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width18 > i4) {
                                                            width18 = i100 + CFG.PADDING;
                                                            i44 += i2;
                                                            i45++;
                                                        }
                                                        arrayList8.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).diplomacy.lVassals.get(i46).c, width18, i44 + CFG.PADDING, true, true, true));
                                                        width18 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                    }
                                                    arrayList8.add(new AnonymousClass52(Game.lang.get(Game_Ages.getVassals()), Images.vassal, i3, i44 - (i2 * i45), buttonWidth, i2 * (i45 + 1), width32, i88));
                                                    height9 = i44 + i2;
                                                }
                                                try {
                                                    if (!Game.getCiv(iActiveCivID).diplomacy.alliance.isEmpty()) {
                                                        width17 = i100 + CFG.PADDING;
                                                        i43 = 0;
                                                        while (r7.hasNext()) {
                                                            try {
                                                                if (ButtonFlag_Diplomacy.getButtonWidth() + width17 > i4) {
                                                                    width17 = i100 + CFG.PADDING;
                                                                    height9 += i2;
                                                                    i43++;
                                                                }
                                                                int i115 = width17;
                                                                arrayList8.add(new AnonymousClass53(diplomacyData.iCivID, i115, height9 + CFG.PADDING, true));
                                                                width17 = arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING + i115;
                                                            } catch (Exception e9) {
                                                                exc = e9;
                                                                iMax = height9;
                                                                i5 = i43;
                                                                CFG.exceptionStack(exc);
                                                            }
                                                        }
                                                        arrayList8.add(new AnonymousClass54(Game.lang.get("Alliance"), Images.alliance, i3, height9 - (i2 * i43), buttonWidth, i2 * (i43 + 1), width32, i88));
                                                        height9 = Math.max(height9 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                    }
                                                    iMax = height9;
                                                    i5 = 0;
                                                } catch (Exception e10) {
                                                    exc = e10;
                                                    iMax = height9;
                                                    i5 = 0;
                                                }
                                                try {
                                                    if (!Game.getCiv(iActiveCivID).diplomacy.truce.isEmpty()) {
                                                        it = Game.getCiv(iActiveCivID).diplomacy.truce.values().iterator();
                                                        while (true) {
                                                            if (it.hasNext()) {
                                                                if (Game.getCiv(it.next().iCivID).getNumOfProvinces() > 0) {
                                                                    z = true;
                                                                    break;
                                                                }
                                                            } else {
                                                                z = false;
                                                                break;
                                                            }
                                                        }
                                                        if (z) {
                                                            width16 = i100 + CFG.PADDING;
                                                            i42 = iMax;
                                                            while (r7.hasNext()) {
                                                                try {
                                                                    if (Game.getCiv(diplomacyData2.iCivID).getNumOfProvinces() > 0) {
                                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width16 > i4) {
                                                                            width16 = i100 + CFG.PADDING;
                                                                            i42 += i2;
                                                                            i5++;
                                                                        }
                                                                        arrayList8.add(new AnonymousClass55(diplomacyData2.iCivID, width16, i42 + CFG.PADDING, true));
                                                                        width16 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                                    }
                                                                } catch (Exception e11) {
                                                                    exc2 = e11;
                                                                    iMax = i42;
                                                                }
                                                            }
                                                            arrayList8.add(new AnonymousClass56(Game.lang.get("Truce"), Images.truce, i3, i42 - (i2 * i5), buttonWidth, i2 * (i5 + 1), width32, i88));
                                                            try {
                                                                iMax = Math.max(i42 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                                i5 = 0;
                                                            } catch (Exception e12) {
                                                                exc2 = e12;
                                                                iMax = i42;
                                                                i5 = 0;
                                                                CFG.exceptionStack(exc2);
                                                            }
                                                        }
                                                    }
                                                } catch (Exception e13) {
                                                    exc2 = e13;
                                                }
                                                try {
                                                    if (!Game.getCiv(iActiveCivID).diplomacy.defensivePact.isEmpty()) {
                                                        width15 = i100 + CFG.PADDING;
                                                        i41 = iMax;
                                                        while (r7.hasNext()) {
                                                            try {
                                                                if (ButtonFlag_Diplomacy.getButtonWidth() + width15 > i4) {
                                                                    width15 = i100 + CFG.PADDING;
                                                                    i41 += i2;
                                                                    i5++;
                                                                }
                                                                arrayList8.add(new AnonymousClass57(diplomacyData3.iCivID, width15, i41 + CFG.PADDING, true));
                                                                width15 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                            } catch (Exception e14) {
                                                                exc3 = e14;
                                                                iMax = i41;
                                                            }
                                                        }
                                                        arrayList8.add(new AnonymousClass58(Game.lang.get("DefensivePact"), Images.defensivePact, i3, i41 - (i2 * i5), buttonWidth, i2 * (i5 + 1), width32, i88));
                                                        try {
                                                            iMax = Math.max(i41 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                            i5 = 0;
                                                        } catch (Exception e15) {
                                                            exc3 = e15;
                                                            iMax = i41;
                                                            i5 = 0;
                                                            CFG.exceptionStack(exc3);
                                                        }
                                                    }
                                                } catch (Exception e16) {
                                                    exc3 = e16;
                                                }
                                                try {
                                                    if (!Game.getCiv(iActiveCivID).diplomacy.rivals.isEmpty()) {
                                                        width14 = i100 + CFG.PADDING;
                                                        i40 = iMax;
                                                        while (r7.hasNext()) {
                                                            try {
                                                                if (ButtonFlag_Diplomacy.getButtonWidth() + width14 > i4) {
                                                                    width14 = i100 + CFG.PADDING;
                                                                    i40 += i2;
                                                                    i5++;
                                                                }
                                                                arrayList8.add(new AnonymousClass59(diplomacyData4.iCivID, width14, i40 + CFG.PADDING, true));
                                                                width14 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                            } catch (Exception e17) {
                                                                exc4 = e17;
                                                                iMax = i40;
                                                            }
                                                        }
                                                        arrayList8.add(new AnonymousClass60(Game.lang.get("Rivals"), Images.rivals, i3, i40 - (i2 * i5), buttonWidth, i2 * (i5 + 1), width32, i88));
                                                        try {
                                                            iMax = Math.max(i40 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                            i5 = 0;
                                                        } catch (Exception e18) {
                                                            exc4 = e18;
                                                            iMax = i40;
                                                            i5 = 0;
                                                            CFG.exceptionStack(exc4);
                                                        }
                                                    }
                                                } catch (Exception e19) {
                                                    exc4 = e19;
                                                }
                                                try {
                                                    if (!Game.getCiv(iActiveCivID).diplomacy.guarantee.isEmpty()) {
                                                        width13 = i100 + CFG.PADDING;
                                                        i39 = iMax;
                                                        while (r7.hasNext()) {
                                                            try {
                                                                if (ButtonFlag_Diplomacy.getButtonWidth() + width13 > i4) {
                                                                    width13 = i100 + CFG.PADDING;
                                                                    i39 += i2;
                                                                    i5++;
                                                                }
                                                                arrayList8.add(new AnonymousClass61(diplomacyData5.iCivID, width13, i39 + CFG.PADDING, true));
                                                                width13 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                            } catch (Exception e20) {
                                                                exc5 = e20;
                                                                iMax = i39;
                                                            }
                                                        }
                                                        arrayList8.add(new AnonymousClass62(Game.lang.get("GuaranteeIndependence"), Images.guaranteeIndependence, i3, i39 - (i2 * i5), buttonWidth, i2 * (i5 + 1), width32, i88));
                                                        try {
                                                            iMax = Math.max(i39 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                            i5 = 0;
                                                        } catch (Exception e21) {
                                                            exc5 = e21;
                                                            iMax = i39;
                                                            i5 = 0;
                                                            CFG.exceptionStack(exc5);
                                                        }
                                                    }
                                                } catch (Exception e22) {
                                                    exc5 = e22;
                                                }
                                                try {
                                                    if (!Game.getCiv(iActiveCivID).diplomacy.guaranteeByCivID.isEmpty()) {
                                                        width12 = i100 + CFG.PADDING;
                                                        i38 = iMax;
                                                        while (r7.hasNext()) {
                                                            try {
                                                                if (ButtonFlag_Diplomacy.getButtonWidth() + width12 > i4) {
                                                                    width12 = i100 + CFG.PADDING;
                                                                    i38 += i2;
                                                                    i5++;
                                                                }
                                                                arrayList8.add(new AnonymousClass63(diplomacyData6.iCivID, width12, i38 + CFG.PADDING, true));
                                                                width12 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                            } catch (Exception e23) {
                                                                exc6 = e23;
                                                                iMax = i38;
                                                            }
                                                        }
                                                        arrayList8.add(new AnonymousClass64(Game.lang.get("GuaranteeTheirIndependence"), Images.guaranteeIndependence, i3, i38 - (i2 * i5), buttonWidth, i2 * (i5 + 1), width32, i88));
                                                        try {
                                                            iMax = Math.max(i38 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                            i5 = 0;
                                                        } catch (Exception e24) {
                                                            exc6 = e24;
                                                            iMax = i38;
                                                            i5 = 0;
                                                            CFG.exceptionStack(exc6);
                                                        }
                                                    }
                                                } catch (Exception e25) {
                                                    exc6 = e25;
                                                }
                                                try {
                                                    if (!Game.getCiv(iActiveCivID).diplomacy.nonAggressionPact.isEmpty()) {
                                                        width11 = i100 + CFG.PADDING;
                                                        i37 = iMax;
                                                        while (r7.hasNext()) {
                                                            try {
                                                                if (ButtonFlag_Diplomacy.getButtonWidth() + width11 > i4) {
                                                                    width11 = i100 + CFG.PADDING;
                                                                    i37 += i2;
                                                                    i5++;
                                                                }
                                                                arrayList8.add(new AnonymousClass65(diplomacyData7.iCivID, width11, i37 + CFG.PADDING, true));
                                                                width11 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                            } catch (Exception e26) {
                                                                exc7 = e26;
                                                                iMax = i37;
                                                            }
                                                        }
                                                        arrayList8.add(new AnonymousClass66(Game.lang.get("NonAggressionPact").replace("-", " "), Images.nonAggression, i3, i37 - (i2 * i5), buttonWidth, i2 * (i5 + 1), width32, i88));
                                                        try {
                                                            iMax = Math.max(i37 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                            i5 = 0;
                                                        } catch (Exception e27) {
                                                            exc7 = e27;
                                                            iMax = i37;
                                                            i5 = 0;
                                                            CFG.exceptionStack(exc7);
                                                        }
                                                    }
                                                } catch (Exception e28) {
                                                    exc7 = e28;
                                                }
                                                try {
                                                    arrayList4 = new ArrayList();
                                                    while (i31 < Game.getCivsSize()) {
                                                        if (!Game.getCiv(i31).diplomacy.isImprovingRelations(iActiveCivID)) {
                                                        }
                                                    }
                                                    if (Game.getCiv(iActiveCivID).diplomacy.iImprovingRelationsSize <= 0) {
                                                        width9 = i100 + CFG.PADDING;
                                                        i32 = i5;
                                                        while (i33 < Game.getCiv(iActiveCivID).diplomacy.iImprovingRelationsSize) {
                                                            try {
                                                                if (ButtonFlag_Diplomacy.getButtonWidth() + width9 > i4) {
                                                                    width9 = i100 + CFG.PADDING;
                                                                    iMax += i2;
                                                                    i32++;
                                                                }
                                                                if (Game.getCiv(Game.getCiv(iActiveCivID).diplomacy.improvingRelations.get(i33).iCivID).diplomacy.isImprovingRelations(iActiveCivID)) {
                                                                    arrayList8.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).diplomacy.improvingRelations.get(i33).iCivID, width9, iMax + CFG.PADDING, true, true));
                                                                } else {
                                                                    arrayList8.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).diplomacy.improvingRelations.get(i33).iCivID, width9, iMax + CFG.PADDING, true, true, true));
                                                                }
                                                                width9 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                            } catch (Exception e29) {
                                                                exc8 = e29;
                                                                i5 = i32;
                                                            }
                                                        }
                                                        i34 = iMax;
                                                        width10 = width9;
                                                        i36 = i32;
                                                        while (i35 < arrayList4.size()) {
                                                            try {
                                                                if (ButtonFlag_Diplomacy.getButtonWidth() + width10 > i4) {
                                                                    width10 = i100 + CFG.PADDING;
                                                                    i34 += i2;
                                                                    i36++;
                                                                }
                                                                arrayList8.add(new ButtonFlag_Diplomacy(((Integer) arrayList4.get(i35)).intValue(), width10, i34 + CFG.PADDING, true, true, false));
                                                                width10 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                            } catch (Exception e30) {
                                                                exc8 = e30;
                                                                iMax = i34;
                                                                i5 = i36;
                                                            }
                                                        }
                                                        arrayList8.add(new AnonymousClass67(Game.lang.get("ImprovingRelations"), Images.relationsUp, i3, i34 - (i2 * i36), buttonWidth, i2 * (i36 + 1), width32, i88));
                                                        try {
                                                            iMax = Math.max(i34 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                            i5 = 0;
                                                        } catch (Exception e31) {
                                                            exc8 = e31;
                                                            iMax = i34;
                                                            i5 = 0;
                                                            CFG.exceptionStack(exc8);
                                                        }
                                                    } else {
                                                        width9 = i100 + CFG.PADDING;
                                                        i32 = i5;
                                                        while (i33 < Game.getCiv(iActiveCivID).diplomacy.iImprovingRelationsSize) {
                                                            if (ButtonFlag_Diplomacy.getButtonWidth() + width9 > i4) {
                                                                width9 = i100 + CFG.PADDING;
                                                                iMax += i2;
                                                                i32++;
                                                            }
                                                            if (Game.getCiv(Game.getCiv(iActiveCivID).diplomacy.improvingRelations.get(i33).iCivID).diplomacy.isImprovingRelations(iActiveCivID)) {
                                                                arrayList8.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).diplomacy.improvingRelations.get(i33).iCivID, width9, iMax + CFG.PADDING, true, true));
                                                            } else {
                                                                arrayList8.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).diplomacy.improvingRelations.get(i33).iCivID, width9, iMax + CFG.PADDING, true, true, true));
                                                            }
                                                            width9 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                        }
                                                        i34 = iMax;
                                                        width10 = width9;
                                                        i36 = i32;
                                                        while (i35 < arrayList4.size()) {
                                                            if (ButtonFlag_Diplomacy.getButtonWidth() + width10 > i4) {
                                                                width10 = i100 + CFG.PADDING;
                                                                i34 += i2;
                                                                i36++;
                                                            }
                                                            arrayList8.add(new ButtonFlag_Diplomacy(((Integer) arrayList4.get(i35)).intValue(), width10, i34 + CFG.PADDING, true, true, false));
                                                            width10 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                        }
                                                        arrayList8.add(new AnonymousClass67(Game.lang.get("ImprovingRelations"), Images.relationsUp, i3, i34 - (i2 * i36), buttonWidth, i2 * (i36 + 1), width32, i88));
                                                        iMax = Math.max(i34 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                        i5 = 0;
                                                    }
                                                } catch (Exception e32) {
                                                    exc8 = e32;
                                                }
                                                try {
                                                    arrayList3 = new ArrayList();
                                                    while (i25 < Game.getCivsSize()) {
                                                        if (!Game.getCiv(i25).diplomacy.isDamagingRelations(iActiveCivID)) {
                                                        }
                                                    }
                                                    if (Game.getCiv(iActiveCivID).diplomacy.iDamagingRelationsSize <= 0) {
                                                        width7 = i100 + CFG.PADDING;
                                                        i26 = i5;
                                                        while (i27 < Game.getCiv(iActiveCivID).diplomacy.iDamagingRelationsSize) {
                                                            try {
                                                                if (ButtonFlag_Diplomacy.getButtonWidth() + width7 > i4) {
                                                                    width7 = i100 + CFG.PADDING;
                                                                    iMax += i2;
                                                                    i26++;
                                                                }
                                                                if (Game.getCiv(Game.getCiv(iActiveCivID).diplomacy.damagingRelations.get(i27).iCivID).diplomacy.isDamagingRelations(iActiveCivID)) {
                                                                    arrayList8.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).diplomacy.damagingRelations.get(i27).iCivID, width7, iMax + CFG.PADDING, true, true));
                                                                } else {
                                                                    arrayList8.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).diplomacy.damagingRelations.get(i27).iCivID, width7, iMax + CFG.PADDING, true, true, true));
                                                                }
                                                                width7 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                            } catch (Exception e33) {
                                                                exc9 = e33;
                                                                i5 = i26;
                                                            }
                                                        }
                                                        i28 = iMax;
                                                        width8 = width7;
                                                        i30 = i26;
                                                        while (i29 < arrayList3.size()) {
                                                            try {
                                                                if (ButtonFlag_Diplomacy.getButtonWidth() + width8 > i4) {
                                                                    width8 = i100 + CFG.PADDING;
                                                                    i28 += i2;
                                                                    i30++;
                                                                }
                                                                arrayList8.add(new ButtonFlag_Diplomacy(((Integer) arrayList3.get(i29)).intValue(), width8, i28 + CFG.PADDING, true, true, false));
                                                                width8 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                            } catch (Exception e34) {
                                                                exc9 = e34;
                                                                iMax = i28;
                                                                i5 = i30;
                                                            }
                                                        }
                                                        arrayList8.add(new AnonymousClass68(Game.lang.get("DamagingRelations"), Images.relationsDown, i3, i28 - (i2 * i30), buttonWidth, i2 * (i30 + 1), width32, i88));
                                                        try {
                                                            iMax = Math.max(i28 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                            i5 = 0;
                                                        } catch (Exception e35) {
                                                            exc9 = e35;
                                                            iMax = i28;
                                                            i5 = 0;
                                                            CFG.exceptionStack(exc9);
                                                        }
                                                    } else {
                                                        width7 = i100 + CFG.PADDING;
                                                        i26 = i5;
                                                        while (i27 < Game.getCiv(iActiveCivID).diplomacy.iDamagingRelationsSize) {
                                                            if (ButtonFlag_Diplomacy.getButtonWidth() + width7 > i4) {
                                                                width7 = i100 + CFG.PADDING;
                                                                iMax += i2;
                                                                i26++;
                                                            }
                                                            if (Game.getCiv(Game.getCiv(iActiveCivID).diplomacy.damagingRelations.get(i27).iCivID).diplomacy.isDamagingRelations(iActiveCivID)) {
                                                                arrayList8.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).diplomacy.damagingRelations.get(i27).iCivID, width7, iMax + CFG.PADDING, true, true));
                                                            } else {
                                                                arrayList8.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).diplomacy.damagingRelations.get(i27).iCivID, width7, iMax + CFG.PADDING, true, true, true));
                                                            }
                                                            width7 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                        }
                                                        i28 = iMax;
                                                        width8 = width7;
                                                        i30 = i26;
                                                        while (i29 < arrayList3.size()) {
                                                            if (ButtonFlag_Diplomacy.getButtonWidth() + width8 > i4) {
                                                                width8 = i100 + CFG.PADDING;
                                                                i28 += i2;
                                                                i30++;
                                                            }
                                                            arrayList8.add(new ButtonFlag_Diplomacy(((Integer) arrayList3.get(i29)).intValue(), width8, i28 + CFG.PADDING, true, true, false));
                                                            width8 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                        }
                                                        arrayList8.add(new AnonymousClass68(Game.lang.get("DamagingRelations"), Images.relationsDown, i3, i28 - (i2 * i30), buttonWidth, i2 * (i30 + 1), width32, i88));
                                                        iMax = Math.max(i28 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                        i5 = 0;
                                                    }
                                                } catch (Exception e36) {
                                                    exc9 = e36;
                                                }
                                                try {
                                                    arrayList2 = new ArrayList();
                                                    while (i20 < Game.getCivsSize()) {
                                                        if (Game.getCiv(i20).diplomacy.getRelation(iActiveCivID) < GameValues.diplomacy.DIPLOMACY_RELATIONS_FRIENDLY) {
                                                        }
                                                    }
                                                    if (!arrayList2.isEmpty()) {
                                                        i21 = iMax;
                                                        width6 = i100 + CFG.PADDING;
                                                        i22 = i5;
                                                        while (i23 < GameValues.diplomacy.DIPLOMACY_FRIENDLY_LIMIT_IN_DIPLOMACY_VIEW) {
                                                            try {
                                                                i24 = 0;
                                                                while (size4 > 0) {
                                                                    if (Game.getCiv(((Integer) arrayList2.get(i24)).intValue()).diplomacy.getRelation(iActiveCivID) < Game.getCiv(((Integer) arrayList2.get(size4)).intValue()).diplomacy.getRelation(iActiveCivID)) {
                                                                        i24 = size4;
                                                                    }
                                                                }
                                                                if (ButtonFlag_Diplomacy.getButtonWidth() + width6 > i4) {
                                                                    width6 = i100 + CFG.PADDING;
                                                                    i21 += i2;
                                                                    i22++;
                                                                }
                                                                arrayList8.add(new ButtonFlag_Diplomacy(((Integer) arrayList2.get(i24)).intValue(), width6, CFG.PADDING + i21, true));
                                                                width6 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                                arrayList2.remove(i24);
                                                            } catch (Exception e37) {
                                                                exc10 = e37;
                                                                iMax = i21;
                                                                i5 = i22;
                                                            }
                                                        }
                                                        arrayList8.add(new AnonymousClass69(Game.lang.get("FriendlyCivilizations"), Images.heart, i3, i21 - (i2 * i22), buttonWidth, i2 * (i22 + 1), width32, i88));
                                                        try {
                                                            iMax = Math.max(i21 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                            i5 = 0;
                                                        } catch (Exception e38) {
                                                            exc10 = e38;
                                                            iMax = i21;
                                                            i5 = 0;
                                                            CFG.exceptionStack(exc10);
                                                        }
                                                    }
                                                } catch (Exception e39) {
                                                    exc10 = e39;
                                                }
                                                try {
                                                    if (!Game.getCiv(iActiveCivID).diplomacy.militaryAccess.isEmpty()) {
                                                        width5 = i100 + CFG.PADDING;
                                                        i19 = iMax;
                                                        while (r7.hasNext()) {
                                                            try {
                                                                if (ButtonFlag_Diplomacy.getButtonWidth() + width5 > i4) {
                                                                    width5 = i100 + CFG.PADDING;
                                                                    i19 += i2;
                                                                    i5++;
                                                                }
                                                                arrayList8.add(new AnonymousClass70(diplomacyData8.iCivID, width5, i19 + CFG.PADDING, true));
                                                                width5 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                            } catch (Exception e40) {
                                                                exc11 = e40;
                                                                iMax = i19;
                                                            }
                                                        }
                                                        arrayList8.add(new AnonymousClass71(Game.lang.get("HaveMilitaryAccess"), Images.militaryAccess, i3, i19 - (i2 * i5), buttonWidth, i2 * (i5 + 1), width32, i88));
                                                        try {
                                                            iMax = Math.max(i19 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                            i5 = 0;
                                                        } catch (Exception e41) {
                                                            exc11 = e41;
                                                            iMax = i19;
                                                            i5 = 0;
                                                            CFG.exceptionStack(exc11);
                                                        }
                                                    }
                                                } catch (Exception e42) {
                                                    exc11 = e42;
                                                }
                                                try {
                                                    arrayList = new ArrayList();
                                                    while (i15 < Game.getCivsSize()) {
                                                        if (Game.getCiv(i15).getNumOfProvinces() <= 0) {
                                                        }
                                                    }
                                                    if (!arrayList.isEmpty()) {
                                                        i16 = iMax;
                                                        width4 = i100 + CFG.PADDING;
                                                        i17 = i5;
                                                        while (i18 < arrayList.size()) {
                                                            try {
                                                                if (ButtonFlag_Diplomacy.getButtonWidth() + width4 > i4) {
                                                                    width4 = i100 + CFG.PADDING;
                                                                    i16 += i2;
                                                                    i17++;
                                                                }
                                                                int i116 = width4;
                                                                arrayList8.add(new AnonymousClass72(((Integer) arrayList.get(i18)).intValue(), i116, i16 + CFG.PADDING, true));
                                                                width4 = arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING + i116;
                                                            } catch (Exception e43) {
                                                                exc12 = e43;
                                                                iMax = i16;
                                                                i5 = i17;
                                                            }
                                                        }
                                                        arrayList8.add(new AnonymousClass73(Game.lang.get("GivesMilitaryAccess"), Images.militaryAccess2, i3, i16 - (i2 * i17), buttonWidth, i2 * (i17 + 1), width32, i88));
                                                        try {
                                                            iMax = Math.max(i16 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                            i5 = 0;
                                                        } catch (Exception e44) {
                                                            exc12 = e44;
                                                            iMax = i16;
                                                            i5 = 0;
                                                            CFG.exceptionStack(exc12);
                                                        }
                                                    }
                                                } catch (Exception e45) {
                                                    exc12 = e45;
                                                }
                                                try {
                                                    rivaledBy = RivalsManager.getRivaledBy(iActiveCivID);
                                                    if (!rivaledBy.isEmpty()) {
                                                        int i117 = i100 + CFG.PADDING;
                                                        size3 = rivaledBy.size();
                                                        i12 = iMax;
                                                        width3 = i117;
                                                        i13 = i5;
                                                        while (i14 < size3) {
                                                            try {
                                                                if (ButtonFlag_Diplomacy.getButtonWidth() + width3 > i4) {
                                                                    width3 = i100 + CFG.PADDING;
                                                                    i12 += i2;
                                                                    i13++;
                                                                }
                                                                arrayList8.add(new ButtonFlag_Diplomacy(rivaledBy.get(i14).intValue(), width3, CFG.PADDING + i12, true));
                                                                width3 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                            } catch (Exception e46) {
                                                                exc13 = e46;
                                                                iMax = i12;
                                                                i5 = i13;
                                                                CFG.exceptionStack(exc13);
                                                                if (Game.getCiv(iActiveCivID).civNeighbors.civsSize > 0) {
                                                                    int i118 = i100 + CFG.PADDING;
                                                                    size2 = arrayList8.size();
                                                                    i9 = iMax;
                                                                    width2 = i118;
                                                                    i10 = i5;
                                                                    while (i11 < Game.getCiv(iActiveCivID).civNeighbors.civsSize) {
                                                                        try {
                                                                            if (!Game.getCiv(iActiveCivID).civNeighbors.civs.get(i11).byLand) {
                                                                                if (ButtonFlag_Diplomacy.getButtonWidth() + width2 > i4) {
                                                                                    width2 = i100 + CFG.PADDING;
                                                                                    i9 += i2;
                                                                                    i10++;
                                                                                }
                                                                                int i119 = width2;
                                                                                arrayList8.add(new AnonymousClass75(Game.getCiv(iActiveCivID).civNeighbors.civs.get(i11).civID, i119, i9 + CFG.PADDING, true));
                                                                                width2 = i119 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                                            }
                                                                        } catch (Exception e47) {
                                                                            exc14 = e47;
                                                                            iMax = i9;
                                                                            i5 = i10;
                                                                        }
                                                                    }
                                                                    if (size2 != arrayList8.size()) {
                                                                        arrayList8.add(new AnonymousClass76(Game.lang.get("NeighbouringCivilizations") + str7 + (arrayList8.size() - size2), Images.frontLine, i3, i9 - (i2 * i10), buttonWidth, i2 * (i10 + 1), width32, i88));
                                                                        try {
                                                                            iMax = Math.max(i9 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                                            i5 = 0;
                                                                        } catch (Exception e48) {
                                                                            exc14 = e48;
                                                                            iMax = i9;
                                                                            i5 = 0;
                                                                            CFG.exceptionStack(exc14);
                                                                        }
                                                                    } else {
                                                                        iMax = i9;
                                                                        i5 = i10;
                                                                    }
                                                                }
                                                                civsPossibleToLiberate = PeaceTreaty.getCivsPossibleToLiberate(iActiveCivID);
                                                                if (!civsPossibleToLiberate.isEmpty()) {
                                                                    width = i100 + CFG.PADDING;
                                                                    size = civsPossibleToLiberate.size();
                                                                    i6 = iMax;
                                                                    i7 = i5;
                                                                    i8 = 0;
                                                                    while (i8 < size) {
                                                                        try {
                                                                            if (ButtonFlag_Diplomacy.getButtonWidth() + width > i4) {
                                                                                width = i100 + CFG.PADDING;
                                                                                i6 += i2;
                                                                                i7++;
                                                                            }
                                                                            arrayList8.add(new AnonymousClass77(civsPossibleToLiberate.get(i8).intValue(), width, i6 + CFG.PADDING, true));
                                                                            width += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                                            i8++;
                                                                            i7 = i7;
                                                                        } catch (Exception e49) {
                                                                            exc15 = e49;
                                                                            iMax = i6;
                                                                            CFG.exceptionStack(exc15);
                                                                            height9 = iMax + CFG.PADDING;
                                                                            int iMin = Math.min(height9, (CFG.GAME_HEIGHT - height3) - (CFG.PADDING * 3));
                                                                            arrayList8.add(new Empty(0, 0, i4, Math.max(height9, iMin)));
                                                                            initMenu(new AnonymousClass105(Game.getCiv(iActiveCivID).getCivName(), false, false, Images.title500), otherMenuPosX_2, height3, i4, iMin, arrayList8, false, true);
                                                                            InGame_Court_Government.loadFormableFlags();
                                                                            relationsMode = false;
                                                                        }
                                                                    }
                                                                    arrayList8.add(new AnonymousClass78(Game.lang.get("ConqueredCivilizations"), Images.conqueredCivs, i3, i6 - (i2 * i7), buttonWidth, i2 * (i7 + 1), width32, i88));
                                                                    iMax = Math.max(i6 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                                }
                                                                height9 = iMax + CFG.PADDING;
                                                                int iMin2 = Math.min(height9, (CFG.GAME_HEIGHT - height3) - (CFG.PADDING * 3));
                                                                arrayList8.add(new Empty(0, 0, i4, Math.max(height9, iMin2)));
                                                                initMenu(new AnonymousClass105(Game.getCiv(iActiveCivID).getCivName(), false, false, Images.title500), otherMenuPosX_2, height3, i4, iMin2, arrayList8, false, true);
                                                                InGame_Court_Government.loadFormableFlags();
                                                                relationsMode = false;
                                                            }
                                                        }
                                                        arrayList8.add(new AnonymousClass74(Game.lang.get("RivaledBy"), Images.rivals, i3, i12 - (i2 * i13), buttonWidth, i2 * (i13 + 1), width32, i88));
                                                        try {
                                                            iMax = Math.max(i12 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                            i5 = 0;
                                                        } catch (Exception e50) {
                                                            exc13 = e50;
                                                            iMax = i12;
                                                            i5 = 0;
                                                            CFG.exceptionStack(exc13);
                                                        }
                                                    }
                                                } catch (Exception e51) {
                                                    exc13 = e51;
                                                }
                                                try {
                                                    if (Game.getCiv(iActiveCivID).civNeighbors.civsSize > 0) {
                                                        int i1110 = i100 + CFG.PADDING;
                                                        size2 = arrayList8.size();
                                                        i9 = iMax;
                                                        width2 = i1110;
                                                        i10 = i5;
                                                        while (i11 < Game.getCiv(iActiveCivID).civNeighbors.civsSize) {
                                                            if (!Game.getCiv(iActiveCivID).civNeighbors.civs.get(i11).byLand) {
                                                                if (ButtonFlag_Diplomacy.getButtonWidth() + width2 > i4) {
                                                                    width2 = i100 + CFG.PADDING;
                                                                    i9 += i2;
                                                                    i10++;
                                                                }
                                                                int i1111 = width2;
                                                                arrayList8.add(new AnonymousClass75(Game.getCiv(iActiveCivID).civNeighbors.civs.get(i11).civID, i1111, i9 + CFG.PADDING, true));
                                                                width2 = i1111 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                            }
                                                        }
                                                        if (size2 != arrayList8.size()) {
                                                            arrayList8.add(new AnonymousClass76(Game.lang.get("NeighbouringCivilizations") + str7 + (arrayList8.size() - size2), Images.frontLine, i3, i9 - (i2 * i10), buttonWidth, i2 * (i10 + 1), width32, i88));
                                                            iMax = Math.max(i9 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                            i5 = 0;
                                                        } else {
                                                            iMax = i9;
                                                            i5 = i10;
                                                        }
                                                    }
                                                } catch (Exception e52) {
                                                    exc14 = e52;
                                                }
                                                try {
                                                    civsPossibleToLiberate = PeaceTreaty.getCivsPossibleToLiberate(iActiveCivID);
                                                    if (!civsPossibleToLiberate.isEmpty()) {
                                                        width = i100 + CFG.PADDING;
                                                        size = civsPossibleToLiberate.size();
                                                        i6 = iMax;
                                                        i7 = i5;
                                                        i8 = 0;
                                                        while (i8 < size) {
                                                            if (ButtonFlag_Diplomacy.getButtonWidth() + width > i4) {
                                                                width = i100 + CFG.PADDING;
                                                                i6 += i2;
                                                                i7++;
                                                            }
                                                            arrayList8.add(new AnonymousClass77(civsPossibleToLiberate.get(i8).intValue(), width, i6 + CFG.PADDING, true));
                                                            width += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                            i8++;
                                                            i7 = i7;
                                                        }
                                                        arrayList8.add(new AnonymousClass78(Game.lang.get("ConqueredCivilizations"), Images.conqueredCivs, i3, i6 - (i2 * i7), buttonWidth, i2 * (i7 + 1), width32, i88));
                                                        iMax = Math.max(i6 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                    }
                                                } catch (Exception e53) {
                                                    exc15 = e53;
                                                }
                                                height9 = iMax + CFG.PADDING;
                                            }
                                            int iMin3 = Math.min(height9, (CFG.GAME_HEIGHT - height3) - (CFG.PADDING * 3));
                                            arrayList8.add(new Empty(0, 0, i4, Math.max(height9, iMin3)));
                                            initMenu(new AnonymousClass105(Game.getCiv(iActiveCivID).getCivName(), false, false, Images.title500), otherMenuPosX_2, height3, i4, iMin3, arrayList8, false, true);
                                            InGame_Court_Government.loadFormableFlags();
                                            relationsMode = false;
                                        }
                                    } catch (Exception e54) {
                                        e = e54;
                                        str17 = str13;
                                        i73 = i88;
                                        i70 = i85;
                                        CFG.exceptionStack(e);
                                        i88 = i73;
                                        i3 = i70;
                                        if (diplomacyMode) {
                                            str6 = str17;
                                            if (iActiveCivID == Game.player.iCivID) {
                                            }
                                            if (Game.getCiv(iActiveCivID).diplomacy.iAtWarSize > 0) {
                                                width19 = i100 + CFG.PADDING;
                                                i47 = height9;
                                                i48 = 0;
                                                i49 = 0;
                                                while (i49 < Game.getCiv(iActiveCivID).diplomacy.iAtWarSize) {
                                                    i50 = i99;
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width19 > i50) {
                                                        width19 = i100 + CFG.PADDING;
                                                        i47 += i2 + CFG.TEXT_HEIGHT + (CFG.PADDING * 2);
                                                        i48++;
                                                    }
                                                    int i1011 = iActiveCivID;
                                                    String warKey3 = WarManager.getWarKey(i1011, Game.getCiv(i1011).diplomacy.atWar.get(i49).intValue());
                                                    warScore_Side = WarManager.lWars.get(warKey3).warScore * WarManager.lWars.get(warKey3).getWarScore_Side(Game.getCiv(iActiveCivID).diplomacy.atWar.get(i49).intValue());
                                                    StringBuilder sb3 = new StringBuilder();
                                                    if (warScore_Side > 0.0f) {
                                                        str9 = "+";
                                                    } else {
                                                        str9 = str3;
                                                    }
                                                    str8 = str2;
                                                    String string3 = sb3.append(str9).append(CFG.getPrecision2(Math.max(Math.min(warScore_Side, 100.0f), -100.0f), 1)).append(str8).toString();
                                                    if (((int) warScore_Side) == 0) {
                                                        color = Colors.COLOR_TOP_STATS3;
                                                    } else if (warScore_Side < 0.0f) {
                                                        color = Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
                                                    } else {
                                                        color = Colors.COLOR_TEXT_MODIFIER_POSITIVE;
                                                    }
                                                    arrayList8.add(new ButtonFlag_DiplomacyWar(Game.getCiv(iActiveCivID).diplomacy.atWar.get(i49).intValue(), width19, i47 + CFG.PADDING, true, string3, color, warKey3));
                                                    width19 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                    i49++;
                                                    str2 = str8;
                                                    i99 = i50;
                                                }
                                                i4 = i99;
                                                str7 = str6;
                                                arrayList8.add(new AnonymousClass51(Game.lang.get("AtWarWith"), Images.war, i3, i47 - ((i2 + (CFG.TEXT_HEIGHT + (CFG.PADDING * 2))) * i48), buttonWidth, (i2 + CFG.TEXT_HEIGHT + (CFG.PADDING * 2)) * (i48 + 1), width32, i88));
                                                height9 = i47 + i2 + CFG.TEXT_HEIGHT + (CFG.PADDING * 2);
                                            } else {
                                                str7 = str6;
                                                i4 = i99;
                                            }
                                            if (Game.getCiv(iActiveCivID).diplomacy.iVassalsSize > 0) {
                                                width18 = i100 + CFG.PADDING;
                                                i44 = height9;
                                                i45 = 0;
                                                while (i46 < Game.getCiv(iActiveCivID).diplomacy.iVassalsSize) {
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width18 > i4) {
                                                        width18 = i100 + CFG.PADDING;
                                                        i44 += i2;
                                                        i45++;
                                                    }
                                                    arrayList8.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).diplomacy.lVassals.get(i46).c, width18, i44 + CFG.PADDING, true, true, true));
                                                    width18 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                }
                                                arrayList8.add(new AnonymousClass52(Game.lang.get(Game_Ages.getVassals()), Images.vassal, i3, i44 - (i2 * i45), buttonWidth, i2 * (i45 + 1), width32, i88));
                                                height9 = i44 + i2;
                                            }
                                            if (!Game.getCiv(iActiveCivID).diplomacy.alliance.isEmpty()) {
                                                width17 = i100 + CFG.PADDING;
                                                i43 = 0;
                                                while (r7.hasNext()) {
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width17 > i4) {
                                                        width17 = i100 + CFG.PADDING;
                                                        height9 += i2;
                                                        i43++;
                                                    }
                                                    int i1112 = width17;
                                                    arrayList8.add(new AnonymousClass53(diplomacyData.iCivID, i1112, height9 + CFG.PADDING, true));
                                                    width17 = arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING + i1112;
                                                }
                                                arrayList8.add(new AnonymousClass54(Game.lang.get("Alliance"), Images.alliance, i3, height9 - (i2 * i43), buttonWidth, i2 * (i43 + 1), width32, i88));
                                                height9 = Math.max(height9 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                            }
                                            iMax = height9;
                                            i5 = 0;
                                            if (!Game.getCiv(iActiveCivID).diplomacy.truce.isEmpty()) {
                                                it = Game.getCiv(iActiveCivID).diplomacy.truce.values().iterator();
                                                while (true) {
                                                    if (it.hasNext()) {
                                                        if (Game.getCiv(it.next().iCivID).getNumOfProvinces() > 0) {
                                                            z = true;
                                                            break;
                                                        }
                                                    } else {
                                                        z = false;
                                                        break;
                                                    }
                                                }
                                                if (z) {
                                                    width16 = i100 + CFG.PADDING;
                                                    i42 = iMax;
                                                    while (r7.hasNext()) {
                                                        if (Game.getCiv(diplomacyData2.iCivID).getNumOfProvinces() > 0) {
                                                            if (ButtonFlag_Diplomacy.getButtonWidth() + width16 > i4) {
                                                                width16 = i100 + CFG.PADDING;
                                                                i42 += i2;
                                                                i5++;
                                                            }
                                                            arrayList8.add(new AnonymousClass55(diplomacyData2.iCivID, width16, i42 + CFG.PADDING, true));
                                                            width16 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                        }
                                                    }
                                                    arrayList8.add(new AnonymousClass56(Game.lang.get("Truce"), Images.truce, i3, i42 - (i2 * i5), buttonWidth, i2 * (i5 + 1), width32, i88));
                                                    iMax = Math.max(i42 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                    i5 = 0;
                                                }
                                            }
                                            if (!Game.getCiv(iActiveCivID).diplomacy.defensivePact.isEmpty()) {
                                                width15 = i100 + CFG.PADDING;
                                                i41 = iMax;
                                                while (r7.hasNext()) {
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width15 > i4) {
                                                        width15 = i100 + CFG.PADDING;
                                                        i41 += i2;
                                                        i5++;
                                                    }
                                                    arrayList8.add(new AnonymousClass57(diplomacyData3.iCivID, width15, i41 + CFG.PADDING, true));
                                                    width15 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                }
                                                arrayList8.add(new AnonymousClass58(Game.lang.get("DefensivePact"), Images.defensivePact, i3, i41 - (i2 * i5), buttonWidth, i2 * (i5 + 1), width32, i88));
                                                iMax = Math.max(i41 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                i5 = 0;
                                            }
                                            if (!Game.getCiv(iActiveCivID).diplomacy.rivals.isEmpty()) {
                                                width14 = i100 + CFG.PADDING;
                                                i40 = iMax;
                                                while (r7.hasNext()) {
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width14 > i4) {
                                                        width14 = i100 + CFG.PADDING;
                                                        i40 += i2;
                                                        i5++;
                                                    }
                                                    arrayList8.add(new AnonymousClass59(diplomacyData4.iCivID, width14, i40 + CFG.PADDING, true));
                                                    width14 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                }
                                                arrayList8.add(new AnonymousClass60(Game.lang.get("Rivals"), Images.rivals, i3, i40 - (i2 * i5), buttonWidth, i2 * (i5 + 1), width32, i88));
                                                iMax = Math.max(i40 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                i5 = 0;
                                            }
                                            if (!Game.getCiv(iActiveCivID).diplomacy.guarantee.isEmpty()) {
                                                width13 = i100 + CFG.PADDING;
                                                i39 = iMax;
                                                while (r7.hasNext()) {
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width13 > i4) {
                                                        width13 = i100 + CFG.PADDING;
                                                        i39 += i2;
                                                        i5++;
                                                    }
                                                    arrayList8.add(new AnonymousClass61(diplomacyData5.iCivID, width13, i39 + CFG.PADDING, true));
                                                    width13 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                }
                                                arrayList8.add(new AnonymousClass62(Game.lang.get("GuaranteeIndependence"), Images.guaranteeIndependence, i3, i39 - (i2 * i5), buttonWidth, i2 * (i5 + 1), width32, i88));
                                                iMax = Math.max(i39 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                i5 = 0;
                                            }
                                            if (!Game.getCiv(iActiveCivID).diplomacy.guaranteeByCivID.isEmpty()) {
                                                width12 = i100 + CFG.PADDING;
                                                i38 = iMax;
                                                while (r7.hasNext()) {
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width12 > i4) {
                                                        width12 = i100 + CFG.PADDING;
                                                        i38 += i2;
                                                        i5++;
                                                    }
                                                    arrayList8.add(new AnonymousClass63(diplomacyData6.iCivID, width12, i38 + CFG.PADDING, true));
                                                    width12 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                }
                                                arrayList8.add(new AnonymousClass64(Game.lang.get("GuaranteeTheirIndependence"), Images.guaranteeIndependence, i3, i38 - (i2 * i5), buttonWidth, i2 * (i5 + 1), width32, i88));
                                                iMax = Math.max(i38 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                i5 = 0;
                                            }
                                            if (!Game.getCiv(iActiveCivID).diplomacy.nonAggressionPact.isEmpty()) {
                                                width11 = i100 + CFG.PADDING;
                                                i37 = iMax;
                                                while (r7.hasNext()) {
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width11 > i4) {
                                                        width11 = i100 + CFG.PADDING;
                                                        i37 += i2;
                                                        i5++;
                                                    }
                                                    arrayList8.add(new AnonymousClass65(diplomacyData7.iCivID, width11, i37 + CFG.PADDING, true));
                                                    width11 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                }
                                                arrayList8.add(new AnonymousClass66(Game.lang.get("NonAggressionPact").replace("-", " "), Images.nonAggression, i3, i37 - (i2 * i5), buttonWidth, i2 * (i5 + 1), width32, i88));
                                                iMax = Math.max(i37 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                i5 = 0;
                                            }
                                            arrayList4 = new ArrayList();
                                            while (i31 < Game.getCivsSize()) {
                                                if (!Game.getCiv(i31).diplomacy.isImprovingRelations(iActiveCivID)) {
                                                }
                                            }
                                            if (Game.getCiv(iActiveCivID).diplomacy.iImprovingRelationsSize <= 0) {
                                                width9 = i100 + CFG.PADDING;
                                                i32 = i5;
                                                while (i33 < Game.getCiv(iActiveCivID).diplomacy.iImprovingRelationsSize) {
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width9 > i4) {
                                                        width9 = i100 + CFG.PADDING;
                                                        iMax += i2;
                                                        i32++;
                                                    }
                                                    if (Game.getCiv(Game.getCiv(iActiveCivID).diplomacy.improvingRelations.get(i33).iCivID).diplomacy.isImprovingRelations(iActiveCivID)) {
                                                        arrayList8.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).diplomacy.improvingRelations.get(i33).iCivID, width9, iMax + CFG.PADDING, true, true));
                                                    } else {
                                                        arrayList8.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).diplomacy.improvingRelations.get(i33).iCivID, width9, iMax + CFG.PADDING, true, true, true));
                                                    }
                                                    width9 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                }
                                                i34 = iMax;
                                                width10 = width9;
                                                i36 = i32;
                                                while (i35 < arrayList4.size()) {
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width10 > i4) {
                                                        width10 = i100 + CFG.PADDING;
                                                        i34 += i2;
                                                        i36++;
                                                    }
                                                    arrayList8.add(new ButtonFlag_Diplomacy(((Integer) arrayList4.get(i35)).intValue(), width10, i34 + CFG.PADDING, true, true, false));
                                                    width10 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                }
                                                arrayList8.add(new AnonymousClass67(Game.lang.get("ImprovingRelations"), Images.relationsUp, i3, i34 - (i2 * i36), buttonWidth, i2 * (i36 + 1), width32, i88));
                                                iMax = Math.max(i34 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                i5 = 0;
                                            } else {
                                                width9 = i100 + CFG.PADDING;
                                                i32 = i5;
                                                while (i33 < Game.getCiv(iActiveCivID).diplomacy.iImprovingRelationsSize) {
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width9 > i4) {
                                                        width9 = i100 + CFG.PADDING;
                                                        iMax += i2;
                                                        i32++;
                                                    }
                                                    if (Game.getCiv(Game.getCiv(iActiveCivID).diplomacy.improvingRelations.get(i33).iCivID).diplomacy.isImprovingRelations(iActiveCivID)) {
                                                        arrayList8.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).diplomacy.improvingRelations.get(i33).iCivID, width9, iMax + CFG.PADDING, true, true));
                                                    } else {
                                                        arrayList8.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).diplomacy.improvingRelations.get(i33).iCivID, width9, iMax + CFG.PADDING, true, true, true));
                                                    }
                                                    width9 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                }
                                                i34 = iMax;
                                                width10 = width9;
                                                i36 = i32;
                                                while (i35 < arrayList4.size()) {
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width10 > i4) {
                                                        width10 = i100 + CFG.PADDING;
                                                        i34 += i2;
                                                        i36++;
                                                    }
                                                    arrayList8.add(new ButtonFlag_Diplomacy(((Integer) arrayList4.get(i35)).intValue(), width10, i34 + CFG.PADDING, true, true, false));
                                                    width10 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                }
                                                arrayList8.add(new AnonymousClass67(Game.lang.get("ImprovingRelations"), Images.relationsUp, i3, i34 - (i2 * i36), buttonWidth, i2 * (i36 + 1), width32, i88));
                                                iMax = Math.max(i34 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                i5 = 0;
                                            }
                                            arrayList3 = new ArrayList();
                                            while (i25 < Game.getCivsSize()) {
                                                if (!Game.getCiv(i25).diplomacy.isDamagingRelations(iActiveCivID)) {
                                                }
                                            }
                                            if (Game.getCiv(iActiveCivID).diplomacy.iDamagingRelationsSize <= 0) {
                                                width7 = i100 + CFG.PADDING;
                                                i26 = i5;
                                                while (i27 < Game.getCiv(iActiveCivID).diplomacy.iDamagingRelationsSize) {
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width7 > i4) {
                                                        width7 = i100 + CFG.PADDING;
                                                        iMax += i2;
                                                        i26++;
                                                    }
                                                    if (Game.getCiv(Game.getCiv(iActiveCivID).diplomacy.damagingRelations.get(i27).iCivID).diplomacy.isDamagingRelations(iActiveCivID)) {
                                                        arrayList8.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).diplomacy.damagingRelations.get(i27).iCivID, width7, iMax + CFG.PADDING, true, true));
                                                    } else {
                                                        arrayList8.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).diplomacy.damagingRelations.get(i27).iCivID, width7, iMax + CFG.PADDING, true, true, true));
                                                    }
                                                    width7 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                }
                                                i28 = iMax;
                                                width8 = width7;
                                                i30 = i26;
                                                while (i29 < arrayList3.size()) {
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width8 > i4) {
                                                        width8 = i100 + CFG.PADDING;
                                                        i28 += i2;
                                                        i30++;
                                                    }
                                                    arrayList8.add(new ButtonFlag_Diplomacy(((Integer) arrayList3.get(i29)).intValue(), width8, i28 + CFG.PADDING, true, true, false));
                                                    width8 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                }
                                                arrayList8.add(new AnonymousClass68(Game.lang.get("DamagingRelations"), Images.relationsDown, i3, i28 - (i2 * i30), buttonWidth, i2 * (i30 + 1), width32, i88));
                                                iMax = Math.max(i28 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                i5 = 0;
                                            } else {
                                                width7 = i100 + CFG.PADDING;
                                                i26 = i5;
                                                while (i27 < Game.getCiv(iActiveCivID).diplomacy.iDamagingRelationsSize) {
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width7 > i4) {
                                                        width7 = i100 + CFG.PADDING;
                                                        iMax += i2;
                                                        i26++;
                                                    }
                                                    if (Game.getCiv(Game.getCiv(iActiveCivID).diplomacy.damagingRelations.get(i27).iCivID).diplomacy.isDamagingRelations(iActiveCivID)) {
                                                        arrayList8.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).diplomacy.damagingRelations.get(i27).iCivID, width7, iMax + CFG.PADDING, true, true));
                                                    } else {
                                                        arrayList8.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).diplomacy.damagingRelations.get(i27).iCivID, width7, iMax + CFG.PADDING, true, true, true));
                                                    }
                                                    width7 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                }
                                                i28 = iMax;
                                                width8 = width7;
                                                i30 = i26;
                                                while (i29 < arrayList3.size()) {
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width8 > i4) {
                                                        width8 = i100 + CFG.PADDING;
                                                        i28 += i2;
                                                        i30++;
                                                    }
                                                    arrayList8.add(new ButtonFlag_Diplomacy(((Integer) arrayList3.get(i29)).intValue(), width8, i28 + CFG.PADDING, true, true, false));
                                                    width8 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                }
                                                arrayList8.add(new AnonymousClass68(Game.lang.get("DamagingRelations"), Images.relationsDown, i3, i28 - (i2 * i30), buttonWidth, i2 * (i30 + 1), width32, i88));
                                                iMax = Math.max(i28 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                i5 = 0;
                                            }
                                            arrayList2 = new ArrayList();
                                            while (i20 < Game.getCivsSize()) {
                                                if (Game.getCiv(i20).diplomacy.getRelation(iActiveCivID) < GameValues.diplomacy.DIPLOMACY_RELATIONS_FRIENDLY) {
                                                }
                                            }
                                            if (!arrayList2.isEmpty()) {
                                                i21 = iMax;
                                                width6 = i100 + CFG.PADDING;
                                                i22 = i5;
                                                while (i23 < GameValues.diplomacy.DIPLOMACY_FRIENDLY_LIMIT_IN_DIPLOMACY_VIEW) {
                                                    i24 = 0;
                                                    while (size4 > 0) {
                                                        if (Game.getCiv(((Integer) arrayList2.get(i24)).intValue()).diplomacy.getRelation(iActiveCivID) < Game.getCiv(((Integer) arrayList2.get(size4)).intValue()).diplomacy.getRelation(iActiveCivID)) {
                                                            i24 = size4;
                                                        }
                                                    }
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width6 > i4) {
                                                        width6 = i100 + CFG.PADDING;
                                                        i21 += i2;
                                                        i22++;
                                                    }
                                                    arrayList8.add(new ButtonFlag_Diplomacy(((Integer) arrayList2.get(i24)).intValue(), width6, CFG.PADDING + i21, true));
                                                    width6 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                    arrayList2.remove(i24);
                                                }
                                                arrayList8.add(new AnonymousClass69(Game.lang.get("FriendlyCivilizations"), Images.heart, i3, i21 - (i2 * i22), buttonWidth, i2 * (i22 + 1), width32, i88));
                                                iMax = Math.max(i21 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                i5 = 0;
                                            }
                                            if (!Game.getCiv(iActiveCivID).diplomacy.militaryAccess.isEmpty()) {
                                                width5 = i100 + CFG.PADDING;
                                                i19 = iMax;
                                                while (r7.hasNext()) {
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width5 > i4) {
                                                        width5 = i100 + CFG.PADDING;
                                                        i19 += i2;
                                                        i5++;
                                                    }
                                                    arrayList8.add(new AnonymousClass70(diplomacyData8.iCivID, width5, i19 + CFG.PADDING, true));
                                                    width5 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                }
                                                arrayList8.add(new AnonymousClass71(Game.lang.get("HaveMilitaryAccess"), Images.militaryAccess, i3, i19 - (i2 * i5), buttonWidth, i2 * (i5 + 1), width32, i88));
                                                iMax = Math.max(i19 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                i5 = 0;
                                            }
                                            arrayList = new ArrayList();
                                            while (i15 < Game.getCivsSize()) {
                                                if (Game.getCiv(i15).getNumOfProvinces() <= 0) {
                                                }
                                            }
                                            if (!arrayList.isEmpty()) {
                                                i16 = iMax;
                                                width4 = i100 + CFG.PADDING;
                                                i17 = i5;
                                                while (i18 < arrayList.size()) {
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width4 > i4) {
                                                        width4 = i100 + CFG.PADDING;
                                                        i16 += i2;
                                                        i17++;
                                                    }
                                                    int i1113 = width4;
                                                    arrayList8.add(new AnonymousClass72(((Integer) arrayList.get(i18)).intValue(), i1113, i16 + CFG.PADDING, true));
                                                    width4 = arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING + i1113;
                                                }
                                                arrayList8.add(new AnonymousClass73(Game.lang.get("GivesMilitaryAccess"), Images.militaryAccess2, i3, i16 - (i2 * i17), buttonWidth, i2 * (i17 + 1), width32, i88));
                                                iMax = Math.max(i16 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                i5 = 0;
                                            }
                                            rivaledBy = RivalsManager.getRivaledBy(iActiveCivID);
                                            if (!rivaledBy.isEmpty()) {
                                                int i1114 = i100 + CFG.PADDING;
                                                size3 = rivaledBy.size();
                                                i12 = iMax;
                                                width3 = i1114;
                                                i13 = i5;
                                                while (i14 < size3) {
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width3 > i4) {
                                                        width3 = i100 + CFG.PADDING;
                                                        i12 += i2;
                                                        i13++;
                                                    }
                                                    arrayList8.add(new ButtonFlag_Diplomacy(rivaledBy.get(i14).intValue(), width3, CFG.PADDING + i12, true));
                                                    width3 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                }
                                                arrayList8.add(new AnonymousClass74(Game.lang.get("RivaledBy"), Images.rivals, i3, i12 - (i2 * i13), buttonWidth, i2 * (i13 + 1), width32, i88));
                                                iMax = Math.max(i12 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                i5 = 0;
                                            }
                                            if (Game.getCiv(iActiveCivID).civNeighbors.civsSize > 0) {
                                                int i1115 = i100 + CFG.PADDING;
                                                size2 = arrayList8.size();
                                                i9 = iMax;
                                                width2 = i1115;
                                                i10 = i5;
                                                while (i11 < Game.getCiv(iActiveCivID).civNeighbors.civsSize) {
                                                    if (!Game.getCiv(iActiveCivID).civNeighbors.civs.get(i11).byLand) {
                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width2 > i4) {
                                                            width2 = i100 + CFG.PADDING;
                                                            i9 += i2;
                                                            i10++;
                                                        }
                                                        int i1116 = width2;
                                                        arrayList8.add(new AnonymousClass75(Game.getCiv(iActiveCivID).civNeighbors.civs.get(i11).civID, i1116, i9 + CFG.PADDING, true));
                                                        width2 = i1116 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                    }
                                                }
                                                if (size2 != arrayList8.size()) {
                                                    arrayList8.add(new AnonymousClass76(Game.lang.get("NeighbouringCivilizations") + str7 + (arrayList8.size() - size2), Images.frontLine, i3, i9 - (i2 * i10), buttonWidth, i2 * (i10 + 1), width32, i88));
                                                    iMax = Math.max(i9 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                    i5 = 0;
                                                } else {
                                                    iMax = i9;
                                                    i5 = i10;
                                                }
                                            }
                                            civsPossibleToLiberate = PeaceTreaty.getCivsPossibleToLiberate(iActiveCivID);
                                            if (!civsPossibleToLiberate.isEmpty()) {
                                                width = i100 + CFG.PADDING;
                                                size = civsPossibleToLiberate.size();
                                                i6 = iMax;
                                                i7 = i5;
                                                i8 = 0;
                                                while (i8 < size) {
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width > i4) {
                                                        width = i100 + CFG.PADDING;
                                                        i6 += i2;
                                                        i7++;
                                                    }
                                                    arrayList8.add(new AnonymousClass77(civsPossibleToLiberate.get(i8).intValue(), width, i6 + CFG.PADDING, true));
                                                    width += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                    i8++;
                                                    i7 = i7;
                                                }
                                                arrayList8.add(new AnonymousClass78(Game.lang.get("ConqueredCivilizations"), Images.conqueredCivs, i3, i6 - (i2 * i7), buttonWidth, i2 * (i7 + 1), width32, i88));
                                                iMax = Math.max(i6 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                            }
                                            height9 = iMax + CFG.PADDING;
                                        } else {
                                            str6 = str17;
                                            if (iActiveCivID == Game.player.iCivID) {
                                            }
                                            if (Game.getCiv(iActiveCivID).diplomacy.iAtWarSize > 0) {
                                                width19 = i100 + CFG.PADDING;
                                                i47 = height9;
                                                i48 = 0;
                                                i49 = 0;
                                                while (i49 < Game.getCiv(iActiveCivID).diplomacy.iAtWarSize) {
                                                    i50 = i99;
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width19 > i50) {
                                                        width19 = i100 + CFG.PADDING;
                                                        i47 += i2 + CFG.TEXT_HEIGHT + (CFG.PADDING * 2);
                                                        i48++;
                                                    }
                                                    int i1012 = iActiveCivID;
                                                    String warKey4 = WarManager.getWarKey(i1012, Game.getCiv(i1012).diplomacy.atWar.get(i49).intValue());
                                                    warScore_Side = WarManager.lWars.get(warKey4).warScore * WarManager.lWars.get(warKey4).getWarScore_Side(Game.getCiv(iActiveCivID).diplomacy.atWar.get(i49).intValue());
                                                    StringBuilder sb4 = new StringBuilder();
                                                    if (warScore_Side > 0.0f) {
                                                        str9 = "+";
                                                    } else {
                                                        str9 = str3;
                                                    }
                                                    str8 = str2;
                                                    String string4 = sb4.append(str9).append(CFG.getPrecision2(Math.max(Math.min(warScore_Side, 100.0f), -100.0f), 1)).append(str8).toString();
                                                    if (((int) warScore_Side) == 0) {
                                                        color = Colors.COLOR_TOP_STATS3;
                                                    } else if (warScore_Side < 0.0f) {
                                                        color = Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
                                                    } else {
                                                        color = Colors.COLOR_TEXT_MODIFIER_POSITIVE;
                                                    }
                                                    arrayList8.add(new ButtonFlag_DiplomacyWar(Game.getCiv(iActiveCivID).diplomacy.atWar.get(i49).intValue(), width19, i47 + CFG.PADDING, true, string4, color, warKey4));
                                                    width19 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                    i49++;
                                                    str2 = str8;
                                                    i99 = i50;
                                                }
                                                i4 = i99;
                                                str7 = str6;
                                                arrayList8.add(new AnonymousClass51(Game.lang.get("AtWarWith"), Images.war, i3, i47 - ((i2 + (CFG.TEXT_HEIGHT + (CFG.PADDING * 2))) * i48), buttonWidth, (i2 + CFG.TEXT_HEIGHT + (CFG.PADDING * 2)) * (i48 + 1), width32, i88));
                                                height9 = i47 + i2 + CFG.TEXT_HEIGHT + (CFG.PADDING * 2);
                                            } else {
                                                str7 = str6;
                                                i4 = i99;
                                            }
                                            if (Game.getCiv(iActiveCivID).diplomacy.iVassalsSize > 0) {
                                                width18 = i100 + CFG.PADDING;
                                                i44 = height9;
                                                i45 = 0;
                                                while (i46 < Game.getCiv(iActiveCivID).diplomacy.iVassalsSize) {
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width18 > i4) {
                                                        width18 = i100 + CFG.PADDING;
                                                        i44 += i2;
                                                        i45++;
                                                    }
                                                    arrayList8.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).diplomacy.lVassals.get(i46).c, width18, i44 + CFG.PADDING, true, true, true));
                                                    width18 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                }
                                                arrayList8.add(new AnonymousClass52(Game.lang.get(Game_Ages.getVassals()), Images.vassal, i3, i44 - (i2 * i45), buttonWidth, i2 * (i45 + 1), width32, i88));
                                                height9 = i44 + i2;
                                            }
                                            if (!Game.getCiv(iActiveCivID).diplomacy.alliance.isEmpty()) {
                                                width17 = i100 + CFG.PADDING;
                                                i43 = 0;
                                                while (r7.hasNext()) {
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width17 > i4) {
                                                        width17 = i100 + CFG.PADDING;
                                                        height9 += i2;
                                                        i43++;
                                                    }
                                                    int i1117 = width17;
                                                    arrayList8.add(new AnonymousClass53(diplomacyData.iCivID, i1117, height9 + CFG.PADDING, true));
                                                    width17 = arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING + i1117;
                                                }
                                                arrayList8.add(new AnonymousClass54(Game.lang.get("Alliance"), Images.alliance, i3, height9 - (i2 * i43), buttonWidth, i2 * (i43 + 1), width32, i88));
                                                height9 = Math.max(height9 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                            }
                                            iMax = height9;
                                            i5 = 0;
                                            if (!Game.getCiv(iActiveCivID).diplomacy.truce.isEmpty()) {
                                                it = Game.getCiv(iActiveCivID).diplomacy.truce.values().iterator();
                                                while (true) {
                                                    if (it.hasNext()) {
                                                        if (Game.getCiv(it.next().iCivID).getNumOfProvinces() > 0) {
                                                            z = true;
                                                            break;
                                                        }
                                                    } else {
                                                        z = false;
                                                        break;
                                                    }
                                                }
                                                if (z) {
                                                    width16 = i100 + CFG.PADDING;
                                                    i42 = iMax;
                                                    while (r7.hasNext()) {
                                                        if (Game.getCiv(diplomacyData2.iCivID).getNumOfProvinces() > 0) {
                                                            if (ButtonFlag_Diplomacy.getButtonWidth() + width16 > i4) {
                                                                width16 = i100 + CFG.PADDING;
                                                                i42 += i2;
                                                                i5++;
                                                            }
                                                            arrayList8.add(new AnonymousClass55(diplomacyData2.iCivID, width16, i42 + CFG.PADDING, true));
                                                            width16 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                        }
                                                    }
                                                    arrayList8.add(new AnonymousClass56(Game.lang.get("Truce"), Images.truce, i3, i42 - (i2 * i5), buttonWidth, i2 * (i5 + 1), width32, i88));
                                                    iMax = Math.max(i42 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                    i5 = 0;
                                                }
                                            }
                                            if (!Game.getCiv(iActiveCivID).diplomacy.defensivePact.isEmpty()) {
                                                width15 = i100 + CFG.PADDING;
                                                i41 = iMax;
                                                while (r7.hasNext()) {
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width15 > i4) {
                                                        width15 = i100 + CFG.PADDING;
                                                        i41 += i2;
                                                        i5++;
                                                    }
                                                    arrayList8.add(new AnonymousClass57(diplomacyData3.iCivID, width15, i41 + CFG.PADDING, true));
                                                    width15 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                }
                                                arrayList8.add(new AnonymousClass58(Game.lang.get("DefensivePact"), Images.defensivePact, i3, i41 - (i2 * i5), buttonWidth, i2 * (i5 + 1), width32, i88));
                                                iMax = Math.max(i41 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                i5 = 0;
                                            }
                                            if (!Game.getCiv(iActiveCivID).diplomacy.rivals.isEmpty()) {
                                                width14 = i100 + CFG.PADDING;
                                                i40 = iMax;
                                                while (r7.hasNext()) {
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width14 > i4) {
                                                        width14 = i100 + CFG.PADDING;
                                                        i40 += i2;
                                                        i5++;
                                                    }
                                                    arrayList8.add(new AnonymousClass59(diplomacyData4.iCivID, width14, i40 + CFG.PADDING, true));
                                                    width14 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                }
                                                arrayList8.add(new AnonymousClass60(Game.lang.get("Rivals"), Images.rivals, i3, i40 - (i2 * i5), buttonWidth, i2 * (i5 + 1), width32, i88));
                                                iMax = Math.max(i40 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                i5 = 0;
                                            }
                                            if (!Game.getCiv(iActiveCivID).diplomacy.guarantee.isEmpty()) {
                                                width13 = i100 + CFG.PADDING;
                                                i39 = iMax;
                                                while (r7.hasNext()) {
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width13 > i4) {
                                                        width13 = i100 + CFG.PADDING;
                                                        i39 += i2;
                                                        i5++;
                                                    }
                                                    arrayList8.add(new AnonymousClass61(diplomacyData5.iCivID, width13, i39 + CFG.PADDING, true));
                                                    width13 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                }
                                                arrayList8.add(new AnonymousClass62(Game.lang.get("GuaranteeIndependence"), Images.guaranteeIndependence, i3, i39 - (i2 * i5), buttonWidth, i2 * (i5 + 1), width32, i88));
                                                iMax = Math.max(i39 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                i5 = 0;
                                            }
                                            if (!Game.getCiv(iActiveCivID).diplomacy.guaranteeByCivID.isEmpty()) {
                                                width12 = i100 + CFG.PADDING;
                                                i38 = iMax;
                                                while (r7.hasNext()) {
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width12 > i4) {
                                                        width12 = i100 + CFG.PADDING;
                                                        i38 += i2;
                                                        i5++;
                                                    }
                                                    arrayList8.add(new AnonymousClass63(diplomacyData6.iCivID, width12, i38 + CFG.PADDING, true));
                                                    width12 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                }
                                                arrayList8.add(new AnonymousClass64(Game.lang.get("GuaranteeTheirIndependence"), Images.guaranteeIndependence, i3, i38 - (i2 * i5), buttonWidth, i2 * (i5 + 1), width32, i88));
                                                iMax = Math.max(i38 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                i5 = 0;
                                            }
                                            if (!Game.getCiv(iActiveCivID).diplomacy.nonAggressionPact.isEmpty()) {
                                                width11 = i100 + CFG.PADDING;
                                                i37 = iMax;
                                                while (r7.hasNext()) {
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width11 > i4) {
                                                        width11 = i100 + CFG.PADDING;
                                                        i37 += i2;
                                                        i5++;
                                                    }
                                                    arrayList8.add(new AnonymousClass65(diplomacyData7.iCivID, width11, i37 + CFG.PADDING, true));
                                                    width11 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                }
                                                arrayList8.add(new AnonymousClass66(Game.lang.get("NonAggressionPact").replace("-", " "), Images.nonAggression, i3, i37 - (i2 * i5), buttonWidth, i2 * (i5 + 1), width32, i88));
                                                iMax = Math.max(i37 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                i5 = 0;
                                            }
                                            arrayList4 = new ArrayList();
                                            while (i31 < Game.getCivsSize()) {
                                                if (!Game.getCiv(i31).diplomacy.isImprovingRelations(iActiveCivID)) {
                                                }
                                            }
                                            if (Game.getCiv(iActiveCivID).diplomacy.iImprovingRelationsSize <= 0) {
                                                width9 = i100 + CFG.PADDING;
                                                i32 = i5;
                                                while (i33 < Game.getCiv(iActiveCivID).diplomacy.iImprovingRelationsSize) {
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width9 > i4) {
                                                        width9 = i100 + CFG.PADDING;
                                                        iMax += i2;
                                                        i32++;
                                                    }
                                                    if (Game.getCiv(Game.getCiv(iActiveCivID).diplomacy.improvingRelations.get(i33).iCivID).diplomacy.isImprovingRelations(iActiveCivID)) {
                                                        arrayList8.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).diplomacy.improvingRelations.get(i33).iCivID, width9, iMax + CFG.PADDING, true, true));
                                                    } else {
                                                        arrayList8.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).diplomacy.improvingRelations.get(i33).iCivID, width9, iMax + CFG.PADDING, true, true, true));
                                                    }
                                                    width9 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                }
                                                i34 = iMax;
                                                width10 = width9;
                                                i36 = i32;
                                                while (i35 < arrayList4.size()) {
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width10 > i4) {
                                                        width10 = i100 + CFG.PADDING;
                                                        i34 += i2;
                                                        i36++;
                                                    }
                                                    arrayList8.add(new ButtonFlag_Diplomacy(((Integer) arrayList4.get(i35)).intValue(), width10, i34 + CFG.PADDING, true, true, false));
                                                    width10 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                }
                                                arrayList8.add(new AnonymousClass67(Game.lang.get("ImprovingRelations"), Images.relationsUp, i3, i34 - (i2 * i36), buttonWidth, i2 * (i36 + 1), width32, i88));
                                                iMax = Math.max(i34 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                i5 = 0;
                                            } else {
                                                width9 = i100 + CFG.PADDING;
                                                i32 = i5;
                                                while (i33 < Game.getCiv(iActiveCivID).diplomacy.iImprovingRelationsSize) {
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width9 > i4) {
                                                        width9 = i100 + CFG.PADDING;
                                                        iMax += i2;
                                                        i32++;
                                                    }
                                                    if (Game.getCiv(Game.getCiv(iActiveCivID).diplomacy.improvingRelations.get(i33).iCivID).diplomacy.isImprovingRelations(iActiveCivID)) {
                                                        arrayList8.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).diplomacy.improvingRelations.get(i33).iCivID, width9, iMax + CFG.PADDING, true, true));
                                                    } else {
                                                        arrayList8.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).diplomacy.improvingRelations.get(i33).iCivID, width9, iMax + CFG.PADDING, true, true, true));
                                                    }
                                                    width9 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                }
                                                i34 = iMax;
                                                width10 = width9;
                                                i36 = i32;
                                                while (i35 < arrayList4.size()) {
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width10 > i4) {
                                                        width10 = i100 + CFG.PADDING;
                                                        i34 += i2;
                                                        i36++;
                                                    }
                                                    arrayList8.add(new ButtonFlag_Diplomacy(((Integer) arrayList4.get(i35)).intValue(), width10, i34 + CFG.PADDING, true, true, false));
                                                    width10 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                }
                                                arrayList8.add(new AnonymousClass67(Game.lang.get("ImprovingRelations"), Images.relationsUp, i3, i34 - (i2 * i36), buttonWidth, i2 * (i36 + 1), width32, i88));
                                                iMax = Math.max(i34 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                i5 = 0;
                                            }
                                            arrayList3 = new ArrayList();
                                            while (i25 < Game.getCivsSize()) {
                                                if (!Game.getCiv(i25).diplomacy.isDamagingRelations(iActiveCivID)) {
                                                }
                                            }
                                            if (Game.getCiv(iActiveCivID).diplomacy.iDamagingRelationsSize <= 0) {
                                                width7 = i100 + CFG.PADDING;
                                                i26 = i5;
                                                while (i27 < Game.getCiv(iActiveCivID).diplomacy.iDamagingRelationsSize) {
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width7 > i4) {
                                                        width7 = i100 + CFG.PADDING;
                                                        iMax += i2;
                                                        i26++;
                                                    }
                                                    if (Game.getCiv(Game.getCiv(iActiveCivID).diplomacy.damagingRelations.get(i27).iCivID).diplomacy.isDamagingRelations(iActiveCivID)) {
                                                        arrayList8.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).diplomacy.damagingRelations.get(i27).iCivID, width7, iMax + CFG.PADDING, true, true));
                                                    } else {
                                                        arrayList8.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).diplomacy.damagingRelations.get(i27).iCivID, width7, iMax + CFG.PADDING, true, true, true));
                                                    }
                                                    width7 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                }
                                                i28 = iMax;
                                                width8 = width7;
                                                i30 = i26;
                                                while (i29 < arrayList3.size()) {
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width8 > i4) {
                                                        width8 = i100 + CFG.PADDING;
                                                        i28 += i2;
                                                        i30++;
                                                    }
                                                    arrayList8.add(new ButtonFlag_Diplomacy(((Integer) arrayList3.get(i29)).intValue(), width8, i28 + CFG.PADDING, true, true, false));
                                                    width8 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                }
                                                arrayList8.add(new AnonymousClass68(Game.lang.get("DamagingRelations"), Images.relationsDown, i3, i28 - (i2 * i30), buttonWidth, i2 * (i30 + 1), width32, i88));
                                                iMax = Math.max(i28 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                i5 = 0;
                                            } else {
                                                width7 = i100 + CFG.PADDING;
                                                i26 = i5;
                                                while (i27 < Game.getCiv(iActiveCivID).diplomacy.iDamagingRelationsSize) {
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width7 > i4) {
                                                        width7 = i100 + CFG.PADDING;
                                                        iMax += i2;
                                                        i26++;
                                                    }
                                                    if (Game.getCiv(Game.getCiv(iActiveCivID).diplomacy.damagingRelations.get(i27).iCivID).diplomacy.isDamagingRelations(iActiveCivID)) {
                                                        arrayList8.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).diplomacy.damagingRelations.get(i27).iCivID, width7, iMax + CFG.PADDING, true, true));
                                                    } else {
                                                        arrayList8.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).diplomacy.damagingRelations.get(i27).iCivID, width7, iMax + CFG.PADDING, true, true, true));
                                                    }
                                                    width7 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                }
                                                i28 = iMax;
                                                width8 = width7;
                                                i30 = i26;
                                                while (i29 < arrayList3.size()) {
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width8 > i4) {
                                                        width8 = i100 + CFG.PADDING;
                                                        i28 += i2;
                                                        i30++;
                                                    }
                                                    arrayList8.add(new ButtonFlag_Diplomacy(((Integer) arrayList3.get(i29)).intValue(), width8, i28 + CFG.PADDING, true, true, false));
                                                    width8 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                }
                                                arrayList8.add(new AnonymousClass68(Game.lang.get("DamagingRelations"), Images.relationsDown, i3, i28 - (i2 * i30), buttonWidth, i2 * (i30 + 1), width32, i88));
                                                iMax = Math.max(i28 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                i5 = 0;
                                            }
                                            arrayList2 = new ArrayList();
                                            while (i20 < Game.getCivsSize()) {
                                                if (Game.getCiv(i20).diplomacy.getRelation(iActiveCivID) < GameValues.diplomacy.DIPLOMACY_RELATIONS_FRIENDLY) {
                                                }
                                            }
                                            if (!arrayList2.isEmpty()) {
                                                i21 = iMax;
                                                width6 = i100 + CFG.PADDING;
                                                i22 = i5;
                                                while (i23 < GameValues.diplomacy.DIPLOMACY_FRIENDLY_LIMIT_IN_DIPLOMACY_VIEW) {
                                                    i24 = 0;
                                                    while (size4 > 0) {
                                                        if (Game.getCiv(((Integer) arrayList2.get(i24)).intValue()).diplomacy.getRelation(iActiveCivID) < Game.getCiv(((Integer) arrayList2.get(size4)).intValue()).diplomacy.getRelation(iActiveCivID)) {
                                                            i24 = size4;
                                                        }
                                                    }
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width6 > i4) {
                                                        width6 = i100 + CFG.PADDING;
                                                        i21 += i2;
                                                        i22++;
                                                    }
                                                    arrayList8.add(new ButtonFlag_Diplomacy(((Integer) arrayList2.get(i24)).intValue(), width6, CFG.PADDING + i21, true));
                                                    width6 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                    arrayList2.remove(i24);
                                                }
                                                arrayList8.add(new AnonymousClass69(Game.lang.get("FriendlyCivilizations"), Images.heart, i3, i21 - (i2 * i22), buttonWidth, i2 * (i22 + 1), width32, i88));
                                                iMax = Math.max(i21 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                i5 = 0;
                                            }
                                            if (!Game.getCiv(iActiveCivID).diplomacy.militaryAccess.isEmpty()) {
                                                width5 = i100 + CFG.PADDING;
                                                i19 = iMax;
                                                while (r7.hasNext()) {
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width5 > i4) {
                                                        width5 = i100 + CFG.PADDING;
                                                        i19 += i2;
                                                        i5++;
                                                    }
                                                    arrayList8.add(new AnonymousClass70(diplomacyData8.iCivID, width5, i19 + CFG.PADDING, true));
                                                    width5 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                }
                                                arrayList8.add(new AnonymousClass71(Game.lang.get("HaveMilitaryAccess"), Images.militaryAccess, i3, i19 - (i2 * i5), buttonWidth, i2 * (i5 + 1), width32, i88));
                                                iMax = Math.max(i19 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                i5 = 0;
                                            }
                                            arrayList = new ArrayList();
                                            while (i15 < Game.getCivsSize()) {
                                                if (Game.getCiv(i15).getNumOfProvinces() <= 0) {
                                                }
                                            }
                                            if (!arrayList.isEmpty()) {
                                                i16 = iMax;
                                                width4 = i100 + CFG.PADDING;
                                                i17 = i5;
                                                while (i18 < arrayList.size()) {
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width4 > i4) {
                                                        width4 = i100 + CFG.PADDING;
                                                        i16 += i2;
                                                        i17++;
                                                    }
                                                    int i1118 = width4;
                                                    arrayList8.add(new AnonymousClass72(((Integer) arrayList.get(i18)).intValue(), i1118, i16 + CFG.PADDING, true));
                                                    width4 = arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING + i1118;
                                                }
                                                arrayList8.add(new AnonymousClass73(Game.lang.get("GivesMilitaryAccess"), Images.militaryAccess2, i3, i16 - (i2 * i17), buttonWidth, i2 * (i17 + 1), width32, i88));
                                                iMax = Math.max(i16 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                i5 = 0;
                                            }
                                            rivaledBy = RivalsManager.getRivaledBy(iActiveCivID);
                                            if (!rivaledBy.isEmpty()) {
                                                int i1119 = i100 + CFG.PADDING;
                                                size3 = rivaledBy.size();
                                                i12 = iMax;
                                                width3 = i1119;
                                                i13 = i5;
                                                while (i14 < size3) {
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width3 > i4) {
                                                        width3 = i100 + CFG.PADDING;
                                                        i12 += i2;
                                                        i13++;
                                                    }
                                                    arrayList8.add(new ButtonFlag_Diplomacy(rivaledBy.get(i14).intValue(), width3, CFG.PADDING + i12, true));
                                                    width3 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                }
                                                arrayList8.add(new AnonymousClass74(Game.lang.get("RivaledBy"), Images.rivals, i3, i12 - (i2 * i13), buttonWidth, i2 * (i13 + 1), width32, i88));
                                                iMax = Math.max(i12 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                i5 = 0;
                                            }
                                            if (Game.getCiv(iActiveCivID).civNeighbors.civsSize > 0) {
                                                int i11110 = i100 + CFG.PADDING;
                                                size2 = arrayList8.size();
                                                i9 = iMax;
                                                width2 = i11110;
                                                i10 = i5;
                                                while (i11 < Game.getCiv(iActiveCivID).civNeighbors.civsSize) {
                                                    if (!Game.getCiv(iActiveCivID).civNeighbors.civs.get(i11).byLand) {
                                                        if (ButtonFlag_Diplomacy.getButtonWidth() + width2 > i4) {
                                                            width2 = i100 + CFG.PADDING;
                                                            i9 += i2;
                                                            i10++;
                                                        }
                                                        int i11111 = width2;
                                                        arrayList8.add(new AnonymousClass75(Game.getCiv(iActiveCivID).civNeighbors.civs.get(i11).civID, i11111, i9 + CFG.PADDING, true));
                                                        width2 = i11111 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                    }
                                                }
                                                if (size2 != arrayList8.size()) {
                                                    arrayList8.add(new AnonymousClass76(Game.lang.get("NeighbouringCivilizations") + str7 + (arrayList8.size() - size2), Images.frontLine, i3, i9 - (i2 * i10), buttonWidth, i2 * (i10 + 1), width32, i88));
                                                    iMax = Math.max(i9 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                                    i5 = 0;
                                                } else {
                                                    iMax = i9;
                                                    i5 = i10;
                                                }
                                            }
                                            civsPossibleToLiberate = PeaceTreaty.getCivsPossibleToLiberate(iActiveCivID);
                                            if (!civsPossibleToLiberate.isEmpty()) {
                                                width = i100 + CFG.PADDING;
                                                size = civsPossibleToLiberate.size();
                                                i6 = iMax;
                                                i7 = i5;
                                                i8 = 0;
                                                while (i8 < size) {
                                                    if (ButtonFlag_Diplomacy.getButtonWidth() + width > i4) {
                                                        width = i100 + CFG.PADDING;
                                                        i6 += i2;
                                                        i7++;
                                                    }
                                                    arrayList8.add(new AnonymousClass77(civsPossibleToLiberate.get(i8).intValue(), width, i6 + CFG.PADDING, true));
                                                    width += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                                                    i8++;
                                                    i7 = i7;
                                                }
                                                arrayList8.add(new AnonymousClass78(Game.lang.get("ConqueredCivilizations"), Images.conqueredCivs, i3, i6 - (i2 * i7), buttonWidth, i2 * (i7 + 1), width32, i88));
                                                iMax = Math.max(i6 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                                            }
                                            height9 = iMax + CFG.PADDING;
                                        }
                                        int iMin4 = Math.min(height9, (CFG.GAME_HEIGHT - height3) - (CFG.PADDING * 3));
                                        arrayList8.add(new Empty(0, 0, i4, Math.max(height9, iMin4)));
                                        initMenu(new AnonymousClass105(Game.getCiv(iActiveCivID).getCivName(), false, false, Images.title500), otherMenuPosX_2, height3, i4, iMin4, arrayList8, false, true);
                                        InGame_Court_Government.loadFormableFlags();
                                        relationsMode = false;
                                    }
                                } catch (Exception e55) {
                                    e = e55;
                                }
                            }
                            i73 = i88;
                            i70 = i85;
                            i88 = i73;
                        }
                    }
                }
                height9 += height2 + i71;
                if (!GameValues.diplomacy.SHOW_LIST_OF_CIVS_RELATIONS_IN_PLAYERS_CIV_VIEW) {
                    arrayList8.add(new AnonymousClass39(Game.lang.get("Relations"), Images.relations, i85, height9, (i88 - CFG.PADDING) / 2, CFG.BUTTON_HEIGHT3, width32, 0, true));
                    arrayList8.add(new AnonymousClass40(Game.lang.get("Government"), Images.government, i85 + CFG.PADDING + ((i88 - CFG.PADDING) / 2), height9, (i88 - CFG.PADDING) / 2, CFG.BUTTON_HEIGHT3, width32, 0, true));
                    height9 += arrayList8.get(arrayList8.size() - 1).getHeight() + CFG.PADDING;
                }
                arrayList8.add(new Text_Title_v2Center(Game.lang.get("FormableCivilizations"), -1, Images.boxTitleBORDERWIDTH, height9, i99 - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
                height9 += arrayList8.get(arrayList8.size() - 1).getHeight() + CFG.PADDING;
                if (Game.getCiv(Game.player.iCivID).sTagsCanForm.isEmpty()) {
                    i72 = 0;
                    while (i72 < Game.getCiv(Game.player.iCivID).sTagsCanForm.size()) {
                        height9 += CFG.PADDING;
                        int i1013 = i84;
                        arrayList8.add(new AnonymousClass41(i72, i1013, height9));
                        int width35 = i1013 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                        int buttonHeight3 = (ButtonFlag_Formable.getButtonHeight() - CFG.PADDING) / 2;
                        int i1014 = (i99 - width35) - i1013;
                        arrayList8.add(new AnonymousClass42(Game.lang.getCiv(Game.getCiv(Game.player.iCivID).sTagsCanForm.get(i72)), width35, height9, i1014, buttonHeight3));
                        arrayList8.get(arrayList8.size() - 1).setCurrent(i72);
                        str13 = str17;
                        str17 = str13;
                        arrayList8.add(new AnonymousClass43(Game.lang.get(str5) + str13, Game.player.formableCivs.get(i72).getControlledProvinces(Game.player.iCivID) + " / " + Game.player.formableCivs.get(i72).getProvincesSize_WithoutNeutral(), Images.provinces, width35, height9 + buttonHeight3 + CFG.PADDING, i1014, buttonHeight3, width32));
                        arrayList8.get(arrayList8.size() - 1).setCurrent(i72);
                        height9 += ButtonFlag_Formable.getButtonHeight() + CFG.PADDING;
                        i73 = i88;
                        i70 = i85;
                        arrayList8.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(i70, height9 - (ButtonFlag_Formable.getButtonHeight() + (CFG.PADDING * 2)), i73, ButtonFlag_Formable.getButtonHeight() + (CFG.PADDING * 2)));
                        height9 += CFG.PADDING;
                        i72++;
                        i88 = i73;
                        i85 = i70;
                        i84 = i1013;
                    }
                    i73 = i88;
                    i70 = i85;
                    i88 = i73;
                } else {
                    i70 = i85;
                    arrayList8.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i70, height9, i88, CFG.BUTTON_HEIGHT4));
                    height9 += arrayList8.get(arrayList8.size() - 1).getHeight() + CFG.PADDING;
                }
            }
            i3 = i70;
        }
        if (diplomacyMode || iActiveCivID == Game.player.iCivID) {
            str6 = str17;
            if (iActiveCivID == Game.player.iCivID || diplomacyMode) {
                if (Game.getCiv(iActiveCivID).diplomacy.iAtWarSize > 0) {
                    width19 = i100 + CFG.PADDING;
                    i47 = height9;
                    i48 = 0;
                    i49 = 0;
                    while (i49 < Game.getCiv(iActiveCivID).diplomacy.iAtWarSize) {
                        i50 = i99;
                        if (ButtonFlag_Diplomacy.getButtonWidth() + width19 > i50) {
                            width19 = i100 + CFG.PADDING;
                            i47 += i2 + CFG.TEXT_HEIGHT + (CFG.PADDING * 2);
                            i48++;
                        }
                        int i1015 = iActiveCivID;
                        String warKey5 = WarManager.getWarKey(i1015, Game.getCiv(i1015).diplomacy.atWar.get(i49).intValue());
                        warScore_Side = WarManager.lWars.get(warKey5).warScore * WarManager.lWars.get(warKey5).getWarScore_Side(Game.getCiv(iActiveCivID).diplomacy.atWar.get(i49).intValue());
                        StringBuilder sb5 = new StringBuilder();
                        if (warScore_Side > 0.0f) {
                            str9 = "+";
                        } else {
                            str9 = str3;
                        }
                        str8 = str2;
                        String string5 = sb5.append(str9).append(CFG.getPrecision2(Math.max(Math.min(warScore_Side, 100.0f), -100.0f), 1)).append(str8).toString();
                        if (((int) warScore_Side) == 0) {
                            color = Colors.COLOR_TOP_STATS3;
                        } else if (warScore_Side < 0.0f) {
                            color = Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
                        } else {
                            color = Colors.COLOR_TEXT_MODIFIER_POSITIVE;
                        }
                        arrayList8.add(new ButtonFlag_DiplomacyWar(Game.getCiv(iActiveCivID).diplomacy.atWar.get(i49).intValue(), width19, i47 + CFG.PADDING, true, string5, color, warKey5));
                        width19 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                        i49++;
                        str2 = str8;
                        i99 = i50;
                    }
                    i4 = i99;
                    str7 = str6;
                    arrayList8.add(new AnonymousClass51(Game.lang.get("AtWarWith"), Images.war, i3, i47 - ((i2 + (CFG.TEXT_HEIGHT + (CFG.PADDING * 2))) * i48), buttonWidth, (i2 + CFG.TEXT_HEIGHT + (CFG.PADDING * 2)) * (i48 + 1), width32, i88));
                    height9 = i47 + i2 + CFG.TEXT_HEIGHT + (CFG.PADDING * 2);
                } else {
                    str7 = str6;
                    i4 = i99;
                }
                if (Game.getCiv(iActiveCivID).diplomacy.iVassalsSize > 0) {
                    width18 = i100 + CFG.PADDING;
                    i44 = height9;
                    i45 = 0;
                    while (i46 < Game.getCiv(iActiveCivID).diplomacy.iVassalsSize) {
                        if (ButtonFlag_Diplomacy.getButtonWidth() + width18 > i4) {
                            width18 = i100 + CFG.PADDING;
                            i44 += i2;
                            i45++;
                        }
                        arrayList8.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).diplomacy.lVassals.get(i46).c, width18, i44 + CFG.PADDING, true, true, true));
                        width18 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                    }
                    arrayList8.add(new AnonymousClass52(Game.lang.get(Game_Ages.getVassals()), Images.vassal, i3, i44 - (i2 * i45), buttonWidth, i2 * (i45 + 1), width32, i88));
                    height9 = i44 + i2;
                }
                if (!Game.getCiv(iActiveCivID).diplomacy.alliance.isEmpty()) {
                    width17 = i100 + CFG.PADDING;
                    i43 = 0;
                    while (r7.hasNext()) {
                        if (ButtonFlag_Diplomacy.getButtonWidth() + width17 > i4) {
                            width17 = i100 + CFG.PADDING;
                            height9 += i2;
                            i43++;
                        }
                        int i11112 = width17;
                        arrayList8.add(new AnonymousClass53(diplomacyData.iCivID, i11112, height9 + CFG.PADDING, true));
                        width17 = arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING + i11112;
                    }
                    arrayList8.add(new AnonymousClass54(Game.lang.get("Alliance"), Images.alliance, i3, height9 - (i2 * i43), buttonWidth, i2 * (i43 + 1), width32, i88));
                    height9 = Math.max(height9 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                }
                iMax = height9;
                i5 = 0;
                if (!Game.getCiv(iActiveCivID).diplomacy.truce.isEmpty()) {
                    it = Game.getCiv(iActiveCivID).diplomacy.truce.values().iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (Game.getCiv(it.next().iCivID).getNumOfProvinces() > 0) {
                                z = true;
                                break;
                            }
                        } else {
                            z = false;
                            break;
                        }
                    }
                    if (z) {
                        width16 = i100 + CFG.PADDING;
                        i42 = iMax;
                        while (r7.hasNext()) {
                            if (Game.getCiv(diplomacyData2.iCivID).getNumOfProvinces() > 0) {
                                if (ButtonFlag_Diplomacy.getButtonWidth() + width16 > i4) {
                                    width16 = i100 + CFG.PADDING;
                                    i42 += i2;
                                    i5++;
                                }
                                arrayList8.add(new AnonymousClass55(diplomacyData2.iCivID, width16, i42 + CFG.PADDING, true));
                                width16 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                            }
                        }
                        arrayList8.add(new AnonymousClass56(Game.lang.get("Truce"), Images.truce, i3, i42 - (i2 * i5), buttonWidth, i2 * (i5 + 1), width32, i88));
                        iMax = Math.max(i42 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                        i5 = 0;
                    }
                }
                if (!Game.getCiv(iActiveCivID).diplomacy.defensivePact.isEmpty()) {
                    width15 = i100 + CFG.PADDING;
                    i41 = iMax;
                    while (r7.hasNext()) {
                        if (ButtonFlag_Diplomacy.getButtonWidth() + width15 > i4) {
                            width15 = i100 + CFG.PADDING;
                            i41 += i2;
                            i5++;
                        }
                        arrayList8.add(new AnonymousClass57(diplomacyData3.iCivID, width15, i41 + CFG.PADDING, true));
                        width15 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                    }
                    arrayList8.add(new AnonymousClass58(Game.lang.get("DefensivePact"), Images.defensivePact, i3, i41 - (i2 * i5), buttonWidth, i2 * (i5 + 1), width32, i88));
                    iMax = Math.max(i41 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                    i5 = 0;
                }
                if (!Game.getCiv(iActiveCivID).diplomacy.rivals.isEmpty()) {
                    width14 = i100 + CFG.PADDING;
                    i40 = iMax;
                    while (r7.hasNext()) {
                        if (ButtonFlag_Diplomacy.getButtonWidth() + width14 > i4) {
                            width14 = i100 + CFG.PADDING;
                            i40 += i2;
                            i5++;
                        }
                        arrayList8.add(new AnonymousClass59(diplomacyData4.iCivID, width14, i40 + CFG.PADDING, true));
                        width14 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                    }
                    arrayList8.add(new AnonymousClass60(Game.lang.get("Rivals"), Images.rivals, i3, i40 - (i2 * i5), buttonWidth, i2 * (i5 + 1), width32, i88));
                    iMax = Math.max(i40 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                    i5 = 0;
                }
                if (!Game.getCiv(iActiveCivID).diplomacy.guarantee.isEmpty()) {
                    width13 = i100 + CFG.PADDING;
                    i39 = iMax;
                    while (r7.hasNext()) {
                        if (ButtonFlag_Diplomacy.getButtonWidth() + width13 > i4) {
                            width13 = i100 + CFG.PADDING;
                            i39 += i2;
                            i5++;
                        }
                        arrayList8.add(new AnonymousClass61(diplomacyData5.iCivID, width13, i39 + CFG.PADDING, true));
                        width13 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                    }
                    arrayList8.add(new AnonymousClass62(Game.lang.get("GuaranteeIndependence"), Images.guaranteeIndependence, i3, i39 - (i2 * i5), buttonWidth, i2 * (i5 + 1), width32, i88));
                    iMax = Math.max(i39 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                    i5 = 0;
                }
                if (!Game.getCiv(iActiveCivID).diplomacy.guaranteeByCivID.isEmpty()) {
                    width12 = i100 + CFG.PADDING;
                    i38 = iMax;
                    while (r7.hasNext()) {
                        if (ButtonFlag_Diplomacy.getButtonWidth() + width12 > i4) {
                            width12 = i100 + CFG.PADDING;
                            i38 += i2;
                            i5++;
                        }
                        arrayList8.add(new AnonymousClass63(diplomacyData6.iCivID, width12, i38 + CFG.PADDING, true));
                        width12 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                    }
                    arrayList8.add(new AnonymousClass64(Game.lang.get("GuaranteeTheirIndependence"), Images.guaranteeIndependence, i3, i38 - (i2 * i5), buttonWidth, i2 * (i5 + 1), width32, i88));
                    iMax = Math.max(i38 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                    i5 = 0;
                }
                if (!Game.getCiv(iActiveCivID).diplomacy.nonAggressionPact.isEmpty()) {
                    width11 = i100 + CFG.PADDING;
                    i37 = iMax;
                    while (r7.hasNext()) {
                        if (ButtonFlag_Diplomacy.getButtonWidth() + width11 > i4) {
                            width11 = i100 + CFG.PADDING;
                            i37 += i2;
                            i5++;
                        }
                        arrayList8.add(new AnonymousClass65(diplomacyData7.iCivID, width11, i37 + CFG.PADDING, true));
                        width11 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                    }
                    arrayList8.add(new AnonymousClass66(Game.lang.get("NonAggressionPact").replace("-", " "), Images.nonAggression, i3, i37 - (i2 * i5), buttonWidth, i2 * (i5 + 1), width32, i88));
                    iMax = Math.max(i37 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                    i5 = 0;
                }
                arrayList4 = new ArrayList();
                for (i31 = 1; i31 < Game.getCivsSize(); i31++) {
                    if (!Game.getCiv(i31).diplomacy.isImprovingRelations(iActiveCivID) && !Game.getCiv(iActiveCivID).diplomacy.isImprovingRelations(i31)) {
                        arrayList4.add(Integer.valueOf(i31));
                    }
                }
                if (Game.getCiv(iActiveCivID).diplomacy.iImprovingRelationsSize <= 0 || !arrayList4.isEmpty()) {
                    width9 = i100 + CFG.PADDING;
                    i32 = i5;
                    while (i33 < Game.getCiv(iActiveCivID).diplomacy.iImprovingRelationsSize) {
                        if (ButtonFlag_Diplomacy.getButtonWidth() + width9 > i4) {
                            width9 = i100 + CFG.PADDING;
                            iMax += i2;
                            i32++;
                        }
                        if (Game.getCiv(Game.getCiv(iActiveCivID).diplomacy.improvingRelations.get(i33).iCivID).diplomacy.isImprovingRelations(iActiveCivID)) {
                            arrayList8.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).diplomacy.improvingRelations.get(i33).iCivID, width9, iMax + CFG.PADDING, true, true));
                        } else {
                            arrayList8.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).diplomacy.improvingRelations.get(i33).iCivID, width9, iMax + CFG.PADDING, true, true, true));
                        }
                        width9 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                    }
                    i34 = iMax;
                    width10 = width9;
                    i36 = i32;
                    while (i35 < arrayList4.size()) {
                        if (ButtonFlag_Diplomacy.getButtonWidth() + width10 > i4) {
                            width10 = i100 + CFG.PADDING;
                            i34 += i2;
                            i36++;
                        }
                        arrayList8.add(new ButtonFlag_Diplomacy(((Integer) arrayList4.get(i35)).intValue(), width10, i34 + CFG.PADDING, true, true, false));
                        width10 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                    }
                    arrayList8.add(new AnonymousClass67(Game.lang.get("ImprovingRelations"), Images.relationsUp, i3, i34 - (i2 * i36), buttonWidth, i2 * (i36 + 1), width32, i88));
                    iMax = Math.max(i34 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                    i5 = 0;
                }
                arrayList3 = new ArrayList();
                for (i25 = 1; i25 < Game.getCivsSize(); i25++) {
                    if (!Game.getCiv(i25).diplomacy.isDamagingRelations(iActiveCivID) && !Game.getCiv(iActiveCivID).diplomacy.isDamagingRelations(i25)) {
                        arrayList3.add(Integer.valueOf(i25));
                    }
                }
                if (Game.getCiv(iActiveCivID).diplomacy.iDamagingRelationsSize <= 0 || !arrayList3.isEmpty()) {
                    width7 = i100 + CFG.PADDING;
                    i26 = i5;
                    while (i27 < Game.getCiv(iActiveCivID).diplomacy.iDamagingRelationsSize) {
                        if (ButtonFlag_Diplomacy.getButtonWidth() + width7 > i4) {
                            width7 = i100 + CFG.PADDING;
                            iMax += i2;
                            i26++;
                        }
                        if (Game.getCiv(Game.getCiv(iActiveCivID).diplomacy.damagingRelations.get(i27).iCivID).diplomacy.isDamagingRelations(iActiveCivID)) {
                            arrayList8.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).diplomacy.damagingRelations.get(i27).iCivID, width7, iMax + CFG.PADDING, true, true));
                        } else {
                            arrayList8.add(new ButtonFlag_Diplomacy(Game.getCiv(iActiveCivID).diplomacy.damagingRelations.get(i27).iCivID, width7, iMax + CFG.PADDING, true, true, true));
                        }
                        width7 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                    }
                    i28 = iMax;
                    width8 = width7;
                    i30 = i26;
                    while (i29 < arrayList3.size()) {
                        if (ButtonFlag_Diplomacy.getButtonWidth() + width8 > i4) {
                            width8 = i100 + CFG.PADDING;
                            i28 += i2;
                            i30++;
                        }
                        arrayList8.add(new ButtonFlag_Diplomacy(((Integer) arrayList3.get(i29)).intValue(), width8, i28 + CFG.PADDING, true, true, false));
                        width8 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                    }
                    arrayList8.add(new AnonymousClass68(Game.lang.get("DamagingRelations"), Images.relationsDown, i3, i28 - (i2 * i30), buttonWidth, i2 * (i30 + 1), width32, i88));
                    iMax = Math.max(i28 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                    i5 = 0;
                }
                arrayList2 = new ArrayList();
                for (i20 = 1; i20 < Game.getCivsSize(); i20++) {
                    if (Game.getCiv(i20).diplomacy.getRelation(iActiveCivID) < GameValues.diplomacy.DIPLOMACY_RELATIONS_FRIENDLY && !Game.getCiv(i20).diplomacy.isRival(iActiveCivID) && !Game.getCiv(iActiveCivID).diplomacy.isRival(i20)) {
                        arrayList2.add(Integer.valueOf(i20));
                    }
                }
                if (!arrayList2.isEmpty()) {
                    i21 = iMax;
                    width6 = i100 + CFG.PADDING;
                    i22 = i5;
                    for (i23 = 0; i23 < GameValues.diplomacy.DIPLOMACY_FRIENDLY_LIMIT_IN_DIPLOMACY_VIEW && i23 < arrayList2.size(); i23++) {
                        i24 = 0;
                        while (size4 > 0) {
                            if (Game.getCiv(((Integer) arrayList2.get(i24)).intValue()).diplomacy.getRelation(iActiveCivID) < Game.getCiv(((Integer) arrayList2.get(size4)).intValue()).diplomacy.getRelation(iActiveCivID)) {
                                i24 = size4;
                            }
                        }
                        if (ButtonFlag_Diplomacy.getButtonWidth() + width6 > i4) {
                            width6 = i100 + CFG.PADDING;
                            i21 += i2;
                            i22++;
                        }
                        arrayList8.add(new ButtonFlag_Diplomacy(((Integer) arrayList2.get(i24)).intValue(), width6, CFG.PADDING + i21, true));
                        width6 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                        arrayList2.remove(i24);
                    }
                    arrayList8.add(new AnonymousClass69(Game.lang.get("FriendlyCivilizations"), Images.heart, i3, i21 - (i2 * i22), buttonWidth, i2 * (i22 + 1), width32, i88));
                    iMax = Math.max(i21 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                    i5 = 0;
                }
                if (!Game.getCiv(iActiveCivID).diplomacy.militaryAccess.isEmpty()) {
                    width5 = i100 + CFG.PADDING;
                    i19 = iMax;
                    while (r7.hasNext()) {
                        if (ButtonFlag_Diplomacy.getButtonWidth() + width5 > i4) {
                            width5 = i100 + CFG.PADDING;
                            i19 += i2;
                            i5++;
                        }
                        arrayList8.add(new AnonymousClass70(diplomacyData8.iCivID, width5, i19 + CFG.PADDING, true));
                        width5 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                    }
                    arrayList8.add(new AnonymousClass71(Game.lang.get("HaveMilitaryAccess"), Images.militaryAccess, i3, i19 - (i2 * i5), buttonWidth, i2 * (i5 + 1), width32, i88));
                    iMax = Math.max(i19 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                    i5 = 0;
                }
                arrayList = new ArrayList();
                for (i15 = 1; i15 < Game.getCivsSize(); i15++) {
                    if (Game.getCiv(i15).getNumOfProvinces() <= 0 && Game.getCiv(i15).diplomacy.militaryAccess.containsKey(Integer.valueOf(iActiveCivID))) {
                        arrayList.add(Integer.valueOf(i15));
                    }
                }
                if (!arrayList.isEmpty()) {
                    i16 = iMax;
                    width4 = i100 + CFG.PADDING;
                    i17 = i5;
                    while (i18 < arrayList.size()) {
                        if (ButtonFlag_Diplomacy.getButtonWidth() + width4 > i4) {
                            width4 = i100 + CFG.PADDING;
                            i16 += i2;
                            i17++;
                        }
                        int i11113 = width4;
                        arrayList8.add(new AnonymousClass72(((Integer) arrayList.get(i18)).intValue(), i11113, i16 + CFG.PADDING, true));
                        width4 = arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING + i11113;
                    }
                    arrayList8.add(new AnonymousClass73(Game.lang.get("GivesMilitaryAccess"), Images.militaryAccess2, i3, i16 - (i2 * i17), buttonWidth, i2 * (i17 + 1), width32, i88));
                    iMax = Math.max(i16 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                    i5 = 0;
                }
                rivaledBy = RivalsManager.getRivaledBy(iActiveCivID);
                if (!rivaledBy.isEmpty()) {
                    int i11114 = i100 + CFG.PADDING;
                    size3 = rivaledBy.size();
                    i12 = iMax;
                    width3 = i11114;
                    i13 = i5;
                    while (i14 < size3) {
                        if (ButtonFlag_Diplomacy.getButtonWidth() + width3 > i4) {
                            width3 = i100 + CFG.PADDING;
                            i12 += i2;
                            i13++;
                        }
                        arrayList8.add(new ButtonFlag_Diplomacy(rivaledBy.get(i14).intValue(), width3, CFG.PADDING + i12, true));
                        width3 += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                    }
                    arrayList8.add(new AnonymousClass74(Game.lang.get("RivaledBy"), Images.rivals, i3, i12 - (i2 * i13), buttonWidth, i2 * (i13 + 1), width32, i88));
                    iMax = Math.max(i12 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                    i5 = 0;
                }
                if (Game.getCiv(iActiveCivID).civNeighbors.civsSize > 0) {
                    int i11115 = i100 + CFG.PADDING;
                    size2 = arrayList8.size();
                    i9 = iMax;
                    width2 = i11115;
                    i10 = i5;
                    while (i11 < Game.getCiv(iActiveCivID).civNeighbors.civsSize) {
                        if (!Game.getCiv(iActiveCivID).civNeighbors.civs.get(i11).byLand) {
                            if (ButtonFlag_Diplomacy.getButtonWidth() + width2 > i4) {
                                width2 = i100 + CFG.PADDING;
                                i9 += i2;
                                i10++;
                            }
                            int i11116 = width2;
                            arrayList8.add(new AnonymousClass75(Game.getCiv(iActiveCivID).civNeighbors.civs.get(i11).civID, i11116, i9 + CFG.PADDING, true));
                            width2 = i11116 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                        }
                    }
                    if (size2 != arrayList8.size()) {
                        arrayList8.add(new AnonymousClass76(Game.lang.get("NeighbouringCivilizations") + str7 + (arrayList8.size() - size2), Images.frontLine, i3, i9 - (i2 * i10), buttonWidth, i2 * (i10 + 1), width32, i88));
                        iMax = Math.max(i9 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                        i5 = 0;
                    } else {
                        iMax = i9;
                        i5 = i10;
                    }
                }
                civsPossibleToLiberate = PeaceTreaty.getCivsPossibleToLiberate(iActiveCivID);
                if (!civsPossibleToLiberate.isEmpty()) {
                    width = i100 + CFG.PADDING;
                    size = civsPossibleToLiberate.size();
                    i6 = iMax;
                    i7 = i5;
                    i8 = 0;
                    while (i8 < size) {
                        if (ButtonFlag_Diplomacy.getButtonWidth() + width > i4) {
                            width = i100 + CFG.PADDING;
                            i6 += i2;
                            i7++;
                        }
                        arrayList8.add(new AnonymousClass77(civsPossibleToLiberate.get(i8).intValue(), width, i6 + CFG.PADDING, true));
                        width += arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                        i8++;
                        i7 = i7;
                    }
                    arrayList8.add(new AnonymousClass78(Game.lang.get("ConqueredCivilizations"), Images.conqueredCivs, i3, i6 - (i2 * i7), buttonWidth, i2 * (i7 + 1), width32, i88));
                    iMax = Math.max(i6 + i2, arrayList8.get(arrayList8.size() - 1).getPosY() + arrayList8.get(arrayList8.size() - 1).getHeight());
                }
                height9 = iMax + CFG.PADDING;
            } else if (GameValues.diplomacy.SHOW_LIST_OF_CIVS_RELATIONS_IN_PLAYERS_CIV_VIEW || relationsMode) {
                int i120 = (int) ((i99 - (Images.boxTitleBORDERWIDTH * 2)) * 0.175f);
                int i121 = (int) ((i99 - (Images.boxTitleBORDERWIDTH * 2)) * 0.45f);
                int i122 = (int) ((i99 - (Images.boxTitleBORDERWIDTH * 2)) * 0.375f);
                int i123 = Images.boxTitleBORDERWIDTH;
                int i124 = iSortID;
                arrayList8.add(new AnonymousClass45(i124 == 0 || i124 == 1, i124 == 1, Game.lang.get("Ranking"), -1, i123, height9, i120, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
                int width36 = i123 + arrayList8.get(arrayList8.size() - 1).getWidth();
                int i125 = iSortID;
                if (i125 != 2) {
                    i51 = 3;
                    if (i125 != 3) {
                        z2 = false;
                    }
                    if (i125 == i51) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    arrayList8.add(new AnonymousClass46(z2, z3, Game.lang.get("Name"), -1, width36, height9, i121, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
                    int width37 = width36 + arrayList8.get(arrayList8.size() - 1).getWidth();
                    i52 = iSortID;
                    i53 = 5;
                    if (i52 != 4 || i52 == 5) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (i52 == 5) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    arrayList8.add(new AnonymousClass47(z4, z5, Game.lang.get(str15), -1, width37, height9, i122, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
                    int height11 = height9 + arrayList8.get(arrayList8.size() - 1).getHeight() + CFG.PADDING;
                    arrayList5 = new ArrayList();
                    arrayList6 = new ArrayList();
                    for (i54 = 1; i54 < Game.getCivsSize(); i54++) {
                        if (Game.getCiv(i54).getNumOfProvinces() <= 0 && i54 != iActiveCivID) {
                            arrayList5.add(Integer.valueOf(i54));
                            arrayList6.add(Float.valueOf(Game.getCiv(iActiveCivID).diplomacy.getRelation(i54)));
                        }
                    }
                    i55 = (int) ((i88 - (CFG.PADDING * 2)) * 0.175f);
                    i56 = (int) ((i88 - (CFG.PADDING * 2)) * 0.45f);
                    i57 = (int) ((i88 - (CFG.PADDING * 2)) * 0.375f);
                    if (CFG.isDesktop()) {
                        i58 = CFG.BUTTON_HEIGHT3;
                    } else {
                        i58 = CFG.BUTTON_HEIGHT2;
                    }
                    i59 = i58;
                    height = height11;
                    while (!arrayList5.isEmpty()) {
                        i60 = iSortID;
                        if (i60 == 0) {
                            i66 = 0;
                            for (i69 = 1; i69 < arrayList5.size(); i69++) {
                                if (Game.getCiv(((Integer) arrayList5.get(i66)).intValue()).iCivRankPosition > Game.getCiv(((Integer) arrayList5.get(i69)).intValue()).iCivRankPosition) {
                                    i66 = i69;
                                }
                            }
                        } else if (i60 == 1) {
                            i66 = 0;
                            for (i68 = 1; i68 < arrayList5.size(); i68++) {
                                if (Game.getCiv(((Integer) arrayList5.get(i66)).intValue()).iCivRankPosition < Game.getCiv(((Integer) arrayList5.get(i68)).intValue()).iCivRankPosition) {
                                    i66 = i68;
                                }
                            }
                        } else if (i60 == 2) {
                            i66 = 0;
                            for (i67 = 1; i67 < arrayList5.size(); i67++) {
                                if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList5.get(i66)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList5.get(i67)).intValue()).getCivName())) {
                                    i66 = i67;
                                }
                            }
                        } else {
                            if (i60 == 3) {
                                i66 = 0;
                                for (i65 = 1; i65 < arrayList5.size(); i65++) {
                                    if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList5.get(i65)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList5.get(i66)).intValue()).getCivName())) {
                                        i66 = i65;
                                    }
                                }
                            } else {
                                if (i60 == 4) {
                                    i63 = 0;
                                    for (i64 = 1; i64 < arrayList5.size(); i64++) {
                                        if (((Float) arrayList6.get(i63)).floatValue() < ((Float) arrayList6.get(i64)).floatValue()) {
                                            i63 = i64;
                                        }
                                    }
                                } else if (i60 == i53) {
                                    i63 = 0;
                                    for (i62 = 1; i62 < arrayList5.size(); i62++) {
                                        if (((Float) arrayList6.get(i63)).floatValue() > ((Float) arrayList6.get(i62)).floatValue()) {
                                            i63 = i62;
                                        }
                                    }
                                } else {
                                    i61 = 0;
                                }
                                i61 = i63;
                            }
                            String str18 = str3;
                            StringBuilder sb6 = new StringBuilder(str18);
                            if (Game.getCiv(((Integer) arrayList5.get(i61)).intValue()).iCivRankPosition > 0) {
                                objValueOf = Integer.valueOf(Game.getCiv(((Integer) arrayList5.get(i61)).intValue()).iCivRankPosition);
                            } else {
                                objValueOf = "---";
                            }
                            ArrayList arrayList10 = arrayList6;
                            int i126 = i61;
                            int i127 = i57;
                            int i128 = i56;
                            arrayList8.add(new AnonymousClass48(sb6.append(objValueOf).toString(), CivilizationRanking.getCivilizationRanking_IMG_STAR_CIVID(((Integer) arrayList5.get(i61)).intValue()), i3, height, i55, i59, ImageManager.getImage(Images.rankGold).getWidth()));
                            int width38 = i3 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                            ArrayList arrayList11 = arrayList5;
                            arrayList8.add(new AnonymousClass49(str18 + Game.getCiv(((Integer) arrayList5.get(i126)).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, width38, height, i128, i59, ((Integer) arrayList5.get(i126)).intValue()));
                            str3 = str18;
                            arrayList8.add(new AnonymousClass50(DiplomacyManager.getOpinion_String((int) ((Float) arrayList10.get(i126)).floatValue()), str18 + CFG.getPrecision2(((Float) arrayList10.get(i126)).floatValue(), 1), CFG.FONT_REGULAR_SMALL, (CFG.PADDING * 2) + (CFG.PADDING / 2), width38 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING, height, i127, i59, ((Integer) arrayList11.get(i126)).intValue(), DiplomacyManager.getOpinion_Color((int) ((Float) arrayList10.get(i126)).floatValue())));
                            arrayList8.get(arrayList8.size() - 1).getWidth();
                            int i129 = CFG.PADDING;
                            height += arrayList8.get(arrayList8.size() - 1).getHeight() + CFG.PADDING;
                            arrayList11.remove(i126);
                            arrayList10.remove(i126);
                            arrayList5 = arrayList11;
                            arrayList6 = arrayList10;
                            i57 = i127;
                            i56 = i128;
                            i55 = i55;
                            i53 = 5;
                        }
                        i61 = i66;
                        String str19 = str3;
                        StringBuilder sb7 = new StringBuilder(str19);
                        if (Game.getCiv(((Integer) arrayList5.get(i61)).intValue()).iCivRankPosition > 0) {
                            objValueOf = Integer.valueOf(Game.getCiv(((Integer) arrayList5.get(i61)).intValue()).iCivRankPosition);
                        } else {
                            objValueOf = "---";
                        }
                        ArrayList arrayList12 = arrayList6;
                        int i1210 = i61;
                        int i1211 = i57;
                        int i1212 = i56;
                        arrayList8.add(new AnonymousClass48(sb7.append(objValueOf).toString(), CivilizationRanking.getCivilizationRanking_IMG_STAR_CIVID(((Integer) arrayList5.get(i61)).intValue()), i3, height, i55, i59, ImageManager.getImage(Images.rankGold).getWidth()));
                        int width39 = i3 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                        ArrayList arrayList13 = arrayList5;
                        arrayList8.add(new AnonymousClass49(str19 + Game.getCiv(((Integer) arrayList5.get(i1210)).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, width39, height, i1212, i59, ((Integer) arrayList5.get(i1210)).intValue()));
                        str3 = str19;
                        arrayList8.add(new AnonymousClass50(DiplomacyManager.getOpinion_String((int) ((Float) arrayList12.get(i1210)).floatValue()), str19 + CFG.getPrecision2(((Float) arrayList12.get(i1210)).floatValue(), 1), CFG.FONT_REGULAR_SMALL, (CFG.PADDING * 2) + (CFG.PADDING / 2), width39 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING, height, i1211, i59, ((Integer) arrayList13.get(i1210)).intValue(), DiplomacyManager.getOpinion_Color((int) ((Float) arrayList12.get(i1210)).floatValue())));
                        arrayList8.get(arrayList8.size() - 1).getWidth();
                        int i1213 = CFG.PADDING;
                        height += arrayList8.get(arrayList8.size() - 1).getHeight() + CFG.PADDING;
                        arrayList13.remove(i1210);
                        arrayList12.remove(i1210);
                        arrayList5 = arrayList13;
                        arrayList6 = arrayList12;
                        i57 = i1211;
                        i56 = i1212;
                        i55 = i55;
                        i53 = 5;
                    }
                    height9 = height;
                } else {
                    i51 = 3;
                }
                z2 = true;
                if (i125 == i51) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                arrayList8.add(new AnonymousClass46(z2, z3, Game.lang.get("Name"), -1, width36, height9, i121, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
                int width310 = width36 + arrayList8.get(arrayList8.size() - 1).getWidth();
                i52 = iSortID;
                i53 = 5;
                if (i52 != 4) {
                    z4 = true;
                } else {
                    z4 = true;
                }
                if (i52 == 5) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                arrayList8.add(new AnonymousClass47(z4, z5, Game.lang.get(str15), -1, width310, height9, i122, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
                int height12 = height9 + arrayList8.get(arrayList8.size() - 1).getHeight() + CFG.PADDING;
                arrayList5 = new ArrayList();
                arrayList6 = new ArrayList();
                while (i54 < Game.getCivsSize()) {
                    if (Game.getCiv(i54).getNumOfProvinces() <= 0) {
                    }
                }
                i55 = (int) ((i88 - (CFG.PADDING * 2)) * 0.175f);
                i56 = (int) ((i88 - (CFG.PADDING * 2)) * 0.45f);
                i57 = (int) ((i88 - (CFG.PADDING * 2)) * 0.375f);
                if (CFG.isDesktop()) {
                    i58 = CFG.BUTTON_HEIGHT3;
                } else {
                    i58 = CFG.BUTTON_HEIGHT2;
                }
                i59 = i58;
                height = height12;
                while (!arrayList5.isEmpty()) {
                    i60 = iSortID;
                    if (i60 == 0) {
                        i66 = 0;
                        while (i69 < arrayList5.size()) {
                            if (Game.getCiv(((Integer) arrayList5.get(i66)).intValue()).iCivRankPosition > Game.getCiv(((Integer) arrayList5.get(i69)).intValue()).iCivRankPosition) {
                                i66 = i69;
                            }
                        }
                    } else if (i60 == 1) {
                        i66 = 0;
                        while (i68 < arrayList5.size()) {
                            if (Game.getCiv(((Integer) arrayList5.get(i66)).intValue()).iCivRankPosition < Game.getCiv(((Integer) arrayList5.get(i68)).intValue()).iCivRankPosition) {
                                i66 = i68;
                            }
                        }
                    } else if (i60 == 2) {
                        i66 = 0;
                        while (i67 < arrayList5.size()) {
                            if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList5.get(i66)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList5.get(i67)).intValue()).getCivName())) {
                                i66 = i67;
                            }
                        }
                    } else {
                        if (i60 == 3) {
                            i66 = 0;
                            while (i65 < arrayList5.size()) {
                                if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList5.get(i65)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList5.get(i66)).intValue()).getCivName())) {
                                    i66 = i65;
                                }
                            }
                        } else {
                            if (i60 == 4) {
                                i63 = 0;
                                while (i64 < arrayList5.size()) {
                                    if (((Float) arrayList6.get(i63)).floatValue() < ((Float) arrayList6.get(i64)).floatValue()) {
                                        i63 = i64;
                                    }
                                }
                            } else if (i60 == i53) {
                                i63 = 0;
                                while (i62 < arrayList5.size()) {
                                    if (((Float) arrayList6.get(i63)).floatValue() > ((Float) arrayList6.get(i62)).floatValue()) {
                                        i63 = i62;
                                    }
                                }
                            } else {
                                i61 = 0;
                            }
                            i61 = i63;
                        }
                        String str110 = str3;
                        StringBuilder sb8 = new StringBuilder(str110);
                        if (Game.getCiv(((Integer) arrayList5.get(i61)).intValue()).iCivRankPosition > 0) {
                            objValueOf = Integer.valueOf(Game.getCiv(((Integer) arrayList5.get(i61)).intValue()).iCivRankPosition);
                        } else {
                            objValueOf = "---";
                        }
                        ArrayList arrayList14 = arrayList6;
                        int i1214 = i61;
                        int i1215 = i57;
                        int i1216 = i56;
                        arrayList8.add(new AnonymousClass48(sb8.append(objValueOf).toString(), CivilizationRanking.getCivilizationRanking_IMG_STAR_CIVID(((Integer) arrayList5.get(i61)).intValue()), i3, height, i55, i59, ImageManager.getImage(Images.rankGold).getWidth()));
                        int width311 = i3 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                        ArrayList arrayList15 = arrayList5;
                        arrayList8.add(new AnonymousClass49(str110 + Game.getCiv(((Integer) arrayList5.get(i1214)).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, width311, height, i1216, i59, ((Integer) arrayList5.get(i1214)).intValue()));
                        str3 = str110;
                        arrayList8.add(new AnonymousClass50(DiplomacyManager.getOpinion_String((int) ((Float) arrayList14.get(i1214)).floatValue()), str110 + CFG.getPrecision2(((Float) arrayList14.get(i1214)).floatValue(), 1), CFG.FONT_REGULAR_SMALL, (CFG.PADDING * 2) + (CFG.PADDING / 2), width311 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING, height, i1215, i59, ((Integer) arrayList15.get(i1214)).intValue(), DiplomacyManager.getOpinion_Color((int) ((Float) arrayList14.get(i1214)).floatValue())));
                        arrayList8.get(arrayList8.size() - 1).getWidth();
                        int i1217 = CFG.PADDING;
                        height += arrayList8.get(arrayList8.size() - 1).getHeight() + CFG.PADDING;
                        arrayList15.remove(i1214);
                        arrayList14.remove(i1214);
                        arrayList5 = arrayList15;
                        arrayList6 = arrayList14;
                        i57 = i1215;
                        i56 = i1216;
                        i55 = i55;
                        i53 = 5;
                    }
                    i61 = i66;
                    String str111 = str3;
                    StringBuilder sb9 = new StringBuilder(str111);
                    if (Game.getCiv(((Integer) arrayList5.get(i61)).intValue()).iCivRankPosition > 0) {
                        objValueOf = Integer.valueOf(Game.getCiv(((Integer) arrayList5.get(i61)).intValue()).iCivRankPosition);
                    } else {
                        objValueOf = "---";
                    }
                    ArrayList arrayList16 = arrayList6;
                    int i1218 = i61;
                    int i1219 = i57;
                    int i12110 = i56;
                    arrayList8.add(new AnonymousClass48(sb9.append(objValueOf).toString(), CivilizationRanking.getCivilizationRanking_IMG_STAR_CIVID(((Integer) arrayList5.get(i61)).intValue()), i3, height, i55, i59, ImageManager.getImage(Images.rankGold).getWidth()));
                    int width312 = i3 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING;
                    ArrayList arrayList17 = arrayList5;
                    arrayList8.add(new AnonymousClass49(str111 + Game.getCiv(((Integer) arrayList5.get(i1218)).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, width312, height, i12110, i59, ((Integer) arrayList5.get(i1218)).intValue()));
                    str3 = str111;
                    arrayList8.add(new AnonymousClass50(DiplomacyManager.getOpinion_String((int) ((Float) arrayList16.get(i1218)).floatValue()), str111 + CFG.getPrecision2(((Float) arrayList16.get(i1218)).floatValue(), 1), CFG.FONT_REGULAR_SMALL, (CFG.PADDING * 2) + (CFG.PADDING / 2), width312 + arrayList8.get(arrayList8.size() - 1).getWidth() + CFG.PADDING, height, i1219, i59, ((Integer) arrayList17.get(i1218)).intValue(), DiplomacyManager.getOpinion_Color((int) ((Float) arrayList16.get(i1218)).floatValue())));
                    arrayList8.get(arrayList8.size() - 1).getWidth();
                    int i12111 = CFG.PADDING;
                    height += arrayList8.get(arrayList8.size() - 1).getHeight() + CFG.PADDING;
                    arrayList17.remove(i1218);
                    arrayList16.remove(i1218);
                    arrayList5 = arrayList17;
                    arrayList6 = arrayList16;
                    i57 = i1219;
                    i56 = i12110;
                    i55 = i55;
                    i53 = 5;
                }
                height9 = height;
            }
            int iMin5 = Math.min(height9, (CFG.GAME_HEIGHT - height3) - (CFG.PADDING * 3));
            arrayList8.add(new Empty(0, 0, i4, Math.max(height9, iMin5)));
            initMenu(new AnonymousClass105(Game.getCiv(iActiveCivID).getCivName(), false, false, Images.title500), otherMenuPosX_2, height3, i4, iMin5, arrayList8, false, true);
            InGame_Court_Government.loadFormableFlags();
            relationsMode = false;
        }
        height9 += CFG.PADDING;
        int i130 = (i88 - (CFG.PADDING * 3)) / 4;
        int i131 = (int) (i130 * 1.1f);
        ArrayList arrayList18 = new ArrayList();
        if (Game.getCiv(Game.player.iCivID).getNumOfProvinces() <= 0) {
            arrayList18.add(new AnonymousClass79(Game.lang.get(str5) + str17 + Game.getCiv(Game.player.iCivID).getNumOfProvinces(), Images.provinces, i3, height9, i88, i131));
        } else {
            String str20 = str17;
            if (Game.getCiv(iActiveCivID).getNumOfProvinces() == 0) {
                int i132 = i130 * 2;
                int i133 = i3;
                arrayList18.add(new AnonymousClass80(Game.lang.get(str5) + str20 + Game.getCiv(iActiveCivID).getNumOfProvinces(), Images.provinces, i133, height9, i132 + CFG.PADDING, i131));
                arrayList18.add(new AnonymousClass81(Game.lang.get("SellProvince"), Images.provinces, i133, height9, i132 + CFG.PADDING, i131));
            } else if (DiplomacyManager.isAtWar(Game.player.iCivID, iActiveCivID)) {
                arrayList18.add(new AnonymousClass82(Game.lang.get("WeAreAtWar"), Images.war, i3, height9, i88, i131));
            } else {
                if (Game.getCiv(Game.player.iCivID).diplomacy.truce.containsKey(Integer.valueOf(iActiveCivID))) {
                    arrayList18.add(new AnonymousClass83(Game.lang.get("Truce"), Images.truce, i3, height9, i130, i131));
                } else if (Game.getCiv(Game.player.iCivID).getPuppetOfCivID() == iActiveCivID) {
                    arrayList18.add(new AnonymousClass84(Game.lang.get("ProclaimIndependence"), Images.vassal, i3, height9, i130, i131));
                } else {
                    arrayList18.add(new AnonymousClass85(Game.lang.get("DeclareWar"), Images.war, i3, height9, i130, i131));
                }
                if (Game.getCiv(Game.player.iCivID).diplomacy.isImprovingRelations(iActiveCivID)) {
                    languageManager = Game.lang;
                    str10 = "StopImprovingRelations";
                } else {
                    languageManager = Game.lang;
                    str10 = str4;
                }
                arrayList18.add(new AnonymousClass86(languageManager.get(str10), Images.relationsUp, i3, height9, i130, i131, (Game.getCiv(iActiveCivID).diplomacy.isRival(Game.player.iCivID) || Game.getCiv(Game.player.iCivID).diplomacy.isRival(iActiveCivID)) ? false : true));
                if (Game.getCiv(Game.player.iCivID).diplomacy.isDamagingRelations(iActiveCivID)) {
                    languageManager2 = Game.lang;
                    str11 = "StopDamagingRelations";
                } else {
                    languageManager2 = Game.lang;
                    str11 = str16;
                }
                int i134 = i3;
                arrayList18.add(new AnonymousClass87(languageManager2.get(str11), Images.relationsDown, i134, height9, i130, i131));
                arrayList18.add(new AnonymousClass88(Game.lang.get("SendAnInsult"), Images.insult, i134, height9, i130, i131));
                if (Game.getCiv(iActiveCivID).getPuppetOfCivID() == Game.player.iCivID && Game.getCiv(iActiveCivID).getNumOfProvinces() > 0) {
                    arrayList18.add(new AnonymousClass89(Game.lang.get("SendUltimatum"), Images.swords, i3, height9, i130, i131));
                }
                if (Game.getCiv(Game.player.iCivID).diplomacy.isRival(iActiveCivID)) {
                    languageManager3 = Game.lang;
                    str12 = "EndRivalry";
                } else {
                    languageManager3 = Game.lang;
                    str12 = "Rivalry";
                }
                int i135 = i3;
                arrayList18.add(new AnonymousClass90(languageManager3.get(str12), Images.rivals, i135, height9, i130, i131, true));
                arrayList18.add(new AnonymousClass91(Game.lang.get("FormUnion"), Images.union, i135, height9, i130, i131));
                arrayList18.add(new AnonymousClass92(Game.lang.get("FormAlliance"), Images.alliance, i135, height9, i130, i131));
                arrayList18.add(new AnonymousClass94(Game.lang.get("DefensivePact"), Images.defensivePact, i135, height9, i130, i131));
                arrayList18.add(new AnonymousClass95(Game.lang.get("NonAggressionPact").replace("-", " "), Images.nonAggression, i135, height9, i130, i131));
                arrayList18.add(new AnonymousClass96(Game.lang.get("DemandMilitaryAccess"), Images.militaryAccess, i135, height9, i130, i131));
                arrayList18.add(new AnonymousClass97(Game.lang.get("OfferMilitaryAccess"), Images.militaryAccess2, i135, height9, i130, i131));
                arrayList18.add(new AnonymousClass98(Game.lang.get("GuaranteeIndependence"), Images.guaranteeIndependence, i135, height9, i130, i131));
                arrayList18.add(new AnonymousClass99(Game.lang.get("SendGift"), Images.gift, i135, height9, i130, i131));
                if (Game.player.iCivID != iActiveCivID && Game.player.iCivID == Game.getCiv(iActiveCivID).getPuppetOfCivID()) {
                    arrayList18.add(new AnonymousClass100(Game.lang.get("LiberateCivilization"), Images.vassalBig, i3, height9, i130, i131));
                }
                int i136 = i3;
                arrayList18.add(new AnonymousClass101(Game.lang.get("SendSpy"), Images.spy, i136, height9, i130, i131));
                arrayList18.add(new AnonymousClass102(Game.lang.get("ShareTechnology"), Game_Calendar.IMG_TECHNOLOGY, i136, height9, i130, i131));
                arrayList18.add(new AnonymousClass103(Game.lang.get("SellProvince"), Images.provinces, i136, height9, i130, i131));
                arrayList18.add(new AnonymousClass104(Game.lang.get("CompareCivilizations"), Images.compare, i136, height9, i130, i131));
            }
        }
        int size7 = arrayList18.size();
        int width40 = i3;
        int i137 = 0;
        while (i137 < size7) {
            ((MenuElement) arrayList18.get(i137)).setPosX(width40);
            ((MenuElement) arrayList18.get(i137)).setPosY(height9);
            width40 += ((MenuElement) arrayList18.get(i137)).getWidth() + CFG.PADDING;
            arrayList8.add((MenuElement) arrayList18.get(i137));
            int i138 = i137 + 1;
            if (i138 % 4 == 0 || i137 == size7 - 1) {
                height9 += ((MenuElement) arrayList18.get(i137)).getHeight() + CFG.PADDING;
                width40 = i3;
            }
            i137 = i138;
        }
        arrayList18.clear();
        i4 = i99;
        int iMin6 = Math.min(height9, (CFG.GAME_HEIGHT - height3) - (CFG.PADDING * 3));
        arrayList8.add(new Empty(0, 0, i4, Math.max(height9, iMin6)));
        initMenu(new AnonymousClass105(Game.getCiv(iActiveCivID).getCivName(), false, false, Images.title500), otherMenuPosX_2, height3, i4, iMin6, arrayList8, false, true);
        InGame_Court_Government.loadFormableFlags();
        relationsMode = false;
    }

    public static final void actionCivBonuses() {
        if (Game.menuManager.getVisibleInGame_CivBonuses()) {
            Game.menuManager.setVisibleInGame_CivBonuses(false);
            return;
        }
        InGame_CivBonuses.iCivID = iActiveCivID;
        Game.menuManager.rebuildInGame_CivBonuses();
        Game.menuManager.setVisibleInGame_CivBonuses(true);
        if (Game.menuManager.getVisibleInGame_Armies()) {
            Game.menuManager.setVisibleInGame_Armies(false);
        }
    }

    public static final void actionOnClose() {
        if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DIPLOMACY || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DIPLOMACY_IMPROVE_RELATIONS || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DIPLOMACY_DAMAGE_RELATIONS) {
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
        }
        Game.iActiveProvince = -1;
        ProvinceBorderManager.clearProvinceBorder();
        ProvinceDraw.clearBiggestCities();
        Keyboard keyboard = Game.keyboard;
        if (Keyboard.keyboardMode && Keyboard.keyboardActionType == Keyboard.KeyboardActionType.INGAME_RENAME_CIV) {
            Game.keyboard.hideKeyboard();
        }
    }

    public static final void actionOnOpen() {
        if (Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_DIPLOMACY) {
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_DIPLOMACY);
        }
        ProvinceBorderManager.updateDrawProvinceBorder_SelectCiv_ByCivID(iActiveCivID);
        ProvinceDraw.buildBiggestCitiesLines(iActiveCivID);
    }

    public static final void actionRivals() {
        if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 38) {
            Game.menuManager.setVisibleInGame_PopUp(false);
        } else {
            Game.menuManager.rebuildInGame_RivalsList();
        }
    }

    public static MenuElement_Hover getHoverBetweenCivilizations(int i, int i2, boolean z, boolean z2) {
        LanguageManager languageManager;
        String str;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        String str2 = LBhZogys.asgiqPIdYabTU;
        if (z) {
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.getCiv(i2).diplomacy.isImprovingRelations(i) ? Game.lang.get("StopImprovingRelations") : Game.lang.get("ImproveRelations"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.relationsUp, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (Game.getCiv(i).diplomacy.isRival(i2) || Game.getCiv(i2).diplomacy.isRival(i)) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("WeAreRivals"), CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.rivals, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(str2) + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("XPerMonth", "" + CFG.getPrecision2(GameValues.diplomacy.DIPLOMACY_IMPROVE_RELATIONS_COST_PER_MONTH, 100)), CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.diplomacy, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AfterXDays", GameValues.diplomacy.DIPLOMACY_IMPROVE_RELATIONS_TIME) + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT2));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Opinion") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(DiplomacyManager.getRelationImprove(i2, i), 100), CFG.FONT_BOLD_SMALL, DiplomacyManager.COLOR_GREEN));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.relations, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(HjHDSSkYG.DtyXZX + CFG.getPrecision2(GameValues.diplomacy.DIPLOMACY_IMPROVE_RELATIONS_VALUE, 100) + " + " + CFG.getPrecision2(GameValues.diplomacy.DIPLOMACY_IMPROVE_RELATIONS_VALUE_PRESTIGE, 100) + " * min(1, " + Game.lang.get("Prestige") + " ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                arrayList2.add(new MenuElement_HoverElement_Type_Flag(i2, 0, 0));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(" / " + Game.lang.get("Prestige") + " ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                arrayList2.add(new MenuElement_HoverElement_Type_Flag(i, 0, 0));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(" )", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                arrayList2.clear();
            }
        } else if (z2) {
            if (Game.getCiv(i2).diplomacy.isDamagingRelations(i)) {
                languageManager = Game.lang;
                str = "StopDamagingRelations";
            } else {
                languageManager = Game.lang;
                str = "DamageRelations";
            }
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(languageManager.get(str), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.relationsDown, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(str2) + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("XPerMonth", "" + CFG.getPrecision2(GameValues.diplomacy.DIPLOMACY_DAMAGE_RELATIONS_COST_PER_MONTH, 100)), CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.diplomacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AfterXDays", GameValues.diplomacy.DIPLOMACY_DAMAGE_RELATIONS_TIME) + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT2));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Opinion") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(DiplomacyManager.getRelationDamage(i2, i), 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.relations, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (z || z2) {
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Opinion") + ": ", (Game.getCiv(i).diplomacy.getRelation(i2) <= 0.0f ? "" : "+") + CFG.getPrecision2(Game.getCiv(i).diplomacy.getRelation(i2), 10), Images.relations, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, DiplomacyManager.getOpinion_Color((int) Game.getCiv(i).diplomacy.getRelation(i2))));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Empty());
        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(i, 0, CFG.PADDING));
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("AttitudeTowards"), CFG.FONT_REGULAR));
        arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(i2, CFG.PADDING, CFG.PADDING));
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(DiplomacyManager.getOpinion_String((int) Game.getCiv(i).diplomacy.getRelation(i2)) + "", CFG.FONT_REGULAR, DiplomacyManager.getOpinion_Color((int) Game.getCiv(i).diplomacy.getRelation(i2))));
        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Prestige") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(Game.getCiv(i2).iCivRankScore, 1), CFG.FONT_BOLD_SMALL, Colors.HOVER_RIGHT));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(CivilizationRanking.getCivilizationRanking_IMG_STAR_CIVID(i2), CFG.PADDING, 0));
        arrayList2.add(new MenuElement_HoverElement_Type_Flag(i2, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Prestige") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(Game.getCiv(i).iCivRankScore, 1), CFG.FONT_BOLD_SMALL, Colors.HOVER_RIGHT));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(CivilizationRanking.getCivilizationRanking_IMG_STAR_CIVID(i), CFG.PADDING, 0));
        arrayList2.add(new MenuElement_HoverElement_Type_Flag(i, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
        arrayList2.clear();
        return new MenuElement_Hover(arrayList);
    }

    public static MenuElement_Hover getHoverBetweenCivilizations_RightMenu(int i, int i2, boolean z, boolean z2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (z) {
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(i, Game.lang.get("ImprovingRelations")));
        } else if (z2) {
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(i, Game.lang.get("DamagingRelations")));
        } else {
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(i2, Game.getCiv(i).getCivName()));
        }
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Opinion") + ": ", (Game.getCiv(i).diplomacy.getRelation(i2) > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(i).diplomacy.getRelation(i2), 10), Images.relations, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, DiplomacyManager.getOpinion_Color((int) Game.getCiv(i).diplomacy.getRelation(i2))));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Empty());
        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(i, 0, CFG.PADDING));
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("AttitudeTowards"), CFG.FONT_REGULAR));
        arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(i2, CFG.PADDING, CFG.PADDING));
        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(DiplomacyManager.getOpinion_String((int) Game.getCiv(i).diplomacy.getRelation(i2)) + "", CFG.FONT_BOLD, DiplomacyManager.getOpinion_Color((int) Game.getCiv(i).diplomacy.getRelation(i2))));
        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
        arrayList2.clear();
        if (z) {
            arrayList2.add(new MenuElement_HoverElement_Type_Empty());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AfterXDays", GameValues.diplomacy.DIPLOMACY_IMPROVE_RELATIONS_TIME) + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT2));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Opinion") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(DiplomacyManager.getRelationImprove(i2, i), 100), CFG.FONT_BOLD_SMALL, DiplomacyManager.COLOR_GREEN));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.relations, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        } else if (z2) {
            arrayList2.add(new MenuElement_HoverElement_Type_Empty());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AfterXDays", GameValues.diplomacy.DIPLOMACY_DAMAGE_RELATIONS_TIME) + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT2));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Opinion") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(DiplomacyManager.getRelationDamage(i2, i), 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.relations, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Prestige") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(Game.getCiv(i2).iCivRankScore, 1), CFG.FONT_BOLD_SMALL, Colors.HOVER_RIGHT));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(CivilizationRanking.getCivilizationRanking_IMG_STAR_CIVID(i2), CFG.PADDING, 0));
        arrayList2.add(new MenuElement_HoverElement_Type_Flag(i2, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Prestige") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(Game.getCiv(i).iCivRankScore, 1), CFG.FONT_BOLD_SMALL, Colors.HOVER_RIGHT));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(CivilizationRanking.getCivilizationRanking_IMG_STAR_CIVID(i), CFG.PADDING, 0));
        arrayList2.add(new MenuElement_HoverElement_Type_Flag(i, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
        arrayList2.clear();
        return new MenuElement_Hover(arrayList);
    }

    public static MenuElement_Hover getHoverInsult(int i, int i2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("SendAnInsult"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.insult, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Opinion") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(CFG.getPrecision2(GameValues.diplomacy.DIPLOMACY_SEND_AN_INSULT_DAMAGE, 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
        arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.relations, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Legacy") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(CFG.getPrecision2(GameValues.diplomacy.DIPLOMACY_SEND_AN_INSULT_COST_LEGACY, 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
        arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.legacy, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("DiplomacyPoints") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("-" + CFG.getPrecision2(GameValues.diplomacy.DIPLOMACY_SEND_INSULT_COST, 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
        arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.diplomacy, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(i2, 0, CFG.PADDING));
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("AttitudeTowards"), CFG.FONT_BOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(i, CFG.PADDING, CFG.PADDING));
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(DiplomacyManager.getOpinion_String((int) Game.getCiv(i2).diplomacy.getRelation(i)) + "", CFG.FONT_BOLD, DiplomacyManager.getOpinion_Color((int) Game.getCiv(i2).diplomacy.getRelation(i))));
        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Opinion") + ": ", (Game.getCiv(i2).diplomacy.getRelation(i) > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(i2).diplomacy.getRelation(i), 10), Images.relations, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, DiplomacyManager.getOpinion_Color((int) Game.getCiv(i2).diplomacy.getRelation(i))));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        return new MenuElement_Hover(arrayList);
    }

    public static MenuElement_Hover getHover_AggressiveExpansion(int i, boolean z) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (z) {
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Civilizations") + ": " + Game.lang.get("AggressiveExpansion"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.aggressiveExpansion, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("AggressiveExpansion") + ": ", CFG.getPrecision2(Game.getCiv(i).getAggressiveExpansion(), 100), Images.aggressiveExpansion, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(CvuNnwgYwe.tEWYzgWj, GameValues.aggressiveExpansion.GAME_UPDATE_AE_DECAY_TURNS) + ": ", "-" + CFG.getPrecision2(GameValues.aggressiveExpansion.AE_DECAY_PER_TICK, 100), Images.aggressiveExpansion, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("AggressiveExpansion") + " > " + CFG.getPrecision2(GameValues.aggressiveExpansion.START_COALITION_IF_AE_OVER, 10) + " = ", Game.lang.get("Coalition"), Images.alliance, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_NEGATIVE));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        return new MenuElement_Hover(arrayList);
    }

    public static MenuElement_Hover getHover_CivStability(int i) {
        Color color;
        Color color2;
        Color color3;
        Color color4;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("CivilizationStability") + ": ", CFG.getPrecision2((1.0f - Game.getCiv(i).civStability_LostFrom100) * 100.0f, 100) + "%", Images.civStability, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        float f = Game.getCiv(i).civStability_LostFrom100 * GameValues.civStability.CS_UNREST_PER_POINT;
        String str = Game.lang.get("Unrest") + ": ";
        StringBuilder sb = new StringBuilder();
        String str2 = uNBYrZVGzy.cvE;
        String string = sb.append(f > 0.0f ? str2 : "").append(Game.lang.get("XPerMonth", CFG.getPrecision2(f, 100))).toString();
        int i2 = Images.revolutionRisk;
        int i3 = CFG.FONT_REGULAR_SMALL;
        int i4 = CFG.FONT_BOLD_SMALL;
        Color color5 = Colors.HOVER_LEFT;
        if (f == 0.0f) {
            color = Colors.HOVER_NEUTRAL;
        } else {
            color = f < 0.0f ? Colors.HOVER_POSITIVE : Colors.HOVER_NEGATIVE;
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str, string, i2, i3, i4, color5, color));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        float f2 = Game.getCiv(i).civStability_LostFrom100 * GameValues.civStability.CS_UNREST_NON_CORE_PER_POINT;
        String str3 = Game.lang.get("Unrest") + ": " + Game.lang.get("NonCoreProvince") + ": ";
        String str4 = (f2 > 0.0f ? str2 : "") + Game.lang.get("XPerMonth", CFG.getPrecision2(f2, 100));
        int i5 = Images.revolutionRisk;
        int i6 = CFG.FONT_REGULAR_SMALL;
        int i7 = CFG.FONT_BOLD_SMALL;
        Color color6 = Colors.HOVER_LEFT;
        if (f2 == 0.0f) {
            color2 = Colors.HOVER_NEUTRAL;
        } else {
            color2 = f2 < 0.0f ? Colors.HOVER_POSITIVE : Colors.HOVER_NEGATIVE;
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str3, str4, i5, i6, i7, color6, color2));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        float f3 = Game.getCiv(i).civStability_LostFrom100 * GameValues.civStability.CS_UNREST_DIFFERENT_RELIGION_PER_POINT;
        String str5 = Game.lang.get("Unrest") + ": " + Game.lang.get("DifferentReligion") + ": ";
        String str6 = (f3 > 0.0f ? str2 : "") + Game.lang.get("XPerMonth", CFG.getPrecision2(f3, 100));
        int i8 = Images.revolutionRisk;
        int i9 = CFG.FONT_REGULAR_SMALL;
        int i10 = CFG.FONT_BOLD_SMALL;
        Color color7 = Colors.HOVER_LEFT;
        if (f3 == 0.0f) {
            color3 = Colors.HOVER_NEUTRAL;
        } else {
            color3 = f3 < 0.0f ? Colors.HOVER_POSITIVE : Colors.HOVER_NEGATIVE;
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str5, str6, i8, i9, i10, color7, color3));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        float f4 = Game.getCiv(i).civStability_LostFrom100 * GameValues.civStability.CS_ARMY_MORALE_RECOVERY_PER_POINT * 100.0f;
        String str7 = Game.lang.get("ArmyMoraleRecovery") + ": ";
        String str8 = (f4 > 0.0f ? str2 : "") + CFG.getPrecision2(f4, 10) + "%";
        int i11 = Images.morale;
        int i12 = CFG.FONT_REGULAR_SMALL;
        int i13 = CFG.FONT_BOLD_SMALL;
        Color color8 = Colors.HOVER_LEFT;
        if (f4 == 0.0f) {
            color4 = Colors.HOVER_NEUTRAL;
        } else {
            color4 = f4 > 0.0f ? Colors.HOVER_POSITIVE : Colors.HOVER_NEGATIVE;
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str7, str8, i11, i12, i13, color8, color4));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(uNBYrZVGzy.EdUhI) + ": ", "" + (Game.getCiv(i).getNumOfProvinces() - Game.getCiv(i).civStability_NumOfProvinces()) + " / " + Game.getCiv(i).getNumOfProvinces(), Images.provinces, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_RIGHT));
        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("CivilizationStabilityReflectsThePercentageOfYourProvincesWithLegitimateClaimsComparedToThoseWithoutAndTakesIntoAccountYourReligiousUnity"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
        arrayList2.clear();
        return new MenuElement_Hover(arrayList);
    }

    public static MenuElement_Hover getHover_WarWeariness(int i, boolean z) {
        Color color;
        Color color2;
        Color color3;
        Color color4;
        Color color5;
        Color color6;
        Color color7;
        Color color8;
        Color color9;
        Color color10;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        String str = fiRhHJntP.qjgGzfIRBt;
        if (z) {
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Civilizations") + str + Game.lang.get("WarWeariness"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.weariness, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("WarWeariness") + str, CFG.getPrecision2(Game.getCiv(i).getWarWeariness(), 100) + "%", Images.weariness, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        float warWeariness = Game.getCiv(i).getWarWeariness() * GameValues.warWeariness.WW_LEGACY_PER_POINT * 100.0f;
        String str2 = Game.lang.get("Legacy") + str;
        String str3 = (warWeariness > 0.0f ? "+" : "") + CFG.getPrecision2(warWeariness, 10) + "%";
        int i2 = Images.legacy;
        int i3 = CFG.FONT_REGULAR_SMALL;
        int i4 = CFG.FONT_BOLD_SMALL;
        Color color11 = Colors.HOVER_LEFT;
        if (warWeariness == 0.0f) {
            color = Colors.HOVER_NEUTRAL;
        } else {
            color = warWeariness > 0.0f ? Colors.HOVER_POSITIVE : Colors.HOVER_NEGATIVE;
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str2, str3, i2, i3, i4, color11, color));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        float warWeariness2 = Game.getCiv(i).getWarWeariness() * GameValues.warWeariness.WW_GOODS_PRODUCTION_PER_POINT * 100.0f;
        String str4 = Game.lang.get(fiRhHJntP.hBjNEce) + str;
        String str5 = (warWeariness2 > 0.0f ? "+" : "") + CFG.getPrecision2(warWeariness2, 10) + "%";
        int i5 = Images.goods;
        int i6 = CFG.FONT_REGULAR_SMALL;
        int i7 = CFG.FONT_BOLD_SMALL;
        Color color12 = Colors.HOVER_LEFT;
        if (warWeariness2 == 0.0f) {
            color2 = Colors.HOVER_NEUTRAL;
        } else {
            color2 = warWeariness2 > 0.0f ? Colors.HOVER_POSITIVE : Colors.HOVER_NEGATIVE;
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str4, str5, i5, i6, i7, color12, color2));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        float warWeariness3 = Game.getCiv(i).getWarWeariness() * GameValues.warWeariness.WW_CORE_COST_PER_POINT * 100.0f;
        String str6 = Game.lang.get("CoreConstruction") + str;
        String str7 = (warWeariness3 > 0.0f ? "+" : "") + CFG.getPrecision2(warWeariness3, 10) + "%";
        int i8 = Images.core;
        int i9 = CFG.FONT_REGULAR_SMALL;
        int i10 = CFG.FONT_BOLD_SMALL;
        Color color13 = Colors.HOVER_LEFT;
        if (warWeariness3 == 0.0f) {
            color3 = Colors.HOVER_NEUTRAL;
        } else {
            color3 = warWeariness3 < 0.0f ? Colors.HOVER_POSITIVE : Colors.HOVER_NEGATIVE;
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str6, str7, i8, i9, i10, color13, color3));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        float warWeariness4 = Game.getCiv(i).getWarWeariness() * GameValues.warWeariness.WW_CONVERSION_COST_PER_POINT * 100.0f;
        String str8 = Game.lang.get("ReligionConversionCost") + str;
        String str9 = (warWeariness4 > 0.0f ? "+" : "") + CFG.getPrecision2(warWeariness4, 10) + "%";
        int i11 = Images.religion;
        int i12 = CFG.FONT_REGULAR_SMALL;
        int i13 = CFG.FONT_BOLD_SMALL;
        Color color14 = Colors.HOVER_LEFT;
        if (warWeariness4 == 0.0f) {
            color4 = Colors.HOVER_NEUTRAL;
        } else {
            color4 = warWeariness4 < 0.0f ? Colors.HOVER_POSITIVE : Colors.HOVER_NEGATIVE;
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str8, str9, i11, i12, i13, color14, color4));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        float warWeariness5 = Game.getCiv(i).getWarWeariness() * GameValues.warWeariness.WW_RECRUITMENT_TIME_PER_POINT * 100.0f;
        String str10 = Game.lang.get("RecruitmentTime") + str;
        String str11 = (warWeariness5 > 0.0f ? "+" : "") + CFG.getPrecision2(warWeariness5, 10) + "%";
        int i14 = Game_Calendar.IMG_MANPOWER_TIME;
        int i15 = CFG.FONT_REGULAR_SMALL;
        int i16 = CFG.FONT_BOLD_SMALL;
        Color color15 = Colors.HOVER_LEFT;
        if (warWeariness5 == 0.0f) {
            color5 = Colors.HOVER_NEUTRAL;
        } else {
            color5 = warWeariness5 < 0.0f ? Colors.HOVER_POSITIVE : Colors.HOVER_NEGATIVE;
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str10, str11, i14, i15, i16, color15, color5));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        float warWeariness6 = Game.getCiv(i).getWarWeariness() * GameValues.warWeariness.WW_ARMY_MOVEMENT_SPEED_PER_POINT * 100.0f;
        String str12 = Game.lang.get("ArmyMovementSpeed") + str;
        String str13 = (warWeariness6 > 0.0f ? "+" : "") + CFG.getPrecision2(warWeariness6, 10) + "%";
        int i17 = Images.movementSpeed;
        int i18 = CFG.FONT_REGULAR_SMALL;
        int i19 = CFG.FONT_BOLD_SMALL;
        Color color16 = Colors.HOVER_LEFT;
        if (warWeariness6 == 0.0f) {
            color6 = Colors.HOVER_NEUTRAL;
        } else {
            color6 = warWeariness6 < 0.0f ? Colors.HOVER_POSITIVE : Colors.HOVER_NEGATIVE;
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str12, str13, i17, i18, i19, color16, color6));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        float warWeariness7 = Game.getCiv(i).getWarWeariness() * GameValues.warWeariness.WW_SIEGE_EFFECTIVENESS_PER_POINT * 100.0f;
        String str14 = Game.lang.get("SiegeEffectiveness") + str;
        String str15 = (warWeariness7 > 0.0f ? "+" : "") + CFG.getPrecision2(warWeariness7, 10) + "%";
        int i20 = Images.siege;
        int i21 = CFG.FONT_REGULAR_SMALL;
        int i22 = CFG.FONT_BOLD_SMALL;
        Color color17 = Colors.HOVER_LEFT;
        if (warWeariness7 == 0.0f) {
            color7 = Colors.HOVER_NEUTRAL;
        } else {
            color7 = warWeariness7 > 0.0f ? Colors.HOVER_POSITIVE : Colors.HOVER_NEGATIVE;
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str14, str15, i20, i21, i22, color17, color7));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        float warWeariness8 = Game.getCiv(i).getWarWeariness() * GameValues.warWeariness.WW_UNREST_PER_POINT;
        String str16 = Game.lang.get("Unrest") + str;
        String str17 = (warWeariness8 > 0.0f ? "+" : "") + Game.lang.get("XPerMonth", CFG.getPrecision2(warWeariness8, 100));
        int i23 = Images.revolutionRisk;
        int i24 = CFG.FONT_REGULAR_SMALL;
        int i25 = CFG.FONT_BOLD_SMALL;
        Color color18 = Colors.HOVER_LEFT;
        if (warWeariness8 == 0.0f) {
            color8 = Colors.HOVER_NEUTRAL;
        } else {
            color8 = warWeariness8 < 0.0f ? Colors.HOVER_POSITIVE : Colors.HOVER_NEGATIVE;
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str16, str17, i23, i24, i25, color18, color8));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        float warWeariness9 = Game.getCiv(i).getWarWeariness() * GameValues.warWeariness.WW_UNREST_NON_CORE_PER_POINT;
        String str18 = Game.lang.get("Unrest") + str + Game.lang.get("NonCoreProvince") + str;
        String str19 = (warWeariness9 > 0.0f ? "+" : "") + Game.lang.get("XPerMonth", CFG.getPrecision2(warWeariness9, 100));
        int i26 = Images.revolutionRisk;
        int i27 = CFG.FONT_REGULAR_SMALL;
        int i28 = CFG.FONT_BOLD_SMALL;
        Color color19 = Colors.HOVER_LEFT;
        if (warWeariness9 == 0.0f) {
            color9 = Colors.HOVER_NEUTRAL;
        } else {
            color9 = warWeariness9 < 0.0f ? Colors.HOVER_POSITIVE : Colors.HOVER_NEGATIVE;
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str18, str19, i26, i27, i28, color19, color9));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        float warWeariness10 = Game.getCiv(i).getWarWeariness() * GameValues.warWeariness.WW_UNREST_DIFFERENT_RELIGION_PER_POINT;
        String str20 = Game.lang.get("Unrest") + str + Game.lang.get("DifferentReligion") + str;
        String str21 = (warWeariness10 > 0.0f ? "+" : "") + Game.lang.get("XPerMonth", CFG.getPrecision2(warWeariness10, 100));
        int i29 = Images.revolutionRisk;
        int i30 = CFG.FONT_REGULAR_SMALL;
        int i31 = CFG.FONT_BOLD_SMALL;
        Color color20 = Colors.HOVER_LEFT;
        if (warWeariness10 == 0.0f) {
            color10 = Colors.HOVER_NEUTRAL;
        } else {
            color10 = warWeariness10 < 0.0f ? Colors.HOVER_POSITIVE : Colors.HOVER_NEGATIVE;
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str20, str21, i29, i30, i31, color20, color10));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("WarWearinessH1"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("WarWearinessH2"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
        arrayList2.clear();
        return new MenuElement_Hover(arrayList);
    }

    public static int getRankCivsWithProvinces(int i) {
        int i2 = 0;
        for (int i3 = 1; i3 < Game.getCivsSize(); i3++) {
            if (Game.getCiv(i3).getNumOfProvinces() > 0) {
                i2++;
            }
        }
        return i2;
    }

    public static int getRankPopulation(int i) {
        long populationTotal = Game.getCiv(i).getPopulationTotal();
        int i2 = 1;
        for (int i3 = 1; i3 < i; i3++) {
            if (Game.getCiv(i3).getPopulationTotal() > populationTotal) {
                i2++;
            }
        }
        for (int i4 = i + 1; i4 < Game.getCivsSize(); i4++) {
            if (Game.getCiv(i4).getPopulationTotal() > populationTotal) {
                i2++;
            }
        }
        return i2;
    }

    public static final void rebuildMenu() {
        iRebuildToCivID = iActiveCivID;
        Game.menuManager.rebuildInGame_Civ_SavePos();
        lTime = 0L;
        lTime2 = 0L;
    }

    public static void updateMaxIconH() {
        int i = iMaxH_DiplomacyIcon;
        if (i == 0) {
            int iMax = Math.max(i, ImageManager.getImage(Images.alliance).getHeight());
            iMaxH_DiplomacyIcon = iMax;
            int iMax2 = Math.max(iMax, ImageManager.getImage(Images.rivals).getHeight());
            iMaxH_DiplomacyIcon = iMax2;
            int iMax3 = Math.max(iMax2, ImageManager.getImage(Images.war).getHeight());
            iMaxH_DiplomacyIcon = iMax3;
            int iMax4 = Math.max(iMax3, ImageManager.getImage(Images.relationsUp).getHeight());
            iMaxH_DiplomacyIcon = iMax4;
            int iMax5 = Math.max(iMax4, ImageManager.getImage(Images.relationsDown).getHeight());
            iMaxH_DiplomacyIcon = iMax5;
            int iMax6 = Math.max(iMax5, ImageManager.getImage(Images.militaryAccess).getHeight());
            iMaxH_DiplomacyIcon = iMax6;
            int iMax7 = Math.max(iMax6, ImageManager.getImage(Images.defensivePact).getHeight());
            iMaxH_DiplomacyIcon = iMax7;
            int iMax8 = Math.max(iMax7, ImageManager.getImage(Images.alliance).getHeight());
            iMaxH_DiplomacyIcon = iMax8;
            int iMax9 = Math.max(iMax8, ImageManager.getImage(Images.nonAggression).getHeight());
            iMaxH_DiplomacyIcon = iMax9;
            int iMax10 = Math.max(iMax9, ImageManager.getImage(Images.vassal).getHeight());
            iMaxH_DiplomacyIcon = iMax10;
            int iMax11 = Math.max(iMax10, ImageManager.getImage(Images.militaryAccess).getHeight());
            iMaxH_DiplomacyIcon = iMax11;
            int iMax12 = Math.max(iMax11, ImageManager.getImage(Images.militaryAccess2).getHeight());
            iMaxH_DiplomacyIcon = iMax12;
            int iMax13 = Math.max(iMax12, ImageManager.getImage(Images.gift).getHeight());
            iMaxH_DiplomacyIcon = iMax13;
            int iMax14 = Math.max(iMax13, ImageManager.getImage(Images.guaranteeIndependence).getHeight());
            iMaxH_DiplomacyIcon = iMax14;
            iMaxH_DiplomacyIcon = Math.max(iMax14, ImageManager.getImage(Images.spy).getHeight());
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void actionCloseMenu() {
        super.actionCloseMenu();
        actionOnClose();
        Keyboard keyboard = Game.keyboard;
        if (Keyboard.keyboardMode && Keyboard.keyboardActionType == Keyboard.KeyboardActionType.INGAME_RENAME_CIV) {
            Game.keyboard.hideKeyboard();
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop500, Images.insideBot500);
        ImageManager.getImage(Images.civInfoOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.civInfoOver).getWidth() / 2)) + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.civInfoOver).getHeight()));
        super.draw(spriteBatch, i3, i2, z, status);
    }

    public int getRankEconomy(int i) {
        float economyTotal = Game.getCiv(i).getEconomyTotal();
        int i2 = 1;
        for (int i3 = 1; i3 < i; i3++) {
            if (Game.getCiv(i3).getEconomyTotal() > economyTotal) {
                i2++;
            }
        }
        for (int i4 = i + 1; i4 < Game.getCivsSize(); i4++) {
            if (Game.getCiv(i4).getEconomyTotal() > economyTotal) {
                i2++;
            }
        }
        return i2;
    }

    public int getRankProvinces(int i) {
        int numOfProvinces = Game.getCiv(i).getNumOfProvinces();
        int i2 = 1;
        for (int i3 = 1; i3 < i; i3++) {
            if (Game.getCiv(i3).getNumOfProvinces() > numOfProvinces) {
                i2++;
            }
        }
        for (int i4 = i + 1; i4 < Game.getCivsSize(); i4++) {
            if (Game.getCiv(i4).getNumOfProvinces() > numOfProvinces) {
                i2++;
            }
        }
        return i2;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        long j = CFG.currentTimeMillis;
        lTime = j;
        lTime2 = j;
        Keyboard keyboard = Game.keyboard;
        if (Keyboard.keyboardMode && Keyboard.keyboardActionType == Keyboard.KeyboardActionType.INGAME_RENAME_CIV) {
            Game.keyboard.hideKeyboard();
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void updateLanguage() {
        super.updateLanguage();
        getTitle().setText(Game.getCiv(iActiveCivID).getCivName());
    }
}
