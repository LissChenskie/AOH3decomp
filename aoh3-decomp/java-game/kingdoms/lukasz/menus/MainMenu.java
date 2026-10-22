package aoc.kingdoms.lukasz.menus;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SaveLoad.LoadSavedGameManager;
import aoc.kingdoms.lukasz.jakowski.SaveLoad.SaveGameManager;
import aoc.kingdoms.lukasz.jakowski.Steam.SteamManager;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.menu.ClickAnimation;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame2;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame2Sparks_Hovered;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame2_IMG;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMainTitle;
import aoc.kingdoms.lukasz.menu_element.button.Button_LoadGame_MainMenu;
import aoc.kingdoms.lukasz.menu_element.button.Button_MainMenuIcon;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Center;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static;
import aoc.kingdoms.lukasz.menus.Settings.Settings_Menu;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MainMenu extends Menu {
    public static long bgTIME;
    public static long bgTIME_CHANGE;
    private int iHeight;
    private int iWidth;
    private int iXPos;
    private int iYPos;
    public static Color sparksColors = new Color(1.0f, 1.0f, 1.0f, 0.25f);
    public static boolean canContinue = false;
    public static Image flag = null;
    public static SaveGameManager.SaveDetails savedGame = null;
    public static String savedGameKey = null;
    public static float bgAlpha = 0.0f;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonMainTitle {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu$1$1, reason: invalid class name and collision with other inner class name */
        class C00041 extends ClickAnimation {
            C00041(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return DiplomacyManager.COLOR_WAR;
            }
        }

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu$1$2, reason: invalid class name */
        class AnonymousClass2 extends ClickAnimation {
            AnonymousClass2(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return DiplomacyManager.COLOR_ALLIANCE;
            }
        }

        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            MenuManager menuManager = Game.menuManager;
            MenuManager.addClickAnimation(new C00041(getPosX() + (getWidth() / 2) + MainMenu.this.getMenuPosX(), getPosY() + (getHeight() / 2) + MainMenu.this.getMenuPosY(), getWidth(), getHeight()));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            MenuManager menuManager = Game.menuManager;
            MenuManager.addClickAnimation(new AnonymousClass2(getPosX() + (getWidth() / 2) + MainMenu.this.getMenuPosX(), getPosY() + (getHeight() / 2) + MainMenu.this.getMenuPosY(), getWidth(), getHeight()));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = MainMenu.getHoverAbout();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu$10, reason: invalid class name */
    class AnonymousClass10 extends ButtonGame2 {
        AnonymousClass10(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Dialog.setDialogType(Dialog.DialogType.EXIT_GAME);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu$11, reason: invalid class name */
    class AnonymousClass11 extends ButtonGame2_IMG {
        AnonymousClass11(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setViewID(View.MAINMENU_STATS);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Civilizations") + ": ", Game.lang.get("HallofFame"), Images.development, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu$12, reason: invalid class name */
    class AnonymousClass12 extends Text_Static {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu$12$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return DiplomacyManager.COLOR_WAR;
            }
        }

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu$12$2, reason: invalid class name */
        class AnonymousClass2 extends Game.SimpleTask {
            AnonymousClass2(String str) {
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

        AnonymousClass12(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            MenuManager menuManager = Game.menuManager;
            MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + MainMenu.this.getMenuPosX(), getPosY() + (getHeight() / 2) + MainMenu.this.getMenuPosY(), getWidth(), getHeight()));
            Game.addSimpleTask(new AnonymousClass2("loadBackground"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu$13, reason: invalid class name */
    class AnonymousClass13 extends Button_MainMenuIcon {
        AnonymousClass13(int i, int i2, int i3, int i4, int i5) {
            super(i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Dialog.GO_TO_LINK = "https://www.youtube.com/channel/UCppKzood12fbJhZClXfukFw";
            Dialog.setDialogType(Dialog.DialogType.GO_TO_LINK);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus("YouTube: ", "Age of History 3", Images.yt, CFG.FONT_BOLD, CFG.FONT_REGULAR, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu$14, reason: invalid class name */
    class AnonymousClass14 extends Button_MainMenuIcon {
        AnonymousClass14(int i, int i2, int i3, int i4, int i5) {
            super(i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Dialog.GO_TO_LINK = "https://play.google.com/store/apps/details?id=age.of.history3.lukasz.jakowski";
            Dialog.setDialogType(Dialog.DialogType.GO_TO_LINK);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus("Android: ", "Age of History 3", Images.f0android, CFG.FONT_BOLD, CFG.FONT_REGULAR, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu$15, reason: invalid class name */
    class AnonymousClass15 extends Button_MainMenuIcon {
        AnonymousClass15(int i, int i2, int i3, int i4, int i5) {
            super(i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Dialog.GO_TO_LINK = "https://apps.apple.com/app/age-of-history-3/id6686394372";
            Dialog.setDialogType(Dialog.DialogType.GO_TO_LINK);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus("iOS: ", "Age of History 3", Images.app, CFG.FONT_BOLD, CFG.FONT_REGULAR, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu$16, reason: invalid class name */
    class AnonymousClass16 extends Button_MainMenuIcon {
        AnonymousClass16(int i, int i2, int i3, int i4, int i5) {
            super(i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Dialog.GO_TO_LINK = "https://store.steampowered.com/app/2772750/Age_of_History_3/";
            Dialog.setDialogType(Dialog.DialogType.GO_TO_LINK);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus("Steam: ", "Age of History 3", Images.pc, CFG.FONT_BOLD, CFG.FONT_REGULAR, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu$17, reason: invalid class name */
    class AnonymousClass17 extends Text_Static {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu$17$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return DiplomacyManager.COLOR_WAR;
            }
        }

        AnonymousClass17(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            MenuManager menuManager = Game.menuManager;
            MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + MainMenu.this.getMenuPosX(), getPosY() + (getHeight() / 2) + MainMenu.this.getMenuPosY(), getWidth(), getHeight()));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = MainMenu.getHoverAbout();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
        protected Color getColor(boolean z) {
            return (getIsHovered() || z) ? Colors.HOVER_LEFT : Colors.HOVER_RIGHT3;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu$18, reason: invalid class name */
    class AnonymousClass18 extends Game.SimpleTask {
        AnonymousClass18(String str) {
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu$2, reason: invalid class name */
    class AnonymousClass2 extends Button_LoadGame_MainMenu {
        AnonymousClass2(String str, String str2, int i, int i2, int i3) {
            super(str, str2, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setViewIDWithoutAnimation(View.IN_GAME);
            Game.menuManager.setOrderOfMenu_InGame();
            if (Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_DEFAULT) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
            }
            ProvinceDraw.updateDrawExtraDetails();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button_LoadGame_MainMenu, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Continue"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.getCiv(Game.player.iCivID).getCivName(), "", Images.council, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(this.sText2, CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button_LoadGame_MainMenu
        protected void drawImage(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            try {
                if (Game.getCiv(Game.player.iCivID).getFlag() != null) {
                    spriteBatch.setShader(Renderer.shaderAlpha);
                    try {
                        Game.getCiv(Game.player.iCivID).getFlag().getTexture().bind(1);
                        Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
                        ImageManager.getImage(Images.flagMaskDefault).draw(spriteBatch, getPosX() + getPaddingIMG() + i + ((ImageManager.getImage(Images.flagOverDefault).getWidth() - ImageManager.getImage(Images.flagMaskDefault).getWidth()) / 2), getPosY() + getPaddingIMG() + i2 + ((ImageManager.getImage(Images.flagOverDefault).getHeight() - ImageManager.getImage(Images.flagMaskDefault).getHeight()) / 2), ImageManager.getImage(Images.flagMaskDefault).getWidth(), ImageManager.getImage(Images.flagMaskDefault).getHeight());
                    } catch (Exception e) {
                        CFG.exceptionStack(e);
                    }
                    spriteBatch.flush();
                    spriteBatch.setShader(Renderer.shaderDefault);
                    ImageManager.getImage(Images.flagOverDefault).draw(spriteBatch, getPosX() + getPaddingIMG() + i, getPosY() + getPaddingIMG() + i2);
                }
            } catch (Exception e2) {
                CFG.exceptionStack(e2);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu$3, reason: invalid class name */
    class AnonymousClass3 extends Button_LoadGame_MainMenu {
        AnonymousClass3(String str, String str2, int i, int i2, int i3) {
            super(str, str2, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            LoadSavedGameManager.key = MainMenu.savedGameKey;
            Game.menuManager.setViewIDWithoutAnimation(View.LOAD_SAVED_GAME);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonGame2 {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setViewID(View.SCENARIOS);
            Game.menuManager.setOrderOfMenu_Scenarios();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonGame2Sparks_Hovered {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setViewID(View.SCENARIOS);
            Game.menuManager.setOrderOfMenu_Scenarios();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonGame2Sparks_Hovered {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setViewID(View.SCENARIOS_CAMPAIGN);
            Game.menuManager.setOrderOfMenu_Scenarios();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonGame2 {
        AnonymousClass7(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setViewID(View.LOAD_GAMES_LIST);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu$8, reason: invalid class name */
    class AnonymousClass8 extends ButtonGame2 {
        AnonymousClass8(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            ProvinceBorderManager.clearProvinceBorder();
            Game.menuManager.setViewID(View.EDITOR);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            if (SteamManager.modsFolders.size() <= 0 && SteamManager.itemsInstalledSize <= 0) {
                this.menuElementHover = null;
                return;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            if (SteamManager.modsFolders.size() > 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("InstalledMods") + ": ", "" + SteamManager.modsFolders.size(), Images.technology2, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (SteamManager.itemsInstalledSize > 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus("Steam, " + Game.lang.get("InstalledMods") + ": ", "" + SteamManager.itemsInstalledSize, Images.technology2, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.MainMenu$9, reason: invalid class name */
    class AnonymousClass9 extends ButtonGame2 {
        AnonymousClass9(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Settings_Menu.goBackToMenu = View.MAINMENU;
            Game.menuManager.setViewID(View.SETTINGS);
        }
    }

    public MainMenu() {
        int i;
        int height;
        int i2;
        int i3 = 0;
        this.iXPos = 0;
        this.iYPos = 0;
        this.iWidth = 480;
        this.iHeight = 480;
        ArrayList arrayList = new ArrayList();
        int i4 = (CFG.PADDING * 2) + (CFG.PADDING / 2);
        int i5 = Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2) + (CFG.PADDING / 2);
        this.iXPos = (int) (CFG.GAME_WIDTH / (CFG.GUI_SCALE * 10.0f));
        this.iWidth = (int) Math.max(CFG.LEFT_MENU_WIDTH, Math.min(this.iWidth, CFG.GAME_WIDTH / 4) * CFG.GUI_SCALE);
        int i6 = i4 / 2;
        this.iHeight = (i4 * 2) + i6 + ((CFG.BUTTON_HEIGHT + (CFG.PADDING * 2)) * 6);
        this.iYPos = (int) (((CFG.GAME_HEIGHT - this.iHeight) - ImageManager.getImage(Images.mainTitle).getHeight()) * 0.5f);
        if (this.iXPos + this.iWidth > CFG.GAME_WIDTH) {
            this.iXPos = CFG.PADDING * 2;
        }
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), GameValues.text.VERSION);
        Game.versionWidth = (int) Renderer.glyphLayout.width;
        arrayList.add(new AnonymousClass1("", 0, -1, this.iXPos, this.iYPos, this.iWidth, true));
        int height2 = i4 + this.iYPos + ImageManager.getImage(Images.mainTitle).getHeight();
        try {
            if (canContinue) {
                arrayList.add(new AnonymousClass2(Game.lang.get("Continue") + ": " + Game.getCiv(Game.player.iCivID).getCivName(), "" + Game_Calendar.currentDay + " " + Game_Calendar.getMonthName(Game_Calendar.currentMonth) + " " + Game.gameAges.getYear(Game_Calendar.currentYear), this.iXPos + i5, height2, this.iWidth - (i5 * 2)));
                height2 += arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
                i = i6;
            } else {
                FileHandle fileHandleExternal = FileManager.IS_MAC ? Gdx.files.external(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + "AoH.txt") : CFG.readLocalFiles() ? Gdx.files.local(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + "AoH.txt") : Gdx.files.internal(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + "AoH.txt");
                try {
                    if (fileHandleExternal.exists()) {
                        String[] strArrSplit = fileHandleExternal.readString().split(";");
                        ArrayList arrayList2 = new ArrayList();
                        ArrayList arrayList3 = new ArrayList();
                        for (int i7 = 0; i7 < strArrSplit.length; i7++) {
                            SaveGameManager.SaveDetails saveDetailsLoadSave_Details = LoadSavedGameManager.loadSave_Details(strArrSplit[i7]);
                            if (saveDetailsLoadSave_Details != null) {
                                arrayList2.add(saveDetailsLoadSave_Details);
                                arrayList3.add(strArrSplit[i7]);
                            }
                        }
                        int size = arrayList2.size() - 1;
                        while (size > 0) {
                            int i8 = i6;
                            if (((SaveGameManager.SaveDetails) arrayList2.get(size)).time > ((SaveGameManager.SaveDetails) arrayList2.get(i3)).time) {
                                i3 = size;
                            }
                            size--;
                            i6 = i8;
                        }
                        i = i6;
                        savedGame = (SaveGameManager.SaveDetails) arrayList2.get(i3);
                        savedGameKey = (String) arrayList3.get(i3);
                        loadFlag(savedGame.sCivTag);
                        arrayList.add(new AnonymousClass3(Game.lang.get("Continue") + ": " + Game.lang.getCiv(savedGame.sCivTag), "" + savedGame.iDay + " " + Game_Calendar.getMonthName(savedGame.iMonth) + " " + Game.gameAges.getYear(savedGame.iYear), this.iXPos + i5, height2, this.iWidth - (i5 * 2)));
                        height = arrayList.get(arrayList.size() - 1).getHeight();
                        i2 = CFG.PADDING;
                    } else {
                        i = i6;
                        arrayList.add(new AnonymousClass4(Game.lang.get("Continue"), 1, -1, this.iXPos + i5, height2, this.iWidth - (i5 * 2), true));
                        height = arrayList.get(arrayList.size() - 1).getHeight();
                        i2 = CFG.PADDING;
                    }
                    height2 += height + (i2 * 2);
                } catch (Exception e) {
                    e = e;
                    CFG.exceptionStack(e);
                }
            }
        } catch (Exception e2) {
            e = e2;
            i = i6;
        }
        int i9 = i5 * 2;
        arrayList.add(new AnonymousClass5(Game.lang.get("NewGame"), 1, -1, this.iXPos + i5, height2, this.iWidth - i9, true));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
        int i10 = CFG.BUTTON_WIDTH;
        arrayList.add(new AnonymousClass6(Game.lang.get("Campaign"), 1, -1, this.iXPos + i5, height3, this.iWidth - i9, true));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
        arrayList.add(new AnonymousClass7(Game.lang.get("LoadGame"), 1, -1, this.iXPos + i5, height4, this.iWidth - i9, true));
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2) + i;
        arrayList.add(new AnonymousClass8(Game.lang.get("Editor"), 1, -1, this.iXPos + i5, height5, ((this.iWidth - i9) - CFG.PADDING) / 2, true));
        arrayList.add(new AnonymousClass9(Game.lang.get("Settings"), 1, -1, this.iXPos + i5 + (((this.iWidth - i9) - CFG.PADDING) / 2) + CFG.PADDING, height5, ((this.iWidth - i9) - CFG.PADDING) / 2, true));
        int height6 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
        arrayList.add(new AnonymousClass10(Game.lang.get("ExitGame"), 1, -1, this.iXPos + i5, height6, ((this.iWidth - i9) - CFG.PADDING) - i10, true));
        arrayList.add(new AnonymousClass11(null, 1, -1, (((this.iXPos + i5) + this.iWidth) - i9) - i10, height6, i10, true, Images.development));
        arrayList.get(arrayList.size() - 1).getHeight();
        int i11 = CFG.PADDING;
        arrayList.add(new AnonymousClass12(GameValues.text.VERSION, CFG.FONT_REGULAR_SMALL, -1, CFG.GAME_WIDTH - CFG.BUTTON_HEIGHT3, 0, CFG.BUTTON_HEIGHT3, CFG.BUTTON_HEIGHT3));
        int i12 = CFG.GAME_HEIGHT - (CFG.BUTTON_HEIGHT * 4);
        arrayList.add(new AnonymousClass13(Images.yt, CFG.GAME_WIDTH - CFG.BUTTON_WIDTH, i12, CFG.BUTTON_WIDTH, CFG.BUTTON_HEIGHT));
        int height7 = i12 + arrayList.get(arrayList.size() - 1).getHeight();
        arrayList.add(new AnonymousClass14(Images.f0android, CFG.GAME_WIDTH - CFG.BUTTON_WIDTH, height7, CFG.BUTTON_WIDTH, CFG.BUTTON_HEIGHT));
        int height8 = height7 + arrayList.get(arrayList.size() - 1).getHeight();
        arrayList.add(new AnonymousClass15(Images.app, CFG.GAME_WIDTH - CFG.BUTTON_WIDTH, height8, CFG.BUTTON_WIDTH, CFG.BUTTON_HEIGHT));
        arrayList.add(new AnonymousClass16(Images.pc, CFG.GAME_WIDTH - CFG.BUTTON_WIDTH, height8 + arrayList.get(arrayList.size() - 1).getHeight(), CFG.BUTTON_WIDTH, CFG.BUTTON_HEIGHT));
        arrayList.get(arrayList.size() - 1).getHeight();
        arrayList.add(new AnonymousClass17("Lukasz Jakowski", CFG.PADDING * 3, (CFG.GAME_HEIGHT - CFG.TEXT_HEIGHT) - (CFG.PADDING * 3), CFG.FONT_REGULAR_SMALL));
        initMenu(null, 0, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT, arrayList, true);
        bgTIME = System.currentTimeMillis();
        bgTIME_CHANGE = System.currentTimeMillis();
    }

    public static void disposeData() {
        Image image = flag;
        if (image != null) {
            image.getTexture().dispose();
            flag = null;
        }
    }

    public static MenuElement_Hover getHoverAbout() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center("Programmer and Designer", CFG.FONT_BOLD, Colors.HOVER_LEFT));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus("Lukasz Jakowski", "", Images.world, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_GOLD, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus("One Man Army!", "", Game_Calendar.IMG_MANPOWER, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_LEFT));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (GameValues.text.MAIN_MENU_LOGO_HOVER_TEXT != null) {
            boolean z = false;
            for (int i = 0; i < GameValues.text.MAIN_MENU_LOGO_HOVER_TEXT.length; i++) {
                if (GameValues.text.MAIN_MENU_LOGO_HOVER_TEXT[i] != null && !z) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Line());
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    z = true;
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(GameValues.text.MAIN_MENU_LOGO_HOVER_TEXT[i], CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT2));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
        }
        return new MenuElement_Hover(arrayList);
    }

    public static MenuElement_Hover getHoverAbout_Short() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center("Programmer and Designer", CFG.FONT_BOLD, Colors.HOVER_LEFT));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus("Lukasz Jakowski", "", Images.world, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_GOLD, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus("One Man Army!", "", Game_Calendar.IMG_MANPOWER, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_LEFT));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        return new MenuElement_Hover(arrayList);
    }

    public static void loadFlag(String str) {
        disposeData();
        if (FileManager.loadFile("gfx/flagsXH/" + str + ".png").exists()) {
            flag = new Image(new Texture(FileManager.loadFile("gfx/flagsXH/" + str + ".png")), Texture.TextureFilter.Linear);
            return;
        }
        if (FileManager.loadFile("gfx/flagsXH/" + Game.ideologiesManager.getRealTag(str) + ".png").exists()) {
            flag = new Image(new Texture(FileManager.loadFile("gfx/flagsXH/" + Game.ideologiesManager.getRealTag(str) + ".png")), Texture.TextureFilter.Linear);
            return;
        }
        if (FileManager.loadFile("gfx/flagsH/" + str + ".png").exists()) {
            flag = new Image(new Texture(FileManager.loadFile("gfx/flagsH/" + str + ".png")), Texture.TextureFilter.Linear);
            return;
        }
        if (FileManager.loadFile("gfx/flagsH/" + Game.ideologiesManager.getRealTag(str) + ".png").exists()) {
            flag = new Image(new Texture(FileManager.loadFile("gfx/flagsH/" + Game.ideologiesManager.getRealTag(str) + ".png")), Texture.TextureFilter.Linear);
            return;
        }
        if (FileManager.loadFile("gfx/flags/" + str + ".png").exists()) {
            flag = new Image(new Texture(FileManager.loadFile("gfx/flags/" + str + ".png")), Texture.TextureFilter.Nearest);
        } else if (FileManager.loadFile("gfx/flags/" + Game.ideologiesManager.getRealTag(str) + ".png").exists()) {
            flag = new Image(new Texture(FileManager.loadFile("gfx/flags/" + Game.ideologiesManager.getRealTag(str) + ".png")), Texture.TextureFilter.Nearest);
        } else {
            flag = new Image(new Texture(FileManager.loadFile("gfx/flagsXH/ran.png")), Texture.TextureFilter.Nearest);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void dispose() {
        disposeData();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        if (bgAlpha < 1.0f) {
            spriteBatch.setColor(0.0f, 0.0f, 0.0f, 1.0f);
            Images.pix.draw(spriteBatch, i, i2, CFG.GAME_WIDTH, CFG.GAME_HEIGHT);
            bgAlpha = Math.min(1.0f, (CFG.currentTimeMillis - bgTIME) / GameValues.text.MAIN_MENU_BG_ANIMATION_TIME);
        }
        spriteBatch.setColor(new Color(0.050980393f, 0.08627451f, 0.13333334f, bgAlpha * 1.0f));
        InitGame.background.draw(spriteBatch, i + ((CFG.GAME_WIDTH - InitGame.backgroundWidth) / 2), i2 + ((CFG.GAME_HEIGHT - InitGame.backgroundHeight) / 2), InitGame.backgroundWidth, InitGame.backgroundHeight);
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, bgAlpha));
        spriteBatch.setShader(Renderer.shaderAlpha);
        InitGame.background.getTexture().bind(1);
        Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
        ImageManager.getImage(Images.gradientHorizontal2).draw(spriteBatch, getPosX() + ((CFG.GAME_WIDTH - InitGame.backgroundWidth) / 2) + i, getPosY() + ((CFG.GAME_HEIGHT - InitGame.backgroundHeight) / 2) + i2, InitGame.backgroundWidth, InitGame.backgroundHeight);
        spriteBatch.flush();
        spriteBatch.setShader(Renderer.shaderDefault);
        spriteBatch.setColor(sparksColors);
        MenuManager.sparksAnimation.draw2(spriteBatch, i, (CFG.GAME_HEIGHT - Images.sparkHeight) + i2, CFG.GAME_WIDTH, Images.sparkHeight);
        spriteBatch.setColor(Color.WHITE);
        Renderer.drawBoxCorner(spriteBatch, this.iXPos + i, this.iYPos + i2, this.iWidth, this.iHeight + ImageManager.getImage(Images.mainTitle).getHeight());
        Renderer.drawBox_EDGE_TOP_LR(spriteBatch, Images.mainBox, this.iXPos + i, this.iYPos + ImageManager.getImage(Images.mainTitle).getHeight() + i2, this.iWidth, this.iHeight, true);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT.r, Colors.COLOR_GRADIENT.g, Colors.COLOR_GRADIENT.b, 0.3f));
        Images.gradientXY.draw(spriteBatch, this.iXPos + i, this.iYPos + ImageManager.getImage(Images.mainTitle).getHeight() + i2, this.iWidth, this.iHeight, false, true);
        spriteBatch.setColor(Color.WHITE);
        if (((CFG.isDesktop() && GameValues.text.MAIN_MENU_BG_ENABLE_AUTO_BG_CHANGE) || (!CFG.isDesktop() && GameValues.text.MAIN_MENU_BG_ENABLE_AUTO_BG_CHANGE_MOBILE)) && CFG.currentTimeMillis > bgTIME_CHANGE + ((long) GameValues.text.MAIN_MENU_BG_CHANGE_BG_EVERY_X_MS)) {
            bgTIME_CHANGE = CFG.currentTimeMillis;
            Game.addSimpleTask(new AnonymousClass18("loadBackground"));
        }
        super.draw(spriteBatch, i, i2, z, status);
    }
}
