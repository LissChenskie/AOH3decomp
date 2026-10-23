package aoc.kingdoms.lukasz.menusInGame;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.LanguageManager;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.civilization.stats.LQy.lJxd;
import aoc.kingdoms.lukasz.map.plague.KMTV.fTNtCctcBZcqKK;
import aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction;
import aoc.kingdoms.lukasz.map.terrain.exjB.uiwPYaNhJS;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonArmyGeneral_Assign;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Click;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Empty;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageFull;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Center;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Clear;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_RulerTitle_General;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2;
import aoc.kingdoms.lukasz.menusEditor.RJR.ATsAGKCnv;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Generals extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static String assignArmyKey = "";
    public static int assignProvinceID;
    public static boolean backButton;
    public static long lTime;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Generals$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, i7, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Generals.backButton) {
                InGame.action3();
            } else {
                Game.menuManager.setVisibleInGame_Generals(false);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            if (InGame_Generals.backButton) {
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Back"), Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Close"), Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.x, CFG.PADDING, 0));
            }
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Generals$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_GeneralRecruit()) {
                Game.menuManager.setVisibleInGame_GeneralRecruit(false);
            } else {
                Game.menuManager.rebuildInGame_GeneralRecruit();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("RecruitGeneral"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.general, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Generals") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getCiv(Game.player.iCivID).getTotalGenerals(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.general, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("UnassignedGenerals") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getCiv(Game.player.iCivID).getGeneralsNotAssignedSize(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.general, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MilitaryAcademyForGenerals"), CFG.FONT_BOLD_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.general, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Level") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(Game.player.iCivID).getMilitaryAcademyForGeneralsLevel() + " / " + Game.getMilitaryAcademyForGenerals_MaxLvl(Game.player.iCivID), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Generals$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonGame {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_GeneralRecruit()) {
                Game.menuManager.setVisibleInGame_GeneralRecruit(false);
            } else {
                Game.menuManager.rebuildInGame_GeneralRecruit();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("RecruitGeneral"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.general, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Generals$4, reason: invalid class name */
    class AnonymousClass4 extends Text_StaticBG_RulerTitle_General {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, String str2, int i5, int i6) {
            super(str, i, i2, i3, i4, str2, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            int armyKeyID = Game.getProvince(this.iProvinceID).getArmyKeyID(this.key);
            if (armyKeyID < 0) {
                for (int i = 0; i < Game.getProvincesSize(); i++) {
                    int armyKeyID2 = Game.getProvince(i).getArmyKeyID(this.key, this.iCivID);
                    if (armyKeyID2 >= 0) {
                        this.iProvinceID = i;
                        armyKeyID = armyKeyID2;
                        break;
                    }
                }
            }
            if (armyKeyID >= 0) {
                if (Game.activeArmySize == 1 && Game.activeArmy.get(0).key.equals(Game.getProvince(this.iProvinceID).getArmy(armyKeyID).key)) {
                    Game.mapCoords.centerToProvinceID(this.iProvinceID);
                } else {
                    Game.clearActiveArmy();
                    Game.HoveredArmy hoveredArmy = new Game.HoveredArmy();
                    hoveredArmy.key = Game.getProvince(this.iProvinceID).getArmy(armyKeyID).key;
                    hoveredArmy.iCivID = Game.getProvince(this.iProvinceID).getArmy(armyKeyID).civID;
                    hoveredArmy.iProvinceID = this.iProvinceID;
                    hoveredArmy.iArmyID = armyKeyID;
                    Game.addActiveArmy(hoveredArmy);
                    ProvinceTouchExtraAction.actionUp_SetActiveArmy();
                    if (!Game.getProvince(this.iProvinceID).getDrawProvince()) {
                        Game.mapCoords.centerToProvinceID(this.iProvinceID);
                    }
                }
                if (Game.menuManager.getVisibleInGame_Generals()) {
                    Game.menuManager.setVisibleInGame_Generals(false);
                }
                if (Game.menuManager.getVisibleInGame_GeneralRecruit()) {
                    Game.menuManager.setVisibleInGame_GeneralRecruit(false);
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Army") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear("" + getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Generals$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonStatsRectIMG {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ArmySize") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + getText(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Generals$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonStatsRectIMG {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(uiwPYaNhJS.TQwXztJ) + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + getText(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.armyMaintenance, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Generals$7, reason: invalid class name */
    class AnonymousClass7 extends MenuTitleIMG {
        AnonymousClass7(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Generals.lTime;
        }
    }

    public InGame_Generals() {
        LanguageManager languageManager;
        String str;
        int i;
        int i2;
        boolean z;
        int i3;
        String str2;
        ArrayList arrayList = new ArrayList();
        int i4 = (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH;
        ImageManager.getImage(Images.title2).getHeight();
        int width = ImageManager.getImage(Images.insideTop).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height = ImageManager.getImage(Images.title1Red).getHeight() + ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i5 = CFG.PADDING * 2;
        int i6 = width - (i4 * 2);
        int i7 = ((i6 - CFG.PADDING) * 3) / 5;
        int i8 = ((i6 - CFG.PADDING) * 2) / 5;
        int i9 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
        int width2 = ImageManager.getImage(Game_Calendar.IMG_MANPOWER).getWidth();
        int i10 = CFG.PADDING + 0;
        if (backButton) {
            languageManager = Game.lang;
            str = "Back";
        } else {
            languageManager = Game.lang;
            str = "Close";
        }
        arrayList.add(new AnonymousClass1(languageManager.get(str), backButton ? Game_Calendar.IMG_MANPOWER : Images.x, i4, i10, i7, i9, width2, 0, true));
        arrayList.add(new AnonymousClass2("" + Game.getCiv(Game.player.iCivID).getTotalGenerals(), Images.general, i4 + i7 + CFG.PADDING, i10, i8, i9, width2, 0));
        int height2 = i10 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int width3 = ImageManager.getImage(Images.gold).getWidth();
        int i11 = (i6 - (CFG.PADDING * 2)) / 2;
        String str3 = "";
        arrayList.add(new AnonymousClass3(Game.lang.get("RecruitGeneral"), CFG.FONT_REGULAR, -1, i4, height2, i6, true));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        boolean z2 = false;
        for (int i12 = 0; i12 < Game.getCiv(Game.player.iCivID).iArmyPositionSize; i12++) {
            for (int i13 = 0; i13 < Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(i12)).getArmySize(); i13++) {
                if (Game.player.iCivID == Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(i12)).getArmy(i13).civID && Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(i12)).getArmy(i13).armyGeneral != null) {
                    z2 = true;
                    break;
                }
            }
            if (z2) {
                break;
            }
        }
        boolean z3 = z2;
        if (Game.getCiv(Game.player.iCivID).iGeneralsSize == 0 && !z3) {
            arrayList.add(new Text_StaticBG(Game.lang.get("NoGenerals") + ".", CFG.FONT_REGULAR_SMALL, -1, i4, height3, i6, ImageManager.getImage(Images.generalFrameBattle).getHeight() + CFG.TEXT_HEIGHT + (CFG.PADDING * 2)));
            height3 += arrayList.get(arrayList.size() - 1).getHeight() + i5;
        }
        arrayList.add(new Text_Title_v2(Game.lang.get("UnassignedGenerals"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        if (Game.getCiv(Game.player.iCivID).iGeneralsSize > 0) {
            int width4 = i4;
            int i14 = 0;
            while (i14 < Game.getCiv(Game.player.iCivID).iGeneralsSize) {
                int i15 = width3;
                int i16 = width;
                boolean z4 = z3;
                arrayList.add(new ButtonArmyGeneral_Assign(width4, height4, i11, Game.getCiv(Game.player.iCivID).getGeneralNotAssigned(i14).n, Game.player.iCivID, Game.getCiv(Game.player.iCivID).getGeneralNotAssigned(i14).getAttack(), Game.getCiv(Game.player.iCivID).getGeneralNotAssigned(i14).getDefense(), Game.getCiv(Game.player.iCivID).getGeneralNotAssigned(i14).g, Game.getCiv(Game.player.iCivID).getGeneralNotAssigned(i14).d, Game.getCiv(Game.player.iCivID).getGeneralNotAssigned(i14).m, Game.getCiv(Game.player.iCivID).getGeneralNotAssigned(i14).y, false, Game.getCiv(Game.player.iCivID).getGeneralNotAssigned(i14).key, Game.getCiv(Game.player.iCivID).getGeneralNotAssigned(i14).sI, Game.getCiv(Game.player.iCivID).getGeneralNotAssigned(i14).getCombatExperience()));
                if (i14 % 2 == 1) {
                    height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    width4 = i4;
                } else {
                    width4 += arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                }
                i14++;
                width3 = i15;
                width = i16;
                z3 = z4;
            }
            i = width3;
            i2 = width;
            z = z3;
            i3 = 1;
        } else {
            i = width3;
            i2 = width;
            z = z3;
            arrayList.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i4, height4, i6, CFG.BUTTON_HEIGHT2));
            i3 = 1;
            arrayList.get(arrayList.size() - 1).getHeight();
            int i17 = CFG.PADDING;
        }
        int posY = arrayList.get(arrayList.size() - i3).getPosY() + arrayList.get(arrayList.size() - i3).getHeight() + i5;
        if (z) {
            arrayList.add(new Text_Title_v2(Game.lang.get("GeneralsCommandingArmies"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, posY, i2 - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
            posY += arrayList.get(arrayList.size() - 1).getHeight() + i5;
        }
        int i18 = i4;
        for (int i19 = 0; i19 < Game.getCiv(Game.player.iCivID).iArmyPositionSize; i19++) {
            int i20 = 0;
            while (i20 < Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(i19)).getArmySize()) {
                if (Game.player.iCivID == Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(i19)).getArmy(i20).civID && Game.getCiv(Game.player.iCivID).getArmyPositionKey(i19).equals(Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(i19)).getArmy(i20).key) && Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(i19)).getArmy(i20).armyGeneral != null) {
                    arrayList.add(new ButtonArmyGeneral_Assign(i18, posY, i11, Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(i19)).getArmy(i20).armyGeneral.n, Game.player.iCivID, Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(i19)).getArmy(i20).armyGeneral.getAttack(), Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(i19)).getArmy(i20).armyGeneral.getDefense(), Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(i19)).getArmy(i20).armyGeneral.g, Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(i19)).getArmy(i20).armyGeneral.d, Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(i19)).getArmy(i20).armyGeneral.m, Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(i19)).getArmy(i20).armyGeneral.y, false, Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(i19)).getArmy(i20).armyGeneral.key, Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(i19)).getArmy(i20).armyGeneral.sI, Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(i19)).getArmy(i20).armyGeneral.getCombatExperience()));
                    int width5 = i18 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                    int i21 = (i2 - width5) - i4;
                    int buttonHeight = (ButtonArmyGeneral_Assign.getButtonHeight() - (CFG.PADDING * 2)) / 3;
                    str2 = str3;
                    arrayList.add(new AnonymousClass4(str2 + Game.getProvince(Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(i19)).getArmy(i20).provinceID).getProvinceName(), width5, posY, i21, buttonHeight, Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(i19)).getArmy(i20).key, Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(i19)).getArmy(i20).provinceID, Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(i19)).getArmy(i20).civID));
                    int height5 = arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING + posY;
                    int i22 = i;
                    arrayList.add(new AnonymousClass5(CFG.getNumberWithSpaces(str2 + Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(i19)).getArmy(i20).iArmy), Game_Calendar.IMG_MANPOWER, width5, height5, i21, buttonHeight, i22));
                    arrayList.add(new AnonymousClass6(CFG.getPrecision2(Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(i19)).getArmy(i20).fMaintenanceCost, 100), Images.gold, width5, height5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING, i21, buttonHeight, i22));
                    arrayList.get(arrayList.size() - 1).getHeight();
                    int i23 = CFG.PADDING;
                    posY += ButtonArmyGeneral_Assign.getButtonHeight() + CFG.PADDING;
                    i18 = i4;
                } else {
                    str2 = str3;
                }
                i20++;
                str3 = str2;
            }
        }
        posY = arrayList.size() > 0 ? arrayList.get(arrayList.size() - 1).getPosY() + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2) : posY;
        int iMin = Math.min(posY, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 3));
        int i24 = i2;
        arrayList.add(new Empty(0, 0, i24, Math.max(posY, iMin)));
        initMenu(new AnonymousClass7("", false, false, Images.title1Red), otherMenuPosX_2, height, i24, iMin, arrayList, false, true);
        this.drawScrollPositionAlways = false;
    }

    public static MenuElement_Hover getHoverMilitaryAcademyForGenerals() {
        return getHoverMilitaryAcademyForGenerals(true, Game.player.iCivID);
    }

    public static MenuElement_Hover getHoverMilitaryAcademyForGenerals(boolean z, int i) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center(Game.lang.get("MilitaryAcademyForGenerals"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_ImageFull(Images.armyGeneralAcademyBig, 0, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Level") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(i).getMilitaryAcademyForGeneralsLevel() + " / " + Game.getMilitaryAcademyForGenerals_MaxLvl(i), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("GeneralsAttack") + ": ", (Game.getMilitaryAcademyForGenerals_GeneralAttack(i) > 0 ? "+" : "") + CFG.getPrecision2(Game.getMilitaryAcademyForGenerals_GeneralAttack(i), 100), Images.attack, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Game.getMilitaryAcademyForGenerals_GeneralAttack(i) > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.HOVER_RIGHT));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("GeneralsDefense") + ": ", (Game.getMilitaryAcademyForGenerals_GeneralDefense(i) > 0 ? "+" : "") + CFG.getPrecision2(Game.getMilitaryAcademyForGenerals_GeneralDefense(i), 100), Images.defense, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Game.getMilitaryAcademyForGenerals_GeneralDefense(i) > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.HOVER_RIGHT));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaintenanceCost") + ": ", "" + CFG.getPrecision2(Game.getMilitaryAcademyForGenerals_MaintenanceCost(i), 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Game.getMilitaryAcademyForGenerals_MaintenanceCost(i) > 0.0f ? Colors.COLOR_TEXT_MODIFIER_NEGATIVE : Colors.HOVER_RIGHT));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (z) {
            if (Game.getCiv(i).getMilitaryAcademyForGeneralsLevel() >= Game.getMilitaryAcademyForGenerals_MaxLvl(i)) {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaximumLevel"), CFG.FONT_BOLD_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.general, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_Empty());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("UpgradeMilitaryAcademyForGenerals"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.general, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Cost") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(Game.getMilitaryAcademyForGenerals_Cost(i), 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("GeneralsAttackPerLevel") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(GameValues.militaryAcademy.MILITARY_ACADEMY_FOR_GENERALS_ATTACK_PER_LVL, 100), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.attack, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("GeneralsDefensePerLevel") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(GameValues.militaryAcademy.MILITARY_ACADEMY_FOR_GENERALS_DEFENSE_PER_LVL, 100), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.defense, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaintenanceCost") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(GameValues.militaryAcademy.MILITARY_ACADEMY_FOR_GENERALS_MAINTENANCE_COST_PER_LVL, 100), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
        }
        return new MenuElement_Hover(arrayList);
    }

    public static final void upgradeMilitaryAcademyForGenerals() {
        if (Game.getCiv(Game.player.iCivID).getMilitaryAcademyForGeneralsLevel() >= Game.getMilitaryAcademyForGenerals_MaxLvl(Game.player.iCivID)) {
            Game.menuManager.addToastInsufficient(Game.lang.get("MaximumLevel") + ": ", lJxd.xUACl + Game.getCiv(Game.player.iCivID).getMilitaryAcademyForGeneralsLevel() + " / " + Game.getMilitaryAcademyForGenerals_MaxLvl(Game.player.iCivID), Images.general);
            return;
        }
        if (Game.getCiv(Game.player.iCivID).fGold < Game.getMilitaryAcademyForGenerals_Cost(Game.player.iCivID)) {
            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getMilitaryAcademyForGenerals_Cost(Game.player.iCivID), 100), Images.gold);
            return;
        }
        Game.getCiv(Game.player.iCivID).upgradeMilitaryAcademyForGenerals();
        if (Game.menuManager.getVisibleInGame_Generals()) {
            Game.menuManager.rebuildInGame_Generals();
            Game.menuManager.setVisibleInGame_Generals(true);
            lTime = 0L;
        }
        InGame_Info.iCivID = Game.player.iCivID;
        InGame_Info.iCivID2 = 0;
        Game.menuManager.rebuildInGame_Info(Game.lang.get(ATsAGKCnv.XtrOz), Game.lang.get("Level") + ": " + Game.getCiv(Game.player.iCivID).getMilitaryAcademyForGeneralsLevel() + " / " + Game.getMilitaryAcademyForGenerals_MaxLvl(Game.player.iCivID));
        InGame_Info.imgID = Images.infoGeneral;
        Game.getCiv(Game.player.iCivID).updateTotalIncomePerMonth();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        if (lTime + 60 >= CFG.currentTimeMillis) {
            i = (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - lTime) / 60.0f)));
        }
        int i3 = i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight() + CFG.PADDING, false);
        ImageManager.getImage(Images.recruitArmyOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.recruitArmyOver).getWidth() / 2)) + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.recruitArmyOver).getHeight()));
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
        getTitle().setText(Game.lang.get(fTNtCctcBZcqKK.SDSA));
    }
}
