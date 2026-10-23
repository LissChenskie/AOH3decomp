package aoc.kingdoms.lukasz.menusInGame.Court;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu_element.IconCourt;
import aoc.kingdoms.lukasz.menu_element.IconCourt_Notification;
import aoc.kingdoms.lukasz.menu_element.SpaceHorizontal;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menusInGame.InGame;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.google.android.gms.common.internal.constants.oyIG.kfGnwGN;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_CourtOptions2 extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int HEIGHT = 100;
    public static int TEXT_ANIMATION_TIME = 165;
    public static long TEXT_TIME = 0;
    public static int buttonW_Draw = 0;
    public static int idCores = -21;
    public static int idCourt = -9;
    public static int idExploitEconomy = -94;
    public static int idProvinces = -77;
    public static int idReligion = -24;
    public static boolean isOptionHovered;
    public static int menuH;
    public static int textMaxWidth;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2$1, reason: invalid class name */
    class AnonymousClass1 extends IconCourt_Notification {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CourtOptions2.actionMissions();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Missions") + ": " + Game.getCiv(Game.player.iCivID).getCivName(), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.missions, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (Game.player.currSituation.missionCanBeUnlockedNum > 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Available") + ": ", CFG.FONT_REGULAR));
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + Game.player.currSituation.missionCanBeUnlockedNum, CFG.FONT_BOLD, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.missions, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList, Game.player.currSituation.missionCanBeUnlockedNum == 0);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.IconCourt_Notification, aoc.kingdoms.lukasz.menu_element.IconCourt, aoc.kingdoms.lukasz.menu_element.button.Button
        protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            super.drawButtonBG(spriteBatch, i, i2, z);
            if (Game.player.currSituation.missionCanBeUnlocked) {
                spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT.r, Colors.COLOR_GRADIENT.g, Colors.COLOR_GRADIENT.b, 0.65f));
                ImageManager.getImage(Images.gradientXYVertical).draw(spriteBatch, getPosX() + i, getPosY() + i2, (this.widthDraw * 3) / 4, getHeight());
                spriteBatch.setColor(Color.WHITE);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.getClickSound_CivOptions();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.IconCourt_Notification
        public void updateValue() {
            super.updateValue();
            if (this.value != Game.player.currSituation.missionCanBeUnlockedNum) {
                setNumber(Game.player.currSituation.missionCanBeUnlockedNum);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2$10, reason: invalid class name */
    class AnonymousClass10 extends IconCourt {
        AnonymousClass10(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (this.id != InGame_CourtOptions.iActiveID) {
                InGame_CourtOptions.iActiveID = this.id;
                InGame_CourtOptions2.disableAllViews();
                InGame_Court_IncreaseGrowthRate.CLICK_X_TIMES = 1;
                Game.menuManager.rebuildInGame_IncreaseGrowthRate();
                Game.menuManager.setVisibleInGame_Court(true);
                InGame_Court.lTime = 0L;
                if (Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_INCREASE_GROWTH_RATE) {
                    Game.mapModes.setActiveViewID(Game.mapModes.MODE_INCREASE_GROWTH_RATE);
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("IncreasePopulationGrowthRate"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.populationUp, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            float growthRateWithBonuses = 0.0f;
            for (int i = 0; i < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i++) {
                growthRateWithBonuses += Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i)).getGrowthRateWithBonuses();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get(kfGnwGN.cwUvxQVK) + ": ", CFG.FONT_REGULAR));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + CFG.getPrecision2(growthRateWithBonuses / Game.getCiv(Game.player.iCivID).getNumOfProvinces(), 100) + "%", CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.populationGrowth, CFG.PADDING, 0));
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.player.iCivID, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.IconCourt
        public int getImageID() {
            return Images.populationGrowth;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.getClickSound_CivOptions();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2$11, reason: invalid class name */
    class AnonymousClass11 extends IconCourt {
        AnonymousClass11(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (this.id != InGame_CourtOptions.iActiveID) {
                InGame_CourtOptions.iActiveID = this.id;
                InGame_CourtOptions2.disableAllViews();
                InGame_Court_IncreaseManpower.CLICK_X_TIMES = 1;
                Game.menuManager.rebuildInGame_IncreaseManpower();
                Game.menuManager.setVisibleInGame_Court(true);
                InGame_Court.lTime = 0L;
                if (Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_INCREASE_MANPOWER) {
                    Game.mapModes.setActiveViewID(Game.mapModes.MODE_INCREASE_MANPOWER);
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("IncreaseManpower"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            float manpower = 0.0f;
            for (int i = 0; i < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i++) {
                manpower += Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i)).getManpower();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Average") + ": ", CFG.FONT_REGULAR));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + CFG.getPrecision2(manpower / Game.getCiv(Game.player.iCivID).getNumOfProvinces(), 100), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.player.iCivID, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.IconCourt
        public int getImageID() {
            return Game_Calendar.IMG_MANPOWER;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.getClickSound_CivOptions();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2$12, reason: invalid class name */
    class AnonymousClass12 extends IconCourt_Notification {
        AnonymousClass12(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CourtOptions2.actionCores(this.id);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("CoreConstruction"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.core, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            int i = 0;
            for (int i2 = 0; i2 < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i2++) {
                if (Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i2)).haveACore(Game.player.iCivID)) {
                    i++;
                }
            }
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Cores") + ": ", CFG.FONT_REGULAR));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + i + " / " + Game.getCiv(Game.player.iCivID).getNumOfProvinces(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.core, CFG.PADDING, 0));
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.player.iCivID, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.IconCourt_Notification, aoc.kingdoms.lukasz.menu_element.IconCourt, aoc.kingdoms.lukasz.menu_element.button.Button
        protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            super.drawButtonBG(spriteBatch, i, i2, z);
            if (Game.player.currSituation.nonCoreProvinces) {
                spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT.r, Colors.COLOR_GRADIENT.g, Colors.COLOR_GRADIENT.b, 0.65f));
                ImageManager.getImage(Images.gradientXYVertical).draw(spriteBatch, getPosX() + i, getPosY() + i2, (this.widthDraw * 3) / 4, getHeight());
                spriteBatch.setColor(Color.WHITE);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.getClickSound_CivOptions();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.IconCourt_Notification
        public void updateValue() {
            super.updateValue();
            if (this.value != Game.player.currSituation.nonCoreProvincesNum) {
                setNumber(Game.player.currSituation.nonCoreProvincesNum);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2$13, reason: invalid class name */
    class AnonymousClass13 extends IconCourt_Notification {
        AnonymousClass13(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CourtOptions2.actionReligion(this.id);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Religion"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.religion, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            int i = 0;
            for (int i2 = 0; i2 < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i2++) {
                if (Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i2)).getReligion() == Game.getCiv(Game.player.iCivID).getReligionID()) {
                    i++;
                }
            }
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.religionManager.getReligion(Game.getCiv(Game.player.iCivID).getReligionID()).Name + ": ", CFG.FONT_REGULAR));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + i + " / " + Game.getCiv(Game.player.iCivID).getNumOfProvinces(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.religion, CFG.PADDING, 0));
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.player.iCivID, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.IconCourt_Notification, aoc.kingdoms.lukasz.menu_element.IconCourt, aoc.kingdoms.lukasz.menu_element.button.Button
        protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            super.drawButtonBG(spriteBatch, i, i2, z);
            if (Game.player.currSituation.differentReligionProvinces) {
                spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT.r, Colors.COLOR_GRADIENT.g, Colors.COLOR_GRADIENT.b, 0.65f));
                ImageManager.getImage(Images.gradientXYVertical).draw(spriteBatch, getPosX() + i, getPosY() + i2, (this.widthDraw * 3) / 4, getHeight());
                spriteBatch.setColor(Color.WHITE);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.getClickSound_CivOptions();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.IconCourt_Notification
        public void updateValue() {
            super.updateValue();
            if (this.value != Game.player.currSituation.differentReligionProvincesNum) {
                setNumber(Game.player.currSituation.differentReligionProvincesNum);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2$14, reason: invalid class name */
    class AnonymousClass14 extends IconCourt {
        AnonymousClass14(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 42) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_Sandbox();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Sandbox"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.sandbox, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.getClickSound_CivOptions();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getVisible() {
            return Game.SANDBOX;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2$15, reason: invalid class name */
    class AnonymousClass15 extends SpaceHorizontal {
        AnonymousClass15(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getVisible() {
            return Game.SANDBOX;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2$16, reason: invalid class name */
    class AnonymousClass16 extends Game.SimpleTask {
        AnonymousClass16(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.setOrderOfMenu_InGame();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2$17, reason: invalid class name */
    class AnonymousClass17 extends Game.SimpleTask {
        AnonymousClass17(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.setOrderOfMenu_TechnologyTree();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2$2, reason: invalid class name */
    class AnonymousClass2 extends IconCourt {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (this.id != InGame_CourtOptions.iActiveID) {
                InGame_CourtOptions.iActiveID = this.id;
                InGame_CourtOptions2.disableAllViews();
                Game.menuManager.rebuildInGame_Government();
                Game.menuManager.setVisibleInGame_Court(true);
                InGame_Court.lTime = 0L;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Government"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.government, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Capital") + ": ", CFG.FONT_REGULAR));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getCiv(Game.player.iCivID).getCapitalProvinceID() >= 0 ? Game.getProvince(Game.getCiv(Game.player.iCivID).getCapitalProvinceID()).getProvinceName() : Game.lang.get("None"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.capital, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Level") + ": ", CFG.FONT_REGULAR));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + Game.getCiv(Game.player.iCivID).getCapitalLevel() + " / " + Game.getCapital_MaxLvl(Game.player.iCivID), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.capital, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.getClickSound_CivOptions();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2$3, reason: invalid class name */
    class AnonymousClass3 extends IconCourt {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.mapScale.scrollScale(-1);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Scale"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.plus, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2$4, reason: invalid class name */
    class AnonymousClass4 extends IconCourt {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.mapScale.scrollScale(1);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Scale"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.minus, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2$5, reason: invalid class name */
    class AnonymousClass5 extends IconCourt_Notification {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CourtOptions2.actionLaws(InGame_CourtOptions.iLawID);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Laws"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.law, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (CFG.isDesktop()) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Shortcut") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("L", CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList, !CFG.isDesktop());
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.getClickSound_CivOptions();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.IconCourt_Notification
        public void updateValue() {
            super.updateValue();
            if (this.value != Game.player.currSituation.newLawAvailableNum) {
                setNumber(Game.player.currSituation.newLawAvailableNum);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2$6, reason: invalid class name */
    class AnonymousClass6 extends IconCourt {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CourtOptions2.actionBuildings(InGame_CourtOptions.buildID);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Buildings"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.build, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            float f = 0.0f;
            for (int i = 0; i < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i++) {
                f += Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i)).iBuildingsSize;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Average") + ": ", CFG.FONT_REGULAR));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + CFG.getPrecision2(f / Game.getCiv(Game.player.iCivID).getNumOfProvinces(), 100), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.build, CFG.PADDING, 0));
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.player.iCivID, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (CFG.isDesktop()) {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Shortcut") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("B", CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.getClickSound_CivOptions();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2$7, reason: invalid class name */
    class AnonymousClass7 extends IconCourt {
        AnonymousClass7(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (this.id != InGame_CourtOptions.iActiveID) {
                InGame_CourtOptions.iActiveID = this.id;
                InGame_CourtOptions2.disableAllViews();
                InGame_Court_IncreaseTaxEfficiency.CLICK_X_TIMES = 1;
                Game.menuManager.rebuildInGame_IncreaseTaxEfficiency();
                Game.menuManager.setVisibleInGame_Court(true);
                InGame_Court.lTime = 0L;
                if (Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_INCREASE_TAX_EFFICIENCY) {
                    Game.mapModes.setActiveViewID(Game.mapModes.MODE_INCREASE_TAX_EFFICIENCY);
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("IncreaseTaxEfficiency"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.taxUp, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            float taxEfficiencyWithBonuses = 0.0f;
            for (int i = 0; i < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i++) {
                taxEfficiencyWithBonuses += Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i)).getTaxEfficiencyWithBonuses();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Average") + ": ", CFG.FONT_REGULAR));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + CFG.getPrecision2(taxEfficiencyWithBonuses / Game.getCiv(Game.player.iCivID).getNumOfProvinces(), 100) + "%", CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.tax, CFG.PADDING, 0));
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.player.iCivID, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.getClickSound_CivOptions();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2$8, reason: invalid class name */
    class AnonymousClass8 extends IconCourt {
        AnonymousClass8(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (this.id != InGame_CourtOptions.iActiveID) {
                InGame_CourtOptions.iActiveID = this.id;
                InGame_CourtOptions2.disableAllViews();
                InGame_Court_InvestInEconomy.CLICK_X_TIMES = 1;
                Game.menuManager.rebuildInGame_InvestInEconomy();
                Game.menuManager.setVisibleInGame_Court(true);
                InGame_Court.lTime = 0L;
                if (Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_INVEST_IN_ECONOMY) {
                    Game.mapModes.setActiveViewID(Game.mapModes.MODE_INVEST_IN_ECONOMY);
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("InvestInEconomy"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_ECONOMY_UP, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            float economyWithBonuses = 0.0f;
            for (int i = 0; i < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i++) {
                economyWithBonuses += Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i)).getEconomyWithBonuses();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Average") + ": ", CFG.FONT_REGULAR));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + CFG.getPrecision2(economyWithBonuses / Game.getCiv(Game.player.iCivID).getNumOfProvinces(), 100), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Game_Calendar.IMG_ECONOMY, CFG.PADDING, 0));
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.player.iCivID, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.getClickSound_CivOptions();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2$9, reason: invalid class name */
    class AnonymousClass9 extends IconCourt {
        AnonymousClass9(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (this.id != InGame_CourtOptions.iActiveID) {
                InGame_CourtOptions.iActiveID = this.id;
                InGame_CourtOptions2.disableAllViews();
                Game.menuManager.rebuildInGame_DevelopInfrastructure();
                Game.menuManager.setVisibleInGame_Court(true);
                InGame_Court.lTime = 0L;
                if (Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_DEVELOP_INFRASTRUCTURE) {
                    Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEVELOP_INFRASTRUCTURE);
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("DevelopInfrastructure"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.infrastructureUp, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            float infrastructure = 0.0f;
            for (int i = 0; i < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i++) {
                infrastructure += Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i)).getInfrastructure();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Average") + ": ", CFG.FONT_REGULAR));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + CFG.getPrecision2(infrastructure / Game.getCiv(Game.player.iCivID).getNumOfProvinces(), 100), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.infrastructure, CFG.PADDING, 0));
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.player.iCivID, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.getClickSound_CivOptions();
        }
    }

    public InGame_CourtOptions2() {
        int i;
        ArrayList arrayList = new ArrayList();
        int i2 = CFG.PADDING;
        int height = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY;
        int i3 = CFG.PADDING;
        int menuWidth = getMenuWidth();
        buttonW_Draw = menuWidth;
        int i4 = menuWidth + (CFG.PADDING * 2);
        int i5 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT2 : CFG.BUTTON_HEIGHT;
        arrayList.add(new AnonymousClass1(Game.lang.get("Missions"), Images.missions, 0, 0, i4, i5, 0, buttonW_Draw));
        int height2 = arrayList.get(arrayList.size() - 1).getHeight() + 0;
        arrayList.add(new SpaceHorizontal(0, height2, buttonW_Draw));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight();
        InGame_CourtOptions.iGovernmentID = 1;
        arrayList.add(new AnonymousClass2(Game.lang.get("Government"), Images.government, 0, height3, i4, i5, 1, buttonW_Draw));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
        arrayList.add(new SpaceHorizontal(0, height4, buttonW_Draw));
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight();
        if (GameValues.zoom.SIDEBAR_ZOOM_SCALE_BUTTONS) {
            arrayList.add(new AnonymousClass3(Game.lang.get("Scale") + " +", Images.plus, 0, height5, i4, i5, 2, buttonW_Draw));
            int height6 = height5 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new SpaceHorizontal(0, height6, buttonW_Draw));
            int height7 = height6 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass4(Game.lang.get("Scale") + " -", Images.minus, 0, height7, i4, i5, 3, buttonW_Draw));
            int height8 = height7 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new SpaceHorizontal(0, height8, buttonW_Draw));
            height5 = height8 + arrayList.get(arrayList.size() - 1).getHeight();
            i = 4;
        } else {
            i = 2;
        }
        InGame_CourtOptions.iLawID = i;
        int i6 = i + 1;
        arrayList.add(new AnonymousClass5(Game.lang.get("Laws"), Images.law, 0, height5, i4, i5, i, buttonW_Draw));
        int height9 = height5 + arrayList.get(arrayList.size() - 1).getHeight();
        arrayList.add(new SpaceHorizontal(0, height9, buttonW_Draw));
        int height10 = height9 + arrayList.get(arrayList.size() - 1).getHeight();
        InGame_CourtOptions.buildID = i6;
        int i7 = i6 + 1;
        arrayList.add(new AnonymousClass6(Game.lang.get("Buildings"), Images.build, 0, height10, i4, i5, i6, buttonW_Draw));
        int height11 = height10 + arrayList.get(arrayList.size() - 1).getHeight();
        arrayList.add(new SpaceHorizontal(0, height11, buttonW_Draw));
        int height12 = height11 + arrayList.get(arrayList.size() - 1).getHeight();
        int i8 = i7 + 1;
        arrayList.add(new AnonymousClass7(Game.lang.get("TaxEfficiency"), Images.taxUp, 0, height12, i4, i5, i7, buttonW_Draw));
        int height13 = height12 + arrayList.get(arrayList.size() - 1).getHeight();
        arrayList.add(new SpaceHorizontal(0, height13, buttonW_Draw));
        int height14 = height13 + arrayList.get(arrayList.size() - 1).getHeight();
        int i9 = i8 + 1;
        arrayList.add(new AnonymousClass8(Game.lang.get("Economy"), Game_Calendar.IMG_ECONOMY_UP, 0, height14, i4, i5, i8, buttonW_Draw));
        int height15 = height14 + arrayList.get(arrayList.size() - 1).getHeight();
        arrayList.add(new SpaceHorizontal(0, height15, buttonW_Draw));
        int height16 = height15 + arrayList.get(arrayList.size() - 1).getHeight();
        int i10 = i9 + 1;
        arrayList.add(new AnonymousClass9(Game.lang.get("Infrastructure"), Images.infrastructureUp, 0, height16, i4, i5, i9, buttonW_Draw));
        int height17 = height16 + arrayList.get(arrayList.size() - 1).getHeight();
        arrayList.add(new SpaceHorizontal(0, height17, buttonW_Draw));
        int height18 = height17 + arrayList.get(arrayList.size() - 1).getHeight();
        int i11 = i10 + 1;
        arrayList.add(new AnonymousClass10(Game.lang.get("GrowthRate"), Images.populationUp, 0, height18, i4, i5, i10, buttonW_Draw));
        int height19 = height18 + arrayList.get(arrayList.size() - 1).getHeight();
        arrayList.add(new SpaceHorizontal(0, height19, buttonW_Draw));
        int height20 = height19 + arrayList.get(arrayList.size() - 1).getHeight();
        int i12 = i11 + 1;
        arrayList.add(new AnonymousClass11(Game.lang.get("Manpower"), Game_Calendar.IMG_MANPOWER_UP, 0, height20, i4, i5, i11, buttonW_Draw));
        int height21 = height20 + arrayList.get(arrayList.size() - 1).getHeight();
        arrayList.add(new SpaceHorizontal(0, height21, buttonW_Draw));
        int height22 = height21 + arrayList.get(arrayList.size() - 1).getHeight();
        idCores = i12;
        int i13 = i12 + 1;
        arrayList.add(new AnonymousClass12(Game.lang.get("Cores"), Images.core, 0, height22, i4, i5, i12, buttonW_Draw));
        int height23 = height22 + arrayList.get(arrayList.size() - 1).getHeight();
        arrayList.add(new SpaceHorizontal(0, height23, buttonW_Draw));
        int height24 = height23 + arrayList.get(arrayList.size() - 1).getHeight();
        idReligion = i13;
        arrayList.add(new AnonymousClass13(Game.lang.get("Religion"), Images.religion, 0, height24, i4, i5, i13, buttonW_Draw));
        int height25 = height24 + arrayList.get(arrayList.size() - 1).getHeight();
        arrayList.add(new SpaceHorizontal(0, height25, buttonW_Draw));
        int height26 = height25 + arrayList.get(arrayList.size() - 1).getHeight();
        arrayList.add(new AnonymousClass14(Game.lang.get("Sandbox"), Images.sandbox, 0, height26, i4, i5, i13 + 1, buttonW_Draw));
        int height27 = height26 + arrayList.get(arrayList.size() - 1).getHeight();
        arrayList.add(new AnonymousClass15(0, height27, buttonW_Draw));
        int height28 = height27 + arrayList.get(arrayList.size() - 1).getHeight();
        textMaxWidth = 0;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size).getTextWidth() > textMaxWidth) {
                textMaxWidth = arrayList.get(size).getTextWidth();
            }
        }
        textMaxWidth += CFG.PADDING * 6;
        initMenu(null, 0, height, i4 + textMaxWidth + (CFG.PADDING * 2), Math.min(height28, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 3)), arrayList, !Game.settingsManager.enableHideSideMenu, false);
        this.drawScrollPositionAlways = false;
        this.drawScrollPositionAlways2 = false;
        HEIGHT = 0;
        for (int i14 = 0; i14 < getMenuElementsSize(); i14++) {
            if (getMenuElement(i14).getVisible() && getMenuElement(i14).getPosY() + getHeight() > HEIGHT) {
                HEIGHT = getMenuElement(i14).getPosY() + getMenuElement(i14).getHeight();
            }
        }
        HEIGHT += getPosY() + InGame.leftSideBarPadding;
    }

    public static final void actionBuildings(int i) {
        if (i != InGame_CourtOptions.iActiveID) {
            InGame_CourtOptions.iActiveID = i;
            disableAllViews();
            Game.menuManager.rebuildInGame_Buildings2();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
            return;
        }
        if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_BUILDING) {
            InGame_CourtOptions.iActiveID = i;
            disableAllViews();
            Game.menuManager.rebuildInGame_Buildings2();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }
    }

    public static final void actionCores(int i) {
        if (i != InGame_CourtOptions.iActiveID) {
            InGame_CourtOptions.iActiveID = i;
            disableAllViews();
            Game.menuManager.rebuildInGame_Core();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
            if (Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_CORE) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_CORE);
            }
        }
    }

    public static final void actionCourt(int i) {
        if (InGame_Court.iActiveCivID != Game.player.iCivID) {
            InGame_Court.iActiveCivID = Game.player.iCivID;
            InGame_CourtOptions.iActiveID = i;
            disableAllViews();
            Game.menuManager.rebuildInGame_Court();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
            return;
        }
        if (i == InGame_CourtOptions.iActiveID && InGame_Court.inCourt) {
            return;
        }
        InGame_CourtOptions.iActiveID = i;
        disableAllViews();
        Game.menuManager.rebuildInGame_Court();
        Game.menuManager.setVisibleInGame_Court(true);
        InGame_Court.lTime = 0L;
    }

    public static final void actionLaws(int i) {
        if (i != InGame_CourtOptions.iActiveID) {
            InGame_CourtOptions.iActiveID = i;
            disableAllViews();
            Game.menuManager.rebuildInGame_LawsCourt();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }
    }

    public static void actionMissions() {
        if (Game.menuManager.getVisibleInGame_TechnologyTree()) {
            Game.menuManager.setVisibleInGame_TechnologyTree(false);
        } else {
            Game.menuManager.rebuildInGame_MissionTree(false, true);
            Game.addSimpleTask(new AnonymousClass17("setOrderOfMenu_TechnologyTree"));
        }
    }

    public static final void actionProvinces(int i) {
        if (i != InGame_CourtOptions.iActiveID) {
            InGame_CourtOptions.iActiveID = i;
            disableAllViews();
            InGame_Court_Provinces.sSearch = "";
            Game.menuManager.rebuildInGame_CourtProvinces();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }
    }

    public static final void actionReligion(int i) {
        if (i != InGame_CourtOptions.iActiveID) {
            InGame_CourtOptions.iActiveID = i;
            disableAllViews();
            Game.menuManager.rebuildInGame_Religion();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
            if (Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_CONVERT_RELIGION) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_CONVERT_RELIGION);
            }
        }
    }

    public static void disableAllViews() {
        if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_INVEST_IN_ECONOMY || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DEVELOP_INFRASTRUCTURE || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_INCREASE_TAX_EFFICIENCY || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_INCREASE_MANPOWER || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_MOVE_CAPITAL || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_INCREASE_GROWTH_RATE || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_CONVERT_RELIGION || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_CORE || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_BUILDING) {
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
        }
        InGame_Court_Buildings2.oBuildingID = null;
    }

    public static final int getMenuWidth() {
        return ImageManager.getImage(Images.leftSideBar).getWidth() - InGame.leftSideBarInnerWidth;
    }

    public static final int getOtherMenuPosX() {
        return (CFG.PADDING * 2) + getMenuWidth() + Game.settingsManager.IN_GAME_LEFT_PADDING_EXTRA;
    }

    public static final int getOtherMenuPosX_2() {
        return (Game.settingsManager.enableHideSideMenu ? 0 : getMenuWidth()) + (CFG.PADDING * 2) + Game.settingsManager.IN_GAME_LEFT_PADDING_EXTRA;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void actionCloseMenu() {
        super.actionCloseMenu();
        Game.menuManager.setVisibleInGame_Court(false);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void actionElement(int i) {
        if (InGame_Court.iActiveCivID != Game.player.iCivID) {
            InGame_Court.iActiveCivID = Game.player.iCivID;
        } else if (Game.menuManager.getVisibleInGame_Court() && getMenuElement(i).getCurrent() == InGame_CourtOptions.iActiveID) {
            Game.menuManager.setVisibleInGame_Court(false);
            return;
        }
        super.actionElement(i);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        isOptionHovered = false;
        for (int i3 = 0; i3 < getMenuElementsSize(); i3++) {
            if (getMenuElement(i3).getIsHovered()) {
                isOptionHovered = true;
                if (!MenuManager.orderOfMenuInGame && !Game.menuManager.getVisibleInGame_TechnologyTree()) {
                    Game.addSimpleTask_First(new AnonymousClass16("setOrderOfMenu_InGame"));
                    break;
                } else {
                    break;
                    break;
                }
            }
        }
        if (!isOptionHovered) {
            TEXT_TIME = CFG.currentTimeMillis;
        }
        if (Game.settingsManager.enableHideSideMenu && InGame_Court.lTime + 60 >= CFG.currentTimeMillis) {
            i = (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - InGame_Court.lTime) / 60.0f)));
        }
        spriteBatch.setColor(Color.WHITE);
        super.draw(spriteBatch, i, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public int getPosX() {
        return super.getPosX() + Game.settingsManager.IN_GAME_LEFT_PADDING_EXTRA;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void onHovered() {
        super.onHovered();
        Game.menuManager.setOrderOfMenu_InGameCourt();
    }
}
