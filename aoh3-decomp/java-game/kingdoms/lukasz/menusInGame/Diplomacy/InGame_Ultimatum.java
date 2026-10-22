package aoc.kingdoms.lukasz.menusInGame.Diplomacy;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.map.RulersManager;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame_ImageSparks;
import aoc.kingdoms.lukasz.menu_element.button.ButtonRuler_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Diplomacy_Flip;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Clear;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextBonus;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_Flag;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static_ID;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ;
import aoc.kingdoms.lukasz.menusInGame.Court.zHJ.lOow;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.menusScenarioEditor.YGiX.gpVDKipRURuzw;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.net.otUh.aBEBOpwLZcQFCZ;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Ultimatum extends Menu {
    public static final int ANIMATION_TIME = 60;
    public static boolean demandAnnexation;
    public static List<Integer> demandProvinces = new ArrayList();
    public static int iCivID;
    public static long lTime;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Ultimatum$1, reason: invalid class name */
    class AnonymousClass1 extends TextIcon_Diplomacy {
        AnonymousClass1(int i, int i2, int i3, int i4, int i5, int i6) {
            super(i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Diplomacy
        public Color getColorBar() {
            return DiplomacyManager.COLOR_INSULT;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Ultimatum$10, reason: invalid class name */
    class AnonymousClass10 extends ButtonGame {
        AnonymousClass10(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_PopUp(false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Ultimatum$11, reason: invalid class name */
    class AnonymousClass11 extends ButtonGame_ImageSparks {
        AnonymousClass11(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Ultimatum.confirm();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(gpVDKipRURuzw.EtsxjGWVvmnyb), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.swords, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            StringBuilder sbAppend = new StringBuilder().append(Game.lang.get("Opinion"));
            String str = aBEBOpwLZcQFCZ.IuhxL;
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(sbAppend.append(str).toString(), CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(CFG.getPrecision2(GameValues.diplomacy.DIPLOMACY_SEND_AN_INSULT_DAMAGE, 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.relations, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Legacy") + str, CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(CFG.getPrecision2(GameValues.diplomacy.DIPLOMACY_SEND_ULTIMATUM_COST_LEGACY, 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.legacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("DiplomacyPoints") + str, CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("-" + CFG.getPrecision2(GameValues.diplomacy.DIPLOMACY_SEND_ULTIMATUM_COST, 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.diplomacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(InGame_Ultimatum.iCivID, 0, CFG.PADDING));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("AttitudeTowards"), CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.player.iCivID, CFG.PADDING, CFG.PADDING));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(DiplomacyManager.getOpinion_String((int) Game.getCiv(InGame_Ultimatum.iCivID).diplomacy.getRelation(Game.player.iCivID)) + "", CFG.FONT_BOLD, DiplomacyManager.getOpinion_Color((int) Game.getCiv(InGame_Ultimatum.iCivID).diplomacy.getRelation(Game.player.iCivID))));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Opinion") + str, (Game.getCiv(InGame_Ultimatum.iCivID).diplomacy.getRelation(Game.player.iCivID) > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(InGame_Ultimatum.iCivID).diplomacy.getRelation(Game.player.iCivID), 10), Images.relations, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, DiplomacyManager.getOpinion_Color((int) Game.getCiv(InGame_Ultimatum.iCivID).diplomacy.getRelation(Game.player.iCivID))));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getClickable() {
            return InGame_Ultimatum.demandAnnexation || !InGame_Ultimatum.demandProvinces.isEmpty();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.DIPLOMACY_CLICK;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Ultimatum$12, reason: invalid class name */
    class AnonymousClass12 extends Text_StaticBG_ID_Flag {
        AnonymousClass12(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, i7, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Ultimatum.demandAnnexation = !InGame_Ultimatum.demandAnnexation;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_Flag, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            Game.mapCoords.centerToProvinceID(getCurrent());
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Provinces") + ": ", CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(CFG.getNumberWithSpaces("" + Game.getCiv(InGame_Ultimatum.iCivID).getNumOfProvinces()), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", CFG.getNumberWithSpaces("" + Game.getCiv(InGame_Ultimatum.iCivID).getPopulationTotal()), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Economy") + ": ", CFG.getPrecision2(Game.getCiv(InGame_Ultimatum.iCivID).getEconomyTotal(), 10), Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
        protected Color getColor(boolean z) {
            return InGame_Ultimatum.demandAnnexation ? Colors.getColorPositive(z, getIsHovered()) : super.getColor(z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_Flag
        public int getFlagID() {
            return InGame_Ultimatum.demandAnnexation ? Game.player.iCivID : InGame_Ultimatum.iCivID;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Ultimatum$13, reason: invalid class name */
    class AnonymousClass13 extends Text_StaticBG_ID_Flag {
        boolean take;

        AnonymousClass13(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, i7, z);
            this.take = false;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            boolean z = !this.take;
            this.take = z;
            if (z) {
                for (int size = InGame_Ultimatum.demandProvinces.size() - 1; size >= 0; size--) {
                    if (InGame_Ultimatum.demandProvinces.get(size).intValue() == getCurrent()) {
                        return;
                    }
                }
                InGame_Ultimatum.demandProvinces.add(Integer.valueOf(getCurrent()));
                return;
            }
            for (int size2 = InGame_Ultimatum.demandProvinces.size() - 1; size2 >= 0; size2--) {
                if (InGame_Ultimatum.demandProvinces.get(size2).intValue() == getCurrent()) {
                    InGame_Ultimatum.demandProvinces.remove(size2);
                    return;
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_Flag, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            setText(Game.getProvince(getCurrent()).getProvinceName());
            Game.mapCoords.centerToProvinceID(getCurrent());
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Province") + ": ", CFG.FONT_BOLD, Colors.HOVER_GOLD));
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
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
        protected Color getColor(boolean z) {
            return this.take ? Colors.getColorPositive(z, getIsHovered()) : super.getColor(z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_Flag
        public int getFlagID() {
            return this.take ? Game.player.iCivID : super.getFlagID();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Ultimatum$14, reason: invalid class name */
    class AnonymousClass14 extends MenuTitleIMG {
        AnonymousClass14(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Ultimatum.lTime;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Ultimatum$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonStatsRectIMG_Diplomacy {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Civ.getHoverBetweenCivilizations(InGame_Ultimatum.iCivID, Game.player.iCivID, Game.getCiv(Game.player.iCivID).diplomacy.isImprovingRelations(InGame_Ultimatum.iCivID), Game.getCiv(Game.player.iCivID).diplomacy.isDamagingRelations(InGame_Ultimatum.iCivID));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Diplomacy, aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active, aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return Colors.getColorTopStats(z, getIsHovered());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Ultimatum$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRectIMG_Diplomacy {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("RegimentsLimit") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + Game.getCiv(Game.player.iCivID).iRegimentsLimit, CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.regimentsLimit, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Ultimatum$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonStatsRectIMG_Diplomacy {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Provinces") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Ultimatum$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonStatsRectIMG_Diplomacy_Flip {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("RegimentsLimit") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + Game.getCiv(InGame_Ultimatum.iCivID).iRegimentsLimit, CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.regimentsLimit, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Ultimatum$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonStatsRectIMG_Diplomacy_Flip {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get(lOow.rhZvwQsKM) + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Ultimatum$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonRuler_Diplomacy {
        AnonymousClass7(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonRuler_Diplomacy
        public Image getRulerImage() {
            return RulersManager.rulerIMG_DiplomacyRight;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Ultimatum$8, reason: invalid class name */
    class AnonymousClass8 extends TextBonus {
        AnonymousClass8(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextBonus, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("LegacyPoints") + ": ", "" + CFG.getPrecision2(GameValues.diplomacy.DIPLOMACY_SEND_ULTIMATUM_COST_LEGACY, 10), Images.legacy, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Ultimatum$9, reason: invalid class name */
    class AnonymousClass9 extends TextBonus {
        AnonymousClass9(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextBonus, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("DiplomacyPoints") + ": ", "" + CFG.getPrecision2(GameValues.diplomacy.DIPLOMACY_SEND_ULTIMATUM_COST, 100), Images.diplomacy, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    public InGame_Ultimatum(int i) {
        ArrayList arrayList = new ArrayList();
        demandAnnexation = false;
        demandProvinces.clear();
        int i2 = CFG.PADDING + Images.boxTitleBORDERWIDTH;
        int height = ImageManager.getImage(Images.title600).getHeight();
        int width = ImageManager.getImage(Images.insideTop600).getWidth();
        int height2 = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title600).getHeight();
        int i3 = CFG.PADDING;
        int i4 = CFG.PADDING;
        iCivID = i;
        int width2 = ImageManager.getImage(Images.insultBig).getWidth() + (CFG.PADDING * 4);
        int i5 = CFG.PADDING;
        int height3 = ImageManager.getImage(Images.flagDiplomacyOver).getHeight() + (i5 * 2);
        int i6 = width / 2;
        int i7 = width2 / 2;
        int width3 = (((i6 - i2) - (CFG.PADDING * 2)) - i7) - ImageManager.getImage(Images.flagDiplomacyOver).getWidth();
        int i8 = i5 + i4;
        arrayList.add(new ButtonFlag_Diplomacy(Game.player.iCivID, ((i6 - i7) - (CFG.PADDING * 2)) - ImageManager.getImage(Images.flagDiplomacyOver).getWidth(), i8, true));
        int i9 = i6 + i7;
        arrayList.add(new ButtonFlag_Diplomacy(iCivID, (CFG.PADDING * 2) + i9, i8, true));
        int i10 = iCivID;
        arrayList.add(new Text_Static_ID(i10, Game.getCiv(i10).getCivName(), CFG.FONT_REGULAR, -1, i9 + (CFG.PADDING * 2) + ImageManager.getImage(Images.flagDiplomacyOver).getWidth(), i4, width3, height3));
        arrayList.add(new Text_Static_ID(Game.player.iCivID, Game.getCiv(Game.player.iCivID).getCivName(), CFG.FONT_REGULAR, -1, i2, i4, width3, height3));
        int i11 = width - (i2 * 2);
        arrayList.add(new AnonymousClass1(Images.swords, i2, i4, i11, height3, width2));
        int height4 = i4 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int buttonWidth = ButtonRuler_Diplomacy.getButtonWidth() + i2 + (CFG.PADDING * 2);
        int i12 = (i6 - buttonWidth) - (CFG.PADDING / 2);
        int buttonHeight = (ButtonRuler_Diplomacy.getButtonHeight() - (CFG.PADDING * 2)) / 3;
        int width4 = ImageManager.getImage(Game_Calendar.IMG_MANPOWER).getWidth() + (CFG.PADDING * 2);
        arrayList.add(new AnonymousClass2(Game.lang.get("Opinion") + ": " + CFG.getPrecision2(Game.getCiv(iCivID).diplomacy.getRelation(Game.player.iCivID), 1), Images.relations, buttonWidth, height4, (i12 * 2) + ((CFG.PADDING / 2) * 2), buttonHeight, width4, 0));
        arrayList.add(new AnonymousClass3("" + CFG.getShortNumber(Game.getCiv(Game.player.iCivID).iRegimentsLimit), Images.regimentsLimit, buttonWidth, CFG.PADDING + height4 + buttonHeight, i12, buttonHeight, width4, 0));
        arrayList.add(new AnonymousClass4("" + Game.getCiv(Game.player.iCivID).getNumOfProvinces(), Images.provinces, buttonWidth, height4 + ((CFG.PADDING + buttonHeight) * 2), i12, buttonHeight, width4, 0));
        arrayList.add(new AnonymousClass5("" + CFG.getShortNumber(Game.getCiv(iCivID).iRegimentsLimit), Images.regimentsLimit, CFG.PADDING + buttonWidth + i12, CFG.PADDING + height4 + buttonHeight, i12, buttonHeight, width4, 0));
        arrayList.add(new AnonymousClass6("" + Game.getCiv(iCivID).getNumOfProvinces(), Images.provinces, buttonWidth + CFG.PADDING + i12, height4 + ((CFG.PADDING + buttonHeight) * 2), i12, buttonHeight, width4, 0));
        RulersManager.loadRulerIMG_DiplomacyLeft(Game.player.iCivID);
        RulersManager.loadRulerIMG_DiplomacyRight(iCivID);
        arrayList.add(new ButtonRuler_Diplomacy(Game.player.iCivID, CFG.PADDING + i2, height4));
        arrayList.add(new AnonymousClass7(iCivID, ((width - i2) - ButtonRuler_Diplomacy.getButtonWidth()) - CFG.PADDING, height4));
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int iCeil = (int) Math.ceil(ImageManager.getImage(Images.gold).getWidth() * 1.5f);
        arrayList.add(new AnonymousClass8(Game.lang.get("LegacyPoints") + ": ", "" + CFG.getPrecision2(Math.abs(GameValues.diplomacy.DIPLOMACY_SEND_ULTIMATUM_COST_LEGACY), 10), Images.legacy, i2, height5, (i11 - ((CFG.PADDING / 2) * 2)) / 2, CFG.TEXT_HEIGHT + (CFG.PADDING * 5), iCeil));
        arrayList.add(new AnonymousClass9(Game.lang.get("Cost") + ": ", "" + CFG.getPrecision2(GameValues.diplomacy.DIPLOMACY_SEND_ULTIMATUM_COST, 100), Images.diplomacy, CFG.PADDING + i2 + ((i11 - ((CFG.PADDING / 2) * 2)) / 2), height5, (i11 - ((CFG.PADDING / 2) * 2)) / 2, CFG.TEXT_HEIGHT + (CFG.PADDING * 5), iCeil));
        int height6 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i13 = CFG.PADDING + i2;
        int i14 = width - (i13 * 2);
        arrayList.add(new AnonymousClass10(Game.lang.get("Cancel"), CFG.FONT_REGULAR, -1, i13, height6, (i14 - ((CFG.PADDING / 2) * 2)) / 2, true));
        arrayList.add(new AnonymousClass11(Game.lang.get("SendUltimatum"), CFG.FONT_REGULAR, -1, CFG.PADDING + i13 + ((i14 - ((CFG.PADDING / 2) * 2)) / 2), height6, (i14 - ((CFG.PADDING / 2) * 2)) / 2, true, Images.swords));
        int height7 = height6 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
        int i15 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
        arrayList.add(new Text_Title_v2(Game.lang.get("DemandAnnexation"), CFG.FONT_REGULAR_SMALL, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height7, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height8 = height7 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass12(Game.getCiv(iCivID).getCivName() + ": " + Game.lang.get("FullAnnexation"), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i13, height8, i14, i15, Game.getCiv(iCivID).getProvinceID(0), false));
        int height9 = height8 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new Text_Title_v2(Game.lang.get("DemandProvinces"), CFG.FONT_REGULAR_SMALL, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height9, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height10 = height9 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        ArrayList arrayList2 = new ArrayList();
        for (int i16 = 0; i16 < Game.getCiv(iCivID).getNumOfProvinces(); i16++) {
            arrayList2.add(Integer.valueOf(Game.getCiv(iCivID).getProvinceID(i16)));
        }
        if (arrayList2.isEmpty()) {
            arrayList.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i13, height10, i14, CFG.BUTTON_HEIGHT4));
            height10 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        } else {
            for (int i17 = 0; i17 < Game.getCiv(iCivID).getNumOfProvinces(); i17++) {
                Game.getCiv(iCivID).getProvinceID(i17);
                while (arrayList2.size() > 0) {
                    int size = arrayList2.size();
                    int i18 = 0;
                    for (int i19 = 1; i19 < size; i19++) {
                        if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList2.get(i18)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList2.get(i19)).intValue()).getProvinceName())) {
                            i18 = i19;
                        }
                    }
                    arrayList.add(new AnonymousClass13(Game.getProvince(((Integer) arrayList2.get(i18)).intValue()).getProvinceName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i13, height10, i14, i15, ((Integer) arrayList2.get(i18)).intValue(), false));
                    height10 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    arrayList2.remove(i18);
                }
            }
        }
        int iMin = Math.min(height10, (CFG.GAME_HEIGHT - height) - height2);
        arrayList.add(new Empty(0, 0, width, Math.max(height10, height10)));
        initMenu(new AnonymousClass14(Game.lang.get("Ultimatum"), true, false, Images.title600), (CFG.GAME_WIDTH / 2) - i6, Math.min((int) (CFG.GAME_HEIGHT * 0.2f), (CFG.GAME_HEIGHT / 2) - ((iMin + height) / 2)), width, iMin, arrayList, false, true);
    }

    public static final void confirm() {
        if (Game.getCiv(Game.player.iCivID).fLegacy < (-GameValues.diplomacy.DIPLOMACY_SEND_ULTIMATUM_COST_LEGACY)) {
            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + ": ", CFG.getPrecision2(Math.abs(GameValues.diplomacy.DIPLOMACY_SEND_ULTIMATUM_COST_LEGACY), 100), Images.legacy);
            return;
        }
        if (Game.getCiv(Game.player.iCivID).fDiplomacy < GameValues.diplomacy.DIPLOMACY_SEND_ULTIMATUM_COST) {
            Game.menuManager.addToastInsufficient(Game.lang.get("Cost") + ", " + Game.lang.get("DiplomacyPoints") + ": ", CFG.getPrecision2(GameValues.diplomacy.DIPLOMACY_SEND_ULTIMATUM_COST, 100), Images.diplomacy);
            return;
        }
        Game.getCiv(Game.player.iCivID).addLegacy(-GameValues.diplomacy.DIPLOMACY_SEND_ULTIMATUM_COST_LEGACY);
        Game.getCiv(Game.player.iCivID).fDiplomacy -= GameValues.diplomacy.DIPLOMACY_SEND_ULTIMATUM_COST;
        if (demandAnnexation || demandProvinces.size() > 0) {
            Game.getCiv(iCivID).diplomacy.updateRelation(iCivID, Game.player.iCivID, GameValues.diplomacy.ULTIMATUM_RELATION_CHANGE);
            Game.getCiv(Game.player.iCivID).diplomacy.updateRelation(Game.player.iCivID, iCivID, GameValues.diplomacy.ULTIMATUM_RELATION_CHANGE);
            if (Game.getCiv(Game.player.iCivID).getArmyRegimentSize() > Game.getCiv(iCivID).getArmyRegimentSize() * GameValues.diplomacy.ULTIMATUM_ARMY_MODIFIER) {
                if (demandAnnexation) {
                    for (int numOfProvinces = Game.getCiv(iCivID).getNumOfProvinces() - 1; numOfProvinces >= 0; numOfProvinces--) {
                        try {
                            int provinceID = Game.getCiv(iCivID).getProvinceID(numOfProvinces);
                            Game.getProvince(provinceID).setCivID(Game.player.iCivID);
                            Game.getProvince(provinceID).removeArmyCivID(iCivID);
                        } catch (Exception e) {
                            CFG.exceptionStack(e);
                        }
                    }
                } else if (demandProvinces.size() > 0) {
                    for (int size = demandProvinces.size() - 1; size >= 0; size--) {
                        try {
                            int iIntValue = demandProvinces.get(size).intValue();
                            if (Game.getProvince(iIntValue).getCivID() == iCivID) {
                                Game.getProvince(iIntValue).setCivID(Game.player.iCivID);
                                Game.getProvince(iIntValue).removeArmyCivID(iCivID);
                            }
                        } catch (Exception e2) {
                            CFG.exceptionStack(e2);
                        }
                    }
                }
                InGame_Info.iCivID = Game.player.iCivID;
                InGame_Info.iCivID2 = iCivID;
                Game.menuManager.rebuildInGame_Info(Game.lang.get("AcceptedOurUltimatum"), "");
                InGame_Info.imgID = Images.infoDiplomacy;
            } else {
                InGame_Info.iCivID = Game.player.iCivID;
                InGame_Info.iCivID2 = iCivID;
                Game.menuManager.rebuildInGame_Info(Game.lang.get("RefusedUltimatum"), "");
                InGame_Info.imgID = Images.infoDiplomacy;
            }
            ProvinceDraw.addDiplomacyLines(Game.getCiv(Game.player.iCivID).getCapitalProvinceID(), Game.getCiv(iCivID).getCapitalProvinceID(), DiplomacyManager.COLOR_INSULT);
        }
        Game.menuManager.setVisibleInGame_PopUp(false);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        DiplomacyManager.updateInAnimation();
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i2 - ((CFG.BUTTON_HEIGHT * 3) / 5)) + ((int) (((CFG.BUTTON_HEIGHT * 3) / 5) * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i2;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i3, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i, getPosY() + i3, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop600, Images.insideBot600);
        ImageManager.getImage(Images.civInfoOver).draw2(spriteBatch, getPosX() + i, getPosY() + i3, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.civInfoOver).getHeight()));
        super.draw(spriteBatch, i, i3, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
        DiplomacyManager.updateAnimationTime();
    }
}
