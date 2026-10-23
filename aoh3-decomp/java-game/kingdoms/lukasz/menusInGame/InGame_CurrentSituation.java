package aoc.kingdoms.lukasz.menusInGame;

import androidx.arch.core.ht.qIuEvFbUtcea;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.allianceHRE.JgPF.HTGgowNjn;
import aoc.kingdoms.lukasz.map.civilization.stats.LQy.lJxd;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter2;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonCurrentSituation;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Clear;
import aoc.kingdoms.lukasz.menusInGame.AtomicNukes.InGame_Nukes;
import aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_InvestInEconomy;
import aoc.kingdoms.lukasz.menusInGame.Court.zHJ.lOow;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g3d.model.data.xlbt.LBhZogys;
import com.badlogic.gdx.net.otUh.aBEBOpwLZcQFCZ;
import com.pairip.licensecheck.CohD.CaiJWNfqszJNZ;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_CurrentSituation extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static long lTime;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CurrentSituation$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonCurrentSituation {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_CurrentSituation(false);
            Game.menuManager.rebuildInGame_TechnologyChoose(false, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ChooseResearch"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CurrentSituation$10, reason: invalid class name */
    class AnonymousClass10 extends ButtonCurrentSituation {
        AnonymousClass10(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_CurrentSituation(false);
            InGame_Legacies.iActiveCivID = Game.player.iCivID;
            Game.menuManager.setViewIDWithoutAnimation(View.IN_GAME_LEGACIES);
            Game.menuManager.setOrderOfMenu_InGameLegacies();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("CivilizationLegacy"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.legacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CurrentSituation$11, reason: invalid class name */
    class AnonymousClass11 extends ButtonCurrentSituation {
        AnonymousClass11(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_CurrentSituation(false);
            InGame.action1();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(GameValues.court.COUNCIL_NAME), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.council, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CurrentSituation$12, reason: invalid class name */
    class AnonymousClass12 extends ButtonCurrentSituation {
        AnonymousClass12(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_CurrentSituation(false);
            InGame.action1();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(GameValues.court.COUNCIL_NAME), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.council, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CurrentSituation$13, reason: invalid class name */
    class AnonymousClass13 extends ButtonCurrentSituation {
        AnonymousClass13(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_CurrentSituation(false);
            Game.menuManager.rebuildInGame_Armies(true, false);
            Game.menuManager.setVisibleInGame_Armies(true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Armies"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            for (int i = 0; i < Game.getCiv(Game.player.iCivID).iArmyPositionSize; i++) {
                for (int i2 = 0; i2 < Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(i)).getArmySize(); i2++) {
                    if (Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(i)).getArmy(i2).civID == Game.player.iCivID && Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(i)).getArmy(i2).armyGeneral == null) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Army") + ": ", CFG.FONT_REGULAR_SMALL));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getProvince(Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(i)).getArmy(i2).provinceID).getProvinceName(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    }
                }
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CurrentSituation$14, reason: invalid class name */
    class AnonymousClass14 extends ButtonCurrentSituation {
        AnonymousClass14(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
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
            this.menuElementHover = InGame_Court_Government.getHoverCapitalCity();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CurrentSituation$15, reason: invalid class name */
    class AnonymousClass15 extends ButtonCurrentSituation {
        AnonymousClass15(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).getSupremeCourtLevel() >= Game.getSupremeCourt_MaxLvl(Game.player.iCivID)) {
                Game.menuManager.addToastInsufficient(Game.lang.get(HTGgowNjn.DDFvcrxUEDipk) + ": ", LBhZogys.iHyZgVX + Game.getCiv(Game.player.iCivID).getSupremeCourtLevel() + " / " + Game.getSupremeCourt_MaxLvl(Game.player.iCivID), Images.stability);
            } else if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 4) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_UpgradeSupremeCourt();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Budget.getHoverCorruption();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CurrentSituation$16, reason: invalid class name */
    class AnonymousClass16 extends ButtonCurrentSituation {
        AnonymousClass16(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Court.iActiveCivID = Game.player.iCivID;
            Game.menuManager.rebuildInGame_Government();
            Game.menuManager.setVisibleInGame_Court(true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(lJxd.mLCtPtPAsRox), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CurrentSituation$17, reason: invalid class name */
    class AnonymousClass17 extends ButtonCurrentSituation {
        AnonymousClass17(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Generals.backButton = false;
            Game.menuManager.rebuildInGame_Generals();
            Game.menuManager.setVisibleInGame_Generals(true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("MilitaryAcademyForGenerals"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.general, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CurrentSituation$18, reason: invalid class name */
    class AnonymousClass18 extends ButtonCurrentSituation {
        AnonymousClass18(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).getNuclearReactorLevel() >= Game.getNuclearReactor_MaxLvl(Game.player.iCivID)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("MaximumLevel") + ": ", "" + Game.getCiv(Game.player.iCivID).getNuclearReactorLevel() + " / " + Game.getNuclearReactor_MaxLvl(Game.player.iCivID), Images.nuke);
            } else if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 5) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_UpgradeNuclearReactor();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Nukes.getHoverNuclearReactor();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CurrentSituation$19, reason: invalid class name */
    class AnonymousClass19 extends ButtonCurrentSituation {
        AnonymousClass19(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_CurrentSituation_Wonders();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Wonders"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.mapModesWonders, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CurrentSituation$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonCurrentSituation {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_CurrentSituation(false);
            InGame_Court_InvestInEconomy.CLICK_X_TIMES = 1;
            InGame_Court.iActiveCivID = Game.player.iCivID;
            Game.menuManager.rebuildInGame_InvestInEconomy();
            Game.menuManager.setVisibleInGame_Court(true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("InvestInEconomy"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_ECONOMY, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaximumAmountOfGold") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(Game.getCiv(Game.player.iCivID).fGold, 1) + " / " + CFG.getPrecision2(Game.getMaxAmountOfGold(Game.player.iCivID), 1), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(" = " + CFG.getPrecision2(GameValues.budget.MAX_AMOUNT_OF_GOLD_MIN, 1) + " + " + Game.lang.get("TotalIncome") + " * " + CFG.getPrecision2(GameValues.budget.MAX_AMOUNT_OF_GOLD_PER_INCOME, 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CurrentSituation$20, reason: invalid class name */
    class AnonymousClass20 extends MenuTitleIMG_FlagCenter2 {
        AnonymousClass20(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter2
        public int getFlagCivID() {
            return Game.player.iCivID;
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_CurrentSituation.lTime;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CurrentSituation$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonCurrentSituation {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CourtOptions2.actionMissions();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Missions") + qIuEvFbUtcea.KHMVu, CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear("" + Game.lang.get("Available"), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.missions, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CurrentSituation$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonCurrentSituation {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_CurrentSituation(false);
            InGame_Civ.actionRivals();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ChooseYourRivals"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.rivals, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CurrentSituation$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonCurrentSituation {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Court.iActiveCivID = Game.player.iCivID;
            Game.menuManager.rebuildInGame_LawsCourt();
            Game.menuManager.setVisibleInGame_Court(true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Law") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear("" + Game.lang.get("Unlocked"), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.law, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CurrentSituation$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonCurrentSituation {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_CurrentSituation(false);
            Game.menuManager.rebuildInGame_CivilizationAdvantages(Game.player.iCivID);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(CaiJWNfqszJNZ.xCZOUwZu), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.advantages, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CurrentSituation$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonCurrentSituation {
        AnonymousClass7(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_CurrentSituation(false);
            Game.menuManager.rebuildInGame_Budget();
            Game.menuManager.setVisibleInGame_Budget(true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(lOow.AViVnBRGUp), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Inflation") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).getInflation() * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.inflation, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CurrentSituation$8, reason: invalid class name */
    class AnonymousClass8 extends ButtonCurrentSituation {
        AnonymousClass8(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Court.iActiveCivID = Game.player.iCivID;
            Game.menuManager.rebuildInGame_Core();
            Game.menuManager.setVisibleInGame_Court(true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("CoreConstruction"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.core, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            int i = 0;
            for (int numOfProvinces = Game.getCiv(Game.player.iCivID).getNumOfProvinces() - 1; numOfProvinces >= 0; numOfProvinces--) {
                if (!Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(numOfProvinces)).isOccupied() && !Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(numOfProvinces)).haveACore(Game.player.iCivID) && Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(numOfProvinces)).coreCreation == null) {
                    i++;
                }
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Provinces") + aBEBOpwLZcQFCZ.JIrDPkdDu, CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + i, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.core, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CurrentSituation$9, reason: invalid class name */
    class AnonymousClass9 extends ButtonCurrentSituation {
        AnonymousClass9(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Court.iActiveCivID = Game.player.iCivID;
            Game.menuManager.rebuildInGame_Religion();
            Game.menuManager.setVisibleInGame_Court(true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("DifferentReligion"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.religion, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            int i = 0;
            for (int numOfProvinces = Game.getCiv(Game.player.iCivID).getNumOfProvinces() - 1; numOfProvinces >= 0; numOfProvinces--) {
                if (!Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(numOfProvinces)).isOccupied() && Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(numOfProvinces)).getReligion() != Game.getCiv(Game.player.iCivID).getReligionID() && Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(numOfProvinces)).religionConversion == null) {
                    i++;
                }
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Provinces") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + i, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.religion, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    public InGame_CurrentSituation() {
        int i;
        String str;
        ArrayList arrayList = new ArrayList();
        int i2 = (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH;
        ImageManager.getImage(Images.title2).getHeight();
        int width = ImageManager.getImage(Images.insideTop).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height = ImageManager.getImage(Images.title1Red).getHeight() + ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int height2 = CFG.PADDING * 2;
        int i3 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT2 : CFG.BUTTON_HEIGHT3;
        int width2 = ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4);
        if (Game.player.currSituation.noActiveResearch) {
            arrayList.add(new AnonymousClass1(Game.lang.get("NoActiveResearch"), Game_Calendar.IMG_TECHNOLOGY, i2, height2, width - (i2 * 2), i3, width2, true));
            height2 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            i = 1;
        } else {
            i = 0;
        }
        if (Game.player.currSituation.maxAmountOfGold) {
            int i4 = i + 1;
            arrayList.add(new AnonymousClass2(Game.lang.get("MaximumAmountOfGold"), Images.gold, i2, height2, width - (i2 * 2), i3, width2, i % 2 == 0));
            height2 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            i = i4;
        }
        if (Game.player.currSituation.missionCanBeUnlocked) {
            int i5 = i + 1;
            str = ": ";
            arrayList.add(new AnonymousClass3(Game.lang.get("Missions") + ": " + Game.lang.get("Available"), Images.missions, i2, height2, width - (i2 * 2), i3, width2, i % 2 == 0));
            height2 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            i = i5;
        } else {
            str = ": ";
        }
        if (Game.player.currSituation.chooseRivals) {
            int i6 = i + 1;
            arrayList.add(new AnonymousClass4(Game.lang.get(qIuEvFbUtcea.SvOAWR) + str + Game.getCiv(Game.player.iCivID).diplomacy.rivals.size() + "/" + GameValues.rivals.RIVALS_LIMIT, Images.rivals, i2, height2, width - (i2 * 2), i3, width2, i % 2 == 0));
            height2 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            i = i6;
        }
        if (Game.player.currSituation.newLawAvailable) {
            int i7 = i + 1;
            arrayList.add(new AnonymousClass5(Game.lang.get("Law") + str + Game.lang.get("Unlocked"), Images.law, i2, height2, width - (i2 * 2), i3, width2, i % 2 == 0));
            height2 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            i = i7;
        }
        if (Game.player.currSituation.availableAdvantage) {
            String str2 = Game.lang.get("AdvantagePoints") + str + Game.getCiv(Game.player.iCivID).getAdvantagePoints();
            int i8 = i + 1;
            arrayList.add(new AnonymousClass6(str2, Images.advantages, i2, height2, width - (i2 * 2), i3, width2, i % 2 == 0));
            height2 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            i = i8;
        }
        if (Game.player.currSituation.highInflation) {
            int i9 = i + 1;
            arrayList.add(new AnonymousClass7(Game.lang.get("HighInflation"), Images.inflation, i2, height2, width - (i2 * 2), i3, width2, i % 2 == 0));
            height2 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            i = i9;
        }
        if (Game.player.currSituation.nonCoreProvinces) {
            int i10 = i + 1;
            arrayList.add(new AnonymousClass8(Game.lang.get("NonCoreProvince"), Images.core, i2, height2, width - (i2 * 2), i3, width2, i % 2 == 0));
            height2 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            i = i10;
        }
        if (Game.player.currSituation.differentReligionProvinces) {
            int i11 = i + 1;
            arrayList.add(new AnonymousClass9(Game.lang.get("DifferentReligion"), Images.religion, i2, height2, width - (i2 * 2), i3, width2, i % 2 == 0));
            height2 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            i = i11;
        }
        if (Game.player.currSituation.availableCivilizationLegacy) {
            int i12 = i + 1;
            arrayList.add(new AnonymousClass10(Game.lang.get("AvailableCivilizationLegacy"), Images.legacy, i2, height2, width - (i2 * 2), i3, width2, i % 2 == 0));
            height2 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            i = i12;
        }
        if (Game.player.currSituation.noAdvisor > 0) {
            int i13 = i + 1;
            arrayList.add(new AnonymousClass11(Game.lang.get("NoAdvisor"), Images.skill, i2, height2, width - (i2 * 2), i3, width2, i % 2 == 0));
            height2 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            i = i13;
        }
        if (Game.player.currSituation.promoteAdvisor > 0) {
            int i14 = i + 1;
            arrayList.add(new AnonymousClass12(Game.lang.get("PromoteAdvisor"), Images.skill, i2, height2, width - (i2 * 2), i3, width2, i % 2 == 0));
            height2 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            i = i14;
        }
        if (Game.player.currSituation.lackOfGeneral) {
            int i15 = i + 1;
            arrayList.add(new AnonymousClass13(Game.lang.get("LackOfGeneral"), Images.general, i2, height2, width - (i2 * 2), i3, width2, i % 2 == 0));
            height2 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            i = i15;
        }
        if (Game.player.currSituation.upgradeCapitalCity) {
            int i16 = i + 1;
            arrayList.add(new AnonymousClass14(Game.lang.get("UpgradeCapitalCity"), Images.capital, i2, height2, width - (i2 * 2), i3, width2, i % 2 == 0));
            height2 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            i = i16;
        }
        if (Game.player.currSituation.upgradeSupremeCourt) {
            int i17 = i + 1;
            arrayList.add(new AnonymousClass15(Game.lang.get("UpgradeSupremeCourt"), Images.stability, i2, height2, width - (i2 * 2), i3, width2, i % 2 == 0));
            height2 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            i = i17;
        }
        if (Game.player.currSituation.militaryAcademyCanBeUpgraded) {
            int i18 = i + 1;
            arrayList.add(new AnonymousClass16(Game.lang.get("UpgradeMilitaryAcademy"), Game_Calendar.IMG_MANPOWER, i2, height2, width - (i2 * 2), i3, width2, i % 2 == 0));
            height2 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            i = i18;
        }
        if (Game.player.currSituation.militaryAcademyForGeneralsCanBeUpgraded) {
            int i19 = i + 1;
            arrayList.add(new AnonymousClass17(Game.lang.get("UpgradeMilitaryAcademyForGenerals"), Images.general, i2, height2, width - (i2 * 2), i3, width2, i % 2 == 0));
            height2 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            i = i19;
        }
        if (Game.player.currSituation.upgradeNuclearReactor) {
            int i20 = i + 1;
            arrayList.add(new AnonymousClass18(Game.lang.get("UpgradeNuclearReactor"), Images.nuke, i2, height2, width - (i2 * 2), i3, width2, i % 2 == 0));
            height2 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            i = i20;
        }
        if (Game.player.currSituation.wonderCanBeBuilt) {
            arrayList.add(new AnonymousClass19(Game.lang.get("AWonderCanBeBuilt"), Images.mapModesWonders, i2, height2, width - (i2 * 2), i3, width2, i % 2 == 0));
            height2 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        int iMin = Math.min(height2, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, 0, width, Math.max(height2, iMin)));
        initMenu(new AnonymousClass20("", false, false, Images.title1Red), otherMenuPosX_2, height, width, iMin, arrayList, false, true);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        if (lTime + 60 >= CFG.currentTimeMillis) {
            i = (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - lTime) / 60.0f)));
        }
        int i3 = i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight() + CFG.PADDING, false);
        ImageManager.getImage(Images.newGameOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.newGameOver).getWidth() / 2)) + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.newGameOver).getHeight()));
        super.draw(spriteBatch, i3, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void updateLanguage() {
        super.updateLanguage();
        getTitle().setText(Game.lang.get("CurrentSituation"));
    }
}
