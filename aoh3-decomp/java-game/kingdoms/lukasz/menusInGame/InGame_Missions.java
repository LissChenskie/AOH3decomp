package aoc.kingdoms.lukasz.menusInGame;

import aoc.kingdoms.lukasz.events.EventsManager;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.map.allianceHRE.JgPF.HTGgowNjn;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter2;
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
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Mission;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2Center;
import aoc.kingdoms.lukasz.menusEditor.RJR.ATsAGKCnv;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g3d.model.ia.uNBYrZVGzy;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Missions extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static long lTime;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Missions$1, reason: invalid class name */
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Missions$2, reason: invalid class name */
    class AnonymousClass2 extends Button_GoldenAge {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6, String str2, String str3, String str4, String str5, String str6) {
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
            arrayList2.add(new MenuElement_HoverElement_Type_Title(Images.goldenGold, "", Game.lang.get("GoldenAge"), Colors.HOVER_GOLD, Game.lang.get("GAProsperity"), HTGgowNjn.fbswETIzr, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MonthlyIncome") + ": ", "+" + CFG.getPrecision2(GameValues.goldenAge.GA_PROSPERITY_MONTHLY_INCOME[Math.min(Game.getCiv(Game.player.iCivID).goldenAge.getGoldenAgeProsperity(), GameValues.iGoldenAge_ProsperitySize - 1)], 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_POSITIVE));
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
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Unlocked") + ": ", "" + Game.getCiv(Game.player.iCivID).goldenAge.getGoldenAgeProsperity() + " / " + GameValues.goldenAge.GA_PROSPERITY_INVESTED_IN_ECONOMY.length, Images.goldenGold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Missions$3, reason: invalid class name */
    class AnonymousClass3 extends Button_GoldenAge {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6, String str2, String str3, String str4, String str5, String str6) {
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
            arrayList2.add(new MenuElement_HoverElement_Type_Title(Images.goldenGreen, "", Game.lang.get("GoldenAge"), Colors.HOVER_GOLD, Game.lang.get("GAMilitary"), "", Colors.HOVER_RIGHT));
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
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Unlocked") + ": ", "" + Game.getCiv(Game.player.iCivID).goldenAge.getGoldenAgeMilitary() + " / " + GameValues.goldenAge.GA_MILITARY_INCREASED_MANPOWER.length, Images.goldenGreen, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Missions$4, reason: invalid class name */
    class AnonymousClass4 extends Button_GoldenAge {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, int i6, String str2, String str3, String str4, String str5, String str6) {
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
            arrayList2.add(new MenuElement_HoverElement_Type_Title(Images.goldenBlue, "", Game.lang.get("GoldenAge"), Colors.HOVER_GOLD, Game.lang.get("GAScience"), ATsAGKCnv.qYIAnLrBYJGBAXF, Colors.HOVER_RIGHT));
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
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Unlocked") + ": ", "" + Game.getCiv(Game.player.iCivID).goldenAge.getGoldenAgeScience() + uNBYrZVGzy.SSFtsQQ + GameValues.goldenAge.GA_SCIENCE_DEVELOPED_INFRASTRUCTURE.length, Images.goldenBlue, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Missions$5, reason: invalid class name */
    class AnonymousClass5 extends MenuTitleIMG_FlagCenter2 {
        AnonymousClass5(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter2
        public int getFlagCivID() {
            return Game.player.iCivID;
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Missions.lTime;
        }
    }

    public InGame_Missions() {
        ArrayList arrayList = new ArrayList();
        int i = (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH;
        ImageManager.getImage(Images.title500).getHeight();
        int width = ImageManager.getImage(Images.title500).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height = ImageManager.getImage(Images.title500).getHeight() + ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i2 = CFG.PADDING;
        int i3 = CFG.PADDING;
        int i4 = Game.player.iCivID;
        int i5 = width - (i * 2);
        arrayList.add(new AnonymousClass1(Game.lang.get(GameValues.court.COUNCIL_NAME), Images.council, i, i3, i5, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.council).getWidth() + (CFG.PADDING * 4), true));
        int height2 = i3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new Text_Title_v2Center(Game.lang.get("GoldenAge"), -1, CFG.FONT_BOLD, Images.boxTitleBORDERWIDTH, height2, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + i2;
        arrayList.add(new AnonymousClass2(Game.lang.get("GAProsperity"), i, height3, i5, Images.goldenGold, Game_Calendar.IMG_ECONOMY, Images.buildings, Game.lang.get("InvestedInEconomy") + ": ", "" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).eventsData.getInvestedInEconomy() / 100.0f, 10) + " / " + CFG.getPrecision2(GameValues.goldenAge.GA_PROSPERITY_INVESTED_IN_ECONOMY[Math.min(Game.getCiv(Game.player.iCivID).goldenAge.getGoldenAgeProsperity(), GameValues.goldenAge.GA_PROSPERITY_INVESTED_IN_ECONOMY.length - 1)], 10), Game.lang.get("EconomyBuildingsConstructed") + ": ", "" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).eventsData2.getEconomyBuildingsConstructed(), 10) + " / " + CFG.getPrecision2(GameValues.goldenAge.GA_PROSPERITY_ECONOMY_BUILDINGS[Math.min(Game.getCiv(Game.player.iCivID).goldenAge.getGoldenAgeProsperity(), GameValues.goldenAge.GA_PROSPERITY_INVESTED_IN_ECONOMY.length - 1)], 10), "" + Game.getCiv(Game.player.iCivID).goldenAge.getGoldenAgeProsperity() + " / " + GameValues.goldenAge.GA_PROSPERITY_INVESTED_IN_ECONOMY.length + ""));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + i2;
        arrayList.add(new AnonymousClass3(Game.lang.get("GAMilitary"), i, height4, i5, Images.goldenGreen, Game_Calendar.IMG_MANPOWER, Images.buildings, Game.lang.get("IncreasedManpower") + ": ", "" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).eventsData.getIncreasedManpower() / 100.0f, 10) + " / " + CFG.getPrecision2(GameValues.goldenAge.GA_MILITARY_INCREASED_MANPOWER[Math.min(Game.getCiv(Game.player.iCivID).goldenAge.getGoldenAgeMilitary(), GameValues.goldenAge.GA_MILITARY_INCREASED_MANPOWER.length - 1)], 10), Game.lang.get("MilitaryBuildingsConstructed") + ": ", "" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).eventsData2.getMilitaryBuildingsConstructed(), 10) + " / " + CFG.getPrecision2(GameValues.goldenAge.GA_MILITARY_MILITARY_BUILDINGS[Math.min(Game.getCiv(Game.player.iCivID).goldenAge.getGoldenAgeMilitary(), GameValues.goldenAge.GA_MILITARY_INCREASED_MANPOWER.length - 1)], 10), "" + Game.getCiv(Game.player.iCivID).goldenAge.getGoldenAgeMilitary() + " / " + GameValues.goldenAge.GA_MILITARY_INCREASED_MANPOWER.length + ""));
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + i2;
        arrayList.add(new AnonymousClass4(Game.lang.get("GAScience"), i, height5, i5, Images.goldenBlue, Images.infrastructure, Images.buildings, Game.lang.get("DevelopedInfrastructure") + ": ", "" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).eventsData.getDevelopedInfrastructure(), 10) + " / " + CFG.getPrecision2(GameValues.goldenAge.GA_SCIENCE_DEVELOPED_INFRASTRUCTURE[Math.min(Game.getCiv(Game.player.iCivID).goldenAge.getGoldenAgeScience(), GameValues.goldenAge.GA_SCIENCE_DEVELOPED_INFRASTRUCTURE.length - 1)], 10), Game.lang.get("AdministrativeBuildingsConstructed") + ": ", "" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).eventsData2.getAdministrativeBuildingsConstructed(), 10) + " / " + CFG.getPrecision2(GameValues.goldenAge.GA_SCIENCE_ADMINISTRATIVE_BUILDINGS[Math.min(Game.getCiv(Game.player.iCivID).goldenAge.getGoldenAgeScience(), GameValues.goldenAge.GA_SCIENCE_DEVELOPED_INFRASTRUCTURE.length - 1)], 10), "" + Game.getCiv(Game.player.iCivID).goldenAge.getGoldenAgeScience() + " / " + GameValues.goldenAge.GA_SCIENCE_DEVELOPED_INFRASTRUCTURE.length + ""));
        int height6 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + i2;
        arrayList.add(new Text_Title_v2Center(Game.lang.get("AvailableMissions"), -1, CFG.FONT_BOLD, Images.boxTitleBORDERWIDTH, height6, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height7 = height6 + arrayList.get(arrayList.size() - 1).getHeight() + i2;
        int i6 = 0;
        for (int i7 = 0; i7 < EventsManager.iEventsSize; i7++) {
            if (EventsManager.events.get(i7).show_in_missions && !Game.getCiv(i4).eventsDataVariables.hasVariable(EventsManager.events.get(i7).id)) {
                arrayList.add(new Text_StaticBG_Mission("" + Game.lang.get(EventsManager.events.get(i7).title), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 4, i, height7, i5, 0, i7, EventsManager.events.get(i7).mission_image));
                height7 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                i6++;
            }
        }
        for (int i8 = 0; i8 < EventsManager.iEventsScenarioSize; i8++) {
            if (EventsManager.eventsScenario.get(i8).show_in_missions && !Game.getCiv(i4).eventsDataVariables.hasVariable(EventsManager.eventsScenario.get(i8).id)) {
                arrayList.add(new Text_StaticBG_Mission("" + Game.lang.get(EventsManager.eventsScenario.get(i8).title), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 4, i, height7, i5, 0, i8, EventsManager.eventsScenario.get(i8).mission_image));
                height7 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                i6++;
            }
        }
        if (i6 == 0) {
            arrayList.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i, height7, i5, CFG.BUTTON_HEIGHT2));
            height7 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        arrayList.add(new Text_Title_v2Center(Game.lang.get("Completed"), -1, CFG.FONT_BOLD, Images.boxTitleBORDERWIDTH, height7, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height8 = height7 + arrayList.get(arrayList.size() - 1).getHeight() + i2;
        int i9 = 0;
        for (int i10 = 0; i10 < EventsManager.iEventsSize; i10++) {
            if (EventsManager.events.get(i10).show_in_missions && Game.getCiv(i4).eventsDataVariables.hasVariable(EventsManager.events.get(i10).id)) {
                arrayList.add(new Text_StaticBG_Mission("" + Game.lang.get(EventsManager.events.get(i10).title), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 4, i, height8, i5, 0, i10, EventsManager.events.get(i10).mission_image));
                height8 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                i9++;
            }
        }
        for (int i11 = 0; i11 < EventsManager.iEventsScenarioSize; i11++) {
            if (EventsManager.eventsScenario.get(i11).show_in_missions && Game.getCiv(i4).eventsDataVariables.hasVariable(EventsManager.eventsScenario.get(i11).id)) {
                arrayList.add(new Text_StaticBG_Mission("" + Game.lang.get(EventsManager.eventsScenario.get(i11).title), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 4, i, height8, i5, 0, i11, EventsManager.eventsScenario.get(i11).mission_image));
                height8 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                i9++;
            }
        }
        if (i9 == 0) {
            arrayList.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i, height8, i5, CFG.BUTTON_HEIGHT2));
            height8 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        arrayList.add(new Text_Title_v2Center(Game.lang.get("Events"), -1, CFG.FONT_BOLD, Images.boxTitleBORDERWIDTH, height8, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height9 = height8 + arrayList.get(arrayList.size() - 1).getHeight() + i2;
        int i12 = 0;
        for (int i13 = 0; i13 < EventsManager.iEventsSize; i13++) {
            if (!EventsManager.events.get(i13).show_in_missions && !Game.getCiv(i4).eventsDataVariables.hasVariable(EventsManager.events.get(i13).id)) {
                arrayList.add(new Text_StaticBG_Mission("" + Game.lang.get(EventsManager.events.get(i13).title), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 4, i, height9, i5, 0, i13, EventsManager.events.get(i13).mission_image));
                height9 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                i12++;
            }
        }
        if (i12 == 0) {
            arrayList.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i, height9, i5, CFG.BUTTON_HEIGHT2));
            height9 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        int iMin = Math.min(height9, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, 0, width, Math.max(height9, iMin)));
        initMenu(new AnonymousClass5("", false, false, Images.title500), otherMenuPosX_2, height, width, iMin, arrayList, false, true);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop500, Images.insideBot500);
        ImageManager.getImage(Images.civInfoOver).draw2(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.civInfoOver).getHeight()));
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
        getTitle().setText(Game.lang.get("Missions"));
    }
}
