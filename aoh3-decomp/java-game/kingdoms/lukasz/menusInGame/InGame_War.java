package aoc.kingdoms.lukasz.menusInGame;

import androidx.arch.core.ht.qIuEvFbUtcea;
import androidx.core.internal.oiV.CoLRpi;
import aoc.kingdoms.lukasz.jakowski.AI.Values.nvwi.cIUGJCqyPXfp;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.Renderer.SparksAnimation;
import aoc.kingdoms.lukasz.map.RulersManager;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRanking;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.map.war.WarManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_War;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame_Image;
import aoc.kingdoms.lukasz.menu_element.button.ButtonRuler_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Diplomacy_Flip;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStats_WarScore;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonusFlag;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_Image;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2Center;
import aoc.kingdoms.lukasz.menusInGame.Court.zHJ.lOow;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_CallAllies;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Intervene;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.menusInGame.Province.iOYW.ALZmnpZHj;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.google.android.gms.internal.tasks.Vhe.SwmJtrccN;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_War extends Menu {
    public static final int ANIMATION_TIME = 60;
    public static String key;
    public static SparksAnimation sparksAnimation = new SparksAnimation();
    public static long lTime = 0;
    public int imageOverID = 0;
    public boolean whitePeaceConfirm = false;
    public boolean surrenderConfirm = false;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_War$1, reason: invalid class name */
    class AnonymousClass1 extends TextIcon_Diplomacy {
        AnonymousClass1(int i, int i2, int i3, int i4, int i5, int i6) {
            super(i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Diplomacy
        public Color getColorBar() {
            return DiplomacyManager.COLOR_RED;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_War$10, reason: invalid class name */
    class AnonymousClass10 extends ButtonGame_Image {
        AnonymousClass10(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z, int i7) {
            super(str, i, i2, i3, i4, i5, i6, z, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            float f = (int) WarManager.lWars.get(InGame_War.key).warScore;
            if (!WarManager.lWars.get(InGame_War.key).isDefender(Game.player.iCivID) && !WarManager.lWars.get(InGame_War.key).isAggressor(Game.player.iCivID)) {
                Game.menuManager.addToast_Error(Game.lang.get("Error"));
                return;
            }
            if (f * WarManager.lWars.get(InGame_War.key).getWarScore_Side(Game.player.iCivID) * (-1.0f) < GameValues.peace.WAR_MAKE_DEMANDS_MIN_WAR_SCORE) {
                Game.menuManager.addToast_Error(Game.lang.get("WithAWarScoreOfXTheWinningSideCanMakeDemands", CFG.getPrecision2(GameValues.peace.WAR_MAKE_DEMANDS_MIN_WAR_SCORE, 100) + "%"), Images.warDemands);
                return;
            }
            Game.player.initPeaceTreaty_Player(InGame_War.key);
            Game.menuManager.setVisibleInGame_War(false);
            Game.menuManager.rebuildInGame_Peace();
            if (Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_PEACE_VIEW) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_PEACE_VIEW);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("MakeDemands"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.warDemands, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanMakeDemands", CFG.getPrecision2(GameValues.peace.WAR_MAKE_DEMANDS_MIN_WAR_SCORE, 100) + "%"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_War$11, reason: invalid class name */
    class AnonymousClass11 extends Text_StaticBG_ID_Image {
        AnonymousClass11(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 48 && InGame_Intervene.warKey.equals(InGame_War.key)) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                InGame_Intervene.warKey = InGame_War.key;
                Game.menuManager.rebuildInGame_Intervene(WarManager.lWars.get(InGame_War.key).lAggressors.get(0).iCivID, WarManager.lWars.get(InGame_War.key).lDefenders.get(0).iCivID);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("InterveneInWar"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.intervene, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            try {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.lang.get("JoinAWarAgainst") + SwmJtrccN.ceoY, Game.getCiv(WarManager.lWars.get(InGame_War.key).lDefenders.get(0).iCivID).getCivName(), WarManager.lWars.get(InGame_War.key).lDefenders.get(0).iCivID, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } catch (Exception unused) {
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_War$12, reason: invalid class name */
    class AnonymousClass12 extends Text_StaticBG_ID_Image {
        AnonymousClass12(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 48 && InGame_Intervene.warKey.equals(InGame_War.key)) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                InGame_Intervene.warKey = InGame_War.key;
                Game.menuManager.rebuildInGame_Intervene(WarManager.lWars.get(InGame_War.key).lDefenders.get(0).iCivID, WarManager.lWars.get(InGame_War.key).lAggressors.get(0).iCivID);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("InterveneInWar"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.intervene, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            try {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.lang.get("JoinAWarAgainst") + ": ", Game.getCiv(WarManager.lWars.get(InGame_War.key).lAggressors.get(0).iCivID).getCivName(), WarManager.lWars.get(InGame_War.key).lAggressors.get(0).iCivID, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } catch (Exception unused) {
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_War$13, reason: invalid class name */
    class AnonymousClass13 extends Text_StaticBG_ID_FlagCiv {
        AnonymousClass13(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 37 && InGame_CallAllies.warKey.equals(InGame_War.key)) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                InGame_CallAllies.warKey = InGame_War.key;
                Game.menuManager.rebuildInGame_CallAllies(WarManager.lWars.get(InGame_War.key).lDefenders.get(0).iCivID);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("CallAllies"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.alliance, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_War$14, reason: invalid class name */
    class AnonymousClass14 extends Text_StaticBG_ID_FlagCiv {
        AnonymousClass14(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
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
            this.menuElementHover = CivilizationRanking.getHover_CivilizationRanking_Short(getCurrent(), false, false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_War$15, reason: invalid class name */
    class AnonymousClass15 extends Text_StaticBG_ID_FlagCiv {
        AnonymousClass15(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 37 && InGame_CallAllies.warKey.equals(InGame_War.key)) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                InGame_CallAllies.warKey = InGame_War.key;
                Game.menuManager.rebuildInGame_CallAllies(WarManager.lWars.get(InGame_War.key).lAggressors.get(0).iCivID);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("CallAllies"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.alliance, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_War$16, reason: invalid class name */
    class AnonymousClass16 extends Text_StaticBG_ID_FlagCiv {
        AnonymousClass16(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
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
            this.menuElementHover = CivilizationRanking.getHover_CivilizationRanking_Short(getCurrent(), false, false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_War$17, reason: invalid class name */
    class AnonymousClass17 extends MenuTitleIMG_War {
        AnonymousClass17(String str, String str2, String str3, String str4, String str5, boolean z, boolean z2, int i) {
            super(str, str2, str3, str4, str5, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_War, aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public void draw(SpriteBatch spriteBatch, int i, int i2, int i3, Status status) {
            super.draw(spriteBatch, i, i2, i3 + Images.boxTitleBORDERWIDTH, status);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_War.lTime;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_War$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonStats_WarScore {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6, String str2) {
            super(str, i, i2, i3, i4, i5, i6, str2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            float warScore_Side = WarManager.lWars.get(InGame_War.key).getWarScore_Side(getCurrent());
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("WarScore") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(CFG.getPrecision2(Math.min(Math.max(WarManager.lWars.get(this.key).warScore * warScore_Side, -100.0f), 100.0f), 1) + "%", CFG.FONT_BOLD, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.victoryPoints, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (Math.abs(WarManager.lWars.get(this.key).warScore) >= 1.0f) {
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("InFavorOf") + ": ", CFG.FONT_REGULAR));
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getCiv((WarManager.lWars.get(this.key).warScore > 0.0f ? WarManager.lWars.get(this.key).lAggressors : WarManager.lWars.get(this.key).lDefenders).get(0).iCivID).getCivName(), CFG.FONT_BOLD, Colors.HOVER_POSITIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle((WarManager.lWars.get(this.key).warScore > 0.0f ? WarManager.lWars.get(this.key).lAggressors : WarManager.lWars.get(this.key).lDefenders).get(0).iCivID, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("OccupiedProvinces") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(WarManager.lWars.get(this.key).warScoreFromOccupiedProvinces * warScore_Side, 10) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.victoryPoints, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("WarScoreFromBattles") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(WarManager.lWars.get(this.key).warScoreFromBattles * warScore_Side, 10) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.victoryPoints, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("TickingWarScore") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(WarManager.lWars.get(this.key).tickingWarScore * warScore_Side, 10) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.victoryPoints, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("EachMonthTheWinningSideGainsXOfTheTickingWarScoreBasedOnTheCurrentOverallWarScoreFromBattlesAndOccupiedProvinces", CFG.getPrecision2(GameValues.war.TICKING_WAR_SCORE_EACH_MONTH * 100.0f, 100)), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_War$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRectIMG_Diplomacy {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Casualties") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(CFG.getNumberWithSpaces("" + WarManager.lWars.get(InGame_War.key).getCasualties_Aggressors()), CFG.FONT_BOLD, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.skull, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_War$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonStatsRectIMG_Diplomacy {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("WarWeariness") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(CFG.getPrecision2(Game.getCiv(this.id).getWarWeariness(), 10) + ALZmnpZHj.MJKOQBcChVcJzJD, CFG.FONT_BOLD, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.weariness, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_War$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonStatsRectIMG_Diplomacy_Flip {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Casualties") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(CFG.getNumberWithSpaces(qIuEvFbUtcea.Csdx + WarManager.lWars.get(InGame_War.key).getCasualties_Defenders()), CFG.FONT_BOLD, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.skull, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_War$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonStatsRectIMG_Diplomacy_Flip {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("WarWeariness") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(CFG.getPrecision2(Game.getCiv(this.id).getWarWeariness(), 10) + "%", CFG.FONT_BOLD, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.weariness, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_War$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonRuler_Diplomacy {
        AnonymousClass7(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonRuler_Diplomacy
        public Image getRulerImage() {
            return RulersManager.rulerIMG_DiplomacyRight;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_War$8, reason: invalid class name */
    class AnonymousClass8 extends ButtonGame_Image {
        AnonymousClass8(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z, int i7) {
            super(str, i, i2, i3, i4, i5, i6, z, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (!InGame_War.this.surrenderConfirm) {
                InGame_War.this.surrenderConfirm = true;
                setText(Game.lang.get(lOow.YcyucOkuS));
                return;
            }
            int i = WarManager.lWars.get(InGame_War.key).lAggressors.get(0).iCivID;
            int i2 = WarManager.lWars.get(InGame_War.key).lDefenders.get(0).iCivID;
            if ((i == Game.player.iCivID || i2 == Game.player.iCivID) && DiplomacyManager.surrenderWar(InGame_War.key, Game.player.iCivID)) {
                Game.menuManager.setVisibleInGame_War(false);
                Game.menuManager.rebuildInGame_Wars();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Surrender"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.warSurrender, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getIsHovered() {
            return super.getIsHovered() || InGame_War.this.surrenderConfirm;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_War$9, reason: invalid class name */
    class AnonymousClass9 extends ButtonGame_Image {
        AnonymousClass9(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z, int i7) {
            super(str, i, i2, i3, i4, i5, i6, z, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            float f = (int) WarManager.lWars.get(InGame_War.key).warScore;
            if (!WarManager.lWars.get(InGame_War.key).isDefender(Game.player.iCivID) && !WarManager.lWars.get(InGame_War.key).isAggressor(Game.player.iCivID)) {
                Game.menuManager.addToast_Error(Game.lang.get(cIUGJCqyPXfp.Fsc));
                return;
            }
            if (f * WarManager.lWars.get(InGame_War.key).getWarScore_Side(Game.player.iCivID) * (-1.0f) < GameValues.peace.WAR_WHITE_PEACE_MIN_WAR_SCORE) {
                Game.menuManager.addToast_Error(Game.lang.get("WithAWarScoreOfXTheWinningSideCanProposeAWhitePeace", CFG.getPrecision2(GameValues.peace.WAR_WHITE_PEACE_MIN_WAR_SCORE, 100) + "%"), Images.warPeace);
                return;
            }
            if (!InGame_War.this.whitePeaceConfirm) {
                InGame_War.this.whitePeaceConfirm = true;
                setText(Game.lang.get("Confirm"));
                return;
            }
            int i = WarManager.lWars.get(InGame_War.key).lAggressors.get(0).iCivID;
            int i2 = WarManager.lWars.get(InGame_War.key).lDefenders.get(0).iCivID;
            if (DiplomacyManager.whitePeace(InGame_War.key)) {
                Game.menuManager.setVisibleInGame_War(false);
                Game.menuManager.rebuildInGame_Wars();
                InGame_Info.iCivID = i;
                InGame_Info.iCivID2 = i2;
                Game.menuManager.rebuildInGame_Info(Game.lang.get("WhitePeace"), Game_Calendar.getCurrentDate());
                InGame_Info.imgID = Images.infoDiplomacy;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(CoLRpi.yOJKlHC), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.warPeace, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanProposeAWhitePeace", CFG.getPrecision2(GameValues.peace.WAR_WHITE_PEACE_MIN_WAR_SCORE, 100) + "%"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getIsHovered() {
            return super.getIsHovered() || InGame_War.this.whitePeaceConfirm;
        }
    }

    /* JADX WARN: Code duplicated, block: B:188:0x0985  */
    /* JADX WARN: Code duplicated, block: B:190:0x099f  */
    /* JADX WARN: Code duplicated, block: B:259:0x09b7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x0303 A[Catch: Exception -> 0x03d3, TRY_ENTER, TRY_LEAVE, TryCatch #6 {Exception -> 0x03d3, blocks: (B:18:0x02c2, B:26:0x0303), top: B:215:0x02c2 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x03c8 A[Catch: Exception -> 0x03da, TRY_LEAVE, TryCatch #15 {Exception -> 0x03da, blocks: (B:30:0x03ba, B:32:0x03c8), top: B:233:0x03ba }] */
    public InGame_War() {
        int i;
        ArrayList arrayList;
        String str;
        Exception exc;
        int size;
        int posY;
        int i2;
        String civName;
        String str2;
        String civName2;
        String str3;
        Exception exc2;
        String str4;
        Exception e;
        int height;
        String str5;
        int height2;
        Exception e2;
        ArrayList arrayList2 = new ArrayList();
        int i3 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
        ImageManager.getImage(Images.title580).getHeight();
        int width = ImageManager.getImage(Images.title580).getWidth() - Images.boxTitleBORDERWIDTH;
        int i4 = CFG.GAME_HEIGHT;
        int i5 = CFG.PADDING;
        String warName = WarManager.getWarName(key);
        try {
            if (WarManager.lWars.containsKey(key)) {
                int i6 = WarManager.lWars.get(key).lAggressors.get(0).iCivID;
                int i7 = WarManager.lWars.get(key).lDefenders.get(0).iCivID;
                int width2 = ImageManager.getImage(Images.warBig).getWidth() + (CFG.PADDING * 4);
                int i8 = CFG.PADDING;
                int height3 = ImageManager.getImage(Images.flagDiplomacyOver).getHeight() + (i8 * 2);
                int buttonWidth = ButtonRuler_Diplomacy.getButtonWidth() + i3 + CFG.PADDING;
                int i9 = ((width / 2) - buttonWidth) - (CFG.PADDING / 2);
                int buttonHeight = ((ButtonRuler_Diplomacy.getButtonHeight() - height3) - (CFG.PADDING * 3)) / 3;
                try {
                    if (WarManager.lWars.get(key).isCoalition) {
                        warName = Game.lang.get("Coalition");
                    }
                } catch (Exception unused) {
                }
                String str6 = warName;
                try {
                    int i10 = i5 + i8;
                    arrayList2.add(new ButtonFlag_Diplomacy(i6, (((width / 2) - (width2 / 2)) - (CFG.PADDING * 2)) - ImageManager.getImage(Images.flagDiplomacyOver).getWidth(), i10, true));
                    arrayList2.add(new ButtonFlag_Diplomacy(i7, (width / 2) + (width2 / 2) + (CFG.PADDING * 2), i10, true));
                    int i11 = i9 * 2;
                    i = width;
                    try {
                        arrayList2.add(new AnonymousClass1(Images.warBig, buttonWidth, i5, i11 + CFG.PADDING, height3, width2));
                        int height4 = i5 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                        int width3 = ImageManager.getImage(Game_Calendar.IMG_MANPOWER).getWidth() + (CFG.PADDING * 2);
                        arrayList = arrayList2;
                        try {
                            arrayList.add(new AnonymousClass2(Game.lang.get("WarScore") + ": ", buttonWidth, height4, i11 + CFG.PADDING, buttonHeight, i6, i7, key));
                            arrayList.add(new AnonymousClass3("" + CFG.getShortNumber(WarManager.lWars.get(key).getCasualties_Aggressors()), Images.skull, buttonWidth, height4 + CFG.PADDING + buttonHeight, i9, buttonHeight, width3, 0));
                            int i12 = buttonHeight * 2;
                            arrayList.add(new AnonymousClass4("" + CFG.getPrecision2(Game.getCiv(i6).getWarWeariness(), 10) + "%", Images.weariness, buttonWidth, height4 + (CFG.PADDING * 2) + i12, i9, buttonHeight, width3, i6));
                            arrayList.add(new AnonymousClass5("" + CFG.getShortNumber(WarManager.lWars.get(key).getCasualties_Defenders()), Images.skull, buttonWidth + CFG.PADDING + i9, height4 + CFG.PADDING + buttonHeight, i9, buttonHeight, width3, 0));
                            arrayList.add(new AnonymousClass6("" + CFG.getPrecision2(Game.getCiv(i7).getWarWeariness(), 10) + "%", Images.weariness, buttonWidth + CFG.PADDING + i9, height4 + (CFG.PADDING * 2) + i12, i9, buttonHeight, width3, i7));
                            int i13 = CFG.PADDING;
                            RulersManager.loadRulerIMG_DiplomacyLeft(i6);
                            RulersManager.loadRulerIMG_DiplomacyRight(i7);
                            int i14 = i3;
                            arrayList.add(new ButtonRuler_Diplomacy(i6, i14, i13));
                            try {
                                arrayList.add(new AnonymousClass7(i7, (i - i14) - ButtonRuler_Diplomacy.getButtonWidth(), i13));
                                int height5 = i13 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                                try {
                                    if (WarManager.lWars.get(key).lAggressors.get(0).iCivID != Game.player.iCivID) {
                                        try {
                                            if (WarManager.lWars.get(key).lDefenders.get(0).iCivID == Game.player.iCivID) {
                                                int i15 = i - (i14 * 2);
                                                arrayList.add(new AnonymousClass8(Game.lang.get("Surrender"), CFG.FONT_REGULAR, -1, i14, height5, (i15 - (CFG.PADDING * 2)) / 3, CFG.BUTTON_HEIGHT4, true, Images.warSurrender));
                                                str3 = "";
                                                try {
                                                    arrayList.add(new AnonymousClass9(Game.lang.get("WhitePeace"), CFG.FONT_REGULAR, -1, i14 + CFG.PADDING + ((i15 - (CFG.PADDING * 2)) / 3), height5, (i15 - (CFG.PADDING * 2)) / 3, CFG.BUTTON_HEIGHT4, true, Images.warPeace));
                                                    arrayList.add(new AnonymousClass10(Game.lang.get("MakeDemands"), CFG.FONT_REGULAR, -1, i14 + (CFG.PADDING * 2) + (((i15 - (CFG.PADDING * 2)) / 3) * 2), height5, (i15 - (CFG.PADDING * 2)) / 3, CFG.BUTTON_HEIGHT4, true, Images.warDemands));
                                                    height5 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                                                    try {
                                                        if (WarManager.lWars.get(key).isCoalition) {
                                                            str6 = Game.lang.get("Coalition");
                                                        }
                                                    } catch (Exception unused2) {
                                                    }
                                                } catch (Exception e3) {
                                                    e = e3;
                                                    exc2 = e;
                                                    try {
                                                        CFG.exceptionStack(exc2);
                                                    } catch (Exception e4) {
                                                        e = e4;
                                                        i = i;
                                                        str = str3;
                                                        exc = e;
                                                        warName = str6;
                                                        CFG.exceptionStack(exc);
                                                        String str7 = warName;
                                                        size = arrayList.size();
                                                        posY = 0;
                                                        for (i2 = 0; i2 < size; i2++) {
                                                            if (posY < arrayList.get(i2).getPosY() + arrayList.get(i2).getHeight() + CFG.PADDING) {
                                                                posY = arrayList.get(i2).getPosY() + arrayList.get(i2).getHeight() + CFG.PADDING;
                                                            }
                                                        }
                                                        int iMax = Math.max(50, posY);
                                                        int iMin = CFG.GAME_HEIGHT - Math.min(ImageManager.getImage(Images.warViewOver).getHeight() + (CFG.PADDING * 2), iMax);
                                                        int i16 = i;
                                                        arrayList.add(new Empty(0, 0, i16, Math.max(posY, iMax)));
                                                        int iMin2 = Math.min(iMax, CFG.GAME_HEIGHT - iMin);
                                                        civName = Game.getCiv(WarManager.lWars.get(key).lAggressors.get(0).iCivID).getCivName();
                                                        try {
                                                            civName2 = Game.getCiv(WarManager.lWars.get(key).lDefenders.get(0).iCivID).getCivName();
                                                            str2 = civName;
                                                        } catch (Exception unused3) {
                                                            str2 = civName;
                                                            civName2 = str;
                                                        }
                                                        initMenu(new AnonymousClass17(str7, Game.lang.get("Attackers"), Game.lang.get("Defenders"), str2, civName2, false, false, Images.title580), 0, iMin, i16, iMin2, arrayList, false, true);
                                                    }
                                                }
                                            } else {
                                                str3 = "";
                                            }
                                        } catch (Exception e5) {
                                            exc2 = e5;
                                            str3 = "";
                                            CFG.exceptionStack(exc2);
                                        }
                                    } else {
                                        int i17 = i - (i14 * 2);
                                        arrayList.add(new AnonymousClass8(Game.lang.get("Surrender"), CFG.FONT_REGULAR, -1, i14, height5, (i17 - (CFG.PADDING * 2)) / 3, CFG.BUTTON_HEIGHT4, true, Images.warSurrender));
                                        str3 = "";
                                        arrayList.add(new AnonymousClass9(Game.lang.get("WhitePeace"), CFG.FONT_REGULAR, -1, i14 + CFG.PADDING + ((i17 - (CFG.PADDING * 2)) / 3), height5, (i17 - (CFG.PADDING * 2)) / 3, CFG.BUTTON_HEIGHT4, true, Images.warPeace));
                                        arrayList.add(new AnonymousClass10(Game.lang.get("MakeDemands"), CFG.FONT_REGULAR, -1, i14 + (CFG.PADDING * 2) + (((i17 - (CFG.PADDING * 2)) / 3) * 2), height5, (i17 - (CFG.PADDING * 2)) / 3, CFG.BUTTON_HEIGHT4, true, Images.warDemands));
                                        height5 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                                        if (WarManager.lWars.get(key).isCoalition) {
                                            str6 = Game.lang.get("Coalition");
                                        }
                                    }
                                } catch (Exception e6) {
                                    e = e6;
                                    str3 = "";
                                }
                                String str8 = str6;
                                try {
                                    List arrayList3 = new ArrayList();
                                    List arrayList4 = new ArrayList();
                                    try {
                                        if (WarManager.lWars.get(key).lAggressors.get(0).iCivID == Game.player.iCivID) {
                                            arrayList3 = DiplomacyManager.declareWar_AlliesAttacker(Game.player.iCivID, WarManager.lWars.get(key).lDefenders.get(0).iCivID);
                                            for (int size2 = arrayList3.size() - 1; size2 >= 0; size2--) {
                                                for (int size3 = WarManager.lWars.get(key).lAggressors.size() - 1; size3 >= 0; size3--) {
                                                    if (WarManager.lWars.get(key).lAggressors.get(size3).iCivID == ((Integer) arrayList3.get(size2)).intValue()) {
                                                        arrayList3.remove(size2);
                                                        break;
                                                    }
                                                }
                                            }
                                        } else if (WarManager.lWars.get(key).lDefenders.get(0).iCivID == Game.player.iCivID) {
                                            arrayList4 = DiplomacyManager.declareWar_AlliesDefender(WarManager.lWars.get(key).lAggressors.get(0).iCivID, Game.player.iCivID);
                                            for (int size4 = arrayList4.size() - 1; size4 >= 0; size4--) {
                                                for (int size5 = WarManager.lWars.get(key).lDefenders.size() - 1; size5 >= 0; size5--) {
                                                    if (WarManager.lWars.get(key).lDefenders.get(size5).iCivID == ((Integer) arrayList4.get(size4)).intValue()) {
                                                        arrayList4.remove(size4);
                                                        break;
                                                    }
                                                }
                                            }
                                        }
                                        List list = arrayList3;
                                        List list2 = arrayList4;
                                        if (WarManager.lWars.get(key).isInThisWar(Game.player.iCivID)) {
                                            i = i;
                                            str4 = str8;
                                        } else {
                                            try {
                                                int i18 = ((i - (i14 * 2)) - CFG.PADDING) / 2;
                                                int i19 = CFG.BUTTON_HEIGHT3;
                                                int width4 = ImageManager.getImage(Images.intervene).getWidth() + (CFG.PADDING * 3);
                                                str4 = str8;
                                                i = i;
                                                try {
                                                    arrayList.add(new AnonymousClass11(Game.lang.get("InterveneInWar"), CFG.FONT_REGULAR_SMALL, width4, i14, height5, i18, i19, WarManager.lWars.get(key).lAggressors.get(0).iCivID, Images.intervene));
                                                    arrayList.add(new AnonymousClass12(Game.lang.get("InterveneInWar"), CFG.FONT_REGULAR_SMALL, width4, i14 + CFG.PADDING + i18, height5, i18, i19, WarManager.lWars.get(key).lDefenders.get(0).iCivID, Images.intervene));
                                                    height5 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                                                } catch (Exception e7) {
                                                    e = e7;
                                                    exc = e;
                                                    str = str3;
                                                    warName = str4;
                                                    CFG.exceptionStack(exc);
                                                    String str9 = warName;
                                                    size = arrayList.size();
                                                    posY = 0;
                                                    while (i2 < size) {
                                                        if (posY < arrayList.get(i2).getPosY() + arrayList.get(i2).getHeight() + CFG.PADDING) {
                                                            posY = arrayList.get(i2).getPosY() + arrayList.get(i2).getHeight() + CFG.PADDING;
                                                        }
                                                    }
                                                    int iMax2 = Math.max(50, posY);
                                                    int iMin3 = CFG.GAME_HEIGHT - Math.min(ImageManager.getImage(Images.warViewOver).getHeight() + (CFG.PADDING * 2), iMax2);
                                                    int i110 = i;
                                                    arrayList.add(new Empty(0, 0, i110, Math.max(posY, iMax2)));
                                                    int iMin4 = Math.min(iMax2, CFG.GAME_HEIGHT - iMin3);
                                                    civName = Game.getCiv(WarManager.lWars.get(key).lAggressors.get(0).iCivID).getCivName();
                                                    civName2 = Game.getCiv(WarManager.lWars.get(key).lDefenders.get(0).iCivID).getCivName();
                                                    str2 = civName;
                                                    initMenu(new AnonymousClass17(str9, Game.lang.get("Attackers"), Game.lang.get("Defenders"), str2, civName2, false, false, Images.title580), 0, iMin3, i110, iMin4, arrayList, false, true);
                                                }
                                            } catch (Exception e8) {
                                                e = e8;
                                                i = i;
                                                str4 = str8;
                                                exc = e;
                                                str = str3;
                                                warName = str4;
                                                CFG.exceptionStack(exc);
                                                String str10 = warName;
                                                size = arrayList.size();
                                                posY = 0;
                                                while (i2 < size) {
                                                    if (posY < arrayList.get(i2).getPosY() + arrayList.get(i2).getHeight() + CFG.PADDING) {
                                                        posY = arrayList.get(i2).getPosY() + arrayList.get(i2).getHeight() + CFG.PADDING;
                                                    }
                                                }
                                                int iMax3 = Math.max(50, posY);
                                                int iMin5 = CFG.GAME_HEIGHT - Math.min(ImageManager.getImage(Images.warViewOver).getHeight() + (CFG.PADDING * 2), iMax3);
                                                int i111 = i;
                                                arrayList.add(new Empty(0, 0, i111, Math.max(posY, iMax3)));
                                                int iMin6 = Math.min(iMax3, CFG.GAME_HEIGHT - iMin5);
                                                civName = Game.getCiv(WarManager.lWars.get(key).lAggressors.get(0).iCivID).getCivName();
                                                civName2 = Game.getCiv(WarManager.lWars.get(key).lDefenders.get(0).iCivID).getCivName();
                                                str2 = civName;
                                                initMenu(new AnonymousClass17(str10, Game.lang.get("Attackers"), Game.lang.get("Defenders"), str2, civName2, false, false, Images.title580), 0, iMin5, i111, iMin6, arrayList, false, true);
                                            }
                                        }
                                        try {
                                            if (!list.isEmpty() || !list2.isEmpty() || WarManager.lWars.get(key).lAggressors.size() > 1 || WarManager.lWars.get(key).lDefenders.size() > 1) {
                                                arrayList.add(new Text_Title_v2Center(Game.lang.get("Allies"), -1, CFG.FONT_BOLD, Images.boxTitleBORDERWIDTH, height5, (i - 3) - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
                                                int height6 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                                                int size6 = arrayList.size();
                                                int i20 = ((i - (i14 * 2)) - CFG.PADDING) / 2;
                                                int i21 = CFG.BUTTON_HEIGHT3;
                                                if (WarManager.lWars.get(key).lAggressors.get(0).iCivID != Game.player.iCivID || list.isEmpty()) {
                                                    height = height6;
                                                } else {
                                                    arrayList.add(new AnonymousClass13(Game.lang.get("CallAllies"), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i14, height6, i20, i21, Game.player.iCivID));
                                                    height = arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING + height6;
                                                }
                                                int height7 = height;
                                                int i22 = 1;
                                                while (i22 < WarManager.lWars.get(key).lAggressors.size()) {
                                                    try {
                                                        if (Game.getCiv(WarManager.lWars.get(key).lAggressors.get(i22).iCivID).getNumOfProvinces() > 0) {
                                                            String str11 = str3;
                                                            try {
                                                                str5 = str11;
                                                                try {
                                                                    arrayList.add(new AnonymousClass14(str11 + Game.getCiv(WarManager.lWars.get(key).lAggressors.get(i22).iCivID).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i14, height7, i20, i21, WarManager.lWars.get(key).lAggressors.get(i22).iCivID));
                                                                    height7 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                                                                } catch (Exception e9) {
                                                                    e2 = e9;
                                                                    exc = e2;
                                                                    warName = str4;
                                                                    str = str5;
                                                                    CFG.exceptionStack(exc);
                                                                    String str12 = warName;
                                                                    size = arrayList.size();
                                                                    posY = 0;
                                                                    while (i2 < size) {
                                                                        if (posY < arrayList.get(i2).getPosY() + arrayList.get(i2).getHeight() + CFG.PADDING) {
                                                                            posY = arrayList.get(i2).getPosY() + arrayList.get(i2).getHeight() + CFG.PADDING;
                                                                        }
                                                                    }
                                                                    int iMax4 = Math.max(50, posY);
                                                                    int iMin7 = CFG.GAME_HEIGHT - Math.min(ImageManager.getImage(Images.warViewOver).getHeight() + (CFG.PADDING * 2), iMax4);
                                                                    int i112 = i;
                                                                    arrayList.add(new Empty(0, 0, i112, Math.max(posY, iMax4)));
                                                                    int iMin8 = Math.min(iMax4, CFG.GAME_HEIGHT - iMin7);
                                                                    civName = Game.getCiv(WarManager.lWars.get(key).lAggressors.get(0).iCivID).getCivName();
                                                                    civName2 = Game.getCiv(WarManager.lWars.get(key).lDefenders.get(0).iCivID).getCivName();
                                                                    str2 = civName;
                                                                    initMenu(new AnonymousClass17(str12, Game.lang.get("Attackers"), Game.lang.get("Defenders"), str2, civName2, false, false, Images.title580), 0, iMin7, i112, iMin8, arrayList, false, true);
                                                                }
                                                            } catch (Exception e10) {
                                                                e2 = e10;
                                                                str5 = str11;
                                                                exc = e2;
                                                                warName = str4;
                                                                str = str5;
                                                                CFG.exceptionStack(exc);
                                                                String str13 = warName;
                                                                size = arrayList.size();
                                                                posY = 0;
                                                                while (i2 < size) {
                                                                    if (posY < arrayList.get(i2).getPosY() + arrayList.get(i2).getHeight() + CFG.PADDING) {
                                                                        posY = arrayList.get(i2).getPosY() + arrayList.get(i2).getHeight() + CFG.PADDING;
                                                                    }
                                                                }
                                                                int iMax5 = Math.max(50, posY);
                                                                int iMin9 = CFG.GAME_HEIGHT - Math.min(ImageManager.getImage(Images.warViewOver).getHeight() + (CFG.PADDING * 2), iMax5);
                                                                int i113 = i;
                                                                arrayList.add(new Empty(0, 0, i113, Math.max(posY, iMax5)));
                                                                int iMin10 = Math.min(iMax5, CFG.GAME_HEIGHT - iMin9);
                                                                civName = Game.getCiv(WarManager.lWars.get(key).lAggressors.get(0).iCivID).getCivName();
                                                                civName2 = Game.getCiv(WarManager.lWars.get(key).lDefenders.get(0).iCivID).getCivName();
                                                                str2 = civName;
                                                                initMenu(new AnonymousClass17(str13, Game.lang.get("Attackers"), Game.lang.get("Defenders"), str2, civName2, false, false, Images.title580), 0, iMin9, i113, iMin10, arrayList, false, true);
                                                            }
                                                        } else {
                                                            str5 = str3;
                                                        }
                                                        i22++;
                                                        height6 = height6;
                                                        str3 = str5;
                                                    } catch (Exception e11) {
                                                        e2 = e11;
                                                        str5 = str3;
                                                    }
                                                }
                                                str5 = str3;
                                                int i23 = height6;
                                                try {
                                                    if (size6 == arrayList.size()) {
                                                        arrayList.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i14, height7, i20, i21));
                                                        arrayList.get(arrayList.size() - 1).getHeight();
                                                        int i24 = CFG.PADDING;
                                                    }
                                                    int size7 = arrayList.size();
                                                    if (WarManager.lWars.get(key).lDefenders.get(0).iCivID != Game.player.iCivID || list2.isEmpty()) {
                                                        height2 = i23;
                                                    } else {
                                                        arrayList.add(new AnonymousClass15(Game.lang.get("CallAllies"), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i14 + CFG.PADDING + i20, i23, i20, i21, Game.player.iCivID));
                                                        height2 = i23 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                                                    }
                                                    int height8 = height2;
                                                    int i25 = 1;
                                                    while (i25 < WarManager.lWars.get(key).lDefenders.size()) {
                                                        if (Game.getCiv(WarManager.lWars.get(key).lDefenders.get(i25).iCivID).getNumOfProvinces() > 0) {
                                                            String str14 = str5;
                                                            try {
                                                                str = str14;
                                                                try {
                                                                    arrayList.add(new AnonymousClass16(str14 + Game.getCiv(WarManager.lWars.get(key).lDefenders.get(i25).iCivID).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i14 + CFG.PADDING + i20, height8, i20, i21, WarManager.lWars.get(key).lDefenders.get(i25).iCivID));
                                                                    height8 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                                                                } catch (Exception e12) {
                                                                    e = e12;
                                                                    exc = e;
                                                                    warName = str4;
                                                                    CFG.exceptionStack(exc);
                                                                    String str15 = warName;
                                                                    size = arrayList.size();
                                                                    posY = 0;
                                                                    while (i2 < size) {
                                                                        if (posY < arrayList.get(i2).getPosY() + arrayList.get(i2).getHeight() + CFG.PADDING) {
                                                                            posY = arrayList.get(i2).getPosY() + arrayList.get(i2).getHeight() + CFG.PADDING;
                                                                        }
                                                                    }
                                                                    int iMax6 = Math.max(50, posY);
                                                                    int iMin11 = CFG.GAME_HEIGHT - Math.min(ImageManager.getImage(Images.warViewOver).getHeight() + (CFG.PADDING * 2), iMax6);
                                                                    int i114 = i;
                                                                    arrayList.add(new Empty(0, 0, i114, Math.max(posY, iMax6)));
                                                                    int iMin12 = Math.min(iMax6, CFG.GAME_HEIGHT - iMin11);
                                                                    civName = Game.getCiv(WarManager.lWars.get(key).lAggressors.get(0).iCivID).getCivName();
                                                                    civName2 = Game.getCiv(WarManager.lWars.get(key).lDefenders.get(0).iCivID).getCivName();
                                                                    str2 = civName;
                                                                    initMenu(new AnonymousClass17(str15, Game.lang.get("Attackers"), Game.lang.get("Defenders"), str2, civName2, false, false, Images.title580), 0, iMin11, i114, iMin12, arrayList, false, true);
                                                                }
                                                            } catch (Exception e13) {
                                                                e = e13;
                                                                str = str14;
                                                                exc = e;
                                                                warName = str4;
                                                                CFG.exceptionStack(exc);
                                                                String str16 = warName;
                                                                size = arrayList.size();
                                                                posY = 0;
                                                                while (i2 < size) {
                                                                    if (posY < arrayList.get(i2).getPosY() + arrayList.get(i2).getHeight() + CFG.PADDING) {
                                                                        posY = arrayList.get(i2).getPosY() + arrayList.get(i2).getHeight() + CFG.PADDING;
                                                                    }
                                                                }
                                                                int iMax7 = Math.max(50, posY);
                                                                int iMin13 = CFG.GAME_HEIGHT - Math.min(ImageManager.getImage(Images.warViewOver).getHeight() + (CFG.PADDING * 2), iMax7);
                                                                int i115 = i;
                                                                arrayList.add(new Empty(0, 0, i115, Math.max(posY, iMax7)));
                                                                int iMin14 = Math.min(iMax7, CFG.GAME_HEIGHT - iMin13);
                                                                civName = Game.getCiv(WarManager.lWars.get(key).lAggressors.get(0).iCivID).getCivName();
                                                                civName2 = Game.getCiv(WarManager.lWars.get(key).lDefenders.get(0).iCivID).getCivName();
                                                                str2 = civName;
                                                                initMenu(new AnonymousClass17(str16, Game.lang.get("Attackers"), Game.lang.get("Defenders"), str2, civName2, false, false, Images.title580), 0, iMin13, i115, iMin14, arrayList, false, true);
                                                            }
                                                        } else {
                                                            str = str5;
                                                        }
                                                        i25++;
                                                        str5 = str;
                                                        i14 = i14;
                                                    }
                                                    int i26 = i14;
                                                    str = str5;
                                                    if (size7 == arrayList.size()) {
                                                        arrayList.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i26 + CFG.PADDING + i20, height8, i20, i21));
                                                        arrayList.get(arrayList.size() - 1).getHeight();
                                                        int i27 = CFG.PADDING;
                                                    }
                                                } catch (Exception e14) {
                                                    e = e14;
                                                    str = str5;
                                                }
                                            } else {
                                                str = str3;
                                            }
                                            int size8 = arrayList.size();
                                            int posY2 = 0;
                                            for (int i28 = 0; i28 < size8; i28++) {
                                                if (posY2 < arrayList.get(i28).getPosY() + arrayList.get(i28).getHeight() + CFG.PADDING) {
                                                    posY2 = arrayList.get(i28).getPosY() + arrayList.get(i28).getHeight() + CFG.PADDING;
                                                }
                                            }
                                            warName = str4;
                                        } catch (Exception e15) {
                                            e = e15;
                                            str = str3;
                                            exc = e;
                                            warName = str4;
                                            CFG.exceptionStack(exc);
                                            String str17 = warName;
                                            size = arrayList.size();
                                            posY = 0;
                                            while (i2 < size) {
                                                if (posY < arrayList.get(i2).getPosY() + arrayList.get(i2).getHeight() + CFG.PADDING) {
                                                    posY = arrayList.get(i2).getPosY() + arrayList.get(i2).getHeight() + CFG.PADDING;
                                                }
                                            }
                                            int iMax8 = Math.max(50, posY);
                                            int iMin15 = CFG.GAME_HEIGHT - Math.min(ImageManager.getImage(Images.warViewOver).getHeight() + (CFG.PADDING * 2), iMax8);
                                            int i116 = i;
                                            arrayList.add(new Empty(0, 0, i116, Math.max(posY, iMax8)));
                                            int iMin16 = Math.min(iMax8, CFG.GAME_HEIGHT - iMin15);
                                            civName = Game.getCiv(WarManager.lWars.get(key).lAggressors.get(0).iCivID).getCivName();
                                            civName2 = Game.getCiv(WarManager.lWars.get(key).lDefenders.get(0).iCivID).getCivName();
                                            str2 = civName;
                                            initMenu(new AnonymousClass17(str17, Game.lang.get("Attackers"), Game.lang.get("Defenders"), str2, civName2, false, false, Images.title580), 0, iMin15, i116, iMin16, arrayList, false, true);
                                        }
                                    } catch (Exception e16) {
                                        exc = e16;
                                        i = i;
                                        warName = str8;
                                        str = str3;
                                    }
                                } catch (Exception e17) {
                                    e = e17;
                                    i = i;
                                    str4 = str8;
                                }
                            } catch (Exception e18) {
                                e = e18;
                                i = i;
                                str = "";
                                exc = e;
                                warName = str6;
                                CFG.exceptionStack(exc);
                                String str18 = warName;
                                size = arrayList.size();
                                posY = 0;
                                while (i2 < size) {
                                    if (posY < arrayList.get(i2).getPosY() + arrayList.get(i2).getHeight() + CFG.PADDING) {
                                        posY = arrayList.get(i2).getPosY() + arrayList.get(i2).getHeight() + CFG.PADDING;
                                    }
                                }
                                int iMax9 = Math.max(50, posY);
                                int iMin17 = CFG.GAME_HEIGHT - Math.min(ImageManager.getImage(Images.warViewOver).getHeight() + (CFG.PADDING * 2), iMax9);
                                int i117 = i;
                                arrayList.add(new Empty(0, 0, i117, Math.max(posY, iMax9)));
                                int iMin18 = Math.min(iMax9, CFG.GAME_HEIGHT - iMin17);
                                civName = Game.getCiv(WarManager.lWars.get(key).lAggressors.get(0).iCivID).getCivName();
                                civName2 = Game.getCiv(WarManager.lWars.get(key).lDefenders.get(0).iCivID).getCivName();
                                str2 = civName;
                                initMenu(new AnonymousClass17(str18, Game.lang.get("Attackers"), Game.lang.get("Defenders"), str2, civName2, false, false, Images.title580), 0, iMin17, i117, iMin18, arrayList, false, true);
                            }
                        } catch (Exception e19) {
                            e = e19;
                        }
                    } catch (Exception e20) {
                        e = e20;
                        arrayList = arrayList2;
                        str = "";
                        exc = e;
                        warName = str6;
                        CFG.exceptionStack(exc);
                        String str19 = warName;
                        size = arrayList.size();
                        posY = 0;
                        while (i2 < size) {
                            if (posY < arrayList.get(i2).getPosY() + arrayList.get(i2).getHeight() + CFG.PADDING) {
                                posY = arrayList.get(i2).getPosY() + arrayList.get(i2).getHeight() + CFG.PADDING;
                            }
                        }
                        int iMax10 = Math.max(50, posY);
                        int iMin19 = CFG.GAME_HEIGHT - Math.min(ImageManager.getImage(Images.warViewOver).getHeight() + (CFG.PADDING * 2), iMax10);
                        int i118 = i;
                        arrayList.add(new Empty(0, 0, i118, Math.max(posY, iMax10)));
                        int iMin110 = Math.min(iMax10, CFG.GAME_HEIGHT - iMin19);
                        civName = Game.getCiv(WarManager.lWars.get(key).lAggressors.get(0).iCivID).getCivName();
                        civName2 = Game.getCiv(WarManager.lWars.get(key).lDefenders.get(0).iCivID).getCivName();
                        str2 = civName;
                        initMenu(new AnonymousClass17(str19, Game.lang.get("Attackers"), Game.lang.get("Defenders"), str2, civName2, false, false, Images.title580), 0, iMin19, i118, iMin110, arrayList, false, true);
                    }
                } catch (Exception e21) {
                    e = e21;
                    i = width;
                }
            } else {
                i = width;
                arrayList = arrayList2;
                str = "";
            }
        } catch (Exception e22) {
            i = width;
            arrayList = arrayList2;
            str = "";
            exc = e22;
        }
        String str110 = warName;
        size = arrayList.size();
        posY = 0;
        while (i2 < size) {
            if (posY < arrayList.get(i2).getPosY() + arrayList.get(i2).getHeight() + CFG.PADDING) {
                posY = arrayList.get(i2).getPosY() + arrayList.get(i2).getHeight() + CFG.PADDING;
            }
        }
        int iMax11 = Math.max(50, posY);
        int iMin111 = CFG.GAME_HEIGHT - Math.min(ImageManager.getImage(Images.warViewOver).getHeight() + (CFG.PADDING * 2), iMax11);
        int i119 = i;
        arrayList.add(new Empty(0, 0, i119, Math.max(posY, iMax11)));
        int iMin112 = Math.min(iMax11, CFG.GAME_HEIGHT - iMin111);
        try {
            civName = Game.getCiv(WarManager.lWars.get(key).lAggressors.get(0).iCivID).getCivName();
            civName2 = Game.getCiv(WarManager.lWars.get(key).lDefenders.get(0).iCivID).getCivName();
            str2 = civName;
        } catch (Exception unused4) {
            civName = str;
        }
        initMenu(new AnonymousClass17(str110, Game.lang.get("Attackers"), Game.lang.get("Defenders"), str2, civName2, false, false, Images.title580), 0, iMin111, i119, iMin112, arrayList, false, true);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3;
        int i4;
        DiplomacyManager.updateInAnimation();
        if (lTime + 60 >= CFG.currentTimeMillis) {
            i3 = (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - lTime) / 60.0f)));
            i4 = ((int) ((CFG.BUTTON_HEIGHT / 2.0f) - ((CFG.BUTTON_HEIGHT / 2) * ((CFG.currentTimeMillis - lTime) / 60.0f)))) + i2;
        } else {
            i3 = i;
            i4 = i2;
        }
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - getTitle().getHeight()) + i4, getWidth() + Images.boxTitleBORDERWIDTH, getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i4, Images.boxTitleBORDERWIDTH + getWidth(), CFG.PADDING + getHeight(), false, Images.insideTop580, Images.insideBot580);
        ImageManager.getImage(Images.warViewOver).draw2(spriteBatch, getPosX() + i3, getPosY() + i4, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.warViewOver).getHeight()));
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.25f));
        sparksAnimation.draw2(spriteBatch, getPosX() + i3, ((getPosY() + getHeight()) - Images.sparkHeight) + i4, getWidth(), Images.sparkHeight);
        spriteBatch.setColor(Color.WHITE);
        super.draw(spriteBatch, i3, i4, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
    }
}
