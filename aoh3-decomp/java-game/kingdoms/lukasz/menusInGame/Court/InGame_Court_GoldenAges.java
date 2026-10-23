package aoc.kingdoms.lukasz.menusInGame.Court;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FBO.idYW.HjHDSSkYG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.map.technology.Bhs.fiRhHJntP;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonCurrentSituation;
import aoc.kingdoms.lukasz.menu_element.button.Button_GoldenAge;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Title;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2Center;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Court_GoldenAges extends Menu {

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_GoldenAges$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonCurrentSituation {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
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
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(GameValues.court.COUNCIL_NAME), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.council, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.getClickSound_CivOptions();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_GoldenAges$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonCurrentSituation {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CourtOptions.disableAllViews();
            Game.menuManager.rebuildInGame_CourtMissions();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Missions"), Colors.HOVER_GOLD));
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_GoldenAges$3, reason: invalid class name */
    class AnonymousClass3 extends Button_GoldenAge {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6, String str2, String str3, String str4, String str5, String str6) {
            super(str, i, i2, i3, i4, i5, i6, str2, str3, str4, str5, str6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.gameThreadTurns.updateGoldenAge_Prosperity(Game.player.iCivID);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Title(Images.goldenGold, "", Game.lang.get("GoldenAge"), Colors.HOVER_GOLD, Game.lang.get("GAProsperity"), "", Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(fiRhHJntP.PJhCbUxpbSyI) + ": ", "+" + CFG.getPrecision2(GameValues.goldenAge.GA_PROSPERITY_MONTHLY_INCOME[Math.min(Game.getCiv(Game.player.iCivID).goldenAge.getGoldenAgeProsperity(), GameValues.iGoldenAge_ProsperitySize - 1)], 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("IncomeProduction") + ": ", "+" + CFG.getPrecision2(GameValues.goldenAge.GA_PROSPERITY_INCOME_PRODUCTION[Math.min(Game.getCiv(Game.player.iCivID).goldenAge.getGoldenAgeProsperity(), GameValues.iGoldenAge_ProsperitySize - 1)], 100) + "%", Images.goods, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Duration") + ": ", "" + Game.lang.get("XDays", GameValues.goldenAge.GA_PROSPERITY_DURATION_DAYS[Math.min(Game.getCiv(Game.player.iCivID).goldenAge.getGoldenAgeProsperity(), GameValues.iGoldenAge_ProsperitySize - 1)]), Images.time, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Unlocked") + ": ", "" + Game.getCiv(Game.player.iCivID).goldenAge.getGoldenAgeProsperity() + " / " + GameValues.iGoldenAge_ProsperitySize, Images.goldenGold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_GoldenAges$4, reason: invalid class name */
    class AnonymousClass4 extends Button_GoldenAge {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, int i6, String str2, String str3, String str4, String str5, String str6) {
            super(str, i, i2, i3, i4, i5, i6, str2, str3, str4, str5, str6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.gameThreadTurns.updateGoldenAge_Military(Game.player.iCivID);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Title(Images.goldenGreen, HjHDSSkYG.rsTwrjnSYmapxp, Game.lang.get("GoldenAge"), Colors.HOVER_GOLD, Game.lang.get("GAMilitary"), "", Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("UnitsAttack") + ": ", "+" + GameValues.goldenAge.GA_MILITARY_UNITS_ATTACK[Math.min(Game.getCiv(Game.player.iCivID).goldenAge.getGoldenAgeMilitary(), GameValues.iGoldenAge_MilitarySize - 1)], Images.attack, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("UnitsDefense") + ": ", "+" + GameValues.goldenAge.GA_MILITARY_UNITS_DEFENSE[Math.min(Game.getCiv(Game.player.iCivID).goldenAge.getGoldenAgeMilitary(), GameValues.iGoldenAge_MilitarySize - 1)], Images.defense, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumManpower") + ": ", "+" + CFG.getPrecision2(GameValues.goldenAge.GA_MILITARY_MAX_MANPOWER_PERC[Math.min(Game.getCiv(Game.player.iCivID).goldenAge.getGoldenAgeMilitary(), GameValues.iGoldenAge_MilitarySize - 1)] * 100.0f, 10) + "%", Game_Calendar.IMG_MANPOWER, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Duration") + ": ", "" + Game.lang.get("XDays", GameValues.goldenAge.GA_MILITARY_DURATION_DAYS[Math.min(Game.getCiv(Game.player.iCivID).goldenAge.getGoldenAgeMilitary(), GameValues.iGoldenAge_MilitarySize - 1)]), Images.time, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Unlocked") + ": ", "" + Game.getCiv(Game.player.iCivID).goldenAge.getGoldenAgeMilitary() + " / " + GameValues.iGoldenAge_MilitarySize, Images.goldenGreen, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_GoldenAges$5, reason: invalid class name */
    class AnonymousClass5 extends Button_GoldenAge {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, int i6, String str2, String str3, String str4, String str5, String str6) {
            super(str, i, i2, i3, i4, i5, i6, str2, str3, str4, str5, str6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.gameThreadTurns.updateGoldenAge_Science(Game.player.iCivID);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Title(Images.goldenBlue, "", Game.lang.get("GoldenAge"), Colors.HOVER_GOLD, Game.lang.get("GAScience"), "", Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ResearchPerMonth") + ": ", "+" + CFG.getPrecision2(GameValues.goldenAge.GA_SCIENCE_RESEARCH[Math.min(Game.getCiv(Game.player.iCivID).goldenAge.getGoldenAgeScience(), GameValues.iGoldenAge_ScienceSize - 1)], 100), Game_Calendar.IMG_TECHNOLOGY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MonthlyLegacy") + ": ", "+" + CFG.getPrecision2(GameValues.goldenAge.GA_SCIENCE_LEGACY[Math.min(Game.getCiv(Game.player.iCivID).goldenAge.getGoldenAgeScience(), GameValues.iGoldenAge_ScienceSize - 1)], 100), Game_Calendar.IMG_TECHNOLOGY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Duration") + ": ", "" + Game.lang.get("XDays", GameValues.goldenAge.GA_SCIENCE_DURATION_DAYS[Math.min(Game.getCiv(Game.player.iCivID).goldenAge.getGoldenAgeScience(), GameValues.iGoldenAge_ScienceSize - 1)]), Images.time, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Unlocked") + ": ", "" + Game.getCiv(Game.player.iCivID).goldenAge.getGoldenAgeScience() + " / " + GameValues.iGoldenAge_ScienceSize, Images.goldenBlue, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    public InGame_Court_GoldenAges() {
        ArrayList arrayList = new ArrayList();
        int i = (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH;
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int otherMenuPosX = InGame_CourtOptions2.getOtherMenuPosX();
        int height = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i2 = CFG.PADDING;
        int i3 = CFG.PADDING;
        int i4 = Game.player.iCivID;
        int i5 = width - (i * 2);
        arrayList.add(new AnonymousClass1(Game.lang.get(GameValues.court.COUNCIL_NAME), Images.council, i, i3, i5, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.council).getWidth() + (CFG.PADDING * 4), true));
        int height2 = i3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass2(Game.lang.get("Missions"), Images.missions, i, height2, i5, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.council).getWidth() + (CFG.PADDING * 4), true));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new Text_Title_v2Center(Game.lang.get("GoldenAge"), -1, CFG.FONT_BOLD, Images.boxTitleBORDERWIDTH, height3, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + i2;
        arrayList.add(new AnonymousClass3(Game.lang.get("GAProsperity"), i, height4, i5, Images.goldenGold, Game_Calendar.IMG_ECONOMY, Images.buildings, Game.lang.get("InvestedInEconomy") + ": ", "" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).eventsData.getInvestedInEconomy() / 100.0f, 10) + " / " + CFG.getPrecision2(GameValues.goldenAge.GA_PROSPERITY_INVESTED_IN_ECONOMY[Math.min(Game.getCiv(Game.player.iCivID).goldenAge.getGoldenAgeProsperity(), GameValues.iGoldenAge_ProsperitySize - 1)], 10), Game.lang.get("EconomyBuildingsConstructed") + ": ", "" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).eventsData2.getEconomyBuildingsConstructed(), 10) + " / " + CFG.getPrecision2(GameValues.goldenAge.GA_PROSPERITY_ECONOMY_BUILDINGS[Math.min(Game.getCiv(Game.player.iCivID).goldenAge.getGoldenAgeProsperity(), GameValues.iGoldenAge_ProsperitySize - 1)], 10), "" + Game.getCiv(Game.player.iCivID).goldenAge.getGoldenAgeProsperity() + " / " + GameValues.iGoldenAge_ProsperitySize + ""));
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + i2;
        arrayList.add(new AnonymousClass4(Game.lang.get("GAMilitary"), i, height5, i5, Images.goldenGreen, Game_Calendar.IMG_MANPOWER, Images.buildings, Game.lang.get("IncreasedManpower") + ": ", "" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).eventsData.getIncreasedManpower() / 100.0f, 10) + " / " + CFG.getPrecision2(GameValues.goldenAge.GA_MILITARY_INCREASED_MANPOWER[Math.min(Game.getCiv(Game.player.iCivID).goldenAge.getGoldenAgeMilitary(), GameValues.iGoldenAge_MilitarySize - 1)], 10), Game.lang.get("MilitaryBuildingsConstructed") + ": ", "" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).eventsData2.getMilitaryBuildingsConstructed(), 10) + " / " + CFG.getPrecision2(GameValues.goldenAge.GA_MILITARY_MILITARY_BUILDINGS[Math.min(Game.getCiv(Game.player.iCivID).goldenAge.getGoldenAgeMilitary(), GameValues.iGoldenAge_MilitarySize - 1)], 10), "" + Game.getCiv(Game.player.iCivID).goldenAge.getGoldenAgeMilitary() + " / " + GameValues.iGoldenAge_MilitarySize + ""));
        int height6 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + i2;
        arrayList.add(new AnonymousClass5(Game.lang.get("GAScience"), i, height6, i5, Images.goldenBlue, Images.infrastructure, Images.buildings, Game.lang.get("DevelopedInfrastructure") + ": ", "" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).eventsData.getDevelopedInfrastructure(), 10) + " / " + CFG.getPrecision2(GameValues.goldenAge.GA_SCIENCE_DEVELOPED_INFRASTRUCTURE[Math.min(Game.getCiv(Game.player.iCivID).goldenAge.getGoldenAgeScience(), GameValues.iGoldenAge_ScienceSize - 1)], 10), Game.lang.get("AdministrativeBuildingsConstructed") + ": ", "" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).eventsData2.getAdministrativeBuildingsConstructed(), 10) + " / " + CFG.getPrecision2(GameValues.goldenAge.GA_SCIENCE_ADMINISTRATIVE_BUILDINGS[Math.min(Game.getCiv(Game.player.iCivID).goldenAge.getGoldenAgeScience(), GameValues.iGoldenAge_ScienceSize - 1)], 10), "" + Game.getCiv(Game.player.iCivID).goldenAge.getGoldenAgeScience() + " / " + GameValues.iGoldenAge_ScienceSize + ""));
        int height7 = height6 + arrayList.get(arrayList.size() - 1).getHeight() + i2;
        int i6 = height + InGame_CourtOptions.menuH;
        int iMin = Math.min(height7, (CFG.GAME_HEIGHT - i6) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, 0, width, Math.max(height7, iMin)));
        initMenu(null, otherMenuPosX, i6, width, iMin, arrayList, false, false);
        this.drawScrollPositionAlways = false;
        Game.menuManager.setInGame_CivOptions_Title(Game.lang.get("GoldenAge"));
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = InGame_Court.lTime + 60 >= CFG.currentTimeMillis ? (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - InGame_Court.lTime) / 60.0f))) : i;
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
        InGame_Court.lTime = CFG.currentTimeMillis;
        InGame_Court.lTime2 = CFG.currentTimeMillis;
    }
}
