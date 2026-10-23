package aoc.kingdoms.lukasz.menusInGame.Province;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.allianceHRE.JgPF.HTGgowNjn;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu_element.button.ButtonArmyID;
import aoc.kingdoms.lukasz.menu_element.button.ButtonArmyIcon;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.menusInGame.InGame_Armies;
import aoc.kingdoms.lukasz.menusInGame.InGame_Disband;
import aoc.kingdoms.lukasz.menusInGame.InGame_Generals;
import aoc.kingdoms.lukasz.menusInGame.InGame_ReorganizeUnits;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_ProvinceArmyTopBar extends Menu {
    public static int mPosX;
    public static int mPosY;
    public static int mWidth;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmyTopBar$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonArmyIcon {
        AnonymousClass1(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_ProvinceArmy.centerToArmy();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("CenterToProvince"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.center, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonArmyIcon
        public int getImageID() {
            return Images.center;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmyTopBar$10, reason: invalid class name */
    class AnonymousClass10 extends ButtonArmyID {
        AnonymousClass10(int i, int i2, String str, int i3, int i4, int i5) {
            super(i, i2, str, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_ProvinceArmy.iActiveID != getCurrent()) {
                InGame_ProvinceArmy.iActiveID = getCurrent();
                InGame_ProvinceArmy.sActiveKEY = Game.activeArmy.get(InGame_ProvinceArmy.iActiveID).key;
                Game.menuManager.rebuildInGame_ProvinceArmy();
                return;
            }
            if (Game.activeArmySize > 1) {
                Game.HoveredArmy hoveredArmy = Game.activeArmy.get(InGame_ProvinceArmy.iActiveID);
                Game.clearActiveArmy();
                Game.addActiveArmy(hoveredArmy);
                InGame_ProvinceArmy.iActiveID = 0;
                InGame_ProvinceArmy.sActiveKEY = Game.activeArmy.get(InGame_ProvinceArmy.iActiveID).key;
                Game.menuManager.rebuildInGame_ProvinceArmy();
                return;
            }
            int armyKeyID = Game.getProvince(this.iProvinceID).getArmyKeyID(InGame_ProvinceArmy.key);
            if (armyKeyID < 0) {
                for (int i = 0; i < Game.getProvincesSize(); i++) {
                    int armyKeyID2 = Game.getProvince(i).getArmyKeyID(InGame_ProvinceArmy.key, this.iCivID);
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
                    return;
                }
                Game.clearActiveArmy();
                Game.HoveredArmy hoveredArmy2 = new Game.HoveredArmy();
                hoveredArmy2.key = Game.getProvince(this.iProvinceID).getArmy(armyKeyID).key;
                hoveredArmy2.iCivID = Game.getProvince(this.iProvinceID).getArmy(armyKeyID).civID;
                hoveredArmy2.iProvinceID = this.iProvinceID;
                hoveredArmy2.iArmyID = armyKeyID;
                Game.addActiveArmy(hoveredArmy2);
                ProvinceTouchExtraAction.actionUp_SetActiveArmy();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            if (InGame_ProvinceArmy.iActiveID == getCurrent()) {
                InGame_ProvinceArmy.iActiveID = 0;
                InGame_ProvinceArmy.sActiveKEY = Game.activeArmy.get(InGame_ProvinceArmy.iActiveID).key;
            } else if (getCurrent() < InGame_ProvinceArmy.iActiveID) {
                InGame_ProvinceArmy.iActiveID = Math.max(0, InGame_ProvinceArmy.iActiveID - 1);
                InGame_ProvinceArmy.sActiveKEY = Game.activeArmy.get(InGame_ProvinceArmy.iActiveID).key;
            }
            Game.removeActiveArmy(getCurrent());
            if (Game.activeArmySize > 0) {
                Game.menuManager.rebuildInGame_ProvinceArmy();
            } else {
                Game.menuManager.setVisibleInGame_ProvinceArmy(false);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmyTopBar$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonArmyIcon {
        AnonymousClass2(int i, int i2, int i3, boolean z) {
            super(i, i2, i3, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            this.checkbox = !this.checkbox;
            Game.player.actionPinArmy(InGame_ProvinceArmy.key);
            Game.menuManager.rebuildInGame_Right();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Pin"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.pin, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonArmyIcon, aoc.kingdoms.lukasz.menu_element.button.Button
        protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            if (!this.checkbox) {
                if (getIsHovered()) {
                    spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.75f));
                } else {
                    spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.25f));
                }
            }
            super.drawText(spriteBatch, i, i2, z);
            spriteBatch.setColor(Color.WHITE);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonArmyIcon
        public int getImageID() {
            return Images.pin;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmyTopBar$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonArmyIcon {
        AnonymousClass3(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.setRegroupArmyMode();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("MoveTheArmies"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.frontLine, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("SelectProvincesToWhichYouWantToMoveArmies"), CFG.FONT_REGULAR_SMALL));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (Game.activeArmySize <= 1) {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("SelectMoreThanOneArmy"), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getClickable() {
            return Game.activeArmySize > 1;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonArmyIcon
        public int getImageID() {
            return Images.frontLine;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmyTopBar$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonArmyIcon {
        AnonymousClass4(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.player.playerData.invasion.removeInvasion(InGame_ProvinceArmy.sActiveKEY);
            Game.setInvasionArmyMode();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            if (!Game.player.playerData.invasion.haveInvasionPlan(InGame_ProvinceArmy.sActiveKEY)) {
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("SelectProvincesToOccupy"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.invasion, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
                return;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("CancelInvasion"), CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.invasion, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Provinces") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.player.playerData.invasion.getInvasionPlan_NumOfProvinces(InGame_ProvinceArmy.sActiveKEY), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonArmyIcon
        public int getImageID() {
            return Images.invasion;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmyTopBar$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonArmyIcon {
        AnonymousClass5(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            for (int i = Game.activeArmySize - 1; i >= 0; i--) {
                Game.getCiv(Game.activeArmy.get(i).iCivID).cancelMove(Game.activeArmy.get(i).key);
            }
            if (Game.menuManager.getVisibleInGame_ProvinceArmy()) {
                Game.menuManager.rebuildInGame_ProvinceArmy(true, true);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("StopMovementOfTheArmy"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.movementCancel, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonArmyIcon
        public int getImageID() {
            return Images.movementCancel;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmyTopBar$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonArmyIcon {
        AnonymousClass6(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            int armyKeyID = Game.getProvince(Game.activeArmy.get(InGame_ProvinceArmy.iActiveID).iProvinceID).getArmyKeyID(InGame_ProvinceArmy.key);
            if (armyKeyID < 0) {
                Game.menuManager.addToast_Error(Game.lang.get(HTGgowNjn.xQpIiqZ));
                return;
            }
            if (Game.getProvince(Game.activeArmy.get(InGame_ProvinceArmy.iActiveID).iProvinceID).getArmy(armyKeyID).civID == Game.player.iCivID) {
                InGame_ReorganizeUnits.setArmyLeft(Game.getProvince(Game.activeArmy.get(InGame_ProvinceArmy.iActiveID).iProvinceID).getArmy(armyKeyID));
                Game.menuManager.rebuildInGame_ReorganizeUnits();
                if (Game.menuManager.getVisibleInGame_DisbandArmy()) {
                    Game.menuManager.setVisibleInGame_DisbandUnits(false);
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ReorganizeUnits"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_MANPOWER_REORGANIZE, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonArmyIcon
        public int getImageID() {
            return Game_Calendar.IMG_MANPOWER_REORGANIZE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmyTopBar$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonArmyIcon {
        AnonymousClass7(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            int armyKeyID = Game.getProvince(Game.activeArmy.get(InGame_ProvinceArmy.iActiveID).iProvinceID).getArmyKeyID(InGame_ProvinceArmy.key);
            if (armyKeyID < 0) {
                Game.menuManager.addToast_Error(Game.lang.get("ArmyNotFound"));
                return;
            }
            if (Game.getProvince(Game.activeArmy.get(InGame_ProvinceArmy.iActiveID).iProvinceID).getArmy(armyKeyID).civID == Game.player.iCivID) {
                Game.getProvince(Game.activeArmy.get(InGame_ProvinceArmy.iActiveID).iProvinceID).splitInHalf(armyKeyID);
                Game.menuManager.rebuildInGame_ProvinceArmy();
                if (Game.menuManager.getVisibleInGame_Armies()) {
                    Game.menuManager.rebuildInGame_Armies(false, false);
                    Game.menuManager.setVisibleInGame_Armies(true);
                    InGame_Armies.lTime = 0L;
                }
                if (Game.menuManager.getVisibleInGame_ReorganizeUnits()) {
                    Game.menuManager.setVisibleInGame_ReorganizeUnits(false);
                }
                if (Game.menuManager.getVisibleInGame_DisbandArmy()) {
                    Game.menuManager.setVisibleInGame_DisbandUnits(false);
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("SplitInHalf"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_MANPOWER_SPLIT, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonArmyIcon
        public int getImageID() {
            return Game_Calendar.IMG_MANPOWER_SPLIT;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmyTopBar$8, reason: invalid class name */
    class AnonymousClass8 extends ButtonArmyIcon {
        AnonymousClass8(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.activeArmySize > 1) {
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < Game.activeArmySize; i++) {
                    if (Game.activeArmy.get(InGame_ProvinceArmy.iActiveID).iProvinceID == Game.activeArmy.get(i).iProvinceID && Game.player.iCivID == Game.activeArmy.get(i).iCivID) {
                        arrayList.add(Game.activeArmy.get(i).key);
                    }
                }
                String strMergeUnits = Game.getProvince(Game.activeArmy.get(InGame_ProvinceArmy.iActiveID).iProvinceID).mergeUnits(arrayList);
                if (strMergeUnits != null) {
                    Game.setActiveArmy(Game.activeArmy.get(InGame_ProvinceArmy.iActiveID).iProvinceID, strMergeUnits);
                    InGame_ProvinceArmy.iActiveID = 0;
                    InGame_ProvinceArmy.sActiveKEY = Game.activeArmy.get(InGame_ProvinceArmy.iActiveID).key;
                    Game.menuManager.rebuildInGame_ProvinceArmy();
                } else {
                    Game.clearActiveArmy();
                    Game.menuManager.setVisibleInGame_ProvinceArmy(false);
                }
                if (Game.menuManager.getVisibleInGame_Generals()) {
                    Game.menuManager.rebuildInGame_Generals();
                    Game.menuManager.setVisibleInGame_Generals(true);
                    InGame_Generals.lTime = 0L;
                }
                if (Game.menuManager.getVisibleInGame_Armies()) {
                    Game.menuManager.rebuildInGame_Armies(false, false);
                    Game.menuManager.setVisibleInGame_Armies(true);
                    InGame_Armies.lTime = 0L;
                }
                if (Game.menuManager.getVisibleInGame_ReorganizeUnits()) {
                    Game.menuManager.setVisibleInGame_ReorganizeUnits(false);
                }
                if (Game.menuManager.getVisibleInGame_DisbandArmy()) {
                    Game.menuManager.setVisibleInGame_DisbandUnits(false);
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("MergeUnits"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_MANPOWER_MERGE, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getClickable() {
            return super.getClickable() && Game.activeArmySize > 1;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonArmyIcon
        public int getImageID() {
            return Game_Calendar.IMG_MANPOWER_MERGE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmyTopBar$9, reason: invalid class name */
    class AnonymousClass9 extends ButtonArmyIcon {
        AnonymousClass9(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            int armyKeyID = Game.getProvince(Game.activeArmy.get(InGame_ProvinceArmy.iActiveID).iProvinceID).getArmyKeyID(InGame_ProvinceArmy.key);
            if (armyKeyID < 0) {
                Game.menuManager.addToast_Error(Game.lang.get("ArmyNotFound"));
                return;
            }
            if (Game.getProvince(Game.activeArmy.get(InGame_ProvinceArmy.iActiveID).iProvinceID).getArmy(armyKeyID).civID == Game.player.iCivID) {
                InGame_Disband.setArmyLeft(Game.getProvince(Game.activeArmy.get(InGame_ProvinceArmy.iActiveID).iProvinceID).getArmy(armyKeyID));
                Game.menuManager.rebuildInGame_DisbandUnits();
                if (Game.menuManager.getVisibleInGame_ReorganizeUnits()) {
                    Game.menuManager.setVisibleInGame_ReorganizeUnits(false);
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("DisbandUnits"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_MANPOWER_DISBAND, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonArmyIcon
        public int getImageID() {
            return Game_Calendar.IMG_MANPOWER_DISBAND;
        }
    }

    public InGame_ProvinceArmyTopBar() {
        ArrayList arrayList = new ArrayList();
        int i = CFG.PADDING * 2;
        int i2 = CFG.PADDING * 2;
        int i3 = CFG.PADDING;
        ImageManager.getImage(Images.generalFrame).getWidth();
        int armyKeyID = Game.getProvince(Game.activeArmy.get(InGame_ProvinceArmy.iActiveID).iProvinceID).getArmyKeyID(Game.activeArmy.get(InGame_ProvinceArmy.iActiveID).key);
        arrayList.add(new AnonymousClass1(Images.center, i, i2));
        int width = i + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
        if (armyKeyID >= 0) {
            if (Game.getProvince(Game.activeArmy.get(InGame_ProvinceArmy.iActiveID).iProvinceID).getArmy(armyKeyID).civID == Game.player.iCivID) {
                arrayList.add(new AnonymousClass2(Images.pin, width, i2, Game.player.isPinned(InGame_ProvinceArmy.key)));
                int width2 = width + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                arrayList.add(new AnonymousClass3(Images.frontLine, width2, i2));
                int width3 = width2 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                arrayList.add(new AnonymousClass4(Images.invasion, width3, i2));
                int width4 = width3 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                arrayList.add(new AnonymousClass5(Images.movementCancel, width4, i2));
                int width5 = width4 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                arrayList.add(new AnonymousClass6(Images.reorganizeArmy, width5, i2));
                arrayList.get(arrayList.size() - 1).setClickable(Game.getProvince(Game.activeArmy.get(InGame_ProvinceArmy.iActiveID).iProvinceID).getArmy(armyKeyID).iArmyRegimentSize > 1);
                int width6 = width5 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                arrayList.add(new AnonymousClass7(Images.splitArmy, width6, i2));
                arrayList.get(arrayList.size() - 1).setClickable(Game.getProvince(Game.activeArmy.get(InGame_ProvinceArmy.iActiveID).iProvinceID).getArmy(armyKeyID).iArmyRegimentSize > 1);
                int width7 = width6 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                arrayList.add(new AnonymousClass8(Images.mergeArmy, width7, i2));
                int width8 = width7 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                arrayList.add(new AnonymousClass9(Images.disbandArmy, width8, i2));
                width = width8 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            }
            int width9 = width;
            for (int i4 = 0; i4 < Game.activeArmySize; i4++) {
                int armyKeyID2 = Game.getProvince(Game.activeArmy.get(i4).iProvinceID).getArmyKeyID(Game.activeArmy.get(i4).key);
                if (armyKeyID2 >= 0) {
                    int i5 = Game.getProvince(Game.activeArmy.get(i4).iProvinceID).getArmy(armyKeyID2).civID;
                    arrayList.add(new AnonymousClass10(Game.getProvince(Game.activeArmy.get(i4).iProvinceID).getArmy(armyKeyID2).civID, Game.getProvince(Game.activeArmy.get(i4).iProvinceID).getArmy(armyKeyID2).provinceID, (!Game.FOG_OF_WAR || !GameValues.fog.HIDE_ARMIES || i5 == Game.player.iCivID || DiplomacyManager.isAlly(i5, Game.player.iCivID)) ? CFG.getNumberWithSpaces("" + Game.getProvince(Game.activeArmy.get(i4).iProvinceID).getArmy(armyKeyID2).iArmy) : GameValues.fog.TEXT_UNKNOWN_ARMIES, width9, i2, i4));
                    width9 += arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                }
            }
        }
        int size = arrayList.size();
        int posY = 0;
        for (int i6 = 0; i6 < size; i6++) {
            if (posY < arrayList.get(i6).getPosY() + arrayList.get(i6).getHeight() + CFG.PADDING) {
                posY = arrayList.get(i6).getPosY() + arrayList.get(i6).getHeight() + CFG.PADDING;
            }
        }
        initMenu(null, mPosX, mPosY, mWidth, Math.max(CFG.PADDING, posY), arrayList, false);
        this.drawScrollPositionAlways = false;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public int getMenuPosX() {
        return super.getMenuPosX() + InGame_ProvinceArmy.nTranslateX;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public int getMenuPosY() {
        return super.getMenuPosY() + InGame_ProvinceArmy.nTranslateY;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public int getPosX() {
        return super.getPosX() + InGame_ProvinceArmy.nTranslateX;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public int getPosY() {
        return super.getPosY() + InGame_ProvinceArmy.nTranslateY + InGame_ProvinceArmy.chooseProvinceExtraY;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void onHovered() {
        super.onHovered();
        Game.menuManager.setOrderOfMenu_InGameProvinceArmy();
    }
}
