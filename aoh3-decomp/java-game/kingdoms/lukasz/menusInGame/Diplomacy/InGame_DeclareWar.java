package aoc.kingdoms.lukasz.menusInGame.Diplomacy;

import androidx.core.internal.oiV.CoLRpi;
import androidx.core.text.util.pRCP.IwYCCQBuFGwl;
import aoc.kingdoms.lukasz.jakowski.AI.Values.nvwi.cIUGJCqyPXfp;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.jakowski.Steam.SteamAchievementsManager;
import aoc.kingdoms.lukasz.map.RulersManager;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRanking;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame_ImageSparks;
import aoc.kingdoms.lukasz.menu_element.button.ButtonRuler_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Diplomacy_Flip;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagCiv_Title;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextBonus;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Desc;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_GreenRed;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static_ID;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2Center;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g3d.model.ia.uNBYrZVGzy;
import com.badlogic.gdx.net.HttpResponseHeader;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_DeclareWar extends Menu {
    public static final int ANIMATION_TIME = 60;
    public static List<Integer> callToWar = new ArrayList();
    public static int iCivID;
    public static long lTime;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_DeclareWar$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonStatsRectIMG_Diplomacy {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("RegimentsLimit") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + CFG.getShortNumber(Game.getCiv(Game.player.iCivID).iRegimentsLimit), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.regimentsLimit, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_DeclareWar$10, reason: invalid class name */
    class AnonymousClass10 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass10(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, str2, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(Game.player.iCivID, Game.lang.get(cIUGJCqyPXfp.ryjCPeZzG) + ": " + CFG.getNumberWithSpaces("" + ((int) Game.getCiv(Game.player.iCivID).fManpowerMax))));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(getText(), this.sText2, this.imageID, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(IwYCCQBuFGwl.rCw) + uNBYrZVGzy.trSScDIQnaJJo, Game.lang.get("MonthsX", (int) GameValues.manpower.MANPOWER_FULL_RECOVERY_MONTHS), Game_Calendar.IMG_MANPOWER, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.HOVER_NEGATIVE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_DeclareWar$11, reason: invalid class name */
    class AnonymousClass11 extends TextBonus {
        AnonymousClass11(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(InGame_DeclareWar.iCivID).diplomacy.getRelation(Game.player.iCivID) <= GameValues.war.RELATIONS_TO_DECLARE_WAR || Game.getCiv(InGame_DeclareWar.iCivID).getCapitalProvinceID() < 0) {
                return;
            }
            Game.setActiveProvinceID(Game.getCiv(InGame_DeclareWar.iCivID).getCapitalProvinceID());
            ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
            Game.menuManager.rebuildInGame_Civ();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextBonus, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(Game.player.iCivID, Game.getCiv(InGame_DeclareWar.iCivID).getCivName()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Opinion") + ": ", (Game.getCiv(InGame_DeclareWar.iCivID).diplomacy.getRelation(Game.player.iCivID) > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(InGame_DeclareWar.iCivID).diplomacy.getRelation(Game.player.iCivID), 10), Images.relations, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, DiplomacyManager.getOpinion_Color((int) Game.getCiv(InGame_DeclareWar.iCivID).diplomacy.getRelation(Game.player.iCivID))));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("ToDeclareWarTheRelationsBetweenCivilizationsMustBeBelowX", GameValues.war.RELATIONS_TO_DECLARE_WAR), CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_DeclareWar$12, reason: invalid class name */
    class AnonymousClass12 extends TextBonus {
        AnonymousClass12(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextBonus, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(CoLRpi.nCcqhkVOrMB) + ": ", "" + CFG.getPrecision2(GameValues.diplomacy.DIPLOMACY_DECLARE_WAR_COST, 100), Images.diplomacy, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_DeclareWar$13, reason: invalid class name */
    class AnonymousClass13 extends ButtonGame {
        AnonymousClass13(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_PopUp(false);
            if (Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_DIPLOMACY) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DIPLOMACY);
            }
            ProvinceBorderManager.updateDrawProvinceBorder_SelectCiv_ByCivID(InGame_DeclareWar.iCivID);
            InGame_Civ.iRebuildToCivID = InGame_DeclareWar.iCivID;
            Game.menuManager.rebuildInGame_Civ(true);
            InGame_Civ.lTime = 0L;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_DeclareWar$14, reason: invalid class name */
    class AnonymousClass14 extends ButtonGame_ImageSparks {
        AnonymousClass14(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_DeclareWar.confirm();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("DeclareWar"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.war, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (Game.getCiv(InGame_DeclareWar.iCivID).diplomacy.getRelation(Game.player.iCivID) > GameValues.war.RELATIONS_TO_DECLARE_WAR) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("ToDeclareWarTheRelationsBetweenCivilizationsMustBeBelowX", GameValues.war.RELATIONS_TO_DECLARE_WAR), CFG.FONT_REGULAR_SMALL, Game.getCiv(InGame_DeclareWar.iCivID).diplomacy.getRelation(Game.player.iCivID) > ((float) GameValues.war.RELATIONS_TO_DECLARE_WAR) ? Colors.HOVER_NEGATIVE : Colors.HOVER_LEFT));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.getCiv(Game.player.iCivID).diplomacy.haveNonAggressionPact(InGame_DeclareWar.iCivID)) {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("NonAggressionPact"), "", Images.nonAggression, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(HttpResponseHeader.Expires) + ": ", "" + Game_Calendar.getDate_ByTurnID(Game.getCiv(Game.player.iCivID).diplomacy.nonAggressionPact.get(Integer.valueOf(InGame_DeclareWar.iCivID)).iTurnID), Images.time, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("DiplomacyPoints") + ": ", "" + CFG.getPrecision2(GameValues.diplomacy.DIPLOMACY_DECLARE_WAR_COST, 100), Images.diplomacy, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (GameValues.aggressiveExpansion.AE_DECLARE_WAR > 0.0f) {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("AggressiveExpansion") + ": ", (GameValues.aggressiveExpansion.AE_DECLARE_WAR > 0.0f ? "+" : "") + CFG.getPrecision2(GameValues.aggressiveExpansion.AE_DECLARE_WAR, 100), Images.aggressiveExpansion, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return -1;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_DeclareWar$15, reason: invalid class name */
    class AnonymousClass15 extends Text_StaticBG_ID_FlagCiv {
        AnonymousClass15(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            List<Integer> listDeclareWar_AlliesAttacker = DiplomacyManager.declareWar_AlliesAttacker(Game.player.iCivID, InGame_DeclareWar.iCivID);
            if (listDeclareWar_AlliesAttacker.size() > 0) {
                for (int size = listDeclareWar_AlliesAttacker.size() - 1; size >= 0; size--) {
                    if (InGame_DeclareWar.callToWar.contains(listDeclareWar_AlliesAttacker.get(size))) {
                        for (int size2 = InGame_DeclareWar.callToWar.size() - 1; size2 >= 0; size2--) {
                            if (InGame_DeclareWar.callToWar.get(size2).equals(listDeclareWar_AlliesAttacker.get(size))) {
                                InGame_DeclareWar.callToWar.remove(size2);
                                break;
                            }
                        }
                    } else {
                        InGame_DeclareWar.callToWar.add(listDeclareWar_AlliesAttacker.get(size));
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_DeclareWar$16, reason: invalid class name */
    class AnonymousClass16 extends Text_StaticBG_ID_FlagCiv_GreenRed {
        AnonymousClass16(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (!InGame_DeclareWar.callToWar.contains(Integer.valueOf(getCurrent()))) {
                InGame_DeclareWar.callToWar.add(Integer.valueOf(getCurrent()));
                return;
            }
            for (int size = InGame_DeclareWar.callToWar.size() - 1; size >= 0; size--) {
                if (InGame_DeclareWar.callToWar.get(size).intValue() == getCurrent()) {
                    InGame_DeclareWar.callToWar.remove(size);
                    return;
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("CallAlly") + ": " + Game.getCiv(getCurrent()).getCivName(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.alliance, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_GreenRed, aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getCheckboxState() {
            return InGame_DeclareWar.callToWar.contains(Integer.valueOf(getCurrent()));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_DeclareWar$17, reason: invalid class name */
    class AnonymousClass17 extends Text_StaticBG_ID_FlagCiv {
        AnonymousClass17(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
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
            this.menuElementHover = CivilizationRanking.getHover_CivilizationRanking(getCurrent(), false, false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_DeclareWar$18, reason: invalid class name */
    class AnonymousClass18 extends MenuTitleIMG {
        AnonymousClass18(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_DeclareWar.lTime;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_DeclareWar$19, reason: invalid class name */
    class AnonymousClass19 extends Game.SimpleTask {
        AnonymousClass19(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            ProvinceBorderManager.updateProvinceBorder();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_DeclareWar$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonStatsRectIMG_Diplomacy {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("UnlockedTechnologies") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + Game.getCiv(Game.player.iCivID).getResearchedTechnologies(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_DeclareWar$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRectIMG_Diplomacy {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Provinces") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + Game.getCiv(Game.player.iCivID).getNumOfProvinces(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_DeclareWar$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonStatsRectIMG_Diplomacy_Flip {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("RegimentsLimit") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + CFG.getShortNumber(Game.getCiv(InGame_DeclareWar.iCivID).iRegimentsLimit), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.regimentsLimit, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_DeclareWar$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonStatsRectIMG_Diplomacy_Flip {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("UnlockedTechnologies") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + Game.getCiv(InGame_DeclareWar.iCivID).getResearchedTechnologies(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_DeclareWar$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonStatsRectIMG_Diplomacy_Flip {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Provinces") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + Game.getCiv(InGame_DeclareWar.iCivID).getNumOfProvinces(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_DeclareWar$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonRuler_Diplomacy {
        AnonymousClass7(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonRuler_Diplomacy
        public Image getRulerImage() {
            return RulersManager.rulerIMG_DiplomacyRight;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_DeclareWar$8, reason: invalid class name */
    class AnonymousClass8 extends Text_Desc {
        AnonymousClass8(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Desc, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
        protected Color getColor(boolean z) {
            return Colors.getColorButtonHover2(z, getIsHovered());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_DeclareWar$9, reason: invalid class name */
    class AnonymousClass9 extends Text_Desc {
        AnonymousClass9(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(InGame_DeclareWar.iCivID).getCapitalProvinceID() >= 0) {
                Game.setActiveProvinceID(Game.getCiv(InGame_DeclareWar.iCivID).getCapitalProvinceID());
                ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
                Game.menuManager.rebuildInGame_Civ();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(Game.player.iCivID, Game.getCiv(InGame_DeclareWar.iCivID).getCivName()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Opinion") + ": ", (Game.getCiv(InGame_DeclareWar.iCivID).diplomacy.getRelation(Game.player.iCivID) > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(InGame_DeclareWar.iCivID).diplomacy.getRelation(Game.player.iCivID), 10), Images.relations, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("DamageRelations"), "", Images.relationsDown, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("SendAnInsult"), "", Images.insult, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Desc, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
        protected Color getColor(boolean z) {
            return Colors.getColorNegative(z, getIsHovered());
        }
    }

    public InGame_DeclareWar(int i) {
        int height;
        int i2;
        int height2;
        ArrayList arrayList = new ArrayList();
        callToWar.clear();
        int i3 = CFG.PADDING + Images.boxTitleBORDERWIDTH;
        ImageManager.getImage(Images.title600).getHeight();
        int width = ImageManager.getImage(Images.insideTop600).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height3 = ImageManager.getImage(Images.title1Red).getHeight() + ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i4 = CFG.PADDING;
        int i5 = CFG.PADDING;
        iCivID = i;
        int width2 = ImageManager.getImage(Images.warBig).getWidth() + (CFG.PADDING * 4);
        int i6 = CFG.PADDING;
        int height4 = ImageManager.getImage(Images.flagDiplomacyOver).getHeight() + (i6 * 2);
        int i7 = width / 2;
        int i8 = width2 / 2;
        int width3 = (((i7 - i3) - (CFG.PADDING * 2)) - i8) - ImageManager.getImage(Images.flagDiplomacyOver).getWidth();
        int i9 = i6 + i5;
        arrayList.add(new ButtonFlag_Diplomacy(Game.player.iCivID, ((i7 - i8) - (CFG.PADDING * 2)) - ImageManager.getImage(Images.flagDiplomacyOver).getWidth(), i9, true));
        int i10 = i7 + i8;
        arrayList.add(new ButtonFlag_Diplomacy(iCivID, (CFG.PADDING * 2) + i10, i9, true));
        int i11 = iCivID;
        arrayList.add(new Text_Static_ID(i11, Game.getCiv(i11).getCivName(), CFG.FONT_REGULAR, -1, i10 + (CFG.PADDING * 2) + ImageManager.getImage(Images.flagDiplomacyOver).getWidth(), i5, width3, height4));
        arrayList.add(new Text_Static_ID(Game.player.iCivID, Game.getCiv(Game.player.iCivID).getCivName(), CFG.FONT_REGULAR, -1, i3, i5, width3, height4));
        int i12 = width - (i3 * 2);
        arrayList.add(new TextIcon_Diplomacy(Images.warBig, i3, i5, i12, height4, width2));
        int height5 = i5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int buttonWidth = ButtonRuler_Diplomacy.getButtonWidth() + i3 + CFG.PADDING;
        int i13 = (i7 - buttonWidth) - (CFG.PADDING / 2);
        int buttonHeight = (ButtonRuler_Diplomacy.getButtonHeight() - (CFG.PADDING * 2)) / 3;
        int width4 = ImageManager.getImage(Game_Calendar.IMG_MANPOWER).getWidth() + (CFG.PADDING * 2);
        String str = IwYCCQBuFGwl.RuFjkUHmp;
        arrayList.add(new AnonymousClass1(str + CFG.getShortNumber(Game.getCiv(Game.player.iCivID).iRegimentsLimit), Images.regimentsLimit, buttonWidth, height5, i13, buttonHeight, width4, 0));
        arrayList.add(new AnonymousClass2(str + Game.getCiv(Game.player.iCivID).getResearchedTechnologies(), Game_Calendar.IMG_TECHNOLOGY, buttonWidth, CFG.PADDING + height5 + buttonHeight, i13, buttonHeight, width4, 0));
        arrayList.add(new AnonymousClass3(str + Game.getCiv(Game.player.iCivID).getNumOfProvinces(), Images.provinces, buttonWidth, height5 + ((CFG.PADDING + buttonHeight) * 2), i13, buttonHeight, width4, 0));
        arrayList.add(new AnonymousClass4(str + CFG.getShortNumber(Game.getCiv(iCivID).iRegimentsLimit), Images.regimentsLimit, CFG.PADDING + buttonWidth + i13, height5, i13, buttonHeight, width4, 0));
        arrayList.add(new AnonymousClass5(str + Game.getCiv(iCivID).getResearchedTechnologies(), Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING + buttonWidth + i13, CFG.PADDING + height5 + buttonHeight, i13, buttonHeight, width4, 0));
        arrayList.add(new AnonymousClass6(str + Game.getCiv(iCivID).getNumOfProvinces(), Images.provinces, buttonWidth + CFG.PADDING + i13, height5 + ((CFG.PADDING + buttonHeight) * 2), i13, buttonHeight, width4, 0));
        RulersManager.loadRulerIMG_DiplomacyLeft(Game.player.iCivID);
        RulersManager.loadRulerIMG_DiplomacyRight(iCivID);
        arrayList.add(new ButtonRuler_Diplomacy(Game.player.iCivID, i3, height5));
        arrayList.add(new AnonymousClass7(iCivID, (width - i3) - ButtonRuler_Diplomacy.getButtonWidth(), height5));
        int height6 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass8(DiplomacyManager.getWarMessage(), i3, height6, i12));
        int height7 = height6 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        if (Game.getCiv(iCivID).diplomacy.getRelation(Game.player.iCivID) > GameValues.war.RELATIONS_TO_DECLARE_WAR) {
            arrayList.add(new AnonymousClass9(Game.lang.get("ToDeclareWarTheRelationsBetweenCivilizationsMustBeBelowX", GameValues.war.RELATIONS_TO_DECLARE_WAR), i3, height7, i12));
            height7 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        int i14 = i3 + CFG.PADDING;
        int iCeil = (int) Math.ceil(ImageManager.getImage(Images.gold).getWidth() * 1.5f);
        if (Game.getCiv(Game.player.iCivID).fManpower / Game.getCiv(Game.player.iCivID).fManpowerMax < GameValues.diplomacy.DIPLOMACY_DECLARE_WAR_LOW_MANPOWER_INFO_IF_BELOW) {
            arrayList.add(new AnonymousClass10(Game.lang.get("Manpower") + ": ", str + CFG.getNumberWithSpaces(str + ((int) Game.getCiv(Game.player.iCivID).fManpower)) + " / " + CFG.getNumberWithSpaces(str + ((int) Game.getCiv(Game.player.iCivID).fManpowerMax)) + " [" + CFG.getPrecision2((Game.getCiv(Game.player.iCivID).fManpower / Game.getCiv(Game.player.iCivID).fManpowerMax) * 100.0d, 10) + "%]", Game_Calendar.IMG_MANPOWER, i14, height7, width - (i14 * 2), CFG.BUTTON_HEIGHT3, iCeil, CFG.FONT_REGULAR_SMALL, CFG.FONT_REGULAR_SMALL));
            height7 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        int i15 = width - (i14 * 2);
        int i16 = height7;
        arrayList.add(new AnonymousClass11(Game.lang.get("Opinion") + ": ", (Game.getCiv(iCivID).diplomacy.getRelation(Game.player.iCivID) > 0.0f ? "+" : str) + CFG.getPrecision2(Game.getCiv(iCivID).diplomacy.getRelation(Game.player.iCivID), 10), Images.relations, i14, i16, (i15 - ((CFG.PADDING / 2) * 2)) / 2, CFG.TEXT_HEIGHT + (CFG.PADDING * 5), iCeil));
        arrayList.add(new AnonymousClass12(Game.lang.get("Cost") + ": ", str + CFG.getPrecision2(GameValues.diplomacy.DIPLOMACY_DECLARE_WAR_COST, 100), Images.diplomacy, CFG.PADDING + i14 + ((i15 - ((CFG.PADDING / 2) * 2)) / 2), i16, (i15 - ((CFG.PADDING / 2) * 2)) / 2, CFG.TEXT_HEIGHT + (CFG.PADDING * 5), iCeil));
        int height8 = height7 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass13(Game.lang.get("Cancel"), CFG.FONT_REGULAR, -1, i14, height8, (i15 - ((CFG.PADDING / 2) * 2)) / 2, true));
        arrayList.add(new AnonymousClass14(Game.lang.get("DeclareWar"), CFG.FONT_REGULAR, -1, CFG.PADDING + i14 + ((i15 - ((CFG.PADDING / 2) * 2)) / 2), height8, (i15 - ((CFG.PADDING / 2) * 2)) / 2, true, Images.war));
        int height9 = height8 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        List<Integer> listDeclareWar_AlliesAttacker = DiplomacyManager.declareWar_AlliesAttacker(Game.player.iCivID, iCivID);
        List<Integer> listDeclareWar_AlliesDefender = DiplomacyManager.declareWar_AlliesDefender(iCivID, Game.player.iCivID);
        if (listDeclareWar_AlliesAttacker.size() > 0 || listDeclareWar_AlliesDefender.size() > 0) {
            arrayList.add(new Text_Title_v2Center(Game.lang.get("Allies"), -1, CFG.FONT_BOLD, Images.boxTitleBORDERWIDTH, height9, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
            int height10 = height9 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int i17 = (i15 - CFG.PADDING) / 2;
            int i18 = CFG.BUTTON_HEIGHT3;
            int size = arrayList.size();
            if (listDeclareWar_AlliesAttacker.size() > 1) {
                arrayList.add(new AnonymousClass15(str + Game.lang.get("CallAllies"), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i14, height10, i17, i18, Game.player.iCivID));
                height = arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING + height10;
            } else {
                height = height10;
            }
            int i19 = 0;
            while (i19 < listDeclareWar_AlliesAttacker.size()) {
                arrayList.add(new AnonymousClass16(str + Game.getCiv(listDeclareWar_AlliesAttacker.get(i19).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i14, height, i17, i18, listDeclareWar_AlliesAttacker.get(i19).intValue()));
                height += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                i19++;
                height10 = height10;
            }
            int height11 = height10;
            if (size == arrayList.size()) {
                arrayList.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i14, height, i17, i18));
                arrayList.get(arrayList.size() - 1).getHeight();
                int i20 = CFG.PADDING;
            }
            int size2 = arrayList.size();
            for (int i21 = 0; i21 < listDeclareWar_AlliesDefender.size(); i21++) {
                arrayList.add(new AnonymousClass17(str + Game.getCiv(listDeclareWar_AlliesDefender.get(i21).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, CFG.PADDING + i14 + i17, height11, i17, i18, listDeclareWar_AlliesDefender.get(i21).intValue()));
                height11 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (size2 == arrayList.size()) {
                arrayList.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i14 + CFG.PADDING + i17, height11, i17, i18));
                i2 = 1;
                height2 = height11 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                i2 = 1;
                height2 = height11;
            }
        } else {
            height2 = height9;
            i2 = 1;
        }
        for (int size3 = arrayList.size() - i2; size3 >= 0; size3--) {
            height2 = Math.max(height2, arrayList.get(size3).getPosY() + arrayList.get(size3).getHeight() + CFG.PADDING);
        }
        int iMin = Math.min(height2, (CFG.GAME_HEIGHT - height3) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, 0, width, Math.max(height2, height2)));
        initMenu(new AnonymousClass18(Game.lang.get("DeclareWar"), true, false, Images.title600), otherMenuPosX_2, height3, width, iMin, arrayList, false, true);
    }

    public static final boolean actionDeclareWar(int i, int i2) {
        return actionDeclareWar(i, i2, false);
    }

    public static final boolean actionDeclareWar(int i, int i2, boolean z) {
        return actionDeclareWar(i, i2, z, new ArrayList());
    }

    public static final boolean actionDeclareWar(int i, int i2, boolean z, List<Integer> list) {
        if (!z) {
            if (Game.getCiv(i2).diplomacy.getRelation(i) > GameValues.war.RELATIONS_TO_DECLARE_WAR) {
                Game.menuManager.addToast_Error(Game.lang.get("ToDeclareWarTheRelationsBetweenCivilizationsMustBeBelowX", GameValues.war.RELATIONS_TO_DECLARE_WAR), Images.relations);
                return false;
            }
            if (Game.getCiv(i).diplomacy.haveNonAggressionPact(i2)) {
                Game.menuManager.addToast_Error(Game.lang.get("NonAggressionPact") + ": " + Game.getCiv(i).getCivName() + " - " + Game.getCiv(i2).getCivName(), Images.nonAggression);
                return false;
            }
            if (Game.getCiv(i).diplomacy.haveAlliance(i2) || Game.getCiv(i2).diplomacy.haveAlliance(i)) {
                Game.menuManager.addToast_Error(Game.lang.get("Alliance") + ": " + Game.getCiv(i).getCivName() + " - " + Game.getCiv(i2).getCivName(), Images.alliance);
                return false;
            }
            if (Game.getCiv(i).fDiplomacy < GameValues.diplomacy.DIPLOMACY_DECLARE_WAR_COST) {
                Game.menuManager.addToastInsufficient(Game.lang.get("Cost") + ", " + Game.lang.get("DiplomacyPoints") + ": ", CFG.getPrecision2(GameValues.diplomacy.DIPLOMACY_DECLARE_WAR_COST, 100), Images.diplomacy);
                return false;
            }
        }
        if (Game.getCiv(i).diplomacy.truce.containsKey(Integer.valueOf(i2))) {
            if (Game.getCiv(i).diplomacy.truce.get(Integer.valueOf(i2)).iTurnID >= Game_Calendar.TURN_ID) {
                Game.menuManager.addToastInsufficient(Game.lang.get("Truce") + ": " + Game.lang.get(HttpResponseHeader.Expires) + ": ", Game_Calendar.getDate_ByTurnID(Game.getCiv(i).diplomacy.truce.get(Integer.valueOf(i2)).iTurnID), Images.time);
                return false;
            }
            Game.getCiv(i).diplomacy.truce.remove(Integer.valueOf(i2));
            Game.getCiv(i2).diplomacy.truce.remove(Integer.valueOf(i));
        }
        try {
            if (!DiplomacyManager.declareWar(i, i2, z, list)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("Refused"), "", Images.x);
                return true;
            }
            if (GameValues.provinceBorderWar.ENABLE_WAR_BORDER) {
                Game.addSimpleTask(new AnonymousClass19("updateProvinceBorder"));
            }
            Game.menuManager.rebuildInGame_Wars();
            Game.menuManager.setVisibleInGame_PopUp(false);
            InGame_Info.iCivID = i;
            InGame_Info.iCivID2 = i2;
            Game.menuManager.rebuildInGame_Info(Game.lang.get(IwYCCQBuFGwl.mpxHaLhXdz), Game.getCiv(i).getCivName() + " - " + Game.getCiv(i2).getCivName());
            InGame_Info.imgID = Images.infoWar;
            Game.soundsManager.loadNextMusicWar();
            Game.menuManager.WAR_TIME = CFG.currentTimeMillis;
            return true;
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return true;
        }
    }

    public static void confirm() {
        if (!actionDeclareWar(Game.player.iCivID, iCivID, false, callToWar)) {
            Game.soundsManager.playSound(Game.soundsManager.getClickMain());
        } else {
            Game.soundsManager.playSound(SoundsManager.WAR);
            SteamAchievementsManager.unlockAchievement(SteamAchievementsManager.DECLARE_WAR);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        DiplomacyManager.updateInAnimation();
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop600, Images.insideBot600);
        ImageManager.getImage(Images.civInfoOver).draw2(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.civInfoOver).getHeight()));
        super.draw(spriteBatch, i3, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
        DiplomacyManager.updateAnimationTime();
    }
}
