package aoc.kingdoms.lukasz.menusInGame.Court;

import androidx.arch.core.ht.qIuEvFbUtcea;
import androidx.core.internal.oiV.CoLRpi;
import androidx.lifecycle.livedata.core.jzw.jkEBdieJhbh;
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
import aoc.kingdoms.lukasz.jakowski.Steam.SteamAchievementsManager;
import aoc.kingdoms.lukasz.map.RulersManager;
import aoc.kingdoms.lukasz.map.advisors.AdvisorManager;
import aoc.kingdoms.lukasz.map.allianceHRE.JgPF.HTGgowNjn;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRanking;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.map.technology.Bhs.fiRhHJntP;
import aoc.kingdoms.lukasz.map.terrain.exjB.uiwPYaNhJS;
import aoc.kingdoms.lukasz.menu.ClickAnimation;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.FQy.TGqtTWl;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonAdvisor;
import aoc.kingdoms.lukasz.menu_element.button.ButtonAdvisorGeneral;
import aoc.kingdoms.lukasz.menu_element.button.ButtonAdvisor_No;
import aoc.kingdoms.lukasz.menu_element.button.ButtonCurrentSituation;
import aoc.kingdoms.lukasz.menu_element.button.ButtonIcon;
import aoc.kingdoms.lukasz.menu_element.button.ButtonReligion2;
import aoc.kingdoms.lukasz.menu_element.button.ButtonRuler2;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Right;
import aoc.kingdoms.lukasz.menu_element.button.Button_OutlinerEspionageMission;
import aoc.kingdoms.lukasz.menu_element.button.Button_OutlinerEspionageMissionReport;
import aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical;
import aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical_Data_Type;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Empty;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Flag;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagCiv_Title;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Center;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Clear;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Value;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Value_Levels;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Advisor;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Advisor_Skill;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_SpecialCiv;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_SpecialEmpty;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_Special;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Ruler;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_RulerTitle;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2Center;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2_TextLR;
import aoc.kingdoms.lukasz.menus.Dialog;
import aoc.kingdoms.lukasz.menusEditor.RJR.ATsAGKCnv;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ;
import aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldCivs;
import aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldSearch;
import aoc.kingdoms.lukasz.menusInGame.DrawOver.SQ.XjthpFh;
import aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods;
import aoc.kingdoms.lukasz.menusInGame.Graph.InGame_GraphPopulation;
import aoc.kingdoms.lukasz.menusInGame.InGame_AdvisorRecruit;
import aoc.kingdoms.lukasz.menusInGame.InGame_CivBonuses;
import aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia;
import aoc.kingdoms.lukasz.menusInGame.InGame_HideUI;
import aoc.kingdoms.lukasz.menusInGame.InGame_ReleaseAVassal;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.menusInGame.Province.iOYW.ALZmnpZHj;
import aoc.kingdoms.lukasz.menusScenarioEditor.YGiX.gpVDKipRURuzw;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.assets.loaders.Wkvw.PZBvyl;
import com.badlogic.gdx.assets.loaders.Wkvw.nEtnPpUF;
import com.badlogic.gdx.backends.android.Zrdz.PxHJ;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g3d.model.ia.uNBYrZVGzy;
import com.badlogic.gdx.net.otUh.aBEBOpwLZcQFCZ;
import com.badlogic.gdx.utils.compression.spWT.QefTqRjwAJmEDy;
import com.google.android.gms.common.internal.constants.oyIG.kfGnwGN;
import com.google.android.gms.internal.common.oss.ClXgFvsSKQc;
import com.google.android.gms.internal.tasks.Vhe.SwmJtrccN;
import com.pairip.licensecheck.CohD.CaiJWNfqszJNZ;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Court extends Menu {
    public static final int ANIMATION_TIME = 60;
    public static int FIRE_ID = 0;
    public static boolean UPDATE_INCOME_MANPOWER_FROM_VASSAL = false;
    public static int iActiveCivID = 0;
    public static boolean inCourt = true;
    public static boolean inSearchProvinces;
    public static long lTime;
    public static long lTime2;
    public static int modeID;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonRuler2 {
        AnonymousClass1(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(InGame_Court.iActiveCivID).getCapitalProvinceID() >= 0) {
                Game.setActiveProvinceID(Game.getCiv(InGame_Court.iActiveCivID).getCapitalProvinceID());
                ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
                Game.menuManager.rebuildInGame_Civ();
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$10, reason: invalid class name */
    class AnonymousClass10 extends TextIcon2 {
        AnonymousClass10(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("MaximumManpower") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Game_Calendar.IMG_MANPOWER_UP, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$100, reason: invalid class name */
    class AnonymousClass100 extends ButtonCurrentSituation {
        AnonymousClass100(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Court.inCourt = false;
            InGame_Court.inSearchProvinces = false;
            InGame_CourtOptions.disableAllViews();
            Game.menuManager.rebuildInGame_CourtStatistics();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Statistics"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.stats, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.getClickSound_CivOptions();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$101, reason: invalid class name */
    class AnonymousClass101 extends ButtonCurrentSituation {
        AnonymousClass101(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_GraphPopulation.activeModeID = 0;
            Game.menuManager.rebuildInGame_GraphPopulation();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Graph"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.stats, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.getClickSound_CivOptions();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$102, reason: invalid class name */
    class AnonymousClass102 extends ButtonCurrentSituation {
        AnonymousClass102(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivBonuses.iCivID = Game.player.iCivID;
            InGame_Civ.actionCivBonuses();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("CivilizationBonuses"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(CivilizationRanking.getCivilizationRank_IMG(Game.player.iCivID), CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.getClickSound_CivOptions();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$103, reason: invalid class name */
    class AnonymousClass103 extends ButtonCurrentSituation {
        AnonymousClass103(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_Console()) {
                Game.menuManager.setVisibleInGame_Console(false);
                return;
            }
            InGame_CourtOptions2.disableAllViews();
            Game.menuManager.rebuildInGame_Console();
            Game.menuManager.setVisibleInGame_Court(false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Console"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.console, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.getClickSound_CivOptions();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$104, reason: invalid class name */
    class AnonymousClass104 extends ButtonCurrentSituation {
        AnonymousClass104(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_HideUI.addDate = false;
            Game.menuManager.setViewIDWithoutAnimation(View.IN_GAME_HIDE_UI);
            Game.menuManager.addToastGold(Game.lang.get("Close") + " - Click the TOP LEFT", Images.x);
            Game.menuManager.addToastGold(Game.lang.get("Close") + " - Click the TOP LEFT", Images.x);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Hide") + HTGgowNjn.WnBkFSsJc, CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.x, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.getClickSound_CivOptions();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$105, reason: invalid class name */
    class AnonymousClass105 extends ButtonCurrentSituation {
        AnonymousClass105(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_HideUI.addDate = true;
            Game.menuManager.setViewIDWithoutAnimation(View.IN_GAME_HIDE_UI);
            Game.menuManager.addToastGold(Game.lang.get("Close") + " - Click the TOP LEFT", Images.x);
            Game.menuManager.addToastGold(Game.lang.get("Close") + " - Click the TOP LEFT", Images.x);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Hide") + ": UI - " + Game.lang.get("Date"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.x, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.getClickSound_CivOptions();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$106, reason: invalid class name */
    class AnonymousClass106 extends ButtonCurrentSituation {
        AnonymousClass106(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Court.inCourt = false;
            InGame_Court.inSearchProvinces = false;
            InGame_CourtOptions.disableAllViews();
            Game.menuManager.rebuildInGame_CourtWorld_Wars();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(Game.map.lMaps.get(Game.map.getActiveMapID()).mapData.Name) + ": ", CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.lang.get("CurrentWars"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.war, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.getClickSound_CivOptions();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$107, reason: invalid class name */
    class AnonymousClass107 extends ButtonCurrentSituation {
        AnonymousClass107(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Court.inCourt = false;
            InGame_Court.inSearchProvinces = false;
            InGame_CourtOptions.disableAllViews();
            Game.menuManager.rebuildInGame_CourtWorld_Alliances();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(Game.map.lMaps.get(Game.map.getActiveMapID()).mapData.Name) + ": ", CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.lang.get("Alliances"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.alliance, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.getClickSound_CivOptions();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$108, reason: invalid class name */
    class AnonymousClass108 extends ButtonCurrentSituation {
        AnonymousClass108(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Court.inCourt = false;
            InGame_Court.inSearchProvinces = false;
            InGame_CourtOptions.disableAllViews();
            Game.menuManager.rebuildInGame_CourtWorld_Vassals();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(Game.map.lMaps.get(Game.map.getActiveMapID()).mapData.Name) + ": ", CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.lang.get(Game_Ages.getVassals()), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.vassal, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.getClickSound_CivOptions();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$109, reason: invalid class name */
    class AnonymousClass109 extends ButtonCurrentSituation {
        AnonymousClass109(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Court.inCourt = false;
            InGame_Court.inSearchProvinces = false;
            InGame_CourtOptions.disableAllViews();
            Game.menuManager.rebuildInGame_CourtWorld_Defensive();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(Game.map.lMaps.get(Game.map.getActiveMapID()).mapData.Name) + ": ", CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.lang.get("DefensivePacts"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.defensivePact, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.getClickSound_CivOptions();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$11, reason: invalid class name */
    class AnonymousClass11 extends TextIcon2 {
        AnonymousClass11(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("RecruitmentTime") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Game_Calendar.IMG_MANPOWER_TIME, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$110, reason: invalid class name */
    class AnonymousClass110 extends ButtonCurrentSituation {
        AnonymousClass110(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Court.inCourt = false;
            InGame_Court.inSearchProvinces = false;
            InGame_CourtOptions.disableAllViews();
            Game.menuManager.rebuildInGame_CourtWorld_NonAggression();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(Game.map.lMaps.get(Game.map.getActiveMapID()).mapData.Name) + ": ", CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.lang.get("NonAggressionPacts"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.nonAggression, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.getClickSound_CivOptions();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$111, reason: invalid class name */
    class AnonymousClass111 extends ButtonCurrentSituation {
        AnonymousClass111(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Court.inCourt = false;
            InGame_Court.inSearchProvinces = false;
            InGame_CourtOptions.disableAllViews();
            Game.menuManager.rebuildInGame_CourtWorld_Truces();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(Game.map.lMaps.get(Game.map.getActiveMapID()).mapData.Name) + ": ", CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.lang.get("Truces"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.truce, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.getClickSound_CivOptions();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$12, reason: invalid class name */
    class AnonymousClass12 extends TextIcon2 {
        AnonymousClass12(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("ResearchPerMonth") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$13, reason: invalid class name */
    class AnonymousClass13 extends TextIcon2 {
        AnonymousClass13(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Devastation") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.devastation, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$14, reason: invalid class name */
    class AnonymousClass14 extends TextIcon2 {
        AnonymousClass14(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Research") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$15, reason: invalid class name */
    class AnonymousClass15 extends TextIcon2 {
        AnonymousClass15(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get(uiwPYaNhJS.HCs) + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$16, reason: invalid class name */
    class AnonymousClass16 extends TextIcon2 {
        AnonymousClass16(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("ConstructionCost") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.construction, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$17, reason: invalid class name */
    class AnonymousClass17 extends TextIcon2 {
        AnonymousClass17(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("AdministrationBuildingsCost") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.construction, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$18, reason: invalid class name */
    class AnonymousClass18 extends TextIcon2 {
        AnonymousClass18(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("EconomyBuildingsCost") + HjHDSSkYG.usyyl, CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.construction, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$19, reason: invalid class name */
    class AnonymousClass19 extends TextIcon2 {
        AnonymousClass19(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("MilitaryBuildingsCost") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.construction, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$2, reason: invalid class name */
    class AnonymousClass2 extends Text_StaticBG_RulerTitle {
        AnonymousClass2(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Keyboard.keyboardMode && Keyboard.keyboardActionType == Keyboard.KeyboardActionType.INGAME_RULER_NAME) {
                Game.keyboard.hideKeyboard();
            } else {
                Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.INGAME_RULER_NAME, Game.getCiv(InGame_Court.iActiveCivID).ruler.Name);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = ButtonRuler2.getHoverRuler(InGame_Court.iActiveCivID, false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_RulerTitle, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            try {
                if (Keyboard.keyboardActionType == Keyboard.KeyboardActionType.INGAME_RULER_NAME) {
                    if (!getText().equals(Game.getCiv(InGame_Court.iActiveCivID).ruler.Name)) {
                        setText(Game.getCiv(InGame_Court.iActiveCivID).ruler.Name);
                    }
                    return Game.getCiv(InGame_Court.iActiveCivID).ruler.Name + (Keyboard.keyboardActionType == Keyboard.KeyboardActionType.INGAME_RULER_NAME ? Keyboard.getKeyboardVerticalLine() : "");
                }
            } catch (Exception unused) {
            }
            return super.getTextToDraw();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$20, reason: invalid class name */
    class AnonymousClass20 extends TextIcon2 {
        AnonymousClass20(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("InvestInEconomyCost") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Game_Calendar.IMG_ECONOMY_UP, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$21, reason: invalid class name */
    class AnonymousClass21 extends TextIcon2 {
        AnonymousClass21(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("IncreaseTaxEfficiencyCost") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.taxUp, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$22, reason: invalid class name */
    class AnonymousClass22 extends TextIcon2 {
        AnonymousClass22(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("IncreaseGrowthRateCost") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.populationUp, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$23, reason: invalid class name */
    class AnonymousClass23 extends TextIcon2 {
        AnonymousClass23(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("DevelopInfrastructureCost") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.infrastructureUp, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$24, reason: invalid class name */
    class AnonymousClass24 extends TextIcon2 {
        AnonymousClass24(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("IncreaseManpowerCost") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Game_Calendar.IMG_MANPOWER_UP, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$25, reason: invalid class name */
    class AnonymousClass25 extends TextIcon2 {
        AnonymousClass25(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("ImproveRelationsModifier") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.diplomacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$26, reason: invalid class name */
    class AnonymousClass26 extends TextIcon2 {
        AnonymousClass26(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Interest") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.loan, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$27, reason: invalid class name */
    class AnonymousClass27 extends TextIcon2 {
        AnonymousClass27(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("MonthlyLegacy") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.legacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$28, reason: invalid class name */
    class AnonymousClass28 extends TextIcon2 {
        AnonymousClass28(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("UnitsAttack") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.attack, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$29, reason: invalid class name */
    class AnonymousClass29 extends TextIcon2 {
        AnonymousClass29(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("UnitsDefense") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.defense, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$3, reason: invalid class name */
    class AnonymousClass3 extends Text_StaticBG_Ruler {
        AnonymousClass3(String str, String str2, int i, int i2, int i3, int i4) {
            super(str, str2, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Ruler, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center(Game.getCiv(InGame_Court.iActiveCivID).ruler.Name, CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Born") + ": ", "" + Game.getCiv(InGame_Court.iActiveCivID).ruler.BornDay + " " + Game_Calendar.getMonthName(Game.getCiv(InGame_Court.iActiveCivID).ruler.BornMonth) + " " + Game.getCiv(InGame_Court.iActiveCivID).ruler.BornYear, Images.time, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(uNBYrZVGzy.VzrNtoxALkBV, Math.min(99, Game_Calendar.currentYear - Game.getCiv(InGame_Court.iActiveCivID).ruler.BornYear)), "", Images.time, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$30, reason: invalid class name */
    class AnonymousClass30 extends TextIcon2 {
        AnonymousClass30(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("GeneralsAttack") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.attack, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$31, reason: invalid class name */
    class AnonymousClass31 extends TextIcon2 {
        AnonymousClass31(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("GeneralsDefense") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.defense, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$32, reason: invalid class name */
    class AnonymousClass32 extends Text_Title_Diplomacy {
        AnonymousClass32(String str, int i, int i2, int i3, int i4, boolean z) {
            super(str, i, i2, i3, i4, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Court.modeID = 0;
            InGame_Court.iActiveCivID = Game.player.iCivID;
            Game.menuManager.rebuildInGame_Court();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
            Game.setRegroupArmyMode(false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.council, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return Game.soundsManager.getTab();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$33, reason: invalid class name */
    class AnonymousClass33 extends Text_Title_Diplomacy {
        AnonymousClass33(String str, int i, int i2, int i3, int i4, boolean z) {
            super(str, i, i2, i3, i4, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Court.modeID = 1;
            InGame_Court.iActiveCivID = Game.player.iCivID;
            Game.menuManager.rebuildInGame_Court();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
            Game.setRegroupArmyMode(false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.vassal, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return Game.soundsManager.getTab();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$34, reason: invalid class name */
    class AnonymousClass34 extends Text_Title_Diplomacy {
        AnonymousClass34(String str, int i, int i2, int i3, int i4, boolean z) {
            super(str, i, i2, i3, i4, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Court.modeID = 2;
            InGame_Court.iActiveCivID = Game.player.iCivID;
            Game.menuManager.rebuildInGame_Court();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
            Game.setRegroupArmyMode(false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.world, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return Game.soundsManager.getTab();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$35, reason: invalid class name */
    class AnonymousClass35 extends ButtonIcon {
        AnonymousClass35(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Court.inCourt = false;
            InGame_Court.inSearchProvinces = false;
            InGame_CourtOptions.disableAllViews();
            Game.menuManager.rebuildInGame_CourtMissions();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Events"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.missions, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.getClickSound_CivOptions();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$36, reason: invalid class name */
    class AnonymousClass36 extends ButtonIcon {
        AnonymousClass36(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 15) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                InGame_Encyclopedia.sSearch = "";
                Game.menuManager.rebuildInGame_Encyclopedia();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Encyclopedia"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.encyclopedia, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.getClickSound_CivOptions();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$37, reason: invalid class name */
    class AnonymousClass37 extends ButtonIcon {
        AnonymousClass37(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Court.inCourt = false;
            InGame_Court.inSearchProvinces = false;
            InGame_CourtOptions.disableAllViews();
            Game.menuManager.rebuildInGame_CourtStatistics();
            Game.menuManager.setVisibleInGame_Court(true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Statistics"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.development, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(InGame_Court.iActiveCivID).getCivName(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Flag(InGame_Court.iActiveCivID, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.getClickSound_CivOptions();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$38, reason: invalid class name */
    class AnonymousClass38 extends ButtonIcon {
        AnonymousClass38(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CourtOptions2.actionProvinces(InGame_CourtOptions2.idProvinces);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Provinces"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(InGame_Court.iActiveCivID).getCivName(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Flag(InGame_Court.iActiveCivID, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.getClickSound_CivOptions();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$39, reason: invalid class name */
    class AnonymousClass39 extends ButtonIcon {
        AnonymousClass39(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_Escape()) {
                Game.menuManager.setVisibleInGame_Escape(false);
            } else {
                InGame_CourtOptions2.disableAllViews();
                Game.menuManager.setVisibleInGame_Escape(true);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Options"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.settings, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.getClickSound_CivOptions();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonReligion2 {
        AnonymousClass4(int i, int i2, int i3, int i4, int i5) {
            super(i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Court_Government.modeID = 0;
            InGame_Court.iActiveCivID = Game.player.iCivID;
            InGame_CourtOptions.iActiveID = InGame_CourtOptions.iGovernmentID;
            InGame_CourtOptions2.disableAllViews();
            Game.menuManager.rebuildInGame_Government();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonReligion2, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = Game.religionManager.getHoverReligion(this.religionID, InGame_Court.iActiveCivID);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$40, reason: invalid class name */
    class AnonymousClass40 extends Button_OutlinerEspionageMissionReport {
        AnonymousClass40(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z) {
            super(str, str2, i, i2, i3, i4, i5, i6, i7, i8, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CourtOptions2.disableAllViews();
            Game.menuManager.rebuildInGame_EspionageReportCourt(getCurrent(), Game.player.playerData.espionage.espionageMission_ReportEndTurn(getCurrent()));
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$41, reason: invalid class name */
    class AnonymousClass41 extends Button_OutlinerEspionageMission {
        AnonymousClass41(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z) {
            super(str, str2, i, i2, i3, i4, i5, i6, i7, i8, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$42, reason: invalid class name */
    class AnonymousClass42 extends ButtonAdvisor_No {
        AnonymousClass42(int i, int i2) {
            super(i, i2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court.iActiveCivID == Game.player.iCivID) {
                if (Game.menuManager.getVisibleInGame_AdvisorRecruit() && InGame_AdvisorRecruit.iActiveAdvisorTypeID == 0) {
                    Game.menuManager.setVisibleInGame_AdvisorRecruit(false);
                } else {
                    InGame_AdvisorRecruit.iActiveAdvisorTypeID = 0;
                    Game.menuManager.rebuildInGame_AdvisorRecruit();
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$43, reason: invalid class name */
    class AnonymousClass43 extends Text_StaticBG {
        AnonymousClass43(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court.iActiveCivID == Game.player.iCivID) {
                if (Game.menuManager.getVisibleInGame_AdvisorRecruit() && InGame_AdvisorRecruit.iActiveAdvisorTypeID == 0) {
                    Game.menuManager.setVisibleInGame_AdvisorRecruit(false);
                } else {
                    InGame_AdvisorRecruit.iActiveAdvisorTypeID = 0;
                    Game.menuManager.rebuildInGame_AdvisorRecruit();
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            if (InGame_Court.iActiveCivID != Game.player.iCivID) {
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("NoAdvisor"), CFG.FONT_BOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(InGame_Court.iActiveCivID, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                this.menuElementHover = new MenuElement_Hover(arrayList);
                return;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("NoAdvisor"), CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(InGame_Court.iActiveCivID, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Empty());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ClickToHireAnAdvisor"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$44, reason: invalid class name */
    class AnonymousClass44 extends ButtonAdvisor {
        AnonymousClass44(int i, int i2, String str, int i3, int i4, int i5, int i6, String str2) {
            super(i, i2, str, i3, i4, i5, i6, str2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court.iActiveCivID == Game.player.iCivID) {
                if (Game.menuManager.getVisibleInGame_AdvisorRecruit() && InGame_AdvisorRecruit.iActiveAdvisorTypeID == 0) {
                    Game.menuManager.setVisibleInGame_AdvisorRecruit(false);
                } else {
                    InGame_AdvisorRecruit.iActiveAdvisorTypeID = 0;
                    Game.menuManager.rebuildInGame_AdvisorRecruit();
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            if (InGame_Court.iActiveCivID == Game.player.iCivID) {
                InGame_Court.FIRE_ID = 0;
                Dialog.setDialogType(Dialog.DialogType.FIRE_ADVISOR);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$45, reason: invalid class name */
    class AnonymousClass45 extends Text_StaticBG_Advisor_Skill {
        AnonymousClass45(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court.iActiveCivID != Game.player.iCivID || Game.getCiv(InGame_Court.iActiveCivID).advisorAdministration.iLevel >= AdvisorManager.getAdvisorMaxLevel(InGame_Court.iActiveCivID)) {
                return;
            }
            if (Game.getCiv(InGame_Court.iActiveCivID).fGold < AdvisorManager.getAdvisorPromoteCost(InGame_Court.iActiveCivID, Game.getCiv(InGame_Court.iActiveCivID).advisorAdministration.iLevel)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(AdvisorManager.getAdvisorPromoteCost(InGame_Court.iActiveCivID, Game.getCiv(InGame_Court.iActiveCivID).advisorAdministration.iLevel), 100), Images.gold);
            } else if (Game.getCiv(InGame_Court.iActiveCivID).fLegacy < AdvisorManager.getAdvisorPromoteCostLegacy(InGame_Court.iActiveCivID, Game.getCiv(InGame_Court.iActiveCivID).advisorAdministration.iLevel)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + ": ", CFG.getPrecision2(AdvisorManager.getAdvisorPromoteCostLegacy(InGame_Court.iActiveCivID, Game.getCiv(InGame_Court.iActiveCivID).advisorAdministration.iLevel), 100), Images.legacy);
            }
            if (AdvisorManager.promoteAdvisor(Game.player.iCivID, 0, false)) {
                InGame_Info.iCivID = Game.player.iCivID;
                InGame_Info.iCivID2 = 0;
                Game.menuManager.rebuildInGame_Info(Game.getCiv(InGame_Court.iActiveCivID).advisorAdministration.sName, Game.lang.get("AdvisorSkills") + ": " + Game.getCiv(InGame_Court.iActiveCivID).advisorAdministration.iLevel + " / " + AdvisorManager.getAdvisorMaxLevel(InGame_Court.iActiveCivID));
                InGame_Info.imgID = Images.infoCrown;
                SteamAchievementsManager.unlockAchievement(SteamAchievementsManager.PROMOTE_ADVISOR);
            }
            Game.menuManager.rebuildInGame_CourtSavePos();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Advisor_Skill, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center(Game.getCiv(InGame_Court.iActiveCivID).advisorAdministration.sName, CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("AdvisorSkillLevel") + ": ", "" + Game.getCiv(InGame_Court.iActiveCivID).advisorAdministration.iLevel + " / " + AdvisorManager.getAdvisorMaxLevel(InGame_Court.iActiveCivID), Images.skill, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (InGame_Court.iActiveCivID == Game.player.iCivID && Game.getCiv(InGame_Court.iActiveCivID).advisorAdministration.iLevel < AdvisorManager.getAdvisorMaxLevel(InGame_Court.iActiveCivID)) {
                arrayList2.add(new MenuElement_HoverElement_Type_Empty());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("PromoteAdvisor"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.skill, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AdvisorSkills") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(GameValues.advisors.ADVISOR_BONUSES_UPGRADE_PER_LEVEL * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Cost") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(AdvisorManager.getAdvisorPromoteCost(InGame_Court.iActiveCivID, Game.getCiv(InGame_Court.iActiveCivID).advisorAdministration.iLevel), 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("LegacyPoints") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(AdvisorManager.getAdvisorPromoteCostLegacy(InGame_Court.iActiveCivID, Game.getCiv(InGame_Court.iActiveCivID).advisorAdministration.iLevel), 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.legacy, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$46, reason: invalid class name */
    class AnonymousClass46 extends Text_StaticBG_Advisor {
        AnonymousClass46(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Keyboard.keyboardMode && Keyboard.keyboardActionType == Keyboard.KeyboardActionType.INGAME_ADVISOR_ADMINISTRATIVE_NAME) {
                Game.keyboard.hideKeyboard();
            } else {
                Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.INGAME_ADVISOR_ADMINISTRATIVE_NAME, Game.getCiv(InGame_Court.iActiveCivID).advisorAdministration.sName);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Advisor, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center(Game.getCiv(InGame_Court.iActiveCivID).advisorAdministration.sName, CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("AdvisorSkillLevel") + ": ", "" + Game.getCiv(InGame_Court.iActiveCivID).advisorAdministration.iLevel + fiRhHJntP.jCbbSOIHFa + AdvisorManager.getAdvisorMaxLevel(InGame_Court.iActiveCivID), Images.skill, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Advisor, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            try {
                if (Keyboard.keyboardActionType == Keyboard.KeyboardActionType.INGAME_ADVISOR_ADMINISTRATIVE_NAME) {
                    if (!getText().equals(Game.getCiv(InGame_Court.iActiveCivID).advisorAdministration.sName)) {
                        setText(Game.getCiv(InGame_Court.iActiveCivID).advisorAdministration.sName);
                    }
                    return Game.getCiv(InGame_Court.iActiveCivID).advisorAdministration.sName + (Keyboard.keyboardActionType == Keyboard.KeyboardActionType.INGAME_ADVISOR_ADMINISTRATIVE_NAME ? Keyboard.getKeyboardVerticalLine() : "");
                }
            } catch (Exception unused) {
            }
            return super.getTextToDraw();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$47, reason: invalid class name */
    class AnonymousClass47 extends ButtonAdvisor_No {
        AnonymousClass47(int i, int i2) {
            super(i, i2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court.iActiveCivID == Game.player.iCivID) {
                if (Game.menuManager.getVisibleInGame_AdvisorRecruit() && InGame_AdvisorRecruit.iActiveAdvisorTypeID == 1) {
                    Game.menuManager.setVisibleInGame_AdvisorRecruit(false);
                } else {
                    InGame_AdvisorRecruit.iActiveAdvisorTypeID = 1;
                    Game.menuManager.rebuildInGame_AdvisorRecruit();
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$48, reason: invalid class name */
    class AnonymousClass48 extends Text_StaticBG {
        AnonymousClass48(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court.iActiveCivID == Game.player.iCivID) {
                if (Game.menuManager.getVisibleInGame_AdvisorRecruit() && InGame_AdvisorRecruit.iActiveAdvisorTypeID == 1) {
                    Game.menuManager.setVisibleInGame_AdvisorRecruit(false);
                } else {
                    InGame_AdvisorRecruit.iActiveAdvisorTypeID = 1;
                    Game.menuManager.rebuildInGame_AdvisorRecruit();
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            if (InGame_Court.iActiveCivID != Game.player.iCivID) {
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("NoAdvisor"), CFG.FONT_BOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(InGame_Court.iActiveCivID, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                this.menuElementHover = new MenuElement_Hover(arrayList);
                return;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("NoAdvisor"), CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(InGame_Court.iActiveCivID, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Empty());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ClickToHireAnAdvisor"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$49, reason: invalid class name */
    class AnonymousClass49 extends ButtonAdvisor {
        AnonymousClass49(int i, int i2, String str, int i3, int i4, int i5, int i6, String str2) {
            super(i, i2, str, i3, i4, i5, i6, str2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court.iActiveCivID == Game.player.iCivID) {
                if (Game.menuManager.getVisibleInGame_AdvisorRecruit() && InGame_AdvisorRecruit.iActiveAdvisorTypeID == 1) {
                    Game.menuManager.setVisibleInGame_AdvisorRecruit(false);
                } else {
                    InGame_AdvisorRecruit.iActiveAdvisorTypeID = 1;
                    Game.menuManager.rebuildInGame_AdvisorRecruit();
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            if (InGame_Court.iActiveCivID == Game.player.iCivID) {
                InGame_Court.FIRE_ID = 1;
                Dialog.setDialogType(Dialog.DialogType.FIRE_ADVISOR);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$5, reason: invalid class name */
    class AnonymousClass5 extends TextIcon2 {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("MonthlyIncome") + SwmJtrccN.eKzDRwWm, CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$50, reason: invalid class name */
    class AnonymousClass50 extends Text_StaticBG_Advisor_Skill {
        AnonymousClass50(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court.iActiveCivID != Game.player.iCivID || Game.getCiv(InGame_Court.iActiveCivID).advisorEconomy.iLevel >= AdvisorManager.getAdvisorMaxLevel(InGame_Court.iActiveCivID)) {
                return;
            }
            if (Game.getCiv(InGame_Court.iActiveCivID).fGold < AdvisorManager.getAdvisorPromoteCost(InGame_Court.iActiveCivID, Game.getCiv(InGame_Court.iActiveCivID).advisorEconomy.iLevel)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(AdvisorManager.getAdvisorPromoteCost(InGame_Court.iActiveCivID, Game.getCiv(InGame_Court.iActiveCivID).advisorEconomy.iLevel), 100), Images.gold);
            } else if (Game.getCiv(InGame_Court.iActiveCivID).fLegacy < AdvisorManager.getAdvisorPromoteCostLegacy(InGame_Court.iActiveCivID, Game.getCiv(InGame_Court.iActiveCivID).advisorEconomy.iLevel)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + ": ", CFG.getPrecision2(AdvisorManager.getAdvisorPromoteCostLegacy(InGame_Court.iActiveCivID, Game.getCiv(InGame_Court.iActiveCivID).advisorEconomy.iLevel), 100), Images.legacy);
            }
            if (AdvisorManager.promoteAdvisor(Game.player.iCivID, 1, false)) {
                InGame_Info.iCivID = Game.player.iCivID;
                InGame_Info.iCivID2 = 0;
                Game.menuManager.rebuildInGame_Info(Game.getCiv(InGame_Court.iActiveCivID).advisorEconomy.sName, Game.lang.get("AdvisorSkills") + ": " + Game.getCiv(InGame_Court.iActiveCivID).advisorEconomy.iLevel + " / " + AdvisorManager.getAdvisorMaxLevel(InGame_Court.iActiveCivID));
                InGame_Info.imgID = Images.infoCrown;
                SteamAchievementsManager.unlockAchievement(SteamAchievementsManager.PROMOTE_ADVISOR);
            }
            Game.menuManager.rebuildInGame_CourtSavePos();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Advisor_Skill, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center(Game.getCiv(InGame_Court.iActiveCivID).advisorEconomy.sName, CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("AdvisorSkillLevel") + ": ", "" + Game.getCiv(InGame_Court.iActiveCivID).advisorEconomy.iLevel + " / " + AdvisorManager.getAdvisorMaxLevel(InGame_Court.iActiveCivID), Images.skill, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (InGame_Court.iActiveCivID == Game.player.iCivID && Game.getCiv(InGame_Court.iActiveCivID).advisorEconomy.iLevel < AdvisorManager.getAdvisorMaxLevel(InGame_Court.iActiveCivID)) {
                arrayList2.add(new MenuElement_HoverElement_Type_Empty());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("PromoteAdvisor"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.skill, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AdvisorSkills") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(GameValues.advisors.ADVISOR_BONUSES_UPGRADE_PER_LEVEL * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Cost") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(AdvisorManager.getAdvisorPromoteCost(InGame_Court.iActiveCivID, Game.getCiv(InGame_Court.iActiveCivID).advisorEconomy.iLevel), 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("LegacyPoints") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(AdvisorManager.getAdvisorPromoteCostLegacy(InGame_Court.iActiveCivID, Game.getCiv(InGame_Court.iActiveCivID).advisorEconomy.iLevel), 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.legacy, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$51, reason: invalid class name */
    class AnonymousClass51 extends Text_StaticBG_Advisor {
        AnonymousClass51(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Keyboard.keyboardMode && Keyboard.keyboardActionType == Keyboard.KeyboardActionType.INGAME_ADVISOR_ECONOMIC_NAME) {
                Game.keyboard.hideKeyboard();
            } else {
                Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.INGAME_ADVISOR_ECONOMIC_NAME, Game.getCiv(InGame_Court.iActiveCivID).advisorEconomy.sName);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Advisor, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center(Game.getCiv(InGame_Court.iActiveCivID).advisorEconomy.sName, CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("AdvisorSkillLevel") + ": ", "" + Game.getCiv(InGame_Court.iActiveCivID).advisorEconomy.iLevel + " / " + AdvisorManager.getAdvisorMaxLevel(InGame_Court.iActiveCivID), Images.skill, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Advisor, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            try {
                if (Keyboard.keyboardActionType == Keyboard.KeyboardActionType.INGAME_ADVISOR_ECONOMIC_NAME) {
                    if (!getText().equals(Game.getCiv(InGame_Court.iActiveCivID).advisorEconomy.sName)) {
                        setText(Game.getCiv(InGame_Court.iActiveCivID).advisorEconomy.sName);
                    }
                    return Game.getCiv(InGame_Court.iActiveCivID).advisorEconomy.sName + (Keyboard.keyboardActionType == Keyboard.KeyboardActionType.INGAME_ADVISOR_ECONOMIC_NAME ? Keyboard.getKeyboardVerticalLine() : "");
                }
            } catch (Exception unused) {
            }
            return super.getTextToDraw();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$52, reason: invalid class name */
    class AnonymousClass52 extends ButtonAdvisor_No {
        AnonymousClass52(int i, int i2) {
            super(i, i2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court.iActiveCivID == Game.player.iCivID) {
                if (Game.menuManager.getVisibleInGame_AdvisorRecruit() && InGame_AdvisorRecruit.iActiveAdvisorTypeID == 2) {
                    Game.menuManager.setVisibleInGame_AdvisorRecruit(false);
                } else {
                    InGame_AdvisorRecruit.iActiveAdvisorTypeID = 2;
                    Game.menuManager.rebuildInGame_AdvisorRecruit();
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$53, reason: invalid class name */
    class AnonymousClass53 extends Text_StaticBG {
        AnonymousClass53(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court.iActiveCivID == Game.player.iCivID) {
                if (Game.menuManager.getVisibleInGame_AdvisorRecruit() && InGame_AdvisorRecruit.iActiveAdvisorTypeID == 2) {
                    Game.menuManager.setVisibleInGame_AdvisorRecruit(false);
                } else {
                    InGame_AdvisorRecruit.iActiveAdvisorTypeID = 2;
                    Game.menuManager.rebuildInGame_AdvisorRecruit();
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            if (InGame_Court.iActiveCivID != Game.player.iCivID) {
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("NoAdvisor"), CFG.FONT_BOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(InGame_Court.iActiveCivID, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                this.menuElementHover = new MenuElement_Hover(arrayList);
                return;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("NoAdvisor"), CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(InGame_Court.iActiveCivID, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Empty());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ClickToHireAnAdvisor"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$54, reason: invalid class name */
    class AnonymousClass54 extends ButtonAdvisor {
        AnonymousClass54(int i, int i2, String str, int i3, int i4, int i5, int i6, String str2) {
            super(i, i2, str, i3, i4, i5, i6, str2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court.iActiveCivID == Game.player.iCivID) {
                if (Game.menuManager.getVisibleInGame_AdvisorRecruit() && InGame_AdvisorRecruit.iActiveAdvisorTypeID == 2) {
                    Game.menuManager.setVisibleInGame_AdvisorRecruit(false);
                } else {
                    InGame_AdvisorRecruit.iActiveAdvisorTypeID = 2;
                    Game.menuManager.rebuildInGame_AdvisorRecruit();
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            if (InGame_Court.iActiveCivID == Game.player.iCivID) {
                InGame_Court.FIRE_ID = 2;
                Dialog.setDialogType(Dialog.DialogType.FIRE_ADVISOR);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$55, reason: invalid class name */
    class AnonymousClass55 extends Text_StaticBG_Advisor_Skill {
        AnonymousClass55(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court.iActiveCivID != Game.player.iCivID || Game.getCiv(InGame_Court.iActiveCivID).advisorTechnology.iLevel >= AdvisorManager.getAdvisorMaxLevel(InGame_Court.iActiveCivID)) {
                return;
            }
            if (Game.getCiv(InGame_Court.iActiveCivID).fGold < AdvisorManager.getAdvisorPromoteCost(InGame_Court.iActiveCivID, Game.getCiv(InGame_Court.iActiveCivID).advisorTechnology.iLevel)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(AdvisorManager.getAdvisorPromoteCost(InGame_Court.iActiveCivID, Game.getCiv(InGame_Court.iActiveCivID).advisorTechnology.iLevel), 100), Images.gold);
            } else if (Game.getCiv(InGame_Court.iActiveCivID).fLegacy < AdvisorManager.getAdvisorPromoteCostLegacy(InGame_Court.iActiveCivID, Game.getCiv(InGame_Court.iActiveCivID).advisorTechnology.iLevel)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + ": ", CFG.getPrecision2(AdvisorManager.getAdvisorPromoteCostLegacy(InGame_Court.iActiveCivID, Game.getCiv(InGame_Court.iActiveCivID).advisorTechnology.iLevel), 100), Images.legacy);
            }
            if (AdvisorManager.promoteAdvisor(Game.player.iCivID, 2, false)) {
                InGame_Info.iCivID = Game.player.iCivID;
                InGame_Info.iCivID2 = 0;
                Game.menuManager.rebuildInGame_Info(Game.getCiv(InGame_Court.iActiveCivID).advisorTechnology.sName, Game.lang.get(TGqtTWl.zPT) + ": " + Game.getCiv(InGame_Court.iActiveCivID).advisorTechnology.iLevel + " / " + AdvisorManager.getAdvisorMaxLevel(InGame_Court.iActiveCivID));
                InGame_Info.imgID = Images.infoCrown;
                SteamAchievementsManager.unlockAchievement(SteamAchievementsManager.PROMOTE_ADVISOR);
            }
            Game.menuManager.rebuildInGame_CourtSavePos();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Advisor_Skill, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center(Game.getCiv(InGame_Court.iActiveCivID).advisorTechnology.sName, CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("AdvisorSkillLevel") + ": ", "" + Game.getCiv(InGame_Court.iActiveCivID).advisorTechnology.iLevel + " / " + AdvisorManager.getAdvisorMaxLevel(InGame_Court.iActiveCivID), Images.skill, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (InGame_Court.iActiveCivID == Game.player.iCivID && Game.getCiv(InGame_Court.iActiveCivID).advisorTechnology.iLevel < AdvisorManager.getAdvisorMaxLevel(InGame_Court.iActiveCivID)) {
                arrayList2.add(new MenuElement_HoverElement_Type_Empty());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("PromoteAdvisor"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.skill, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AdvisorSkills") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(GameValues.advisors.ADVISOR_BONUSES_UPGRADE_PER_LEVEL * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Cost") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(AdvisorManager.getAdvisorPromoteCost(InGame_Court.iActiveCivID, Game.getCiv(InGame_Court.iActiveCivID).advisorTechnology.iLevel), 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("LegacyPoints") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(AdvisorManager.getAdvisorPromoteCostLegacy(InGame_Court.iActiveCivID, Game.getCiv(InGame_Court.iActiveCivID).advisorTechnology.iLevel), 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.legacy, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$56, reason: invalid class name */
    class AnonymousClass56 extends Text_StaticBG_Advisor {
        AnonymousClass56(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Keyboard.keyboardMode && Keyboard.keyboardActionType == Keyboard.KeyboardActionType.INGAME_ADVISOR_INNOVATION_NAME) {
                Game.keyboard.hideKeyboard();
            } else {
                Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.INGAME_ADVISOR_INNOVATION_NAME, Game.getCiv(InGame_Court.iActiveCivID).advisorTechnology.sName);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Advisor, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center(Game.getCiv(InGame_Court.iActiveCivID).advisorTechnology.sName, CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("AdvisorSkillLevel") + ": ", "" + Game.getCiv(InGame_Court.iActiveCivID).advisorTechnology.iLevel + " / " + AdvisorManager.getAdvisorMaxLevel(InGame_Court.iActiveCivID), Images.skill, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Advisor, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            try {
                if (Keyboard.keyboardActionType == Keyboard.KeyboardActionType.INGAME_ADVISOR_INNOVATION_NAME) {
                    if (!getText().equals(Game.getCiv(InGame_Court.iActiveCivID).advisorTechnology.sName)) {
                        setText(Game.getCiv(InGame_Court.iActiveCivID).advisorTechnology.sName);
                    }
                    return Game.getCiv(InGame_Court.iActiveCivID).advisorTechnology.sName + (Keyboard.keyboardActionType == Keyboard.KeyboardActionType.INGAME_ADVISOR_INNOVATION_NAME ? Keyboard.getKeyboardVerticalLine() : "");
                }
            } catch (Exception unused) {
            }
            return super.getTextToDraw();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$57, reason: invalid class name */
    class AnonymousClass57 extends ButtonAdvisor_No {
        AnonymousClass57(int i, int i2) {
            super(i, i2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court.iActiveCivID == Game.player.iCivID) {
                if (Game.menuManager.getVisibleInGame_AdvisorRecruit() && InGame_AdvisorRecruit.iActiveAdvisorTypeID == 3) {
                    Game.menuManager.setVisibleInGame_AdvisorRecruit(false);
                } else {
                    InGame_AdvisorRecruit.iActiveAdvisorTypeID = 3;
                    Game.menuManager.rebuildInGame_AdvisorRecruit();
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$58, reason: invalid class name */
    class AnonymousClass58 extends Text_StaticBG {
        AnonymousClass58(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court.iActiveCivID == Game.player.iCivID) {
                if (Game.menuManager.getVisibleInGame_AdvisorRecruit() && InGame_AdvisorRecruit.iActiveAdvisorTypeID == 3) {
                    Game.menuManager.setVisibleInGame_AdvisorRecruit(false);
                } else {
                    InGame_AdvisorRecruit.iActiveAdvisorTypeID = 3;
                    Game.menuManager.rebuildInGame_AdvisorRecruit();
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            if (InGame_Court.iActiveCivID != Game.player.iCivID) {
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("NoAdvisor"), CFG.FONT_BOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(InGame_Court.iActiveCivID, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                this.menuElementHover = new MenuElement_Hover(arrayList);
                return;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("NoAdvisor"), CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(InGame_Court.iActiveCivID, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Empty());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ClickToHireAnAdvisor"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$59, reason: invalid class name */
    class AnonymousClass59 extends ButtonAdvisorGeneral {
        AnonymousClass59(int i, int i2, String str, int i3, int i4, int i5, String str2) {
            super(i, i2, str, i3, i4, i5, str2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court.iActiveCivID == Game.player.iCivID) {
                if (Game.menuManager.getVisibleInGame_AdvisorRecruit() && InGame_AdvisorRecruit.iActiveAdvisorTypeID == 3) {
                    Game.menuManager.setVisibleInGame_AdvisorRecruit(false);
                } else {
                    InGame_AdvisorRecruit.iActiveAdvisorTypeID = 3;
                    Game.menuManager.rebuildInGame_AdvisorRecruit();
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            if (InGame_Court.iActiveCivID == Game.player.iCivID) {
                InGame_Court.FIRE_ID = 3;
                Dialog.setDialogType(Dialog.DialogType.FIRE_ADVISOR);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$6, reason: invalid class name */
    class AnonymousClass6 extends TextIcon2 {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("TaxEfficiency") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.tax, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$60, reason: invalid class name */
    class AnonymousClass60 extends Text_StaticBG_Advisor_Skill {
        AnonymousClass60(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court.iActiveCivID != Game.player.iCivID || Game.getCiv(InGame_Court.iActiveCivID).advisorMilitary.iLevel >= AdvisorManager.getAdvisorMaxLevel(InGame_Court.iActiveCivID)) {
                return;
            }
            if (Game.getCiv(InGame_Court.iActiveCivID).fGold < AdvisorManager.getAdvisorPromoteCost(InGame_Court.iActiveCivID, Game.getCiv(InGame_Court.iActiveCivID).advisorMilitary.iLevel)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(AdvisorManager.getAdvisorPromoteCost(InGame_Court.iActiveCivID, Game.getCiv(InGame_Court.iActiveCivID).advisorMilitary.iLevel), 100), Images.gold);
            } else if (Game.getCiv(InGame_Court.iActiveCivID).fLegacy < AdvisorManager.getAdvisorPromoteCostLegacy(InGame_Court.iActiveCivID, Game.getCiv(InGame_Court.iActiveCivID).advisorMilitary.iLevel)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + ": ", CFG.getPrecision2(AdvisorManager.getAdvisorPromoteCostLegacy(InGame_Court.iActiveCivID, Game.getCiv(InGame_Court.iActiveCivID).advisorMilitary.iLevel), 100), Images.legacy);
            }
            if (AdvisorManager.promoteAdvisor(Game.player.iCivID, 3, false)) {
                InGame_Info.iCivID = Game.player.iCivID;
                InGame_Info.iCivID2 = 0;
                Game.menuManager.rebuildInGame_Info(Game.getCiv(InGame_Court.iActiveCivID).advisorMilitary.sName, Game.lang.get("AdvisorSkills") + ": " + Game.getCiv(InGame_Court.iActiveCivID).advisorMilitary.iLevel + " / " + AdvisorManager.getAdvisorMaxLevel(InGame_Court.iActiveCivID));
                InGame_Info.imgID = Images.infoCrown;
                SteamAchievementsManager.unlockAchievement(SteamAchievementsManager.PROMOTE_ADVISOR);
            }
            Game.menuManager.rebuildInGame_CourtSavePos();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Advisor_Skill, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center(Game.getCiv(InGame_Court.iActiveCivID).advisorMilitary.sName, CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("AdvisorSkillLevel") + ": ", "" + Game.getCiv(InGame_Court.iActiveCivID).advisorMilitary.iLevel + " / " + AdvisorManager.getAdvisorMaxLevel(InGame_Court.iActiveCivID), Images.skill, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (InGame_Court.iActiveCivID == Game.player.iCivID && Game.getCiv(InGame_Court.iActiveCivID).advisorMilitary.iLevel < AdvisorManager.getAdvisorMaxLevel(InGame_Court.iActiveCivID)) {
                arrayList2.add(new MenuElement_HoverElement_Type_Empty());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("PromoteAdvisor"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.skill, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AdvisorSkills") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(GameValues.advisors.ADVISOR_BONUSES_UPGRADE_PER_LEVEL * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Cost") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(AdvisorManager.getAdvisorPromoteCost(InGame_Court.iActiveCivID, Game.getCiv(InGame_Court.iActiveCivID).advisorMilitary.iLevel), 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("LegacyPoints") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(AdvisorManager.getAdvisorPromoteCostLegacy(InGame_Court.iActiveCivID, Game.getCiv(InGame_Court.iActiveCivID).advisorMilitary.iLevel), 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.legacy, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$61, reason: invalid class name */
    class AnonymousClass61 extends Text_StaticBG_Advisor {
        AnonymousClass61(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Keyboard.keyboardMode && Keyboard.keyboardActionType == Keyboard.KeyboardActionType.INGAME_ADVISOR_MILITARY_NAME) {
                Game.keyboard.hideKeyboard();
            } else {
                Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.INGAME_ADVISOR_MILITARY_NAME, Game.getCiv(InGame_Court.iActiveCivID).advisorMilitary.sName);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Advisor, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center(Game.getCiv(InGame_Court.iActiveCivID).advisorMilitary.sName, CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("AdvisorSkillLevel") + ": ", "" + Game.getCiv(InGame_Court.iActiveCivID).advisorMilitary.iLevel + " / " + AdvisorManager.getAdvisorMaxLevel(InGame_Court.iActiveCivID), Images.skill, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Advisor, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            try {
                if (Keyboard.keyboardActionType == Keyboard.KeyboardActionType.INGAME_ADVISOR_MILITARY_NAME) {
                    if (!getText().equals(Game.getCiv(InGame_Court.iActiveCivID).advisorMilitary.sName)) {
                        setText(Game.getCiv(InGame_Court.iActiveCivID).advisorMilitary.sName);
                    }
                    return Game.getCiv(InGame_Court.iActiveCivID).advisorMilitary.sName + (Keyboard.keyboardActionType == Keyboard.KeyboardActionType.INGAME_ADVISOR_MILITARY_NAME ? Keyboard.getKeyboardVerticalLine() : "");
                }
            } catch (Exception unused) {
            }
            return super.getTextToDraw();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$62, reason: invalid class name */
    class AnonymousClass62 extends Text_Title_v2_TextLR {
        AnonymousClass62(String str, int i, int i2, int i3, int i4, int i5, String str2) {
            super(str, i, i2, i3, i4, i5, str2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("BattleTacticsDesc"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$63, reason: invalid class name */
    class AnonymousClass63 extends ButtonCurrentSituation {
        AnonymousClass63(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 26) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_BattleTactics();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            Color color;
            Color color2;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("BattleTactics"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.battle, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("BattleTacticsDesc"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            String str = Game.lang.get("UnitsAttack") + ": ";
            String str2 = (GameValues.battleTactics.BATTLE_TACTICS_ATTACK[Game.getCiv(InGame_Court.iActiveCivID).getBattleTacticsID()] > 0 ? "+" : "") + GameValues.battleTactics.BATTLE_TACTICS_ATTACK[Game.getCiv(InGame_Court.iActiveCivID).getBattleTacticsID()];
            int i = Images.attack;
            int i2 = CFG.FONT_REGULAR_SMALL;
            int i3 = CFG.FONT_BOLD_SMALL;
            Color color3 = Colors.HOVER_LEFT;
            if (GameValues.battleTactics.BATTLE_TACTICS_ATTACK[Game.getCiv(InGame_Court.iActiveCivID).getBattleTacticsID()] == 0) {
                color = Colors.HOVER_NEUTRAL;
            } else {
                color = GameValues.battleTactics.BATTLE_TACTICS_ATTACK[Game.getCiv(InGame_Court.iActiveCivID).getBattleTacticsID()] > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str, str2, i, i2, i3, color3, color));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            String str3 = Game.lang.get("UnitsDefense") + ": ";
            String str4 = (GameValues.battleTactics.BATTLE_TACTICS_DEFENSE[Game.getCiv(InGame_Court.iActiveCivID).getBattleTacticsID()] <= 0 ? "" : "+") + GameValues.battleTactics.BATTLE_TACTICS_DEFENSE[Game.getCiv(InGame_Court.iActiveCivID).getBattleTacticsID()];
            int i4 = Images.defense;
            int i5 = CFG.FONT_REGULAR_SMALL;
            int i6 = CFG.FONT_BOLD_SMALL;
            Color color4 = Colors.HOVER_LEFT;
            if (GameValues.battleTactics.BATTLE_TACTICS_DEFENSE[Game.getCiv(InGame_Court.iActiveCivID).getBattleTacticsID()] == 0) {
                color2 = Colors.HOVER_NEUTRAL;
            } else {
                color2 = GameValues.battleTactics.BATTLE_TACTICS_DEFENSE[Game.getCiv(InGame_Court.iActiveCivID).getBattleTacticsID()] > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str3, str4, i4, i5, i6, color4, color2));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$64, reason: invalid class name */
    class AnonymousClass64 extends TextIcon2_Value {
        AnonymousClass64(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            Color color;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            String str = Game.lang.get("UnitsAttack") + ": ";
            String str2 = (GameValues.battleTactics.BATTLE_TACTICS_ATTACK[Game.getCiv(InGame_Court.iActiveCivID).getBattleTacticsID()] > 0 ? "+" : "") + GameValues.battleTactics.BATTLE_TACTICS_ATTACK[Game.getCiv(InGame_Court.iActiveCivID).getBattleTacticsID()];
            int i = Images.attack;
            int i2 = CFG.FONT_REGULAR_SMALL;
            int i3 = CFG.FONT_BOLD_SMALL;
            Color color2 = Colors.HOVER_LEFT;
            if (GameValues.battleTactics.BATTLE_TACTICS_ATTACK[Game.getCiv(InGame_Court.iActiveCivID).getBattleTacticsID()] == 0) {
                color = Colors.HOVER_NEUTRAL;
            } else {
                color = GameValues.battleTactics.BATTLE_TACTICS_ATTACK[Game.getCiv(InGame_Court.iActiveCivID).getBattleTacticsID()] > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str, str2, i, i2, i3, color2, color));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Value, aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            if (getIsHovered()) {
                return super.getColor(z);
            }
            if (GameValues.battleTactics.BATTLE_TACTICS_ATTACK[getCurrent()] == 0) {
                return Colors.HOVER_NEUTRAL;
            }
            return GameValues.battleTactics.BATTLE_TACTICS_ATTACK[getCurrent()] > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$65, reason: invalid class name */
    class AnonymousClass65 extends TextIcon2_Value {
        AnonymousClass65(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            Color color;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            String str = Game.lang.get("UnitsDefense") + ": ";
            String str2 = (GameValues.battleTactics.BATTLE_TACTICS_DEFENSE[Game.getCiv(InGame_Court.iActiveCivID).getBattleTacticsID()] > 0 ? "+" : "") + GameValues.battleTactics.BATTLE_TACTICS_DEFENSE[Game.getCiv(InGame_Court.iActiveCivID).getBattleTacticsID()];
            int i = Images.defense;
            int i2 = CFG.FONT_REGULAR_SMALL;
            int i3 = CFG.FONT_BOLD_SMALL;
            Color color2 = Colors.HOVER_LEFT;
            if (GameValues.battleTactics.BATTLE_TACTICS_DEFENSE[Game.getCiv(InGame_Court.iActiveCivID).getBattleTacticsID()] == 0) {
                color = Colors.HOVER_NEUTRAL;
            } else {
                color = GameValues.battleTactics.BATTLE_TACTICS_DEFENSE[Game.getCiv(InGame_Court.iActiveCivID).getBattleTacticsID()] > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str, str2, i, i2, i3, color2, color));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Value, aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            if (getIsHovered()) {
                return super.getColor(z);
            }
            if (GameValues.battleTactics.BATTLE_TACTICS_DEFENSE[getCurrent()] == 0) {
                return Colors.HOVER_NEUTRAL;
            }
            return GameValues.battleTactics.BATTLE_TACTICS_DEFENSE[getCurrent()] > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$66, reason: invalid class name */
    class AnonymousClass66 extends ButtonCurrentSituation {
        AnonymousClass66(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.player.allowAIMove = !Game.player.allowAIMove;
            if (Game.menuManager.getVisibleInGame_Court()) {
                Game.menuManager.rebuildInGame_CourtSavePos();
                Game.menuManager.setVisibleInGame_Court(true);
                InGame_Court.lTime = 0L;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ArmyControlledByAI"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.ai, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonCurrentSituation, aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return Game.player.allowAIMove ? Colors.getColorPositive(z, getIsHovered()) : super.getColor(z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$67, reason: invalid class name */
    class AnonymousClass67 extends ButtonCurrentSituation {
        AnonymousClass67(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.hideCourtCiv();
            Game.menuManager.rebuildInGame_CustomizeArmy();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Armies") + ": " + Game.lang.get("Colors"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.brush, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$68, reason: invalid class name */
    class AnonymousClass68 extends ButtonCurrentSituation {
        AnonymousClass68(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).fGold < GameValues.colonization.ALLOW_COLONIZATION_BY_SPENDING_GOLD_COST) {
                Game.menuManager.addToast_Error(Game.lang.get("InsufficientGold") + ": " + CFG.getPrecision2(GameValues.colonization.ALLOW_COLONIZATION_BY_SPENDING_GOLD_COST, 1), Images.gold);
            }
            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_COLONIZE_CHOOSE_PROVINCE) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
                return;
            }
            Game.gameActiveProvince.resetLastActiveProvince();
            Game.setActiveProvinceID(-1);
            Game.menuManager.setVisibleInGame_ProvinceInfo(false);
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_COLONIZE_CHOOSE_PROVINCE);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Colonize") + ": " + Game.lang.get("ChooseAProvince"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.populationGrowth, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Cost") + ": ", "" + CFG.getPrecision2(GameValues.colonization.ALLOW_COLONIZATION_BY_SPENDING_GOLD_COST, 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonCurrentSituation, aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_COLONIZE_CHOOSE_PROVINCE ? Colors.HOVER_GOLD : super.getColor(z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$69, reason: invalid class name */
    class AnonymousClass69 extends ButtonCurrentSituation {
        AnonymousClass69(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Court.modeID = 1;
            InGame_Court.iActiveCivID = Game.player.iCivID;
            Game.menuManager.rebuildInGame_Court();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
            Game.setRegroupArmyMode(false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(Game_Ages.getVassals()), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.council, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CLICK_TOP;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$7, reason: invalid class name */
    class AnonymousClass7 extends TextIcon2 {
        AnonymousClass7(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("ProductionEfficiency") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.goods, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$70, reason: invalid class name */
    class AnonymousClass70 extends Text_StaticBG_ID_FlagCiv {
        AnonymousClass70(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_ReleaseAVassal.buildData(Game.player.iCivID, getCurrent());
            InGame_ReleaseAVassal.buildData_MapMode(Game.player.iCivID, getCurrent());
            Game.menuManager.rebuildInGame_ReleaseAVassal();
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_RELEASE_VASSAL);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(Game_Ages.getReleaseAVassal()), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.vassal, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Flag(getCurrent(), 0, CFG.PADDING));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(getText(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            List<Integer> vassalsToRelease_Provinces = Game.getVassalsToRelease_Provinces(InGame_Court.iActiveCivID, getCurrent());
            for (int i = 0; i < 10 && vassalsToRelease_Provinces.size() > 0; i++) {
                int i2 = 0;
                for (int size = vassalsToRelease_Provinces.size() - 1; size > 0; size--) {
                    if (Game.getProvince(vassalsToRelease_Provinces.get(i2).intValue()).getPopulationTotal() < Game.getProvince(vassalsToRelease_Provinces.get(size).intValue()).getPopulationTotal()) {
                        i2 = size;
                    }
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.getProvince(vassalsToRelease_Provinces.get(i2).intValue()).getProvinceName() + "  ", CFG.getNumberWithSpaces("" + Game.getProvince(vassalsToRelease_Provinces.get(i2).intValue()).getPopulationTotal()), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                vassalsToRelease_Provinces.remove(i2);
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$71, reason: invalid class name */
    class AnonymousClass71 extends Text_StaticBG_ID_Special {
        AnonymousClass71(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Provinces") + ": ", getText(), Images.provinces, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$72, reason: invalid class name */
    class AnonymousClass72 extends ButtonCurrentSituation {
        AnonymousClass72(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Court.modeID = 11;
            InGame_Court.iActiveCivID = Game.player.iCivID;
            Game.menuManager.rebuildInGame_Court();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
            Game.setRegroupArmyMode(false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(Game_Ages.getReleaseAVassal()), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.vassal, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CLICK_TOP;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$73, reason: invalid class name */
    class AnonymousClass73 extends Text_StaticBG_ID_FlagCiv_SpecialCiv {
        AnonymousClass73(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, String str2) {
            super(str, i, i2, i3, i4, i5, i6, i7, i8, str2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(getCurrent()).getCapitalProvinceID() < 0 || Game.getProvince(Game.getCiv(getCurrent()).getCapitalProvinceID()).getCivID() != getCurrent()) {
                return;
            }
            if (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getCivID() != getCurrent()) {
                Game.mapCoords.centerToProvinceID(Game.getCiv(getCurrent()).getCapitalProvinceID());
                Game.setActiveProvinceID(Game.getCiv(getCurrent()).getCapitalProvinceID());
                ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
            } else {
                Game.menuManager.hideCourtCiv();
                Game.menuManager.setVisibleInGame_Civ(false);
                Game.menuManager.rebuildInGame_Civ();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(this.id, Game.getProvince(Game.getCiv(this.id).getCapitalProvinceID()).getProvinceName()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(QefTqRjwAJmEDy.mepYBD) + ": ", CFG.getNumberWithSpaces("" + Game.getCiv(this.id).getPopulationTotal()), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_SpecialCiv
        public Color getColor2(boolean z) {
            return Colors.getColorPopulation(z, getIsHovered());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$74, reason: invalid class name */
    class AnonymousClass74 extends TextIcon2_Value {
        AnonymousClass74(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(this.id, Game.getProvince(Game.getCiv(this.id).getCapitalProvinceID()).getProvinceName()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Tribute"), "", Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$75, reason: invalid class name */
    class AnonymousClass75 extends TextIcon2_Value {
        AnonymousClass75(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(this.id, Game.getProvince(Game.getCiv(this.id).getCapitalProvinceID()).getProvinceName()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Tribute") + ": ", CFG.getPrecision2(GameValues.vassal.VASSAL_INCOME_TO_LORD[Game.getCiv(this.id).diplomacy.getVassal_TributeLevel(Game.player.iCivID)] * 100.0f, 10) + "%", Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Gold") + ": ", Game.lang.get(ATsAGKCnv.KRfBsR, "" + CFG.getPrecision2(Game.getIncomeFromVassal(this.id, Game.player.iCivID, Game.getCiv(this.id).diplomacy.getVassal_TributeLevel(Game.player.iCivID)), 100)), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$76, reason: invalid class name */
    class AnonymousClass76 extends TextIcon2_Value {
        AnonymousClass76(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(this.id, Game.getProvince(Game.getCiv(this.id).getCapitalProvinceID()).getProvinceName()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Manpower"), "", Game_Calendar.IMG_MANPOWER, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$77, reason: invalid class name */
    class AnonymousClass77 extends TextIcon2_Value {
        AnonymousClass77(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(this.id, Game.getProvince(Game.getCiv(this.id).getCapitalProvinceID()).getProvinceName()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(this.id, 0, CFG.PADDING));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getCiv(this.id).getCivName(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            double manpowerFromVassal_INFO = Game.getManpowerFromVassal_INFO(this.id, Game.player.iCivID, Game.getCiv(this.id).diplomacy.getVassal_ManpowerLevel(Game.player.iCivID));
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumManpower") + ": ", (manpowerFromVassal_INFO > 0.0d ? "+" : "") + CFG.getPrecision2(manpowerFromVassal_INFO, 1), Game_Calendar.IMG_MANPOWER, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$78, reason: invalid class name */
    class AnonymousClass78 extends Graph_Vertical {
        AnonymousClass78(Graph_Vertical_Data_Type graph_Vertical_Data_Type, String str, String str2, int i, int i2, int i3, int i4, boolean z) {
            super(graph_Vertical_Data_Type, str, str2, i, i2, i3, i4, z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$79, reason: invalid class name */
    class AnonymousClass79 extends Graph_Vertical {
        AnonymousClass79(Graph_Vertical_Data_Type graph_Vertical_Data_Type, String str, String str2, int i, int i2, int i3, int i4, boolean z) {
            super(graph_Vertical_Data_Type, str, str2, i, i2, i3, i4, z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$8, reason: invalid class name */
    class AnonymousClass8 extends TextIcon2 {
        AnonymousClass8(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("ProvinceMaintenance") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$80, reason: invalid class name */
    class AnonymousClass80 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass80(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(Game.player.iCivID, Game.lang.get("Lord")));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MonthlyIncome") + ": ", "" + this.sText2, Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (InGame_Court.UPDATE_INCOME_MANPOWER_FROM_VASSAL) {
                float incomeFromVassal = 0.0f;
                for (int i = 0; i < Game.getCiv(Game.player.iCivID).diplomacy.iVassalsSize; i++) {
                    incomeFromVassal += Game.getIncomeFromVassal(Game.player.iCivID, Game.getCiv(Game.player.iCivID).diplomacy.lVassals.get(i).c, Game.getCiv(Game.player.iCivID).diplomacy.lVassals.get(i).tL);
                }
                setText2((incomeFromVassal > 0.0f ? "+" : "") + CFG.getPrecision2(incomeFromVassal, 100));
                InGame_Court.UPDATE_INCOME_MANPOWER_FROM_VASSAL = false;
            }
            return super.getTextToDraw();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$81, reason: invalid class name */
    class AnonymousClass81 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass81(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(Game.player.iCivID, Game.lang.get("Lord")));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumManpower") + ": ", "" + this.sText2, Game_Calendar.IMG_MANPOWER, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (InGame_Court.UPDATE_INCOME_MANPOWER_FROM_VASSAL) {
                float manpowerFromVassal_INFO = 0.0f;
                for (int i = 0; i < Game.getCiv(Game.player.iCivID).diplomacy.iVassalsSize; i++) {
                    manpowerFromVassal_INFO = (float) (((double) manpowerFromVassal_INFO) + Game.getManpowerFromVassal_INFO(Game.player.iCivID, Game.getCiv(Game.player.iCivID).diplomacy.lVassals.get(i).c, Game.getCiv(Game.player.iCivID).diplomacy.lVassals.get(i).mL));
                }
                setText2((manpowerFromVassal_INFO > 0.0f ? "+" : "") + CFG.getPrecision2(manpowerFromVassal_INFO, 1));
            }
            return super.getTextToDraw();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$82, reason: invalid class name */
    class AnonymousClass82 extends Text_StaticBG_ID_FlagCiv_SpecialCiv {
        AnonymousClass82(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, String str2) {
            super(str, i, i2, i3, i4, i5, i6, i7, i8, str2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(getCurrent()).getCapitalProvinceID() < 0 || Game.getProvince(Game.getCiv(getCurrent()).getCapitalProvinceID()).getCivID() != getCurrent()) {
                return;
            }
            if (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getCivID() != getCurrent()) {
                Game.mapCoords.centerToProvinceID(Game.getCiv(getCurrent()).getCapitalProvinceID());
                Game.setActiveProvinceID(Game.getCiv(getCurrent()).getCapitalProvinceID());
                ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
            } else {
                Game.menuManager.hideCourtCiv();
                Game.menuManager.setVisibleInGame_Civ(false);
                Game.menuManager.rebuildInGame_Civ();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(this.id, Game.getProvince(Game.getCiv(this.id).getCapitalProvinceID()).getProvinceName()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", CFG.getNumberWithSpaces("" + Game.getCiv(this.id).getPopulationTotal()), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Economy") + ": ", CFG.getPrecision2(Game.getCiv(this.id).getEconomyTotal(), 10), Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(PZBvyl.KLRYq) + ": ", CFG.getPrecision2(Game.getCiv(this.id).fTotalIncomePerMonth, 10), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Balance") + ": ", CFG.getPrecision2((Game.getCiv(this.id).fTotalIncomePerMonth + Game.getCiv(this.id).civBonuses.MonthlyIncome) - Game.getCiv(this.id).fTotalExpensesPerMonth, 10), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Manpower") + ": ", CFG.getPrecision2(Game.getCiv(this.id).fManpower, 1), Game_Calendar.IMG_MANPOWER, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumManpower") + ": ", CFG.getPrecision2(Game.getCiv(this.id).fManpowerMax, 1), Game_Calendar.IMG_MANPOWER, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_SpecialCiv
        public Color getColor2(boolean z) {
            return Colors.getColorPopulation(z, getIsHovered());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$83, reason: invalid class name */
    class AnonymousClass83 extends TextIcon2_Value {
        AnonymousClass83(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(this.id, Game.getProvince(Game.getCiv(this.id).getCapitalProvinceID()).getProvinceName()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Tribute"), "", Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$84, reason: invalid class name */
    class AnonymousClass84 extends TextIcon2_Value_Levels {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$84$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.HOVER_GOLD;
            }
        }

        AnonymousClass84(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getCiv(Game.player.iCivID).diplomacy.setVassal_TributeLevel(this.id, this.iLevel);
            Game.getCiv(this.id).updateTotalIncomePerMonth();
            Game.getCiv(Game.player.iCivID).updateTotalIncomePerMonth();
            Game.getCiv(this.id).updateManpowerPerMonth();
            Game.getCiv(Game.player.iCivID).updateManpowerPerMonth();
            InGame_Court.UPDATE_INCOME_MANPOWER_FROM_VASSAL = true;
            MenuManager menuManager = Game.menuManager;
            MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Court.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Court.this.getMenuPosY(), getWidth(), getHeight()));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(this.id, Game.getProvince(Game.getCiv(this.id).getCapitalProvinceID()).getProvinceName()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            StringBuilder sbAppend = new StringBuilder().append(Game.lang.get("Tribute"));
            String str = PZBvyl.vrYFzsr;
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(sbAppend.append(str).toString(), CFG.getPrecision2(GameValues.vassal.VASSAL_INCOME_TO_LORD[this.iLevel] * 100.0f, 10) + "%", Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Gold") + str, Game.lang.get(kfGnwGN.ELOpC, qIuEvFbUtcea.gEARipZto + CFG.getPrecision2(Game.getIncomeFromVassal(Game.player.iCivID, this.id, this.iLevel), 100)), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_GOLD_LEVEL_0;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Value_Levels
        public boolean isLeveLActive() {
            return Game.getCiv(Game.player.iCivID).diplomacy.getVassal_TributeLevel(this.id) == this.iLevel;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$85, reason: invalid class name */
    class AnonymousClass85 extends TextIcon2_Value_Levels {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$85$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.HOVER_GOLD;
            }
        }

        AnonymousClass85(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getCiv(Game.player.iCivID).diplomacy.setVassal_TributeLevel(this.id, this.iLevel);
            Game.getCiv(this.id).updateTotalIncomePerMonth();
            Game.getCiv(Game.player.iCivID).updateTotalIncomePerMonth();
            Game.getCiv(this.id).updateManpowerPerMonth();
            Game.getCiv(Game.player.iCivID).updateManpowerPerMonth();
            InGame_Court.UPDATE_INCOME_MANPOWER_FROM_VASSAL = true;
            MenuManager menuManager = Game.menuManager;
            MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Court.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Court.this.getMenuPosY(), getWidth(), getHeight()));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(this.id, Game.getProvince(Game.getCiv(this.id).getCapitalProvinceID()).getProvinceName()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Tribute") + ": ", CFG.getPrecision2(GameValues.vassal.VASSAL_INCOME_TO_LORD[this.iLevel] * 100.0f, 10) + "%", Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Gold") + ": ", Game.lang.get("XPerMonth", "" + CFG.getPrecision2(Game.getIncomeFromVassal(Game.player.iCivID, this.id, this.iLevel), 100)), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_GOLD_LEVEL_1;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Value_Levels
        public boolean isLeveLActive() {
            return Game.getCiv(Game.player.iCivID).diplomacy.getVassal_TributeLevel(this.id) == this.iLevel;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$86, reason: invalid class name */
    class AnonymousClass86 extends TextIcon2_Value_Levels {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$86$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.HOVER_GOLD;
            }
        }

        AnonymousClass86(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getCiv(Game.player.iCivID).diplomacy.setVassal_TributeLevel(this.id, this.iLevel);
            Game.getCiv(this.id).updateTotalIncomePerMonth();
            Game.getCiv(Game.player.iCivID).updateTotalIncomePerMonth();
            Game.getCiv(this.id).updateManpowerPerMonth();
            Game.getCiv(Game.player.iCivID).updateManpowerPerMonth();
            InGame_Court.UPDATE_INCOME_MANPOWER_FROM_VASSAL = true;
            MenuManager menuManager = Game.menuManager;
            MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Court.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Court.this.getMenuPosY(), getWidth(), getHeight()));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(this.id, Game.getProvince(Game.getCiv(this.id).getCapitalProvinceID()).getProvinceName()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.player.iCivID, 0, CFG.PADDING));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getCiv(Game.player.iCivID).getCivName(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Tribute") + ": ", CFG.getPrecision2(GameValues.vassal.VASSAL_INCOME_TO_LORD[this.iLevel] * 100.0f, 10) + "%", Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Gold") + ": ", Game.lang.get("XPerMonth", "" + CFG.getPrecision2(Game.getIncomeFromVassal(Game.player.iCivID, this.id, this.iLevel), 100)), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_GOLD_LEVEL_2;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Value_Levels
        public boolean isLeveLActive() {
            return Game.getCiv(Game.player.iCivID).diplomacy.getVassal_TributeLevel(this.id) == this.iLevel;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$87, reason: invalid class name */
    class AnonymousClass87 extends TextIcon2_Value {
        int lastLevel;

        AnonymousClass87(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
            this.lastLevel = 0;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(this.id, Game.getProvince(Game.getCiv(this.id).getCapitalProvinceID()).getProvinceName()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Tribute") + ": ", CFG.getPrecision2(GameValues.vassal.VASSAL_INCOME_TO_LORD[Game.getCiv(Game.player.iCivID).diplomacy.getVassal_TributeLevel(this.id)] * 100.0f, 10) + "%", Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Gold") + ": ", Game.lang.get("XPerMonth", "" + CFG.getPrecision2(Game.getIncomeFromVassal(Game.player.iCivID, this.id, Game.getCiv(Game.player.iCivID).diplomacy.getVassal_TributeLevel(this.id)), 100)), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastLevel != Game.getCiv(Game.player.iCivID).diplomacy.getVassal_TributeLevel(this.id)) {
                this.lastLevel = Game.getCiv(Game.player.iCivID).diplomacy.getVassal_TributeLevel(this.id);
                setText(aBEBOpwLZcQFCZ.pesgapcimaIvtJl + CFG.getPrecision2(Game.getIncomeFromVassal(Game.player.iCivID, this.id, this.lastLevel), 100));
            }
            return super.getTextToDraw();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setCurrent(int i) {
            this.lastLevel = i;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$88, reason: invalid class name */
    class AnonymousClass88 extends TextIcon2_Value {
        AnonymousClass88(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(this.id, Game.getProvince(Game.getCiv(this.id).getCapitalProvinceID()).getProvinceName()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Manpower"), "", Game_Calendar.IMG_MANPOWER, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$89, reason: invalid class name */
    class AnonymousClass89 extends TextIcon2_Value_Levels {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$89$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return DiplomacyManager.COLOR_WAR;
            }
        }

        AnonymousClass89(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getCiv(Game.player.iCivID).diplomacy.setVassal_ManpowerLevel(this.id, this.iLevel);
            Game.getCiv(this.id).updateTotalIncomePerMonth();
            Game.getCiv(Game.player.iCivID).updateTotalIncomePerMonth();
            Game.getCiv(this.id).updateManpowerPerMonth();
            Game.getCiv(Game.player.iCivID).updateManpowerPerMonth();
            InGame_Court.UPDATE_INCOME_MANPOWER_FROM_VASSAL = true;
            MenuManager menuManager = Game.menuManager;
            MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Court.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Court.this.getMenuPosY(), getWidth(), getHeight()));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(this.id, Game.getProvince(Game.getCiv(this.id).getCapitalProvinceID()).getProvinceName()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Manpower") + ": ", CFG.getPrecision2(GameValues.vassal.VASSAL_MANPOWER_TO_LORD[this.iLevel] * 100.0f, 10) + "%", Game_Calendar.IMG_MANPOWER, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            double manpowerFromVassal_INFO = Game.getManpowerFromVassal_INFO(Game.player.iCivID, this.id, this.iLevel);
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumManpower") + ": ", (manpowerFromVassal_INFO > 0.0d ? "+" : "") + CFG.getPrecision2(manpowerFromVassal_INFO, 1), Game_Calendar.IMG_MANPOWER, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Value_Levels
        public boolean isLeveLActive() {
            return Game.getCiv(Game.player.iCivID).diplomacy.getVassal_ManpowerLevel(this.id) == this.iLevel;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$9, reason: invalid class name */
    class AnonymousClass9 extends TextIcon2 {
        AnonymousClass9(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("BuildingsMaintenanceCost") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.buildings, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$90, reason: invalid class name */
    class AnonymousClass90 extends TextIcon2_Value_Levels {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$90$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return DiplomacyManager.COLOR_WAR;
            }
        }

        AnonymousClass90(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getCiv(Game.player.iCivID).diplomacy.setVassal_ManpowerLevel(this.id, this.iLevel);
            Game.getCiv(this.id).updateTotalIncomePerMonth();
            Game.getCiv(Game.player.iCivID).updateTotalIncomePerMonth();
            Game.getCiv(this.id).updateManpowerPerMonth();
            Game.getCiv(Game.player.iCivID).updateManpowerPerMonth();
            InGame_Court.UPDATE_INCOME_MANPOWER_FROM_VASSAL = true;
            MenuManager menuManager = Game.menuManager;
            MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Court.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Court.this.getMenuPosY(), getWidth(), getHeight()));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(this.id, Game.getProvince(Game.getCiv(this.id).getCapitalProvinceID()).getProvinceName()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Medium"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Manpower") + ": ", CFG.getPrecision2(GameValues.vassal.VASSAL_MANPOWER_TO_LORD[this.iLevel] * 100.0f, 10) + "%", Game_Calendar.IMG_MANPOWER, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            double manpowerFromVassal_INFO = Game.getManpowerFromVassal_INFO(Game.player.iCivID, this.id, this.iLevel);
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumManpower") + ": ", (manpowerFromVassal_INFO > 0.0d ? "+" : "") + CFG.getPrecision2(manpowerFromVassal_INFO, 1), Game_Calendar.IMG_MANPOWER, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Value_Levels
        public boolean isLeveLActive() {
            return Game.getCiv(Game.player.iCivID).diplomacy.getVassal_ManpowerLevel(this.id) == this.iLevel;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$91, reason: invalid class name */
    class AnonymousClass91 extends TextIcon2_Value_Levels {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$91$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return DiplomacyManager.COLOR_WAR;
            }
        }

        AnonymousClass91(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getCiv(Game.player.iCivID).diplomacy.setVassal_ManpowerLevel(this.id, this.iLevel);
            Game.getCiv(this.id).updateTotalIncomePerMonth();
            Game.getCiv(Game.player.iCivID).updateTotalIncomePerMonth();
            Game.getCiv(this.id).updateManpowerPerMonth();
            Game.getCiv(Game.player.iCivID).updateManpowerPerMonth();
            InGame_Court.UPDATE_INCOME_MANPOWER_FROM_VASSAL = true;
            MenuManager menuManager = Game.menuManager;
            MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Court.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Court.this.getMenuPosY(), getWidth(), getHeight()));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(this.id, Game.getProvince(Game.getCiv(this.id).getCapitalProvinceID()).getProvinceName()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(PZBvyl.YtwWLHIISqTs) + ": ", CFG.getPrecision2(GameValues.vassal.VASSAL_MANPOWER_TO_LORD[this.iLevel] * 100.0f, 10) + "%", Game_Calendar.IMG_MANPOWER, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            double manpowerFromVassal_INFO = Game.getManpowerFromVassal_INFO(Game.player.iCivID, this.id, this.iLevel);
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumManpower") + ": ", (manpowerFromVassal_INFO > 0.0d ? "+" : "") + CFG.getPrecision2(manpowerFromVassal_INFO, 1), Game_Calendar.IMG_MANPOWER, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Value_Levels
        public boolean isLeveLActive() {
            return Game.getCiv(Game.player.iCivID).diplomacy.getVassal_ManpowerLevel(this.id) == this.iLevel;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$92, reason: invalid class name */
    class AnonymousClass92 extends TextIcon2_Value {
        int lastLevel;

        AnonymousClass92(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
            this.lastLevel = 0;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(this.id, Game.getProvince(Game.getCiv(this.id).getCapitalProvinceID()).getProvinceName()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.player.iCivID, 0, CFG.PADDING));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getCiv(Game.player.iCivID).getCivName(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            double manpowerFromVassal_INFO = Game.getManpowerFromVassal_INFO(Game.player.iCivID, this.id, Game.getCiv(Game.player.iCivID).diplomacy.getVassal_ManpowerLevel(this.id));
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumManpower") + ": ", (manpowerFromVassal_INFO > 0.0d ? "+" : "") + CFG.getPrecision2(manpowerFromVassal_INFO, 1), Game_Calendar.IMG_MANPOWER, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastLevel != Game.getCiv(Game.player.iCivID).diplomacy.getVassal_ManpowerLevel(this.id)) {
                this.lastLevel = Game.getCiv(Game.player.iCivID).diplomacy.getVassal_ManpowerLevel(this.id);
                setText("" + CFG.getPrecision2(Game.getManpowerFromVassal_INFO(Game.player.iCivID, this.id, this.lastLevel), 1));
            }
            return super.getTextToDraw();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setCurrent(int i) {
            this.lastLevel = i;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$93, reason: invalid class name */
    class AnonymousClass93 extends TextIcon2_Value_Levels {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$93$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return DiplomacyManager.COLOR_WAR;
            }
        }

        AnonymousClass93(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getCiv(Game.player.iCivID).diplomacy.setVassal_CanDeclareWar(this.id, !Game.getCiv(Game.player.iCivID).diplomacy.getVassal_CanDeclareWar(this.id));
            this.iLevel = Game.getCiv(Game.player.iCivID).diplomacy.getVassal_CanDeclareWar(this.id) ? 1 : 0;
            MenuManager menuManager = Game.menuManager;
            MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Court.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Court.this.getMenuPosY(), getWidth(), getHeight()));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(this.id, Game.getProvince(Game.getCiv(this.id).getCapitalProvinceID()).getProvinceName()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("CanDeclareWars"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(this.iLevel == 1 ? Images.v : Images.x, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (this.iLevel == 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("LibertyDesire") + ": ", ALZmnpZHj.wQBebxnK + CFG.getPrecision2(GameValues.vassal.LIBERTY_DESIRE_CANT_DECLARE_WAR, 100), Images.revolutionRisk, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_NEGATIVE));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList, this.iLevel != 0);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Value_Levels
        public float getScale() {
            return Math.min(1.0f, getImageScale(this.imageID));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Value_Levels
        public boolean isLeveLActive() {
            return 1 == this.iLevel;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$94, reason: invalid class name */
    class AnonymousClass94 extends ButtonCurrentSituation {
        AnonymousClass94(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 15) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                InGame_Encyclopedia.sSearch = "";
                Game.menuManager.rebuildInGame_Encyclopedia();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Encyclopedia"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.encyclopedia, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.getClickSound_CivOptions();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$95, reason: invalid class name */
    class AnonymousClass95 extends Text_Title_v2_TextLR {
        AnonymousClass95(String str, int i, int i2, int i3, int i4, int i5, String str2) {
            super(str, i, i2, i3, i4, i5, str2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("Production2"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$96, reason: invalid class name */
    class AnonymousClass96 extends ButtonCurrentSituation {
        AnonymousClass96(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_Goods();
            Game.menuManager.setVisibleInGame_Goods(true);
            InGame_Goods.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("LargestGoodsProducers"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.goods, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("Production2"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.getClickSound_CivOptions();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$97, reason: invalid class name */
    class AnonymousClass97 extends ButtonCurrentSituation {
        AnonymousClass97(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Court.inCourt = false;
            InGame_Court.inSearchProvinces = false;
            InGame_CourtOptions.disableAllViews();
            InGame_Court_WorldCivs.sSearch = "";
            Game.menuManager.rebuildInGame_CourtSearchCivs();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Search") + ": " + Game.lang.get("Civilizations"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.world, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.getClickSound_CivOptions();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$98, reason: invalid class name */
    class AnonymousClass98 extends ButtonCurrentSituation {
        AnonymousClass98(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Court.actionSearchProvinces();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Search") + ": " + Game.lang.get("Provinces"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.world, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (CFG.isDesktop()) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Shortcut") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("F", CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.world, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList, !CFG.isDesktop());
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.getClickSound_CivOptions();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court$99, reason: invalid class name */
    class AnonymousClass99 extends ButtonCurrentSituation {
        AnonymousClass99(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CourtOptions.disableAllViews();
            Game.menuManager.rebuildInGame_CourtGoldenAges();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Missions") + ": " + Game.lang.get("GoldenAge"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.goldenGold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.getClickSound_CivOptions();
        }
    }

    /* JADX WARN: Code duplicated, block: B:173:0x0fed  */
    /* JADX WARN: Code duplicated, block: B:741:0x6014  */
    public InGame_Court() {
        String str;
        int i;
        int height;
        int i2;
        String str2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        ArrayList arrayList;
        int i8;
        int i9;
        String str3;
        String str4;
        String str5;
        int i10;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        String str11;
        int i11;
        String str12;
        String str13;
        String str14;
        String str15;
        String str16;
        String str17;
        String str18;
        String str19;
        String str20;
        String str21;
        String str22;
        String str23;
        String str24;
        String str25;
        String str26;
        String str27;
        String str28;
        String str29;
        String str30;
        String str31;
        String str32;
        String str33;
        String str34;
        String str35;
        String str36;
        String str37;
        String str38;
        String str39;
        String str40;
        String str41;
        String str42;
        String str43;
        String str44;
        LanguageManager languageManager;
        String str45;
        int i12;
        int i13;
        int i14;
        ArrayList arrayList2 = new ArrayList();
        int i15 = Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2);
        int i16 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int otherMenuPosX = InGame_CourtOptions2.getOtherMenuPosX();
        int height2 = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i17 = CFG.PADDING;
        inCourt = true;
        inSearchProvinces = false;
        if (iActiveCivID != Game.player.iCivID) {
            modeID = 0;
        }
        RulersManager.loadRulerIMG(iActiveCivID);
        arrayList2.add(new Text_Title_v2Center(Game.ideologiesManager.getIdeology(Game.getCiv(iActiveCivID).getIdeologyID()).RulerTitle, -1, Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height3 = 0 + arrayList2.get(arrayList2.size() - 1).getHeight() + (CFG.PADDING * 2);
        int i18 = height3 - CFG.PADDING;
        arrayList2.add(new AnonymousClass1(iActiveCivID, i15, height3));
        int width2 = i15 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
        int i19 = (width - width2) - i15;
        arrayList2.add(new AnonymousClass2(Game.getCiv(iActiveCivID).ruler.Name, width2, height3, i19, CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height4 = height3 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        int height5 = arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING + 0;
        arrayList2.add(new AnonymousClass3("" + Game.getCiv(iActiveCivID).ruler.BornDay + " " + Game_Calendar.getMonthName(Game.getCiv(iActiveCivID).ruler.BornMonth) + " " + Game.getCiv(iActiveCivID).ruler.BornYear, Game.lang.get("XYearsOld", Math.min(99, Game_Calendar.currentYear - Game.getCiv(iActiveCivID).ruler.BornYear)), width2, height4, i19, CFG.TEXT_HEIGHT + (CFG.PADDING * 3)));
        int height6 = height4 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        int height7 = height5 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        int i20 = (i19 - (CFG.PADDING * 2)) / 3;
        int buttonHeight = ButtonRuler2.getButtonHeight() - height7;
        int i21 = (Game.getCiv(iActiveCivID).ruler.rulerBonuses.UnitsAttack == 0 && Game.getCiv(iActiveCivID).ruler.rulerBonuses.UnitsDefense == 0 && Game.getCiv(iActiveCivID).ruler.rulerBonuses.GeneralAttack == 0 && Game.getCiv(iActiveCivID).ruler.rulerBonuses.GeneralDefense == 0) ? i20 : (i19 - (CFG.PADDING * 3)) / 4;
        arrayList2.add(new AnonymousClass4(Game.getCiv(iActiveCivID).getReligionID(), width2, height6, i21, buttonHeight));
        int width3 = width2 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
        if (Game.getCiv(iActiveCivID).ruler.rulerBonuses.MonthlyIncome != 0.0f) {
            arrayList2.add(new AnonymousClass5(CFG.getPrecision2(Game.getCiv(iActiveCivID).ruler.rulerBonuses.MonthlyIncome, 100), Images.gold, width3, height6, i21, buttonHeight));
            width3 += arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
        }
        String str46 = "%";
        if (Game.getCiv(iActiveCivID).ruler.rulerBonuses.TaxEfficiency != 0.0f) {
            arrayList2.add(new AnonymousClass6(CFG.getPrecision2(Game.getCiv(iActiveCivID).ruler.rulerBonuses.TaxEfficiency, 100) + "%", Images.tax, width3, height6, i21, buttonHeight));
            width3 += arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
        }
        if (Game.getCiv(iActiveCivID).ruler.rulerBonuses.ProductionEfficiency != 0.0f) {
            arrayList2.add(new AnonymousClass7(CFG.getPrecision2(Game.getCiv(iActiveCivID).ruler.rulerBonuses.ProductionEfficiency, 100) + "%", Images.goods, width3, height6, i21, buttonHeight));
            width3 += arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
        }
        if (Game.getCiv(iActiveCivID).ruler.rulerBonuses.ProvinceMaintenance != 0.0f) {
            arrayList2.add(new AnonymousClass8(CFG.getPrecision2(Game.getCiv(iActiveCivID).ruler.rulerBonuses.ProvinceMaintenance, 100) + "%", Images.provinces, width3, height6, i21, buttonHeight));
            width3 += arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
        }
        if (Game.getCiv(iActiveCivID).ruler.rulerBonuses.BuildingsMaintenanceCost != 0.0f) {
            arrayList2.add(new AnonymousClass9(CFG.getPrecision2(Game.getCiv(iActiveCivID).ruler.rulerBonuses.BuildingsMaintenanceCost * 100.0f, 100) + "%", Images.buildings, width3, height6, i21, buttonHeight));
            width3 += arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
        }
        if (Game.getCiv(iActiveCivID).ruler.rulerBonuses.MaxManpower != 0.0f) {
            arrayList2.add(new AnonymousClass10(CFG.getPrecision2(Game.getCiv(iActiveCivID).ruler.rulerBonuses.MaxManpower, 1), Game_Calendar.IMG_MANPOWER_UP, width3, height6, i21, buttonHeight));
            width3 += arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
        }
        if (Game.getCiv(iActiveCivID).ruler.rulerBonuses.RecruitmentTime != 0.0f) {
            arrayList2.add(new AnonymousClass11(CFG.getPrecision2(Game.getCiv(iActiveCivID).ruler.rulerBonuses.RecruitmentTime, 100) + "%", Game_Calendar.IMG_MANPOWER_TIME, width3, height6, i21, buttonHeight));
            width3 += arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
        }
        if (Game.getCiv(iActiveCivID).ruler.rulerBonuses.ResearchPoints != 0.0f) {
            arrayList2.add(new AnonymousClass12(CFG.getPrecision2(Game.getCiv(iActiveCivID).ruler.rulerBonuses.ResearchPoints, 100), Game_Calendar.IMG_TECHNOLOGY, width3, height6, i21, buttonHeight));
            width3 += arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
        }
        if (Game.getCiv(iActiveCivID).ruler.rulerBonuses.Devastation != 0.0f) {
            arrayList2.add(new AnonymousClass13("+" + CFG.getPrecision2(Game.getCiv(iActiveCivID).ruler.rulerBonuses.Devastation * 100.0f, 100) + "%", Images.devastation, width3, height6, i21, buttonHeight));
            width3 += arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
        }
        if (Game.getCiv(iActiveCivID).ruler.rulerBonuses.Research != 0.0f) {
            arrayList2.add(new AnonymousClass14(CFG.getPrecision2(Game.getCiv(iActiveCivID).ruler.rulerBonuses.Research, 100) + "%", Game_Calendar.IMG_TECHNOLOGY, width3, height6, i21, buttonHeight));
            width3 += arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
        }
        if (Game.getCiv(iActiveCivID).ruler.rulerBonuses.GeneralCost != 0.0f) {
            arrayList2.add(new AnonymousClass15(CFG.getPrecision2(Game.getCiv(iActiveCivID).ruler.rulerBonuses.GeneralCost * 100.0f, 100) + "%", Game_Calendar.IMG_MANPOWER, width3, height6, i21, buttonHeight));
            width3 += arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
        }
        if (Game.getCiv(iActiveCivID).ruler.rulerBonuses.ConstructionCost != 0.0f) {
            arrayList2.add(new AnonymousClass16(CFG.getPrecision2(Game.getCiv(iActiveCivID).ruler.rulerBonuses.ConstructionCost * 100.0f, 100) + "%", Images.construction, width3, height6, i21, buttonHeight));
            width3 += arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
        }
        if (Game.getCiv(iActiveCivID).ruler.rulerBonuses.AdministrationBuildingsCost != 0.0f) {
            arrayList2.add(new AnonymousClass17(CFG.getPrecision2(Game.getCiv(iActiveCivID).ruler.rulerBonuses.AdministrationBuildingsCost * 100.0f, 100) + "%", Images.construction, width3, height6, i21, buttonHeight));
            width3 += arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
        }
        if (Game.getCiv(iActiveCivID).ruler.rulerBonuses.EconomyBuildingsCost != 0.0f) {
            arrayList2.add(new AnonymousClass18(CFG.getPrecision2(Game.getCiv(iActiveCivID).ruler.rulerBonuses.EconomyBuildingsCost * 100.0f, 100) + "%", Images.construction, width3, height6, i21, buttonHeight));
            width3 += arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
        }
        if (Game.getCiv(iActiveCivID).ruler.rulerBonuses.MilitaryBuildingsCost != 0.0f) {
            arrayList2.add(new AnonymousClass19(CFG.getPrecision2(Game.getCiv(iActiveCivID).ruler.rulerBonuses.MilitaryBuildingsCost * 100.0f, 100) + "%", Images.construction, width3, height6, i21, buttonHeight));
            width3 += arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
        }
        if (Game.getCiv(iActiveCivID).ruler.rulerBonuses.InvestInEconomyCost != 0.0f) {
            arrayList2.add(new AnonymousClass20(CFG.getPrecision2(Game.getCiv(iActiveCivID).ruler.rulerBonuses.InvestInEconomyCost * 100.0f, 100) + "%", Game_Calendar.IMG_ECONOMY_UP, width3, height6, i21, buttonHeight));
            width3 += arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
        }
        if (Game.getCiv(iActiveCivID).ruler.rulerBonuses.IncreaseTaxEfficiencyCost != 0.0f) {
            arrayList2.add(new AnonymousClass21(CFG.getPrecision2(Game.getCiv(iActiveCivID).ruler.rulerBonuses.IncreaseTaxEfficiencyCost * 100.0f, 100) + "%", Images.taxUp, width3, height6, i21, buttonHeight));
            width3 += arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
        }
        if (Game.getCiv(iActiveCivID).ruler.rulerBonuses.IncreaseGrowthRateCost != 0.0f) {
            arrayList2.add(new AnonymousClass22(CFG.getPrecision2(Game.getCiv(iActiveCivID).ruler.rulerBonuses.IncreaseGrowthRateCost * 100.0f, 100) + "%", Images.populationUp, width3, height6, i21, buttonHeight));
            width3 += arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
        }
        if (Game.getCiv(iActiveCivID).ruler.rulerBonuses.DevelopInfrastructureCost != 0.0f) {
            arrayList2.add(new AnonymousClass23(CFG.getPrecision2(Game.getCiv(iActiveCivID).ruler.rulerBonuses.DevelopInfrastructureCost * 100.0f, 100) + "%", Images.infrastructureUp, width3, height6, i21, buttonHeight));
            width3 += arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
        }
        if (Game.getCiv(iActiveCivID).ruler.rulerBonuses.IncreaseManpowerCost != 0.0f) {
            arrayList2.add(new AnonymousClass24(CFG.getPrecision2(Game.getCiv(iActiveCivID).ruler.rulerBonuses.IncreaseManpowerCost, 100) + "%", Game_Calendar.IMG_MANPOWER_UP, width3, height6, i21, buttonHeight));
            width3 += arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
        }
        if (Game.getCiv(iActiveCivID).ruler.rulerBonuses.ImproveRelationsModifier != 0.0f) {
            arrayList2.add(new AnonymousClass25(CFG.getPrecision2(Game.getCiv(iActiveCivID).ruler.rulerBonuses.ImproveRelationsModifier, 100) + "%", Images.diplomacy, width3, height6, i21, buttonHeight));
            width3 += arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
        }
        if (Game.getCiv(iActiveCivID).ruler.rulerBonuses.LoanInterest != 0.0f) {
            arrayList2.add(new AnonymousClass26(CFG.getPrecision2(Game.getCiv(iActiveCivID).ruler.rulerBonuses.LoanInterest, 100) + "%", Images.loan, width3, height6, i21, buttonHeight));
            width3 += arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
        }
        if (Game.getCiv(iActiveCivID).ruler.rulerBonuses.MonthlyLegacy != 0.0f) {
            arrayList2.add(new AnonymousClass27(CFG.getPrecision2(Game.getCiv(iActiveCivID).ruler.rulerBonuses.MonthlyLegacy, 100), Images.legacy, width3, height6, i21, buttonHeight));
            width3 += arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
        }
        if (Game.getCiv(iActiveCivID).ruler.rulerBonuses.UnitsAttack != 0) {
            str = "";
            arrayList2.add(new AnonymousClass28("" + (Game.getCiv(iActiveCivID).ruler.rulerBonuses.UnitsAttack > 0 ? r8 : "") + Game.getCiv(iActiveCivID).ruler.rulerBonuses.UnitsAttack, Images.attack, width3, height6, i21, buttonHeight));
            width3 += arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
        } else {
            str = "";
        }
        if (Game.getCiv(iActiveCivID).ruler.rulerBonuses.UnitsDefense != 0) {
            arrayList2.add(new AnonymousClass29(str + (Game.getCiv(iActiveCivID).ruler.rulerBonuses.UnitsDefense > 0 ? r8 : str) + Game.getCiv(iActiveCivID).ruler.rulerBonuses.UnitsDefense, Images.defense, width3, height6, i21, buttonHeight));
            width3 += arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
        }
        if (Game.getCiv(iActiveCivID).ruler.rulerBonuses.GeneralAttack != 0) {
            arrayList2.add(new AnonymousClass30(str + (Game.getCiv(iActiveCivID).ruler.rulerBonuses.GeneralAttack > 0 ? r8 : str) + Game.getCiv(iActiveCivID).ruler.rulerBonuses.GeneralAttack, Images.attack, width3, height6, i21, buttonHeight));
            width3 += arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
        }
        int i22 = width3;
        if (Game.getCiv(iActiveCivID).ruler.rulerBonuses.GeneralDefense != 0) {
            arrayList2.add(new AnonymousClass31(str + (Game.getCiv(iActiveCivID).ruler.rulerBonuses.GeneralDefense > 0 ? r8 : str) + Game.getCiv(iActiveCivID).ruler.rulerBonuses.GeneralDefense, Images.defense, i22, height6, i21, buttonHeight));
            arrayList2.get(arrayList2.size() - 1).getWidth();
            int i23 = CFG.PADDING;
        }
        arrayList2.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(CFG.PADDING + Images.boxTitleBORDERWIDTH, i18, width - ((CFG.PADDING + Images.boxTitleBORDERWIDTH) * 2), ButtonRuler2.getButtonHeight() + (CFG.PADDING * 2)));
        int posY = arrayList2.get(1).getPosY() + arrayList2.get(1).getHeight() + (CFG.PADDING * 2);
        arrayList2.add(new AnonymousClass32(Game.lang.get(GameValues.court.COUNCIL_NAME), Images.boxTitleBORDERWIDTH, posY, (width - (Images.boxTitleBORDERWIDTH * 2)) / 3, CFG.BUTTON_HEIGHT4, modeID == 0));
        String str47 = Game.lang.get(Game_Ages.getVassals());
        int i24 = Images.boxTitleBORDERWIDTH + ((width - (Images.boxTitleBORDERWIDTH * 2)) / 3);
        int i25 = (width - (Images.boxTitleBORDERWIDTH * 2)) / 3;
        int i26 = CFG.BUTTON_HEIGHT4;
        int i27 = modeID;
        arrayList2.add(new AnonymousClass33(str47, i24, posY, i25, i26, i27 == 1 || i27 == 11));
        arrayList2.add(new AnonymousClass34(Game.lang.get("More"), Images.boxTitleBORDERWIDTH + (((width - (Images.boxTitleBORDERWIDTH * 2)) / 3) * 2), posY, (width - (Images.boxTitleBORDERWIDTH * 2)) / 3, CFG.BUTTON_HEIGHT4, modeID == 2));
        int height8 = posY + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        int i28 = modeID;
        String str48 = ": ";
        if (i28 == 0) {
            if (iActiveCivID == Game.player.iCivID) {
                int i29 = ((width - (i15 * 2)) - (CFG.PADDING * 4)) / 5;
                int i30 = CFG.BUTTON_HEIGHT4;
                arrayList2.add(new AnonymousClass35("", Images.missions, i15, height8, i29, i30));
                int width4 = i15 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                arrayList2.add(new AnonymousClass36("", Images.encyclopedia, width4, height8, i29, i30));
                int width5 = width4 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                arrayList2.add(new AnonymousClass37("", Images.development, width5, height8, i29, i30));
                int width6 = width5 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                arrayList2.add(new AnonymousClass38(HjHDSSkYG.NgJGfyOUhejGn, Images.provinces, width6, height8, i29, i30));
                arrayList2.add(new AnonymousClass39(ClXgFvsSKQc.pNaUl, Images.settings, width6 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING, height8, i29, i30));
                height8 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
            }
            if (iActiveCivID == Game.player.iCivID) {
                Game.player.playerData.espionage.removeExpiredEspionageMissions();
                if (Game.player.playerData.espionage.iEspionageMissionsSize > 0) {
                    arrayList2.add(new Text_Title_v2_TextLR(Game.lang.get("EspionageMission"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height8, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ""));
                    int i31 = 1;
                    height8 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                    int iMax = Math.max(CFG.BUTTON_HEIGHT3, Math.max(Math.max(ImageManager.getImage(Images.flag_rect).getHeight(), ImageManager.getImage(Images.spy).getHeight()), CFG.TEXT_HEIGHT) + (CFG.PADDING * 2));
                    int i32 = 0;
                    while (i32 < Game.player.playerData.espionage.iEspionageMissionsSize) {
                        try {
                            try {
                                if (Game.player.playerData.espionage.espionageMissions.get(i32).iReportTurnID <= Game_Calendar.TURN_ID) {
                                    str3 = str46;
                                    i13 = width;
                                    str5 = str;
                                    i14 = i15;
                                    str4 = str48;
                                    try {
                                        arrayList2.add(new AnonymousClass40(Game.lang.get("Completed"), "", i15, height8, width - (i15 * 2), iMax, Images.spy, Game.player.playerData.espionage.espionageMissions.get(i32).iCivID, Game.player.playerData.espionage.espionageMissions.get(i32).iReportTurnID - DiplomacyManager.sendSpyTime(Game.player.iCivID, Game.player.playerData.espionage.espionageMissions.get(i32).iCivID), Game.player.playerData.espionage.espionageMissions.get(i32).iReportExpiresTurnID - Game_Calendar.TURN_ID, false));
                                        i12 = 1;
                                        try {
                                            height8 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                                        } catch (Exception unused) {
                                        }
                                    } catch (Exception unused2) {
                                        i9 = i14;
                                        i8 = i13;
                                    }
                                } else {
                                    i12 = i31;
                                    i13 = width;
                                    str3 = str46;
                                    str4 = str48;
                                    str5 = str;
                                    i14 = i15;
                                }
                                i32++;
                                i31 = i12;
                                i15 = i14;
                                str = str5;
                                str46 = str3;
                                width = i13;
                                str48 = str4;
                            } catch (Exception unused3) {
                                str3 = str46;
                                str4 = str48;
                                str5 = str;
                                i10 = i31;
                                i8 = width;
                                i9 = i15;
                            }
                        } catch (Exception unused4) {
                            i8 = width;
                            i9 = i15;
                            str3 = str46;
                            str4 = str48;
                            str5 = str;
                            i10 = i31;
                        }
                    }
                    i12 = i31;
                    i13 = width;
                    str3 = str46;
                    str4 = str48;
                    str5 = str;
                    i14 = i15;
                    int i33 = 0;
                    while (i33 < Game.player.playerData.espionage.iEspionageMissionsSize) {
                        if (Game.player.playerData.espionage.espionageMissions.get(i33).iReportTurnID > Game_Calendar.TURN_ID) {
                            int i34 = i13;
                            int i35 = i34 - (i14 * 2);
                            try {
                                int i36 = i14;
                                i8 = i34;
                                i9 = i14;
                                i10 = i12;
                                try {
                                    arrayList2.add(new AnonymousClass41(Game.lang.get("Progress"), "%", i36, height8, i35, iMax, Images.spy, Game.player.playerData.espionage.espionageMissions.get(i33).iCivID, Game.player.playerData.espionage.espionageMissions.get(i33).iReportTurnID - DiplomacyManager.sendSpyTime(Game.player.iCivID, Game.player.playerData.espionage.espionageMissions.get(i33).iCivID), Game.player.playerData.espionage.espionageMissions.get(i33).iReportTurnID, false));
                                    height8 += arrayList2.get(arrayList2.size() - i10).getHeight() + CFG.PADDING;
                                } catch (Exception unused5) {
                                }
                            } catch (Exception unused6) {
                                i8 = i34;
                                i9 = i14;
                                i10 = i12;
                            }
                        } else {
                            i9 = i14;
                            i8 = i13;
                            i10 = i12;
                        }
                        i33++;
                        i12 = i10;
                        i14 = i9;
                        i13 = i8;
                    }
                    i9 = i14;
                    i8 = i13;
                    i10 = i12;
                } else {
                    i8 = width;
                    i9 = i15;
                    str3 = str46;
                    str4 = str48;
                    str5 = str;
                }
                i10 = 1;
            } else {
                i8 = width;
                i9 = i15;
                str3 = str46;
                str4 = str48;
                str5 = str;
                i10 = 1;
            }
            String str49 = Game.lang.get(GameValues.court.ADVISOR_NAME_ADMINISTRATIVE);
            int i37 = CFG.BUTTON_WIDTH / 4;
            int i38 = Images.boxTitleBORDERWIDTH;
            int i39 = i8;
            int i40 = i39 - (Images.boxTitleBORDERWIDTH * 2);
            int i41 = CFG.TEXT_HEIGHT + (CFG.PADDING * 4);
            if (Game.getCiv(iActiveCivID).advisorAdministration.sName != null) {
                str6 = "XYearsOld";
                str7 = Game.lang.get(str6, Math.min(99, Game_Calendar.currentYear - Game.getCiv(iActiveCivID).advisorAdministration.iYearOfBirth));
            } else {
                str6 = "XYearsOld";
                str7 = str5;
            }
            arrayList2.add(new Text_Title_v2_TextLR(str49, i37, i38, height8, i40, i41, str7));
            int height9 = height8 + arrayList2.get(arrayList2.size() - i10).getHeight() + (CFG.PADDING * 2);
            int i42 = i9 * 2;
            int buttonWidth = ((i39 - ButtonAdvisor.getButtonWidth()) - i42) - CFG.PADDING;
            int width7 = ImageManager.getImage(Images.gold).getWidth();
            if (Game.getCiv(iActiveCivID).advisorAdministration.sName == null) {
                int i43 = i9;
                arrayList2.add(new AnonymousClass42(i43, height9));
                str9 = "NoAdvisor";
                str17 = "TaxEfficiency";
                str10 = "GrowthRate";
                arrayList2.add(new AnonymousClass43(Game.lang.get("NoAdvisor"), CFG.FONT_REGULAR_SMALL, -1, i43 + arrayList2.get(arrayList2.size() - i10).getWidth() + CFG.PADDING, height9, buttonWidth, ButtonAdvisor.getButtonHeight()));
                str11 = str6;
                str14 = str5;
                str15 = r8;
                i11 = i43;
                str16 = str3;
                str13 = str4;
                str12 = " / ";
                str8 = "Skill";
                str18 = "ProvinceMaintenance";
            } else {
                str8 = "Skill";
                str9 = "NoAdvisor";
                str10 = "GrowthRate";
                int i44 = i9;
                String str50 = Game.getCiv(iActiveCivID).advisorAdministration.sName;
                int i45 = Game.getCiv(iActiveCivID).advisorAdministration.imageID;
                int i46 = iActiveCivID;
                str11 = str6;
                arrayList2.add(new AnonymousClass44(i44, height9, str50, i45, i46, -1, 0, Game.getCiv(i46).advisorAdministration.sIMG));
                i11 = i44;
                int width8 = i11 + arrayList2.get(arrayList2.size() - i10).getWidth() + CFG.PADDING;
                int i47 = (i39 - width8) - i11;
                int buttonHeight2 = (ButtonAdvisor.getButtonHeight() - (CFG.PADDING * 2)) / 3;
                String str51 = str4;
                str12 = " / ";
                str13 = str51;
                arrayList2.add(new AnonymousClass45(Game.lang.get(str8) + str51 + Game.getCiv(iActiveCivID).advisorAdministration.iLevel + " / " + AdvisorManager.getAdvisorMaxLevel(iActiveCivID), width8, height9, CFG.PADDING, buttonHeight2));
                arrayList2.get(arrayList2.size() - 1).setPosX((i39 - i11) - arrayList2.get(arrayList2.size() - 1).getWidth());
                arrayList2.add(new AnonymousClass46(Game.getCiv(iActiveCivID).advisorAdministration.sName, width8, height9, (arrayList2.get(arrayList2.size() - 1).getPosX() - width8) - CFG.PADDING, buttonHeight2));
                int height10 = arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING + 0;
                if (Game.getCiv(iActiveCivID).advisorAdministration.TaxEfficiency != 0.0f) {
                    str17 = "TaxEfficiency";
                    str14 = str5;
                    str15 = r8;
                    str16 = str3;
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get(str17) + str14, str15 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorAdministration.TaxEfficiency, 100) + str16, Images.tax, width8, height9 + height10, i47, buttonHeight2, width7));
                    height10 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    str14 = str5;
                    str15 = r8;
                    str16 = str3;
                    str17 = "TaxEfficiency";
                }
                if (Game.getCiv(iActiveCivID).advisorAdministration.ProvinceMaintenance != 0.0f) {
                    str18 = "ProvinceMaintenance";
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get(str18) + str14, str14 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorAdministration.ProvinceMaintenance, 100) + str16, Images.gold, width8, height9 + height10, i47, buttonHeight2, width7));
                    height10 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    str18 = "ProvinceMaintenance";
                }
                if (Game.getCiv(iActiveCivID).advisorAdministration.GrowthRate != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get(str10) + str14, str15 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorAdministration.GrowthRate, 100) + str16, Images.populationGrowth, width8, height9 + height10, i47, buttonHeight2, width7));
                    height10 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorAdministration.ConstructionCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ConstructionCost") + str14, str14 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorAdministration.ConstructionCost * 100.0f, 100) + str16, Images.construction, width8, height9 + height10, i47, buttonHeight2, width7));
                    height10 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorAdministration.AdministrationBuildingsCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("AdministrationBuildingsCost") + str14, str14 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorAdministration.AdministrationBuildingsCost * 100.0f, 100) + str16, Images.construction, width8, height9 + height10, i47, buttonHeight2, width7));
                    height10 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorAdministration.EconomyBuildingsCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("EconomyBuildingsCost") + str14, str14 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorAdministration.EconomyBuildingsCost * 100.0f, 100) + str16, Images.construction, width8, height9 + height10, i47, buttonHeight2, width7));
                    height10 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorAdministration.MilitaryBuildingsCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("MilitaryBuildingsCost") + str14, str14 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorAdministration.MilitaryBuildingsCost * 100.0f, 100) + str16, Images.construction, width8, height9 + height10, i47, buttonHeight2, width7));
                    height10 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorAdministration.InvestInEconomyCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("InvestInEconomyCost") + str14, str14 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorAdministration.InvestInEconomyCost * 100.0f, 100) + str16, Game_Calendar.IMG_ECONOMY_UP, width8, height9 + height10, i47, buttonHeight2, width7));
                    height10 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorAdministration.IncreaseTaxEfficiencyCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("IncreaseTaxEfficiencyCost") + str14, str14 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorAdministration.IncreaseTaxEfficiencyCost * 100.0f, 100) + str16, Images.taxUp, width8, height9 + height10, i47, buttonHeight2, width7));
                    height10 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorAdministration.IncreaseGrowthRateCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("IncreaseGrowthRateCost") + str14, str14 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorAdministration.IncreaseGrowthRateCost * 100.0f, 100) + str16, Images.populationUp, width8, height9 + height10, i47, buttonHeight2, width7));
                    height10 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorAdministration.DevelopInfrastructureCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get(gpVDKipRURuzw.qhEBCsbJx) + str14, str14 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorAdministration.DevelopInfrastructureCost * 100.0f, 100) + str16, Images.infrastructureUp, width8, height9 + height10, i47, buttonHeight2, width7));
                    height10 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorAdministration.ProductionEfficiency != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ProductionEfficiency") + str14, str15 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorAdministration.ProductionEfficiency, 100) + str16, Images.goods, width8, height9 + height10, i47, buttonHeight2, width7));
                    height10 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorAdministration.Research != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ResearchPerMonth") + str14, str15 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorAdministration.Research, 100), Game_Calendar.IMG_TECHNOLOGY, width8, height9 + height10, i47, buttonHeight2, width7));
                    height10 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorAdministration.MonthlyLegacy != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("MonthlyLegacy") + str14, str15 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorAdministration.MonthlyLegacy, 100), Images.legacy, width8, height9 + height10, i47, buttonHeight2, width7));
                    height10 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorAdministration.GeneralAttack != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("GeneralsAttack") + str14, str15 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorAdministration.GeneralAttack, 100), Images.attack, width8, height9 + height10, i47, buttonHeight2, width7));
                    height10 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorAdministration.GeneralDefense != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("GeneralsDefense") + str14, str15 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorAdministration.GeneralDefense, 100), Images.defense, width8, height9 + height10, i47, buttonHeight2, width7));
                    height10 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorAdministration.ArmyMaintenance != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get(PxHJ.PItrnpJa) + str14, str14 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorAdministration.ArmyMaintenance, 100) + str16, Images.armyMaintenance, width8, height9 + height10, i47, buttonHeight2, width7));
                    height10 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorAdministration.RecruitArmyCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ArmyRecruitmentCost") + str14, str14 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorAdministration.RecruitArmyCost, 100) + str16, Images.gold, width8, height9 + height10, i47, buttonHeight2, width7));
                    height10 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorAdministration.ConstructionTime != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ConstructionTime") + str14, str14 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorAdministration.ConstructionTime * 100.0f, 100) + str16, Images.buildTime, width8, height9 + height10, i47, buttonHeight2, width7));
                    height10 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorAdministration.IncreaseManpowerCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("IncreaseManpowerCost") + str14, str14 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorAdministration.IncreaseManpowerCost, 100) + str16, Game_Calendar.IMG_MANPOWER, width8, height9 + height10, i47, buttonHeight2, width7));
                    height10 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorAdministration.RecruitmentTime != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("RecruitmentTime") + str14, str14 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorAdministration.RecruitmentTime, 100) + str16, Game_Calendar.IMG_MANPOWER_TIME, width8, height9 + height10, i47, buttonHeight2, width7));
                    height10 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorAdministration.LoanInterest != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("LoanInterest") + str14, str14 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorAdministration.LoanInterest, 100) + str16, Images.loan, width8, height9 + height10, i47, buttonHeight2, width7));
                    height10 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorAdministration.CoreCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("CoreConstruction") + str14, str14 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorAdministration.CoreCost, 100) + str16, Images.core, width8, height9 + height10, i47, buttonHeight2, width7));
                    height10 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorAdministration.ReligionCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ReligionConversionCost") + str14, str14 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorAdministration.ReligionCost, 100) + str16, Images.religion, width8, height9 + height10, i47, buttonHeight2, width7));
                    height10 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorAdministration.IncomeProduction != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("IncomeProduction") + str14, str15 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorAdministration.IncomeProduction, 100) + str16, Images.goods, width8, height9 + height10, i47, buttonHeight2, width7));
                    height10 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorAdministration.MaxManpower != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("MaximumManpower") + str14, str15 + ((int) Game.getCiv(iActiveCivID).advisorAdministration.MaxManpower), Game_Calendar.IMG_MANPOWER_UP, width8, height9 + height10, i47, buttonHeight2, width7));
                    height10 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorAdministration.UnitsAttack != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("UnitsAttack") + str14, str15 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorAdministration.UnitsAttack, 100), Images.attack, width8, height9 + height10, i47, buttonHeight2, width7));
                    height10 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorAdministration.UnitsDefense != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get(HjHDSSkYG.iZmZz) + str14, str15 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorAdministration.UnitsDefense, 100), Images.defense, width8, height9 + height10, i47, buttonHeight2, width7));
                    height10 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorAdministration.RegimentsLimit != 0) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get(aBEBOpwLZcQFCZ.GdcUH) + str14, str15 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorAdministration.RegimentsLimit, 1), Images.regimentsLimit, width8, height9 + height10, i47, buttonHeight2, width7));
                    height10 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorAdministration.ImproveRelationsModifier != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ImproveRelationsModifier") + str14, str15 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorAdministration.ImproveRelationsModifier, 100) + str16, Images.relations, width8, height9 + height10, i47, buttonHeight2, width7));
                    height10 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorAdministration.ArmyMovementSpeed != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ArmyMovementSpeed") + str14, str15 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorAdministration.ArmyMovementSpeed, 100) + str16, Images.movementSpeed, width8, height9 + height10, i47, buttonHeight2, width7));
                    height10 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorAdministration.SiegeEffectiveness != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("SiegeEffectiveness") + str14, str15 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorAdministration.SiegeEffectiveness * 100.0f, 100) + str16, Images.siege, width8, height9 + height10, i47, buttonHeight2, width7));
                    arrayList2.get(arrayList2.size() - 1).getHeight();
                    int i48 = CFG.PADDING;
                }
            }
            arrayList2.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(CFG.PADDING + Images.boxTitleBORDERWIDTH, height9 - CFG.PADDING, i39 - ((CFG.PADDING + Images.boxTitleBORDERWIDTH) * 2), ButtonAdvisor.getButtonHeight() + (CFG.PADDING * 2)));
            int buttonHeight3 = height9 + ButtonAdvisor.getButtonHeight() + (CFG.PADDING * 2);
            String str52 = Game.lang.get(GameValues.court.ADVISOR_NAME_ECONOMIC);
            int i49 = CFG.BUTTON_WIDTH / 4;
            int i50 = Images.boxTitleBORDERWIDTH;
            int i51 = i39 - (Images.boxTitleBORDERWIDTH * 2);
            int i52 = CFG.TEXT_HEIGHT + (CFG.PADDING * 4);
            if (Game.getCiv(iActiveCivID).advisorEconomy.sName != null) {
                str19 = str11;
                str20 = Game.lang.get(str19, Math.min(99, Game_Calendar.currentYear - Game.getCiv(iActiveCivID).advisorEconomy.iYearOfBirth));
            } else {
                str19 = str11;
                str20 = str14;
            }
            arrayList2.add(new Text_Title_v2_TextLR(str52, i49, i50, buttonHeight3, i51, i52, str20));
            int height11 = buttonHeight3 + arrayList2.get(arrayList2.size() - 1).getHeight() + (CFG.PADDING * 2);
            if (Game.getCiv(iActiveCivID).advisorEconomy.sName == null) {
                arrayList2.add(new AnonymousClass47(i11, height11));
                String str53 = str9;
                str21 = str53;
                String str54 = str18;
                str22 = str15;
                String str55 = str14;
                arrayList2.add(new AnonymousClass48(Game.lang.get(str53), CFG.FONT_REGULAR_SMALL, -1, i11 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING, height11, buttonWidth, ButtonAdvisor.getButtonHeight()));
                str23 = str19;
                str26 = str8;
                str29 = str54;
                str24 = str12;
                str25 = str13;
                str27 = str55;
                str28 = str17;
            } else {
                String str56 = str14;
                String str57 = str18;
                str21 = str9;
                String str58 = str17;
                String str59 = str10;
                str22 = str15;
                String str60 = Game.getCiv(iActiveCivID).advisorEconomy.sName;
                int i53 = Game.getCiv(iActiveCivID).advisorEconomy.imageID;
                int i54 = iActiveCivID;
                str23 = str19;
                arrayList2.add(new AnonymousClass49(i11, height11, str60, i53, i54, -1, 1, Game.getCiv(i54).advisorEconomy.sIMG));
                int width9 = i11 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                int i55 = (i39 - width9) - i11;
                int buttonHeight4 = (ButtonAdvisor.getButtonHeight() - (CFG.PADDING * 2)) / 3;
                String str61 = str8;
                String str62 = str13;
                String str63 = str12;
                str24 = str63;
                str25 = str62;
                str26 = str61;
                arrayList2.add(new AnonymousClass50(Game.lang.get(str61) + str62 + Game.getCiv(iActiveCivID).advisorEconomy.iLevel + str63 + AdvisorManager.getAdvisorMaxLevel(iActiveCivID), width9, height11, CFG.PADDING, buttonHeight4));
                arrayList2.get(arrayList2.size() - 1).setPosX((i39 - i11) - arrayList2.get(arrayList2.size() - 1).getWidth());
                arrayList2.add(new AnonymousClass51(Game.getCiv(iActiveCivID).advisorEconomy.sName, width9, height11, (arrayList2.get(arrayList2.size() - 1).getPosX() - width9) - CFG.PADDING, buttonHeight4));
                int height12 = arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING + 0;
                if (Game.getCiv(iActiveCivID).advisorEconomy.TaxEfficiency != 0.0f) {
                    str28 = str58;
                    str27 = str56;
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get(str28) + str27, str22 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorEconomy.TaxEfficiency, 100) + str16, Images.tax, width9, height11 + height12, i55, buttonHeight4, width7));
                    height12 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    str27 = str56;
                    str28 = str58;
                }
                if (Game.getCiv(iActiveCivID).advisorEconomy.ProvinceMaintenance != 0.0f) {
                    str29 = str57;
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get(str29) + str27, str27 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorEconomy.ProvinceMaintenance, 100) + str16, Images.gold, width9, height11 + height12, i55, buttonHeight4, width7));
                    height12 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    str29 = str57;
                }
                if (Game.getCiv(iActiveCivID).advisorEconomy.GrowthRate != 0.0f) {
                    str10 = str59;
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get(str59) + str27, str22 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorEconomy.GrowthRate, 100) + str16, Images.populationGrowth, width9, height11 + height12, i55, buttonHeight4, width7));
                    height12 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    str10 = str59;
                }
                if (Game.getCiv(iActiveCivID).advisorEconomy.ConstructionCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ConstructionCost") + str27, str27 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorEconomy.ConstructionCost * 100.0f, 100) + str16, Images.construction, width9, height11 + height12, i55, buttonHeight4, width7));
                    height12 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorEconomy.AdministrationBuildingsCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("AdministrationBuildingsCost") + str27, str27 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorEconomy.AdministrationBuildingsCost * 100.0f, 100) + str16, Images.construction, width9, height11 + height12, i55, buttonHeight4, width7));
                    height12 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorEconomy.EconomyBuildingsCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("EconomyBuildingsCost") + str27, str27 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorEconomy.EconomyBuildingsCost * 100.0f, 100) + str16, Images.construction, width9, height11 + height12, i55, buttonHeight4, width7));
                    height12 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorEconomy.MilitaryBuildingsCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("MilitaryBuildingsCost") + str27, str27 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorEconomy.MilitaryBuildingsCost * 100.0f, 100) + str16, Images.construction, width9, height11 + height12, i55, buttonHeight4, width7));
                    height12 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorEconomy.InvestInEconomyCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("InvestInEconomyCost") + str27, str27 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorEconomy.InvestInEconomyCost * 100.0f, 100) + str16, Game_Calendar.IMG_ECONOMY_UP, width9, height11 + height12, i55, buttonHeight4, width7));
                    height12 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorEconomy.IncreaseTaxEfficiencyCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("IncreaseTaxEfficiencyCost") + str27, str27 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorEconomy.IncreaseTaxEfficiencyCost * 100.0f, 100) + str16, Images.taxUp, width9, height11 + height12, i55, buttonHeight4, width7));
                    height12 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorEconomy.IncreaseGrowthRateCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("IncreaseGrowthRateCost") + str27, str27 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorEconomy.IncreaseGrowthRateCost * 100.0f, 100) + str16, Images.populationUp, width9, height11 + height12, i55, buttonHeight4, width7));
                    height12 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorEconomy.DevelopInfrastructureCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("DevelopInfrastructureCost") + str27, str27 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorEconomy.DevelopInfrastructureCost * 100.0f, 100) + str16, Images.infrastructureUp, width9, height11 + height12, i55, buttonHeight4, width7));
                    height12 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorEconomy.ProductionEfficiency != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ProductionEfficiency") + str27, str22 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorEconomy.ProductionEfficiency, 100) + str16, Images.goods, width9, height11 + height12, i55, buttonHeight4, width7));
                    height12 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorEconomy.Research != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ResearchPerMonth") + str27, str22 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorEconomy.Research, 100), Game_Calendar.IMG_TECHNOLOGY, width9, height11 + height12, i55, buttonHeight4, width7));
                    height12 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorEconomy.MonthlyLegacy != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("MonthlyLegacy") + str27, str22 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorEconomy.MonthlyLegacy, 100), Images.legacy, width9, height11 + height12, i55, buttonHeight4, width7));
                    height12 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorEconomy.GeneralAttack != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("GeneralsAttack") + str27, str22 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorEconomy.GeneralAttack, 100), Images.attack, width9, height11 + height12, i55, buttonHeight4, width7));
                    height12 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorEconomy.GeneralDefense != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get(CoLRpi.HawvntquM) + str27, str22 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorEconomy.GeneralDefense, 100), Images.defense, width9, height11 + height12, i55, buttonHeight4, width7));
                    height12 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorEconomy.ArmyMaintenance != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ArmyMaintenance") + str27, str27 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorEconomy.ArmyMaintenance, 100) + str16, Images.armyMaintenance, width9, height11 + height12, i55, buttonHeight4, width7));
                    height12 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorEconomy.RecruitArmyCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ArmyRecruitmentCost") + str27, str27 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorEconomy.RecruitArmyCost, 100) + str16, Images.gold, width9, height11 + height12, i55, buttonHeight4, width7));
                    height12 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorEconomy.ConstructionTime != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ConstructionTime") + str27, str27 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorEconomy.ConstructionTime * 100.0f, 100) + str16, Images.buildTime, width9, height11 + height12, i55, buttonHeight4, width7));
                    height12 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorEconomy.IncreaseManpowerCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("IncreaseManpowerCost") + str27, str27 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorEconomy.IncreaseManpowerCost, 100) + str16, Game_Calendar.IMG_MANPOWER_UP, width9, height11 + height12, i55, buttonHeight4, width7));
                    height12 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorEconomy.RecruitmentTime != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("RecruitmentTime") + str27, str27 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorEconomy.RecruitmentTime, 100) + str16, Images.time, width9, height11 + height12, i55, buttonHeight4, width7));
                    height12 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorEconomy.LoanInterest != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get(CaiJWNfqszJNZ.KUgaamMlwGV) + str27, str27 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorEconomy.LoanInterest, 100) + str16, Images.loan, width9, height11 + height12, i55, buttonHeight4, width7));
                    height12 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorEconomy.CoreCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("CoreConstruction") + str27, str27 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorEconomy.CoreCost, 100) + str16, Images.core, width9, height11 + height12, i55, buttonHeight4, width7));
                    height12 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorEconomy.ReligionCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ReligionConversionCost") + str27, str27 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorEconomy.ReligionCost, 100) + str16, Images.religion, width9, height11 + height12, i55, buttonHeight4, width7));
                    height12 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorEconomy.IncomeProduction != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("IncomeProduction") + str27, str22 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorEconomy.IncomeProduction, 100) + str16, Images.goods, width9, height11 + height12, i55, buttonHeight4, width7));
                    height12 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorEconomy.MaxManpower != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("MaximumManpower") + str27, str22 + ((int) Game.getCiv(iActiveCivID).advisorEconomy.MaxManpower), Game_Calendar.IMG_MANPOWER_UP, width9, height11 + height12, i55, buttonHeight4, width7));
                    height12 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorEconomy.UnitsAttack != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("UnitsAttack") + str27, str22 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorEconomy.UnitsAttack, 100), Images.attack, width9, height11 + height12, i55, buttonHeight4, width7));
                    height12 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorEconomy.UnitsDefense != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("UnitsDefense") + str27, str22 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorEconomy.UnitsDefense, 100), Images.defense, width9, height11 + height12, i55, buttonHeight4, width7));
                    height12 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorEconomy.RegimentsLimit != 0) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get(aBEBOpwLZcQFCZ.qPpb) + str27, str22 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorEconomy.RegimentsLimit, 1), Images.regimentsLimit, width9, height11 + height12, i55, buttonHeight4, width7));
                    height12 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorEconomy.ImproveRelationsModifier != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ImproveRelationsModifier") + str27, str22 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorEconomy.ImproveRelationsModifier, 100) + str16, Images.relations, width9, height11 + height12, i55, buttonHeight4, width7));
                    height12 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorEconomy.ArmyMovementSpeed != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ArmyMovementSpeed") + str27, str22 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorEconomy.ArmyMovementSpeed, 100) + str16, Images.movementSpeed, width9, height11 + height12, i55, buttonHeight4, width7));
                    height12 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorEconomy.SiegeEffectiveness != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("SiegeEffectiveness") + str27, str22 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorEconomy.SiegeEffectiveness * 100.0f, 100) + str16, Images.siege, width9, height11 + height12, i55, buttonHeight4, width7));
                    arrayList2.get(arrayList2.size() - 1).getHeight();
                    int i56 = CFG.PADDING;
                }
            }
            arrayList2.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(CFG.PADDING + Images.boxTitleBORDERWIDTH, height11 - CFG.PADDING, i39 - ((CFG.PADDING + Images.boxTitleBORDERWIDTH) * 2), ButtonAdvisor.getButtonHeight() + (CFG.PADDING * 2)));
            int buttonHeight5 = height11 + ButtonAdvisor.getButtonHeight() + (CFG.PADDING * 2);
            String str64 = Game.lang.get(GameValues.court.ADVISOR_NAME_INNOVATION);
            int i57 = CFG.BUTTON_WIDTH / 4;
            int i58 = Images.boxTitleBORDERWIDTH;
            int i59 = i39 - (Images.boxTitleBORDERWIDTH * 2);
            int i60 = CFG.TEXT_HEIGHT + (CFG.PADDING * 4);
            if (Game.getCiv(iActiveCivID).advisorTechnology.sName != null) {
                str30 = str23;
                str31 = Game.lang.get(str30, Math.min(99, Game_Calendar.currentYear - Game.getCiv(iActiveCivID).advisorTechnology.iYearOfBirth));
            } else {
                str30 = str23;
                str31 = str27;
            }
            arrayList2.add(new Text_Title_v2_TextLR(str64, i57, i58, buttonHeight5, i59, i60, str31));
            int height13 = buttonHeight5 + arrayList2.get(arrayList2.size() - 1).getHeight() + (CFG.PADDING * 2);
            if (Game.getCiv(iActiveCivID).advisorTechnology.sName == null) {
                arrayList2.add(new AnonymousClass52(i11, height13));
                String str65 = str21;
                str32 = str65;
                String str66 = str29;
                String str67 = str27;
                String str68 = str16;
                str33 = str28;
                arrayList2.add(new AnonymousClass53(Game.lang.get(str65), CFG.FONT_REGULAR_SMALL, -1, i11 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING, height13, buttonWidth, ButtonAdvisor.getButtonHeight()));
                str38 = str22;
                str39 = str68;
                str34 = str30;
                str35 = str24;
                str36 = str25;
                str37 = str26;
                str41 = str66;
                str40 = str67;
            } else {
                String str69 = str29;
                String str70 = str27;
                String str71 = str16;
                String str72 = str10;
                str32 = str21;
                str33 = str28;
                String str73 = Game.getCiv(iActiveCivID).advisorTechnology.sName;
                int i61 = Game.getCiv(iActiveCivID).advisorTechnology.imageID;
                int i62 = iActiveCivID;
                String str74 = str22;
                str34 = str30;
                arrayList2.add(new AnonymousClass54(i11, height13, str73, i61, i62, -1, 2, Game.getCiv(i62).advisorTechnology.sIMG));
                int width10 = i11 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                int i63 = (i39 - width10) - i11;
                int buttonHeight6 = (ButtonAdvisor.getButtonHeight() - (CFG.PADDING * 2)) / 3;
                String str75 = str26;
                String str76 = str25;
                String str77 = str24;
                str35 = str77;
                str36 = str76;
                str37 = str75;
                arrayList2.add(new AnonymousClass55(Game.lang.get(str75) + str76 + Game.getCiv(iActiveCivID).advisorTechnology.iLevel + str77 + AdvisorManager.getAdvisorMaxLevel(iActiveCivID), width10, height13, CFG.PADDING, buttonHeight6));
                arrayList2.get(arrayList2.size() - 1).setPosX((i39 - i11) - arrayList2.get(arrayList2.size() - 1).getWidth());
                arrayList2.add(new AnonymousClass56(Game.getCiv(iActiveCivID).advisorTechnology.sName, width10, height13, (arrayList2.get(arrayList2.size() - 1).getPosX() - width10) - CFG.PADDING, buttonHeight6));
                int height14 = arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING + 0;
                if (Game.getCiv(iActiveCivID).advisorTechnology.TaxEfficiency != 0.0f) {
                    str40 = str70;
                    str38 = str74;
                    str39 = str71;
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get(str33) + str40, str38 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorTechnology.TaxEfficiency, 100) + str39, Images.tax, width10, height13 + height14, i63, buttonHeight6, width7));
                    height14 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    str38 = str74;
                    str39 = str71;
                    str40 = str70;
                }
                if (Game.getCiv(iActiveCivID).advisorTechnology.ProvinceMaintenance != 0.0f) {
                    str41 = str69;
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get(str69) + str40, str40 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorTechnology.ProvinceMaintenance, 100) + str39, Images.gold, width10, height13 + height14, i63, buttonHeight6, width7));
                    height14 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    str41 = str69;
                }
                if (Game.getCiv(iActiveCivID).advisorTechnology.GrowthRate != 0.0f) {
                    str10 = str72;
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get(str72) + str40, str38 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorTechnology.GrowthRate, 100) + str39, Images.populationGrowth, width10, height13 + height14, i63, buttonHeight6, width7));
                    height14 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    str10 = str72;
                }
                if (Game.getCiv(iActiveCivID).advisorTechnology.ConstructionCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ConstructionCost") + str40, str40 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorTechnology.ConstructionCost * 100.0f, 100) + str39, Images.construction, width10, height13 + height14, i63, buttonHeight6, width7));
                    height14 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorTechnology.AdministrationBuildingsCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("AdministrationBuildingsCost") + str40, str40 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorTechnology.AdministrationBuildingsCost * 100.0f, 100) + str39, Images.construction, width10, height13 + height14, i63, buttonHeight6, width7));
                    height14 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorTechnology.EconomyBuildingsCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("EconomyBuildingsCost") + str40, str40 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorTechnology.EconomyBuildingsCost * 100.0f, 100) + str39, Images.construction, width10, height13 + height14, i63, buttonHeight6, width7));
                    height14 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorTechnology.MilitaryBuildingsCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get(nEtnPpUF.BItqMu) + str40, str40 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorTechnology.MilitaryBuildingsCost * 100.0f, 100) + str39, Images.construction, width10, height13 + height14, i63, buttonHeight6, width7));
                    height14 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorTechnology.InvestInEconomyCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("InvestInEconomyCost") + str40, str40 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorTechnology.InvestInEconomyCost * 100.0f, 100) + str39, Game_Calendar.IMG_ECONOMY_UP, width10, height13 + height14, i63, buttonHeight6, width7));
                    height14 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorTechnology.IncreaseTaxEfficiencyCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("IncreaseTaxEfficiencyCost") + str40, str40 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorTechnology.IncreaseTaxEfficiencyCost * 100.0f, 100) + str39, Images.taxUp, width10, height13 + height14, i63, buttonHeight6, width7));
                    height14 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorTechnology.IncreaseGrowthRateCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("IncreaseGrowthRateCost") + str40, str40 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorTechnology.IncreaseGrowthRateCost * 100.0f, 100) + str39, Images.populationUp, width10, height13 + height14, i63, buttonHeight6, width7));
                    height14 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorTechnology.DevelopInfrastructureCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("DevelopInfrastructureCost") + str40, str40 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorTechnology.DevelopInfrastructureCost * 100.0f, 100) + str39, Images.infrastructureUp, width10, height13 + height14, i63, buttonHeight6, width7));
                    height14 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorTechnology.ProductionEfficiency != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get(jkEBdieJhbh.WNaJPdA) + str40, str38 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorTechnology.ProductionEfficiency, 100) + str39, Images.goods, width10, height13 + height14, i63, buttonHeight6, width7));
                    height14 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorTechnology.Research != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ResearchPerMonth") + str40, str38 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorTechnology.Research, 100), Game_Calendar.IMG_TECHNOLOGY, width10, height13 + height14, i63, buttonHeight6, width7));
                    height14 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorTechnology.MonthlyLegacy != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("MonthlyLegacy") + str40, str38 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorTechnology.MonthlyLegacy, 100), Images.legacy, width10, height13 + height14, i63, buttonHeight6, width7));
                    height14 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorTechnology.GeneralAttack != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("GeneralsAttack") + str40, str38 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorTechnology.GeneralAttack, 100), Images.attack, width10, height13 + height14, i63, buttonHeight6, width7));
                    height14 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorTechnology.GeneralDefense != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("GeneralsDefense") + str40, str38 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorTechnology.GeneralDefense, 100), Images.defense, width10, height13 + height14, i63, buttonHeight6, width7));
                    height14 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorTechnology.ArmyMaintenance != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ArmyMaintenance") + str40, str40 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorTechnology.ArmyMaintenance, 100) + str39, Images.armyMaintenance, width10, height13 + height14, i63, buttonHeight6, width7));
                    height14 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorTechnology.RecruitArmyCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ArmyRecruitmentCost") + str40, str40 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorTechnology.RecruitArmyCost, 100) + str39, Images.gold, width10, height13 + height14, i63, buttonHeight6, width7));
                    height14 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorTechnology.ConstructionTime != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ConstructionTime") + str40, str40 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorTechnology.ConstructionTime * 100.0f, 100) + str39, Images.buildTime, width10, height13 + height14, i63, buttonHeight6, width7));
                    height14 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorTechnology.IncreaseManpowerCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("IncreaseManpowerCost") + str40, str40 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorTechnology.IncreaseManpowerCost, 100) + str39, Game_Calendar.IMG_MANPOWER_UP, width10, height13 + height14, i63, buttonHeight6, width7));
                    height14 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorTechnology.RecruitmentTime != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("RecruitmentTime") + str40, str40 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorTechnology.RecruitmentTime, 100) + str39, Game_Calendar.IMG_MANPOWER_TIME, width10, height13 + height14, i63, buttonHeight6, width7));
                    height14 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorTechnology.LoanInterest != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("LoanInterest") + str40, str40 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorTechnology.LoanInterest, 100) + str39, Images.loan, width10, height13 + height14, i63, buttonHeight6, width7));
                    height14 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorTechnology.CoreCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("CoreConstruction") + str40, str40 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorTechnology.CoreCost, 100) + str39, Images.core, width10, height13 + height14, i63, buttonHeight6, width7));
                    height14 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorTechnology.ReligionCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ReligionConversionCost") + str40, str40 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorTechnology.ReligionCost, 100) + str39, Images.religion, width10, height13 + height14, i63, buttonHeight6, width7));
                    height14 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorTechnology.IncomeProduction != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("IncomeProduction") + str40, str38 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorTechnology.IncomeProduction, 100) + str39, Images.goods, width10, height13 + height14, i63, buttonHeight6, width7));
                    height14 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorTechnology.MaxManpower != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("MaximumManpower") + str40, str38 + ((int) Game.getCiv(iActiveCivID).advisorTechnology.MaxManpower), Game_Calendar.IMG_MANPOWER_UP, width10, height13 + height14, i63, buttonHeight6, width7));
                    height14 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorTechnology.UnitsAttack != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("UnitsAttack") + str40, str38 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorTechnology.UnitsAttack, 100), Images.attack, width10, height13 + height14, i63, buttonHeight6, width7));
                    height14 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorTechnology.UnitsDefense != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get(HjHDSSkYG.GiCX) + str40, str38 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorTechnology.UnitsDefense, 100), Images.defense, width10, height13 + height14, i63, buttonHeight6, width7));
                    height14 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorTechnology.RegimentsLimit != 0) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("RegimentsLimit") + str40, str38 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorTechnology.RegimentsLimit, 1), Images.regimentsLimit, width10, height13 + height14, i63, buttonHeight6, width7));
                    height14 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorTechnology.ImproveRelationsModifier != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ImproveRelationsModifier") + str40, str38 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorTechnology.ImproveRelationsModifier, 100) + str39, Images.relations, width10, height13 + height14, i63, buttonHeight6, width7));
                    height14 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorTechnology.ArmyMovementSpeed != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ArmyMovementSpeed") + str40, str38 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorTechnology.ArmyMovementSpeed, 100) + str39, Images.movementSpeed, width10, height13 + height14, i63, buttonHeight6, width7));
                    height14 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorTechnology.SiegeEffectiveness != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("SiegeEffectiveness") + str40, str38 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorTechnology.SiegeEffectiveness * 100.0f, 100) + str39, Images.siege, width10, height13 + height14, i63, buttonHeight6, width7));
                    arrayList2.get(arrayList2.size() - 1).getHeight();
                    int i64 = CFG.PADDING;
                }
            }
            arrayList2.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(CFG.PADDING + Images.boxTitleBORDERWIDTH, height13 - CFG.PADDING, i39 - ((CFG.PADDING + Images.boxTitleBORDERWIDTH) * 2), ButtonAdvisor.getButtonHeight() + (CFG.PADDING * 2)));
            int buttonHeight7 = height13 + ButtonAdvisor.getButtonHeight() + (CFG.PADDING * 2);
            arrayList2.add(new Text_Title_v2_TextLR(Game.lang.get(GameValues.court.ADVISOR_NAME_MILITARY), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, buttonHeight7, i39 - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), Game.getCiv(iActiveCivID).advisorMilitary.sName != null ? Game.lang.get(str34, Math.min(99, Game_Calendar.currentYear - Game.getCiv(iActiveCivID).advisorMilitary.iYearOfBirth)) : str40));
            int height15 = buttonHeight7 + arrayList2.get(arrayList2.size() - 1).getHeight() + (CFG.PADDING * 2);
            if (Game.getCiv(iActiveCivID).advisorMilitary.sName == null) {
                arrayList2.add(new AnonymousClass57(i11, height15));
                arrayList2.add(new AnonymousClass58(Game.lang.get(str32), CFG.FONT_REGULAR_SMALL, -1, i11 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING, height15, buttonWidth, ButtonAdvisor.getButtonHeight()));
                str43 = str38;
                str42 = str36;
            } else {
                String str78 = str38;
                String str79 = Game.getCiv(iActiveCivID).advisorMilitary.sName;
                int i65 = Game.getCiv(iActiveCivID).advisorMilitary.imageID;
                int i66 = iActiveCivID;
                String str80 = str41;
                String str81 = str10;
                String str82 = str39;
                arrayList2.add(new AnonymousClass59(i11, height15, str79, i65, i66, -1, Game.getCiv(i66).advisorMilitary.sIMG));
                int width11 = i11 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                int i67 = (i39 - width11) - i11;
                int buttonHeight8 = (ButtonAdvisor.getButtonHeight() - (CFG.PADDING * 2)) / 3;
                String str83 = str36;
                str42 = str83;
                arrayList2.add(new AnonymousClass60(Game.lang.get(str37) + str83 + Game.getCiv(iActiveCivID).advisorMilitary.iLevel + str35 + AdvisorManager.getAdvisorMaxLevel(iActiveCivID), width11, height15, CFG.PADDING, buttonHeight8));
                arrayList2.get(arrayList2.size() - 1).setPosX((i39 - i11) - arrayList2.get(arrayList2.size() - 1).getWidth());
                arrayList2.add(new AnonymousClass61(Game.getCiv(iActiveCivID).advisorMilitary.sName, width11, height15, (arrayList2.get(arrayList2.size() - 1).getPosX() - width11) - CFG.PADDING, buttonHeight8));
                int height16 = arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING + 0;
                if (Game.getCiv(iActiveCivID).advisorMilitary.TaxEfficiency != 0.0f) {
                    String str84 = Game.lang.get(str33) + str40;
                    str43 = str78;
                    str44 = str82;
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(str84, str43 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorMilitary.TaxEfficiency, 100) + str44, Images.tax, width11, height15 + height16, i67, buttonHeight8, width7));
                    height16 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    str43 = str78;
                    str44 = str82;
                }
                if (Game.getCiv(iActiveCivID).advisorMilitary.ProvinceMaintenance != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get(str80) + str40, str40 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorMilitary.ProvinceMaintenance, 100) + str44, Images.gold, width11, height15 + height16, i67, buttonHeight8, width7));
                    height16 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorMilitary.GrowthRate != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get(str81) + str40, str43 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorMilitary.GrowthRate, 100) + str44, Images.populationGrowth, width11, height15 + height16, i67, buttonHeight8, width7));
                    height16 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorMilitary.ConstructionCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ConstructionCost") + str40, str40 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorMilitary.ConstructionCost * 100.0f, 100) + str44, Images.construction, width11, height15 + height16, i67, buttonHeight8, width7));
                    height16 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorMilitary.AdministrationBuildingsCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("AdministrationBuildingsCost") + str40, str40 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorMilitary.AdministrationBuildingsCost * 100.0f, 100) + str44, Images.construction, width11, height15 + height16, i67, buttonHeight8, width7));
                    height16 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorMilitary.EconomyBuildingsCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get(TGqtTWl.AMJs) + str40, str40 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorMilitary.EconomyBuildingsCost * 100.0f, 100) + str44, Images.construction, width11, height15 + height16, i67, buttonHeight8, width7));
                    height16 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorMilitary.MilitaryBuildingsCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("MilitaryBuildingsCost") + str40, str40 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorMilitary.MilitaryBuildingsCost * 100.0f, 100) + str44, Images.construction, width11, height15 + height16, i67, buttonHeight8, width7));
                    height16 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorMilitary.InvestInEconomyCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("InvestInEconomyCost") + str40, str40 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorMilitary.InvestInEconomyCost * 100.0f, 100) + str44, Game_Calendar.IMG_ECONOMY_UP, width11, height15 + height16, i67, buttonHeight8, width7));
                    height16 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorMilitary.IncreaseTaxEfficiencyCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("IncreaseTaxEfficiencyCost") + str40, str40 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorMilitary.IncreaseTaxEfficiencyCost * 100.0f, 100) + str44, Images.taxUp, width11, height15 + height16, i67, buttonHeight8, width7));
                    height16 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorMilitary.IncreaseGrowthRateCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("IncreaseGrowthRateCost") + str40, str40 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorMilitary.IncreaseGrowthRateCost * 100.0f, 100) + str44, Images.populationUp, width11, height15 + height16, i67, buttonHeight8, width7));
                    height16 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorMilitary.DevelopInfrastructureCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("DevelopInfrastructureCost") + str40, str40 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorMilitary.DevelopInfrastructureCost * 100.0f, 100) + str44, Images.infrastructureUp, width11, height15 + height16, i67, buttonHeight8, width7));
                    height16 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorMilitary.ProductionEfficiency != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ProductionEfficiency") + str40, str43 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorMilitary.ProductionEfficiency, 100) + str44, Images.goods, width11, height15 + height16, i67, buttonHeight8, width7));
                    height16 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorMilitary.Research != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ResearchPerMonth") + str40, str43 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorMilitary.Research, 100), Game_Calendar.IMG_TECHNOLOGY, width11, height15 + height16, i67, buttonHeight8, width7));
                    height16 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorMilitary.MonthlyLegacy != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("MonthlyLegacy") + str40, str43 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorMilitary.MonthlyLegacy, 100), Images.legacy, width11, height15 + height16, i67, buttonHeight8, width7));
                    height16 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorMilitary.GeneralAttack != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("GeneralsAttack") + str40, str43 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorMilitary.GeneralAttack, 100), Images.attack, width11, height15 + height16, i67, buttonHeight8, width7));
                    height16 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorMilitary.GeneralDefense != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("GeneralsDefense") + str40, str43 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorMilitary.GeneralDefense, 100), Images.defense, width11, height15 + height16, i67, buttonHeight8, width7));
                    height16 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorMilitary.ArmyMaintenance != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ArmyMaintenance") + str40, str40 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorMilitary.ArmyMaintenance, 100) + str44, Images.armyMaintenance, width11, height15 + height16, i67, buttonHeight8, width7));
                    height16 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorMilitary.RecruitArmyCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ArmyRecruitmentCost") + str40, str40 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorMilitary.RecruitArmyCost, 100) + str44, Images.gold, width11, height15 + height16, i67, buttonHeight8, width7));
                    height16 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorMilitary.ConstructionTime != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ConstructionTime") + str40, str40 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorMilitary.ConstructionTime * 100.0f, 100) + str44, Images.buildTime, width11, height15 + height16, i67, buttonHeight8, width7));
                    height16 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorMilitary.IncreaseManpowerCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("IncreaseManpowerCost") + str40, str40 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorMilitary.IncreaseManpowerCost, 100) + str44, Game_Calendar.IMG_MANPOWER_UP, width11, height15 + height16, i67, buttonHeight8, width7));
                    height16 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorMilitary.RecruitmentTime != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("RecruitmentTime") + str40, str40 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorMilitary.RecruitmentTime, 100) + str44, Game_Calendar.IMG_MANPOWER_TIME, width11, height15 + height16, i67, buttonHeight8, width7));
                    height16 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorMilitary.LoanInterest != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("LoanInterest") + str40, str40 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorMilitary.LoanInterest, 100) + str44, Images.loan, width11, height15 + height16, i67, buttonHeight8, width7));
                    height16 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorMilitary.CoreCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("CoreConstruction") + str40, str40 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorMilitary.CoreCost, 100) + str44, Images.core, width11, height15 + height16, i67, buttonHeight8, width7));
                    height16 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorMilitary.ReligionCost != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ReligionConversionCost") + str40, str40 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorMilitary.ReligionCost, 100) + str44, Images.religion, width11, height15 + height16, i67, buttonHeight8, width7));
                    height16 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorMilitary.IncomeProduction != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("IncomeProduction") + str40, str43 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorMilitary.IncomeProduction, 100) + str44, Images.goods, width11, height15 + height16, i67, buttonHeight8, width7));
                    height16 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorMilitary.MaxManpower != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("MaximumManpower") + str40, str43 + ((int) Game.getCiv(iActiveCivID).advisorMilitary.MaxManpower), Game_Calendar.IMG_MANPOWER_UP, width11, height15 + height16, i67, buttonHeight8, width7));
                    height16 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorMilitary.UnitsAttack != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("UnitsAttack") + str40, str43 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorMilitary.UnitsAttack, 100), Images.attack, width11, height15 + height16, i67, buttonHeight8, width7));
                    height16 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorMilitary.UnitsDefense != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("UnitsDefense") + str40, str43 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorMilitary.UnitsDefense, 100), Images.defense, width11, height15 + height16, i67, buttonHeight8, width7));
                    height16 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorMilitary.RegimentsLimit != 0) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("RegimentsLimit") + str40, str43 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorMilitary.RegimentsLimit, 1), Images.regimentsLimit, width11, height15 + height16, i67, buttonHeight8, width7));
                    height16 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorMilitary.ImproveRelationsModifier != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ImproveRelationsModifier") + str40, str43 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorMilitary.ImproveRelationsModifier, 100) + str44, Images.relations, width11, height15 + height16, i67, buttonHeight8, width7));
                    height16 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorMilitary.ArmyMovementSpeed != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ArmyMovementSpeed") + str40, str43 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorMilitary.ArmyMovementSpeed, 100) + str44, Images.movementSpeed, width11, height15 + height16, i67, buttonHeight8, width7));
                    height16 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iActiveCivID).advisorMilitary.SiegeEffectiveness != 0.0f) {
                    arrayList2.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("SiegeEffectiveness") + str40, str43 + CFG.getPrecision2(Game.getCiv(iActiveCivID).advisorMilitary.SiegeEffectiveness * 100.0f, 100) + str44, Images.siege, width11, height15 + height16, i67, buttonHeight8, width7));
                    arrayList2.get(arrayList2.size() - 1).getHeight();
                    int i68 = CFG.PADDING;
                }
            }
            arrayList2.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(CFG.PADDING + Images.boxTitleBORDERWIDTH, height15 - CFG.PADDING, i39 - ((CFG.PADDING + Images.boxTitleBORDERWIDTH) * 2), ButtonAdvisor.getButtonHeight() + (CFG.PADDING * 2)));
            height8 = height15 + CFG.PADDING + ButtonAdvisor.getButtonHeight() + CFG.PADDING;
            if (iActiveCivID == Game.player.iCivID || Game.SPECTATOR_MODE) {
                arrayList2.add(new AnonymousClass62(Game.lang.get("BattleTactics"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height8, i39 - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ""));
                int height17 = height8 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                String str85 = str43;
                arrayList2.add(new AnonymousClass63(Game.lang.get(GameValues.battleTactics.BATTLE_TACTICS[Game.getCiv(iActiveCivID).getBattleTacticsID()]), Images.battle, i11, height17, ((i39 - i42) - (CFG.BUTTON_HEIGHT2 * 2)) - (CFG.PADDING * 2), CFG.BUTTON_HEIGHT2, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
                int width12 = i11 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                arrayList2.add(new AnonymousClass64((GameValues.battleTactics.BATTLE_TACTICS_ATTACK[Game.getCiv(iActiveCivID).getBattleTacticsID()] > 0 ? str85 : str40) + GameValues.battleTactics.BATTLE_TACTICS_ATTACK[Game.getCiv(iActiveCivID).getBattleTacticsID()], Images.attack, width12, height17, CFG.BUTTON_HEIGHT2, CFG.BUTTON_HEIGHT2, Game.getCiv(iActiveCivID).getBattleTacticsID()));
                arrayList2.add(new AnonymousClass65((GameValues.battleTactics.BATTLE_TACTICS_DEFENSE[Game.getCiv(iActiveCivID).getBattleTacticsID()] > 0 ? str85 : str40) + GameValues.battleTactics.BATTLE_TACTICS_DEFENSE[Game.getCiv(iActiveCivID).getBattleTacticsID()], Images.defense, width12 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING, height17, CFG.BUTTON_HEIGHT2, CFG.BUTTON_HEIGHT2, Game.getCiv(iActiveCivID).getBattleTacticsID()));
                height8 = height17 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
            }
            if (iActiveCivID == Game.player.iCivID) {
                arrayList2.add(new Text_Title_v2_TextLR(Game.lang.get("Military"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height8, i39 - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ""));
                int height18 = height8 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                String str86 = str42;
                StringBuilder sbAppend = new StringBuilder().append(Game.lang.get("ArmyControlledByAI")).append(str86);
                if (Game.player.allowAIMove) {
                    languageManager = Game.lang;
                    str45 = "On";
                } else {
                    languageManager = Game.lang;
                    str45 = "Off";
                }
                int i69 = i39 - i42;
                int i70 = i11;
                arrayList2.add(new AnonymousClass66(sbAppend.append(languageManager.get(str45)).toString(), Images.ai, i70, height18, i69, CFG.BUTTON_HEIGHT2, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
                int height19 = height18 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                arrayList2.add(new AnonymousClass67(Game.lang.get("Armies") + str86 + Game.lang.get("Colors"), Images.brush, i70, height19, i69, CFG.BUTTON_HEIGHT2, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
                height8 = height19 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                if (GameValues.colonization.ALLOW_COLONIZATION_BY_SPENDING_GOLD || (GameValues.colonization.ALLOW_COLONIZATION_BY_SPENDING_GOLD_PLAYER_TRIBAL && Game.ideologiesManager.getIdeology(Game.getCiv(Game.player.iCivID).getIdeologyID()).TRIBAL)) {
                    arrayList2.add(new Text_Title_v2_TextLR(Game.lang.get("Colonization"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height8, i39 - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ""));
                    int height20 = height8 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                    arrayList2.add(new AnonymousClass68(Game.lang.get("Colonize") + str86 + Game.lang.get("ChooseAProvince"), Images.populationGrowth, i11, height20, i69, CFG.BUTTON_HEIGHT2, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
                    height8 = height20 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                }
            }
            i = i39;
        } else {
            int i71 = width;
            String str87 = str;
            if (i28 == 11) {
                int i72 = i71 - (i15 * 2);
                arrayList2.add(new AnonymousClass69(Game.lang.get("Back"), Images.council, i15, height8, i72, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
                int height21 = height8 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                arrayList2.add(new Text_Title_v2_TextLR(Game.lang.get(Game_Ages.getReleaseAVassal()), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height21, i71 - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ""));
                height8 = height21 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                int size = arrayList2.size();
                List<Game.VassalsToRelease> vassalsToRelease = Game.getVassalsToRelease(iActiveCivID);
                if (vassalsToRelease.size() > 0) {
                    int i73 = (int) ((i72 - CFG.PADDING) * 0.25f);
                    int i74 = (int) ((i72 - CFG.PADDING) * 0.75f);
                    int i75 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
                    while (vassalsToRelease.size() > 0) {
                        int i76 = 0;
                        for (int size2 = vassalsToRelease.size() - 1; size2 > 0; size2--) {
                            if (CFG.compareAlphabetic_TwoString(Game.getCiv(vassalsToRelease.get(i76).iCivID).getCivName(), Game.getCiv(vassalsToRelease.get(size2).iCivID).getCivName())) {
                                i76 = size2;
                            }
                        }
                        String str88 = str87 + Game.getCiv(vassalsToRelease.get(i76).iCivID).getCivName();
                        int i77 = CFG.FONT_REGULAR_SMALL;
                        int i78 = CFG.PADDING * 2;
                        int i79 = vassalsToRelease.get(i76).iCivID;
                        int i80 = size;
                        int i81 = i76;
                        int i82 = height8;
                        int i83 = i73;
                        int i84 = height8;
                        List<Game.VassalsToRelease> list = vassalsToRelease;
                        arrayList2.add(new AnonymousClass70(str88, i77, i78, i15, i82, i74, i75, i79));
                        arrayList2.add(new AnonymousClass71(str87 + list.get(i81).iNumOfProvinces, CFG.FONT_REGULAR_SMALL, -1, i15 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING, i84, i83, i75, list.get(i81).iCivID));
                        int height22 = i84 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                        list.remove(i81);
                        vassalsToRelease = list;
                        height8 = height22;
                        size = i80;
                        i74 = i74;
                        i73 = i83;
                        i71 = i71;
                    }
                }
                i = i71;
                if (size == arrayList2.size()) {
                    arrayList2.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i15, height8, i72, CFG.BUTTON_HEIGHT2));
                    height = arrayList2.get(arrayList2.size() - 1).getHeight();
                    i2 = CFG.PADDING;
                    height8 += height + i2;
                }
            } else {
                i = i71;
                if (i28 == 1) {
                    int i85 = i - (i15 * 2);
                    arrayList2.add(new AnonymousClass72(Game.lang.get(Game_Ages.getReleaseAVassal()), Images.vassal, i15, height8, i85, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
                    int height23 = height8 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                    if (Game.getCiv(Game.player.iCivID).getPuppetOfCivID() != Game.player.iCivID) {
                        arrayList2.add(new Text_Title_v2_TextLR(Game.lang.get(Game_Ages.getLord()), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height23, i - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), cIUGJCqyPXfp.QckreoFll));
                        int height24 = height23 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                        int i86 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
                        int i87 = (i85 - (CFG.PADDING * 6)) / 7;
                        int i88 = CFG.BUTTON_HEIGHT;
                        int i89 = CFG.PADDING + i86 + i88;
                        int puppetOfCivID = Game.getCiv(Game.player.iCivID).getPuppetOfCivID();
                        i3 = i15;
                        arrayList2.add(new AnonymousClass73(Game.getCiv(puppetOfCivID).getCivName(), CFG.FONT_REGULAR, CFG.PADDING * 2, i15, height24, i85, i86, puppetOfCivID, Images.population, CFG.getNumberWithSpaces(str87 + Game.getCiv(puppetOfCivID).getPopulationTotal())));
                        int height25 = height24 + arrayList2.get(arrayList2.size() - 1).getHeight();
                        int i90 = i87 * 2;
                        arrayList2.add(new AnonymousClass74(Game.lang.get(XjthpFh.dRJsvzBFspvj), CFG.FONT_REGULAR_SMALL, Images.tax, i3, height25, i90 + CFG.PADDING, i88, puppetOfCivID));
                        int width13 = i3 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                        str2 = str87;
                        arrayList2.add(new AnonymousClass75(str87 + CFG.getPrecision2(Game.getIncomeFromVassal(puppetOfCivID, Game.player.iCivID, Game.getCiv(puppetOfCivID).diplomacy.getVassal_TributeLevel(Game.player.iCivID)), 100), CFG.FONT_REGULAR_SMALL, Images.gold, width13, height25, i90 + CFG.PADDING, i88, puppetOfCivID));
                        int width14 = width13 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                        arrayList2.add(new AnonymousClass76(Game.lang.get("Manpower"), CFG.FONT_REGULAR_SMALL, Game_Calendar.IMG_MANPOWER, width14, height25, i90 + CFG.PADDING, i88, puppetOfCivID));
                        arrayList2.add(new AnonymousClass77(str2 + CFG.getPrecision2(Game.getManpowerFromVassal_INFO(puppetOfCivID, Game.player.iCivID, Game.getCiv(puppetOfCivID).diplomacy.getVassal_ManpowerLevel(Game.player.iCivID)), 1), CFG.FONT_REGULAR_SMALL, Game_Calendar.IMG_MANPOWER_UP, width14 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING, height25, i87, i88, puppetOfCivID));
                        arrayList2.get(arrayList2.size() - 1).getWidth();
                        int i91 = CFG.PADDING;
                        int height26 = height25 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                        i5 = i;
                        i4 = i16;
                        arrayList2.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(i4, height26 - i89, i5 - (i16 * 2), i89));
                        height23 = height26 + CFG.PADDING;
                    } else {
                        str2 = str87;
                        i3 = i15;
                        i4 = i16;
                        i5 = i;
                    }
                    arrayList2.add(new Text_Title_v2_TextLR(Game.lang.get(Game_Ages.getManageVassals()), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height23, i5 - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), str2 + CFG.getNumberWithSpaces(str2 + Game.getCiv(Game.player.iCivID).diplomacy.iVassalsSize)));
                    int height27 = height23 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                    int size3 = arrayList2.size();
                    try {
                        if (Game.getCiv(Game.player.iCivID).diplomacy.iVassalsSize > 0) {
                            Graph_Vertical.graphCivs.clear();
                            for (int i92 = 0; i92 < Game.getCiv(Game.player.iCivID).diplomacy.iVassalsSize; i92++) {
                                Graph_Vertical.graphCivs.add(Integer.valueOf(Game.getCiv(Game.player.iCivID).diplomacy.lVassals.get(i92).c));
                            }
                            if (Graph_Vertical.graphCivs.size() == 1 || GameValues.court.COUNCIL_VIEW_VASSAL_GRAPH_INCLUDE_PLAYER) {
                                Graph_Vertical.graphCivs.add(Integer.valueOf(Game.player.iCivID));
                            }
                            try {
                                if (Graph_Vertical.graphCivs.isEmpty()) {
                                    size3 = size3;
                                } else {
                                    if (Game.oR.nextInt(100) < 50) {
                                        arrayList2.add(new AnonymousClass78(Graph_Vertical_Data_Type.CIVS_LIST_PROVINCES, Game.lang.get("Civilizations"), Game.lang.get("Civilizations"), i3, height27, i85, (int) (i5 * 0.35f), true));
                                    } else {
                                        arrayList2.add(new AnonymousClass79(Graph_Vertical_Data_Type.CIVS_LIST_POPULATION, Game.lang.get("Civilizations"), Game.lang.get("Civilizations"), i3, height27, i85, (int) (i5 * 0.35f), true));
                                    }
                                    height27 += arrayList2.get(arrayList2.size() - 1).getHeight();
                                }
                                int i93 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
                                int i94 = (i85 - (CFG.PADDING * 6)) / 7;
                                int i95 = CFG.BUTTON_HEIGHT;
                                int i96 = (CFG.PADDING * 2) + i93 + (i95 * 2);
                                float incomeFromVassal = 0.0f;
                                float manpowerFromVassal_INFO = 0.0f;
                                for (int i97 = 0; i97 < Game.getCiv(Game.player.iCivID).diplomacy.iVassalsSize; i97++) {
                                    incomeFromVassal += Game.getIncomeFromVassal(Game.player.iCivID, Game.getCiv(Game.player.iCivID).diplomacy.lVassals.get(i97).c, Game.getCiv(Game.player.iCivID).diplomacy.lVassals.get(i97).tL);
                                    manpowerFromVassal_INFO = (float) (((double) manpowerFromVassal_INFO) + Game.getManpowerFromVassal_INFO(Game.player.iCivID, Game.getCiv(Game.player.iCivID).diplomacy.lVassals.get(i97).c, Game.getCiv(Game.player.iCivID).diplomacy.lVassals.get(i97).mL));
                                }
                                int width15 = ImageManager.getImage(Images.gold).getWidth();
                                int i98 = (i85 - CFG.PADDING) / 2;
                                int i99 = CFG.TEXT_HEIGHT + (CFG.PADDING * 4);
                                int i100 = i4;
                                float f = manpowerFromVassal_INFO;
                                i = i5;
                                int i101 = i96;
                                try {
                                    arrayList2.add(new AnonymousClass80("", (incomeFromVassal > 0.0f ? "+" : str2) + CFG.getPrecision2(incomeFromVassal, 100), Images.gold, i3, height27, i98, i99, width15));
                                    arrayList2.add(new AnonymousClass81("", (f > 0.0f ? "+" : str2) + CFG.getPrecision2(f, 1), Game_Calendar.IMG_MANPOWER, i3 + i98 + CFG.PADDING, height27, i98, i99, width15));
                                    int height28 = height27 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                                    ArrayList arrayList3 = new ArrayList();
                                    for (int i102 = 0; i102 < Game.getCiv(Game.player.iCivID).diplomacy.iVassalsSize; i102++) {
                                        if (Game.getCiv(Game.getCiv(Game.player.iCivID).diplomacy.lVassals.get(i102).c).getNumOfProvinces() > 0) {
                                            arrayList3.add(Integer.valueOf(i102));
                                        }
                                    }
                                    int i103 = height28;
                                    while (!arrayList3.isEmpty()) {
                                        try {
                                            int i104 = 0;
                                            for (int size4 = arrayList3.size() - 1; size4 > 0; size4--) {
                                                if (Game.getCiv(Game.getCiv(Game.player.iCivID).diplomacy.lVassals.get(((Integer) arrayList3.get(size4)).intValue()).c).getNumOfProvinces() > Game.getCiv(Game.getCiv(Game.player.iCivID).diplomacy.lVassals.get(((Integer) arrayList3.get(i104)).intValue()).c).getNumOfProvinces()) {
                                                    i104 = size4;
                                                }
                                            }
                                            if (Game.getCiv(Game.getCiv(Game.player.iCivID).diplomacy.lVassals.get(((Integer) arrayList3.get(i104)).intValue()).c).getNumOfProvinces() > 0) {
                                                int i105 = Game.getCiv(Game.player.iCivID).diplomacy.lVassals.get(((Integer) arrayList3.get(i104)).intValue()).c;
                                                int i106 = i104;
                                                ArrayList arrayList4 = arrayList3;
                                                int i107 = i100;
                                                arrayList2.add(new AnonymousClass82(Game.getCiv(i105).getCivName(), CFG.FONT_REGULAR, CFG.PADDING * 2, i3, i103, i85, i93, i105, Images.population, CFG.getNumberWithSpaces(str2 + Game.getCiv(i105).getPopulationTotal())));
                                                int height29 = i103 + arrayList2.get(arrayList2.size() - 1).getHeight();
                                                try {
                                                    int i108 = i94 * 2;
                                                    arrayList2.add(new AnonymousClass83(Game.lang.get("Tribute"), CFG.FONT_REGULAR_SMALL, Images.tax, i3, height29, i108 + CFG.PADDING, i95, i105));
                                                    int width16 = i3 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                                                    arrayList2.add(new AnonymousClass84(Game.lang.get("Low"), CFG.FONT_REGULAR_SMALL, Images.gold, width16, height29, i94, i95, i105, 0));
                                                    int width17 = width16 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                                                    arrayList2.add(new AnonymousClass85(Game.lang.get("Medium"), CFG.FONT_REGULAR_SMALL, Images.gold, width17, height29, i94, i95, i105, 1));
                                                    int width18 = width17 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                                                    arrayList2.add(new AnonymousClass86(Game.lang.get("High"), CFG.FONT_REGULAR_SMALL, Images.gold, width18, height29, i94, i95, i105, 2));
                                                    arrayList2.add(new AnonymousClass87(str2 + CFG.getPrecision2(Game.getIncomeFromVassal(Game.player.iCivID, i105, Game.getCiv(Game.player.iCivID).diplomacy.getVassal_TributeLevel(i105)), 100), CFG.FONT_REGULAR_SMALL, Images.gold, width18 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING, height29, i108 + CFG.PADDING, i95, i105));
                                                    arrayList2.get(arrayList2.size() - 1).setCurrent(Game.getCiv(Game.player.iCivID).diplomacy.getVassal_TributeLevel(i105));
                                                    height29 += i95 + CFG.PADDING;
                                                    arrayList2.add(new AnonymousClass88(Game.lang.get("Manpower"), CFG.FONT_REGULAR_SMALL, Game_Calendar.IMG_MANPOWER, i3, height29, i108 + CFG.PADDING, i95, i105));
                                                    int width19 = i3 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                                                    arrayList2.add(new AnonymousClass89(Game.lang.get("Low"), CFG.FONT_REGULAR_SMALL, Game_Calendar.IMG_MANPOWER, width19, height29, i94, i95, i105, 0));
                                                    int width20 = width19 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                                                    arrayList2.add(new AnonymousClass90(Game.lang.get("Medium"), CFG.FONT_REGULAR_SMALL, Game_Calendar.IMG_MANPOWER, width20, height29, i94, i95, i105, 1));
                                                    int width21 = width20 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                                                    arrayList2.add(new AnonymousClass91(Game.lang.get("High"), CFG.FONT_REGULAR_SMALL, Game_Calendar.IMG_MANPOWER, width21, height29, i94, i95, i105, 2));
                                                    int width22 = width21 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                                                    str2 = str2;
                                                    arrayList2.add(new AnonymousClass92(str2 + CFG.getPrecision2(Game.getManpowerFromVassal_INFO(Game.player.iCivID, i105, Game.getCiv(Game.player.iCivID).diplomacy.getVassal_ManpowerLevel(i105)), 1), CFG.FONT_REGULAR_SMALL, Game_Calendar.IMG_MANPOWER_UP, width22, height29, i94, i95, i105));
                                                    arrayList2.get(arrayList2.size() - 1).setCurrent(Game.getCiv(Game.player.iCivID).diplomacy.getVassal_ManpowerLevel(i105));
                                                    arrayList2.add(new AnonymousClass93(Game.lang.get("Wars"), CFG.FONT_REGULAR_SMALL, Images.war, width22 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING, height29, i94, i95, i105, Game.getCiv(Game.player.iCivID).diplomacy.getVassal_CanDeclareWar(i105) ? 1 : 0));
                                                    arrayList2.get(arrayList2.size() - 1).getWidth();
                                                    int i109 = CFG.PADDING;
                                                    height27 = height29 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                                                    i7 = i101;
                                                    i6 = i107;
                                                    arrayList2.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(i6, height27 - i7, i - (i107 * 2), i7));
                                                    i103 = height27 + CFG.PADDING;
                                                    arrayList = arrayList4;
                                                    i104 = i106;
                                                } catch (Exception e) {
                                                    e = e;
                                                    height27 = height29;
                                                    CFG.exceptionStack(e);
                                                    if (size3 == arrayList2.size()) {
                                                        arrayList2.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i3, height27, i85, CFG.BUTTON_HEIGHT2));
                                                        height27 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                                                    }
                                                    height8 = height27;
                                                    int i110 = height2 + InGame_CourtOptions.menuH;
                                                    int iMin = Math.min(height8, (CFG.GAME_HEIGHT - i110) - (CFG.PADDING * 3));
                                                    int i111 = i;
                                                    arrayList2.add(new Empty(0, 0, i111, Math.max(height8, iMin)));
                                                    initMenu(null, otherMenuPosX, i110, i111, iMin, arrayList2, false, false);
                                                    this.drawScrollPositionAlways = false;
                                                    Game.menuManager.setInGame_CivOptions_Title(Game.lang.get(GameValues.court.COUNCIL_NAME));
                                                }
                                            } else {
                                                i6 = i100;
                                                i7 = i101;
                                                arrayList = arrayList3;
                                            }
                                            arrayList.remove(i104);
                                            arrayList3 = arrayList;
                                            i101 = i7;
                                            i100 = i6;
                                            i93 = i93;
                                        } catch (Exception e2) {
                                            e = e2;
                                            height27 = i103;
                                        }
                                    }
                                    height27 = i103;
                                } catch (Exception e3) {
                                    e = e3;
                                }
                            } catch (Exception e4) {
                                e = e4;
                                i = i5;
                                CFG.exceptionStack(e);
                                if (size3 == arrayList2.size()) {
                                    arrayList2.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i3, height27, i85, CFG.BUTTON_HEIGHT2));
                                    height27 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                                }
                                height8 = height27;
                                int i112 = height2 + InGame_CourtOptions.menuH;
                                int iMin2 = Math.min(height8, (CFG.GAME_HEIGHT - i112) - (CFG.PADDING * 3));
                                int i113 = i;
                                arrayList2.add(new Empty(0, 0, i113, Math.max(height8, iMin2)));
                                initMenu(null, otherMenuPosX, i112, i113, iMin2, arrayList2, false, false);
                                this.drawScrollPositionAlways = false;
                                Game.menuManager.setInGame_CivOptions_Title(Game.lang.get(GameValues.court.COUNCIL_NAME));
                            }
                        } else {
                            size3 = size3;
                            i = i5;
                        }
                    } catch (Exception e5) {
                        e = e5;
                        size3 = size3;
                    }
                    if (size3 == arrayList2.size()) {
                        arrayList2.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i3, height27, i85, CFG.BUTTON_HEIGHT2));
                        height27 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                    }
                    height8 = height27;
                } else if (i28 == 2) {
                    arrayList2.add(new Text_Title_v2_TextLR(Game.lang.get("Tutorial"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height8, i - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ""));
                    int height30 = height8 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                    int i114 = i - (i15 * 2);
                    arrayList2.add(new AnonymousClass94(Game.lang.get("Encyclopedia"), Images.encyclopedia, i15, height30, i114, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
                    int height31 = height30 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                    arrayList2.add(new AnonymousClass95(Game.lang.get("Goods"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height31, i - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), HTGgowNjn.JjTsLITdA));
                    int height32 = height31 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                    arrayList2.add(new AnonymousClass96(Game.lang.get("LargestGoodsProducers"), Images.goods, i15, height32, i114, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
                    int height33 = height32 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                    arrayList2.add(new Text_Title_v2_TextLR(Game.lang.get("Search"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height33, i - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ""));
                    int height34 = height33 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                    arrayList2.add(new AnonymousClass97(Game.lang.get("Search") + ": " + Game.lang.get("Civilizations"), Images.world, i15, height34, i114, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
                    int height35 = height34 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                    arrayList2.add(new AnonymousClass98(Game.lang.get("Search") + ": " + Game.lang.get("Provinces"), Images.world, i15, height35, i114, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
                    int height36 = height35 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                    arrayList2.add(new Text_Title_v2_TextLR(Game.lang.get(cIUGJCqyPXfp.tSzLUi), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height36, i - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ""));
                    int height37 = height36 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                    arrayList2.add(new AnonymousClass99(Game.lang.get("Missions") + ": " + Game.lang.get("GoldenAge"), Images.goldenGold, i15, height37, i114, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
                    int height38 = height37 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                    arrayList2.add(new AnonymousClass100(Game.lang.get("Statistics"), Images.stats, i15, height38, i114, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
                    int height39 = height38 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                    arrayList2.add(new AnonymousClass101(Game.lang.get("Graph"), Images.stats, i15, height39, i114, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
                    int height40 = height39 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                    arrayList2.add(new AnonymousClass102(Game.lang.get("CivilizationBonuses"), CivilizationRanking.getCivilizationRank_IMG(Game.player.iCivID), i15, height40, i114, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
                    int height41 = height40 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                    arrayList2.add(new Text_Title_v2_TextLR(Game.lang.get("More"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height41, i - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ""));
                    int height42 = height41 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                    arrayList2.add(new AnonymousClass103(Game.lang.get("Console"), Images.console, i15, height42, i114, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
                    int height43 = height42 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                    arrayList2.add(new AnonymousClass104(Game.lang.get("Hide") + ": UI", Images.x, i15, height43, i114, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
                    int height44 = height43 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                    arrayList2.add(new AnonymousClass105(Game.lang.get("Hide") + ": UI - " + Game.lang.get("Date"), Images.x, i15, height44, i114, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
                    int height45 = height44 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                    arrayList2.add(new Text_Title_v2_TextLR(Game.lang.get("Diplomacy"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height45, i - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ""));
                    int height46 = height45 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                    arrayList2.add(new AnonymousClass106(Game.lang.get("CurrentWars"), Images.war, i15, height46, i114, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
                    int height47 = height46 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                    arrayList2.add(new AnonymousClass107(Game.lang.get("Alliances"), Images.alliance, i15, height47, i114, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
                    int height48 = height47 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                    arrayList2.add(new AnonymousClass108(Game.lang.get(Game_Ages.getVassals()), Images.vassal, i15, height48, i114, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
                    int height49 = height48 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                    arrayList2.add(new AnonymousClass109(Game.lang.get("DefensivePacts"), Images.defensivePact, i15, height49, i114, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
                    int height50 = height49 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                    arrayList2.add(new AnonymousClass110(Game.lang.get("NonAggressionPacts"), Images.nonAggression, i15, height50, i114, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
                    height8 = height50 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                    arrayList2.add(new AnonymousClass111(Game.lang.get("Truces"), Images.truce, i15, height8, i114, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
                    height = arrayList2.get(arrayList2.size() - 1).getHeight();
                    i2 = CFG.PADDING;
                    height8 += height + i2;
                }
            }
        }
        int i115 = height2 + InGame_CourtOptions.menuH;
        int iMin3 = Math.min(height8, (CFG.GAME_HEIGHT - i115) - (CFG.PADDING * 3));
        int i116 = i;
        arrayList2.add(new Empty(0, 0, i116, Math.max(height8, iMin3)));
        initMenu(null, otherMenuPosX, i115, i116, iMin3, arrayList2, false, false);
        this.drawScrollPositionAlways = false;
        Game.menuManager.setInGame_CivOptions_Title(Game.lang.get(GameValues.court.COUNCIL_NAME));
    }

    public static final void actionSearchProvinces() {
        inCourt = false;
        inSearchProvinces = true;
        InGame_CourtOptions.disableAllViews();
        InGame_Court_WorldSearch.sSearch = "";
        Game.menuManager.rebuildInGame_CourtSearch();
        Game.menuManager.setVisibleInGame_Court(true);
        lTime = 0L;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void actionCloseMenu() {
        super.actionCloseMenu();
        if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_COLONIZE_CHOOSE_PROVINCE) {
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - InGame_CourtOptions.menuH) + i2, getWidth(), getHeight() + InGame_CourtOptions.menuH + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop500, Images.insideBot500);
        ImageManager.getImage(Images.rulerOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.rulerOver).getWidth() / 2)) + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.rulerOver).getHeight()));
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
        lTime = CFG.currentTimeMillis;
        lTime2 = CFG.currentTimeMillis;
        if (z || Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_COLONIZE_CHOOSE_PROVINCE) {
            return;
        }
        Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
    }
}
