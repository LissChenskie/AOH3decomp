package aoc.kingdoms.lukasz.menusInGame.Diplomacy;

import aoc.kingdoms.lukasz.jakowski.AI.Government.nSju.IlLkpaQxs;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Ages;
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
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Diplomacy_Flip;
import aoc.kingdoms.lukasz.menu_element.button.Button_Likelihood;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Flag;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Center;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextBonus;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static_ID;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.backends.android.Zrdz.PxHJ;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g3d.model.ia.uNBYrZVGzy;
import com.badlogic.gdx.net.HttpResponseHeader;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Alliance extends Menu {
    public static final int ANIMATION_TIME = 60;
    public static int iCivID;
    public static long lTime;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Alliance$1, reason: invalid class name */
    class AnonymousClass1 extends TextIcon_Diplomacy {
        AnonymousClass1(int i, int i2, int i3, int i4, int i5, int i6) {
            super(i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Diplomacy
        public Color getColorBar() {
            return DiplomacyManager.COLOR_ALLIANCE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Alliance$10, reason: invalid class name */
    class AnonymousClass10 extends Button_Likelihood {
        AnonymousClass10(String str, String str2, int i, int i2, int i3, int i4, float f, int i5) {
            super(str, str2, i, i2, i3, i4, f, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Alliance.getHover();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Alliance$11, reason: invalid class name */
    class AnonymousClass11 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass11(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, str2, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Alliance.getHover();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.getColorNegative(false, getIsHovered());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Alliance$12, reason: invalid class name */
    class AnonymousClass12 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass12(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, str2, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Alliance.getHover();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.getColorNegative(false, getIsHovered());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Alliance$13, reason: invalid class name */
    class AnonymousClass13 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass13(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, str2, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Alliance.getHover();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.getColorNegative(false, getIsHovered());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Alliance$14, reason: invalid class name */
    class AnonymousClass14 extends Text_StaticBG {
        AnonymousClass14(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Alliance.getHover();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
        protected Color getColor(boolean z) {
            return Colors.HOVER_POSITIVE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Alliance$15, reason: invalid class name */
    class AnonymousClass15 extends ButtonGame {
        AnonymousClass15(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_PopUp(false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Alliance$16, reason: invalid class name */
    class AnonymousClass16 extends ButtonGame_ImageSparks {
        AnonymousClass16(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Alliance.confirm();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("SendProposal"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.alliance, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DiplomacyPoints") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("-" + CFG.getPrecision2(GameValues.diplomacy.DIPLOMACY_ALLIANCE_COST, 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.diplomacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(HttpResponseHeader.Expires) + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game_Calendar.getDate_ByTurnID(Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_ALLIANCE_EXPIRES), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.DIPLOMACY_CLICK;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Alliance$17, reason: invalid class name */
    class AnonymousClass17 extends MenuTitleIMG {
        AnonymousClass17(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Alliance.lTime;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Alliance$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonStatsRectIMG_Diplomacy {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Civ.getHoverBetweenCivilizations(InGame_Alliance.iCivID, Game.player.iCivID, Game.getCiv(Game.player.iCivID).diplomacy.isImprovingRelations(InGame_Alliance.iCivID), Game.getCiv(Game.player.iCivID).diplomacy.isDamagingRelations(InGame_Alliance.iCivID));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Diplomacy, aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active, aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return Colors.getColorTopStats(z, getIsHovered());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Alliance$3, reason: invalid class name */
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Alliance$4, reason: invalid class name */
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Alliance$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonStatsRectIMG_Diplomacy_Flip {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("RegimentsLimit") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + Game.getCiv(InGame_Alliance.iCivID).iRegimentsLimit, CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.regimentsLimit, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Alliance$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonStatsRectIMG_Diplomacy_Flip {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Alliance$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonRuler_Diplomacy {
        AnonymousClass7(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonRuler_Diplomacy
        public Image getRulerImage() {
            return RulersManager.rulerIMG_DiplomacyRight;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Alliance$8, reason: invalid class name */
    class AnonymousClass8 extends TextBonus {
        AnonymousClass8(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextBonus, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Alliance"), "", Images.alliance, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(HttpResponseHeader.Expires) + ": ", Game_Calendar.getDate_ByTurnID(Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_ALLIANCE_EXPIRES), Images.time, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Alliance$9, reason: invalid class name */
    class AnonymousClass9 extends TextBonus {
        AnonymousClass9(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextBonus, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("DiplomacyPoints") + ": ", "" + CFG.getPrecision2(GameValues.diplomacy.DIPLOMACY_ALLIANCE_COST, 100), Images.diplomacy, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    public InGame_Alliance(int i) {
        int height;
        int i2;
        ArrayList arrayList = new ArrayList();
        int i3 = CFG.PADDING + Images.boxTitleBORDERWIDTH;
        int height2 = ImageManager.getImage(Images.title600).getHeight();
        int width = ImageManager.getImage(Images.insideTop600).getWidth();
        int height3 = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title600).getHeight();
        int i4 = CFG.PADDING;
        int i5 = CFG.PADDING;
        iCivID = i;
        int width2 = ImageManager.getImage(Images.allianceBig).getWidth() + (CFG.PADDING * 4);
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
        arrayList.add(new AnonymousClass1(Images.allianceBig, i3, i5, i12, height4, width2));
        int height5 = i5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int buttonWidth = ButtonRuler_Diplomacy.getButtonWidth() + i3 + (CFG.PADDING * 2);
        int i13 = (i7 - buttonWidth) - (CFG.PADDING / 2);
        int buttonHeight = (ButtonRuler_Diplomacy.getButtonHeight() - (CFG.PADDING * 2)) / 3;
        int width4 = ImageManager.getImage(Game_Calendar.IMG_MANPOWER).getWidth() + (CFG.PADDING * 2);
        arrayList.add(new AnonymousClass2(Game.lang.get("Opinion") + ": " + CFG.getPrecision2(Game.getCiv(iCivID).diplomacy.getRelation(Game.player.iCivID), 1), Images.relations, buttonWidth, height5, (i13 * 2) + ((CFG.PADDING / 2) * 2), buttonHeight, width4, 0));
        arrayList.add(new AnonymousClass3("" + CFG.getShortNumber(Game.getCiv(Game.player.iCivID).iRegimentsLimit), Images.regimentsLimit, buttonWidth, CFG.PADDING + height5 + buttonHeight, i13, buttonHeight, width4, 0));
        arrayList.add(new AnonymousClass4("" + Game.getCiv(Game.player.iCivID).getNumOfProvinces(), Images.provinces, buttonWidth, height5 + ((CFG.PADDING + buttonHeight) * 2), i13, buttonHeight, width4, 0));
        arrayList.add(new AnonymousClass5("" + CFG.getShortNumber(Game.getCiv(iCivID).iRegimentsLimit), Images.regimentsLimit, CFG.PADDING + buttonWidth + i13, CFG.PADDING + height5 + buttonHeight, i13, buttonHeight, width4, 0));
        arrayList.add(new AnonymousClass6("" + Game.getCiv(iCivID).getNumOfProvinces(), Images.provinces, buttonWidth + CFG.PADDING + i13, height5 + ((CFG.PADDING + buttonHeight) * 2), i13, buttonHeight, width4, 0));
        RulersManager.loadRulerIMG_DiplomacyLeft(Game.player.iCivID);
        RulersManager.loadRulerIMG_DiplomacyRight(iCivID);
        arrayList.add(new ButtonRuler_Diplomacy(Game.player.iCivID, CFG.PADDING + i3, height5));
        arrayList.add(new AnonymousClass7(iCivID, ((width - i3) - ButtonRuler_Diplomacy.getButtonWidth()) - CFG.PADDING, height5));
        int height6 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int iCeil = (int) Math.ceil(ImageManager.getImage(Images.gold).getWidth() * 1.5f);
        arrayList.add(new AnonymousClass8(Game_Calendar.getDate_ByTurnID(Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_ALLIANCE_EXPIRES), "", Images.time, i3, height6, (i12 - ((CFG.PADDING / 2) * 2)) / 2, CFG.TEXT_HEIGHT + (CFG.PADDING * 5), iCeil));
        arrayList.add(new AnonymousClass9(Game.lang.get("Cost") + ": ", "" + CFG.getPrecision2(GameValues.diplomacy.DIPLOMACY_ALLIANCE_COST, 100), Images.diplomacy, CFG.PADDING + i3 + ((i12 - ((CFG.PADDING / 2) * 2)) / 2), height6, (i12 - ((CFG.PADDING / 2) * 2)) / 2, CFG.TEXT_HEIGHT + (CFG.PADDING * 5), iCeil));
        int height7 = height6 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int alliance_Score = DiplomacyManager.getAlliance_Score(Game.player.iCivID, iCivID);
        String str = Game.lang.get("Score") + ": ";
        String str2 = "" + alliance_Score;
        int i14 = CFG.BUTTON_HEIGHT / 2;
        float fAbs = Math.abs(alliance_Score) / 100.0f;
        arrayList.add(new AnonymousClass10(str, str2, i3, height7, i12, i14, alliance_Score > 0 ? Math.min(0.49f, fAbs) + 0.5f : 0.49f - Math.min(0.48f, fAbs), alliance_Score > 0 ? Images.v : Images.x));
        int height8 = height7 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        if (alliance_Score < 0) {
            arrayList.add(new AnonymousClass11(Game.lang.get("LikelihoodOfSuccess") + ": ", uNBYrZVGzy.znwlSSzwbug, Images.x, i3, height8, i12, CFG.BUTTON_HEIGHT3, ImageManager.getImage(Images.x).getWidth(), CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL));
            height8 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            if (Game.getCiv(Game.player.iCivID).diplomacy.alliance.size() >= DiplomacyManager.getMaxNumberOfAlliances(Game.player.iCivID) || Game.getCiv(iCivID).diplomacy.alliance.size() >= DiplomacyManager.getMaxNumberOfAlliances(iCivID)) {
                int size = Game.getCiv(Game.player.iCivID).diplomacy.alliance.size();
                int maxNumberOfAlliances = DiplomacyManager.getMaxNumberOfAlliances(Game.player.iCivID);
                String str3 = IlLkpaQxs.KsWkTCw;
                if (size >= maxNumberOfAlliances) {
                    arrayList.add(new AnonymousClass12(Game.getCiv(Game.player.iCivID).getCivName() + str3 + Game.lang.get("MaxNumOfAlliances") + ": ", "" + Game.getCiv(Game.player.iCivID).diplomacy.alliance.size() + " / " + DiplomacyManager.getMaxNumberOfAlliances(Game.player.iCivID), Images.alliance, i3, height8, i12, CFG.BUTTON_HEIGHT3, ImageManager.getImage(Images.alliance).getWidth(), CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL));
                    height8 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (Game.getCiv(iCivID).diplomacy.alliance.size() >= DiplomacyManager.getMaxNumberOfAlliances(iCivID)) {
                    arrayList.add(new AnonymousClass13(Game.getCiv(iCivID).getCivName() + str3 + Game.lang.get("MaxNumOfAlliances") + ": ", "" + Game.getCiv(iCivID).diplomacy.alliance.size() + " / " + DiplomacyManager.getMaxNumberOfAlliances(iCivID), Images.alliance, i3, height8, i12, CFG.BUTTON_HEIGHT3, ImageManager.getImage(Images.alliance).getWidth(), CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL));
                    height = arrayList.get(arrayList.size() - 1).getHeight();
                    i2 = CFG.PADDING;
                }
            } else {
                arrayList.add(new AnonymousClass14(Game.lang.get("Tip") + ": " + Game.lang.get(uNBYrZVGzy.kTzDjsYQ), CFG.FONT_REGULAR, -1, i3, height8, i12, CFG.TEXT_HEIGHT + (CFG.PADDING * 4)));
                height = arrayList.get(arrayList.size() - 1).getHeight();
                i2 = CFG.PADDING;
            }
            height8 += height + i2;
        }
        int i15 = i3 + CFG.PADDING;
        int i16 = width - (i15 * 2);
        int i17 = height8;
        arrayList.add(new AnonymousClass15(Game.lang.get("Cancel"), CFG.FONT_REGULAR, -1, i15, i17, (i16 - ((CFG.PADDING / 2) * 2)) / 2, true));
        arrayList.add(new AnonymousClass16(Game.lang.get("SendProposal"), CFG.FONT_REGULAR, -1, i15 + CFG.PADDING + ((i16 - ((CFG.PADDING / 2) * 2)) / 2), i17, (i16 - ((CFG.PADDING / 2) * 2)) / 2, true, Images.alliance));
        int height9 = height8 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
        int iMin = Math.min(height9, (CFG.GAME_HEIGHT - height2) - height3);
        arrayList.add(new Empty(0, 0, width, Math.max(height9, height9)));
        initMenu(new AnonymousClass17(Game.lang.get("OfferAlliance"), true, false, Images.title600), (CFG.GAME_WIDTH / 2) - i7, Math.min((int) (CFG.GAME_HEIGHT * 0.2f), (CFG.GAME_HEIGHT / 2) - ((iMin + height2) / 2)), width, iMin, arrayList, false, true);
    }

    public static void confirm() {
        if (Game.getCiv(Game.player.iCivID).fDiplomacy < GameValues.diplomacy.DIPLOMACY_ALLIANCE_COST) {
            Game.menuManager.addToastInsufficient(Game.lang.get("Cost") + ", " + Game.lang.get("DiplomacyPoints") + ": ", CFG.getPrecision2(GameValues.diplomacy.DIPLOMACY_ALLIANCE_COST, 100), Images.diplomacy);
            return;
        }
        DiplomacyManager.offerAlliance(Game.player.iCivID, iCivID);
        Game.menuManager.setVisibleInGame_PopUp(false);
        ProvinceDraw.addDiplomacyLines(Game.getCiv(Game.player.iCivID).getCapitalProvinceID(), Game.getCiv(iCivID).getCapitalProvinceID(), DiplomacyManager.COLOR_ALLIANCE);
    }

    public static MenuElement_Hover getHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int alliance_Score = DiplomacyManager.getAlliance_Score(Game.player.iCivID, iCivID);
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center(Game.lang.get("Alliance"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("LikelihoodOfSuccess") + ": ", alliance_Score < 0 ? "0%" : Game.lang.get("High"), Images.alliance, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, alliance_Score <= 0 ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        String str = Game.lang.get("Score") + ": ";
        String str2 = PxHJ.OKzOyNb;
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str, str2 + alliance_Score, Images.alliance, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaxNumOfAlliances") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(str2 + Game.getCiv(Game.player.iCivID).diplomacy.alliance.size() + " / " + DiplomacyManager.getMaxNumberOfAlliances(Game.player.iCivID), CFG.FONT_BOLD_SMALL, DiplomacyManager.getMaxNumberOfAlliances(Game.player.iCivID) <= Game.getCiv(Game.player.iCivID).diplomacy.alliance.size() ? Colors.HOVER_NEGATIVE : Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.player.iCivID, CFG.PADDING, 0));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.alliance, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaxNumOfAlliances") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(str2 + Game.getCiv(iCivID).diplomacy.alliance.size() + " / " + DiplomacyManager.getMaxNumberOfAlliances(iCivID), CFG.FONT_BOLD_SMALL, DiplomacyManager.getMaxNumberOfAlliances(iCivID) <= Game.getCiv(iCivID).diplomacy.alliance.size() ? Colors.HOVER_NEGATIVE : Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_Flag(iCivID, CFG.PADDING, 0));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.alliance, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("BaseValue") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(str2 + CFG.getPrecision2(DiplomacyManager.getAlliance_Score_BASE_VALUE(Game.player.iCivID, iCivID), 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Distance") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(str2 + CFG.getPrecision2(GameValues.diplomacy.ALLIANCE_SCORE_DISTANCE * Game.getDistance_PercOfMax(Game.getCiv(Game.player.iCivID).getCapitalProvinceID(), Game.getCiv(iCivID).getCapitalProvinceID()), 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (Game.getCiv(Game.player.iCivID).getIdeologyID() != Game.getCiv(iCivID).getIdeologyID()) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Government") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            if (Game.ideologiesManager.getIdeology(Game.getCiv(Game.player.iCivID).getIdeologyID()).GOV_GROUP_ID != Game.ideologiesManager.getIdeology(Game.getCiv(iCivID).getIdeologyID()).GOV_GROUP_ID) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(GameValues.diplomacy.ALLIANCE_SCORE_DIFFERENT_GOVERNMENT_GROUP, 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(GameValues.diplomacy.ALLIANCE_SCORE_DIFFERENT_GOVERNMENT, 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.government, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(Game.player.iCivID).getReligionID() != Game.getCiv(iCivID).getReligionID()) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Religion") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            if (Game.religionManager.getReligion(Game.getCiv(Game.player.iCivID).getReligionID()).ReligionGroupID != Game.religionManager.getReligion(Game.getCiv(iCivID).getReligionID()).ReligionGroupID) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(GameValues.diplomacy.ALLIANCE_SCORE_DIFFERENT_RELIGION_GROUP, 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(GameValues.diplomacy.ALLIANCE_SCORE_DIFFERENT_RELIGION, 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.religion, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(iCivID).getPuppetOfCivID() == Game.player.iCivID) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(Game_Ages.getLord()) + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(str2 + CFG.getPrecision2(GameValues.diplomacy.ALLIANCE_SCORE_FOR_VASSAL_OF_CIV, 10), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.vassal, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(Game.player.iCivID).diplomacy.isAtWar()) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AtWar") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(str2 + CFG.getPrecision2(GameValues.diplomacy.ALLIANCE_SCORE_AT_WAR, 10), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.relations, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Relations") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(str2 + CFG.getPrecision2(Game.getCiv(iCivID).diplomacy.getRelation(Game.player.iCivID) * GameValues.diplomacy.ALLIANCE_SCORE_PER_RELATION, 10), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.relations, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        float alliance_Score_SameRivals = DiplomacyManager.getAlliance_Score_SameRivals(Game.player.iCivID, iCivID);
        if (alliance_Score_SameRivals > 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Rivals") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(str2 + CFG.getPrecision2(alliance_Score_SameRivals, 10), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.rivals, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        float aggressiveExpansion = Game.getCiv(Game.player.iCivID).getAggressiveExpansion();
        if (aggressiveExpansion > 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AggressiveExpansion") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(str2 + CFG.getPrecision2(aggressiveExpansion * GameValues.diplomacy.ALLIANCE_SCORE_PER_AGGRESSIVE_EXPANSION, 10), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.aggressiveExpansion, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(Game.player.iCivID).diplomacy.isRival(iCivID)) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Rival") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(str2 + Game.getCiv(iCivID).getCivName(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.rivals, CFG.PADDING, CFG.PADDING));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(str2 + CFG.getPrecision2(GameValues.diplomacy.ALLIANCE_SCORE_RIVALS, 10), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (Game.getCiv(iCivID).diplomacy.isRival(Game.player.iCivID)) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Rival") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(str2 + Game.getCiv(Game.player.iCivID).getCivName(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.rivals, CFG.PADDING, CFG.PADDING));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(str2 + CFG.getPrecision2(GameValues.diplomacy.ALLIANCE_SCORE_RIVALS, 10), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (DiplomacyManager.getMaxNumberOfAlliances(iCivID) <= Game.getCiv(iCivID).diplomacy.alliance.size() || DiplomacyManager.getMaxNumberOfAlliances(Game.player.iCivID) <= Game.getCiv(Game.player.iCivID).diplomacy.alliance.size()) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaxNumOfAlliances") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(str2 + CFG.getPrecision2(GameValues.diplomacy.ALLIANCE_SCORE_MAX_NUM_OF_ALLIANCES, 10), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.alliance, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        return new MenuElement_Hover(arrayList);
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
