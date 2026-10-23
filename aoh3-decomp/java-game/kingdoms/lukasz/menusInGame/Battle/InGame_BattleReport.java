package aoc.kingdoms.lukasz.menusInGame.Battle;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.RulersManager;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame_Style;
import aoc.kingdoms.lukasz.menu_element.button.ButtonRuler_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Diplomacy_Flip;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_Special;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_SpecialWarscore;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static_ID;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_BattleReport extends Menu {
    public static final int ANIMATION_TIME = 60;
    public static Color colorBar = Color.WHITE;
    public static long lTime;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_BattleReport$1, reason: invalid class name */
    class AnonymousClass1 extends TextIcon_Diplomacy {
        AnonymousClass1(int i, int i2, int i3, int i4, int i5, int i6) {
            super(i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Diplomacy
        public Color getColorBar() {
            return InGame_BattleReport.colorBar;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_BattleReport$10, reason: invalid class name */
    class AnonymousClass10 extends ButtonGame_Style {
        AnonymousClass10(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_PopUp(false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_BattleReport$11, reason: invalid class name */
    class AnonymousClass11 extends MenuTitleIMG {
        AnonymousClass11(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_BattleReport.lTime;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_BattleReport$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonStatsRectIMG_Diplomacy {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Soldiers") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(CFG.getNumberWithSpaces("" + this.id), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_BattleReport$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRectIMG_Diplomacy {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Casualties") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(CFG.getNumberWithSpaces("" + this.id), CFG.FONT_BOLD, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.skull, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_BattleReport$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonStatsRectIMG_Diplomacy {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Retreated") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(CFG.getNumberWithSpaces("" + this.id), CFG.FONT_BOLD, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.retreat, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_BattleReport$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonStatsRectIMG_Diplomacy_Flip {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Soldiers") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(CFG.getNumberWithSpaces("" + this.id), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_BattleReport$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonStatsRectIMG_Diplomacy_Flip {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Casualties") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(CFG.getNumberWithSpaces("" + this.id), CFG.FONT_BOLD, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.skull, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_BattleReport$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonStatsRectIMG_Diplomacy_Flip {
        AnonymousClass7(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Retreated") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(CFG.getNumberWithSpaces("" + this.id), CFG.FONT_BOLD, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.retreat, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_BattleReport$8, reason: invalid class name */
    class AnonymousClass8 extends ButtonRuler_Diplomacy {
        AnonymousClass8(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonRuler_Diplomacy
        public Image getRulerImage() {
            return RulersManager.rulerIMG_DiplomacyRight;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_BattleReport$9, reason: invalid class name */
    class AnonymousClass9 extends Text_StaticBG_ID_Special {
        AnonymousClass9(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
        protected Color getColor(boolean z) {
            return Colors.getColorPositive(z, getIsHovered());
        }
    }

    public InGame_BattleReport(int i) {
        ArrayList arrayList = new ArrayList();
        int i2 = CFG.PADDING + Images.boxTitleBORDERWIDTH;
        ImageManager.getImage(Images.title600).getHeight();
        int width = ImageManager.getImage(Images.insideTop600).getWidth();
        int i3 = CFG.PADDING;
        int height = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title1Red).getHeight();
        int i4 = CFG.PADDING;
        int i5 = CFG.PADDING;
        try {
            int i6 = Game.player.lBattleReports.get(i).civReportLeft.iCivID;
            int i7 = Game.player.lBattleReports.get(i).civReportRight.iCivID;
            int width2 = ImageManager.getImage(Images.battleBig).getWidth() + (CFG.PADDING * 4);
            int i8 = CFG.PADDING;
            int height2 = ImageManager.getImage(Images.flagDiplomacyOver).getHeight() + (i8 * 2);
            int width3 = ((((width / 2) - i2) - (CFG.PADDING * 2)) - (width2 / 2)) - ImageManager.getImage(Images.flagDiplomacyOver).getWidth();
            if (Game.player.lBattleReports.get(i).playerWon) {
                colorBar = DiplomacyManager.COLOR_GREEN;
            } else {
                colorBar = DiplomacyManager.COLOR_RED;
            }
            int i9 = i8 + i5;
            arrayList.add(new ButtonFlag_Diplomacy(i6, (((width / 2) - (width2 / 2)) - (CFG.PADDING * 2)) - ImageManager.getImage(Images.flagDiplomacyOver).getWidth(), i9, true));
            arrayList.add(new ButtonFlag_Diplomacy(i7, (width / 2) + (width2 / 2) + (CFG.PADDING * 2), i9, true));
            arrayList.add(new Text_Static_ID(i7, Game.getCiv(i7).getCivName(), CFG.FONT_REGULAR, -1, (width / 2) + (width2 / 2) + (CFG.PADDING * 2) + ImageManager.getImage(Images.flagDiplomacyOver).getWidth(), i5, width3, height2));
            arrayList.add(new Text_Static_ID(i6, Game.getCiv(i6).getCivName(), CFG.FONT_REGULAR, -1, i2, i5, width3, height2));
            arrayList.add(new AnonymousClass1(Images.battleBig, i2, i5, width - (i2 * 2), height2, width2));
            int height3 = i5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int buttonWidth = ButtonRuler_Diplomacy.getButtonWidth() + i2 + CFG.PADDING;
            int i10 = ((width / 2) - buttonWidth) - (CFG.PADDING / 2);
            int buttonHeight = (ButtonRuler_Diplomacy.getButtonHeight() - (CFG.PADDING * 3)) / 4;
            int width4 = ImageManager.getImage(Game_Calendar.IMG_MANPOWER).getWidth() + (CFG.PADDING * 2);
            arrayList.add(new Text_StaticBG_ID_SpecialWarscore("" + Game.lang.get("WarScore") + ": ", CFG.getPrecision2(Game.player.lBattleReports.get(i).fWarScore, 100) + "%", CFG.FONT_REGULAR, -1, buttonWidth, height3, (i10 * 2) + CFG.PADDING, buttonHeight, 0));
            arrayList.add(new AnonymousClass2("" + CFG.getShortNumber(Game.player.lBattleReports.get(i).civReportLeft.iSoldiers), Game_Calendar.IMG_MANPOWER, buttonWidth, CFG.PADDING + height3 + buttonHeight, i10, buttonHeight, width4, Game.player.lBattleReports.get(i).civReportLeft.iSoldiers));
            arrayList.add(new AnonymousClass3("" + CFG.getShortNumber(Game.player.lBattleReports.get(i).civReportLeft.iCasualties), Images.skull, buttonWidth, height3 + ((CFG.PADDING + buttonHeight) * 2), i10, buttonHeight, width4, Game.player.lBattleReports.get(i).civReportLeft.iCasualties));
            arrayList.add(new AnonymousClass4("" + CFG.getShortNumber(Game.player.lBattleReports.get(i).civReportLeft.iRetreated), Images.retreat, buttonWidth, height3 + ((CFG.PADDING + buttonHeight) * 3), i10, buttonHeight, width4, Game.player.lBattleReports.get(i).civReportLeft.iRetreated));
            arrayList.add(new AnonymousClass5("" + CFG.getShortNumber(Game.player.lBattleReports.get(i).civReportRight.iSoldiers), Game_Calendar.IMG_MANPOWER, CFG.PADDING + buttonWidth + i10, CFG.PADDING + height3 + buttonHeight, i10, buttonHeight, width4, Game.player.lBattleReports.get(i).civReportRight.iSoldiers));
            arrayList.add(new AnonymousClass6("" + CFG.getShortNumber(Game.player.lBattleReports.get(i).civReportRight.iCasualties), Images.skull, CFG.PADDING + buttonWidth + i10, height3 + ((CFG.PADDING + buttonHeight) * 2), i10, buttonHeight, width4, Game.player.lBattleReports.get(i).civReportRight.iCasualties));
            arrayList.add(new AnonymousClass7("" + CFG.getShortNumber(Game.player.lBattleReports.get(i).civReportRight.iRetreated), Images.retreat, buttonWidth + CFG.PADDING + i10, height3 + ((CFG.PADDING + buttonHeight) * 3), i10, buttonHeight, width4, Game.player.lBattleReports.get(i).civReportRight.iRetreated));
            RulersManager.loadRulerIMG_DiplomacyLeft(i6);
            RulersManager.loadRulerIMG_DiplomacyRight(i7);
            arrayList.add(new ButtonRuler_Diplomacy(i6, i2, height3));
            try {
                arrayList.add(new AnonymousClass8(i7, (width - i2) - ButtonRuler_Diplomacy.getButtonWidth(), height3));
                int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i11 = i2 + CFG.PADDING;
                int i12 = width - (i11 * 2);
                arrayList.add(new AnonymousClass9(Game.lang.get("Victorious"), CFG.FONT_BOLD, -1, Game.player.lBattleReports.get(i).leftSideWon ? i11 : CFG.PADDING + i11 + (((width - (i11 * 2)) - ((CFG.PADDING / 2) * 2)) / 2), height4, (i12 - ((CFG.PADDING / 2) * 2)) / 2, CFG.BUTTON_HEIGHT2, 0));
                arrayList.add(new AnonymousClass10(Game.lang.get("Close"), CFG.FONT_REGULAR, -1, Game.player.lBattleReports.get(i).leftSideWon ? i11 + CFG.PADDING + ((i12 - ((CFG.PADDING / 2) * 2)) / 2) : i11, height4, (i12 - ((CFG.PADDING / 2) * 2)) / 2, true));
                int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
                int iMin = Math.min(height5, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 3));
                arrayList.add(new Empty(0, 0, width, Math.max(height5, height5)));
                initMenu(new AnonymousClass11(Game.lang.get("BattleOf", Game.getProvince(Game.player.lBattleReports.get(i).iProvinceID).getProvinceName()), true, false, Images.title600), (CFG.GAME_WIDTH / 2) - (width / 2), height, width, iMin, arrayList, false, true);
            } catch (Exception e) {
                e = e;
                CFG.exceptionStack(e);
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        DiplomacyManager.updateInAnimation();
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i2 - CFG.BUTTON_HEIGHT) + ((int) (CFG.BUTTON_HEIGHT * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i2;
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
