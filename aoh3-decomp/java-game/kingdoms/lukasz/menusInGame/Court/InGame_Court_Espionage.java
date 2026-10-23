package aoc.kingdoms.lukasz.menusInGame.Court;

import aoc.kingdoms.lukasz.jakowski.AI.Government.nSju.IlLkpaQxs;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.advisors.VjN.hQfu;
import aoc.kingdoms.lukasz.map.battles.BattleManager;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRanking;
import aoc.kingdoms.lukasz.map.technology.TechnologyTree;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonArmyBattle;
import aoc.kingdoms.lukasz.menu_element.button.ButtonArmyGeneral2_Armies;
import aoc.kingdoms.lukasz.menu_element.button.ButtonArmyNoGeneral2_Armies;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Balance_Spy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Right2;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style;
import aoc.kingdoms.lukasz.menu_element.button.ButtonTechnology;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagCiv_Title;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextArmies;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_RulerTitle;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2Center;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ;
import aoc.kingdoms.lukasz.menusInGame.InGame_Armies;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g3d.model.data.xlbt.LBhZogys;
import com.badlogic.gdx.net.HttpResponseHeader;
import com.badlogic.gdx.utils.compression.spWT.QefTqRjwAJmEDy;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Court_Espionage extends Menu {
    public int iCivID;
    public int iReportEndTurnID;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Espionage$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonFlag {
        AnonymousClass1(int i, int i2, int i3, boolean z) {
            super(i, i2, i3, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_Civ() && InGame_Civ.iActiveCivID == getCurrent()) {
                Game.menuManager.setVisibleInGame_Civ(false);
                return;
            }
            boolean visibleInGame_Civ = Game.menuManager.getVisibleInGame_Civ();
            InGame_Civ.iRebuildToCivID = this.iCivID;
            Game.menuManager.rebuildInGame_Civ();
            if (visibleInGame_Civ) {
                InGame_Civ.lTime = 0L;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(this.iCivID, CivilizationRanking.getCivilizationRank_Name(Game.getCiv(this.iCivID).iCivRankID)));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("OpenTheDiplomacyView"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.diplomacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag
        public int getFlagCivID() {
            return this.iCivID;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Espionage$10, reason: invalid class name */
    class AnonymousClass10 extends ButtonStatsRectIMG_Bonuses_Style {
        AnonymousClass10(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        protected void drawButtonBG_Animation(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        public Color getColorBonus() {
            return Colors.HOVER_GOLD;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Espionage$11, reason: invalid class name */
    class AnonymousClass11 extends ButtonStatsRectIMG_Bonuses_Style {
        AnonymousClass11(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        protected void drawButtonBG_Animation(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        public Color getColorBonus() {
            return Colors.HOVER_GOLD;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Espionage$12, reason: invalid class name */
    class AnonymousClass12 extends ButtonStatsRectIMG_Bonuses_Style {
        AnonymousClass12(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        protected void drawButtonBG_Animation(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        public Color getColorBonus() {
            return Colors.COLOR_TEXT_MODIFIER_POSITIVE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Espionage$13, reason: invalid class name */
    class AnonymousClass13 extends ButtonStatsRectIMG_Bonuses_Style {
        final /* synthetic */ int val$iCivID;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass13(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, str2, i, i2, i3, i4, i5, i6);
            this.val$iCivID = i7;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("BattleWidth") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + BattleManager.getBattleWidth(this.val$iCivID), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.battleWidth, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("BattleWidthRefersToTheNumberOfUnitsThatCanBeDeployedInAFormationOnTheBattlefield"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        protected void drawButtonBG_Animation(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        public Color getColorBonus() {
            return Colors.HOVER_GOLD;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Espionage$14, reason: invalid class name */
    class AnonymousClass14 extends ButtonStatsRectIMG_Bonuses_Style {
        final /* synthetic */ int val$iCivID;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass14(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, str2, i, i2, i3, i4, i5, i6);
            this.val$iCivID = i7;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Discipline") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + CFG.getPrecision2(Game.getCiv(this.val$iCivID).civBonuses.Discipline * 100.0f, 10) + "%", Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.discipline, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("DisciplineSignifiesOrganizationAndCoordinationOfTheArmyInBattleIncreasingUnitsAttack"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        protected void drawButtonBG_Animation(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        public Color getColorBonus() {
            return Colors.HOVER_GOLD;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Espionage$15, reason: invalid class name */
    class AnonymousClass15 extends ButtonStatsRectIMG_Bonuses_Style {
        AnonymousClass15(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        protected void drawButtonBG_Animation(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        public Color getColorBonus() {
            return Colors.HOVER_GOLD;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Espionage$16, reason: invalid class name */
    class AnonymousClass16 extends ButtonArmyNoGeneral2_Armies {
        AnonymousClass16(String str, int i, int i2, int i3, String str2, int i4, int i5) {
            super(str, i, i2, i3, str2, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonArmyNoGeneral2_Armies, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonArmyNoGeneral2, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("NoGeneral"), CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(this.iCivID, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Espionage$17, reason: invalid class name */
    class AnonymousClass17 extends ButtonArmyGeneral2_Armies {
        AnonymousClass17(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, String str2, int i10, int i11, String str3, int i12) {
            super(str, i, i2, i3, i4, i5, i6, i7, i8, i9, str2, i10, i11, str3, i12);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonArmyGeneral2_Armies, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Espionage$18, reason: invalid class name */
    class AnonymousClass18 extends ButtonArmyBattle {
        AnonymousClass18(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Espionage$19, reason: invalid class name */
    class AnonymousClass19 extends TextArmies {
        AnonymousClass19(String str, String str2, int i, int i2, int i3, int i4, String str3, int i5, int i6, int i7) {
            super(str, str2, i, i2, i3, i4, str3, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextArmies, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextArmies, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = null;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Espionage$2, reason: invalid class name */
    class AnonymousClass2 extends Text_StaticBG_RulerTitle {
        final /* synthetic */ int val$iCivID;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4);
            this.val$iCivID = i5;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.mapCoords.centerToProvinceID(Game.getCiv(this.val$iCivID).getCapitalProvinceID());
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("CenterToCivilization"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.capital, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (Game.getCiv(this.val$iCivID).getCapitalProvinceID() >= 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Capital") + ": ", CFG.FONT_BOLD, Colors.HOVER_LEFT));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(Game.getCiv(this.val$iCivID).getCapitalProvinceID()).getProvinceName(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.capital, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList, Game.getCiv(this.val$iCivID).getCapitalProvinceID() < 0);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Espionage$20, reason: invalid class name */
    class AnonymousClass20 extends ButtonStatsRectIMG_Bonuses_Style {
        AnonymousClass20(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        protected void drawButtonBG_Animation(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        public Color getColorBonus() {
            return Colors.HOVER_GOLD;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Espionage$21, reason: invalid class name */
    class AnonymousClass21 extends ButtonStatsRectIMG_Bonuses_Style {
        AnonymousClass21(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        protected void drawButtonBG_Animation(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        public Color getColorBonus() {
            return Colors.HOVER_GOLD;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Espionage$22, reason: invalid class name */
    class AnonymousClass22 extends TextIcon2 {
        AnonymousClass22(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("ResearchCost") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), CFG.FONT_BOLD, Colors.COLOR_TEXT_RESEARCH));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2
        public int getTextH() {
            return CFG.TEXT_HEIGHT + (CFG.PADDING * 4);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Espionage$23, reason: invalid class name */
    class AnonymousClass23 extends ButtonTechnology {
        AnonymousClass23(int i, int i2, int i3, int i4, boolean z, int i5, int i6) {
            super(i, i2, i3, i4, z, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonTechnology, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Espionage$24, reason: invalid class name */
    class AnonymousClass24 extends ButtonStatsRectIMG_Bonuses_Style {
        AnonymousClass24(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        protected void drawButtonBG_Animation(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        public Color getColorBonus() {
            return Colors.HOVER_GOLD;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Espionage$25, reason: invalid class name */
    class AnonymousClass25 extends ButtonStatsRectIMG_Bonuses_Style {
        AnonymousClass25(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        protected void drawButtonBG_Animation(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        public Color getColorBonus() {
            return Colors.HOVER_GOLD;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Espionage$26, reason: invalid class name */
    class AnonymousClass26 extends ButtonStatsRectIMG_Bonuses_Style {
        AnonymousClass26(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        protected void drawButtonBG_Animation(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        public Color getColorBonus() {
            return Colors.HOVER_GOLD;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Espionage$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRectIMG_Bonuses_Style {
        final /* synthetic */ int val$iCivID;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, str2, i, i2, i3, i4, i5, i6);
            this.val$iCivID = i7;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            Color color;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            float f = Game.getCiv(this.val$iCivID).fTotalIncomePerMonth + Game.getCiv(this.val$iCivID).civBonuses.MonthlyIncome;
            String str = Game.lang.get("TotalIncome") + ": ";
            String str2 = "" + (f > 0.0f ? "+" : "") + CFG.getPrecision2(f, 100);
            int i = Images.gold;
            int i2 = CFG.FONT_REGULAR;
            int i3 = CFG.FONT_BOLD;
            Color color2 = Colors.HOVER_LEFT;
            if (f == 0.0f) {
                color = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
            } else {
                color = f > 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str, str2, i, i2, i3, color2, color));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        protected void drawButtonBG_Animation(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Espionage$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonStatsBudget_Right2 {
        final /* synthetic */ int val$iCivID;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4);
            this.val$iCivID = i5;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != Game.getCiv(this.val$iCivID).fTotalIncomePerMonth + Game.getCiv(this.val$iCivID).civBonuses.MonthlyIncome) {
                float f = Game.getCiv(this.val$iCivID).fTotalIncomePerMonth + Game.getCiv(this.val$iCivID).civBonuses.MonthlyIncome;
                setText((f > 0.0f ? "+" : IlLkpaQxs.WtcZujDTQOs) + CFG.getPrecision2(f, 100));
                this.lastValue = f;
                if (f == 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_ACTIVE;
                } else if (f > 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_POSITIVE;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_POSITIVE_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_POSITIVE_ACTIVE;
                } else {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_ACTIVE;
                }
            }
            return super.getTextToDraw();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Espionage$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonStatsRectIMG_Bonuses_Style {
        final /* synthetic */ int val$iCivID;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass5(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, str2, i, i2, i3, i4, i5, i6);
            this.val$iCivID = i7;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            Color color;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            float f = Game.getCiv(this.val$iCivID).fTotalExpensesPerMonth;
            String str = Game.lang.get("TotalExpenses") + ": ";
            String str2 = "" + (f > 0.0f ? "-" : "") + CFG.getPrecision2(f, 100);
            int i = Images.goldNegative;
            int i2 = CFG.FONT_REGULAR;
            int i3 = CFG.FONT_BOLD;
            Color color2 = Colors.HOVER_LEFT;
            if (f == 0.0f) {
                color = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
            } else {
                color = f > 0.0f ? Colors.COLOR_TEXT_MODIFIER_NEGATIVE : Colors.COLOR_TEXT_MODIFIER_POSITIVE;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str, str2, i, i2, i3, color2, color));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        protected void drawButtonBG_Animation(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Espionage$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonStatsBudget_Right2 {
        final /* synthetic */ int val$iCivID;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4);
            this.val$iCivID = i5;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != Game.getCiv(this.val$iCivID).fTotalExpensesPerMonth) {
                float f = Game.getCiv(this.val$iCivID).fTotalExpensesPerMonth;
                setText((f > 0.0f ? "-" : "") + CFG.getPrecision2(f, 100));
                this.lastValue = f;
                if (f == 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_ACTIVE;
                } else if (f > 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_ACTIVE;
                } else {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_POSITIVE;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_POSITIVE_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_POSITIVE_ACTIVE;
                }
            }
            return super.getTextToDraw();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Espionage$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonStatsRectIMG_Bonuses_Style {
        final /* synthetic */ int val$iCivID;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass7(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, str2, i, i2, i3, i4, i5, i6);
            this.val$iCivID = i7;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            Color color;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            float f = (Game.getCiv(this.val$iCivID).fTotalIncomePerMonth + Game.getCiv(this.val$iCivID).civBonuses.MonthlyIncome) - Game.getCiv(this.val$iCivID).fTotalExpensesPerMonth;
            String str = Game.lang.get("TotalIncome") + ": ";
            String str2 = "" + (f > 0.0f ? "+" : "") + CFG.getPrecision2(f, 100);
            int i = Images.gold;
            int i2 = CFG.FONT_REGULAR;
            int i3 = CFG.FONT_BOLD;
            Color color2 = Colors.HOVER_LEFT;
            if (f == 0.0f) {
                color = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
            } else {
                color = f > 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str, str2, i, i2, i3, color2, color));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        protected void drawButtonBG_Animation(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Espionage$8, reason: invalid class name */
    class AnonymousClass8 extends ButtonStatsBudget_Right2 {
        final /* synthetic */ int val$iCivID;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass8(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4);
            this.val$iCivID = i5;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != (Game.getCiv(this.val$iCivID).fTotalIncomePerMonth + Game.getCiv(this.val$iCivID).civBonuses.MonthlyIncome) - Game.getCiv(this.val$iCivID).fTotalExpensesPerMonth) {
                float f = (Game.getCiv(this.val$iCivID).fTotalIncomePerMonth + Game.getCiv(this.val$iCivID).civBonuses.MonthlyIncome) - Game.getCiv(this.val$iCivID).fTotalExpensesPerMonth;
                setText2((f > 0.0f ? "+" : "") + CFG.getPrecision2(f, 100));
                this.lastValue = f;
                if (f == 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_ACTIVE;
                } else if (f > 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_POSITIVE;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_POSITIVE_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_POSITIVE_ACTIVE;
                } else {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_ACTIVE;
                }
            }
            return super.getTextToDraw();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Espionage$9, reason: invalid class name */
    class AnonymousClass9 extends ButtonStatsBudget_Balance_Spy {
        final /* synthetic */ int val$iCivID;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass9(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5);
            this.val$iCivID = i6;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            Color color;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int i = this.val$iCivID;
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(i, CivilizationRanking.getCivilizationRank_Name(Game.getCiv(i).iCivRankID)));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            float f = Game.getCiv(this.val$iCivID).fGold;
            String str = Game.lang.get("Treasury") + ": ";
            String str2 = "" + CFG.getPrecision2(f, 100);
            int i2 = Images.gold;
            int i3 = CFG.FONT_REGULAR;
            int i4 = CFG.FONT_BOLD;
            Color color2 = Colors.HOVER_LEFT;
            if (f == 0.0f) {
                color = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
            } else {
                color = f > 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str, str2, i2, i3, i4, color2, color));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Balance
        public String getText2() {
            if (this.lastValue != Game.getCiv(this.val$iCivID).fGold) {
                float f = Game.getCiv(this.val$iCivID).fGold;
                setText2((f > 0.0f ? "+" : "") + CFG.getPrecision2(f, 100));
                this.lastValue = f;
                if (f == 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_ACTIVE;
                } else if (f > 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_POSITIVE;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_POSITIVE_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_POSITIVE_ACTIVE;
                } else {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_ACTIVE;
                }
            }
            return this.sText2;
        }
    }

    public InGame_Court_Espionage(int i, int i2) {
        String str;
        int i3;
        ArrayList arrayList;
        this.iCivID = 1;
        ArrayList arrayList2 = new ArrayList();
        this.iCivID = i;
        this.iReportEndTurnID = i2;
        int i4 = Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2);
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int otherMenuPosX = InGame_CourtOptions2.getOtherMenuPosX();
        int height = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i5 = CFG.PADDING * 2;
        int i6 = CFG.PADDING * 2;
        int buttonWidth = ((width - (i4 * 2)) - ButtonFlag.getButtonWidth()) - (CFG.PADDING * 2);
        int buttonHeight = (ButtonFlag.getButtonHeight() - CFG.PADDING) / 2;
        arrayList2.add(new AnonymousClass1(i, i4, i6, true));
        arrayList2.add(new AnonymousClass2(Game.getCiv(i).getCivName(), ButtonFlag.getButtonWidth() + i4 + (CFG.PADDING * 2), i6, buttonWidth, buttonHeight, i));
        String str2 = ": ";
        arrayList2.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get(HttpResponseHeader.Expires) + ": ", "" + Game_Calendar.getDate_ByTurnID(i2), Images.time, i4 + ButtonFlag.getButtonWidth() + (CFG.PADDING * 2), i6 + buttonHeight + CFG.PADDING, buttonWidth, buttonHeight, ImageManager.getImage(Images.gold).getWidth()));
        int buttonHeight2 = i6 + ButtonFlag.getButtonHeight() + CFG.PADDING;
        int i7 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
        int width2 = ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4) + (CFG.PADDING / 2);
        int i8 = CFG.TEXT_HEIGHT + (CFG.PADDING * 4);
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_BOLD), "+999 999");
        int i9 = ((int) Renderer.glyphLayout.width) + (CFG.PADDING * 4) + (CFG.PADDING / 2);
        int i10 = width - (i7 * 2);
        int i11 = (i10 - CFG.PADDING) - i9;
        arrayList2.add(new Text_Title_v2Center(Game.lang.get("Budget"), -1, Images.boxTitleBORDERWIDTH, buttonHeight2, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height2 = buttonHeight2 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        arrayList2.add(new AnonymousClass3(Game.lang.get("TotalIncome"), "", Images.goldPositive, i7, height2, i11, i8, width2, i));
        int i12 = i7 + i11;
        arrayList2.add(new AnonymousClass4("+" + CFG.getPrecision2(Game.getCiv(i).fTotalIncomePerMonth + Game.getCiv(i).civBonuses.MonthlyIncome, 100), i12 + CFG.PADDING, height2, i9, i8, i));
        int height3 = height2 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        float f = Game.getCiv(i).fTotalExpensesPerMonth;
        int i13 = width;
        arrayList2.add(new AnonymousClass5(Game.lang.get("TotalExpenses"), hQfu.IbtAX, Images.goldNegative, i7, height3, i11, i8, width2, i));
        arrayList2.add(new AnonymousClass6((f >= 0.0f ? "+" : "-") + CFG.getPrecision2(Game.getCiv(i).fTotalExpensesPerMonth, 100), i12 + CFG.PADDING, height3, i9, i8, i));
        int height4 = height3 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        float f2 = (Game.getCiv(i).fTotalIncomePerMonth + Game.getCiv(i).civBonuses.MonthlyIncome) - Game.getCiv(i).fTotalExpensesPerMonth;
        arrayList2.add(new AnonymousClass7(Game.lang.get("Balance"), "", Images.gold, i7, height4, i11, i8, width2, i));
        arrayList2.add(new AnonymousClass8((f2 >= 0.0f ? "+" : "") + CFG.getPrecision2(f2, 100), i12 + CFG.PADDING, height4, i9, i8, i));
        int height5 = height4 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        String str3 = "";
        arrayList2.add(new AnonymousClass9(Game.lang.get("Treasury") + ": ", str3 + CFG.getPrecision2(Game.getCiv(i).fGold, 100), Images.gold, i7, height5, i10, CFG.TEXT_HEIGHT + (CFG.PADDING * 10), i));
        int height6 = height5 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        arrayList2.add(new Text_Title_v2Center(Game.lang.get("Armies"), -1, Images.boxTitleBORDERWIDTH, height6, i13 - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height7 = height6 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        arrayList2.add(new AnonymousClass10(Game.lang.get("Manpower") + ": ", str3 + CFG.getNumberWithSpaces(str3 + CFG.getPrecision2(Game.getCiv(i).fManpower, 1)), Game_Calendar.IMG_MANPOWER, i7, height7, i10, CFG.BUTTON_HEIGHT3, ImageManager.getImage(Images.gold).getWidth()));
        int height8 = height7 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        arrayList2.add(new AnonymousClass11(Game.lang.get("MaximumManpower") + ": ", str3 + CFG.getNumberWithSpaces(str3 + CFG.getPrecision2(Game.getCiv(i).fManpowerMax, 1)), Game_Calendar.IMG_MANPOWER, i7, height8, i10, CFG.BUTTON_HEIGHT3, ImageManager.getImage(Images.gold).getWidth()));
        int height9 = height8 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        arrayList2.add(new AnonymousClass12(Game.lang.get("ManpowerPerMonth") + ": ", "+" + CFG.getPrecision2(Game.getCiv(i).fManpowerPerMonth, 10), Game_Calendar.IMG_MANPOWER, i7, height9, i10, CFG.BUTTON_HEIGHT3, ImageManager.getImage(Images.gold).getWidth()));
        int height10 = height9 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        arrayList2.add(new AnonymousClass13(Game.lang.get("BattleWidth") + ": ", str3 + BattleManager.getBattleWidth(i), Images.battleWidth, i7, height10, (i10 - CFG.PADDING) / 2, CFG.BUTTON_HEIGHT3, ImageManager.getImage(Images.battleWidth).getWidth(), i));
        int i14 = i10;
        arrayList2.add(new AnonymousClass14(Game.lang.get("Discipline") + ": ", str3 + CFG.getPrecision2(Game.getCiv(i).civBonuses.Discipline * 100.0f, 10) + "%", Images.discipline, i7 + CFG.PADDING + ((i10 - CFG.PADDING) / 2), height10, (i10 - CFG.PADDING) / 2, CFG.BUTTON_HEIGHT3, ImageManager.getImage(Images.battleWidth).getWidth(), i));
        int height11 = height10 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        arrayList2.add(new AnonymousClass15(Game.lang.get("NumberOfRegiments") + ": ", str3 + CFG.getNumberWithSpaces(str3 + CFG.getPrecision2(Game.getCiv(i).getArmyRegimentSize(), 1)), Game_Calendar.IMG_MANPOWER, i7, height11, i14, CFG.BUTTON_HEIGHT3, ImageManager.getImage(Images.gold).getWidth()));
        int height12 = height11 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        if (Game.getCiv(i).iArmyPositionSize == 0) {
            arrayList2.add(new Text_StaticBG(Game.lang.get("None") + ".", CFG.FONT_REGULAR_SMALL, -1, i7 + 0, height12, i14, ImageManager.getImage(Images.generalFrameBattle).getHeight() + CFG.TEXT_HEIGHT + (CFG.PADDING * 2)));
            height12 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        } else {
            ArrayList arrayList3 = new ArrayList();
            ArrayList arrayList4 = new ArrayList();
            for (int i15 = 0; i15 < Game.getCiv(i).iArmyPositionSize; i15++) {
                int armyPosition = Game.getCiv(i).getArmyPosition(i15);
                if (armyPosition >= 0) {
                    for (int armySize = Game.getProvince(armyPosition).getArmySize() - 1; armySize >= 0; armySize--) {
                        if (Game.getProvince(armyPosition).getArmy(armySize).civID == i && Game.getCiv(i).getArmyPositionKey(i15).equals(Game.getProvince(armyPosition).getArmy(armySize).key)) {
                            arrayList3.add(new InGame_Armies.SortedArmies(armyPosition, armySize, InGame_Armies.getSortKey(Game.getProvince(armyPosition).getArmy(armySize).key)));
                        }
                    }
                }
            }
            boolean z = true;
            while (arrayList3.size() > 0) {
                int size = arrayList3.size();
                int i16 = 0;
                for (int i17 = 1; i17 < size; i17++) {
                    if (((InGame_Armies.SortedArmies) arrayList3.get(i16)).sortKey > ((InGame_Armies.SortedArmies) arrayList3.get(i17)).sortKey) {
                        i16 = i17;
                    }
                }
                arrayList4.add((InGame_Armies.SortedArmies) arrayList3.get(i16));
                arrayList3.remove(i16);
            }
            int buttonHeight3 = (ButtonArmyBattle.getButtonHeight() - CFG.PADDING) / 2;
            int size2 = arrayList4.size();
            int i18 = 0;
            while (i18 < size2) {
                int i19 = height12 + CFG.TEXT_HEIGHT + (CFG.PADDING * 6);
                int i20 = i7 + CFG.PADDING;
                if (Game.getProvince(((InGame_Armies.SortedArmies) arrayList4.get(i18)).iProvinceID).getArmy(((InGame_Armies.SortedArmies) arrayList4.get(i18)).iArmyID).armyGeneral == null) {
                    arrayList2.add(new AnonymousClass16(Game.lang.get("NoGeneral"), i, i20 + 0, i19, Game.getProvince(((InGame_Armies.SortedArmies) arrayList4.get(i18)).iProvinceID).getArmy(((InGame_Armies.SortedArmies) arrayList4.get(i18)).iArmyID).key, Game.getProvince(((InGame_Armies.SortedArmies) arrayList4.get(i18)).iProvinceID).getArmy(((InGame_Armies.SortedArmies) arrayList4.get(i18)).iArmyID).civID, ((InGame_Armies.SortedArmies) arrayList4.get(i18)).iProvinceID));
                    arrayList = arrayList4;
                    i3 = i18;
                    str = str3;
                } else {
                    String str4 = str3;
                    int i21 = i18;
                    ArrayList arrayList5 = arrayList4;
                    str = str4;
                    i3 = i21;
                    arrayList = arrayList5;
                    arrayList2 = arrayList2;
                    arrayList2.add(new AnonymousClass17(Game.getProvince(((InGame_Armies.SortedArmies) arrayList4.get(i21)).iProvinceID).getArmy(((InGame_Armies.SortedArmies) arrayList4.get(i21)).iArmyID).armyGeneral.n, Game.getProvince(((InGame_Armies.SortedArmies) arrayList4.get(i21)).iProvinceID).getArmy(((InGame_Armies.SortedArmies) arrayList4.get(i21)).iArmyID).civID, Game.getProvince(((InGame_Armies.SortedArmies) arrayList4.get(i21)).iProvinceID).getArmy(((InGame_Armies.SortedArmies) arrayList4.get(i21)).iArmyID).armyGeneral.getAttack(), Game.getProvince(((InGame_Armies.SortedArmies) arrayList4.get(i21)).iProvinceID).getArmy(((InGame_Armies.SortedArmies) arrayList4.get(i21)).iArmyID).armyGeneral.getDefense(), i20 + 0, i19, Game.getProvince(((InGame_Armies.SortedArmies) arrayList4.get(i21)).iProvinceID).getArmy(((InGame_Armies.SortedArmies) arrayList4.get(i21)).iArmyID).armyGeneral.g, Game.getProvince(((InGame_Armies.SortedArmies) arrayList4.get(i21)).iProvinceID).getArmy(((InGame_Armies.SortedArmies) arrayList4.get(i21)).iArmyID).armyGeneral.d, Game.getProvince(((InGame_Armies.SortedArmies) arrayList4.get(i21)).iProvinceID).getArmy(((InGame_Armies.SortedArmies) arrayList4.get(i21)).iArmyID).armyGeneral.m, Game.getProvince(((InGame_Armies.SortedArmies) arrayList5.get(i21)).iProvinceID).getArmy(((InGame_Armies.SortedArmies) arrayList5.get(i21)).iArmyID).armyGeneral.y, Game.getProvince(((InGame_Armies.SortedArmies) arrayList5.get(i21)).iProvinceID).getArmy(((InGame_Armies.SortedArmies) arrayList5.get(i21)).iArmyID).key, Game.getProvince(((InGame_Armies.SortedArmies) arrayList5.get(i21)).iProvinceID).getArmy(((InGame_Armies.SortedArmies) arrayList5.get(i21)).iArmyID).civID, ((InGame_Armies.SortedArmies) arrayList5.get(i21)).iProvinceID, Game.getProvince(((InGame_Armies.SortedArmies) arrayList5.get(i21)).iProvinceID).getArmy(((InGame_Armies.SortedArmies) arrayList5.get(i21)).iArmyID).armyGeneral.sI, Game.getProvince(((InGame_Armies.SortedArmies) arrayList5.get(i21)).iProvinceID).getArmy(((InGame_Armies.SortedArmies) arrayList5.get(i21)).iArmyID).armyGeneral.getCombatExperience()));
                }
                int i22 = 1;
                int width3 = i20 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                ArrayList arrayList6 = arrayList;
                int i23 = i3;
                int i24 = 0;
                while (i24 < Game.getProvince(((InGame_Armies.SortedArmies) arrayList6.get(i23)).iProvinceID).getArmy(((InGame_Armies.SortedArmies) arrayList6.get(i23)).iArmyID).iArmyRegimentSize) {
                    int i25 = Game.getProvince(((InGame_Armies.SortedArmies) arrayList6.get(i23)).iProvinceID).getArmy(((InGame_Armies.SortedArmies) arrayList6.get(i23)).iArmyID).lArmyRegiment.get(i24).num;
                    int i26 = i22;
                    for (int i27 = i24 + 1; i27 < Game.getProvince(((InGame_Armies.SortedArmies) arrayList6.get(i23)).iProvinceID).getArmy(((InGame_Armies.SortedArmies) arrayList6.get(i23)).iArmyID).iArmyRegimentSize && Game.getProvince(((InGame_Armies.SortedArmies) arrayList6.get(i23)).iProvinceID).getArmy(((InGame_Armies.SortedArmies) arrayList6.get(i23)).iArmyID).lArmyRegiment.get(i24).uID == Game.getProvince(((InGame_Armies.SortedArmies) arrayList6.get(i23)).iProvinceID).getArmy(((InGame_Armies.SortedArmies) arrayList6.get(i23)).iArmyID).lArmyRegiment.get(i27).uID && Game.getProvince(((InGame_Armies.SortedArmies) arrayList6.get(i23)).iProvinceID).getArmy(((InGame_Armies.SortedArmies) arrayList6.get(i23)).iArmyID).lArmyRegiment.get(i24).aID == Game.getProvince(((InGame_Armies.SortedArmies) arrayList6.get(i23)).iProvinceID).getArmy(((InGame_Armies.SortedArmies) arrayList6.get(i23)).iArmyID).lArmyRegiment.get(i27).aID; i27++) {
                        i24++;
                        i26++;
                        i25 += Game.getProvince(((InGame_Armies.SortedArmies) arrayList6.get(i23)).iProvinceID).getArmy(((InGame_Armies.SortedArmies) arrayList6.get(i23)).iArmyID).lArmyRegiment.get(i24).num;
                    }
                    String str5 = str;
                    arrayList2.add(new AnonymousClass18(str5 + i25, i26, Game.getProvince(((InGame_Armies.SortedArmies) arrayList6.get(i23)).iProvinceID).getArmy(((InGame_Armies.SortedArmies) arrayList6.get(i23)).iArmyID).civID, width3 + 0, i19, Game.getProvince(((InGame_Armies.SortedArmies) arrayList6.get(i23)).iProvinceID).getArmy(((InGame_Armies.SortedArmies) arrayList6.get(i23)).iArmyID).lArmyRegiment.get(i24).uID, Game.getProvince(((InGame_Armies.SortedArmies) arrayList6.get(i23)).iProvinceID).getArmy(((InGame_Armies.SortedArmies) arrayList6.get(i23)).iArmyID).lArmyRegiment.get(i24).aID, false));
                    width3 += arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                    i24++;
                    i22 = 1;
                    str = str5;
                }
                int i28 = i22;
                String str6 = str;
                int posY = arrayList2.get(arrayList2.size() - i28).getPosY() + arrayList2.get(arrayList2.size() - i28).getHeight() + i5 + CFG.PADDING;
                int i29 = i14;
                arrayList2.add(new AnonymousClass19(Game.lang.get("Army"), CFG.getNumberWithSpaces(str6 + Game.getProvince(((InGame_Armies.SortedArmies) arrayList6.get(i23)).iProvinceID).getArmy(((InGame_Armies.SortedArmies) arrayList6.get(i23)).iArmyID).iArmy), i7 + 0, height12, Math.max(width3, i29), CFG.TEXT_HEIGHT + (CFG.PADDING * 5), Game.getProvince(((InGame_Armies.SortedArmies) arrayList6.get(i23)).iProvinceID).getArmy(((InGame_Armies.SortedArmies) arrayList6.get(i23)).iArmyID).key, Game.getProvince(((InGame_Armies.SortedArmies) arrayList6.get(i23)).iProvinceID).getArmy(((InGame_Armies.SortedArmies) arrayList6.get(i23)).iArmyID).civID, ((InGame_Armies.SortedArmies) arrayList6.get(i23)).iProvinceID, i29));
                i18 = i23 + 1;
                height12 = posY;
                str3 = str6;
                i14 = i29;
                size2 = size2;
                i13 = i13;
                str2 = str2;
                arrayList4 = arrayList6;
                z = true;
            }
        }
        int i30 = i14;
        String str7 = str2;
        String str8 = str3;
        int i31 = i13;
        arrayList2.add(new Text_Title_v2Center(Game.lang.get(LBhZogys.YPRiXbUDZ), -1, Images.boxTitleBORDERWIDTH, height12, i31 - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height13 = height12 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        arrayList2.add(new AnonymousClass20(Game.lang.get("UnlockedTechnologies") + str7, str8 + CFG.getNumberWithSpaces(str8 + Game.getCiv(i).getResearchedTechnologies()), Game_Calendar.IMG_TECHNOLOGY, i7, height13, i30, CFG.BUTTON_HEIGHT3, ImageManager.getImage(Images.gold).getWidth()));
        int height14 = height13 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        arrayList2.add(new AnonymousClass21(Game.lang.get("ResearchPerMonth") + str7, str8 + CFG.getPrecision2(Game.getCiv(i).fResearchPerMonth, 100), Game_Calendar.IMG_TECHNOLOGY, i7, height14, i30, CFG.BUTTON_HEIGHT3, ImageManager.getImage(Images.gold).getWidth()));
        int height15 = height14 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        int activeTechResearch = Game.getCiv(i).getActiveTechResearch() >= 0 ? Game.getCiv(i).getActiveTechResearch() : Game.getCiv(i).getAlternativeTechResearch() >= 0 ? Game.getCiv(i).getAlternativeTechResearch() : -1;
        if (activeTechResearch >= 0) {
            arrayList2.add(new AnonymousClass22(str8 + CFG.getPrecision2(TechnologyTree.getResearchCost(activeTechResearch, i), 10), Game_Calendar.IMG_TECHNOLOGY, i7, height15, (i30 - (CFG.PADDING * 3)) - ImageManager.getImage(Images.techGray).getWidth(), ImageManager.getImage(Images.techGray).getHeight()));
            arrayList2.add(new AnonymousClass23(Images.techBlue, activeTechResearch, i7 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING, height15, false, -1, i));
        }
        int height16 = height15 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        arrayList2.add(new Text_Title_v2Center(Game.lang.get("More"), -1, Images.boxTitleBORDERWIDTH, height16, i31 - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height17 = height16 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        if (Game.getCiv(i).getNukes() > 0 || Game.getCiv(i).canBuildNuke) {
            arrayList2.add(new AnonymousClass24(Game.lang.get(QefTqRjwAJmEDy.RzUYUNIyJrrdHtR) + str7, str8 + CFG.getNumberWithSpaces(str8 + CFG.getPrecision2(Game.getCiv(i).getNukes(), 1)), Images.nuke, i7, height17, i30, CFG.BUTTON_HEIGHT3, ImageManager.getImage(Images.gold).getWidth()));
            height17 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        }
        arrayList2.add(new AnonymousClass25(Game.lang.get("LegacyPoints") + str7, str8 + CFG.getNumberWithSpaces(str8 + CFG.getPrecision2(Game.getCiv(i).fLegacy, 1)), Images.legacy, i7, height17, i30, CFG.BUTTON_HEIGHT3, ImageManager.getImage(Images.gold).getWidth()));
        int height18 = height17 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        arrayList2.add(new AnonymousClass26(Game.lang.get("Loans") + str7, str8 + Game.getCiv(i).iLoansSize + " / " + Game.getLoanMaxNumber(i), Images.loan, i7, height18, i30, CFG.BUTTON_HEIGHT3, ImageManager.getImage(Images.gold).getWidth()));
        int height19 = height18 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        int i32 = height + InGame_CourtOptions.menuH;
        int iMin = Math.min(height19, (CFG.GAME_HEIGHT - i32) - (CFG.PADDING * 3));
        arrayList2.add(new Empty(0, 0, i31, Math.max(height19, iMin)));
        initMenu(null, otherMenuPosX, i32, i31, iMin, arrayList2, false, false);
        this.drawScrollPositionAlways = false;
        Game.menuManager.setInGame_CivOptions_Title(Game.lang.get("EspionageReports"));
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = InGame_Court.lTime + 60 >= CFG.currentTimeMillis ? (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - InGame_Court.lTime) / 60.0f))) : i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - InGame_CourtOptions.menuH) + i2, getWidth(), getHeight() + InGame_CourtOptions.menuH + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop500, Images.insideBot500);
        ImageManager.getImage(Images.rulerOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.rulerOver).getWidth() / 2)) + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.rulerOver).getHeight()));
        super.draw(spriteBatch, i3, i2, z, status);
        if (Game_Calendar.TURN_ID >= this.iReportEndTurnID) {
            InGame_Court.iActiveCivID = Game.player.iCivID;
            Game.menuManager.rebuildInGame_Court();
            Game.menuManager.setVisibleInGame_Court(true);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void onHovered() {
        super.onHovered();
        Game.menuManager.setOrderOfMenu_InGameCourt();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        InGame_Court.lTime = CFG.currentTimeMillis;
        InGame_Court.lTime2 = CFG.currentTimeMillis;
    }
}
