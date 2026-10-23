package aoc.kingdoms.lukasz.menusInGame.Civ;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Ages;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.LanguageManager;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.map.battles.BattleManager;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRanking;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_DoubleText;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonIdeology2;
import aoc.kingdoms.lukasz.menu_element.button.ButtonReligion2;
import aoc.kingdoms.lukasz.menu_element.button.ButtonResource2;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Rank_Ranking;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonusResource;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagCiv_Title;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Horizontal;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Compare;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static_ID;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2_TextLR;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.Province.iOYW.ALZmnpZHj;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Civ_Compare extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int civLeft = 0;
    public static int civLeft_Rank = -1;
    public static int civRight = 0;
    public static int civRight_Rank = -1;
    public static long lTime;
    public static long lTime2;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Compare$1, reason: invalid class name */
    class AnonymousClass1 extends TextIcon_Diplomacy {
        AnonymousClass1(int i, int i2, int i3, int i4, int i5, int i6) {
            super(i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_Civ();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("OpenTheDiplomacyView"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.diplomacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Diplomacy
        public Color getColorBar() {
            return Colors.TECH_BLUE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Compare$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonResource2 {
        AnonymousClass2(int i, int i2, int i3, int i4, int i5) {
            super(i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonResource2, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(InGame_Civ_Compare.civLeft, Game.lang.get("ProducedGoods")));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            ArrayList arrayList3 = new ArrayList();
            for (int i = 0; i < ResourcesManager.iResourcesSize; i++) {
                arrayList3.add(Float.valueOf(0.0f));
            }
            int resourceID = -1;
            for (int i2 = 0; i2 < Game.getCiv(InGame_Civ_Compare.civLeft).getNumOfProvinces(); i2++) {
                if (Game.getProvince(Game.getCiv(InGame_Civ_Compare.civLeft).getProvinceID(i2)).getResourceID() >= 0) {
                    arrayList3.set(Game.getProvince(Game.getCiv(InGame_Civ_Compare.civLeft).getProvinceID(i2)).getResourceID(), Float.valueOf(((Float) arrayList3.get(Game.getProvince(Game.getCiv(InGame_Civ_Compare.civLeft).getProvinceID(i2)).getResourceID())).floatValue() + ResourcesManager.getProducedGoods(Game.getCiv(InGame_Civ_Compare.civLeft).getProvinceID(i2))));
                    resourceID = Game.getProvince(Game.getCiv(InGame_Civ_Compare.civLeft).getProvinceID(i2)).getResourceID();
                }
            }
            if (resourceID >= 0) {
                int i3 = 0;
                while (true) {
                    int i4 = i3 + 1;
                    if (i3 >= 6) {
                        break;
                    }
                    for (int i5 = 0; i5 < ResourcesManager.iResourcesSize; i5++) {
                        if (((Float) arrayList3.get(resourceID)).floatValue() < ((Float) arrayList3.get(i5)).floatValue()) {
                            resourceID = i5;
                        }
                    }
                    if (((Float) arrayList3.get(resourceID)).floatValue() <= 0.0f) {
                        break;
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusResource(ResourcesManager.getResourceName(resourceID) + ": ", CFG.getPrecision2(((Float) arrayList3.get(resourceID)).floatValue(), 10), resourceID, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList3.set(resourceID, Float.valueOf(0.0f));
                    i3 = i4;
                }
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("None"), "", Images.resourceNone, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList3.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Compare$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonResource2 {
        AnonymousClass3(int i, int i2, int i3, int i4, int i5) {
            super(i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonResource2, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(InGame_Civ_Compare.civRight, Game.lang.get("ProducedGoods")));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            ArrayList arrayList3 = new ArrayList();
            for (int i = 0; i < ResourcesManager.iResourcesSize; i++) {
                arrayList3.add(Float.valueOf(0.0f));
            }
            int resourceID = -1;
            for (int i2 = 0; i2 < Game.getCiv(InGame_Civ_Compare.civRight).getNumOfProvinces(); i2++) {
                if (Game.getProvince(Game.getCiv(InGame_Civ_Compare.civRight).getProvinceID(i2)).getResourceID() >= 0) {
                    arrayList3.set(Game.getProvince(Game.getCiv(InGame_Civ_Compare.civRight).getProvinceID(i2)).getResourceID(), Float.valueOf(((Float) arrayList3.get(Game.getProvince(Game.getCiv(InGame_Civ_Compare.civRight).getProvinceID(i2)).getResourceID())).floatValue() + ResourcesManager.getProducedGoods(Game.getCiv(InGame_Civ_Compare.civRight).getProvinceID(i2))));
                    resourceID = Game.getProvince(Game.getCiv(InGame_Civ_Compare.civRight).getProvinceID(i2)).getResourceID();
                }
            }
            if (resourceID >= 0) {
                int i3 = 0;
                while (true) {
                    int i4 = i3 + 1;
                    if (i3 >= 6) {
                        break;
                    }
                    for (int i5 = 0; i5 < ResourcesManager.iResourcesSize; i5++) {
                        if (((Float) arrayList3.get(resourceID)).floatValue() < ((Float) arrayList3.get(i5)).floatValue()) {
                            resourceID = i5;
                        }
                    }
                    if (((Float) arrayList3.get(resourceID)).floatValue() <= 0.0f) {
                        break;
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusResource(ResourcesManager.getResourceName(resourceID) + ": ", CFG.getPrecision2(((Float) arrayList3.get(resourceID)).floatValue(), 10), resourceID, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList3.set(resourceID, Float.valueOf(0.0f));
                    i3 = i4;
                }
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("None"), "", Images.resourceNone, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList3.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Compare$4, reason: invalid class name */
    class AnonymousClass4 extends TextIcon2_Horizontal {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(InGame_Civ_Compare.civLeft).getCapitalProvinceID() >= 0) {
                if (Game.iActiveProvince != Game.getCiv(InGame_Civ_Compare.civLeft).getCapitalProvinceID()) {
                    Game.mapCoords.centerToProvinceID(Game.getCiv(InGame_Civ_Compare.civLeft).getCapitalProvinceID());
                    Game.setActiveProvinceID(Game.getCiv(InGame_Civ_Compare.civLeft).getCapitalProvinceID());
                    ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
                } else {
                    Game.menuManager.hideCourtCiv();
                    Game.menuManager.setVisibleInGame_Civ(false);
                    Game.setActiveProvinceID(Game.getCiv(InGame_Civ_Compare.civLeft).getCapitalProvinceID());
                    Game.menuManager.rebuildInGame_ProvinceInfo(true);
                    ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            if (Game.getCiv(InGame_Civ_Compare.civLeft).getCapitalProvinceID() < 0) {
                this.menuElementHover = null;
                return;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(InGame_Civ_Compare.civLeft, Game.lang.get("Capital") + ": " + Game.getProvince(Game.getCiv(InGame_Civ_Compare.civLeft).getCapitalProvinceID()).getProvinceName()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", CFG.getNumberWithSpaces("" + Game.getProvince(Game.getCiv(InGame_Civ_Compare.civLeft).getCapitalProvinceID()).getPopulationTotal()), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Economy") + ": ", CFG.getPrecision2(Game.getProvince(Game.getCiv(InGame_Civ_Compare.civLeft).getCapitalProvinceID()).getEconomyWithBonuses(), 10), Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Income") + ": ", CFG.getPrecision2(Game.getProvince(Game.getCiv(InGame_Civ_Compare.civLeft).getCapitalProvinceID()).getProvinceIncome() - Game.getProvince(Game.getCiv(InGame_Civ_Compare.civLeft).getCapitalProvinceID()).fProvinceMaintenance, 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Compare$5, reason: invalid class name */
    class AnonymousClass5 extends TextIcon2_Horizontal {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(InGame_Civ_Compare.civRight).getCapitalProvinceID() >= 0) {
                if (Game.iActiveProvince != Game.getCiv(InGame_Civ_Compare.civRight).getCapitalProvinceID()) {
                    Game.mapCoords.centerToProvinceID(Game.getCiv(InGame_Civ_Compare.civRight).getCapitalProvinceID());
                    Game.setActiveProvinceID(Game.getCiv(InGame_Civ_Compare.civRight).getCapitalProvinceID());
                    ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
                } else {
                    Game.menuManager.hideCourtCiv();
                    Game.menuManager.setVisibleInGame_Civ(false);
                    Game.setActiveProvinceID(Game.getCiv(InGame_Civ_Compare.civRight).getCapitalProvinceID());
                    Game.menuManager.rebuildInGame_ProvinceInfo(true);
                    ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            if (Game.getCiv(InGame_Civ_Compare.civRight).getCapitalProvinceID() < 0) {
                this.menuElementHover = null;
                return;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(InGame_Civ_Compare.civRight, Game.lang.get("Capital") + ": " + Game.getProvince(Game.getCiv(InGame_Civ_Compare.civRight).getCapitalProvinceID()).getProvinceName()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", CFG.getNumberWithSpaces("" + Game.getProvince(Game.getCiv(InGame_Civ_Compare.civRight).getCapitalProvinceID()).getPopulationTotal()), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Economy") + ": ", CFG.getPrecision2(Game.getProvince(Game.getCiv(InGame_Civ_Compare.civRight).getCapitalProvinceID()).getEconomyWithBonuses(), 10), Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Income") + ": ", CFG.getPrecision2(Game.getProvince(Game.getCiv(InGame_Civ_Compare.civRight).getCapitalProvinceID()).getProvinceIncome() - Game.getProvince(Game.getCiv(InGame_Civ_Compare.civRight).getCapitalProvinceID()).fProvinceMaintenance, 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Compare$6, reason: invalid class name */
    class AnonymousClass6 extends MenuTitleIMG_DoubleText {
        AnonymousClass6(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Civ_Compare.lTime2;
        }
    }

    public InGame_Civ_Compare() {
        ArrayList arrayList = new ArrayList();
        int i = Images.boxTitleBORDERWIDTH + CFG.PADDING;
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height = ImageManager.getImage(Images.title1Red).getHeight() + ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i2 = CFG.PADDING;
        int i3 = CFG.PADDING + Images.boxTitleBORDERWIDTH;
        int i4 = CFG.BUTTON_HEIGHT3;
        int i5 = width - (i * 2);
        int i6 = (i5 - CFG.PADDING) / 2;
        int width2 = ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 2);
        int i7 = CFG.PADDING + i + i6;
        int i8 = (i6 - CFG.PADDING) / 2;
        int i9 = i7 + CFG.PADDING + i8;
        int width3 = ImageManager.getImage(Images.compareBig).getWidth() + (CFG.PADDING * 4);
        int i10 = CFG.PADDING;
        int height2 = ImageManager.getImage(Images.flagDiplomacyOver).getHeight() + (i10 * 2);
        int i11 = width / 2;
        int i12 = width3 / 2;
        int width4 = (((i11 - i) - (CFG.PADDING * 2)) - i12) - ImageManager.getImage(Images.flagDiplomacyOver).getWidth();
        int i13 = i10 + i2;
        arrayList.add(new ButtonFlag_Diplomacy(civLeft, ((i11 - i12) - (CFG.PADDING * 2)) - ImageManager.getImage(Images.flagDiplomacyOver).getWidth(), i13, true));
        int i14 = i11 + i12;
        arrayList.add(new ButtonFlag_Diplomacy(civRight, (CFG.PADDING * 2) + i14, i13, true));
        int i15 = civRight;
        arrayList.add(new Text_Static_ID(i15, Game.getCiv(i15).getCivName(), CFG.FONT_REGULAR, -1, i14 + (CFG.PADDING * 2) + ImageManager.getImage(Images.flagDiplomacyOver).getWidth(), i2, width4, height2));
        int i16 = civLeft;
        arrayList.add(new Text_Static_ID(i16, Game.getCiv(i16).getCivName(), CFG.FONT_REGULAR, -1, i, i2, width4, height2));
        arrayList.add(new AnonymousClass1(Images.compareBig, i, i2, i5, height2, width3));
        int height3 = i2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i17 = (int) (i4 * 1.25f);
        int i18 = (i5 - (CFG.PADDING * 3)) / 4;
        arrayList.add(new ButtonIdeology2(Game.getCiv(civLeft).getIdeologyID(), i, height3, i18, i17));
        arrayList.add(new ButtonReligion2(Game.getCiv(civLeft).getReligionID(), CFG.PADDING + i3 + i18, height3, i18, i17));
        arrayList.add(new ButtonReligion2(Game.getCiv(civRight).getReligionID(), i3 + ((CFG.PADDING + i18) * 2), height3, i18, i17));
        arrayList.add(new ButtonIdeology2(Game.getCiv(civRight).getIdeologyID(), i3 + ((CFG.PADDING + i18) * 3), height3, i18, i17));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new Text_Title_v2_TextLR(Game.lang.get("Ranking"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height4, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ""));
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsRectIMG(Game.lang.get("Ranking"), Images.rankGold, i, height5, i6, i4, width2));
        arrayList.add(new ButtonStatsRectIMG_Rank_Ranking("" + Game.getCiv(civLeft).iCivRankPosition, CivilizationRanking.getCivilizationRanking_IMG_STAR_CIVID(civLeft), i7, height5, i8, i4, ImageManager.getImage(Images.rankGold).getWidth()));
        arrayList.add(new ButtonStatsRectIMG_Rank_Ranking("" + Game.getCiv(civRight).iCivRankPosition, CivilizationRanking.getCivilizationRanking_IMG_STAR_CIVID(civRight), i9, height5, i8, i4, ImageManager.getImage(Images.rankGold).getWidth()));
        int height6 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsRectIMG(Game.lang.get("Prestige"), Images.rankSilver, i, height6, i6, i4, width2));
        arrayList.add(new Text_StaticBG_Compare(true, Game.lang.get("Prestige"), Images.rankSilver, "" + CFG.getNumberWithSpaces("" + ((int) Math.ceil(Game.getCiv(civLeft).iCivRankScore))), i7, height6, i8, i4, Game.getCiv(civLeft).iCivRankScore > Game.getCiv(civRight).iCivRankScore));
        arrayList.add(new Text_StaticBG_Compare(false, Game.lang.get("Prestige"), Images.rankSilver, "" + CFG.getNumberWithSpaces("" + ((int) Math.ceil(Game.getCiv(civRight).iCivRankScore))), i9, height6, i8, i4, Game.getCiv(civLeft).iCivRankScore < Game.getCiv(civRight).iCivRankScore));
        int height7 = height6 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new Text_Title_v2_TextLR(Game.lang.get("Provinces"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height7, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ""));
        int height8 = height7 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsRectIMG(Game.lang.get("Provinces"), Images.provinces, i, height8, i6, i4, width2));
        arrayList.add(new Text_StaticBG_Compare(true, Game.lang.get("Provinces"), Images.provinces, "" + CFG.getNumberWithSpaces("" + Game.getCiv(civLeft).getNumOfProvinces()), i7, height8, i8, i4, Game.getCiv(civLeft).getNumOfProvinces() > Game.getCiv(civRight).getNumOfProvinces()));
        arrayList.add(new Text_StaticBG_Compare(false, Game.lang.get("Provinces"), Images.provinces, "" + CFG.getNumberWithSpaces("" + Game.getCiv(civRight).getNumOfProvinces()), i9, height8, i8, i4, Game.getCiv(civLeft).getNumOfProvinces() < Game.getCiv(civRight).getNumOfProvinces()));
        int height9 = height8 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        long populationTotal = Game.getCiv(civLeft).getPopulationTotal();
        long populationTotal2 = Game.getCiv(civRight).getPopulationTotal();
        arrayList.add(new ButtonStatsRectIMG(Game.lang.get("Population"), Images.population, i, height9, i6, i4, width2));
        if (populationTotal > 999999999) {
            arrayList.add(new Text_StaticBG_Compare(true, Game.lang.get("Population"), Images.population, "" + CFG.getShortNumber(populationTotal), i7, height9, i8, i4, populationTotal > populationTotal2));
            arrayList.add(new Text_StaticBG_Compare(false, Game.lang.get("Population"), Images.population, "" + CFG.getShortNumber(populationTotal2), i9, height9, i8, i4, populationTotal < populationTotal2));
        } else {
            arrayList.add(new Text_StaticBG_Compare(true, Game.lang.get("Population"), Images.population, "" + CFG.getNumberWithSpaces("" + populationTotal), i7, height9, i8, i4, populationTotal > populationTotal2));
            arrayList.add(new Text_StaticBG_Compare(false, Game.lang.get("Population"), Images.population, "" + CFG.getNumberWithSpaces("" + populationTotal2), i9, height9, i8, i4, populationTotal < populationTotal2));
        }
        int height10 = height9 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsRectIMG(Game.lang.get("Economy"), Game_Calendar.IMG_ECONOMY, i, height10, i6, i4, width2));
        arrayList.add(new Text_StaticBG_Compare(true, Game.lang.get("Economy"), Game_Calendar.IMG_ECONOMY, "" + CFG.getNumberWithSpaces("" + ((int) Math.ceil(Game.getCiv(civLeft).getEconomyTotal()))), i7, height10, i8, i4, Game.getCiv(civLeft).getEconomyTotal() > Game.getCiv(civRight).getEconomyTotal()));
        arrayList.add(new Text_StaticBG_Compare(false, Game.lang.get("Economy"), Game_Calendar.IMG_ECONOMY, "" + CFG.getNumberWithSpaces("" + ((int) Math.ceil(Game.getCiv(civRight).getEconomyTotal()))), i9, height10, i8, i4, Game.getCiv(civLeft).getEconomyTotal() < Game.getCiv(civRight).getEconomyTotal()));
        int height11 = height10 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsRectIMG(Game.lang.get("Infrastructure"), Images.infrastructure, i, height11, i6, i4, width2));
        arrayList.add(new Text_StaticBG_Compare(true, Game.lang.get("Infrastructure"), Images.infrastructure, "" + CFG.getNumberWithSpaces("" + Game.getCiv(civLeft).getInfrastructure()), i7, height11, i8, i4, Game.getCiv(civLeft).getInfrastructure() > Game.getCiv(civRight).getInfrastructure()));
        arrayList.add(new Text_StaticBG_Compare(false, Game.lang.get("Infrastructure"), Images.infrastructure, "" + CFG.getNumberWithSpaces("" + Game.getCiv(civRight).getInfrastructure()), i9, height11, i8, i4, Game.getCiv(civLeft).getInfrastructure() < Game.getCiv(civRight).getInfrastructure()));
        int height12 = height11 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsRectIMG(Game.lang.get("ConstructedBuildings"), Images.buildings, i, height12, i6, i4, width2));
        arrayList.add(new Text_StaticBG_Compare(true, Game.lang.get("ConstructedBuildings"), Images.buildings, "" + CFG.getNumberWithSpaces("" + Game.getCiv(civLeft).getConstructedBuildings()), i7, height12, i8, i4, Game.getCiv(civLeft).getConstructedBuildings() > Game.getCiv(civRight).getConstructedBuildings()));
        arrayList.add(new Text_StaticBG_Compare(false, Game.lang.get("ConstructedBuildings"), Images.buildings, "" + CFG.getNumberWithSpaces("" + Game.getCiv(civRight).getConstructedBuildings()), i9, height12, i8, i4, Game.getCiv(civLeft).getConstructedBuildings() < Game.getCiv(civRight).getConstructedBuildings()));
        int height13 = height12 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass2(ResourcesManager.getLargestGoodsProducedByCiv(civLeft), i3, height13, i6, i17));
        arrayList.add(new AnonymousClass3(ResourcesManager.getLargestGoodsProducedByCiv(civRight), i3 + CFG.PADDING + i6, height13, i6, i17));
        int height14 = height13 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new Text_Title_v2_TextLR(Game.lang.get("Civilization"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height14, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ""));
        int height15 = height14 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsRectIMG(Game.lang.get("UnlockedTechnologies"), Game_Calendar.IMG_TECHNOLOGY, i, height15, i6, i4, width2));
        arrayList.add(new Text_StaticBG_Compare(true, Game.lang.get("UnlockedTechnologies"), Game_Calendar.IMG_TECHNOLOGY, "" + CFG.getNumberWithSpaces("" + Game.getCiv(civLeft).getResearchedTechnologies()), i7, height15, i8, i4, Game.getCiv(civLeft).getResearchedTechnologies() > Game.getCiv(civRight).getResearchedTechnologies()));
        arrayList.add(new Text_StaticBG_Compare(false, Game.lang.get("UnlockedTechnologies"), Game_Calendar.IMG_TECHNOLOGY, "" + CFG.getNumberWithSpaces("" + Game.getCiv(civRight).getResearchedTechnologies()), i9, height15, i8, i4, Game.getCiv(civLeft).getResearchedTechnologies() < Game.getCiv(civRight).getResearchedTechnologies()));
        int height16 = height15 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsRectIMG(Game.lang.get("UnlockedLegacy"), Images.legacy, i, height16, i6, i4, width2));
        arrayList.add(new Text_StaticBG_Compare(true, Game.lang.get("UnlockedLegacy"), Images.legacy, "" + CFG.getNumberWithSpaces("" + Game.getCiv(civLeft).getLegaciesUnlocked()), i7, height16, i8, i4, Game.getCiv(civLeft).getLegaciesUnlocked() > Game.getCiv(civRight).getLegaciesUnlocked()));
        arrayList.add(new Text_StaticBG_Compare(false, Game.lang.get("UnlockedLegacy"), Images.legacy, "" + CFG.getNumberWithSpaces("" + Game.getCiv(civRight).getLegaciesUnlocked()), i9, height16, i8, i4, Game.getCiv(civLeft).getLegaciesUnlocked() < Game.getCiv(civRight).getLegaciesUnlocked()));
        int height17 = height16 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsRectIMG(Game.lang.get("CivilizationAdvantages"), Images.advantages, i, height17, i6, i4, width2));
        arrayList.add(new Text_StaticBG_Compare(true, Game.lang.get("CivilizationAdvantages"), Images.advantages, "" + CFG.getNumberWithSpaces("" + Game.getCiv(civLeft).iAdvantagesSize), i7, height17, i8, i4, Game.getCiv(civLeft).iAdvantagesSize > Game.getCiv(civRight).iAdvantagesSize));
        arrayList.add(new Text_StaticBG_Compare(false, Game.lang.get("CivilizationAdvantages"), Images.advantages, "" + CFG.getNumberWithSpaces("" + Game.getCiv(civRight).iAdvantagesSize), i9, height17, i8, i4, Game.getCiv(civLeft).iAdvantagesSize < Game.getCiv(civRight).iAdvantagesSize));
        int height18 = height17 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsRectIMG(Game_Ages.getVassals(), Images.vassal, i, height18, i6, i4, width2));
        arrayList.add(new Text_StaticBG_Compare(true, Game.lang.get(Game_Ages.getVassals()), Images.vassal, "" + CFG.getNumberWithSpaces("" + Game.getCiv(civLeft).diplomacy.iVassalsSize), i7, height18, i8, i4, Game.getCiv(civLeft).diplomacy.iVassalsSize > Game.getCiv(civRight).diplomacy.iVassalsSize));
        arrayList.add(new Text_StaticBG_Compare(false, Game.lang.get(Game_Ages.getVassals()), Images.vassal, "" + CFG.getNumberWithSpaces("" + Game.getCiv(civRight).diplomacy.iVassalsSize), i9, height18, i8, i4, Game.getCiv(civLeft).diplomacy.iVassalsSize < Game.getCiv(civRight).diplomacy.iVassalsSize));
        int height19 = height18 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new Text_Title_v2_TextLR(Game.lang.get("Military"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height19, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ""));
        int height20 = height19 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsRectIMG(Game.lang.get("MaximumManpower"), Game_Calendar.IMG_MANPOWER, i, height20, i6, i4, width2));
        arrayList.add(new Text_StaticBG_Compare(true, Game.lang.get("MaximumManpower"), Game_Calendar.IMG_MANPOWER, "" + CFG.getNumberWithSpaces("" + ((int) Game.getCiv(civLeft).fManpowerMax)), i7, height20, i8, i4, Game.getCiv(civLeft).fManpowerMax > Game.getCiv(civRight).fManpowerMax));
        arrayList.add(new Text_StaticBG_Compare(false, Game.lang.get("MaximumManpower"), Game_Calendar.IMG_MANPOWER, "" + CFG.getNumberWithSpaces("" + ((int) Game.getCiv(civRight).fManpowerMax)), i9, height20, i8, i4, Game.getCiv(civLeft).fManpowerMax < Game.getCiv(civRight).fManpowerMax));
        int height21 = height20 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsRectIMG(Game.lang.get("RegimentsLimit"), Images.regimentsLimit, i, height21, i6, i4, width2));
        arrayList.add(new Text_StaticBG_Compare(true, Game.lang.get("RegimentsLimit"), Images.regimentsLimit, "" + CFG.getNumberWithSpaces("" + Game.getCiv(civLeft).iRegimentsLimit), i7, height21, i8, i4, Game.getCiv(civLeft).iRegimentsLimit > Game.getCiv(civRight).iRegimentsLimit));
        arrayList.add(new Text_StaticBG_Compare(false, Game.lang.get("RegimentsLimit"), Images.regimentsLimit, "" + CFG.getNumberWithSpaces("" + Game.getCiv(civRight).iRegimentsLimit), i9, height21, i8, i4, Game.getCiv(civLeft).iRegimentsLimit < Game.getCiv(civRight).iRegimentsLimit));
        int height22 = height21 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsRectIMG(Game.lang.get("Discipline"), Images.discipline, i, height22, i6, i4, width2));
        arrayList.add(new Text_StaticBG_Compare(true, Game.lang.get("Discipline"), Images.discipline, "" + ((int) (Game.getCiv(civLeft).civBonuses.Discipline * 100.0f)) + "%", i7, height22, i8, i4, Game.getCiv(civLeft).civBonuses.Discipline > Game.getCiv(civRight).civBonuses.Discipline));
        arrayList.add(new Text_StaticBG_Compare(false, Game.lang.get("Discipline"), Images.discipline, "" + ((int) (Game.getCiv(civRight).civBonuses.Discipline * 100.0f)) + "%", i9, height22, i8, i4, Game.getCiv(civLeft).civBonuses.Discipline < Game.getCiv(civRight).civBonuses.Discipline));
        int height23 = height22 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsRectIMG(Game.lang.get("BattleWidth"), Images.battleWidth, i, height23, i6, i4, width2));
        arrayList.add(new Text_StaticBG_Compare(true, Game.lang.get("BattleWidth"), Images.battleWidth, "" + CFG.getNumberWithSpaces("" + BattleManager.getBattleWidth(civLeft)), i7, height23, i8, i4, BattleManager.getBattleWidth(civLeft) > BattleManager.getBattleWidth(civRight)));
        arrayList.add(new Text_StaticBG_Compare(false, Game.lang.get("BattleWidth"), Images.battleWidth, "" + CFG.getNumberWithSpaces("" + BattleManager.getBattleWidth(civRight)), i9, height23, i8, i4, BattleManager.getBattleWidth(civLeft) < BattleManager.getBattleWidth(civRight)));
        int height24 = height23 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsRectIMG(Game.lang.get("AggressiveExpansion"), Images.aggressiveExpansion, i, height24, i6, i4, width2));
        arrayList.add(new Text_StaticBG_Compare(true, Game.lang.get("AggressiveExpansion"), Images.aggressiveExpansion, "" + ((int) Game.getCiv(civLeft).getAggressiveExpansion()), i7, height24, i8, i4, Game.getCiv(civLeft).getAggressiveExpansion() < Game.getCiv(civRight).getAggressiveExpansion()));
        arrayList.add(new Text_StaticBG_Compare(false, Game.lang.get("AggressiveExpansion"), Images.aggressiveExpansion, "" + ((int) Game.getCiv(civRight).getAggressiveExpansion()), i9, height24, i8, i4, Game.getCiv(civLeft).getAggressiveExpansion() > Game.getCiv(civRight).getAggressiveExpansion()));
        int height25 = height24 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        LanguageManager languageManager = Game.lang;
        String str = ALZmnpZHj.zLzUpKCsKEdM;
        arrayList.add(new ButtonStatsRectIMG(languageManager.get(str), Images.weariness, i, height25, i6, i4, width2));
        arrayList.add(new Text_StaticBG_Compare(true, Game.lang.get(str), Images.weariness, "" + ((int) Game.getCiv(civLeft).getWarWeariness()), i7, height25, i8, i4, Game.getCiv(civLeft).getWarWeariness() < Game.getCiv(civRight).getWarWeariness()));
        arrayList.add(new Text_StaticBG_Compare(false, Game.lang.get(str), Images.weariness, "" + ((int) Game.getCiv(civRight).getWarWeariness()), i9, height25, i8, i4, Game.getCiv(civLeft).getWarWeariness() > Game.getCiv(civRight).getWarWeariness()));
        int height26 = height25 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new Text_Title_v2_TextLR(Game.lang.get("Capital"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height26, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ""));
        int height27 = height26 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass4(Game.getCiv(civLeft).getCapitalProvinceID() >= 0 ? Game.getProvince(Game.getCiv(civLeft).getCapitalProvinceID()).getProvinceName() : "", Images.capital, i, height27, i6, i4, width2));
        arrayList.add(new AnonymousClass5(Game.getCiv(civRight).getCapitalProvinceID() >= 0 ? Game.getProvince(Game.getCiv(civRight).getCapitalProvinceID()).getProvinceName() : "", Images.capital, i + i6 + CFG.PADDING, height27, i6, i4, width2));
        int height28 = height27 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsRectIMG(Game.lang.get("CapitalCity"), Images.capital, i, height28, i6, i4, width2));
        arrayList.add(new Text_StaticBG_Compare(true, Game.lang.get("CapitalCity"), Images.capital, "" + CFG.getNumberWithSpaces("" + Game.getCiv(civLeft).getCapitalLevel()), i7, height28, i8, i4, Game.getCiv(civLeft).getCapitalLevel() > Game.getCiv(civRight).getCapitalLevel()));
        arrayList.add(new Text_StaticBG_Compare(false, Game.lang.get("CapitalCity"), Images.capital, "" + CFG.getNumberWithSpaces("" + Game.getCiv(civRight).getCapitalLevel()), i9, height28, i8, i4, Game.getCiv(civLeft).getCapitalLevel() < Game.getCiv(civRight).getCapitalLevel()));
        int height29 = height28 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsRectIMG(Game.lang.get("MilitaryAcademy"), Game_Calendar.IMG_MANPOWER, i, height29, i6, i4, width2));
        arrayList.add(new Text_StaticBG_Compare(true, Game.lang.get("MilitaryAcademy"), Game_Calendar.IMG_MANPOWER, "" + CFG.getNumberWithSpaces("" + Game.getCiv(civLeft).getMilitaryAcademyLevel()), i7, height29, i8, i4, Game.getCiv(civLeft).getMilitaryAcademyLevel() > Game.getCiv(civRight).getMilitaryAcademyLevel()));
        arrayList.add(new Text_StaticBG_Compare(false, Game.lang.get("MilitaryAcademy"), Game_Calendar.IMG_MANPOWER, "" + CFG.getNumberWithSpaces("" + Game.getCiv(civRight).getMilitaryAcademyLevel()), i9, height29, i8, i4, Game.getCiv(civLeft).getMilitaryAcademyLevel() < Game.getCiv(civRight).getMilitaryAcademyLevel()));
        int height30 = height29 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsRectIMG(Game.lang.get("MilitaryAcademyForGenerals"), Images.general, i, height30, i6, i4, width2));
        arrayList.add(new Text_StaticBG_Compare(true, Game.lang.get("MilitaryAcademyForGenerals"), Images.general, "" + CFG.getNumberWithSpaces("" + Game.getCiv(civLeft).getMilitaryAcademyForGeneralsLevel()), i7, height30, i8, i4, Game.getCiv(civLeft).getMilitaryAcademyForGeneralsLevel() > Game.getCiv(civRight).getMilitaryAcademyForGeneralsLevel()));
        arrayList.add(new Text_StaticBG_Compare(false, Game.lang.get("MilitaryAcademyForGenerals"), Images.general, "" + CFG.getNumberWithSpaces("" + Game.getCiv(civRight).getMilitaryAcademyForGeneralsLevel()), i9, height30, i8, i4, Game.getCiv(civLeft).getMilitaryAcademyForGeneralsLevel() < Game.getCiv(civRight).getMilitaryAcademyForGeneralsLevel()));
        int height31 = height30 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsRectIMG(Game.lang.get("SupremeCourt"), Images.stability, i, height31, i6, i4, width2));
        arrayList.add(new Text_StaticBG_Compare(true, Game.lang.get("SupremeCourt"), Images.stability, "" + CFG.getNumberWithSpaces("" + Game.getCiv(civLeft).getSupremeCourtLevel()), i7, height31, i8, i4, Game.getCiv(civLeft).getSupremeCourtLevel() > Game.getCiv(civRight).getSupremeCourtLevel()));
        arrayList.add(new Text_StaticBG_Compare(false, Game.lang.get("SupremeCourt"), Images.stability, "" + CFG.getNumberWithSpaces("" + Game.getCiv(civRight).getSupremeCourtLevel()), i9, height31, i8, i4, Game.getCiv(civLeft).getSupremeCourtLevel() < Game.getCiv(civRight).getSupremeCourtLevel()));
        int height32 = height31 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        if (Game.getCiv(civLeft).canBuildNuke || Game.getCiv(civRight).canBuildNuke) {
            arrayList.add(new ButtonStatsRectIMG(Game.lang.get("NuclearReactor"), Images.nuke, i, height32, i6, i4, width2));
            arrayList.add(new Text_StaticBG_Compare(true, Game.lang.get("NuclearReactor"), Images.nuke, "" + CFG.getNumberWithSpaces("" + Game.getCiv(civLeft).getNuclearReactorLevel()), i7, height32, i8, i4, Game.getCiv(civLeft).getNuclearReactorLevel() > Game.getCiv(civRight).getNuclearReactorLevel()));
            arrayList.add(new Text_StaticBG_Compare(false, Game.lang.get("NuclearReactor"), Images.nuke, "" + CFG.getNumberWithSpaces("" + Game.getCiv(civRight).getNuclearReactorLevel()), i9, height32, i8, i4, Game.getCiv(civLeft).getNuclearReactorLevel() < Game.getCiv(civRight).getNuclearReactorLevel()));
            height32 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        int iMin = Math.min(height32, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, 0, width, Math.max(height32, iMin)));
        initMenu(new AnonymousClass6(Game.lang.get("CompareCivilizations"), Game.getCiv(civLeft).getCivName() + " - " + Game.getCiv(civRight).getCivName(), false, false, Images.title500), otherMenuPosX_2, height, width, iMin, arrayList, false, true);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void actionCloseMenu() {
        super.actionCloseMenu();
        InGame_Civ.actionOnClose();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop500, Images.insideBot500);
        ImageManager.getImage(Images.civInfoOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.civInfoOver).getWidth() / 2)) + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.civInfoOver).getHeight()));
        super.draw(spriteBatch, i3, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        long j = CFG.currentTimeMillis;
        lTime = j;
        lTime2 = j;
    }
}
