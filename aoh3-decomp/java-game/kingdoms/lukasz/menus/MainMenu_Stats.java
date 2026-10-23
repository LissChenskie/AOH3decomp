package aoc.kingdoms.lukasz.menus;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.Stats.Stats;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.menu.ClickAnimation;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Icon;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Formable;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Stats;
import aoc.kingdoms.lukasz.menu_element.button.ButtonRuler_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagCiv_Title_Stats;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Desc_Simple;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_SpecialEmpty;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_RulerTitle;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.google.android.gms.internal.tasks.Vhe.SwmJtrccN;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MainMenu_Stats extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static long lTime;
    public static long lTime2;
    public static List<Image> lFlags = new ArrayList();
    public static List<Stats> statsData = new ArrayList();
    public static int modeID = 1;
    public static int hideReview = 5;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu_Stats$1, reason: invalid class name */
    class AnonymousClass1 extends Text_Desc_Simple {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu_Stats$1$1, reason: invalid class name and collision with other inner class name */
        class C00051 extends ClickAnimation {
            C00051(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return DiplomacyManager.COLOR_GREEN;
            }
        }

        AnonymousClass1(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            MenuManager menuManager = Game.menuManager;
            MenuManager.addClickAnimation(new C00051(getPosX() + (getWidth() / 2) + MainMenu_Stats.this.getMenuPosX(), getPosY() + (getHeight() / 2) + MainMenu_Stats.this.getMenuPosY(), getWidth(), getHeight()));
            MainMenu_Stats.hideReview--;
            if (MainMenu_Stats.hideReview <= 0) {
                Game.menuManager.rebuildMainMenu_Stats();
                Game.menuManager.addToastGold(":P", Images.heart);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu_Stats$10, reason: invalid class name */
    class AnonymousClass10 extends ButtonStatsRectIMG_Bonuses {
        int id;

        AnonymousClass10(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = MainMenu_Stats.getHover(this.id);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.HOVER_RIGHT;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu_Stats$11, reason: invalid class name */
    class AnonymousClass11 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass11(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.HOVER_RIGHT;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu_Stats$12, reason: invalid class name */
    class AnonymousClass12 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass12(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.HOVER_RIGHT;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu_Stats$13, reason: invalid class name */
    class AnonymousClass13 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass13(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.HOVER_RIGHT;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu_Stats$14, reason: invalid class name */
    class AnonymousClass14 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass14(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.HOVER_RIGHT;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu_Stats$15, reason: invalid class name */
    class AnonymousClass15 extends TextIcon2 {
        AnonymousClass15(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Wars") + ": ", getText(), this.imageID, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu_Stats$16, reason: invalid class name */
    class AnonymousClass16 extends TextIcon2 {
        AnonymousClass16(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ConqueredProvinces") + ": ", getText(), this.imageID, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu_Stats$17, reason: invalid class name */
    class AnonymousClass17 extends TextIcon2 {
        AnonymousClass17(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("RecruitedArmy") + ", " + Game.lang.get("Regiments") + ": ", getText(), this.imageID, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu_Stats$18, reason: invalid class name */
    class AnonymousClass18 extends TextIcon2 {
        AnonymousClass18(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Generals") + ": ", getText(), this.imageID, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu_Stats$19, reason: invalid class name */
    class AnonymousClass19 extends TextIcon2 {
        AnonymousClass19(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Advisors") + ": ", getText(), this.imageID, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu_Stats$2, reason: invalid class name */
    class AnonymousClass2 extends Icon {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu_Stats$2$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return DiplomacyManager.COLOR_GREEN;
            }
        }

        AnonymousClass2(int i, int i2, int i3, int i4, int i5, int i6) {
            super(i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            MenuManager menuManager = Game.menuManager;
            MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + MainMenu_Stats.this.getMenuPosX(), getPosY() + (getHeight() / 2) + MainMenu_Stats.this.getMenuPosY(), getWidth(), getHeight()));
            MainMenu_Stats.hideReview--;
            if (MainMenu_Stats.hideReview <= 0) {
                Game.menuManager.rebuildMainMenu_Stats();
                Game.menuManager.addToastGold(":P", Images.heart);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.Icon, aoc.kingdoms.lukasz.menu_element.button.Button
        protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, (getIsHovered() || z) ? 0.6f : 0.5f));
            Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
            spriteBatch.setColor(Color.WHITE);
            super.drawText(spriteBatch, i, i2, z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu_Stats$20, reason: invalid class name */
    class AnonymousClass20 extends TextIcon2 {
        AnonymousClass20(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("BuildingsConstructed") + ": ", getText(), this.imageID, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu_Stats$21, reason: invalid class name */
    class AnonymousClass21 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass21(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            MainMenu_Stats.disposeFlags();
            Game.menuManager.setViewID(View.MAINMENU);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu_Stats$22, reason: invalid class name */
    class AnonymousClass22 extends MenuTitleIMG {
        AnonymousClass22(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return MainMenu_Stats.lTime2;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu_Stats$23, reason: invalid class name */
    class AnonymousClass23 extends Game.SimpleTask {
        AnonymousClass23(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            InitGame.loadBackground();
            MainMenu.bgTIME = System.currentTimeMillis();
            MainMenu.bgTIME_CHANGE = System.currentTimeMillis();
            MainMenu.bgAlpha = 0.0f;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu_Stats$3, reason: invalid class name */
    class AnonymousClass3 extends Text_TitleBlueSort {
        AnonymousClass3(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5) {
            super(z, z2, str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (MainMenu_Stats.modeID != 0) {
                MainMenu_Stats.modeID = 0;
                Game.menuManager.rebuildMainMenu_Stats();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Name"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.government, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return Game.soundsManager.getTab();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu_Stats$4, reason: invalid class name */
    class AnonymousClass4 extends Text_TitleBlueSort {
        AnonymousClass4(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5) {
            super(z, z2, str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (MainMenu_Stats.modeID != 1) {
                MainMenu_Stats.modeID = 1;
                Game.menuManager.rebuildMainMenu_Stats();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("PlayingTime"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.play, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return Game.soundsManager.getTab();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu_Stats$5, reason: invalid class name */
    class AnonymousClass5 extends Text_TitleBlueSort {
        AnonymousClass5(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5) {
            super(z, z2, str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (MainMenu_Stats.modeID != 2) {
                MainMenu_Stats.modeID = 2;
                Game.menuManager.rebuildMainMenu_Stats();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("RecruitedArmy"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return Game.soundsManager.getTab();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu_Stats$6, reason: invalid class name */
    class AnonymousClass6 extends Text_TitleBlueSort {
        AnonymousClass6(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5) {
            super(z, z2, str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (MainMenu_Stats.modeID != 3) {
                MainMenu_Stats.modeID = 3;
                Game.menuManager.rebuildMainMenu_Stats();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Wars"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.war, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return Game.soundsManager.getTab();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu_Stats$7, reason: invalid class name */
    class AnonymousClass7 extends Text_StaticBG {
        AnonymousClass7(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            MainMenu_Stats.disposeFlags();
            Game.menuManager.setViewID(View.MAINMENU);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu_Stats$8, reason: invalid class name */
    class AnonymousClass8 extends ButtonFlag_Stats {
        AnonymousClass8(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu_Stats$9, reason: invalid class name */
    class AnonymousClass9 extends Text_StaticBG_RulerTitle {
        int id;

        AnonymousClass9(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = MainMenu_Stats.getHover(this.id);
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

    public MainMenu_Stats() {
        int height;
        int i;
        ArrayList arrayList = new ArrayList();
        int i2 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
        int i3 = Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2);
        ImageManager.getImage(Images.title500).getHeight();
        int width = ImageManager.getImage(Images.title500).getWidth();
        int i4 = (int) (CFG.GAME_WIDTH / (CFG.GUI_SCALE * 10.0f));
        int height2 = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title1Red).getHeight();
        ButtonRuler_Diplomacy.getButtonHeight();
        int i5 = CFG.PADDING;
        int width2 = ImageManager.getImage(Images.gold).getWidth();
        if (statsData.size() < 4 || hideReview <= 0) {
            height = 0;
        } else {
            int i6 = CFG.PADDING;
            arrayList.add(new AnonymousClass1(Game.lang.get("Review0"), i2 + ImageManager.getImage(Images.heart).getWidth() + (CFG.PADDING * 3), i6, (width - (i2 * 2)) - (ImageManager.getImage(Images.heart).getWidth() + (CFG.PADDING * 3))));
            arrayList.add(new AnonymousClass2(Images.heart, i2, i6, ImageManager.getImage(Images.heart).getWidth() + (CFG.PADDING * 2), arrayList.get(arrayList.size() - 1).getHeight(), 0));
            height = i6 + arrayList.get(arrayList.size() - 2).getHeight() + CFG.PADDING;
        }
        int i7 = (width - (Images.boxTitleBORDERWIDTH * 2)) / 4;
        arrayList.add(new AnonymousClass3(modeID == 0, false, Game.lang.get("Name"), -1, Images.boxTitleBORDERWIDTH, height, i7, CFG.BUTTON_HEIGHT4));
        String str = "PlayingTime";
        arrayList.add(new AnonymousClass4(modeID == 1, false, Game.lang.get("PlayingTime"), -1, Images.boxTitleBORDERWIDTH + i7, height, i7, CFG.BUTTON_HEIGHT4));
        arrayList.add(new AnonymousClass5(modeID == 2, false, Game.lang.get("RecruitedArmy"), -1, Images.boxTitleBORDERWIDTH + (i7 * 2), height, i7, CFG.BUTTON_HEIGHT4));
        arrayList.add(new AnonymousClass6(modeID == 3, false, Game.lang.get("Wars"), -1, Images.boxTitleBORDERWIDTH + (i7 * 3), height, i7, CFG.BUTTON_HEIGHT4));
        int height3 = height + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i8 = CFG.TEXT_HEIGHT;
        int i9 = CFG.PADDING;
        statsData.clear();
        statsData = Game.stats.loadAllStats();
        loadFlags();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (int i10 = 0; i10 < statsData.size(); i10++) {
            arrayList2.add(Integer.valueOf(i10));
            arrayList3.add(Game.lang.getCiv(statsData.get(i10).tg));
        }
        int i11 = width - (i2 * 2);
        int i12 = (i11 - (CFG.PADDING * 5)) / 6;
        int i13 = CFG.BUTTON_HEIGHT;
        if (arrayList2.isEmpty()) {
            arrayList.add(new AnonymousClass7(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i2, height3, i11, CFG.BUTTON_HEIGHT2));
            height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        int i14 = height3;
        while (!arrayList2.isEmpty()) {
            int i15 = modeID;
            if (i15 == 0) {
                i = 0;
                for (int i16 = 1; i16 < arrayList2.size(); i16++) {
                    if (CFG.compareAlphabetic_TwoString((String) arrayList3.get(i), (String) arrayList3.get(i16))) {
                        i = i16;
                    }
                }
            } else if (i15 == 1) {
                i = 0;
                for (int i17 = 1; i17 < arrayList2.size(); i17++) {
                    if (statsData.get(((Integer) arrayList2.get(i)).intValue()).tr < statsData.get(((Integer) arrayList2.get(i17)).intValue()).tr) {
                        i = i17;
                    }
                }
            } else if (i15 == 2) {
                i = 0;
                for (int i18 = 1; i18 < arrayList2.size(); i18++) {
                    if (statsData.get(((Integer) arrayList2.get(i)).intValue()).rr < statsData.get(((Integer) arrayList2.get(i18)).intValue()).rr) {
                        i = i18;
                    }
                }
            } else {
                i = 0;
                for (int i19 = 1; i19 < arrayList2.size(); i19++) {
                    if (statsData.get(((Integer) arrayList2.get(i)).intValue()).nw < statsData.get(((Integer) arrayList2.get(i19)).intValue()).nw) {
                        i = i19;
                    }
                }
            }
            int i20 = i;
            int i21 = i14 + CFG.PADDING;
            arrayList.add(new AnonymousClass8(((Integer) arrayList2.get(i20)).intValue(), i3, i21));
            int width3 = i3 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            int buttonHeight = (ButtonFlag_Formable.getButtonHeight() - CFG.PADDING) / 2;
            int i22 = (width - width3) - i3;
            ArrayList arrayList4 = arrayList3;
            arrayList.add(new AnonymousClass9(Game.lang.getCiv(statsData.get(((Integer) arrayList2.get(i20)).intValue()).tg), width3, i21, i22, buttonHeight));
            arrayList.get(arrayList.size() - 1).setCurrent(((Integer) arrayList2.get(i20)).intValue());
            String str2 = Game.lang.get(SwmJtrccN.rpexqb) + ": ";
            String numberWithSpaces = CFG.getNumberWithSpaces("" + statsData.get(((Integer) arrayList2.get(i20)).intValue()).ga);
            int i23 = Images.play;
            int i24 = i21 + buttonHeight + CFG.PADDING;
            int i25 = i2;
            int i26 = i14;
            int i27 = width;
            int i28 = i3;
            arrayList.add(new AnonymousClass10(str2, numberWithSpaces, i23, width3, i24, i22, buttonHeight, width2));
            arrayList.get(arrayList.size() - 1).setCurrent(((Integer) arrayList2.get(i20)).intValue());
            int buttonHeight2 = i21 + ButtonFlag_Stats.getButtonHeight() + CFG.PADDING;
            String str3 = str;
            int i29 = i27 - (i28 * 2);
            ArrayList arrayList5 = arrayList2;
            arrayList.add(new AnonymousClass11(Game.lang.get(str3) + ": ", "" + Game_Calendar.getNumOfDays_ByTurnsPlayed(statsData.get(((Integer) arrayList2.get(i20)).intValue()).tr), Images.time, i28, buttonHeight2, i29, CFG.TEXT_HEIGHT + (CFG.PADDING * 4), width2));
            int height4 = buttonHeight2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            arrayList.add(new AnonymousClass12(Game.lang.get("NumberOfProvinces") + ": ", CFG.getNumberWithSpaces("" + statsData.get(((Integer) arrayList5.get(i20)).intValue()).lp), Images.provinces, i28, height4, i29, CFG.TEXT_HEIGHT + (CFG.PADDING * 4), width2));
            int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            arrayList.add(new AnonymousClass13(Game.lang.get("MonthlyIncome") + ": ", CFG.getNumberWithSpaces("" + statsData.get(((Integer) arrayList5.get(i20)).intValue()).li), Images.gold, i28, height5, i29, CFG.TEXT_HEIGHT + (CFG.PADDING * 4), width2));
            int height6 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            arrayList.add(new AnonymousClass14(Game.lang.get("ReinforceArmyCost") + ": ", CFG.getNumberWithSpaces("" + ((int) (statsData.get(((Integer) arrayList5.get(i20)).intValue()).rf / 100.0f))), Game_Calendar.IMG_MANPOWER_UP, i28, height6, i29, CFG.TEXT_HEIGHT + (CFG.PADDING * 4), width2));
            int height7 = height6 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            arrayList.add(new AnonymousClass15("" + CFG.getNumberWithSpaces("" + statsData.get(((Integer) arrayList5.get(i20)).intValue()).nw), Images.war, i28, height7, i12, i13));
            int width4 = i28 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            arrayList.add(new AnonymousClass16("" + CFG.getNumberWithSpaces("" + statsData.get(((Integer) arrayList5.get(i20)).intValue()).cp), Images.provinces, width4, height7, i12, i13));
            int width5 = width4 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            arrayList.add(new AnonymousClass17("" + CFG.getNumberWithSpaces("" + statsData.get(((Integer) arrayList5.get(i20)).intValue()).rr), Game_Calendar.IMG_MANPOWER, width5, height7, i12, i13));
            int width6 = width5 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            arrayList.add(new AnonymousClass18("" + CFG.getNumberWithSpaces("" + statsData.get(((Integer) arrayList5.get(i20)).intValue()).rg), Images.general, width6, height7, i12, i13));
            int width7 = width6 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            arrayList.add(new AnonymousClass19("" + CFG.getNumberWithSpaces("" + statsData.get(((Integer) arrayList5.get(i20)).intValue()).ra), Images.council, width7, height7, i12, i13));
            arrayList.add(new AnonymousClass20("" + CFG.getNumberWithSpaces("" + statsData.get(((Integer) arrayList5.get(i20)).intValue()).bc), Images.buildings, width7 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height7, i12, i13));
            int height8 = height7 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            arrayList.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(i25, i26, i11, height8 - i26));
            int i30 = CFG.PADDING + height8;
            arrayList5.remove(i20);
            arrayList4.remove(i20);
            arrayList3 = arrayList4;
            i2 = i25;
            arrayList2 = arrayList5;
            i3 = i28;
            width = i27;
            str = str3;
            i14 = i30;
        }
        int i31 = i2;
        int i32 = width;
        int i33 = i14;
        arrayList.add(new AnonymousClass21(Game.lang.get("Close"), "", Images.x, i31, i33, i11, CFG.BUTTON_HEIGHT3, width2));
        int height9 = i33 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int iMin = Math.min(height9, (CFG.GAME_HEIGHT - height2) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, 0, i32, Math.max(height9, iMin)));
        initMenu(new AnonymousClass22(Game.lang.get("HallofFame"), true, false, Images.title500), i4, height2, i32, iMin, arrayList, true, false);
        this.drawScrollPositionAlways = false;
    }

    public static final void disposeFlags() {
        for (int i = 0; i < lFlags.size(); i++) {
            lFlags.get(i).getTexture().dispose();
        }
        lFlags.clear();
    }

    public static MenuElement_Hover getHover(int i) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title_Stats(i, Game.lang.get("Games") + ": " + statsData.get(i).ga));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        return new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void beginClip(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        try {
            if (MainMenu.bgAlpha < 1.0f) {
                spriteBatch.setColor(0.0f, 0.0f, 0.0f, 1.0f);
                Images.pix.draw(spriteBatch, i, i2, CFG.GAME_WIDTH, CFG.GAME_HEIGHT);
                MainMenu.bgAlpha = Math.min(1.0f, (CFG.currentTimeMillis - MainMenu.bgTIME) / GameValues.text.MAIN_MENU_BG_ANIMATION_TIME);
            }
            spriteBatch.setColor(new Color(0.050980393f, 0.08627451f, 0.13333334f, MainMenu.bgAlpha * 1.0f));
            InitGame.background.draw(spriteBatch, i + ((CFG.GAME_WIDTH - InitGame.backgroundWidth) / 2), i2 + ((CFG.GAME_HEIGHT - InitGame.backgroundHeight) / 2), InitGame.backgroundWidth, InitGame.backgroundHeight);
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, MainMenu.bgAlpha));
            spriteBatch.setShader(Renderer.shaderAlpha);
            InitGame.background.getTexture().bind(1);
            Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
            ImageManager.getImage(Images.gradientHorizontal2).draw(spriteBatch, ((CFG.GAME_WIDTH - InitGame.backgroundWidth) / 2) + i, ((CFG.GAME_HEIGHT - InitGame.backgroundHeight) / 2) + i2, InitGame.backgroundWidth, InitGame.backgroundHeight);
            spriteBatch.flush();
            spriteBatch.setShader(Renderer.shaderDefault);
            spriteBatch.setColor(MainMenu.sparksColors);
            MenuManager.sparksAnimation.draw2(spriteBatch, i, (CFG.GAME_HEIGHT - Images.sparkHeight) + i2, CFG.GAME_WIDTH, Images.sparkHeight);
            spriteBatch.setColor(Color.WHITE);
            if (((CFG.isDesktop() && GameValues.text.MAIN_MENU_BG_ENABLE_AUTO_BG_CHANGE) || (!CFG.isDesktop() && GameValues.text.MAIN_MENU_BG_ENABLE_AUTO_BG_CHANGE_MOBILE)) && CFG.currentTimeMillis > MainMenu.bgTIME_CHANGE + ((long) GameValues.text.MAIN_MENU_BG_CHANGE_BG_EVERY_X_MS)) {
                MainMenu.bgTIME_CHANGE = CFG.currentTimeMillis;
                Game.addSimpleTask(new AnonymousClass23("loadBackground"));
            }
        } catch (Exception unused) {
        }
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), CFG.PADDING + getHeight(), false, Images.insideTop500, Images.insideBot500);
        ImageManager.getImage(Images.rulerOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.rulerOver).getWidth() / 2)) + i, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.rulerOver).getHeight()));
        super.beginClip(spriteBatch, i, i2, z);
    }

    public final void loadFlags() {
        disposeFlags();
        for (int i = 0; i < statsData.size(); i++) {
            try {
                try {
                    try {
                        try {
                            lFlags.add(new Image(new Texture(FileManager.loadFile("gfx/flagsXH/" + statsData.get(i).tg + ".png")), Texture.TextureFilter.Nearest));
                        } catch (GdxRuntimeException unused) {
                            lFlags.add(new Image(new Texture(FileManager.loadFile("gfx/flags/ran.png")), Texture.TextureFilter.Nearest));
                        }
                    } catch (GdxRuntimeException unused2) {
                        lFlags.add(new Image(new Texture(FileManager.loadFile("gfx/flags/" + statsData.get(i).tg + ".png")), Texture.TextureFilter.Nearest));
                    }
                } catch (GdxRuntimeException unused3) {
                    lFlags.add(new Image(new Texture(FileManager.loadFile("gfx/flagsXH/" + Game.ideologiesManager.getRealTag(statsData.get(i).tg) + ".png")), Texture.TextureFilter.Nearest));
                }
            } catch (GdxRuntimeException unused4) {
                lFlags.add(new Image(new Texture(FileManager.loadFile("gfx/flags/" + Game.ideologiesManager.getRealTag(statsData.get(i).tg) + ".png")), Texture.TextureFilter.Nearest));
            }
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void onHovered() {
        super.onHovered();
        Game.menuManager.setOrderOfMenu_MainMenu_Stats();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        long j = CFG.currentTimeMillis;
        lTime = j;
        lTime2 = j;
        if (z) {
            return;
        }
        disposeFlags();
    }
}
