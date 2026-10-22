package aoc.kingdoms.lukasz.menusInGame.Province;

import androidx.core.internal.oiV.CoLRpi;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.map.army.ArmyDivision;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_Flag;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonArmyGeneral;
import aoc.kingdoms.lukasz.menu_element.button.ButtonArmyID;
import aoc.kingdoms.lukasz.menu_element.button.ButtonArmyNoGeneral;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus_Perc;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Siege;
import aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle;
import aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battlefield;
import aoc.kingdoms.lukasz.menusInGame.InGame_Generals;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.backends.android.surfaceview.JuyF.CvuNnwgYwe;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.net.otUh.aBEBOpwLZcQFCZ;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_ProvinceArmy extends Menu {
    public static final int ANIMATION_TIME = 60;
    public static final int ANIMATION_TIME_MOVE = 150;
    public static boolean besiegesProvince = false;
    public static int chooseProvinceExtraY = 0;
    public static int iActiveID = 0;
    public static int iCivFlagID = 0;
    public static int iProvinceID = 0;
    public static String key = "";
    public static long lTime = 0;
    public static long lTimeMOVE = 0;
    public static int nTranslateX = 0;
    public static int nTranslateY = 0;
    public static String sActiveKEY = "";
    public int imageOverID;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmy$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonArmyNoGeneral {
        AnonymousClass1(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_Generals()) {
                Game.menuManager.setVisibleInGame_Generals(false);
                return;
            }
            int armyKeyID = Game.getProvince(Game.activeArmy.get(InGame_ProvinceArmy.iActiveID).iProvinceID).getArmyKeyID(InGame_ProvinceArmy.key);
            if (armyKeyID >= 0) {
                InGame_Generals.assignProvinceID = Game.activeArmy.get(InGame_ProvinceArmy.iActiveID).iProvinceID;
                InGame_Generals.assignArmyKey = InGame_ProvinceArmy.key;
            } else {
                InGame_Generals.assignProvinceID = -1;
                Game.menuManager.addToast_Error(Game.lang.get(CvuNnwgYwe.SMpc));
            }
            if (Game.getCiv(Game.player.iCivID).getGeneralsNotAssignedSize() != 0 || Game.getProvince(Game.activeArmy.get(InGame_ProvinceArmy.iActiveID).iProvinceID).getArmy(armyKeyID).civID != Game.player.iCivID) {
                InGame_Generals.backButton = false;
                Game.menuManager.rebuildInGame_Generals();
                Game.menuManager.setVisibleInGame_Generals(true);
            } else if (Game.menuManager.getVisibleInGame_GeneralRecruit()) {
                Game.menuManager.setVisibleInGame_GeneralRecruit(false);
            } else {
                Game.menuManager.rebuildInGame_GeneralRecruit();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            InGame_ProvinceArmy.centerToArmy();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmy$10, reason: invalid class name */
    class AnonymousClass10 extends Game.SimpleTask {
        AnonymousClass10(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.setVisibleInGame_ProvinceArmy(false);
            Game.menuManager.rebuildInGame_Battle();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmy$11, reason: invalid class name */
    class AnonymousClass11 extends Game.SimpleTask {
        AnonymousClass11(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_ProvinceArmy();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmy$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonArmyGeneral {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, String str2, int i10) {
            super(str, i, i2, i3, i4, i5, i6, i7, i8, i9, str2, i10);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_Generals()) {
                Game.menuManager.setVisibleInGame_Generals(false);
                return;
            }
            if (Game.getProvince(Game.activeArmy.get(InGame_ProvinceArmy.iActiveID).iProvinceID).getArmyKeyID(InGame_ProvinceArmy.key) >= 0) {
                InGame_Generals.assignProvinceID = Game.activeArmy.get(InGame_ProvinceArmy.iActiveID).iProvinceID;
                InGame_Generals.assignArmyKey = InGame_ProvinceArmy.key;
            } else {
                InGame_Generals.assignProvinceID = -1;
                Game.menuManager.addToast_Error(Game.lang.get("ArmyNotFound"));
            }
            InGame_Generals.backButton = false;
            Game.menuManager.rebuildInGame_Generals();
            Game.menuManager.setVisibleInGame_Generals(true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            InGame_ProvinceArmy.centerToArmy();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmy$3, reason: invalid class name */
    class AnonymousClass3 extends TextIcon_Siege {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_ProvinceArmy(false);
            if (Game.menuManager.getVisibleInGame_GeneralRecruit()) {
                Game.menuManager.setVisibleInGame_GeneralRecruit(false);
            }
            InGame_ProvinceSiege.iProvinceID = this.iProvinceID;
            Game.menuManager.rebuildInGame_Siege();
            Game.clearActiveArmy();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceSiege.getHoverSiege(this.iProvinceID);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Siege, aoc.kingdoms.lukasz.menu_element.button.Button
        protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            DiplomacyManager.updateInAnimation();
            super.drawButtonBG(spriteBatch, i, i2, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SIEGE;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getVisible() {
            return InGame_ProvinceArmy.besiegesProvince;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmy$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonStatsRectIMG {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            try {
                if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 51) {
                    Game.menuManager.setVisibleInGame_PopUp(false);
                } else {
                    InGame_Battlefield.armyDivision = Game.getProvince(Game.activeArmy.get(InGame_ProvinceArmy.iActiveID).iProvinceID).getArmy(Game.activeArmy.get(InGame_ProvinceArmy.iActiveID).key);
                    if (InGame_Battlefield.armyDivision != null) {
                        Game.menuManager.rebuildInGame_Battlefield();
                    } else {
                        Game.menuManager.setVisibleInGame_PopUp(false);
                    }
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(aBEBOpwLZcQFCZ.VOeDlj), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.battleWidth, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            ArmyDivision armyKey = Game.getProvince(Game.activeArmy.get(InGame_ProvinceArmy.iActiveID).iProvinceID).getArmyKey(Game.activeArmy.get(InGame_ProvinceArmy.iActiveID).key);
            float maxMorale = 1.0f;
            if (armyKey != null) {
                maxMorale = armyKey.civID > 0 ? armyKey.fMorale / Game.getCiv(armyKey.civID).getMaxMorale() : Math.min(1.0f, armyKey.fMorale / 1.0f);
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus_Perc(Game.lang.get("Morale") + CoLRpi.oxA, getText() + " / " + CFG.getPrecision2(Game.getCiv(InGame_ProvinceArmy.iCivFlagID).getMaxMorale() * 100.0f, 1) + "%", Images.morale, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD, maxMorale));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getVisible() {
            return !InGame_ProvinceArmy.besiegesProvince;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmy$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonStatsRectIMG {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaintenanceCost") + ": ", Game.lang.get("XPerYear", GameValues.fog.TEXT_UNKNOWN_MANPOWER), Images.gold, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getVisible() {
            return !InGame_ProvinceArmy.besiegesProvince;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmy$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonStatsRectIMG {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MovementSpeed") + ": ", getText(), Images.movementSpeed, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getVisible() {
            return !InGame_ProvinceArmy.besiegesProvince;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmy$7, reason: invalid class name */
    class AnonymousClass7 extends MenuTitleIMG_Flag {
        AnonymousClass7(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public void action() {
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_Flag, aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG, aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public void draw(SpriteBatch spriteBatch, int i, int i2, int i3, Status status) {
            super.draw(spriteBatch, i, i2, i3 + Images.boxTitleBORDERWIDTH, status);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_Flag
        public int getFlagCivID() {
            return InGame_ProvinceArmy.iCivFlagID;
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_ProvinceArmy.lTime;
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public void onHovered() {
            Game.menuManager.setOrderOfMenu_InGameProvinceArmy();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmy$8, reason: invalid class name */
    class AnonymousClass8 extends Game.SimpleTask {
        AnonymousClass8(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.setVisibleInGame_ProvinceArmy(false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmy$9, reason: invalid class name */
    class AnonymousClass9 extends Game.SimpleTask {
        AnonymousClass9(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_ProvinceArmy();
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x050e A[Catch: Exception -> 0x06ed, TryCatch #1 {Exception -> 0x06ed, blocks: (B:59:0x03c2, B:61:0x03c7, B:63:0x03d9, B:64:0x03de, B:66:0x03ef, B:67:0x03f5, B:68:0x03fb, B:70:0x040e, B:71:0x0414, B:73:0x0424, B:74:0x042a, B:76:0x043a, B:77:0x0440, B:98:0x0502, B:100:0x050e, B:102:0x051e, B:103:0x0524, B:105:0x0534, B:106:0x0539, B:108:0x0549, B:109:0x054e, B:110:0x0553, B:112:0x0563, B:113:0x0568, B:115:0x0578, B:116:0x057d, B:118:0x058d, B:119:0x0592, B:95:0x04f7), top: B:165:0x0284 }] */
    /* JADX WARN: Code duplicated, block: B:102:0x051e A[Catch: Exception -> 0x06ed, TryCatch #1 {Exception -> 0x06ed, blocks: (B:59:0x03c2, B:61:0x03c7, B:63:0x03d9, B:64:0x03de, B:66:0x03ef, B:67:0x03f5, B:68:0x03fb, B:70:0x040e, B:71:0x0414, B:73:0x0424, B:74:0x042a, B:76:0x043a, B:77:0x0440, B:98:0x0502, B:100:0x050e, B:102:0x051e, B:103:0x0524, B:105:0x0534, B:106:0x0539, B:108:0x0549, B:109:0x054e, B:110:0x0553, B:112:0x0563, B:113:0x0568, B:115:0x0578, B:116:0x057d, B:118:0x058d, B:119:0x0592, B:95:0x04f7), top: B:165:0x0284 }] */
    /* JADX WARN: Code duplicated, block: B:103:0x0524 A[Catch: Exception -> 0x06ed, TryCatch #1 {Exception -> 0x06ed, blocks: (B:59:0x03c2, B:61:0x03c7, B:63:0x03d9, B:64:0x03de, B:66:0x03ef, B:67:0x03f5, B:68:0x03fb, B:70:0x040e, B:71:0x0414, B:73:0x0424, B:74:0x042a, B:76:0x043a, B:77:0x0440, B:98:0x0502, B:100:0x050e, B:102:0x051e, B:103:0x0524, B:105:0x0534, B:106:0x0539, B:108:0x0549, B:109:0x054e, B:110:0x0553, B:112:0x0563, B:113:0x0568, B:115:0x0578, B:116:0x057d, B:118:0x058d, B:119:0x0592, B:95:0x04f7), top: B:165:0x0284 }] */
    /* JADX WARN: Code duplicated, block: B:105:0x0534 A[Catch: Exception -> 0x06ed, TryCatch #1 {Exception -> 0x06ed, blocks: (B:59:0x03c2, B:61:0x03c7, B:63:0x03d9, B:64:0x03de, B:66:0x03ef, B:67:0x03f5, B:68:0x03fb, B:70:0x040e, B:71:0x0414, B:73:0x0424, B:74:0x042a, B:76:0x043a, B:77:0x0440, B:98:0x0502, B:100:0x050e, B:102:0x051e, B:103:0x0524, B:105:0x0534, B:106:0x0539, B:108:0x0549, B:109:0x054e, B:110:0x0553, B:112:0x0563, B:113:0x0568, B:115:0x0578, B:116:0x057d, B:118:0x058d, B:119:0x0592, B:95:0x04f7), top: B:165:0x0284 }] */
    /* JADX WARN: Code duplicated, block: B:106:0x0539 A[Catch: Exception -> 0x06ed, TryCatch #1 {Exception -> 0x06ed, blocks: (B:59:0x03c2, B:61:0x03c7, B:63:0x03d9, B:64:0x03de, B:66:0x03ef, B:67:0x03f5, B:68:0x03fb, B:70:0x040e, B:71:0x0414, B:73:0x0424, B:74:0x042a, B:76:0x043a, B:77:0x0440, B:98:0x0502, B:100:0x050e, B:102:0x051e, B:103:0x0524, B:105:0x0534, B:106:0x0539, B:108:0x0549, B:109:0x054e, B:110:0x0553, B:112:0x0563, B:113:0x0568, B:115:0x0578, B:116:0x057d, B:118:0x058d, B:119:0x0592, B:95:0x04f7), top: B:165:0x0284 }] */
    /* JADX WARN: Code duplicated, block: B:108:0x0549 A[Catch: Exception -> 0x06ed, TryCatch #1 {Exception -> 0x06ed, blocks: (B:59:0x03c2, B:61:0x03c7, B:63:0x03d9, B:64:0x03de, B:66:0x03ef, B:67:0x03f5, B:68:0x03fb, B:70:0x040e, B:71:0x0414, B:73:0x0424, B:74:0x042a, B:76:0x043a, B:77:0x0440, B:98:0x0502, B:100:0x050e, B:102:0x051e, B:103:0x0524, B:105:0x0534, B:106:0x0539, B:108:0x0549, B:109:0x054e, B:110:0x0553, B:112:0x0563, B:113:0x0568, B:115:0x0578, B:116:0x057d, B:118:0x058d, B:119:0x0592, B:95:0x04f7), top: B:165:0x0284 }] */
    /* JADX WARN: Code duplicated, block: B:109:0x054e A[Catch: Exception -> 0x06ed, TryCatch #1 {Exception -> 0x06ed, blocks: (B:59:0x03c2, B:61:0x03c7, B:63:0x03d9, B:64:0x03de, B:66:0x03ef, B:67:0x03f5, B:68:0x03fb, B:70:0x040e, B:71:0x0414, B:73:0x0424, B:74:0x042a, B:76:0x043a, B:77:0x0440, B:98:0x0502, B:100:0x050e, B:102:0x051e, B:103:0x0524, B:105:0x0534, B:106:0x0539, B:108:0x0549, B:109:0x054e, B:110:0x0553, B:112:0x0563, B:113:0x0568, B:115:0x0578, B:116:0x057d, B:118:0x058d, B:119:0x0592, B:95:0x04f7), top: B:165:0x0284 }] */
    /* JADX WARN: Code duplicated, block: B:110:0x0553 A[Catch: Exception -> 0x06ed, TryCatch #1 {Exception -> 0x06ed, blocks: (B:59:0x03c2, B:61:0x03c7, B:63:0x03d9, B:64:0x03de, B:66:0x03ef, B:67:0x03f5, B:68:0x03fb, B:70:0x040e, B:71:0x0414, B:73:0x0424, B:74:0x042a, B:76:0x043a, B:77:0x0440, B:98:0x0502, B:100:0x050e, B:102:0x051e, B:103:0x0524, B:105:0x0534, B:106:0x0539, B:108:0x0549, B:109:0x054e, B:110:0x0553, B:112:0x0563, B:113:0x0568, B:115:0x0578, B:116:0x057d, B:118:0x058d, B:119:0x0592, B:95:0x04f7), top: B:165:0x0284 }] */
    /* JADX WARN: Code duplicated, block: B:112:0x0563 A[Catch: Exception -> 0x06ed, TryCatch #1 {Exception -> 0x06ed, blocks: (B:59:0x03c2, B:61:0x03c7, B:63:0x03d9, B:64:0x03de, B:66:0x03ef, B:67:0x03f5, B:68:0x03fb, B:70:0x040e, B:71:0x0414, B:73:0x0424, B:74:0x042a, B:76:0x043a, B:77:0x0440, B:98:0x0502, B:100:0x050e, B:102:0x051e, B:103:0x0524, B:105:0x0534, B:106:0x0539, B:108:0x0549, B:109:0x054e, B:110:0x0553, B:112:0x0563, B:113:0x0568, B:115:0x0578, B:116:0x057d, B:118:0x058d, B:119:0x0592, B:95:0x04f7), top: B:165:0x0284 }] */
    /* JADX WARN: Code duplicated, block: B:113:0x0568 A[Catch: Exception -> 0x06ed, TryCatch #1 {Exception -> 0x06ed, blocks: (B:59:0x03c2, B:61:0x03c7, B:63:0x03d9, B:64:0x03de, B:66:0x03ef, B:67:0x03f5, B:68:0x03fb, B:70:0x040e, B:71:0x0414, B:73:0x0424, B:74:0x042a, B:76:0x043a, B:77:0x0440, B:98:0x0502, B:100:0x050e, B:102:0x051e, B:103:0x0524, B:105:0x0534, B:106:0x0539, B:108:0x0549, B:109:0x054e, B:110:0x0553, B:112:0x0563, B:113:0x0568, B:115:0x0578, B:116:0x057d, B:118:0x058d, B:119:0x0592, B:95:0x04f7), top: B:165:0x0284 }] */
    /* JADX WARN: Code duplicated, block: B:115:0x0578 A[Catch: Exception -> 0x06ed, TryCatch #1 {Exception -> 0x06ed, blocks: (B:59:0x03c2, B:61:0x03c7, B:63:0x03d9, B:64:0x03de, B:66:0x03ef, B:67:0x03f5, B:68:0x03fb, B:70:0x040e, B:71:0x0414, B:73:0x0424, B:74:0x042a, B:76:0x043a, B:77:0x0440, B:98:0x0502, B:100:0x050e, B:102:0x051e, B:103:0x0524, B:105:0x0534, B:106:0x0539, B:108:0x0549, B:109:0x054e, B:110:0x0553, B:112:0x0563, B:113:0x0568, B:115:0x0578, B:116:0x057d, B:118:0x058d, B:119:0x0592, B:95:0x04f7), top: B:165:0x0284 }] */
    /* JADX WARN: Code duplicated, block: B:116:0x057d A[Catch: Exception -> 0x06ed, TryCatch #1 {Exception -> 0x06ed, blocks: (B:59:0x03c2, B:61:0x03c7, B:63:0x03d9, B:64:0x03de, B:66:0x03ef, B:67:0x03f5, B:68:0x03fb, B:70:0x040e, B:71:0x0414, B:73:0x0424, B:74:0x042a, B:76:0x043a, B:77:0x0440, B:98:0x0502, B:100:0x050e, B:102:0x051e, B:103:0x0524, B:105:0x0534, B:106:0x0539, B:108:0x0549, B:109:0x054e, B:110:0x0553, B:112:0x0563, B:113:0x0568, B:115:0x0578, B:116:0x057d, B:118:0x058d, B:119:0x0592, B:95:0x04f7), top: B:165:0x0284 }] */
    /* JADX WARN: Code duplicated, block: B:118:0x058d A[Catch: Exception -> 0x06ed, TryCatch #1 {Exception -> 0x06ed, blocks: (B:59:0x03c2, B:61:0x03c7, B:63:0x03d9, B:64:0x03de, B:66:0x03ef, B:67:0x03f5, B:68:0x03fb, B:70:0x040e, B:71:0x0414, B:73:0x0424, B:74:0x042a, B:76:0x043a, B:77:0x0440, B:98:0x0502, B:100:0x050e, B:102:0x051e, B:103:0x0524, B:105:0x0534, B:106:0x0539, B:108:0x0549, B:109:0x054e, B:110:0x0553, B:112:0x0563, B:113:0x0568, B:115:0x0578, B:116:0x057d, B:118:0x058d, B:119:0x0592, B:95:0x04f7), top: B:165:0x0284 }] */
    /* JADX WARN: Code duplicated, block: B:119:0x0592 A[Catch: Exception -> 0x06ed, TRY_LEAVE, TryCatch #1 {Exception -> 0x06ed, blocks: (B:59:0x03c2, B:61:0x03c7, B:63:0x03d9, B:64:0x03de, B:66:0x03ef, B:67:0x03f5, B:68:0x03fb, B:70:0x040e, B:71:0x0414, B:73:0x0424, B:74:0x042a, B:76:0x043a, B:77:0x0440, B:98:0x0502, B:100:0x050e, B:102:0x051e, B:103:0x0524, B:105:0x0534, B:106:0x0539, B:108:0x0549, B:109:0x054e, B:110:0x0553, B:112:0x0563, B:113:0x0568, B:115:0x0578, B:116:0x057d, B:118:0x058d, B:119:0x0592, B:95:0x04f7), top: B:165:0x0284 }] */
    /* JADX WARN: Code duplicated, block: B:132:0x0641 A[Catch: Exception -> 0x06f1, TryCatch #8 {Exception -> 0x06f1, blocks: (B:121:0x0598, B:123:0x05ec, B:125:0x05f2, B:127:0x05f8, B:130:0x0603, B:133:0x06a8, B:134:0x06ac, B:132:0x0641, B:82:0x044e, B:84:0x0466, B:85:0x046e, B:87:0x0486, B:88:0x048d, B:90:0x04a3, B:92:0x04c9, B:94:0x04ef, B:97:0x04fa), top: B:177:0x044e }] */
    /* JADX WARN: Code duplicated, block: B:13:0x00c3 A[Catch: Exception -> 0x0068, TRY_ENTER, TRY_LEAVE, TryCatch #4 {Exception -> 0x0068, blocks: (B:7:0x0057, B:13:0x00c3, B:20:0x0102), top: B:170:0x0057 }] */
    /* JADX WARN: Code duplicated, block: B:151:0x070a  */
    /* JADX WARN: Code duplicated, block: B:157:0x0724  */
    /* JADX WARN: Code duplicated, block: B:159:0x073e  */
    /* JADX WARN: Code duplicated, block: B:15:0x00dc A[Catch: Exception -> 0x06fd, TRY_ENTER, TryCatch #2 {Exception -> 0x06fd, blocks: (B:5:0x0051, B:11:0x0071, B:16:0x00de, B:18:0x00ea, B:22:0x0124, B:15:0x00dc), top: B:166:0x0051 }] */
    /* JADX WARN: Code duplicated, block: B:181:0x0756 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:182:0x030a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:183:0x02e3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:18:0x00ea A[Catch: Exception -> 0x06fd, TRY_LEAVE, TryCatch #2 {Exception -> 0x06fd, blocks: (B:5:0x0051, B:11:0x0071, B:16:0x00de, B:18:0x00ea, B:22:0x0124, B:15:0x00dc), top: B:166:0x0051 }] */
    /* JADX WARN: Code duplicated, block: B:20:0x0102 A[Catch: Exception -> 0x0068, TRY_ENTER, TRY_LEAVE, TryCatch #4 {Exception -> 0x0068, blocks: (B:7:0x0057, B:13:0x00c3, B:20:0x0102), top: B:170:0x0057 }] */
    /* JADX WARN: Code duplicated, block: B:22:0x0124 A[Catch: Exception -> 0x06fd, TRY_ENTER, TRY_LEAVE, TryCatch #2 {Exception -> 0x06fd, blocks: (B:5:0x0051, B:11:0x0071, B:16:0x00de, B:18:0x00ea, B:22:0x0124, B:15:0x00dc), top: B:166:0x0051 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x025d A[Catch: Exception -> 0x06f3, TryCatch #7 {Exception -> 0x06f3, blocks: (B:27:0x0232, B:29:0x025d, B:30:0x0267, B:34:0x0287, B:36:0x02a7, B:38:0x02e3, B:41:0x030b, B:43:0x0323, B:44:0x032b, B:48:0x0347, B:49:0x036b, B:51:0x0374, B:52:0x039a, B:39:0x0306, B:26:0x022f), top: B:176:0x022f }] */
    /* JADX WARN: Code duplicated, block: B:33:0x0286  */
    /* JADX WARN: Code duplicated, block: B:36:0x02a7 A[Catch: Exception -> 0x06f3, TryCatch #7 {Exception -> 0x06f3, blocks: (B:27:0x0232, B:29:0x025d, B:30:0x0267, B:34:0x0287, B:36:0x02a7, B:38:0x02e3, B:41:0x030b, B:43:0x0323, B:44:0x032b, B:48:0x0347, B:49:0x036b, B:51:0x0374, B:52:0x039a, B:39:0x0306, B:26:0x022f), top: B:176:0x022f }] */
    /* JADX WARN: Code duplicated, block: B:39:0x0306 A[Catch: Exception -> 0x06f3, LOOP:1: B:34:0x0287->B:39:0x0306, LOOP_END, TryCatch #7 {Exception -> 0x06f3, blocks: (B:27:0x0232, B:29:0x025d, B:30:0x0267, B:34:0x0287, B:36:0x02a7, B:38:0x02e3, B:41:0x030b, B:43:0x0323, B:44:0x032b, B:48:0x0347, B:49:0x036b, B:51:0x0374, B:52:0x039a, B:39:0x0306, B:26:0x022f), top: B:176:0x022f }] */
    /* JADX WARN: Code duplicated, block: B:43:0x0323 A[Catch: Exception -> 0x06f3, TryCatch #7 {Exception -> 0x06f3, blocks: (B:27:0x0232, B:29:0x025d, B:30:0x0267, B:34:0x0287, B:36:0x02a7, B:38:0x02e3, B:41:0x030b, B:43:0x0323, B:44:0x032b, B:48:0x0347, B:49:0x036b, B:51:0x0374, B:52:0x039a, B:39:0x0306, B:26:0x022f), top: B:176:0x022f }] */
    /* JADX WARN: Code duplicated, block: B:44:0x032b A[Catch: Exception -> 0x06f3, TRY_LEAVE, TryCatch #7 {Exception -> 0x06f3, blocks: (B:27:0x0232, B:29:0x025d, B:30:0x0267, B:34:0x0287, B:36:0x02a7, B:38:0x02e3, B:41:0x030b, B:43:0x0323, B:44:0x032b, B:48:0x0347, B:49:0x036b, B:51:0x0374, B:52:0x039a, B:39:0x0306, B:26:0x022f), top: B:176:0x022f }] */
    /* JADX WARN: Code duplicated, block: B:47:0x0345 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:48:0x0347 A[Catch: Exception -> 0x06f3, TRY_ENTER, TryCatch #7 {Exception -> 0x06f3, blocks: (B:27:0x0232, B:29:0x025d, B:30:0x0267, B:34:0x0287, B:36:0x02a7, B:38:0x02e3, B:41:0x030b, B:43:0x0323, B:44:0x032b, B:48:0x0347, B:49:0x036b, B:51:0x0374, B:52:0x039a, B:39:0x0306, B:26:0x022f), top: B:176:0x022f }] */
    /* JADX WARN: Code duplicated, block: B:49:0x036b A[Catch: Exception -> 0x06f3, TryCatch #7 {Exception -> 0x06f3, blocks: (B:27:0x0232, B:29:0x025d, B:30:0x0267, B:34:0x0287, B:36:0x02a7, B:38:0x02e3, B:41:0x030b, B:43:0x0323, B:44:0x032b, B:48:0x0347, B:49:0x036b, B:51:0x0374, B:52:0x039a, B:39:0x0306, B:26:0x022f), top: B:176:0x022f }] */
    /* JADX WARN: Code duplicated, block: B:50:0x0372 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:51:0x0374 A[Catch: Exception -> 0x06f3, TryCatch #7 {Exception -> 0x06f3, blocks: (B:27:0x0232, B:29:0x025d, B:30:0x0267, B:34:0x0287, B:36:0x02a7, B:38:0x02e3, B:41:0x030b, B:43:0x0323, B:44:0x032b, B:48:0x0347, B:49:0x036b, B:51:0x0374, B:52:0x039a, B:39:0x0306, B:26:0x022f), top: B:176:0x022f }] */
    /* JADX WARN: Code duplicated, block: B:52:0x039a A[Catch: Exception -> 0x06f3, TRY_LEAVE, TryCatch #7 {Exception -> 0x06f3, blocks: (B:27:0x0232, B:29:0x025d, B:30:0x0267, B:34:0x0287, B:36:0x02a7, B:38:0x02e3, B:41:0x030b, B:43:0x0323, B:44:0x032b, B:48:0x0347, B:49:0x036b, B:51:0x0374, B:52:0x039a, B:39:0x0306, B:26:0x022f), top: B:176:0x022f }] */
    /* JADX WARN: Code duplicated, block: B:55:0x03ae A[Catch: Exception -> 0x0446, TryCatch #6 {Exception -> 0x0446, blocks: (B:53:0x03a2, B:55:0x03ae, B:57:0x03be), top: B:174:0x03a2 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x03be A[Catch: Exception -> 0x0446, TRY_LEAVE, TryCatch #6 {Exception -> 0x0446, blocks: (B:53:0x03a2, B:55:0x03ae, B:57:0x03be), top: B:174:0x03a2 }] */
    /* JADX WARN: Code duplicated, block: B:61:0x03c7 A[Catch: Exception -> 0x06ed, TryCatch #1 {Exception -> 0x06ed, blocks: (B:59:0x03c2, B:61:0x03c7, B:63:0x03d9, B:64:0x03de, B:66:0x03ef, B:67:0x03f5, B:68:0x03fb, B:70:0x040e, B:71:0x0414, B:73:0x0424, B:74:0x042a, B:76:0x043a, B:77:0x0440, B:98:0x0502, B:100:0x050e, B:102:0x051e, B:103:0x0524, B:105:0x0534, B:106:0x0539, B:108:0x0549, B:109:0x054e, B:110:0x0553, B:112:0x0563, B:113:0x0568, B:115:0x0578, B:116:0x057d, B:118:0x058d, B:119:0x0592, B:95:0x04f7), top: B:165:0x0284 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x03d9 A[Catch: Exception -> 0x06ed, TryCatch #1 {Exception -> 0x06ed, blocks: (B:59:0x03c2, B:61:0x03c7, B:63:0x03d9, B:64:0x03de, B:66:0x03ef, B:67:0x03f5, B:68:0x03fb, B:70:0x040e, B:71:0x0414, B:73:0x0424, B:74:0x042a, B:76:0x043a, B:77:0x0440, B:98:0x0502, B:100:0x050e, B:102:0x051e, B:103:0x0524, B:105:0x0534, B:106:0x0539, B:108:0x0549, B:109:0x054e, B:110:0x0553, B:112:0x0563, B:113:0x0568, B:115:0x0578, B:116:0x057d, B:118:0x058d, B:119:0x0592, B:95:0x04f7), top: B:165:0x0284 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x03de A[Catch: Exception -> 0x06ed, TryCatch #1 {Exception -> 0x06ed, blocks: (B:59:0x03c2, B:61:0x03c7, B:63:0x03d9, B:64:0x03de, B:66:0x03ef, B:67:0x03f5, B:68:0x03fb, B:70:0x040e, B:71:0x0414, B:73:0x0424, B:74:0x042a, B:76:0x043a, B:77:0x0440, B:98:0x0502, B:100:0x050e, B:102:0x051e, B:103:0x0524, B:105:0x0534, B:106:0x0539, B:108:0x0549, B:109:0x054e, B:110:0x0553, B:112:0x0563, B:113:0x0568, B:115:0x0578, B:116:0x057d, B:118:0x058d, B:119:0x0592, B:95:0x04f7), top: B:165:0x0284 }] */
    /* JADX WARN: Code duplicated, block: B:66:0x03ef A[Catch: Exception -> 0x06ed, TryCatch #1 {Exception -> 0x06ed, blocks: (B:59:0x03c2, B:61:0x03c7, B:63:0x03d9, B:64:0x03de, B:66:0x03ef, B:67:0x03f5, B:68:0x03fb, B:70:0x040e, B:71:0x0414, B:73:0x0424, B:74:0x042a, B:76:0x043a, B:77:0x0440, B:98:0x0502, B:100:0x050e, B:102:0x051e, B:103:0x0524, B:105:0x0534, B:106:0x0539, B:108:0x0549, B:109:0x054e, B:110:0x0553, B:112:0x0563, B:113:0x0568, B:115:0x0578, B:116:0x057d, B:118:0x058d, B:119:0x0592, B:95:0x04f7), top: B:165:0x0284 }] */
    /* JADX WARN: Code duplicated, block: B:67:0x03f5 A[Catch: Exception -> 0x06ed, TryCatch #1 {Exception -> 0x06ed, blocks: (B:59:0x03c2, B:61:0x03c7, B:63:0x03d9, B:64:0x03de, B:66:0x03ef, B:67:0x03f5, B:68:0x03fb, B:70:0x040e, B:71:0x0414, B:73:0x0424, B:74:0x042a, B:76:0x043a, B:77:0x0440, B:98:0x0502, B:100:0x050e, B:102:0x051e, B:103:0x0524, B:105:0x0534, B:106:0x0539, B:108:0x0549, B:109:0x054e, B:110:0x0553, B:112:0x0563, B:113:0x0568, B:115:0x0578, B:116:0x057d, B:118:0x058d, B:119:0x0592, B:95:0x04f7), top: B:165:0x0284 }] */
    /* JADX WARN: Code duplicated, block: B:68:0x03fb A[Catch: Exception -> 0x06ed, TryCatch #1 {Exception -> 0x06ed, blocks: (B:59:0x03c2, B:61:0x03c7, B:63:0x03d9, B:64:0x03de, B:66:0x03ef, B:67:0x03f5, B:68:0x03fb, B:70:0x040e, B:71:0x0414, B:73:0x0424, B:74:0x042a, B:76:0x043a, B:77:0x0440, B:98:0x0502, B:100:0x050e, B:102:0x051e, B:103:0x0524, B:105:0x0534, B:106:0x0539, B:108:0x0549, B:109:0x054e, B:110:0x0553, B:112:0x0563, B:113:0x0568, B:115:0x0578, B:116:0x057d, B:118:0x058d, B:119:0x0592, B:95:0x04f7), top: B:165:0x0284 }] */
    /* JADX WARN: Code duplicated, block: B:70:0x040e A[Catch: Exception -> 0x06ed, TryCatch #1 {Exception -> 0x06ed, blocks: (B:59:0x03c2, B:61:0x03c7, B:63:0x03d9, B:64:0x03de, B:66:0x03ef, B:67:0x03f5, B:68:0x03fb, B:70:0x040e, B:71:0x0414, B:73:0x0424, B:74:0x042a, B:76:0x043a, B:77:0x0440, B:98:0x0502, B:100:0x050e, B:102:0x051e, B:103:0x0524, B:105:0x0534, B:106:0x0539, B:108:0x0549, B:109:0x054e, B:110:0x0553, B:112:0x0563, B:113:0x0568, B:115:0x0578, B:116:0x057d, B:118:0x058d, B:119:0x0592, B:95:0x04f7), top: B:165:0x0284 }] */
    /* JADX WARN: Code duplicated, block: B:71:0x0414 A[Catch: Exception -> 0x06ed, TryCatch #1 {Exception -> 0x06ed, blocks: (B:59:0x03c2, B:61:0x03c7, B:63:0x03d9, B:64:0x03de, B:66:0x03ef, B:67:0x03f5, B:68:0x03fb, B:70:0x040e, B:71:0x0414, B:73:0x0424, B:74:0x042a, B:76:0x043a, B:77:0x0440, B:98:0x0502, B:100:0x050e, B:102:0x051e, B:103:0x0524, B:105:0x0534, B:106:0x0539, B:108:0x0549, B:109:0x054e, B:110:0x0553, B:112:0x0563, B:113:0x0568, B:115:0x0578, B:116:0x057d, B:118:0x058d, B:119:0x0592, B:95:0x04f7), top: B:165:0x0284 }] */
    /* JADX WARN: Code duplicated, block: B:73:0x0424 A[Catch: Exception -> 0x06ed, TryCatch #1 {Exception -> 0x06ed, blocks: (B:59:0x03c2, B:61:0x03c7, B:63:0x03d9, B:64:0x03de, B:66:0x03ef, B:67:0x03f5, B:68:0x03fb, B:70:0x040e, B:71:0x0414, B:73:0x0424, B:74:0x042a, B:76:0x043a, B:77:0x0440, B:98:0x0502, B:100:0x050e, B:102:0x051e, B:103:0x0524, B:105:0x0534, B:106:0x0539, B:108:0x0549, B:109:0x054e, B:110:0x0553, B:112:0x0563, B:113:0x0568, B:115:0x0578, B:116:0x057d, B:118:0x058d, B:119:0x0592, B:95:0x04f7), top: B:165:0x0284 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x042a A[Catch: Exception -> 0x06ed, TryCatch #1 {Exception -> 0x06ed, blocks: (B:59:0x03c2, B:61:0x03c7, B:63:0x03d9, B:64:0x03de, B:66:0x03ef, B:67:0x03f5, B:68:0x03fb, B:70:0x040e, B:71:0x0414, B:73:0x0424, B:74:0x042a, B:76:0x043a, B:77:0x0440, B:98:0x0502, B:100:0x050e, B:102:0x051e, B:103:0x0524, B:105:0x0534, B:106:0x0539, B:108:0x0549, B:109:0x054e, B:110:0x0553, B:112:0x0563, B:113:0x0568, B:115:0x0578, B:116:0x057d, B:118:0x058d, B:119:0x0592, B:95:0x04f7), top: B:165:0x0284 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x043a A[Catch: Exception -> 0x06ed, TryCatch #1 {Exception -> 0x06ed, blocks: (B:59:0x03c2, B:61:0x03c7, B:63:0x03d9, B:64:0x03de, B:66:0x03ef, B:67:0x03f5, B:68:0x03fb, B:70:0x040e, B:71:0x0414, B:73:0x0424, B:74:0x042a, B:76:0x043a, B:77:0x0440, B:98:0x0502, B:100:0x050e, B:102:0x051e, B:103:0x0524, B:105:0x0534, B:106:0x0539, B:108:0x0549, B:109:0x054e, B:110:0x0553, B:112:0x0563, B:113:0x0568, B:115:0x0578, B:116:0x057d, B:118:0x058d, B:119:0x0592, B:95:0x04f7), top: B:165:0x0284 }] */
    /* JADX WARN: Code duplicated, block: B:77:0x0440 A[Catch: Exception -> 0x06ed, TRY_LEAVE, TryCatch #1 {Exception -> 0x06ed, blocks: (B:59:0x03c2, B:61:0x03c7, B:63:0x03d9, B:64:0x03de, B:66:0x03ef, B:67:0x03f5, B:68:0x03fb, B:70:0x040e, B:71:0x0414, B:73:0x0424, B:74:0x042a, B:76:0x043a, B:77:0x0440, B:98:0x0502, B:100:0x050e, B:102:0x051e, B:103:0x0524, B:105:0x0534, B:106:0x0539, B:108:0x0549, B:109:0x054e, B:110:0x0553, B:112:0x0563, B:113:0x0568, B:115:0x0578, B:116:0x057d, B:118:0x058d, B:119:0x0592, B:95:0x04f7), top: B:165:0x0284 }] */
    /* JADX WARN: Code duplicated, block: B:81:0x044b  */
    /* JADX WARN: Code duplicated, block: B:84:0x0466 A[Catch: Exception -> 0x06f1, TryCatch #8 {Exception -> 0x06f1, blocks: (B:121:0x0598, B:123:0x05ec, B:125:0x05f2, B:127:0x05f8, B:130:0x0603, B:133:0x06a8, B:134:0x06ac, B:132:0x0641, B:82:0x044e, B:84:0x0466, B:85:0x046e, B:87:0x0486, B:88:0x048d, B:90:0x04a3, B:92:0x04c9, B:94:0x04ef, B:97:0x04fa), top: B:177:0x044e }] */
    /* JADX WARN: Code duplicated, block: B:85:0x046e A[Catch: Exception -> 0x06f1, TryCatch #8 {Exception -> 0x06f1, blocks: (B:121:0x0598, B:123:0x05ec, B:125:0x05f2, B:127:0x05f8, B:130:0x0603, B:133:0x06a8, B:134:0x06ac, B:132:0x0641, B:82:0x044e, B:84:0x0466, B:85:0x046e, B:87:0x0486, B:88:0x048d, B:90:0x04a3, B:92:0x04c9, B:94:0x04ef, B:97:0x04fa), top: B:177:0x044e }] */
    /* JADX WARN: Code duplicated, block: B:87:0x0486 A[Catch: Exception -> 0x06f1, TryCatch #8 {Exception -> 0x06f1, blocks: (B:121:0x0598, B:123:0x05ec, B:125:0x05f2, B:127:0x05f8, B:130:0x0603, B:133:0x06a8, B:134:0x06ac, B:132:0x0641, B:82:0x044e, B:84:0x0466, B:85:0x046e, B:87:0x0486, B:88:0x048d, B:90:0x04a3, B:92:0x04c9, B:94:0x04ef, B:97:0x04fa), top: B:177:0x044e }] */
    /* JADX WARN: Code duplicated, block: B:88:0x048d A[Catch: Exception -> 0x06f1, TryCatch #8 {Exception -> 0x06f1, blocks: (B:121:0x0598, B:123:0x05ec, B:125:0x05f2, B:127:0x05f8, B:130:0x0603, B:133:0x06a8, B:134:0x06ac, B:132:0x0641, B:82:0x044e, B:84:0x0466, B:85:0x046e, B:87:0x0486, B:88:0x048d, B:90:0x04a3, B:92:0x04c9, B:94:0x04ef, B:97:0x04fa), top: B:177:0x044e }] */
    /* JADX WARN: Code duplicated, block: B:97:0x04fa A[Catch: Exception -> 0x06f1, TRY_ENTER, TRY_LEAVE, TryCatch #8 {Exception -> 0x06f1, blocks: (B:121:0x0598, B:123:0x05ec, B:125:0x05f2, B:127:0x05f8, B:130:0x0603, B:133:0x06a8, B:134:0x06ac, B:132:0x0641, B:82:0x044e, B:84:0x0466, B:85:0x046e, B:87:0x0486, B:88:0x048d, B:90:0x04a3, B:92:0x04c9, B:94:0x04ef, B:97:0x04fa), top: B:177:0x044e }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r19v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v10 */
    /* JADX WARN: Type inference failed for: r19v11 */
    /* JADX WARN: Type inference failed for: r19v12 */
    /* JADX WARN: Type inference failed for: r19v13 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r19v4 */
    /* JADX WARN: Type inference failed for: r19v5 */
    /* JADX WARN: Type inference failed for: r19v6 */
    /* JADX WARN: Type inference failed for: r19v7 */
    /* JADX WARN: Type inference failed for: r19v8 */
    /* JADX WARN: Type inference failed for: r19v9 */
    /* JADX WARN: Type inference failed for: r1v143, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v144 */
    /* JADX WARN: Type inference failed for: r1v188 */
    /* JADX WARN: Type inference failed for: r1v256 */
    /* JADX WARN: Type inference failed for: r1v274 */
    /* JADX WARN: Type inference failed for: r1v275 */
    /* JADX WARN: Type inference failed for: r1v276 */
    /* JADX WARN: Type inference failed for: r1v277 */
    /* JADX WARN: Type inference failed for: r1v278 */
    /* JADX WARN: Type inference failed for: r1v279 */
    /* JADX WARN: Type inference failed for: r1v280 */
    /* JADX WARN: Type inference failed for: r1v281 */
    /* JADX WARN: Type inference failed for: r1v282 */
    /* JADX WARN: Type inference failed for: r1v283 */
    /* JADX WARN: Type inference failed for: r1v284 */
    /* JADX WARN: Type inference failed for: r1v285 */
    /* JADX WARN: Type inference failed for: r1v286 */
    /* JADX WARN: Type inference failed for: r1v287 */
    /* JADX WARN: Type inference failed for: r1v288 */
    /* JADX WARN: Type inference failed for: r1v289 */
    /* JADX WARN: Type inference failed for: r1v290 */
    /* JADX WARN: Type inference failed for: r1v291 */
    /* JADX WARN: Type inference failed for: r1v292 */
    /* JADX WARN: Type inference failed for: r1v293 */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.String] */
    public InGame_ProvinceArmy() {
        int i;
        int i2;
        ArrayList arrayList;
        ?? r19;
        int size;
        int posY;
        int i3;
        Exception exc;
        int armyKeyID;
        int buttonHeight;
        int height;
        int width;
        ?? r1;
        int i4;
        String str;
        ?? r2;
        int height2;
        int i5;
        int i6;
        int toProvinceLastID;
        this.imageOverID = 0;
        ArrayList arrayList2 = new ArrayList();
        int i7 = CFG.PADDING;
        ImageManager.getImage(Images.title530).getHeight();
        int width2 = ImageManager.getImage(Images.title530).getWidth() - Images.boxTitleBORDERWIDTH;
        int height3 = ImageManager.getImage(Images.armyCampOver0).getHeight();
        int i8 = CFG.GAME_HEIGHT;
        int i9 = CFG.PADDING * 2;
        int i10 = CFG.PADDING * 2;
        int width3 = ImageManager.getImage(Images.generalFrame).getWidth() + (i10 * 2);
        ?? r110 = "";
        besiegesProvince = false;
        try {
            if (Game.activeArmySize > 0) {
                try {
                    if (iActiveID >= Game.activeArmySize) {
                        try {
                            iActiveID = 0;
                            sActiveKEY = Game.activeArmy.get(iActiveID).key;
                            armyKeyID = Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmyKeyID(Game.activeArmy.get(iActiveID).key);
                            InGame_ProvinceArmyUnits.iActiveID = iActiveID;
                            InGame_ProvinceArmyUnits.tDivID = armyKeyID;
                            InGame_ProvinceArmyUnits.key = Game.activeArmy.get(iActiveID).key;
                            iCivFlagID = Game.activeArmy.get(iActiveID).iCivID;
                            iProvinceID = Game.activeArmy.get(iActiveID).iProvinceID;
                            if (armyKeyID >= 0) {
                                key = Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).key;
                            } else {
                                key = "";
                            }
                            buttonHeight = ButtonArmyID.getButtonHeight() + i9 + CFG.PADDING;
                            if (armyKeyID >= 0) {
                                if (Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).armyGeneral == null) {
                                    arrayList2.add(new AnonymousClass1(Game.lang.get("NoGeneral"), iCivFlagID, i10, buttonHeight));
                                    i = height3;
                                    i2 = width2;
                                    arrayList = arrayList2;
                                } else {
                                    i = height3;
                                    i2 = width2;
                                    try {
                                        arrayList = arrayList2;
                                        try {
                                            arrayList.add(new AnonymousClass2(Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).armyGeneral.n, iCivFlagID, Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).armyGeneral.getAttack(), Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).armyGeneral.getDefense(), i10, buttonHeight, Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).armyGeneral.g, Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).armyGeneral.d, Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).armyGeneral.m, Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).armyGeneral.y, Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).armyGeneral.sI, Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).armyGeneral.getCombatExperience()));
                                        } catch (Exception e) {
                                            e = e;
                                            exc = e;
                                            r110 = r110;
                                            try {
                                                CFG.exceptionStack(exc);
                                                r19 = r110;
                                            } catch (Exception e2) {
                                                e = e2;
                                                CFG.exceptionStack(e);
                                                r19 = r110;
                                            }
                                            ?? r4 = r19;
                                            size = arrayList.size();
                                            posY = 0;
                                            for (i3 = 0; i3 < size; i3++) {
                                                if (posY < arrayList.get(i3).getPosY() + arrayList.get(i3).getHeight() + CFG.PADDING) {
                                                    posY = arrayList.get(i3).getPosY() + arrayList.get(i3).getHeight() + CFG.PADDING;
                                                }
                                            }
                                            int iMax = Math.max(i, posY);
                                            int i11 = CFG.GAME_HEIGHT - iMax;
                                            int i12 = i2;
                                            arrayList.add(new Empty(0, 0, i12, Math.max(posY, iMax)));
                                            InGame_ProvinceArmyUnits.mPosX = width3 - CFG.PADDING;
                                            InGame_ProvinceArmyUnits.mPosY = ButtonArmyID.getButtonHeight() + i11 + i9;
                                            InGame_ProvinceArmyUnits.mWidth = i12 - InGame_ProvinceArmyUnits.mPosX;
                                            InGame_ProvinceArmyTopBar.mPosX = 0;
                                            InGame_ProvinceArmyTopBar.mPosY = i11;
                                            InGame_ProvinceArmyTopBar.mWidth = i12;
                                            initMenu(new AnonymousClass7(Game.getProvince(iProvinceID).getProvinceName(), r4, false, false, Images.title530), 0, i11, i12, iMax, arrayList, false, true);
                                        }
                                    } catch (Exception e3) {
                                        e = e3;
                                        arrayList = arrayList2;
                                    }
                                }
                                height = buttonHeight + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                                int width4 = ImageManager.getImage(Images.morale).getWidth();
                                width = width4 < ImageManager.getImage(Images.gold).getWidth() ? ImageManager.getImage(Images.gold).getWidth() : width4;
                                r1 = Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).inMovement;
                                try {
                                    if (r1 != 0) {
                                        i6 = 0;
                                        while (true) {
                                            if (i6 < Game.getCiv(Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).civID).getMoveUnitsSize()) {
                                                toProvinceLastID = -1;
                                                break;
                                            } else {
                                                if (Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).key.equals(Game.getCiv(Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).civID).getMoveUnits(i6).key)) {
                                                    toProvinceLastID = Game.getCiv(Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).civID).getMoveUnits(i6).getToProvinceLastID();
                                                    break;
                                                }
                                                i6++;
                                            }
                                        }
                                        if (Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).inBattle) {
                                            r1 = Game.lang.get("ArmyIsFightingInABattle");
                                        } else if (Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).inRetreat) {
                                            if (toProvinceLastID >= 0) {
                                                r1 = Game.lang.get("ArmyIsRetreating") + ": " + Game.getProvince(toProvinceLastID).getProvinceName();
                                            } else {
                                                r1 = Game.lang.get("ArmyIsRetreating");
                                            }
                                        } else if (toProvinceLastID >= 0) {
                                            r1 = Game.lang.get("MovingTo") + ": " + Game.getProvince(toProvinceLastID).getProvinceName();
                                        } else {
                                            r1 = Game.lang.get("Moving");
                                        }
                                        try {
                                            if (Game.getProvince(iProvinceID).getSeaProvince()) {
                                                if (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).OVER_IMAGE_ID == 0) {
                                                    this.imageOverID = Images.armyAtSea0;
                                                } else if (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).OVER_IMAGE_ID == 1) {
                                                    this.imageOverID = Images.armyAtSea1;
                                                } else {
                                                    i4 = 2;
                                                    if (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).OVER_IMAGE_ID == 2) {
                                                        this.imageOverID = Images.armyAtSea2;
                                                        r2 = r1;
                                                    } else {
                                                        this.imageOverID = Images.armyAtSea3;
                                                        r2 = r1;
                                                    }
                                                }
                                                i4 = 2;
                                                r2 = r1;
                                            } else {
                                                i4 = 2;
                                                if (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).OVER_IMAGE_ID == 0) {
                                                    this.imageOverID = Images.armyMove0;
                                                    r2 = r1;
                                                } else if (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).OVER_IMAGE_ID == 1) {
                                                    this.imageOverID = Images.armyMove1;
                                                    r2 = r1;
                                                } else if (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).OVER_IMAGE_ID == 2) {
                                                    this.imageOverID = Images.armyMove2;
                                                    r2 = r1;
                                                } else {
                                                    this.imageOverID = Images.armyMove3;
                                                    r2 = r1;
                                                }
                                            }
                                        } catch (Exception e4) {
                                            e = e4;
                                            r110 = r1;
                                            exc = e;
                                            r110 = r110;
                                            CFG.exceptionStack(exc);
                                            r19 = r110;
                                        }
                                    } else {
                                        i4 = 2;
                                        try {
                                            if (Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).inBattle) {
                                                str = Game.lang.get("ArmyIsFightingInABattle");
                                            } else if (Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).inRetreat) {
                                                str = Game.lang.get("ArmyIsRetreating");
                                            } else if (Game.getProvinceData4(Game.activeArmy.get(iActiveID).iProvinceID).isUnderSiege() || !(DiplomacyManager.isAtWar(Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getCivID(), Game.activeArmy.get(iActiveID).iCivID) || DiplomacyManager.isAtWar(Game.getProvinceData(Game.activeArmy.get(iActiveID).iProvinceID).getOccupiedByCivID(), Game.activeArmy.get(iActiveID).iCivID))) {
                                                str = Game.lang.get("WaitingForOrders");
                                            } else {
                                                String str2 = Game.lang.get("ArmyBesiegesProvince");
                                                besiegesProvince = true;
                                                str = str2;
                                            }
                                            if (Game.getProvince(iProvinceID).getSeaProvince()) {
                                                if (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).OVER_IMAGE_ID == 0) {
                                                    this.imageOverID = Images.armyAtSea0;
                                                    r2 = str;
                                                } else if (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).OVER_IMAGE_ID == 1) {
                                                    this.imageOverID = Images.armyAtSea1;
                                                    r2 = str;
                                                } else if (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).OVER_IMAGE_ID == 2) {
                                                    this.imageOverID = Images.armyAtSea2;
                                                    r2 = str;
                                                } else {
                                                    this.imageOverID = Images.armyAtSea3;
                                                    r2 = str;
                                                }
                                            } else if (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).OVER_IMAGE_ID == 0) {
                                                this.imageOverID = Images.armyCampOver0;
                                                r2 = str;
                                            } else if (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).OVER_IMAGE_ID == 1) {
                                                this.imageOverID = Images.armyCampOver1;
                                                r2 = str;
                                            } else if (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).OVER_IMAGE_ID == 2) {
                                                this.imageOverID = Images.armyCampOver2;
                                                r2 = str;
                                            } else {
                                                this.imageOverID = Images.armyCampOver3;
                                                r2 = str;
                                            }
                                        } catch (Exception e5) {
                                            e = e5;
                                            exc = e;
                                            r110 = r110;
                                            CFG.exceptionStack(exc);
                                            r19 = r110;
                                        }
                                    }
                                    r110 = r2;
                                    arrayList.add(new AnonymousClass3("", iProvinceID, Images.siege, i10, height, ImageManager.getImage(Images.generalFrame).getWidth(), ((CFG.TEXT_HEIGHT + (CFG.PADDING * 4)) * i4) + CFG.PADDING, ImageManager.getImage(Images.siege).getWidth()));
                                    int i13 = Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).civID;
                                    if (Game.FOG_OF_WAR || !GameValues.fog.HIDE_MANPOWER || i13 == Game.player.iCivID || DiplomacyManager.isAlly(i13, Game.player.iCivID)) {
                                        arrayList.add(new AnonymousClass4(CFG.getPrecision2(Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).fMorale * 100.0f, 1) + "%", Images.morale, i10, height, ImageManager.getImage(Images.generalFrame).getWidth(), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), width));
                                        height2 = arrayList.get(arrayList.size() - 1).getHeight();
                                        i5 = CFG.PADDING;
                                    } else {
                                        arrayList.add(new AnonymousClass5(GameValues.fog.TEXT_UNKNOWN_MANPOWER, Images.gold, i10, height, ImageManager.getImage(Images.generalFrame).getWidth(), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), width));
                                        height2 = arrayList.get(arrayList.size() - 1).getHeight();
                                        i5 = CFG.PADDING;
                                    }
                                    arrayList.add(new AnonymousClass6(CFG.getPrecision2(Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).getArmyMovementSpeed(), 100), Images.movementSpeed, i10, height + height2 + i5, ImageManager.getImage(Images.generalFrame).getWidth(), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), width));
                                    r19 = r110;
                                } catch (Exception e6) {
                                    e = e6;
                                }
                            } else {
                                i = height3;
                                i2 = width2;
                                arrayList = arrayList2;
                                r19 = r110;
                            }
                        } catch (Exception e7) {
                            exc = e7;
                            i = height3;
                            i2 = width2;
                            arrayList = arrayList2;
                            r110 = r110;
                            CFG.exceptionStack(exc);
                            r19 = r110;
                        }
                    } else {
                        armyKeyID = Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmyKeyID(Game.activeArmy.get(iActiveID).key);
                        InGame_ProvinceArmyUnits.iActiveID = iActiveID;
                        InGame_ProvinceArmyUnits.tDivID = armyKeyID;
                        InGame_ProvinceArmyUnits.key = Game.activeArmy.get(iActiveID).key;
                        iCivFlagID = Game.activeArmy.get(iActiveID).iCivID;
                        iProvinceID = Game.activeArmy.get(iActiveID).iProvinceID;
                        if (armyKeyID >= 0) {
                            key = Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).key;
                        } else {
                            key = "";
                        }
                        buttonHeight = ButtonArmyID.getButtonHeight() + i9 + CFG.PADDING;
                        if (armyKeyID >= 0) {
                            if (Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).armyGeneral == null) {
                                arrayList2.add(new AnonymousClass1(Game.lang.get("NoGeneral"), iCivFlagID, i10, buttonHeight));
                                i = height3;
                                i2 = width2;
                                arrayList = arrayList2;
                            } else {
                                i = height3;
                                i2 = width2;
                                arrayList = arrayList2;
                                arrayList.add(new AnonymousClass2(Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).armyGeneral.n, iCivFlagID, Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).armyGeneral.getAttack(), Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).armyGeneral.getDefense(), i10, buttonHeight, Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).armyGeneral.g, Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).armyGeneral.d, Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).armyGeneral.m, Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).armyGeneral.y, Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).armyGeneral.sI, Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).armyGeneral.getCombatExperience()));
                            }
                            height = buttonHeight + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                            int width5 = ImageManager.getImage(Images.morale).getWidth();
                            width = width5 < ImageManager.getImage(Images.gold).getWidth() ? ImageManager.getImage(Images.gold).getWidth() : width5;
                            r1 = Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).inMovement;
                            if (r1 != 0) {
                                i6 = 0;
                                while (true) {
                                    if (i6 < Game.getCiv(Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).civID).getMoveUnitsSize()) {
                                        toProvinceLastID = -1;
                                        break;
                                    } else {
                                        if (Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).key.equals(Game.getCiv(Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).civID).getMoveUnits(i6).key)) {
                                            toProvinceLastID = Game.getCiv(Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).civID).getMoveUnits(i6).getToProvinceLastID();
                                            break;
                                        }
                                        i6++;
                                    }
                                }
                                if (Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).inBattle) {
                                    r1 = Game.lang.get("ArmyIsFightingInABattle");
                                } else if (Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).inRetreat) {
                                    if (toProvinceLastID >= 0) {
                                        r1 = Game.lang.get("ArmyIsRetreating") + ": " + Game.getProvince(toProvinceLastID).getProvinceName();
                                    } else {
                                        r1 = Game.lang.get("ArmyIsRetreating");
                                    }
                                } else if (toProvinceLastID >= 0) {
                                    r1 = Game.lang.get("MovingTo") + ": " + Game.getProvince(toProvinceLastID).getProvinceName();
                                } else {
                                    r1 = Game.lang.get("Moving");
                                }
                                if (Game.getProvince(iProvinceID).getSeaProvince()) {
                                    if (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).OVER_IMAGE_ID == 0) {
                                        this.imageOverID = Images.armyAtSea0;
                                    } else if (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).OVER_IMAGE_ID == 1) {
                                        this.imageOverID = Images.armyAtSea1;
                                    } else {
                                        i4 = 2;
                                        if (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).OVER_IMAGE_ID == 2) {
                                            this.imageOverID = Images.armyAtSea2;
                                            r2 = r1;
                                        } else {
                                            this.imageOverID = Images.armyAtSea3;
                                            r2 = r1;
                                        }
                                    }
                                    i4 = 2;
                                    r2 = r1;
                                } else {
                                    i4 = 2;
                                    if (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).OVER_IMAGE_ID == 0) {
                                        this.imageOverID = Images.armyMove0;
                                        r2 = r1;
                                    } else if (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).OVER_IMAGE_ID == 1) {
                                        this.imageOverID = Images.armyMove1;
                                        r2 = r1;
                                    } else if (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).OVER_IMAGE_ID == 2) {
                                        this.imageOverID = Images.armyMove2;
                                        r2 = r1;
                                    } else {
                                        this.imageOverID = Images.armyMove3;
                                        r2 = r1;
                                    }
                                }
                            } else {
                                i4 = 2;
                                if (Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).inBattle) {
                                    str = Game.lang.get("ArmyIsFightingInABattle");
                                } else if (Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).inRetreat) {
                                    str = Game.lang.get("ArmyIsRetreating");
                                } else if (Game.getProvinceData4(Game.activeArmy.get(iActiveID).iProvinceID).isUnderSiege()) {
                                    str = Game.lang.get("WaitingForOrders");
                                } else {
                                    str = Game.lang.get("WaitingForOrders");
                                }
                                if (Game.getProvince(iProvinceID).getSeaProvince()) {
                                    if (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).OVER_IMAGE_ID == 0) {
                                        this.imageOverID = Images.armyAtSea0;
                                        r2 = str;
                                    } else if (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).OVER_IMAGE_ID == 1) {
                                        this.imageOverID = Images.armyAtSea1;
                                        r2 = str;
                                    } else if (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).OVER_IMAGE_ID == 2) {
                                        this.imageOverID = Images.armyAtSea2;
                                        r2 = str;
                                    } else {
                                        this.imageOverID = Images.armyAtSea3;
                                        r2 = str;
                                    }
                                } else if (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).OVER_IMAGE_ID == 0) {
                                    this.imageOverID = Images.armyCampOver0;
                                    r2 = str;
                                } else if (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).OVER_IMAGE_ID == 1) {
                                    this.imageOverID = Images.armyCampOver1;
                                    r2 = str;
                                } else if (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).OVER_IMAGE_ID == 2) {
                                    this.imageOverID = Images.armyCampOver2;
                                    r2 = str;
                                } else {
                                    this.imageOverID = Images.armyCampOver3;
                                    r2 = str;
                                }
                            }
                            r110 = r2;
                            arrayList.add(new AnonymousClass3("", iProvinceID, Images.siege, i10, height, ImageManager.getImage(Images.generalFrame).getWidth(), ((CFG.TEXT_HEIGHT + (CFG.PADDING * 4)) * i4) + CFG.PADDING, ImageManager.getImage(Images.siege).getWidth()));
                            int i14 = Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).civID;
                            if (Game.FOG_OF_WAR) {
                                arrayList.add(new AnonymousClass4(CFG.getPrecision2(Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).fMorale * 100.0f, 1) + "%", Images.morale, i10, height, ImageManager.getImage(Images.generalFrame).getWidth(), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), width));
                                height2 = arrayList.get(arrayList.size() - 1).getHeight();
                                i5 = CFG.PADDING;
                            } else {
                                arrayList.add(new AnonymousClass4(CFG.getPrecision2(Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).fMorale * 100.0f, 1) + "%", Images.morale, i10, height, ImageManager.getImage(Images.generalFrame).getWidth(), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), width));
                                height2 = arrayList.get(arrayList.size() - 1).getHeight();
                                i5 = CFG.PADDING;
                            }
                            arrayList.add(new AnonymousClass6(CFG.getPrecision2(Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).getArmyMovementSpeed(), 100), Images.movementSpeed, i10, height + height2 + i5, ImageManager.getImage(Images.generalFrame).getWidth(), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), width));
                            r19 = r110;
                        } else {
                            i = height3;
                            i2 = width2;
                            arrayList = arrayList2;
                            r19 = r110;
                        }
                    }
                } catch (Exception e8) {
                    e = e8;
                    i = height3;
                    i2 = width2;
                    arrayList = arrayList2;
                }
            } else {
                i = height3;
                i2 = width2;
                arrayList = arrayList2;
                r19 = r110;
            }
        } catch (Exception e9) {
            e = e9;
            i = height3;
            i2 = width2;
            arrayList = arrayList2;
        }
        ?? r5 = r19;
        size = arrayList.size();
        posY = 0;
        while (i3 < size) {
            if (posY < arrayList.get(i3).getPosY() + arrayList.get(i3).getHeight() + CFG.PADDING) {
                posY = arrayList.get(i3).getPosY() + arrayList.get(i3).getHeight() + CFG.PADDING;
            }
        }
        int iMax2 = Math.max(i, posY);
        int i15 = CFG.GAME_HEIGHT - iMax2;
        int i16 = i2;
        arrayList.add(new Empty(0, 0, i16, Math.max(posY, iMax2)));
        InGame_ProvinceArmyUnits.mPosX = width3 - CFG.PADDING;
        InGame_ProvinceArmyUnits.mPosY = ButtonArmyID.getButtonHeight() + i15 + i9;
        InGame_ProvinceArmyUnits.mWidth = i16 - InGame_ProvinceArmyUnits.mPosX;
        InGame_ProvinceArmyTopBar.mPosX = 0;
        InGame_ProvinceArmyTopBar.mPosY = i15;
        InGame_ProvinceArmyTopBar.mWidth = i16;
        initMenu(new AnonymousClass7(Game.getProvince(iProvinceID).getProvinceName(), r5, false, false, Images.title530), 0, i15, i16, iMax2, arrayList, false, true);
    }

    public static void centerToArmy() {
        int armyKeyID = Game.getProvince(iProvinceID).getArmyKeyID(key);
        if (armyKeyID < 0) {
            for (int i = 0; i < Game.getProvincesSize(); i++) {
                int armyKeyID2 = Game.getProvince(i).getArmyKeyID(key, iCivFlagID);
                if (armyKeyID2 >= 0) {
                    iProvinceID = i;
                    armyKeyID = armyKeyID2;
                    break;
                }
            }
        }
        if (armyKeyID >= 0) {
            Game.mapCoords.centerToProvinceID(iProvinceID);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void actionCloseMenu() {
        super.actionCloseMenu();
        Game.clearActiveArmy();
        Game.menuManager.setVisibleInGame_ProvinceArmy(false);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3;
        int i4;
        if (lTime + 60 >= CFG.currentTimeMillis) {
            i3 = (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - lTime) / 60.0f)));
            i4 = i2 + ((int) ((CFG.BUTTON_HEIGHT / 2.0f) - ((CFG.BUTTON_HEIGHT / 2) * ((CFG.currentTimeMillis - lTime) / 60.0f))));
        } else {
            i3 = i;
            i4 = i2;
        }
        if (Game.chooseProvinceMode && chooseProvinceExtraY < getHeight()) {
            chooseProvinceExtraY = (int) Math.min(getHeight(), getHeight() * ((CFG.currentTimeMillis - lTimeMOVE) / 150.0f));
        }
        nTranslateX = i3;
        nTranslateY = i4;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - getTitle().getHeight()) + i4, getWidth() + Images.boxTitleBORDERWIDTH, getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i4, getWidth() + Images.boxTitleBORDERWIDTH, getHeight() + CFG.PADDING, false, Images.insideTop530, Images.insideBot530);
        ImageManager.getImage(this.imageOverID).draw2(spriteBatch, getPosX() + i3, getPosY() + i4, getWidth(), Math.min(getHeight(), ImageManager.getImage(this.imageOverID).getHeight()));
        super.draw(spriteBatch, i3, i4, z, status);
        if (besiegesProvince && !Game.getProvinceData4(iProvinceID).isUnderSiege()) {
            getTitle().setText(Game.lang.get("WaitingForOrders"));
            besiegesProvince = false;
        }
        try {
            if (Game.activeArmySize == 0) {
                Game.addSimpleTask(new AnonymousClass8("setVisibleInGame_ProvinceArmy"));
            } else if (iActiveID >= Game.activeArmySize) {
                iActiveID = 0;
                Game.addSimpleTask(new AnonymousClass9("rebuildInGame_ProvinceArmy"));
            } else {
                int armyKeyID = Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmyKeyID(Game.activeArmy.get(iActiveID).key);
                if (armyKeyID >= 0 && Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(armyKeyID).inBattle) {
                    InGame_Battle.iProvinceID = Game.activeArmy.get(iActiveID).iProvinceID;
                    InGame_Battle.key = Game.battleManager.getArmyBattleKey(Game.activeArmy.get(iActiveID).iProvinceID, Game.activeArmy.get(iActiveID).key);
                    Game.addSimpleTask(new AnonymousClass10("rebuildInGame_Battle"));
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        if (Game.checkActiveArmy_Fog()) {
            Game.addSimpleTask(new AnonymousClass11("rebuildInGame_ProvinceArmy"));
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public int getPosY() {
        if (!Game.chooseProvinceMode) {
            chooseProvinceExtraY = 0;
        }
        return super.getPosY() + chooseProvinceExtraY;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void onHovered() {
        super.onHovered();
        Game.menuManager.setOrderOfMenu_InGameProvinceArmy();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        if (!getVisible()) {
            lTime = CFG.currentTimeMillis;
        }
        if (!z) {
            if (Game.invasionArmyMode) {
                Game.invasionArmyMode = false;
            }
            if (Game.regroupArmyMode) {
                Game.regroupArmyMode = false;
            }
            if (CFG.brushTool) {
                CFG.brushTool = false;
            }
        }
        super.setVisible(z);
    }
}
