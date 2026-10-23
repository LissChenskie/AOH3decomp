package aoc.kingdoms.lukasz.menusInGame.RecruitArmy;

import aoc.kingdoms.lukasz.jakowski.AA_KeyManager;
import aoc.kingdoms.lukasz.jakowski.AI.Army.AI_Army_Composition;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.map.army.ArmyManager;
import aoc.kingdoms.lukasz.map.army.ArmyRecruit;
import aoc.kingdoms.lukasz.map.battles.BattleManager;
import aoc.kingdoms.lukasz.map.civilization.stats.LQy.lJxd;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.menu.ClickAnimation;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_DoubleText;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame_Style_NewArmy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsOnlyIMG;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Click;
import aoc.kingdoms.lukasz.menu_element.button.ButtonUnit_03;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonusFlag;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Center;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Vertical;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menus.MainMenu;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g3d.model.ia.uNBYrZVGzy;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_RecruitArmy_NewArmy extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int HOVER_POSX = 0;
    public static List<CreateNewArmy> createNewArmy = new ArrayList();
    public static float fMaintenance = 0.0f;
    public static int iCost = 0;
    public static int iProvinceID = -1;
    public static int iRegiments = 0;
    public static String key = "";
    public static long lTime;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy_NewArmy$1, reason: invalid class name */
    class AnonymousClass1 extends TextIcon_Vertical {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_NEW_ARMY_CHOOSE_PROVINCE) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
            }
            Game.menuManager.rebuildInGame_RecruitArmy();
            Game.menuManager.setVisibleInGame_RecruitArmy(true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Back") + ": ", Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy_NewArmy$10, reason: invalid class name */
    class AnonymousClass10 extends ButtonUnit_03 {
        AnonymousClass10(int i, int i2, int i3, int i4, int i5, boolean z) {
            super(i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (AA_KeyManager.CTRL_HOLD || AA_KeyManager.SHIFT_HOLD) {
                for (int i = 0; i < 5; i++) {
                    InGame_RecruitArmy_NewArmy.this.updateCreateNewArmy(getValue1(), getValue2(), getCurrent() == 0);
                }
            } else {
                InGame_RecruitArmy_NewArmy.this.updateCreateNewArmy(getValue1(), getValue2(), getCurrent() == 0);
            }
            InGame_RecruitArmy_NewArmy_Battlefield.rebuildMenuIfVisible();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            if (AA_KeyManager.CTRL_HOLD || AA_KeyManager.SHIFT_HOLD) {
                for (int i = 0; i < 5; i++) {
                    InGame_RecruitArmy_NewArmy.this.updateCreateNewArmy(getValue1(), getValue2(), getCurrent() == 1);
                }
            } else {
                InGame_RecruitArmy_NewArmy.this.updateCreateNewArmy(getValue1(), getValue2(), getCurrent() == 1);
            }
            InGame_RecruitArmy_NewArmy_Battlefield.rebuildMenuIfVisible();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonUnit_03, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
            super.draw(spriteBatch, i, i2, z, z2);
            for (int size = InGame_RecruitArmy_NewArmy.createNewArmy.size() - 1; size >= 0; size--) {
                if (InGame_RecruitArmy_NewArmy.createNewArmy.get(size).iUnitID == this.unitTypeID && InGame_RecruitArmy_NewArmy.createNewArmy.get(size).iArmyID == this.armyID) {
                    spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.75f));
                    Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + CFG.PADDING + i, getPosY() + getPaddingIMG() + CFG.PADDING + i2, (CFG.PADDING * 4) + InGame_RecruitArmy_NewArmy.createNewArmy.get(size).textWidth, (CFG.PADDING * 2) + CFG.TEXT_HEIGHT, 1.0f);
                    spriteBatch.setColor(Color.WHITE);
                    Renderer.drawText(spriteBatch, CFG.FONT_BOLD, "" + InGame_RecruitArmy_NewArmy.createNewArmy.get(size).numOfRegiments, getPosX() + (CFG.PADDING * 3) + i, getPosY() + getPaddingIMG() + (CFG.PADDING * 2) + i2, Colors.HOVER_GOLD);
                    return;
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy_NewArmy$11, reason: invalid class name */
    class AnonymousClass11 extends ButtonGame_Style_NewArmy {
        AnonymousClass11(int i, int i2, boolean z, String str, int i3, int i4, int i5, int i6, int i7, int i8, boolean z2) {
            super(i, i2, z, str, i3, i4, i5, i6, i7, i8, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_RecruitArmy_NewArmy.this.updateCreateNewArmy(getValue1(), getValue2(), getCurrent() == 1);
            InGame_RecruitArmy_NewArmy_Battlefield.rebuildMenuIfVisible();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy_NewArmy$12, reason: invalid class name */
    class AnonymousClass12 extends ButtonGame_Style_NewArmy {
        AnonymousClass12(int i, int i2, boolean z, String str, int i3, int i4, int i5, int i6, int i7, int i8, boolean z2) {
            super(i, i2, z, str, i3, i4, i5, i6, i7, i8, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_RecruitArmy_NewArmy.this.updateCreateNewArmy(getValue1(), getValue2(), getCurrent() == 1);
            InGame_RecruitArmy_NewArmy_Battlefield.rebuildMenuIfVisible();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy_NewArmy$13, reason: invalid class name */
    class AnonymousClass13 extends ButtonUnit_03 {
        AnonymousClass13(int i, int i2, int i3, int i4, int i5, boolean z) {
            super(i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (AA_KeyManager.CTRL_HOLD || AA_KeyManager.SHIFT_HOLD) {
                for (int i = 0; i < 5; i++) {
                    InGame_RecruitArmy_NewArmy.this.updateCreateNewArmy(getValue1(), getValue2(), getCurrent() == 0);
                }
            } else {
                InGame_RecruitArmy_NewArmy.this.updateCreateNewArmy(getValue1(), getValue2(), getCurrent() == 0);
            }
            InGame_RecruitArmy_NewArmy_Battlefield.rebuildMenuIfVisible();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            if (AA_KeyManager.CTRL_HOLD || AA_KeyManager.SHIFT_HOLD) {
                for (int i = 0; i < 5; i++) {
                    InGame_RecruitArmy_NewArmy.this.updateCreateNewArmy(getValue1(), getValue2(), getCurrent() == 1);
                }
            } else {
                InGame_RecruitArmy_NewArmy.this.updateCreateNewArmy(getValue1(), getValue2(), getCurrent() == 1);
            }
            InGame_RecruitArmy_NewArmy_Battlefield.rebuildMenuIfVisible();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonUnit_03, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
            super.draw(spriteBatch, i, i2, z, z2);
            for (int size = InGame_RecruitArmy_NewArmy.createNewArmy.size() - 1; size >= 0; size--) {
                if (InGame_RecruitArmy_NewArmy.createNewArmy.get(size).iUnitID == this.unitTypeID && InGame_RecruitArmy_NewArmy.createNewArmy.get(size).iArmyID == this.armyID) {
                    spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.75f));
                    Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + CFG.PADDING + i, getPosY() + getPaddingIMG() + CFG.PADDING + i2, (CFG.PADDING * 4) + InGame_RecruitArmy_NewArmy.createNewArmy.get(size).textWidth, (CFG.PADDING * 2) + CFG.TEXT_HEIGHT, 1.0f);
                    spriteBatch.setColor(Color.WHITE);
                    Renderer.drawText(spriteBatch, CFG.FONT_BOLD, "" + InGame_RecruitArmy_NewArmy.createNewArmy.get(size).numOfRegiments, getPosX() + (CFG.PADDING * 3) + i, getPosY() + getPaddingIMG() + (CFG.PADDING * 2) + i2, Colors.HOVER_GOLD);
                    return;
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy_NewArmy$14, reason: invalid class name */
    class AnonymousClass14 extends ButtonGame_Style_NewArmy {
        AnonymousClass14(int i, int i2, boolean z, String str, int i3, int i4, int i5, int i6, int i7, int i8, boolean z2) {
            super(i, i2, z, str, i3, i4, i5, i6, i7, i8, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_RecruitArmy_NewArmy.this.updateCreateNewArmy(getValue1(), getValue2(), getCurrent() == 1);
            InGame_RecruitArmy_NewArmy_Battlefield.rebuildMenuIfVisible();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy_NewArmy$15, reason: invalid class name */
    class AnonymousClass15 extends ButtonGame_Style_NewArmy {
        AnonymousClass15(int i, int i2, boolean z, String str, int i3, int i4, int i5, int i6, int i7, int i8, boolean z2) {
            super(i, i2, z, str, i3, i4, i5, i6, i7, i8, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_RecruitArmy_NewArmy.this.updateCreateNewArmy(getValue1(), getValue2(), getCurrent() == 1);
            InGame_RecruitArmy_NewArmy_Battlefield.rebuildMenuIfVisible();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy_NewArmy$16, reason: invalid class name */
    class AnonymousClass16 extends MenuTitleIMG_DoubleText {
        AnonymousClass16(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_RecruitArmy_NewArmy.lTime;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy_NewArmy$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center(Game.lang.get("Cost"), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("RecruitRegiments") + ": ", getText(), Game_Calendar.IMG_MANPOWER, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Cost") + ", " + Game.lang.get("Manpower") + ": ", CFG.getNumberWithSpaces("" + (InGame_RecruitArmy_NewArmy.iRegiments * Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE)), Game_Calendar.IMG_MANPOWER, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag("", Game.getCiv(Game.player.iCivID).getCivName(), Game.player.iCivID, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Manpower") + ": ", CFG.getNumberWithSpaces("" + ((int) Game.getCiv(Game.player.iCivID).fManpower)), Game_Calendar.IMG_MANPOWER, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy_NewArmy$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, i7, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_NEW_ARMY_CHOOSE_PROVINCE) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
                return;
            }
            Game.gameActiveProvince.resetLastActiveProvince();
            Game.setActiveProvinceID(-1);
            Game.menuManager.setVisibleInGame_ProvinceInfo(false);
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_NEW_ARMY_CHOOSE_PROVINCE);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ChooseAProvince"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (InGame_RecruitArmy_NewArmy.iProvinceID >= 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(lJxd.pHJChCs) + ": ", Game.getProvince(InGame_RecruitArmy_NewArmy.iProvinceID).getProvinceName(), Images.provinces, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("ProvinceInWhichTheArmyWillBeStationed"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Click, aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active, aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return this.id < 0 ? Colors.HOVER_GOLD : super.getColor(z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (InGame_RecruitArmy_NewArmy.iProvinceID != this.id && InGame_RecruitArmy_NewArmy.iProvinceID >= 0) {
                setText(Game.getProvince(InGame_RecruitArmy_NewArmy.iProvinceID).getProvinceName());
                this.id = InGame_RecruitArmy_NewArmy.iProvinceID;
            }
            return super.getTextToDraw();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setText(String str) {
            super.setText(str);
            int i = 0;
            while (this.iTextWidth >= getWidth() - ((CFG.PADDING * 2) + this.maxIconWidth) && getText().length() > 5 && (i = i + 1) < 100) {
                try {
                    setText(getText().substring(0, Math.max(1, getText().length() - 3)) + "..");
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                    return;
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy_NewArmy$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonStatsOnlyIMG {
        AnonymousClass4(int i, int i2, int i3, int i4, int i5) {
            super(i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_RecruitArmy_NewArmy_Battlefield.hideShowMenu();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ArmyDeployment"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.battle, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("ArmyComposition0"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("SecondLine1"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("SecondLine2"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("SecondLine3"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy_NewArmy$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center(Game.lang.get("Cost"), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("RecruitRegiments") + ": ", "" + InGame_RecruitArmy_NewArmy.iRegiments, Game_Calendar.IMG_MANPOWER, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Cost") + ": ", getText(), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag("", Game.getCiv(Game.player.iCivID).getCivName(), Game.player.iCivID, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Treasury") + ": ", CFG.getNumberWithSpaces("" + ((int) Game.getCiv(Game.player.iCivID).fGold)), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy_NewArmy$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonGame {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy_NewArmy$6$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return DiplomacyManager.COLOR_WAR;
            }
        }

        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RecruitArmy_NewArmy.actionCreateNewArmy()) {
                MenuManager menuManager = Game.menuManager;
                MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_RecruitArmy_NewArmy.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_RecruitArmy_NewArmy.this.getMenuPosY(), getWidth(), getHeight()));
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Confirm"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.regimentsLimit, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("RecruitRegiments") + ": ", "" + InGame_RecruitArmy_NewArmy.iRegiments, Game_Calendar.IMG_MANPOWER, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Cost") + ": ", "" + InGame_RecruitArmy_NewArmy.iCost, Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Cost") + ", " + Game.lang.get("Manpower") + ": ", CFG.getNumberWithSpaces("" + (InGame_RecruitArmy_NewArmy.iRegiments * Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE)), Game_Calendar.IMG_MANPOWER, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaintenanceCost") + ": ", "" + CFG.getPrecision2(InGame_RecruitArmy_NewArmy.fMaintenance, 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag("", Game.getCiv(Game.player.iCivID).getCivName(), Game.player.iCivID, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Treasury") + ": ", CFG.getNumberWithSpaces("" + ((int) Game.getCiv(Game.player.iCivID).fGold)), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Manpower") + ": ", CFG.getNumberWithSpaces("" + ((int) Game.getCiv(Game.player.iCivID).fManpower)), Game_Calendar.IMG_MANPOWER, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonGame, aoc.kingdoms.lukasz.menu_element.button.Button
        public void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            super.drawButtonBG(spriteBatch, i, i2, z);
            if (getIsHovered() || z) {
                spriteBatch.setColor(MainMenu.sparksColors);
                MenuManager.sparksAnimationHover.draw2(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
                spriteBatch.setColor(Color.WHITE);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CREATE_ARMY;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy_NewArmy$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonUnit_03 {
        AnonymousClass7(int i, int i2, int i3, int i4, int i5, boolean z) {
            super(i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (AA_KeyManager.CTRL_HOLD || AA_KeyManager.SHIFT_HOLD) {
                for (int i = 0; i < 5; i++) {
                    InGame_RecruitArmy_NewArmy.this.updateCreateNewArmy(getValue1(), getValue2(), getCurrent() == 0);
                }
            } else {
                InGame_RecruitArmy_NewArmy.this.updateCreateNewArmy(getValue1(), getValue2(), getCurrent() == 0);
            }
            InGame_RecruitArmy_NewArmy_Battlefield.rebuildMenuIfVisible();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            if (AA_KeyManager.CTRL_HOLD || AA_KeyManager.SHIFT_HOLD) {
                for (int i = 0; i < 5; i++) {
                    InGame_RecruitArmy_NewArmy.this.updateCreateNewArmy(getValue1(), getValue2(), getCurrent() == 1);
                }
            } else {
                InGame_RecruitArmy_NewArmy.this.updateCreateNewArmy(getValue1(), getValue2(), getCurrent() == 1);
            }
            InGame_RecruitArmy_NewArmy_Battlefield.rebuildMenuIfVisible();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonUnit_03, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
            super.draw(spriteBatch, i, i2, z, z2);
            for (int size = InGame_RecruitArmy_NewArmy.createNewArmy.size() - 1; size >= 0; size--) {
                if (InGame_RecruitArmy_NewArmy.createNewArmy.get(size).iUnitID == this.unitTypeID && InGame_RecruitArmy_NewArmy.createNewArmy.get(size).iArmyID == this.armyID) {
                    spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.75f));
                    Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + CFG.PADDING + i, getPosY() + getPaddingIMG() + CFG.PADDING + i2, (CFG.PADDING * 4) + InGame_RecruitArmy_NewArmy.createNewArmy.get(size).textWidth, (CFG.PADDING * 2) + CFG.TEXT_HEIGHT, 1.0f);
                    spriteBatch.setColor(Color.WHITE);
                    Renderer.drawText(spriteBatch, CFG.FONT_BOLD, uNBYrZVGzy.UzvZRagmF + InGame_RecruitArmy_NewArmy.createNewArmy.get(size).numOfRegiments, getPosX() + (CFG.PADDING * 3) + i, getPosY() + getPaddingIMG() + (CFG.PADDING * 2) + i2, Colors.HOVER_GOLD);
                    return;
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy_NewArmy$8, reason: invalid class name */
    class AnonymousClass8 extends ButtonGame_Style_NewArmy {
        AnonymousClass8(int i, int i2, boolean z, String str, int i3, int i4, int i5, int i6, int i7, int i8, boolean z2) {
            super(i, i2, z, str, i3, i4, i5, i6, i7, i8, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_RecruitArmy_NewArmy.this.updateCreateNewArmy(getValue1(), getValue2(), getCurrent() == 1);
            InGame_RecruitArmy_NewArmy_Battlefield.rebuildMenuIfVisible();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy_NewArmy$9, reason: invalid class name */
    class AnonymousClass9 extends ButtonGame_Style_NewArmy {
        AnonymousClass9(int i, int i2, boolean z, String str, int i3, int i4, int i5, int i6, int i7, int i8, boolean z2) {
            super(i, i2, z, str, i3, i4, i5, i6, i7, i8, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_RecruitArmy_NewArmy.this.updateCreateNewArmy(getValue1(), getValue2(), getCurrent() == 1);
            InGame_RecruitArmy_NewArmy_Battlefield.rebuildMenuIfVisible();
        }
    }

    public static class CreateNewArmy {
        public int iArmyID;
        public int iUnitID;
        public int numOfRegiments = 1;
        public int textWidth = 0;

        public CreateNewArmy(int i, int i2) {
            this.iUnitID = i;
            this.iArmyID = i2;
            updateTextWidth();
        }

        public void updateTextWidth() {
            Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_BOLD), "" + this.numOfRegiments);
            this.textWidth = (int) Renderer.glyphLayout.width;
        }
    }

    public InGame_RecruitArmy_NewArmy() {
        int i;
        int i2;
        ArrayList arrayList = new ArrayList();
        iCost = 0;
        iRegiments = 0;
        fMaintenance = 0.0f;
        createNewArmy.clear();
        iProvinceID = -1;
        int i3 = CFG.PADDING + Images.boxTitleBORDERWIDTH;
        ImageManager.getImage(Images.title2).getHeight();
        int width = ImageManager.getImage(Images.insideTop).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height = ImageManager.getImage(Images.title1Red).getHeight() + ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i4 = CFG.PADDING;
        int i5 = CFG.PADDING;
        int iMax = Math.max((ImageManager.getImage(Images.battleArmy0).getHeight() * 2) + (CFG.PADDING * 3), CFG.TEXT_HEIGHT + (CFG.PADDING * 6));
        int i6 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
        int i7 = width - (i3 * 2);
        int i8 = CFG.PADDING;
        int i9 = ((i7 - CFG.PADDING) * 3) / 5;
        int i10 = ((i7 - CFG.PADDING) * 2) / 5;
        int width2 = ImageManager.getImage(Game_Calendar.IMG_MANPOWER).getWidth();
        int i11 = width2 + (CFG.PADDING * 3);
        arrayList.add(new AnonymousClass1(Game.lang.get("Back"), Game_Calendar.IMG_MANPOWER, 0, i3, i5, i11, (i6 * 2) + CFG.PADDING));
        int i12 = i3 + i11;
        int i13 = i6;
        arrayList.add(new AnonymousClass2("0", Game_Calendar.IMG_MANPOWER, i12 + CFG.PADDING, i5, i10 - (i11 + CFG.PADDING), i13, width2, 0));
        int i14 = i9 - i6;
        arrayList.add(new AnonymousClass3(Game.lang.get("ChooseAProvince"), Images.provinces, CFG.PADDING + i3 + i10, i5, i14 - CFG.PADDING, i13, width2, iProvinceID, true));
        arrayList.add(new AnonymousClass4(Images.information, (CFG.PADDING * 2) + i3 + i10 + (i14 - CFG.PADDING), i5, i6, i6));
        int height2 = i5 + arrayList.get(arrayList.size() - 1).getHeight() + i4;
        arrayList.add(new AnonymousClass5("0", Images.gold, i12 + CFG.PADDING, height2, i10 - (i11 + CFG.PADDING), i13, width2, 0));
        arrayList.add(new AnonymousClass6(Game.lang.get("CreateArmy"), CFG.FONT_REGULAR, -1, CFG.PADDING + i3 + i10, height2, i9, i6, true));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + i4;
        int i15 = Images.boxTitleBORDERWIDTH;
        arrayList.add(InGame_RecruitArmy.getTitleFirstLine(height3, width, iMax));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + i4;
        int i16 = 0;
        for (int i17 = 0; i17 < ArmyManager.iUnitsTypesSize; i17++) {
            int i18 = 0;
            while (i18 < ArmyManager.lArmySize.get(i17).intValue()) {
                if (ArmyManager.lUnitsTypes.get(i17).Line == 0 && Game.getCiv(Game.player.iCivID).isUnitBest(i17, i18)) {
                    i16++;
                    i2 = i18;
                    arrayList.add(new AnonymousClass7(i17, i18, i3, height4, i7 - CFG.BUTTON_HEIGHT, true));
                    int i19 = i17;
                    arrayList.add(new AnonymousClass8(i19, i2, true, "+", CFG.FONT_REGULAR, -1, (i7 - CFG.BUTTON_HEIGHT) + i3 + CFG.PADDING, height4, CFG.BUTTON_HEIGHT - CFG.PADDING, (ButtonUnit_03.getTopH() - CFG.PADDING) / 2, true));
                    arrayList.add(new AnonymousClass9(i19, i2, false, "-", CFG.FONT_REGULAR, -1, (i7 - CFG.BUTTON_HEIGHT) + i3 + CFG.PADDING, ((ButtonUnit_03.getTopH() - CFG.PADDING) / 2) + height4 + CFG.PADDING, CFG.BUTTON_HEIGHT - CFG.PADDING, (ButtonUnit_03.getTopH() - CFG.PADDING) / 2, true));
                    height4 += ButtonUnit_03.getTopH() + CFG.PADDING;
                } else {
                    i2 = i18;
                }
                i18 = i2 + 1;
            }
        }
        if (i16 == 0) {
            arrayList.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i3, height4, i7, CFG.BUTTON_HEIGHT2));
            height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        arrayList.add(InGame_RecruitArmy.getTitleFirstLineSide(height4, width, iMax));
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + i4;
        int i20 = 0;
        for (int i21 = 0; i21 < ArmyManager.iUnitsTypesSize; i21++) {
            int i22 = 0;
            while (i22 < ArmyManager.lArmySize.get(i21).intValue()) {
                if (ArmyManager.lUnitsTypes.get(i21).Line == 1 && Game.getCiv(Game.player.iCivID).isUnitBest(i21, i22)) {
                    i = i22;
                    arrayList.add(new AnonymousClass10(i21, i22, i3, height5, i7 - CFG.BUTTON_HEIGHT, true));
                    int i23 = i21;
                    arrayList.add(new AnonymousClass11(i23, i, true, "+", CFG.FONT_REGULAR, -1, (i7 - CFG.BUTTON_HEIGHT) + i3 + CFG.PADDING, height5, CFG.BUTTON_HEIGHT - CFG.PADDING, (ButtonUnit_03.getTopH() - CFG.PADDING) / 2, true));
                    arrayList.add(new AnonymousClass12(i23, i, false, "-", CFG.FONT_REGULAR, -1, (i7 - CFG.BUTTON_HEIGHT) + i3 + CFG.PADDING, ((ButtonUnit_03.getTopH() - CFG.PADDING) / 2) + height5 + CFG.PADDING, CFG.BUTTON_HEIGHT - CFG.PADDING, (ButtonUnit_03.getTopH() - CFG.PADDING) / 2, true));
                    height5 += ButtonUnit_03.getTopH() + CFG.PADDING;
                    i20++;
                } else {
                    i = i22;
                }
                i22 = i + 1;
            }
        }
        if (i20 == 0) {
            arrayList.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i3, height5, i7, CFG.BUTTON_HEIGHT2));
            height5 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        arrayList.add(InGame_RecruitArmy.getTitleSecondLine(height5, width, iMax));
        int height6 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + i4;
        int i24 = 0;
        for (int i25 = 0; i25 < ArmyManager.iUnitsTypesSize; i25++) {
            for (int i26 = 0; i26 < ArmyManager.lArmySize.get(i25).intValue(); i26++) {
                if (ArmyManager.lUnitsTypes.get(i25).Line > 1 && Game.getCiv(Game.player.iCivID).isUnitBest(i25, i26)) {
                    i24++;
                    arrayList.add(new AnonymousClass13(i25, i26, i3, height6, i7 - CFG.BUTTON_HEIGHT, true));
                    int i27 = i25;
                    int i28 = i26;
                    arrayList.add(new AnonymousClass14(i27, i28, true, "+", CFG.FONT_REGULAR, -1, (i7 - CFG.BUTTON_HEIGHT) + i3 + CFG.PADDING, height6, CFG.BUTTON_HEIGHT - CFG.PADDING, (ButtonUnit_03.getTopH() - CFG.PADDING) / 2, true));
                    arrayList.add(new AnonymousClass15(i27, i28, false, "-", CFG.FONT_REGULAR, -1, (i7 - CFG.BUTTON_HEIGHT) + i3 + CFG.PADDING, ((ButtonUnit_03.getTopH() - CFG.PADDING) / 2) + height6 + CFG.PADDING, CFG.BUTTON_HEIGHT - CFG.PADDING, (ButtonUnit_03.getTopH() - CFG.PADDING) / 2, true));
                    height6 += ButtonUnit_03.getTopH() + CFG.PADDING;
                }
            }
        }
        if (i24 == 0) {
            arrayList.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i3, height6, i7, CFG.BUTTON_HEIGHT2));
            height6 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        int iMin = Math.min(height6, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, 0, width, Math.max(height6, iMin)));
        HOVER_POSX = otherMenuPosX_2 + width + CFG.PADDING;
        initMenu(new AnonymousClass16(Game.lang.get("CreateNewArmy"), Game.lang.get("BattleWidth") + ": " + BattleManager.getBattleWidth(Game.player.iCivID), false, false, Images.title1Red), otherMenuPosX_2, height, width, iMin, arrayList, true, true);
        this.drawScrollPositionAlways = false;
    }

    public static final boolean actionCreateNewArmy() {
        if (createNewArmy.size() <= 0) {
            Game.menuManager.addToast_Error(Game.lang.get("Army") + ": " + iRegiments, Game_Calendar.IMG_MANPOWER);
            return false;
        }
        if (iProvinceID < 0) {
            Game.menuManager.addToast_Error(Game.lang.get("ChooseAProvince"), Images.provinces);
            return false;
        }
        if (Game.getCiv(Game.player.iCivID).getNumOfProvinces() <= 0) {
            return false;
        }
        String strExtraRandomTag = CFG.extraRandomTag();
        Game.getCiv(Game.player.iCivID).lCreateNewArmy.put(strExtraRandomTag, Integer.valueOf(iProvinceID));
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i++) {
            if (!Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i)).isOccupied()) {
                arrayList.add(Integer.valueOf(Game.getCiv(Game.player.iCivID).getProvinceID(i)));
            }
        }
        int size = arrayList.size();
        if (size <= 0) {
            Game.menuManager.addToast_Error(Game.lang.get("NumberOfProvinces") + ": " + size, Images.provinces);
            return false;
        }
        int size2 = createNewArmy.size();
        for (int i2 = 0; i2 < size2; i2++) {
            for (int i3 = 0; i3 < createNewArmy.get(i2).numOfRegiments; i3++) {
                Game.getCiv(Game.player.iCivID).recruitArmy(new ArmyRecruit(((Integer) arrayList.get(Game.oR.nextInt(size))).intValue(), createNewArmy.get(i2).iUnitID, createNewArmy.get(i2).iArmyID, strExtraRandomTag));
            }
        }
        Game.menuManager.addToastGold(Game.lang.get("Done"), Game_Calendar.IMG_MANPOWER);
        return true;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void actionCloseMenu() {
        super.actionCloseMenu();
        if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_NEW_ARMY_CHOOSE_PROVINCE) {
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
        }
    }

    public final void addUnit(int i, int i2) {
        if (Game.getCiv(Game.player.iCivID).fManpower < (iRegiments + 1) * Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE) {
            Game.menuManager.addToastInsufficient(Game.lang.get("Manpower") + ": ", CFG.getPrecision2(Game.getCiv(Game.player.iCivID).fManpower, 1) + " / " + ((iRegiments + 1) * Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE), Game_Calendar.IMG_MANPOWER);
            return;
        }
        if (Game.getCiv(Game.player.iCivID).fGold < iCost + (ArmyManager.lArmy.get(i).get(i2).Cost * ((Game.getCiv(Game.player.iCivID).getArmyRegimentSize() + Game.getCiv(Game.player.iCivID).iArmyRecruitSize_Total) + iRegiments >= Game.getCiv(Game.player.iCivID).iRegimentsLimit ? GameValues.army.REGIMENTS_LIMIT_RECRUIT_COST_OVER : 1.0f))) {
            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", "" + CFG.getPrecision2(ArmyManager.lArmy.get(i).get(i2).Cost * ((Game.getCiv(Game.player.iCivID).getArmyRegimentSize() + Game.getCiv(Game.player.iCivID).iArmyRecruitSize_Total) + iRegiments >= Game.getCiv(Game.player.iCivID).iRegimentsLimit ? GameValues.army.REGIMENTS_LIMIT_RECRUIT_COST_OVER : 1.0f), 10), Images.gold);
            return;
        }
        for (int size = createNewArmy.size() - 1; size >= 0; size--) {
            if (createNewArmy.get(size).iUnitID == i && createNewArmy.get(size).iArmyID == i2) {
                createNewArmy.get(size).numOfRegiments++;
                createNewArmy.get(size).updateTextWidth();
                return;
            }
        }
        createNewArmy.add(new CreateNewArmy(i, i2));
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), CFG.PADDING + getHeight(), false);
        ImageManager.getImage(Images.recruitArmyOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.recruitArmyOver).getWidth() / 2)) + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.recruitArmyOver).getHeight()));
        if (Game.getCiv(Game.player.iCivID).diplomacy.isAtWar()) {
            spriteBatch.setColor(InGame_RecruitArmy.sparksColor);
            InGame_RecruitArmy.sparksAnimation.draw2(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), Images.sparkHeight, false, true);
            spriteBatch.setColor(Color.WHITE);
        }
        super.draw(spriteBatch, i3, i2, z, status);
    }

    public final void removeUnit(int i, int i2) {
        for (int size = createNewArmy.size() - 1; size >= 0; size--) {
            if (createNewArmy.get(size).iUnitID == i && createNewArmy.get(size).iArmyID == i2) {
                createNewArmy.get(size).numOfRegiments--;
                if (createNewArmy.get(size).numOfRegiments == 0) {
                    createNewArmy.remove(size);
                    return;
                } else {
                    createNewArmy.get(size).updateTextWidth();
                    return;
                }
            }
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
        if (z) {
            return;
        }
        Game.menuManager.setVisibleInGame_RecruitArmy_Battlefield(false);
        if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_NEW_ARMY_CHOOSE_PROVINCE) {
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
        }
    }

    public void updateArmyComposition(int i) {
        AI_Army_Composition aI_Army_Composition = new AI_Army_Composition(Game.player.iCivID, Math.min(0, iRegiments + i));
        iCost = 0;
        iRegiments = 0;
        fMaintenance = 0.0f;
        createNewArmy.clear();
        for (int i2 = 0; i2 < aI_Army_Composition.numFirstLine; i2++) {
            addUnit(Game.getCiv(Game.player.iCivID).unitsBest_FirstLine.get(0).unitID, Game.getCiv(Game.player.iCivID).unitsBest_FirstLine.get(0).armyID);
        }
        for (int i3 = 0; i3 < aI_Army_Composition.numFlank; i3++) {
            addUnit(Game.getCiv(Game.player.iCivID).unitsBest_Flank.get(0).unitID, Game.getCiv(Game.player.iCivID).unitsBest_Flank.get(0).armyID);
        }
        for (int i4 = 0; i4 < aI_Army_Composition.numSupport; i4++) {
            addUnit(Game.getCiv(Game.player.iCivID).unitsBest_Support.get(0).unitID, Game.getCiv(Game.player.iCivID).unitsBest_Support.get(0).armyID);
        }
        for (int i5 = 0; i5 < aI_Army_Composition.numSiege; i5++) {
            addUnit(Game.getCiv(Game.player.iCivID).unitsBest_Siege.get(0).unitID, Game.getCiv(Game.player.iCivID).unitsBest_Siege.get(0).armyID);
        }
    }

    public final void updateCost() {
        iCost = 0;
        fMaintenance = 0.0f;
        iRegiments = 0;
        for (int size = createNewArmy.size() - 1; size >= 0; size--) {
            for (int i = 0; i < createNewArmy.get(size).numOfRegiments; i++) {
                iCost = (int) (iCost + (ArmyManager.lArmy.get(createNewArmy.get(size).iUnitID).get(createNewArmy.get(size).iArmyID).Cost * ((Game.getCiv(Game.player.iCivID).getArmyRegimentSize() + Game.getCiv(Game.player.iCivID).iArmyRecruitSize_Total) + iRegiments >= Game.getCiv(Game.player.iCivID).iRegimentsLimit ? GameValues.army.REGIMENTS_LIMIT_RECRUIT_COST_OVER : 1.0f)));
                fMaintenance += ArmyManager.lArmy.get(createNewArmy.get(size).iUnitID).get(createNewArmy.get(size).iArmyID).MaintenanceCost;
                iRegiments++;
            }
        }
        getMenuElement(1).setText("" + iRegiments);
        getMenuElement(4).setText(CFG.getNumberWithSpaces("" + iCost));
    }

    public final void updateCreateNewArmy(int i, int i2, boolean z) {
        if (z) {
            addUnit(i, i2);
        } else {
            removeUnit(i, i2);
        }
        updateCost();
    }
}
