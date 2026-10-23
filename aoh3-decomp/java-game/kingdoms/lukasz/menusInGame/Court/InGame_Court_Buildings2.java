package aoc.kingdoms.lukasz.menusInGame.Court;

import androidx.lifecycle.livedata.core.jzw.jkEBdieJhbh;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.LanguageManager;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.jakowski.zOther.Point_XY;
import aoc.kingdoms.lukasz.map.BuildingsManager;
import aoc.kingdoms.lukasz.map.civilization.Civilization;
import aoc.kingdoms.lukasz.map.civilization.stats.LQy.lJxd;
import aoc.kingdoms.lukasz.map.plague.KMTV.fTNtCctcBZcqKK;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonBuilding;
import aoc.kingdoms.lukasz.menu_element.button.ButtonBuilding_Special;
import aoc.kingdoms.lukasz.menu_element.button.ButtonCurrentSituation;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_SpecialEmpty;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2Center;
import aoc.kingdoms.lukasz.menusInGame.Technology.InGame_TechnologyTree;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Court_Buildings2 extends Menu {
    public static boolean SHOW_BONUSES = true;
    public static int modeID = -1;
    public static Point_XY oBuildingID;
    public static int saveMenuPos_X;
    public static int saveMenuPos_Y;
    public static int savePos_X;
    public static int savePos_Y;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Buildings2$1, reason: invalid class name */
    class AnonymousClass1 extends Text_Title_Diplomacy {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, boolean z) {
            super(str, i, i2, i3, i4, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_Buildings2.modeID != -1) {
                InGame_Court_Buildings2.modeID = -1;
                Game.menuManager.rebuildInGame_Buildings2SavePos();
                Game.menuManager.setVisibleInGame_Court(true);
                InGame_Court.lTime = 0L;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.buildings, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return Game.soundsManager.getTab();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Buildings2$10, reason: invalid class name */
    class AnonymousClass10 extends ButtonBuilding_Special {
        AnonymousClass10(boolean z, int i, int i2, int i3, int i4, int i5, boolean z2, boolean z3, String str) {
            super(z, i, i2, i3, i4, i5, z2, z3, str);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.gameActiveProvince.resetLastActiveProvince();
            Game.setActiveProvinceID(-1);
            Game.menuManager.setVisibleInGame_ProvinceInfo(false);
            InGame_Court_Buildings2.oBuildingID = new Point_XY(getValue1(), getValue2());
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_BUILDING);
            Game.menuManager.savePosInGame_Buildings2();
            Game.menuManager.rebuildInGame_Build();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Buildings2$11, reason: invalid class name */
    class AnonymousClass11 extends Text_Title {
        AnonymousClass11(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Buildings2$12, reason: invalid class name */
    class AnonymousClass12 extends ButtonBuilding_Special {
        AnonymousClass12(boolean z, int i, int i2, int i3, int i4, int i5, boolean z2, boolean z3, String str) {
            super(z, i, i2, i3, i4, i5, z2, z3, str);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_TechnologyTree()) {
                Game.menuManager.setVisibleInGame_TechnologyTree(false);
                return;
            }
            Game.menuManager.setVisibleInGame_TechnologyChoose(false);
            InGame_TechnologyTree.centerToTechID = BuildingsManager.buildings.get(getValue1()).RequiredTechID[getValue2()];
            Game.menuManager.rebuildInGame_TechnologyTree(false, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Buildings2$13, reason: invalid class name */
    class AnonymousClass13 extends Text_Title {
        AnonymousClass13(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Buildings2$14, reason: invalid class name */
    class AnonymousClass14 extends ButtonBuilding_Special {
        AnonymousClass14(boolean z, int i, int i2, int i3, int i4, int i5, boolean z2, boolean z3, String str) {
            super(z, i, i2, i3, i4, i5, z2, z3, str);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_TechnologyTree()) {
                Game.menuManager.setVisibleInGame_TechnologyTree(false);
                return;
            }
            Game.menuManager.setVisibleInGame_TechnologyChoose(false);
            InGame_TechnologyTree.centerToTechID = BuildingsManager.buildings.get(getValue1()).RequiredTechID[getValue2()];
            Game.menuManager.rebuildInGame_TechnologyTree(false, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Buildings2$2, reason: invalid class name */
    class AnonymousClass2 extends Text_Title_Diplomacy {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, boolean z) {
            super(str, i, i2, i3, i4, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_Buildings2.modeID != 0) {
                InGame_Court_Buildings2.modeID = 0;
                Game.menuManager.rebuildInGame_Buildings2SavePos();
                Game.menuManager.setVisibleInGame_Court(true);
                InGame_Court.lTime = 0L;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.capital, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return Game.soundsManager.getTab();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Buildings2$3, reason: invalid class name */
    class AnonymousClass3 extends Text_Title_Diplomacy {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, boolean z) {
            super(str, i, i2, i3, i4, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_Buildings2.modeID != 1) {
                InGame_Court_Buildings2.modeID = 1;
                Game.menuManager.rebuildInGame_Buildings2SavePos();
                Game.menuManager.setVisibleInGame_Court(true);
                InGame_Court.lTime = 0L;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return Game.soundsManager.getTab();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Buildings2$4, reason: invalid class name */
    class AnonymousClass4 extends Text_Title_Diplomacy {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, boolean z) {
            super(str, i, i2, i3, i4, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_Buildings2.modeID != 2) {
                InGame_Court_Buildings2.modeID = 2;
                Game.menuManager.rebuildInGame_Buildings2SavePos();
                Game.menuManager.setVisibleInGame_Court(true);
                InGame_Court.lTime = 0L;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_ECONOMY, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return Game.soundsManager.getTab();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Buildings2$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonCurrentSituation {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("BuildingsConstructed") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(getText(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.buildings, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Buildings2$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonCurrentSituation {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Court_Buildings2.SHOW_BONUSES = !InGame_Court_Buildings2.SHOW_BONUSES;
            Game.menuManager.rebuildInGame_Buildings2SavePos();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Bonuses"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.information, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.getClickSound_CivOptions();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Buildings2$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonBuilding_Special {
        AnonymousClass7(boolean z, int i, int i2, int i3, int i4, int i5, boolean z2, boolean z3, String str) {
            super(z, i, i2, i3, i4, i5, z2, z3, str);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.gameActiveProvince.resetLastActiveProvince();
            Game.setActiveProvinceID(-1);
            Game.menuManager.setVisibleInGame_ProvinceInfo(false);
            InGame_Court_Buildings2.oBuildingID = new Point_XY(getValue1(), getValue2());
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_BUILDING);
            Game.menuManager.savePosInGame_Buildings2();
            Game.menuManager.rebuildInGame_Build();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Buildings2$8, reason: invalid class name */
    class AnonymousClass8 extends ButtonBuilding_Special {
        AnonymousClass8(boolean z, int i, int i2, int i3, int i4, int i5, boolean z2, boolean z3, String str) {
            super(z, i, i2, i3, i4, i5, z2, z3, str);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.gameActiveProvince.resetLastActiveProvince();
            Game.setActiveProvinceID(-1);
            Game.menuManager.setVisibleInGame_ProvinceInfo(false);
            InGame_Court_Buildings2.oBuildingID = new Point_XY(getValue1(), getValue2());
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_BUILDING);
            Game.menuManager.savePosInGame_Buildings2();
            Game.menuManager.rebuildInGame_Build();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Buildings2$9, reason: invalid class name */
    class AnonymousClass9 extends Text_Title {
        AnonymousClass9(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:148:0x05ce  */
    /* JADX WARN: Code duplicated, block: B:194:0x0787  */
    /* JADX WARN: Code duplicated, block: B:206:0x07f0  */
    /* JADX WARN: Code duplicated, block: B:269:0x0abd  */
    /* JADX WARN: Code duplicated, block: B:275:0x0409 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:47:0x0247  */
    /* JADX WARN: Code duplicated, block: B:50:0x0257  */
    /* JADX WARN: Code duplicated, block: B:91:0x03ac  */
    /* JADX WARN: Code duplicated, block: B:97:0x03dc  */
    public InGame_Court_Buildings2() {
        int i;
        String str;
        int i2;
        String str2;
        Civilization civilization;
        String str3;
        int i3;
        int i4;
        String str4;
        Civilization civilization2;
        boolean z;
        int i5;
        int i6;
        String str5;
        Civilization civilization3;
        int i7;
        Civilization civilization4;
        String str6;
        Civilization civilization5;
        String str7;
        String str8;
        String str9;
        String str10;
        String str11;
        int i8;
        int i9;
        String str12;
        int i10;
        int i11;
        Civilization civilization6;
        ArrayList arrayList = new ArrayList();
        int i12 = Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2);
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int otherMenuPosX = InGame_CourtOptions2.getOtherMenuPosX();
        int height = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i13 = CFG.PADDING;
        int i14 = Images.boxTitleBORDERWIDTH;
        int i15 = width - (i12 * 2);
        int i16 = CFG.PADDING;
        int i17 = CFG.PADDING;
        oBuildingID = null;
        int i18 = (i15 - CFG.PADDING) / 2;
        Civilization civ = Game.getCiv(Game.player.iCivID);
        int i19 = 0;
        for (int i20 = 0; i20 < civ.getNumOfProvinces(); i20++) {
            i19 += Game.getProvince(civ.getProvinceID(i20)).iBuildingsSize;
        }
        int i21 = (width - (Images.boxTitleBORDERWIDTH * 2)) / 4;
        arrayList.add(new AnonymousClass1(Game.lang.get(jkEBdieJhbh.XgQ), Images.boxTitleBORDERWIDTH, 0, i21, CFG.BUTTON_HEIGHT4, modeID == -1));
        LanguageManager languageManager = Game.lang;
        String str13 = lJxd.jEUYCu;
        arrayList.add(new AnonymousClass2(languageManager.get(str13), Images.boxTitleBORDERWIDTH + i21, 0, i21, CFG.BUTTON_HEIGHT4, modeID == 0));
        arrayList.add(new AnonymousClass3(Game.lang.get("Military"), Images.boxTitleBORDERWIDTH + (i21 * 2), 0, i21, CFG.BUTTON_HEIGHT4, modeID == 1));
        arrayList.add(new AnonymousClass4(Game.lang.get("Economy"), Images.boxTitleBORDERWIDTH + (i21 * 3), 0, i21, CFG.BUTTON_HEIGHT4, modeID == 2));
        int height2 = arrayList.get(arrayList.size() - 1).getHeight() + i13 + 0;
        String str14 = "Economy";
        String str15 = "";
        int i22 = -1;
        String str16 = str13;
        Civilization civilization7 = civ;
        int i23 = i15;
        arrayList.add(new AnonymousClass5("" + CFG.getNumberWithSpaces("" + i19), Images.buildings, i12, height2, i18, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.council).getWidth() + (CFG.PADDING * 4), true));
        arrayList.add(new AnonymousClass6(Game.lang.get("Bonuses"), SHOW_BONUSES ? Images.v : Images.x, CFG.PADDING + i12 + i18, height2, i18, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.council).getWidth() + (CFG.PADDING * 4), true));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i24 = modeID;
        int i25 = i24 == -1 ? 0 : i24;
        while (true) {
            i = modeID;
            str = "None";
            if (i25 >= (i == i22 ? 3 : i + 1)) {
                break;
            }
            if (i25 == 0) {
                str8 = str16;
                str11 = Game.lang.get(str8);
            } else {
                str8 = str16;
                if (i25 == 1) {
                    str11 = Game.lang.get("Military");
                } else {
                    str9 = str14;
                    str10 = Game.lang.get(str9);
                }
                String str17 = str9;
                String str18 = str8;
                arrayList.add(new Text_Title_v2Center(str10, -1, Images.boxTitleBORDERWIDTH, height3, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + i13;
                i8 = 0;
                i9 = 0;
                while (i9 < BuildingsManager.buildingsSize) {
                    int i26 = i8;
                    i11 = 0;
                    while (i11 < BuildingsManager.buildingSize.get(i9).intValue()) {
                        if (BuildingsManager.buildings.get(i9).GroupID == i25 || BuildingsManager.buildings.get(i9).UniqueCapitalBuilding) {
                            civilization6 = civilization7;
                        } else {
                            Civilization civilization8 = civilization7;
                            if (!civilization8.isBuildingResearched(i9, i11) || ((BuildingsManager.buildings.get(i9).RequiredGovernmentID >= 0 && BuildingsManager.buildings.get(i9).RequiredGovernmentID != civilization8.getIdeologyID()) || (BuildingsManager.buildings.get(i9).RequiredReligionID >= 0 && BuildingsManager.buildings.get(i9).RequiredReligionID != civilization8.getReligionID()))) {
                                civilization6 = civilization8;
                            } else {
                                int i27 = i26 + 1;
                                int i28 = 0;
                                int i29 = 0;
                                for (int i30 = 0; i30 < civilization8.getNumOfProvinces(); i30++) {
                                    if (!BuildingsManager.buildings.get(i9).SeaAccessRequired || Game.getProvince(civilization8.getProvinceID(i30)).getLevelOfPort() >= 0) {
                                        i28 = Game.getProvince(civilization8.getProvinceID(i30)).buildingBuilt(i9, i11) ? i28 + 1 : i28;
                                        i29++;
                                    }
                                }
                                String str19 = str15;
                                str15 = str19;
                                civilization6 = civilization8;
                                int i31 = i11;
                                str = str;
                                int i32 = i9;
                                arrayList.add(new AnonymousClass7(true, i9, i11, i12, height3, i23, true, true, str19 + i28 + " / " + i29));
                                int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + i13;
                                if (SHOW_BONUSES) {
                                    i11 = i31;
                                    i9 = i32;
                                    List<MenuElement> buildingBonuses = ButtonBuilding.getBuildingBonuses(i9, i11, CFG.PADDING + i12, width);
                                    if (!buildingBonuses.isEmpty()) {
                                        for (int i33 = 0; i33 < buildingBonuses.size(); i33++) {
                                            buildingBonuses.get(i33).setPosY(height4);
                                            arrayList.add(buildingBonuses.get(i33));
                                            height4 += arrayList.get(arrayList.size() - 1).getHeight() + i13;
                                        }
                                        int i34 = height4 - height3;
                                        i23 = i23;
                                        arrayList.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(i12, height4 - i34, i23, i34));
                                        height3 = height4 + CFG.PADDING;
                                    }
                                    i26 = i27;
                                } else {
                                    i11 = i31;
                                    i9 = i32;
                                }
                                height3 = height4;
                                i26 = i27;
                            }
                            i11++;
                            i23 = i23;
                            str15 = str15;
                            civilization7 = civilization6;
                            str = str;
                            i9 = i9;
                        }
                        i23 = i23;
                        i11++;
                        i23 = i23;
                        str15 = str15;
                        civilization7 = civilization6;
                        str = str;
                        i9 = i9;
                    }
                    i8 = i26;
                    i9++;
                }
                str12 = str;
                String str20 = str15;
                Civilization civilization9 = civilization7;
                i10 = i23;
                if (i8 == 0) {
                    arrayList.add(new Text_StaticBG(Game.lang.get(str12), CFG.FONT_REGULAR, -1, i12, height3, i10, CFG.BUTTON_HEIGHT2));
                    height3 += arrayList.get(arrayList.size() - 1).getHeight() + i13;
                }
                i25++;
                i23 = i10;
                str14 = str17;
                str16 = str18;
                str15 = str20;
                civilization7 = civilization9;
                i22 = -1;
            }
            str10 = str11;
            str9 = str14;
            String str110 = str9;
            String str111 = str8;
            arrayList.add(new Text_Title_v2Center(str10, -1, Images.boxTitleBORDERWIDTH, height3, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
            height3 += arrayList.get(arrayList.size() - 1).getHeight() + i13;
            i8 = 0;
            i9 = 0;
            while (i9 < BuildingsManager.buildingsSize) {
                int i210 = i8;
                i11 = 0;
                while (i11 < BuildingsManager.buildingSize.get(i9).intValue()) {
                    if (BuildingsManager.buildings.get(i9).GroupID == i25) {
                        civilization6 = civilization7;
                        i23 = i23;
                    } else {
                        civilization6 = civilization7;
                        i23 = i23;
                    }
                    i11++;
                    i23 = i23;
                    str15 = str15;
                    civilization7 = civilization6;
                    str = str;
                    i9 = i9;
                }
                i8 = i210;
                i9++;
            }
            str12 = str;
            String str21 = str15;
            Civilization civilization10 = civilization7;
            i10 = i23;
            if (i8 == 0) {
                arrayList.add(new Text_StaticBG(Game.lang.get(str12), CFG.FONT_REGULAR, -1, i12, height3, i10, CFG.BUTTON_HEIGHT2));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + i13;
            }
            i25++;
            i23 = i10;
            str14 = str110;
            str16 = str111;
            str15 = str21;
            civilization7 = civilization10;
            i22 = -1;
        }
        String str22 = str15;
        Civilization civilization11 = civilization7;
        int i35 = i23;
        String str23 = "Resources";
        if (i != -1) {
            i2 = 2;
            if (i != 2) {
                str23 = "Resources";
                str3 = "None";
                str2 = str22;
                civilization = civilization11;
            }
            if (GameValues.inGame.SHOW_TO_BE_RESEARCHED_BUILDINGS_SIDEBAR || modeID != -1) {
                i7 = width;
            } else {
                LanguageManager languageManager2 = Game.lang;
                String str24 = fTNtCctcBZcqKK.mguAZqbpI;
                i7 = width;
                arrayList.add(new AnonymousClass11(languageManager2.get(str24), -1, Images.boxTitleBORDERWIDTH, height3, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
                int height5 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + i13;
                int i36 = 0;
                int i37 = 3;
                int i38 = 0;
                while (i38 < i37) {
                    int i39 = i36;
                    int i40 = 0;
                    while (i40 < BuildingsManager.buildingsSize) {
                        int i41 = 0;
                        while (i41 < BuildingsManager.buildingSize.get(i40).intValue()) {
                            if (BuildingsManager.buildings.get(i40).GroupID != i38 || BuildingsManager.buildings.get(i40).UniqueCapitalBuilding) {
                                civilization5 = civilization;
                            } else {
                                Civilization civilization12 = civilization;
                                if (civilization12.isBuildingResearched(i40, i41)) {
                                    civilization5 = civilization12;
                                } else {
                                    int i42 = i39 + 1;
                                    int i43 = 0;
                                    int i44 = 0;
                                    for (int i45 = 0; i45 < civilization12.getNumOfProvinces(); i45++) {
                                        if (Game.getProvince(civilization12.getProvinceID(i45)).buildingBuilt(i40, i41)) {
                                            i43++;
                                        }
                                        i44++;
                                    }
                                    i38 = i38;
                                    String str25 = str2;
                                    civilization5 = civilization12;
                                    i41 = i41;
                                    i40 = i40;
                                    i37 = i37;
                                    str7 = str25;
                                    arrayList.add(new AnonymousClass12(true, i40, i41, i12, height5, i35, true, false, str25 + i43 + " / " + i44));
                                    height5 += arrayList.get(arrayList.size() - 1).getHeight() + i13;
                                    i39 = i42;
                                }
                                i41++;
                                i38 = i38;
                                i40 = i40;
                                i37 = i37;
                                civilization = civilization5;
                                str2 = str7;
                            }
                            str7 = str2;
                            i41++;
                            i38 = i38;
                            i40 = i40;
                            i37 = i37;
                            civilization = civilization5;
                            str2 = str7;
                        }
                        i40++;
                    }
                    i38++;
                    i36 = i39;
                }
                Civilization civilization13 = civilization;
                String str26 = str2;
                if (i36 == 0) {
                    arrayList.add(new Text_StaticBG(Game.lang.get(str3), CFG.FONT_REGULAR, -1, i12, height5, i35, CFG.BUTTON_HEIGHT2));
                    height5 += arrayList.get(arrayList.size() - 1).getHeight() + i13;
                }
                arrayList.add(new AnonymousClass13(Game.lang.get(str24) + ": " + Game.lang.get(str23), -1, Images.boxTitleBORDERWIDTH, height5, i7 - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
                height3 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + i13;
                int i46 = 0;
                for (int i47 = BuildingsManager.buildingsResourceStartID; i47 < BuildingsManager.buildingsResourceSize; i47++) {
                    int i48 = 0;
                    while (i48 < BuildingsManager.buildingSize.get(i47).intValue()) {
                        if (BuildingsManager.buildings.get(i47).RequiredResource < 0 || BuildingsManager.buildings.get(i47).UniqueCapitalBuilding) {
                            civilization4 = civilization13;
                        } else {
                            Civilization civilization14 = civilization13;
                            if (civilization14.isBuildingResearched(i47, i48)) {
                                civilization4 = civilization14;
                            } else {
                                int i49 = i46 + 1;
                                int i50 = 0;
                                int i51 = 0;
                                for (int i52 = 0; i52 < civilization14.getNumOfProvinces(); i52++) {
                                    i50 = Game.getProvince(civilization14.getProvinceID(i52)).buildingBuilt(i47, i48) ? i50 + 1 : i50;
                                    if (Game.getProvince(civilization14.getProvinceID(i52)).getResourceID() == BuildingsManager.buildings.get(i47).RequiredResource) {
                                        i51++;
                                    }
                                }
                                String str27 = str26;
                                str6 = str27;
                                civilization4 = civilization14;
                                i48 = i48;
                                arrayList.add(new AnonymousClass14(true, i47, i48, i12, height3, i35, true, false, str27 + i50 + " / " + i51));
                                height3 += arrayList.get(arrayList.size() - 1).getHeight() + i13;
                                i46 = i49;
                            }
                            i48++;
                            str26 = str6;
                            civilization13 = civilization4;
                        }
                        str6 = str26;
                        i48++;
                        str26 = str6;
                        civilization13 = civilization4;
                    }
                }
                if (i46 == 0) {
                    arrayList.add(new Text_StaticBG(Game.lang.get(str3), CFG.FONT_REGULAR, -1, i12, height3, i35, CFG.BUTTON_HEIGHT2));
                    height3 += arrayList.get(arrayList.size() - 1).getHeight() + i13;
                }
            }
            int i53 = height3;
            int i54 = height + InGame_CourtOptions.menuH;
            int iMin = Math.min(i53, (CFG.GAME_HEIGHT - i54) - (CFG.PADDING * 3));
            int i55 = i7;
            arrayList.add(new Empty(0, 0, i55, Math.max(i53, iMin)));
            initMenu(null, otherMenuPosX, i54, i55, iMin, arrayList, false, false);
            this.drawScrollPositionAlways = false;
            Game.menuManager.setInGame_CivOptions_Title(Game.lang.get("Buildings"));
        }
        i2 = 2;
        arrayList.add(new Text_Title_v2Center(Game.lang.get("Resources"), -1, Images.boxTitleBORDERWIDTH, height3, width - (Images.boxTitleBORDERWIDTH * i2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        height3 += arrayList.get(arrayList.size() - 1).getHeight() + i13;
        int i56 = BuildingsManager.buildingsResourceStartID;
        int i57 = 0;
        while (i56 < BuildingsManager.buildingsResourceSize) {
            int i58 = i57;
            int i59 = 0;
            while (i59 < BuildingsManager.buildingSize.get(i56).intValue()) {
                if (BuildingsManager.buildings.get(i56).RequiredResource < 0 || BuildingsManager.buildings.get(i56).UniqueCapitalBuilding) {
                    i5 = i59;
                    i6 = i56;
                    str5 = str22;
                    civilization3 = civilization11;
                } else {
                    Civilization civilization15 = civilization11;
                    if (!civilization15.isBuildingResearched(i56, i59) || ((BuildingsManager.buildings.get(i56).RequiredGovernmentID >= 0 && BuildingsManager.buildings.get(i56).RequiredGovernmentID != civilization15.getIdeologyID()) || (BuildingsManager.buildings.get(i56).RequiredReligionID >= 0 && BuildingsManager.buildings.get(i56).RequiredReligionID != civilization15.getReligionID()))) {
                        civilization3 = civilization15;
                        i5 = i59;
                        i6 = i56;
                        str5 = str22;
                    } else {
                        int i60 = 0;
                        int i61 = 0;
                        int i62 = 0;
                        while (i60 < civilization15.getNumOfProvinces()) {
                            int i63 = Game.getProvince(civilization15.getProvinceID(i60)).buildingBuilt(i56, i59) ? i62 + 1 : i62;
                            if (Game.getProvince(civilization15.getProvinceID(i60)).getResourceID() == BuildingsManager.buildings.get(i56).RequiredResource) {
                                i61++;
                            }
                            i60++;
                            i62 = i63;
                        }
                        if (i61 > 0) {
                            int i64 = i58 + 1;
                            String str28 = str22;
                            str5 = str28;
                            civilization3 = civilization15;
                            int i65 = i59;
                            int i66 = i56;
                            arrayList.add(new AnonymousClass8(true, i56, i59, i12, height3, i35, true, true, str28 + i62 + " / " + i61));
                            int height6 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + i13;
                            if (SHOW_BONUSES) {
                                i5 = i65;
                                i6 = i66;
                                List<MenuElement> buildingBonuses2 = ButtonBuilding.getBuildingBonuses(i6, i5, CFG.PADDING + i12, width);
                                if (!buildingBonuses2.isEmpty()) {
                                    for (int i67 = 0; i67 < buildingBonuses2.size(); i67++) {
                                        buildingBonuses2.get(i67).setPosY(height6);
                                        arrayList.add(buildingBonuses2.get(i67));
                                        height6 += arrayList.get(arrayList.size() - 1).getHeight() + i13;
                                    }
                                    int i68 = height6 - height3;
                                    arrayList.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(i12, height6 - i68, i35, i68));
                                    height6 += CFG.PADDING;
                                }
                            } else {
                                i5 = i65;
                                i6 = i66;
                            }
                            height3 = height6;
                            i58 = i64;
                        } else {
                            civilization3 = civilization15;
                            i5 = i59;
                            i6 = i56;
                            str5 = str22;
                        }
                    }
                }
                i59 = i5 + 1;
                i56 = i6;
                str22 = str5;
                civilization11 = civilization3;
                str = str;
            }
            i56++;
            i57 = i58;
        }
        String str29 = str;
        String str30 = str22;
        Civilization civilization16 = civilization11;
        if (GameValues.inGame.SHOW_BUILDINGS_NO_PROVINCES_SIDEBAR) {
            if (modeID == -1) {
                int i69 = BuildingsManager.buildingsResourceStartID;
                boolean z2 = false;
                while (i69 < BuildingsManager.buildingsResourceSize) {
                    int i70 = 0;
                    while (i70 < BuildingsManager.buildingSize.get(i69).intValue()) {
                        if (BuildingsManager.buildings.get(i69).RequiredResource < 0 || BuildingsManager.buildings.get(i69).UniqueCapitalBuilding) {
                            i3 = i70;
                            i4 = i69;
                            str4 = str30;
                            civilization2 = civilization16;
                        } else {
                            Civilization civilization17 = civilization16;
                            if (civilization17.isBuildingResearched(i69, i70)) {
                                int i71 = 0;
                                int i72 = 0;
                                int i73 = 0;
                                while (i71 < civilization17.getNumOfProvinces()) {
                                    int i74 = Game.getProvince(civilization17.getProvinceID(i71)).buildingBuilt(i69, i70) ? i73 + 1 : i73;
                                    if (Game.getProvince(civilization17.getProvinceID(i71)).getResourceID() == BuildingsManager.buildings.get(i69).RequiredResource) {
                                        i72++;
                                    }
                                    i71++;
                                    i73 = i74;
                                }
                                if (i72 == 0) {
                                    if (z2) {
                                        z = z2;
                                    } else {
                                        arrayList.add(new AnonymousClass9(Game.lang.get("Provinces") + ": 0", -1, Images.boxTitleBORDERWIDTH, height3, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
                                        height3 += arrayList.get(arrayList.size() - 1).getHeight() + i13;
                                        z = true;
                                    }
                                    int i75 = i57 + 1;
                                    String str31 = str30;
                                    str4 = str31;
                                    civilization2 = civilization17;
                                    int i76 = i70;
                                    int i77 = i69;
                                    arrayList.add(new AnonymousClass10(true, i69, i70, i12, height3, i35, true, true, str31 + i73 + " / " + i72));
                                    int height7 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + i13;
                                    if (SHOW_BONUSES) {
                                        i3 = i76;
                                        i4 = i77;
                                        List<MenuElement> buildingBonuses3 = ButtonBuilding.getBuildingBonuses(i4, i3, CFG.PADDING + i12, width);
                                        if (!buildingBonuses3.isEmpty()) {
                                            for (int i78 = 0; i78 < buildingBonuses3.size(); i78++) {
                                                buildingBonuses3.get(i78).setPosY(height7);
                                                arrayList.add(buildingBonuses3.get(i78));
                                                height7 += arrayList.get(arrayList.size() - 1).getHeight() + i13;
                                            }
                                            int i79 = height7 - height3;
                                            arrayList.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(i12, height7 - i79, i35, i79));
                                            height3 = height7 + CFG.PADDING;
                                        }
                                        z2 = z;
                                        i57 = i75;
                                    } else {
                                        i3 = i76;
                                        i4 = i77;
                                    }
                                    height3 = height7;
                                    z2 = z;
                                    i57 = i75;
                                } else {
                                    civilization2 = civilization17;
                                    i3 = i70;
                                    i4 = i69;
                                    str4 = str30;
                                }
                            } else {
                                civilization2 = civilization17;
                                i3 = i70;
                                i4 = i69;
                                str4 = str30;
                            }
                        }
                        i70 = i3 + 1;
                        i69 = i4;
                        civilization16 = civilization2;
                        str30 = str4;
                    }
                    i69++;
                }
            }
            str2 = str30;
            civilization = civilization16;
            if (i57 == 0) {
                str23 = "Resources";
                str3 = str29;
                arrayList.add(new Text_StaticBG(Game.lang.get(str29), CFG.FONT_REGULAR, -1, i12, height3, i35, CFG.BUTTON_HEIGHT2));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + i13;
            }
            if (GameValues.inGame.SHOW_TO_BE_RESEARCHED_BUILDINGS_SIDEBAR) {
                i7 = width;
            } else {
                i7 = width;
            }
            int i510 = height3;
            int i511 = height + InGame_CourtOptions.menuH;
            int iMin2 = Math.min(i510, (CFG.GAME_HEIGHT - i511) - (CFG.PADDING * 3));
            int i512 = i7;
            arrayList.add(new Empty(0, 0, i512, Math.max(i510, iMin2)));
            initMenu(null, otherMenuPosX, i511, i512, iMin2, arrayList, false, false);
            this.drawScrollPositionAlways = false;
            Game.menuManager.setInGame_CivOptions_Title(Game.lang.get("Buildings"));
        }
        str2 = str30;
        civilization = civilization16;
        str3 = str29;
        if (GameValues.inGame.SHOW_TO_BE_RESEARCHED_BUILDINGS_SIDEBAR) {
            i7 = width;
        } else {
            i7 = width;
        }
        int i513 = height3;
        int i514 = height + InGame_CourtOptions.menuH;
        int iMin3 = Math.min(i513, (CFG.GAME_HEIGHT - i514) - (CFG.PADDING * 3));
        int i515 = i7;
        arrayList.add(new Empty(0, 0, i515, Math.max(i513, iMin3)));
        initMenu(null, otherMenuPosX, i514, i515, iMin3, arrayList, false, false);
        this.drawScrollPositionAlways = false;
        Game.menuManager.setInGame_CivOptions_Title(Game.lang.get("Buildings"));
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = InGame_Court.lTime + 60 >= CFG.currentTimeMillis ? (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - InGame_Court.lTime) / 60.0f))) : i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - InGame_CourtOptions.menuH) + i2, getWidth(), getHeight() + InGame_CourtOptions.menuH + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop500, Images.insideBot500);
        ImageManager.getImage(Images.civOptionsOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.civOptionsOver).getWidth() / 2)) + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.civOptionsOver).getHeight()));
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
