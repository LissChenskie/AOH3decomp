package aoc.kingdoms.lukasz.menusInGame.Province;

import aoc.kingdoms.lukasz.jakowski.AI.Government.nSju.IlLkpaQxs;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.Renderer.SparksAnimation;
import aoc.kingdoms.lukasz.map.SiegeManager;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.map.technology.Bhs.fiRhHJntP;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonSiegeTime;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Loot;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Siege;
import aoc.kingdoms.lukasz.menusScenarioEditor.YGiX.gpVDKipRURuzw;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.google.android.gms.internal.common.oss.ClXgFvsSKQc;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_ProvinceSiege extends Menu {
    public static final int ANIMATION_TIME = 60;
    public static int iProvinceID;
    public int imageOverID;
    public static SparksAnimation sparksAnimation = new SparksAnimation();
    public static long lTime = 0;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceSiege$1, reason: invalid class name */
    class AnonymousClass1 extends TextIcon_Siege {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceSiege.getHoverSiege(this.iProvinceID);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceSiege$2, reason: invalid class name */
    class AnonymousClass2 extends TextIcon2 {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverFort(InGame_ProvinceSiege.iProvinceID, false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceSiege$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRectIMG_Loot {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverLoot(InGame_ProvinceSiege.iProvinceID, false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceSiege$4, reason: invalid class name */
    class AnonymousClass4 extends TextIcon2 {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            int i;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            if (Game.getProvince(InGame_ProvinceSiege.iProvinceID).isOccupied()) {
                i = 0;
                for (int i2 = 0; i2 < Game.getProvince(InGame_ProvinceSiege.iProvinceID).getArmySize(); i2++) {
                    if (DiplomacyManager.isAtWar(Game.getProvinceData(InGame_ProvinceSiege.iProvinceID).getOccupiedByCivID(), Game.getProvince(InGame_ProvinceSiege.iProvinceID).getArmy(i2).civID)) {
                        i += Game.getProvince(InGame_ProvinceSiege.iProvinceID).getArmy(i2).iArmy;
                    }
                }
            } else {
                i = 0;
                for (int i3 = 0; i3 < Game.getProvince(InGame_ProvinceSiege.iProvinceID).getArmySize(); i3++) {
                    if (DiplomacyManager.isAtWar(Game.getProvince(InGame_ProvinceSiege.iProvinceID).getCivID(), Game.getProvince(InGame_ProvinceSiege.iProvinceID).getArmy(i3).civID)) {
                        i += Game.getProvince(InGame_ProvinceSiege.iProvinceID).getArmy(i3).iArmy;
                    }
                }
            }
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("BesiegingSoldiers") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + CFG.getNumberWithSpaces("" + i), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DailySiegeProgress") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(SiegeManager.getDailySiegeProgress(InGame_ProvinceSiege.iProvinceID), 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.siege, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("DailySiegeProgressIsTheSumOfTheSiegeAbilitiesOfAllUnitsInvolvedInTheSiege"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceSiege$5, reason: invalid class name */
    class AnonymousClass5 extends TextIcon2 {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            int i;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            if (Game.getProvince(InGame_ProvinceSiege.iProvinceID).isOccupied()) {
                i = 0;
                for (int i2 = 0; i2 < Game.getProvince(InGame_ProvinceSiege.iProvinceID).getArmySize(); i2++) {
                    if (DiplomacyManager.isAtWar(Game.getProvinceData(InGame_ProvinceSiege.iProvinceID).getOccupiedByCivID(), Game.getProvince(InGame_ProvinceSiege.iProvinceID).getArmy(i2).civID)) {
                        i += Game.getProvince(InGame_ProvinceSiege.iProvinceID).getArmy(i2).iArmy;
                    }
                }
            } else {
                i = 0;
                for (int i3 = 0; i3 < Game.getProvince(InGame_ProvinceSiege.iProvinceID).getArmySize(); i3++) {
                    if (DiplomacyManager.isAtWar(Game.getProvince(InGame_ProvinceSiege.iProvinceID).getCivID(), Game.getProvince(InGame_ProvinceSiege.iProvinceID).getArmy(i3).civID)) {
                        i += Game.getProvince(InGame_ProvinceSiege.iProvinceID).getArmy(i3).iArmy;
                    }
                }
            }
            StringBuilder sbAppend = new StringBuilder().append(Game.lang.get("BesiegingSoldiers"));
            String str = fiRhHJntP.TjkmdN;
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(sbAppend.append(str).toString(), CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + CFG.getNumberWithSpaces("" + i), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DailySiegeProgress") + str, CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(SiegeManager.getDailySiegeProgress(InGame_ProvinceSiege.iProvinceID), 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.siege, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("DailySiegeProgressIsTheSumOfTheSiegeAbilitiesOfAllUnitsInvolvedInTheSiege"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceSiege$6, reason: invalid class name */
    class AnonymousClass6 extends MenuTitleIMG {
        AnonymousClass6(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG, aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public void draw(SpriteBatch spriteBatch, int i, int i2, int i3, Status status) {
            super.draw(spriteBatch, i, i2, i3 + Images.boxTitleBORDERWIDTH, status);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_ProvinceSiege.lTime;
        }
    }

    public InGame_ProvinceSiege() {
        int i;
        int i2;
        this.imageOverID = 0;
        ArrayList arrayList = new ArrayList();
        int i3 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
        ImageManager.getImage(Images.title530).getHeight();
        int width = ImageManager.getImage(Images.title530).getWidth() - Images.boxTitleBORDERWIDTH;
        int height = ImageManager.getImage(Images.armyCampOver0).getHeight();
        int i4 = CFG.GAME_HEIGHT;
        int i5 = CFG.PADDING;
        int i6 = CFG.PADDING;
        int i7 = CFG.PADDING;
        if (Game.getProvince(iProvinceID).getFortLevel() == 0) {
            int i8 = iProvinceID % 3;
            if (i8 == 0) {
                this.imageOverID = Images.siegeOver0;
            } else if (i8 != 1) {
                this.imageOverID = Images.siegeOver2;
            } else {
                this.imageOverID = Images.siegeOver1;
            }
        } else {
            int i9 = iProvinceID % 3;
            if (i9 == 0) {
                this.imageOverID = Images.siegeOverFort0;
            } else if (i9 != 1) {
                this.imageOverID = Images.siegeOverFort2;
            } else {
                this.imageOverID = Images.siegeOverFort1;
            }
        }
        int width2 = ImageManager.getImage(Images.siege).getWidth() + (CFG.PADDING * 4);
        int i10 = CFG.PADDING;
        int height2 = ImageManager.getImage(Images.flagDiplomacyOver).getHeight() + (i10 * 2);
        int i11 = width / 2;
        int i12 = CFG.PADDING;
        int i13 = width2 / 2;
        ImageManager.getImage(Images.flagDiplomacyOver).getWidth();
        float dailySiegeProgress = SiegeManager.getDailySiegeProgress(iProvinceID);
        if (Game.getProvince(iProvinceID).isOccupied()) {
            i = 0;
            i2 = 0;
            int i14 = 0;
            for (int i15 = 0; i15 < Game.getProvince(iProvinceID).getArmySize(); i15++) {
                if (DiplomacyManager.isAtWar(Game.getProvinceData(iProvinceID).getOccupiedByCivID(), Game.getProvince(iProvinceID).getArmy(i15).civID)) {
                    i2 += Game.getProvince(iProvinceID).getArmy(i15).iArmy;
                    if (i == 0 || Game.getProvince(iProvinceID).getArmy(i15).iArmy > i14) {
                        i14 = Game.getProvince(iProvinceID).getArmy(i15).iArmy;
                        i = Game.getProvince(iProvinceID).getArmy(i15).civID;
                    }
                }
            }
        } else {
            i = 0;
            i2 = 0;
            int i16 = 0;
            for (int i17 = 0; i17 < Game.getProvince(iProvinceID).getArmySize(); i17++) {
                if (DiplomacyManager.isAtWar(Game.getProvince(iProvinceID).getCivID(), Game.getProvince(iProvinceID).getArmy(i17).civID)) {
                    i2 += Game.getProvince(iProvinceID).getArmy(i17).iArmy;
                    if (i == 0 || Game.getProvince(iProvinceID).getArmy(i17).iArmy > i16) {
                        i16 = Game.getProvince(iProvinceID).getArmy(i17).iArmy;
                        i = Game.getProvince(iProvinceID).getArmy(i17).civID;
                    }
                }
            }
        }
        int i18 = i2;
        int i19 = i7 + i10;
        arrayList.add(new ButtonFlag_Diplomacy(i, (CFG.PADDING * 2) + i3, i19, true));
        int i20 = width - i3;
        arrayList.add(new ButtonFlag_Diplomacy(Game.getProvince(iProvinceID).isOccupied() ? Game.getProvinceData(iProvinceID).getOccupiedByCivID() : Game.getProvince(iProvinceID).getCivID(), (i20 - (CFG.PADDING * 2)) - ImageManager.getImage(Images.flagDiplomacyOver).getWidth(), i19, true));
        int i21 = width - (i3 * 2);
        arrayList.add(new AnonymousClass1(Game.lang.get(IlLkpaQxs.Bzw) + gpVDKipRURuzw.VtZ, iProvinceID, Images.siege, i3, i7, i21, height2, width2));
        arrayList.add(new ButtonSiegeTime("", i3, i7 + arrayList.get(arrayList.size() - 1).getHeight(), i21, CFG.TEXT_HEIGHT + (CFG.PADDING * 4)));
        int i22 = CFG.PADDING;
        int i23 = CFG.BUTTON_HEIGHT;
        int i24 = CFG.TEXT_HEIGHT;
        int i25 = CFG.PADDING;
        int i26 = CFG.BUTTON_HEIGHT;
        int i27 = i20 - i23;
        arrayList.add(new AnonymousClass2("" + Game.getProvince(iProvinceID).getFortLevel(), Images.fort, i27, (ImageManager.getImage(this.imageOverID).getHeight() - i3) - i26, i23, i26));
        arrayList.add(new AnonymousClass3("", Images.loot, i27, (((ImageManager.getImage(this.imageOverID).getHeight() - i3) - i26) - CFG.PADDING) - (CFG.TEXT_HEIGHT + (CFG.PADDING * 4)), i23, CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ImageManager.getImage(Images.fort).getWidth(), iProvinceID));
        arrayList.add(new AnonymousClass4("" + CFG.getShortNumber(i18), Game_Calendar.IMG_MANPOWER, i3, (ImageManager.getImage(this.imageOverID).getHeight() - i3) - i26, i23, i26));
        arrayList.add(new AnonymousClass5("+" + CFG.getPrecision2(dailySiegeProgress, 100), Images.siege, i3 + i23 + CFG.PADDING, (ImageManager.getImage(this.imageOverID).getHeight() - i3) - i26, i23, i26));
        int size = arrayList.size();
        int posY = 0;
        for (int i28 = 0; i28 < size; i28++) {
            if (posY < arrayList.get(i28).getPosY() + arrayList.get(i28).getHeight() + CFG.PADDING) {
                posY = arrayList.get(i28).getPosY() + arrayList.get(i28).getHeight() + CFG.PADDING;
            }
        }
        int iMax = Math.max(height, posY);
        int i29 = CFG.GAME_HEIGHT - iMax;
        arrayList.add(new Empty(0, 0, width, Math.max(posY, iMax)));
        initMenu(new AnonymousClass6(Game.lang.get("SiegeOf", Game.getProvince(iProvinceID).getProvinceName()), false, false, Images.title530), 0, i29, width, iMax, arrayList, false, true);
        ProvinceDraw.buildSiegeLines(iProvinceID);
    }

    public static MenuElement_Hover getHoverSiege(int i) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        StringBuilder sbAppend = new StringBuilder().append(Game.lang.get("SiegeProgress"));
        String str = ClXgFvsSKQc.xOHAws;
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(sbAppend.append(str).toString(), CFG.FONT_BOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + CFG.getPrecision2(Game.getProvince(i).getSiegeProgress() * 100.0f, 1) + "%", CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.siege, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Progress") + str, CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.getProvinceData4(i).getSiegeProgress(), 1), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.siege, CFG.PADDING, 0));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.getProvince(i).getFortDefense(), 1), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_FORT_DEFENSE, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DailySiegeProgress") + str, CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(SiegeManager.getDailySiegeProgress(i), 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.siege, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Max") + str, CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(GameValues.siege.SIEGE_MAX_PROGRESS, 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.siege, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("TheSiegeEndsWhenTheProgressReachesTheProvincesDefense"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ProvinceDefense") + str, CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.getProvince(i).getFortDefense(), 1), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_FORT_DEFENSE, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(" = " + CFG.getPrecision2(GameValues.siege.SIEGE_FORT_DEFENSE_DEFAULT, 100) + " + " + Game.lang.get("DefenseLevel") + " * " + CFG.getPrecision2(GameValues.siege.SIEGE_FORT_DEFENSE_PER_FORT_LVL, 100) + " + " + Game.lang.get("LocalManpowerLevel") + " * " + CFG.getPrecision2(GameValues.siege.SIEGE_FORT_DEFENSE_PER_MANPOWER_LVL, 100) + " + " + Game.lang.get("GrowthRate") + "*" + CFG.getPrecision2(GameValues.siege.SIEGE_FORT_DEFENSE_PER_GROWTH_RATE_LVL, 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
        arrayList2.clear();
        return new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3;
        int i4;
        DiplomacyManager.updateInAnimation();
        if (lTime + 60 >= CFG.currentTimeMillis) {
            i3 = (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - lTime) / 60.0f)));
            i4 = i2 + ((int) ((CFG.BUTTON_HEIGHT / 2.0f) - ((CFG.BUTTON_HEIGHT / 2) * ((CFG.currentTimeMillis - lTime) / 60.0f))));
        } else {
            i3 = i;
            i4 = i2;
        }
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - getTitle().getHeight()) + i4, getWidth() + Images.boxTitleBORDERWIDTH, getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i4, getWidth() + Images.boxTitleBORDERWIDTH, getHeight() + CFG.PADDING, false, Images.insideTop530, Images.insideBot530);
        ImageManager.getImage(this.imageOverID).draw2(spriteBatch, getPosX() + i3, getPosY() + i4, getWidth(), Math.min(getHeight(), ImageManager.getImage(this.imageOverID).getHeight()));
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.25f));
        ImageManager.getImage(this.imageOverID).draw2(spriteBatch, getPosX() + i3, getPosY() + i4, (int) (getWidth() * Game.getProvince(iProvinceID).getSiegeProgress()), Math.min(getHeight(), ImageManager.getImage(this.imageOverID).getHeight()));
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.25f));
        sparksAnimation.draw2(spriteBatch, getPosX() + i3, ((getPosY() + getHeight()) - Images.sparkHeight) + i4, getWidth(), Images.sparkHeight);
        spriteBatch.setColor(Color.WHITE);
        super.draw(spriteBatch, i3, i4, z, status);
        if (Game.getProvinceData4(iProvinceID).isUnderSiege()) {
            return;
        }
        Game.menuManager.setVisibleInGame_Siege(false);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
        if (z) {
            return;
        }
        ProvinceDraw.clearSiegeLines();
    }
}
