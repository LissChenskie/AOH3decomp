package aoc.kingdoms.lukasz.menusInGame;

import aoc.kingdoms.lukasz.jakowski.AI.Government.nSju.IlLkpaQxs;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.army.ArmyManager;
import aoc.kingdoms.lukasz.map.battles.BattleManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonArmyBattle;
import aoc.kingdoms.lukasz.menu_element.button.ButtonArmyBattle_Upgrade;
import aoc.kingdoms.lukasz.menu_element.button.ButtonArmyGeneral2_Armies;
import aoc.kingdoms.lukasz.menu_element.button.ButtonArmyIcon_Special;
import aoc.kingdoms.lukasz.menu_element.button.ButtonArmyNoGeneral2_Armies;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Click;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Empty;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextArmies;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2Center;
import aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battlefield;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.backends.android.Zrdz.PxHJ;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Armies extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static long lTime;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Armies$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, i7, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_Armies(false);
            InGame_RecruitArmy.actionCreateNewArmy();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("CreateNewArmy"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (CFG.isDesktop()) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Shortcut") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("V", CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList, !CFG.isDesktop());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Armies$10, reason: invalid class name */
    class AnonymousClass10 extends ButtonArmyIcon_Special {
        AnonymousClass10(int i, int i2, int i3, boolean z, String str, int i4) {
            super(i, i2, i3, z, str, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            this.checkbox = !this.checkbox;
            Game.player.actionPinArmy(this.armyKey);
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Armies$11, reason: invalid class name */
    class AnonymousClass11 extends ButtonArmyIcon_Special {
        AnonymousClass11(int i, int i2, int i3, boolean z, String str, int i4) {
            super(i, i2, i3, z, str, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.ArmyPos armyPosFindArmy_FullCheck = Game.findArmy_FullCheck(Game.player.iCivID, this.armyKey);
            if (armyPosFindArmy_FullCheck != null) {
                Game.mapCoords.centerToProvinceID(armyPosFindArmy_FullCheck.iProvinceID);
            }
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Armies$12, reason: invalid class name */
    class AnonymousClass12 extends ButtonStatsRectIMG_Active_Click {
        String key;

        AnonymousClass12(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, i7, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).iArmyPositionSize > 0) {
                try {
                    if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 51) {
                        Game.menuManager.setVisibleInGame_PopUp(false);
                        return;
                    }
                    int armyKeyID = Game.getProvince(this.id).getArmyKeyID(this.key);
                    if (armyKeyID < 0) {
                        for (int i = 0; i < Game.getProvincesSize(); i++) {
                            int armyKeyID2 = Game.getProvince(i).getArmyKeyID(this.key, Game.player.iCivID);
                            if (armyKeyID2 >= 0) {
                                this.id = i;
                                armyKeyID = armyKeyID2;
                                break;
                            }
                        }
                    }
                    if (armyKeyID >= 0) {
                        InGame_Battlefield.armyDivision = Game.getProvince(this.id).getArmy(armyKeyID);
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
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("BattleWidth") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + BattleManager.getBattleWidth(Game.player.iCivID) + " / " + GameValues.battle.BATTLE_MAX_BATTLE_WIDTH, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.battleWidth, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Empty());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ArmyDeployment"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.battleWidth, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setText2(String str) {
            this.key = str;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Armies$13, reason: invalid class name */
    class AnonymousClass13 extends MenuTitleIMG {
        AnonymousClass13(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG, aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public void draw(SpriteBatch spriteBatch, int i, int i2, int i3, Status status) {
            super.draw(spriteBatch, i - Images.boxTitleBORDERWIDTH, i2, i3 + (Images.boxTitleBORDERWIDTH * 2), status);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Armies.lTime;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Armies$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame.action3();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Back"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Armies$3, reason: invalid class name */
    class AnonymousClass3 extends Text_StaticBG {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_RecruitArmy()) {
                Game.menuManager.setVisibleInGame_RecruitArmy(false);
                return;
            }
            if (Game.menuManager.getVisibleInGame_Armies()) {
                Game.menuManager.setVisibleInGame_Armies(false);
            }
            Game.menuManager.rebuildInGame_RecruitArmy();
            Game.menuManager.setVisibleInGame_RecruitArmy(true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("LandUnits"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Armies$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonStatsRectIMG_Bonuses_Style {
        AnonymousClass4(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).fGold < ArmyManager.getUpgradeRegimentCost(Game.player.iCivID)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(ArmyManager.getUpgradeRegimentCost(Game.player.iCivID), 100), Images.gold);
                return;
            }
            int iUpgradeAllArmies = ArmyManager.upgradeAllArmies(Game.player.iCivID);
            InGame_Info.iCivID = Game.player.iCivID;
            InGame_Info.iCivID2 = 0;
            Game.menuManager.rebuildInGame_Info(Game.getCiv(Game.player.iCivID).getCivName(), Game.lang.get("RegimentsUpgraded") + ": " + iUpgradeAllArmies);
            InGame_Info.imgID = Images.infoCrown;
            Game.menuManager.rebuildInGame_Armies(false, true);
            Game.menuManager.setVisibleInGame_Armies(true);
            InGame_Armies.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("UpgradeAllRegiments"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.upgrade, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            int regimentsAvailableToUpgrade = ArmyManager.getRegimentsAvailableToUpgrade(Game.player.iCivID);
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AvailableUpgrades") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + regimentsAvailableToUpgrade, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Cost") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(ArmyManager.getUpgradeRegimentCost(Game.player.iCivID) * regimentsAvailableToUpgrade, 10), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(" = " + Game.lang.get("NumberOfRegiments") + " * " + CFG.getPrecision2(ArmyManager.getUpgradeRegimentCost(Game.player.iCivID), 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        public Color getColorBonus() {
            return Colors.HOVER_GOLD;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Armies$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonStatsRectIMG_Bonuses_Style {
        AnonymousClass5(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).fGold < ArmyManager.getUpgradeRegimentCost(Game.player.iCivID)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(ArmyManager.getUpgradeRegimentCost(Game.player.iCivID), 100), Images.gold);
                return;
            }
            int iUpgradeAllArmies = ArmyManager.upgradeAllArmies(Game.player.iCivID);
            InGame_Info.iCivID = Game.player.iCivID;
            InGame_Info.iCivID2 = 0;
            Game.menuManager.rebuildInGame_Info(Game.getCiv(Game.player.iCivID).getCivName(), Game.lang.get("RegimentsUpgraded") + ": " + iUpgradeAllArmies);
            InGame_Info.imgID = Images.infoCrown;
            Game.menuManager.rebuildInGame_Armies(false, true);
            Game.menuManager.setVisibleInGame_Armies(true);
            InGame_Armies.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("UpgradeAllRegiments"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.upgrade, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            int regimentsAvailableToUpgrade = ArmyManager.getRegimentsAvailableToUpgrade(Game.player.iCivID);
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AvailableUpgrades") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + regimentsAvailableToUpgrade, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Cost") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(ArmyManager.getUpgradeRegimentCost(Game.player.iCivID) * regimentsAvailableToUpgrade, 10), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(" = " + Game.lang.get("NumberOfRegiments") + " * " + CFG.getPrecision2(ArmyManager.getUpgradeRegimentCost(Game.player.iCivID), 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        public Color getColorBonus() {
            return Colors.HOVER_GOLD;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Armies$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonStatsRectIMG_Bonuses_Style {
        AnonymousClass6(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).fGold < ArmyManager.getUpgradeRegimentCost(Game.player.iCivID)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(ArmyManager.getUpgradeRegimentCost(Game.player.iCivID), 100), Images.gold);
                return;
            }
            int iUpgradeAllArmies = ArmyManager.upgradeAllArmies(Game.player.iCivID);
            InGame_Info.iCivID = Game.player.iCivID;
            InGame_Info.iCivID2 = 0;
            Game.menuManager.rebuildInGame_Info(Game.getCiv(Game.player.iCivID).getCivName(), Game.lang.get("RegimentsUpgraded") + ": " + iUpgradeAllArmies);
            InGame_Info.imgID = Images.infoCrown;
            Game.menuManager.rebuildInGame_Armies(false, true);
            Game.menuManager.setVisibleInGame_Armies(true);
            InGame_Armies.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("UpgradeAllRegiments"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.upgrade, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            int regimentsAvailableToUpgrade = ArmyManager.getRegimentsAvailableToUpgrade(Game.player.iCivID);
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AvailableUpgrades") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + regimentsAvailableToUpgrade, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Cost") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(ArmyManager.getUpgradeRegimentCost(Game.player.iCivID) * regimentsAvailableToUpgrade, 10), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(" = " + Game.lang.get("NumberOfRegiments") + " * " + CFG.getPrecision2(ArmyManager.getUpgradeRegimentCost(Game.player.iCivID), 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        public Color getColorBonus() {
            return Colors.HOVER_GOLD;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Armies$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonStatsRectIMG_Bonuses_Style {
        AnonymousClass7(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).getMilitaryAcademyLevel() >= Game.getMilitaryAcademy_MaxLvl(Game.player.iCivID)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("MaximumLevel") + ": ", "" + Game.getCiv(Game.player.iCivID).getMilitaryAcademyLevel() + " / " + Game.getMilitaryAcademy_MaxLvl(Game.player.iCivID), Game_Calendar.IMG_MANPOWER);
            } else if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 2) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_UpgradeMilitaryAcademy();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_RecruitArmy.getHoverMilitaryAcademy();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        public Color getColorBonus() {
            return Colors.HOVER_GOLD;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Armies$8, reason: invalid class name */
    class AnonymousClass8 extends ButtonStatsRectIMG_Bonuses_Style {
        AnonymousClass8(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).iArmyPositionSize > 0) {
                try {
                    if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 51) {
                        Game.menuManager.setVisibleInGame_PopUp(false);
                    } else {
                        InGame_Battlefield.armyDivision = Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(0)).getArmy(Game.getCiv(Game.player.iCivID).getArmyPositionKey(0));
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
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("BattleWidth") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + BattleManager.getBattleWidth(Game.player.iCivID) + " / " + GameValues.battle.BATTLE_MAX_BATTLE_WIDTH, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.battleWidth, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get(PxHJ.RaLTLcx), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Empty());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ArmyDeployment"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.battleWidth, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        public Color getColorBonus() {
            return Colors.HOVER_GOLD;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Armies$9, reason: invalid class name */
    class AnonymousClass9 extends ButtonStatsRectIMG_Bonuses_Style {
        AnonymousClass9(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_RecruitArmy()) {
                Game.menuManager.setVisibleInGame_RecruitArmy(false);
                return;
            }
            if (Game.menuManager.getVisibleInGame_Armies()) {
                Game.menuManager.setVisibleInGame_Armies(false);
            }
            Game.menuManager.rebuildInGame_RecruitArmy();
            Game.menuManager.setVisibleInGame_RecruitArmy(true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Discipline") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).civBonuses.Discipline * 100.0f, 10) + "%", Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.discipline, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("DisciplineSignifiesOrganizationAndCoordinationOfTheArmyInBattleIncreasingUnitsAttack"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Empty());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("LandUnits"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        public Color getColorBonus() {
            return Colors.HOVER_GOLD;
        }
    }

    public static class SortedArmies {
        public int iArmyID;
        public int iProvinceID;
        public int sortKey;

        public SortedArmies(int i, int i2, int i3) {
            this.iProvinceID = i;
            this.iArmyID = i2;
            this.sortKey = i3;
        }
    }

    public InGame_Armies(boolean z) {
        String str;
        String str2;
        int i;
        int height;
        String str3;
        ArrayList arrayList = new ArrayList();
        int i2 = CFG.PADDING * 2;
        ImageManager.getImage(Images.title2).getHeight();
        int width = ImageManager.getImage(Images.insideTop500).getWidth() - (Images.boxTitleBORDERWIDTH * 2);
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height2 = ImageManager.getImage(Images.title1Red).getHeight() + ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i3 = CFG.PADDING;
        int regimentsAvailableToUpgrade = ArmyManager.getRegimentsAvailableToUpgrade(Game.player.iCivID);
        int i4 = width - (i2 * 2);
        int i5 = ((i4 - CFG.PADDING) * 3) / 5;
        int i6 = ((i4 - CFG.PADDING) * 2) / 5;
        int i7 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
        int width2 = ImageManager.getImage(Game_Calendar.IMG_MANPOWER).getWidth();
        arrayList.add(new AnonymousClass1(Game.lang.get("CreateNewArmy"), Game_Calendar.IMG_MANPOWER, CFG.PADDING + i2 + i6, i3, i5, i7, width2, 0, true));
        arrayList.add(new AnonymousClass2(Game.lang.get("Back"), Game_Calendar.IMG_MANPOWER, i2, i3, i6, i7, width2, 0));
        int height3 = arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING + i3;
        arrayList.add(new Text_Title_v2Center(Game.lang.get("AvailableUpgrades"), -1, Images.boxTitleBORDERWIDTH, height3, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        if (regimentsAvailableToUpgrade == 0) {
            arrayList.add(new AnonymousClass3(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i2, height4, i4, CFG.BUTTON_HEIGHT2));
            str = "";
            height = height4 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            i = i4;
            str2 = ": ";
        } else {
            str = "";
            str2 = ": ";
            arrayList.add(new AnonymousClass4(Game.lang.get("UpgradeAllRegiments") + ": ", "" + regimentsAvailableToUpgrade, Game_Calendar.IMG_MANPOWER, i2, height4, i4, CFG.BUTTON_HEIGHT3, ImageManager.getImage(Images.battleWidth).getWidth()));
            int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            i = i4;
            arrayList.add(new AnonymousClass5(Game.lang.get(IlLkpaQxs.ZrxoSshXDXS) + str2, str + regimentsAvailableToUpgrade, Game_Calendar.IMG_MANPOWER, i2, height5, (i4 - CFG.PADDING) / 2, CFG.BUTTON_HEIGHT3, ImageManager.getImage(Images.battleWidth).getWidth()));
            arrayList.add(new AnonymousClass6(Game.lang.get("Cost") + str2, str + CFG.getPrecision2(ArmyManager.getUpgradeRegimentCost(Game.player.iCivID) * regimentsAvailableToUpgrade, 10), Images.gold, CFG.PADDING + i2 + ((i - CFG.PADDING) / 2), height5, (i - CFG.PADDING) / 2, CFG.BUTTON_HEIGHT3, ImageManager.getImage(Images.battleWidth).getWidth()));
            height = height5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        arrayList.add(new Text_Title_v2Center(Game.lang.get("Armies"), -1, Images.boxTitleBORDERWIDTH, height, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height6 = height + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass7(Game.lang.get("MilitaryAcademy") + str2, str + Game.getCiv(Game.player.iCivID).getMilitaryAcademyLevel() + " / " + Game.getMilitaryAcademy_MaxLvl(Game.player.iCivID), Game_Calendar.IMG_MANPOWER, i2, height6, i, i7, ImageManager.getImage(Images.battleWidth).getWidth()));
        int height7 = height6 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass8(Game.lang.get("BattleWidth") + str2, str + BattleManager.getBattleWidth(Game.player.iCivID) + " / " + GameValues.battle.BATTLE_MAX_BATTLE_WIDTH, Images.battleWidth, i2, height7, (i - CFG.PADDING) / 2, CFG.BUTTON_HEIGHT3, ImageManager.getImage(Images.battleWidth).getWidth()));
        arrayList.add(new AnonymousClass9(Game.lang.get("Discipline") + str2, str + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).civBonuses.Discipline * 100.0f, 10) + "%", Images.discipline, i2 + CFG.PADDING + ((i - CFG.PADDING) / 2), height7, (i - CFG.PADDING) / 2, CFG.BUTTON_HEIGHT3, ImageManager.getImage(Images.battleWidth).getWidth()));
        int height8 = height7 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        if (Game.getCiv(Game.player.iCivID).iArmyPositionSize == 0) {
            arrayList.add(new Text_StaticBG(Game.lang.get("ArmyNotFound") + ".", CFG.FONT_REGULAR_SMALL, -1, i2 + 0, height8, i, ImageManager.getImage(Images.generalFrameBattle).getHeight() + CFG.TEXT_HEIGHT + (CFG.PADDING * 2)));
            arrayList.get(arrayList.size() - 1).getHeight();
        } else {
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            for (int i8 = 0; i8 < Game.getCiv(Game.player.iCivID).iArmyPositionSize; i8++) {
                int armyPosition = Game.getCiv(Game.player.iCivID).getArmyPosition(i8);
                if (armyPosition >= 0) {
                    for (int armySize = Game.getProvince(armyPosition).getArmySize() - 1; armySize >= 0; armySize--) {
                        if (Game.getProvince(armyPosition).getArmy(armySize).civID == Game.player.iCivID && Game.getCiv(Game.player.iCivID).getArmyPositionKey(i8).equals(Game.getProvince(armyPosition).getArmy(armySize).key)) {
                            arrayList2.add(new SortedArmies(armyPosition, armySize, getSortKey(Game.getProvince(armyPosition).getArmy(armySize).key)));
                        }
                    }
                }
            }
            if (z) {
                ArrayList arrayList4 = new ArrayList();
                while (arrayList2.size() > 0) {
                    int size = arrayList2.size();
                    int i9 = 0;
                    for (int i10 = 1; i10 < size; i10++) {
                        if (((SortedArmies) arrayList2.get(i9)).sortKey > ((SortedArmies) arrayList2.get(i10)).sortKey) {
                            i9 = i10;
                        }
                    }
                    if (Game.getProvince(((SortedArmies) arrayList2.get(i9)).iProvinceID).getArmy(((SortedArmies) arrayList2.get(i9)).iArmyID).armyGeneral == null) {
                        arrayList3.add((SortedArmies) arrayList2.get(i9));
                    } else {
                        arrayList4.add((SortedArmies) arrayList2.get(i9));
                    }
                    arrayList2.remove(i9);
                }
                while (arrayList4.size() > 0) {
                    arrayList3.add((SortedArmies) arrayList4.get(0));
                    arrayList4.remove(0);
                }
            } else {
                while (arrayList2.size() > 0) {
                    int size2 = arrayList2.size();
                    int i11 = 0;
                    for (int i12 = 1; i12 < size2; i12++) {
                        if (((SortedArmies) arrayList2.get(i11)).sortKey > ((SortedArmies) arrayList2.get(i12)).sortKey) {
                            i11 = i12;
                        }
                    }
                    arrayList3.add((SortedArmies) arrayList2.get(i11));
                    arrayList2.remove(i11);
                }
            }
            int buttonHeight = (ButtonArmyBattle.getButtonHeight() - CFG.PADDING) / 2;
            int size3 = arrayList3.size();
            int i13 = 0;
            int i14 = height8;
            while (i13 < size3) {
                int i15 = CFG.TEXT_HEIGHT + (CFG.PADDING * 6) + i14;
                int i16 = i2 + CFG.PADDING;
                if (Game.getProvince(((SortedArmies) arrayList3.get(i13)).iProvinceID).getArmy(((SortedArmies) arrayList3.get(i13)).iArmyID).armyGeneral == null) {
                    arrayList.add(new ButtonArmyNoGeneral2_Armies(Game.lang.get("NoGeneral"), Game.player.iCivID, i16 + 0, i15, Game.getProvince(((SortedArmies) arrayList3.get(i13)).iProvinceID).getArmy(((SortedArmies) arrayList3.get(i13)).iArmyID).key, Game.getProvince(((SortedArmies) arrayList3.get(i13)).iProvinceID).getArmy(((SortedArmies) arrayList3.get(i13)).iArmyID).civID, ((SortedArmies) arrayList3.get(i13)).iProvinceID));
                } else {
                    arrayList.add(new ButtonArmyGeneral2_Armies(Game.getProvince(((SortedArmies) arrayList3.get(i13)).iProvinceID).getArmy(((SortedArmies) arrayList3.get(i13)).iArmyID).armyGeneral.n, Game.getProvince(((SortedArmies) arrayList3.get(i13)).iProvinceID).getArmy(((SortedArmies) arrayList3.get(i13)).iArmyID).civID, Game.getProvince(((SortedArmies) arrayList3.get(i13)).iProvinceID).getArmy(((SortedArmies) arrayList3.get(i13)).iArmyID).armyGeneral.getAttack(), Game.getProvince(((SortedArmies) arrayList3.get(i13)).iProvinceID).getArmy(((SortedArmies) arrayList3.get(i13)).iArmyID).armyGeneral.getDefense(), i16 + 0, i15, Game.getProvince(((SortedArmies) arrayList3.get(i13)).iProvinceID).getArmy(((SortedArmies) arrayList3.get(i13)).iArmyID).armyGeneral.g, Game.getProvince(((SortedArmies) arrayList3.get(i13)).iProvinceID).getArmy(((SortedArmies) arrayList3.get(i13)).iArmyID).armyGeneral.d, Game.getProvince(((SortedArmies) arrayList3.get(i13)).iProvinceID).getArmy(((SortedArmies) arrayList3.get(i13)).iArmyID).armyGeneral.m, Game.getProvince(((SortedArmies) arrayList3.get(i13)).iProvinceID).getArmy(((SortedArmies) arrayList3.get(i13)).iArmyID).armyGeneral.y, Game.getProvince(((SortedArmies) arrayList3.get(i13)).iProvinceID).getArmy(((SortedArmies) arrayList3.get(i13)).iArmyID).key, Game.getProvince(((SortedArmies) arrayList3.get(i13)).iProvinceID).getArmy(((SortedArmies) arrayList3.get(i13)).iArmyID).civID, ((SortedArmies) arrayList3.get(i13)).iProvinceID, Game.getProvince(((SortedArmies) arrayList3.get(i13)).iProvinceID).getArmy(((SortedArmies) arrayList3.get(i13)).iArmyID).armyGeneral.sI, Game.getProvince(((SortedArmies) arrayList3.get(i13)).iProvinceID).getArmy(((SortedArmies) arrayList3.get(i13)).iArmyID).armyGeneral.getCombatExperience()));
                }
                int width3 = i16 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                ArrayList arrayList5 = arrayList3;
                int i17 = buttonHeight;
                arrayList.add(new AnonymousClass10(Images.pin, width3, i15, Game.player.isPinned(Game.getProvince(((SortedArmies) arrayList5.get(i13)).iProvinceID).getArmy(((SortedArmies) arrayList5.get(i13)).iArmyID).key), Game.getProvince(((SortedArmies) arrayList5.get(i13)).iProvinceID).getArmy(((SortedArmies) arrayList5.get(i13)).iArmyID).key, i17));
                arrayList.add(new AnonymousClass11(Images.center, width3, CFG.PADDING + i15 + buttonHeight, Game.player.isPinned(Game.getProvince(((SortedArmies) arrayList5.get(i13)).iProvinceID).getArmy(((SortedArmies) arrayList5.get(i13)).iArmyID).key), Game.getProvince(((SortedArmies) arrayList5.get(i13)).iProvinceID).getArmy(((SortedArmies) arrayList5.get(i13)).iArmyID).key, i17));
                int width4 = width3 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                int i18 = 0;
                while (i18 < Game.getProvince(((SortedArmies) arrayList5.get(i13)).iProvinceID).getArmy(((SortedArmies) arrayList5.get(i13)).iArmyID).iArmyRegimentSize) {
                    int i19 = Game.getProvince(((SortedArmies) arrayList5.get(i13)).iProvinceID).getArmy(((SortedArmies) arrayList5.get(i13)).iArmyID).lArmyRegiment.get(i18).num;
                    int i20 = 1;
                    for (int i21 = i18 + 1; i21 < Game.getProvince(((SortedArmies) arrayList5.get(i13)).iProvinceID).getArmy(((SortedArmies) arrayList5.get(i13)).iArmyID).iArmyRegimentSize && Game.getProvince(((SortedArmies) arrayList5.get(i13)).iProvinceID).getArmy(((SortedArmies) arrayList5.get(i13)).iArmyID).lArmyRegiment.get(i18).uID == Game.getProvince(((SortedArmies) arrayList5.get(i13)).iProvinceID).getArmy(((SortedArmies) arrayList5.get(i13)).iArmyID).lArmyRegiment.get(i21).uID && Game.getProvince(((SortedArmies) arrayList5.get(i13)).iProvinceID).getArmy(((SortedArmies) arrayList5.get(i13)).iArmyID).lArmyRegiment.get(i18).aID == Game.getProvince(((SortedArmies) arrayList5.get(i13)).iProvinceID).getArmy(((SortedArmies) arrayList5.get(i13)).iArmyID).lArmyRegiment.get(i21).aID; i21++) {
                        i18++;
                        i20++;
                        i19 += Game.getProvince(((SortedArmies) arrayList5.get(i13)).iProvinceID).getArmy(((SortedArmies) arrayList5.get(i13)).iArmyID).lArmyRegiment.get(i18).num;
                    }
                    if (ArmyManager.armyCanBeUpgraded(Game.player.iCivID, Game.getProvince(((SortedArmies) arrayList5.get(i13)).iProvinceID).getArmy(((SortedArmies) arrayList5.get(i13)).iArmyID).lArmyRegiment.get(i18).uID, Game.getProvince(((SortedArmies) arrayList5.get(i13)).iProvinceID).getArmy(((SortedArmies) arrayList5.get(i13)).iArmyID).lArmyRegiment.get(i18).aID)) {
                        str3 = str;
                        arrayList.add(new ButtonArmyBattle_Upgrade(str3 + i19, i20, Game.getProvince(((SortedArmies) arrayList5.get(i13)).iProvinceID).getArmy(((SortedArmies) arrayList5.get(i13)).iArmyID).civID, width4 + 0, i15, Game.getProvince(((SortedArmies) arrayList5.get(i13)).iProvinceID).getArmy(((SortedArmies) arrayList5.get(i13)).iArmyID).lArmyRegiment.get(i18).uID, Game.getProvince(((SortedArmies) arrayList5.get(i13)).iProvinceID).getArmy(((SortedArmies) arrayList5.get(i13)).iArmyID).lArmyRegiment.get(i18).aID, false, Game.getProvince(((SortedArmies) arrayList5.get(i13)).iProvinceID).getArmy(((SortedArmies) arrayList5.get(i13)).iArmyID).key));
                    } else {
                        str3 = str;
                        arrayList.add(new ButtonArmyBattle(str3 + i19, i20, Game.getProvince(((SortedArmies) arrayList5.get(i13)).iProvinceID).getArmy(((SortedArmies) arrayList5.get(i13)).iArmyID).civID, width4 + 0, i15, Game.getProvince(((SortedArmies) arrayList5.get(i13)).iProvinceID).getArmy(((SortedArmies) arrayList5.get(i13)).iArmyID).lArmyRegiment.get(i18).uID, Game.getProvince(((SortedArmies) arrayList5.get(i13)).iProvinceID).getArmy(((SortedArmies) arrayList5.get(i13)).iArmyID).lArmyRegiment.get(i18).aID, false));
                    }
                    width4 += arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                    i18++;
                    str = str3;
                }
                String str4 = str;
                int posY = arrayList.get(arrayList.size() - 1).getPosY() + arrayList.get(arrayList.size() - 1).getHeight() + i3 + CFG.PADDING;
                int i22 = i2 + 0;
                int i23 = (width * 3) / 10;
                int i24 = i;
                int i25 = i13;
                arrayList.add(new TextArmies(Game.getProvince(Game.getProvince(((SortedArmies) arrayList5.get(i13)).iProvinceID).getArmy(((SortedArmies) arrayList5.get(i13)).iArmyID).iArmyOfProvinceID).getProvinceName(), CFG.getNumberWithSpaces(str4 + Game.getProvince(((SortedArmies) arrayList5.get(i13)).iProvinceID).getArmy(((SortedArmies) arrayList5.get(i13)).iArmyID).iArmy), i22 + CFG.PADDING + i23, i14, (Math.max(width4, i24) - i23) - CFG.PADDING, CFG.TEXT_HEIGHT + (CFG.PADDING * 5), Game.getProvince(((SortedArmies) arrayList5.get(i13)).iProvinceID).getArmy(((SortedArmies) arrayList5.get(i13)).iArmyID).key, Game.getProvince(((SortedArmies) arrayList5.get(i13)).iProvinceID).getArmy(((SortedArmies) arrayList5.get(i13)).iArmyID).civID, ((SortedArmies) arrayList5.get(i13)).iProvinceID, i24));
                arrayList.add(new AnonymousClass12(Game.lang.get("ArmyDeployment"), Images.battleWidth, i22, i14, i23, CFG.TEXT_HEIGHT + (CFG.PADDING * 5), ImageManager.getImage(Images.battleWidth).getWidth(), ((SortedArmies) arrayList5.get(i25)).iProvinceID, true));
                arrayList.get(arrayList.size() - 1).setText2(Game.getProvince(((SortedArmies) arrayList5.get(i25)).iProvinceID).getArmy(((SortedArmies) arrayList5.get(i25)).iArmyID).key);
                i13 = i25 + 1;
                i = i24;
                str = str4;
                i14 = posY;
                buttonHeight = buttonHeight;
                size3 = size3;
                arrayList3 = arrayList5;
            }
        }
        int size4 = arrayList.size();
        int posY2 = 0;
        for (int i26 = 0; i26 < size4; i26++) {
            if (posY2 < arrayList.get(i26).getPosY() + arrayList.get(i26).getHeight() + CFG.PADDING) {
                posY2 = arrayList.get(i26).getPosY() + arrayList.get(i26).getHeight() + CFG.PADDING;
            }
        }
        int iMin = Math.min(posY2, (CFG.GAME_HEIGHT - height2) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, 0, width, Math.max(posY2, iMin)));
        initMenu(new AnonymousClass13("", false, false, Images.title500), otherMenuPosX_2 + Images.boxTitleBORDERWIDTH, height2, width, iMin, arrayList, false, true);
        this.scrollExtraPosX = Images.boxTitleBORDERWIDTH;
    }

    public static int getSortKey(String str) {
        int length = str.length();
        int iCharAt = 0;
        for (int i = 0; i < length; i++) {
            iCharAt += str.charAt(i);
        }
        return iCharAt;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i;
        Renderer.drawBoxCorner(spriteBatch, (getPosX() - Images.boxTitleBORDERWIDTH) + i3, (getPosY() - getTitle().getHeight()) + i2, getWidth() + (Images.boxTitleBORDERWIDTH * 2), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, (getPosX() - Images.boxTitleBORDERWIDTH) + i3, getPosY() + i2, getWidth() + (Images.boxTitleBORDERWIDTH * 2), getHeight() + CFG.PADDING, false, Images.insideTop500, Images.insideBot500);
        ImageManager.getImage(Images.rulerOver).draw2(spriteBatch, ((getPosX() + ((getWidth() + Images.boxTitleBORDERWIDTH) / 2)) - (ImageManager.getImage(Images.rulerOver).getWidth() / 2)) + i3, getPosY() + i2, ImageManager.getImage(Images.rulerOver).getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.rulerOver).getHeight()));
        super.draw(spriteBatch, i3, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public boolean getVisible() {
        return super.getVisible() && Game.mapBG.getHideMenuZoomOut();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void updateLanguage() {
        super.updateLanguage();
        getTitle().setText(Game.lang.get("Armies"));
    }
}
