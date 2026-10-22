package aoc.kingdoms.lukasz.menusInGame;

import aoc.kingdoms.lukasz.jakowski.AI.Government.nSju.IlLkpaQxs;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Keyboard;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRanking;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Click;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTemporaryLoad;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Horizontal;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Desc;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Write;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2;
import aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battlefield;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.DrawOver.SQ.XjthpFh;
import aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods;
import aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy;
import aoc.kingdoms.lukasz.menusInGame.Technology.InGame_TechnologyChoose;
import aoc.kingdoms.lukasz.menusScenarioEditor.YGiX.gpVDKipRURuzw;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.assets.loaders.Wkvw.PZBvyl;
import com.badlogic.gdx.assets.loaders.Wkvw.nEtnPpUF;
import com.badlogic.gdx.backends.android.Zrdz.PxHJ;
import com.badlogic.gdx.backends.android.surfaceview.JuyF.CvuNnwgYwe;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.net.otUh.aBEBOpwLZcQFCZ;
import com.badlogic.gdx.utils.compression.spWT.QefTqRjwAJmEDy;
import com.google.android.gms.internal.tasks.Vhe.SwmJtrccN;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Encyclopedia extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static long lTime = 0;
    public static String sSearch = "";

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$1, reason: invalid class name */
    class AnonymousClass1 extends Text_StaticBG_Write {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.SEARCH_ENCYCLOPEDIA, InGame_Encyclopedia.sSearch);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Write, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return InGame_Encyclopedia.sSearch + Keyboard.getKeyboardVerticalLine();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$10, reason: invalid class name */
    class AnonymousClass10 extends Text_Desc {
        AnonymousClass10(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/manpowerProvince.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$11, reason: invalid class name */
    class AnonymousClass11 extends Text_Title_v2 {
        AnonymousClass11(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/regimentsLimit.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$12, reason: invalid class name */
    class AnonymousClass12 extends ButtonStatsRectIMG {
        AnonymousClass12(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame.action3();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/regimentsLimit.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$13, reason: invalid class name */
    class AnonymousClass13 extends Text_Title_v2 {
        AnonymousClass13(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/battle.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$14, reason: invalid class name */
    class AnonymousClass14 extends ButtonStatsRectIMG {
        AnonymousClass14(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/battle.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$15, reason: invalid class name */
    class AnonymousClass15 extends Text_Desc {
        AnonymousClass15(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/battle.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$16, reason: invalid class name */
    class AnonymousClass16 extends Text_Desc {
        AnonymousClass16(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/battleLines.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$17, reason: invalid class name */
    class AnonymousClass17 extends Text_Desc {
        AnonymousClass17(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/battleWidth.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$18, reason: invalid class name */
    class AnonymousClass18 extends ButtonStatsRectIMG {
        AnonymousClass18(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/generals.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$19, reason: invalid class name */
    class AnonymousClass19 extends Text_Desc {
        AnonymousClass19(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/generalStats.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonStatsRectIMG {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
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

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/armyComposition.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$20, reason: invalid class name */
    class AnonymousClass20 extends Text_Desc {
        AnonymousClass20(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/generalStats.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$21, reason: invalid class name */
    class AnonymousClass21 extends ButtonStatsRectIMG {
        AnonymousClass21(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/generalStats.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$22, reason: invalid class name */
    class AnonymousClass22 extends ButtonStatsRectIMG {
        AnonymousClass22(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/siegeEnd.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$23, reason: invalid class name */
    class AnonymousClass23 extends Text_Desc {
        AnonymousClass23(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/battleFirstLine.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$24, reason: invalid class name */
    class AnonymousClass24 extends Text_Desc {
        AnonymousClass24(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/battleSecondLine.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$25, reason: invalid class name */
    class AnonymousClass25 extends Text_Desc {
        AnonymousClass25(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/battleCombat.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$26, reason: invalid class name */
    class AnonymousClass26 extends ButtonStatsRectIMG {
        AnonymousClass26(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/morale.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$27, reason: invalid class name */
    class AnonymousClass27 extends Text_Desc {
        AnonymousClass27(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/morale.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$28, reason: invalid class name */
    class AnonymousClass28 extends Text_Desc {
        AnonymousClass28(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/battleRetreat.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$29, reason: invalid class name */
    class AnonymousClass29 extends ButtonStatsRectIMG {
        AnonymousClass29(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/discipline.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$3, reason: invalid class name */
    class AnonymousClass3 extends Text_Desc {
        AnonymousClass3(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/armyComposition.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$30, reason: invalid class name */
    class AnonymousClass30 extends Text_Desc {
        AnonymousClass30(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad(PZBvyl.QZZ));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$31, reason: invalid class name */
    class AnonymousClass31 extends ButtonStatsRectIMG {
        AnonymousClass31(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/battleRetreat.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$32, reason: invalid class name */
    class AnonymousClass32 extends Text_Title_v2 {
        AnonymousClass32(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/siege.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$33, reason: invalid class name */
    class AnonymousClass33 extends ButtonStatsRectIMG {
        AnonymousClass33(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/siege.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$34, reason: invalid class name */
    class AnonymousClass34 extends Text_Desc {
        AnonymousClass34(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/siegeSum.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$35, reason: invalid class name */
    class AnonymousClass35 extends Text_Desc {
        AnonymousClass35(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/siegeDefense.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$36, reason: invalid class name */
    class AnonymousClass36 extends Text_Desc {
        AnonymousClass36(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/siegeEnd.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$37, reason: invalid class name */
    class AnonymousClass37 extends Text_Title_v2 {
        AnonymousClass37(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/fogOfWar.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$38, reason: invalid class name */
    class AnonymousClass38 extends ButtonStatsRectIMG {
        AnonymousClass38(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/fogOfWar.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$39, reason: invalid class name */
    class AnonymousClass39 extends ButtonStatsRectIMG {
        AnonymousClass39(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/warWeariness.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$4, reason: invalid class name */
    class AnonymousClass4 extends Text_Title_v2 {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/manpower.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$40, reason: invalid class name */
    class AnonymousClass40 extends Text_Title_v2 {
        AnonymousClass40(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad(PxHJ.SbdaAmTBNbpTaRD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$41, reason: invalid class name */
    class AnonymousClass41 extends ButtonStatsRectIMG {
        AnonymousClass41(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/civStability.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$42, reason: invalid class name */
    class AnonymousClass42 extends Text_Desc {
        AnonymousClass42(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/coreReligion.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$43, reason: invalid class name */
    class AnonymousClass43 extends Text_Title_v2 {
        AnonymousClass43(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/province.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$44, reason: invalid class name */
    class AnonymousClass44 extends ButtonStatsRectIMG {
        AnonymousClass44(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/provinceIncome.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$45, reason: invalid class name */
    class AnonymousClass45 extends Text_Desc {
        AnonymousClass45(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/provinceIncome.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$46, reason: invalid class name */
    class AnonymousClass46 extends Text_Desc {
        AnonymousClass46(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/provinceIncomeReduced.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$47, reason: invalid class name */
    class AnonymousClass47 extends ButtonStatsRectIMG {
        AnonymousClass47(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/provinceTax.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$48, reason: invalid class name */
    class AnonymousClass48 extends Text_Desc {
        AnonymousClass48(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/provinceTax.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$49, reason: invalid class name */
    class AnonymousClass49 extends ButtonStatsRectIMG {
        AnonymousClass49(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/provinceEconomy.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonStatsRectIMG {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame.action3();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/manpower.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$50, reason: invalid class name */
    class AnonymousClass50 extends Text_Desc {
        AnonymousClass50(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/provinceEconomy.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$51, reason: invalid class name */
    class AnonymousClass51 extends Text_Desc {
        AnonymousClass51(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/provinceGrowthRate.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$52, reason: invalid class name */
    class AnonymousClass52 extends ButtonStatsRectIMG {
        AnonymousClass52(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/provinceResource.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$53, reason: invalid class name */
    class AnonymousClass53 extends Text_Desc {
        AnonymousClass53(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/provinceResource.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$54, reason: invalid class name */
    class AnonymousClass54 extends Text_Desc {
        AnonymousClass54(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/provinceProduction.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$55, reason: invalid class name */
    class AnonymousClass55 extends Text_Desc {
        AnonymousClass55(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_Goods();
            Game.menuManager.setVisibleInGame_Goods(true);
            InGame_Goods.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/largestGoods.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$56, reason: invalid class name */
    class AnonymousClass56 extends ButtonStatsRectIMG {
        AnonymousClass56(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad(nEtnPpUF.rFIcpmU));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$57, reason: invalid class name */
    class AnonymousClass57 extends Text_Desc {
        AnonymousClass57(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/provinceTax.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$58, reason: invalid class name */
    class AnonymousClass58 extends Text_Desc {
        AnonymousClass58(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/provinceAssimilation.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$59, reason: invalid class name */
    class AnonymousClass59 extends ButtonStatsRectIMG {
        AnonymousClass59(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/provinceGrowthRate.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonStatsRectIMG {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/manpowerProvince.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$60, reason: invalid class name */
    class AnonymousClass60 extends Text_Desc {
        AnonymousClass60(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/provinceGrowthRate2.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$61, reason: invalid class name */
    class AnonymousClass61 extends ButtonStatsRectIMG {
        AnonymousClass61(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/disease.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$62, reason: invalid class name */
    class AnonymousClass62 extends Text_Desc {
        AnonymousClass62(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/disease.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$63, reason: invalid class name */
    class AnonymousClass63 extends Text_Title_v2 {
        AnonymousClass63(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/legacy.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$64, reason: invalid class name */
    class AnonymousClass64 extends ButtonStatsRectIMG {
        AnonymousClass64(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/legacy.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$65, reason: invalid class name */
    class AnonymousClass65 extends Text_Desc {
        AnonymousClass65(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/legacy.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$66, reason: invalid class name */
    class AnonymousClass66 extends Text_Title_v2 {
        AnonymousClass66(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/advisors.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$67, reason: invalid class name */
    class AnonymousClass67 extends ButtonStatsRectIMG {
        AnonymousClass67(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/advisors.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$68, reason: invalid class name */
    class AnonymousClass68 extends Text_Desc {
        AnonymousClass68(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/advisors.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$69, reason: invalid class name */
    class AnonymousClass69 extends Text_Title_v2 {
        AnonymousClass69(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/supremeCourt.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonStatsRectIMG {
        AnonymousClass7(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/manpowerProvince.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$70, reason: invalid class name */
    class AnonymousClass70 extends ButtonStatsRectIMG {
        AnonymousClass70(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/supremeCourt.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$71, reason: invalid class name */
    class AnonymousClass71 extends Text_Title_v2 {
        AnonymousClass71(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/technology.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$72, reason: invalid class name */
    class AnonymousClass72 extends Text_Desc {
        AnonymousClass72(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/library.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$73, reason: invalid class name */
    class AnonymousClass73 extends ButtonStatsRectIMG {
        AnonymousClass73(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/advantages.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$74, reason: invalid class name */
    class AnonymousClass74 extends TextIcon2_Horizontal {
        int id;

        AnonymousClass74(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            int i = this.id;
            this.menuElementHover = CivilizationRanking.buildElementHover(i, i);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setCurrent(int i) {
            this.id = i;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$75, reason: invalid class name */
    class AnonymousClass75 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass75(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j) {
            super(str, i, i2, i3, i4, i5, i6, i7, j);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_TechnologyChoose() && !InGame_TechnologyChoose.IN_TECHNOLOGY_CHOOSE && !InGame_ListOfBuildings.IN_BUILDINGS) {
                Game.menuManager.setVisibleInGame_TechnologyChoose(false);
            } else {
                Game.menuManager.rebuildInGame_TechnologyChoose_HideMenus();
                Game.menuManager.rebuildInGame_ListOfUnits();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ListOfUnits"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CLICK_TOP;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$76, reason: invalid class name */
    class AnonymousClass76 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass76(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j) {
            super(str, i, i2, i3, i4, i5, i6, i7, j);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_TechnologyChoose() && !InGame_TechnologyChoose.IN_TECHNOLOGY_CHOOSE && InGame_ListOfBuildings.IN_BUILDINGS) {
                Game.menuManager.setVisibleInGame_TechnologyChoose(false);
            } else {
                Game.menuManager.rebuildInGame_TechnologyChoose_HideMenus();
                Game.menuManager.rebuildInGame_ListOfBuildings();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ListOfBuildings"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.buildings, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CLICK_TOP;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$77, reason: invalid class name */
    class AnonymousClass77 extends MenuTitleIMG {
        AnonymousClass77(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Encyclopedia.lTime;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$8, reason: invalid class name */
    class AnonymousClass8 extends Text_Desc {
        AnonymousClass8(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/manpowerBuildings.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia$9, reason: invalid class name */
    class AnonymousClass9 extends Text_Desc {
        AnonymousClass9(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("ui/tutorial/manpowerProvince.png"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x1011  */
    /* JADX WARN: Code duplicated, block: B:104:0x109b  */
    /* JADX WARN: Code duplicated, block: B:106:0x10a9  */
    /* JADX WARN: Code duplicated, block: B:109:0x1157  */
    /* JADX WARN: Code duplicated, block: B:111:0x1163  */
    /* JADX WARN: Code duplicated, block: B:114:0x11eb  */
    /* JADX WARN: Code duplicated, block: B:116:0x11f7  */
    /* JADX WARN: Code duplicated, block: B:118:0x1283  */
    /* JADX WARN: Code duplicated, block: B:120:0x1295  */
    /* JADX WARN: Code duplicated, block: B:122:0x134b  */
    /* JADX WARN: Code duplicated, block: B:124:0x1359  */
    /* JADX WARN: Code duplicated, block: B:126:0x13b6  */
    /* JADX WARN: Code duplicated, block: B:128:0x13c6  */
    /* JADX WARN: Code duplicated, block: B:130:0x1446  */
    /* JADX WARN: Code duplicated, block: B:132:0x1458  */
    /* JADX WARN: Code duplicated, block: B:134:0x14fb  */
    /* JADX WARN: Code duplicated, block: B:136:0x150b  */
    /* JADX WARN: Code duplicated, block: B:138:0x158b  */
    /* JADX WARN: Code duplicated, block: B:140:0x1599  */
    /* JADX WARN: Code duplicated, block: B:142:0x15f6  */
    /* JADX WARN: Code duplicated, block: B:144:0x1606  */
    /* JADX WARN: Code duplicated, block: B:146:0x1684  */
    /* JADX WARN: Code duplicated, block: B:148:0x1698  */
    /* JADX WARN: Code duplicated, block: B:150:0x176d  */
    /* JADX WARN: Code duplicated, block: B:152:0x177f  */
    /* JADX WARN: Code duplicated, block: B:154:0x1815  */
    /* JADX WARN: Code duplicated, block: B:156:0x1825  */
    /* JADX WARN: Code duplicated, block: B:158:0x18b4  */
    /* JADX WARN: Code duplicated, block: B:160:0x18c7  */
    /* JADX WARN: Code duplicated, block: B:162:0x197c  */
    /* JADX WARN: Code duplicated, block: B:164:0x198a  */
    /* JADX WARN: Code duplicated, block: B:167:0x19e5  */
    /* JADX WARN: Code duplicated, block: B:169:0x19ef  */
    /* JADX WARN: Code duplicated, block: B:172:0x1a7d  */
    /* JADX WARN: Code duplicated, block: B:174:0x1a81  */
    /* JADX WARN: Code duplicated, block: B:175:0x1a83  */
    /* JADX WARN: Code duplicated, block: B:181:0x1ad0  */
    /* JADX WARN: Code duplicated, block: B:183:0x1aea  */
    /* JADX WARN: Code duplicated, block: B:187:0x1b0d  */
    /* JADX WARN: Code duplicated, block: B:189:0x1b49  */
    /* JADX WARN: Code duplicated, block: B:190:0x1b4c  */
    /* JADX WARN: Code duplicated, block: B:194:0x1bda  */
    /* JADX WARN: Code duplicated, block: B:195:0x1be4  */
    /* JADX WARN: Code duplicated, block: B:198:0x1c23  */
    /* JADX WARN: Code duplicated, block: B:199:0x1c2c  */
    /* JADX WARN: Code duplicated, block: B:202:0x1ab5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:205:0x1a76 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:209:0x1b02 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:27:0x03b8  */
    /* JADX WARN: Code duplicated, block: B:30:0x03c9  */
    /* JADX WARN: Code duplicated, block: B:31:0x03cd  */
    /* JADX WARN: Code duplicated, block: B:34:0x0451  */
    /* JADX WARN: Code duplicated, block: B:36:0x0460  */
    /* JADX WARN: Code duplicated, block: B:38:0x04ba  */
    /* JADX WARN: Code duplicated, block: B:40:0x04cc  */
    /* JADX WARN: Code duplicated, block: B:43:0x0578  */
    /* JADX WARN: Code duplicated, block: B:47:0x058f  */
    /* JADX WARN: Code duplicated, block: B:49:0x076e  */
    /* JADX WARN: Code duplicated, block: B:52:0x0785  */
    /* JADX WARN: Code duplicated, block: B:53:0x078a  */
    /* JADX WARN: Code duplicated, block: B:56:0x08e1  */
    /* JADX WARN: Code duplicated, block: B:60:0x08f7  */
    /* JADX WARN: Code duplicated, block: B:62:0x0980  */
    /* JADX WARN: Code duplicated, block: B:64:0x0990  */
    /* JADX WARN: Code duplicated, block: B:66:0x0a06  */
    /* JADX WARN: Code duplicated, block: B:68:0x0a19  */
    /* JADX WARN: Code duplicated, block: B:70:0x0ac2  */
    /* JADX WARN: Code duplicated, block: B:72:0x0ad2  */
    /* JADX WARN: Code duplicated, block: B:74:0x0b56  */
    /* JADX WARN: Code duplicated, block: B:76:0x0b64  */
    /* JADX WARN: Code duplicated, block: B:78:0x0bc3  */
    /* JADX WARN: Code duplicated, block: B:80:0x0bd1  */
    /* JADX WARN: Code duplicated, block: B:82:0x0c2e  */
    /* JADX WARN: Code duplicated, block: B:86:0x0c49  */
    /* JADX WARN: Code duplicated, block: B:88:0x0d95  */
    /* JADX WARN: Code duplicated, block: B:92:0x0db0  */
    /* JADX WARN: Code duplicated, block: B:94:0x0eda  */
    /* JADX WARN: Code duplicated, block: B:96:0x0ef1  */
    /* JADX WARN: Code duplicated, block: B:99:0x1005  */
    public InGame_Encyclopedia() {
        boolean z;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        int i;
        String str6;
        int width;
        int i2;
        int i3;
        int size;
        int i4;
        int i5;
        int height;
        int i6;
        int i7;
        int i8;
        ArrayList arrayList = new ArrayList();
        int i9 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
        int width2 = ImageManager.getImage(Images.insideTop500).getWidth();
        InGame_CourtOptions2.getOtherMenuPosX_2();
        int height2 = ImageManager.getImage(Images.topStats).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title1Red).getHeight();
        int i10 = CFG.PADDING;
        int height3 = CFG.PADDING;
        int i11 = CFG.TEXT_HEIGHT + (CFG.PADDING * 6);
        int i12 = CFG.TEXT_HEIGHT + (CFG.PADDING * 4);
        int width3 = ImageManager.getImage(Images.gold).getWidth();
        if (Game.menuManager.getInGame()) {
            z = true;
            arrayList.add(new AnonymousClass1(Game.lang.get("Search") + ": ", CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i9, height3, width2 - (i9 * 2), CFG.BUTTON_HEIGHT2));
            height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        } else {
            z = true;
            sSearch = "";
        }
        boolean z2 = sSearch.length() == 0 ? z : false;
        String lowerCase = sSearch.toLowerCase();
        if (z2 || searchTexts(lowerCase, new String[]{"ArmyComposition", "ArmyComposition0", "SecondLine1", "SecondLine2", "SecondLine3"})) {
            arrayList.add(new Text_Title_v2(Game.lang.get("Armies"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, width2 - (Images.boxTitleBORDERWIDTH * 2), i11));
            int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int i13 = width2 - (i9 * 2);
            arrayList.add(new AnonymousClass2(Game.lang.get("ArmyComposition"), Game_Calendar.IMG_MANPOWER, i9, height4, i13, i12, width3, CFG.FONT_BOLD));
            int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass3(Game.lang.get("ArmyComposition0"), i9, height5, i13));
            int height6 = height5 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("SecondLine1"), i9, height6, i13));
            int height7 = height6 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("SecondLine2"), i9, height7, i13));
            int height8 = height7 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("SecondLine3"), i9, height8, i13));
            int height9 = height8 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int iMax = Math.max((ImageManager.getImage(Images.battleArmy0).getHeight() * 2) + (CFG.PADDING * 3), CFG.TEXT_HEIGHT + (CFG.PADDING * 6));
            arrayList.add(InGame_RecruitArmy.getTitleFirstLine(height9, width2, iMax));
            int height10 = height9 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            arrayList.add(InGame_RecruitArmy.getTitleFirstLineSide(height10, width2, iMax));
            int height11 = height10 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            arrayList.add(InGame_RecruitArmy.getTitleSecondLine(height11, width2, iMax));
            height3 = height11 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        if (z2 == 0) {
            str = lowerCase;
            if (!searchTexts(str, new String[]{"Manpower", "Manpower0", "Manpower1", "Manpower2", "Manpower3"})) {
                str2 = str;
            }
            if (z2 == 0) {
                str3 = str2;
                if (searchTexts(str3, new String[]{"ReinforceArmyCost", "ReinforceCostEncy"})) {
                }
                if (z2 == 0 || searchTexts(str3, new String[]{aBEBOpwLZcQFCZ.gHllUUSyIgfOD, "ProvinceContribution0"})) {
                    int i14 = width2 - (i9 * 2);
                    arrayList.add(new AnonymousClass6(Game.lang.get(nEtnPpUF.EgBSfDNNNmAun), Images.provinces, i9, height3, i14, i12, width3, CFG.FONT_BOLD));
                    int height12 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("ProvinceContribution0"), i9, height12, i14));
                    height3 = height12 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0 || searchTexts(str3, new String[]{"IncreasingMaximumManpower", "IncreasingMaximumManpower0", "IncreasingMaximumManpower1", "TipForBestResultsIncreaseManpowerInProvincesWithHighestGrowthRateOfPopulation"})) {
                    int i15 = width2 - (i9 * 2);
                    arrayList.add(new AnonymousClass7(Game.lang.get("IncreasingMaximumManpower"), Game_Calendar.IMG_MANPOWER, i9, height3, i15, i12, width3, CFG.FONT_BOLD));
                    int height13 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass8(Game.lang.get(SwmJtrccN.OIEbNGSeBmAe), i9, height13, i15));
                    int height14 = height13 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass9(Game.lang.get("IncreasingMaximumManpower1"), i9, height14, i15));
                    int height15 = height14 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass10(Game.lang.get("TipForBestResultsIncreaseManpowerInProvincesWithHighestGrowthRateOfPopulation"), i9, height15, i15));
                    height3 = height15 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0 || searchTexts(str3, new String[]{"RegimentsLimit", "RegimnetsLimit0", "WhenTheMaximumRegimentLimitIsReachedArmyRecruitmentCostIncreasesBy", "Regiments3"})) {
                    arrayList.add(new AnonymousClass11(Game.lang.get("RegimentsLimit"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, width2 - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height16 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i16 = width2 - (i9 * 2);
                    arrayList.add(new AnonymousClass12(Game.lang.get("RegimentsLimit"), Images.regimentsLimit, i9, height16, i16, i12, width3, CFG.FONT_BOLD));
                    int height17 = height16 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("RegimnetsLimit0"), i9, height17, i16));
                    int height18 = height17 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(" = " + Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENTS_LIMIT_BASE_VALUE + " + " + Game.lang.get("LocalManpower") + " * " + CFG.getPrecision2(GameValues.army.REGIMENTS_LIMIT_MANPOWER_LEVEL, 100) + " + " + Game.lang.get("CivilizationBonuses"), i9, height18, i16));
                    int height19 = height18 + arrayList.get(arrayList.size() - 1).getHeight();
                    str4 = r15;
                    arrayList.add(new Text_Desc(Game.lang.get("WhenTheMaximumRegimentLimitIsReachedArmyRecruitmentCostIncreasesBy") + str4 + CFG.getPrecision2(GameValues.army.REGIMENTS_LIMIT_RECRUIT_COST_OVER * 100.0f, 10) + "%", i9, height19, i16));
                    int height20 = height19 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("Regiments3"), i9, height20, i16));
                    int height21 = height20 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("Regiments") + " > " + Game.lang.get("RegimentsLimit") + " = " + Game.lang.get("ArmyMaintenance") + " * (" + Game.lang.get("Regiments") + " / " + Game.lang.get("RegimentsLimit") + ")%", i9, height21, i16));
                    height3 = height21 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    str4 = ": ";
                }
                if (z2 == 0) {
                    str5 = str3;
                    if (searchTexts(str5, new String[]{"Battles", "DeploymentPhase", "DeploymentPhase0", "DeploymentPhase1", "DeploymentPhase2"})) {
                        i = width2;
                    }
                    if (z2 == 0 || searchTexts(str5, new String[]{"RoleOfGenerals", "RoleOfGenerals0", "RoleOfGenerals1"})) {
                        int i17 = i - (i9 * 2);
                        arrayList.add(new AnonymousClass18(Game.lang.get("RoleOfGenerals"), Images.general, i9, height3, i17, i12, width3, CFG.FONT_BOLD));
                        int height22 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new AnonymousClass19(Game.lang.get("RoleOfGenerals0"), i9, height22, i17));
                        int height23 = height22 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new AnonymousClass20(Game.lang.get("RoleOfGenerals1"), i9, height23, i17));
                        height3 = height23 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    }
                    if (z2 == 0 || searchTexts(str5, new String[]{"Generals", "CombatExperience", "CombatExperienceDesc"})) {
                        int i18 = i - (i9 * 2);
                        arrayList.add(new AnonymousClass21(Game.lang.get("Generals") + str4 + Game.lang.get("CombatExperience"), Images.general, i9, height3, i18, i12, width3, CFG.FONT_BOLD));
                        int height24 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new Text_Desc(Game.lang.get("CombatExperienceDesc"), i9, height24, i18));
                        height3 = height24 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    }
                    if (z2 == 0 || searchTexts(str5, new String[]{nEtnPpUF.eWOz, "BattlePhase0", "BattlePhase1", "BattlePhase2"})) {
                        int i19 = i - (i9 * 2);
                        arrayList.add(new AnonymousClass22(Game.lang.get("BattlePhase"), Images.battle, i9, height3, i19, i12, width3, CFG.FONT_BOLD));
                        int height25 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new AnonymousClass23(Game.lang.get("BattlePhase0"), i9, height25, i19));
                        int height26 = height25 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new AnonymousClass24(Game.lang.get("BattlePhase1"), i9, height26, i19));
                        int height27 = height26 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new AnonymousClass25(Game.lang.get("BattlePhase2"), i9, height27, i19));
                        height3 = height27 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    }
                    if (z2 == 0 || searchTexts(str5, new String[]{"MoraleAndRetreatMechanics", "MoraleAndRetreatMechanics0", "MoraleAndRetreatMechanics1"})) {
                        int i20 = i - (i9 * 2);
                        arrayList.add(new AnonymousClass26(Game.lang.get("MoraleAndRetreatMechanics"), Images.morale, i9, height3, i20, i12, width3, CFG.FONT_BOLD));
                        int height28 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new AnonymousClass27(Game.lang.get("MoraleAndRetreatMechanics0"), i9, height28, i20));
                        int height29 = height28 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new AnonymousClass28(Game.lang.get("MoraleAndRetreatMechanics1"), i9, height29, i20));
                        height3 = height29 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    }
                    if (z2 == 0 || searchTexts(str5, new String[]{"Discipline", "DisciplineSignifiesOrganizationAndCoordinationOfTheArmyInBattleIncreasingUnitsAttack"})) {
                        int i21 = i - (i9 * 2);
                        arrayList.add(new AnonymousClass29(Game.lang.get("Discipline"), Images.discipline, i9, height3, i21, i12, width3, CFG.FONT_BOLD));
                        int height30 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new AnonymousClass30(Game.lang.get("DisciplineSignifiesOrganizationAndCoordinationOfTheArmyInBattleIncreasingUnitsAttack"), i9, height30, i21));
                        height3 = height30 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    }
                    if (z2 == 0 || searchTexts(str5, new String[]{"DestructionOrSurvival", "DestructionOrSurvival0"})) {
                        int i22 = i - (i9 * 2);
                        arrayList.add(new AnonymousClass31(Game.lang.get("DestructionOrSurvival"), Images.skull, i9, height3, i22, i12, width3, CFG.FONT_BOLD));
                        int height31 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new Text_Desc(Game.lang.get("DestructionOrSurvival0", GameValues.battle.BATTLE_ARMY_DESTROYED_ROUND_ID), i9, height31, i22));
                        height3 = height31 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    }
                    if (z2 == 0 || searchTexts(str5, new String[]{"War", "ToDeclareWarTheRelationsBetweenCivilizationsMustBeBelowX", "WithAWarScoreOfXTheWinningSideCanProposeAWhitePeace", "WithAWarScoreOfXTheWinningSideCanMakeDemands", "EachMonthTheWinningSideGainsXOfTheTickingWarScoreBasedOnTheCurrentOverallWarScoreFromBattlesAndOccupiedProvinces", "AWhitePeaceWillBeAutomaticallySignedIfThereIsNoActivityForACertainPeriodAndTheWarscoreRemainsLow"})) {
                        arrayList.add(new Text_Title_v2(Game.lang.get("Wars"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                        int height32 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                        int i23 = i - (i9 * 2);
                        arrayList.add(new ButtonStatsRectIMG(Game.lang.get("War"), Images.war, i9, height32, i23, i12, width3, CFG.FONT_BOLD));
                        int height33 = height32 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new Text_Desc(Game.lang.get("ToDeclareWarTheRelationsBetweenCivilizationsMustBeBelowX", GameValues.war.RELATIONS_TO_DECLARE_WAR), i9, height33, i23));
                        int height34 = height33 + arrayList.get(arrayList.size() - 1).getHeight();
                        str6 = r2;
                        arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanProposeAWhitePeace", CFG.getPrecision2(GameValues.peace.WAR_WHITE_PEACE_MIN_WAR_SCORE, 100) + str6), i9, height34, i23));
                        int height35 = height34 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanMakeDemands", CFG.getPrecision2(GameValues.peace.WAR_MAKE_DEMANDS_MIN_WAR_SCORE, 100) + str6), i9, height35, i23));
                        int height36 = height35 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new Text_Desc(Game.lang.get("EachMonthTheWinningSideGainsXOfTheTickingWarScoreBasedOnTheCurrentOverallWarScoreFromBattlesAndOccupiedProvinces", "X"), i9, height36, i23));
                        int height37 = height36 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new Text_Desc(Game.lang.get("AWhitePeaceWillBeAutomaticallySignedIfThereIsNoActivityForACertainPeriodAndTheWarscoreRemainsLow"), i9, height37, i23));
                        height3 = height37 + arrayList.get(arrayList.size() - 1).getHeight();
                    } else {
                        str6 = "%";
                    }
                    if (z2 == 0 || searchTexts(str5, new String[]{"PeaceTreaty", "PeaceNegotiations", "PeaceAnnex", "PeaceDemands", "WithAWarScoreOfXTheWinningSideCanMakeDemands", "WithAWarScoreOfXTheWinningSideCanProposeAWhitePeace"})) {
                        arrayList.add(new Text_Title_v2(Game.lang.get("PeaceNegotiations"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                        int height38 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                        int i24 = i - (i9 * 2);
                        String str7 = str6;
                        arrayList.add(new ButtonStatsRectIMG(Game.lang.get(IlLkpaQxs.oPWPOdnXwgko), Images.peace, i9, height38, i24, i12, width3, CFG.FONT_BOLD));
                        int height39 = height38 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanMakeDemands", CFG.getPrecision2(GameValues.peace.WAR_MAKE_DEMANDS_MIN_WAR_SCORE, 100) + str7), i9, height39, i24));
                        int height40 = height39 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanProposeAWhitePeace", CFG.getPrecision2(GameValues.peace.WAR_WHITE_PEACE_MIN_WAR_SCORE, 100) + str7), i9, height40, i24));
                        int height41 = height40 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new Text_Desc(Game.lang.get(CvuNnwgYwe.uDQbjWBjKa), i9, height41, i24));
                        int height42 = height41 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new Text_Desc(Game.lang.get("PeaceAnnex"), i9, height42, i24));
                        height3 = height42 + arrayList.get(arrayList.size() - 1).getHeight();
                    }
                    if (z2 == 0 || searchTexts(str5, new String[]{PxHJ.QLjHFgIUXW, "SiegeProgress", "DailySiegeProgressIsTheSumOfTheSiegeAbilitiesOfAllUnitsInvolvedInTheSiege", "TheSiegeEndsWhenTheProgressReachesTheProvincesDefense", "AfterASuccessfulSiegeAllNeighboringProvincesWithoutDefensiveBuildingsWillBeOccupied", "MinimumArmyRequiredToSiegeProvinceX"})) {
                        arrayList.add(new AnonymousClass32(Game.lang.get("Siege"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                        int height43 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                        int i25 = i - (i9 * 2);
                        arrayList.add(new AnonymousClass33(Game.lang.get("SiegeProgress"), Images.siege, i9, height43, i25, i12, width3, CFG.FONT_BOLD));
                        int height44 = height43 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new AnonymousClass34(Game.lang.get("DailySiegeProgressIsTheSumOfTheSiegeAbilitiesOfAllUnitsInvolvedInTheSiege"), i9, height44, i25));
                        int height45 = height44 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new AnonymousClass35(Game.lang.get("TheSiegeEndsWhenTheProgressReachesTheProvincesDefense"), i9, height45, i25));
                        int height46 = height45 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new AnonymousClass36(Game.lang.get("AfterASuccessfulSiegeAllNeighboringProvincesWithoutDefensiveBuildingsWillBeOccupied"), i9, height46, i25));
                        int height47 = height46 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                        arrayList.add(new Text_Desc(Game.lang.get("MinimumArmyRequiredToSiegeProvinceX", CFG.getPrecision2(GameValues.siege.SIEGE_REGIMENTS_MIN * Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE, 1)), i9, height47, i25));
                        height3 = height47 + arrayList.get(arrayList.size() - 1).getHeight();
                    }
                    if (z2 == 0 || searchTexts(str5, new String[]{"Fogofwar", "FogOfWarYouCanOnlyObserveActionsInYourOwnProvincesThoseOfYourAlliesAndSubjectsDirectlyBorderingProvincesAndWhatYourTroopsUncover"})) {
                        arrayList.add(new AnonymousClass37(Game.lang.get("Fogofwar"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                        int height48 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                        int i26 = i - (i9 * 2);
                        arrayList.add(new AnonymousClass38(Game.lang.get("Fogofwar"), Images.provinces, i9, height48, i26, i12, width3, CFG.FONT_BOLD));
                        int height49 = height48 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new Text_Desc(Game.lang.get("FogOfWarYouCanOnlyObserveActionsInYourOwnProvincesThoseOfYourAlliesAndSubjectsDirectlyBorderingProvincesAndWhatYourTroopsUncover"), i9, height49, i26));
                        height3 = height49 + arrayList.get(arrayList.size() - 1).getHeight();
                    }
                    if (z2 == 0 || searchTexts(str5, new String[]{"WarWeariness", "WarWearinessH1", "WarWearinessH2"})) {
                        arrayList.add(new Text_Title_v2(Game.lang.get("WarWeariness"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                        int height50 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                        int i27 = i - (i9 * 2);
                        arrayList.add(new AnonymousClass39(Game.lang.get("WarWeariness"), Images.weariness, i9, height50, i27, i12, width3, CFG.FONT_BOLD));
                        int height51 = height50 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new Text_Desc(Game.lang.get("WarWearinessH1"), i9, height51, i27));
                        int height52 = height51 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new Text_Desc(Game.lang.get("WarWearinessH2"), i9, height52, i27));
                        height3 = height52 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    }
                    if (z2 == 0 || searchTexts(str5, new String[]{"Diplomacy", "DifferentGovReligion"})) {
                        arrayList.add(new Text_Title_v2(Game.lang.get("Diplomacy"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                        int height53 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                        int i28 = i - (i9 * 2);
                        arrayList.add(new ButtonStatsRectIMG(Game.lang.get("Diplomacy"), Images.diplomacy, i9, height53, i28, i12, width3, CFG.FONT_BOLD));
                        int height54 = height53 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new Text_Desc(Game.lang.get("DifferentGovReligion"), i9, height54, i28));
                        height3 = height54 + arrayList.get(arrayList.size() - 1).getHeight();
                    }
                    if (z2 == 0 || searchTexts(str5, new String[]{"CivilizationStability", "CivilizationStabilityReflectsThePercentageOfYourProvincesWithLegitimateClaimsComparedToThoseWithoutAndTakesIntoAccountYourReligiousUnity"})) {
                        arrayList.add(new AnonymousClass40(Game.lang.get("CivilizationStability"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                        int height55 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                        int i29 = i - (i9 * 2);
                        arrayList.add(new AnonymousClass41(Game.lang.get("CivilizationStability"), Images.civStability, i9, height55, i29, i12, width3, CFG.FONT_BOLD));
                        int height56 = height55 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new AnonymousClass42(Game.lang.get("CivilizationStabilityReflectsThePercentageOfYourProvincesWithLegitimateClaimsComparedToThoseWithoutAndTakesIntoAccountYourReligiousUnity"), i9, height56, i29));
                        height3 = height56 + arrayList.get(arrayList.size() - 1).getHeight();
                    }
                    if (z2 == 0 || searchTexts(str5, new String[]{"Province", "ProvinceMonthlyIncome", "Income0", "Income1"})) {
                        arrayList.add(new AnonymousClass43(Game.lang.get("Province"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                        int height57 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                        int i30 = i - (i9 * 2);
                        arrayList.add(new AnonymousClass44(Game.lang.get("ProvinceMonthlyIncome"), Images.gold, i9, height57, i30, i12, width3, CFG.FONT_BOLD));
                        int height58 = height57 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new AnonymousClass45(Game.lang.get("Income0"), i9, height58, i30));
                        int height59 = height58 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new AnonymousClass46(Game.lang.get("Income1"), i9, height59, i30));
                        height3 = height59 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    }
                    if (z2 == 0 || searchTexts(str5, new String[]{"TaxEfficiency", "TaxEfficiency0"})) {
                        int i31 = i - (i9 * 2);
                        arrayList.add(new AnonymousClass47(Game.lang.get("TaxEfficiency"), Images.tax, i9, height3, i31, i12, width3, CFG.FONT_BOLD));
                        int height60 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new AnonymousClass48(Game.lang.get("TaxEfficiency0"), i9, height60, i31));
                        height3 = height60 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    }
                    if (z2 == 0 || searchTexts(str5, new String[]{"EconomyOfProvince", "Economy0", "Economy1"})) {
                        int i32 = i - (i9 * 2);
                        arrayList.add(new AnonymousClass49(Game.lang.get("EconomyOfProvince"), Game_Calendar.IMG_ECONOMY, i9, height3, i32, i12, width3, CFG.FONT_BOLD));
                        int height61 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new AnonymousClass50(Game.lang.get("Economy0"), i9, height61, i32));
                        int height62 = height61 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new AnonymousClass51(Game.lang.get("Economy1"), i9, height62, i32));
                        height3 = height62 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    }
                    if (z2 == 0 || searchTexts(str5, new String[]{"ProducedGoods", "Production0", "Production1", "Production2"})) {
                        int i33 = i - (i9 * 2);
                        arrayList.add(new AnonymousClass52(Game.lang.get("ProducedGoods"), Images.goods, i9, height3, i33, i12, width3, CFG.FONT_BOLD));
                        int height63 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new AnonymousClass53(Game.lang.get("Production0"), i9, height63, i33));
                        int height64 = height63 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new AnonymousClass54(Game.lang.get("Production1"), i9, height64, i33));
                        int height65 = height64 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new AnonymousClass55(Game.lang.get("Production2"), i9, height65, i33));
                        height3 = height65 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    }
                    if (z2 == 0 || searchTexts(str5, new String[]{"Population", "Population0", "ThePopulationWillSlowlyAssimilateIfTheCivilizationHasACore"})) {
                        int i34 = i - (i9 * 2);
                        arrayList.add(new AnonymousClass56(Game.lang.get("Population"), Images.population, i9, height3, i34, i12, width3, CFG.FONT_BOLD));
                        int height66 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new AnonymousClass57(Game.lang.get("Population0"), i9, height66, i34));
                        int height67 = height66 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new AnonymousClass58(Game.lang.get("ThePopulationWillSlowlyAssimilateIfTheCivilizationHasACore"), i9, height67, i34));
                        height3 = height67 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    }
                    if (z2 == 0 || searchTexts(str5, new String[]{"GrowthRate", "GrowthRate0"})) {
                        int i35 = i - (i9 * 2);
                        arrayList.add(new AnonymousClass59(Game.lang.get("GrowthRate"), Images.populationGrowth, i9, height3, i35, i12, width3, CFG.FONT_BOLD));
                        int height68 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new AnonymousClass60(Game.lang.get("GrowthRate0"), i9, height68, i35));
                        height3 = height68 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    }
                    if (z2 == 0 || searchTexts(str5, new String[]{"Diseases", "Plague0", "Plague1"})) {
                        int i36 = i - (i9 * 2);
                        arrayList.add(new AnonymousClass61(Game.lang.get("Diseases"), Images.disease, i9, height3, i36, i12, width3, CFG.FONT_BOLD));
                        int height69 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new AnonymousClass62(Game.lang.get("Plague0"), i9, height69, i36));
                        int height70 = height69 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new Text_Desc(Game.lang.get("Plague1"), i9, height70, i36));
                        height3 = height70 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    }
                    if (z2 == 0 || searchTexts(str5, new String[]{"LegacyPoints", "Legacy", "Legacy0", "Legacy1", "Legacy2"})) {
                        arrayList.add(new AnonymousClass63(Game.lang.get("LegacyPoints"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                        int height71 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                        int i37 = i - (i9 * 2);
                        arrayList.add(new AnonymousClass64(Game.lang.get("Legacy"), Images.legacy, i9, height71, i37, i12, width3, CFG.FONT_BOLD));
                        int height72 = height71 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new Text_Desc(Game.lang.get("Legacy0"), i9, height72, i37));
                        int height73 = height72 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new AnonymousClass65(Game.lang.get("Legacy1"), i9, height73, i37));
                        int height74 = height73 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new Text_Desc(Game.lang.get("Legacy2"), i9, height74, i37));
                        height3 = height74 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    }
                    if (z2 == 0 || searchTexts(str5, new String[]{GameValues.court.COUNCIL_NAME, "Advisors", "Advisor0"})) {
                        arrayList.add(new AnonymousClass66(Game.lang.get(GameValues.court.COUNCIL_NAME), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                        int height75 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                        int i38 = i - (i9 * 2);
                        arrayList.add(new AnonymousClass67(Game.lang.get("Advisors"), Images.council, i9, height75, i38, i12, width3, CFG.FONT_BOLD));
                        int height76 = height75 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new AnonymousClass68(Game.lang.get(gpVDKipRURuzw.fPT), i9, height76, i38));
                        height3 = height76 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    }
                    if (z2 == 0 || searchTexts(str5, new String[]{"Corruption", "SupremeCourt", "Corruption0"})) {
                        arrayList.add(new AnonymousClass69(Game.lang.get("Corruption"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                        int height77 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                        int i39 = i - (i9 * 2);
                        arrayList.add(new AnonymousClass70(Game.lang.get("SupremeCourt"), Images.corruption, i9, height77, i39, i12, width3, CFG.FONT_BOLD));
                        int height78 = height77 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new Text_Desc(Game.lang.get("Corruption0"), i9, height78, i39));
                        height3 = height78 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    }
                    if (z2 == 0 || searchTexts(str5, new String[]{"Technologies", "Research", "Technology0", QefTqRjwAJmEDy.OfOYHscRevisGNh})) {
                        arrayList.add(new AnonymousClass71(Game.lang.get("Technologies"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                        int height79 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                        int i40 = i - (i9 * 2);
                        arrayList.add(new ButtonStatsRectIMG(Game.lang.get("Research"), Game_Calendar.IMG_TECHNOLOGY, i9, height79, i40, i12, width3, CFG.FONT_BOLD));
                        int height80 = height79 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new Text_Desc(Game.lang.get(XjthpFh.rtD), i9, height80, i40));
                        int height81 = height80 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new AnonymousClass72(Game.lang.get("Technology1"), i9, height81, i40));
                        height3 = height81 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    }
                    if (z2 == 0 || searchTexts(str5, new String[]{"CivilizationAdvantages", "EachTimeYouUnlockATechnologyYouWillGainOneAdvantagePointThatYouCanExchangeForABonus"})) {
                        int i41 = i - (i9 * 2);
                        arrayList.add(new AnonymousClass73(Game.lang.get("CivilizationAdvantages"), Images.advantages, i9, height3, i41, i12, width3, CFG.FONT_BOLD));
                        int height82 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                        arrayList.add(new Text_Desc(Game.lang.get("EachTimeYouUnlockATechnologyYouWillGainOneAdvantagePointThatYouCanExchangeForABonus"), i9, height82, i41));
                        height3 = height82 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    }
                    if (z2 || searchTexts(str5, new String[]{"CivilizationRank"})) {
                        arrayList.add(new Text_Title_v2(Game.lang.get("CivilizationRank"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                        int height83 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                        int i42 = i - (i9 * 2);
                        arrayList.add(new ButtonStatsRectIMG(Game.lang.get("CivilizationRank"), CivilizationRanking.getCivilizationRank_IMG(Game.getCiv(Game.player.iCivID).iCivRankID), i9, height83, i42, i12, width3, CFG.FONT_BOLD));
                        height3 = height83 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                        width = ImageManager.getImage(Images.council).getWidth() + (CFG.PADDING * 2);
                        i2 = (i42 - CFG.PADDING) / 2;
                        i3 = 0;
                        while (i3 < GameValues.civRank.CIV_RANK_MANPOWER_MAX.length) {
                            if (i3 % 2 == 0) {
                                i5 = i9;
                            } else {
                                i5 = CFG.PADDING + i9 + i2;
                            }
                            arrayList.add(new AnonymousClass74(CivilizationRanking.getCivilizationRank_Name(i3), CivilizationRanking.getCivilizationRank_IMG(i3), i5, height3, i2, CFG.BUTTON_HEIGHT3, width));
                            arrayList.get(arrayList.size() - 1).setCurrent(i3);
                            i3++;
                            if (i3 % 2 == 0) {
                                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                            }
                        }
                        size = arrayList.size();
                        for (i4 = 0; i4 < size; i4++) {
                            if (height3 < arrayList.get(i4).getPosY() + arrayList.get(i4).getHeight() + CFG.PADDING) {
                                height3 = arrayList.get(i4).getPosY() + arrayList.get(i4).getHeight() + CFG.PADDING;
                            }
                        }
                    }
                    if (Game.menuManager.getInGame()) {
                        arrayList.add(new Text_Title_v2(Game.lang.get("More"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                        int height84 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                        if (CFG.isDesktop()) {
                            i8 = CFG.BUTTON_HEIGHT2;
                        } else {
                            i8 = CFG.BUTTON_HEIGHT;
                        }
                        int i43 = i - (i9 * 2);
                        int i44 = i8;
                        arrayList.add(new AnonymousClass75(Game.lang.get("ListOfUnits"), Game_Calendar.IMG_MANPOWER, i9, height84, i43, i44, ImageManager.getImage(Images.advantages).getWidth() + (CFG.PADDING * 4), 0, 0L));
                        int height85 = height84 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                        arrayList.add(new AnonymousClass76(Game.lang.get("ListOfBuildings"), Images.buildings, i9, height85, i43, i44, ImageManager.getImage(Images.advantages).getWidth() + (CFG.PADDING * 4), 0, 0L));
                        height3 = height85 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    }
                    int i45 = height3 + CFG.PADDING;
                    int i46 = CFG.GAME_HEIGHT - height2;
                    if (Game.menuManager.getInGame()) {
                        height = CFG.GAME_HEIGHT - Game.menuManager.getInGame_MapModesPosY();
                    } else {
                        height = ImageManager.getImage(Images.buttonPlay).getHeight();
                    }
                    int iMin = Math.min(i45, i46 - (height + (CFG.PADDING * 3)));
                    i6 = i;
                    arrayList.add(new Empty(0, 0, i6, Math.max(i45, iMin)));
                    AnonymousClass77 anonymousClass77 = new AnonymousClass77(Game.lang.get("Encyclopedia"), false, false, Images.title500);
                    if (Game.menuManager.getInGame()) {
                        i7 = (CFG.GAME_WIDTH - i6) - (CFG.PADDING * 2);
                    } else {
                        i7 = CFG.PADDING * 2;
                    }
                    initMenu(anonymousClass77, i7, height2, i6, iMin, arrayList, false, true);
                    this.drawScrollPositionAlways = false;
                }
                str5 = str3;
                arrayList.add(new AnonymousClass13(Game.lang.get("Battles"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, width2 - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height86 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i47 = width2 - (i9 * 2);
                arrayList.add(new AnonymousClass14(Game.lang.get("DeploymentPhase"), Game_Calendar.IMG_MANPOWER, i9, height86, i47, i12, width3, CFG.FONT_BOLD));
                int height87 = height86 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass15(Game.lang.get(CvuNnwgYwe.FxjCfEgvZCvYNc), i9, height87, i47));
                int height88 = height87 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass16(Game.lang.get("DeploymentPhase1"), i9, height88, i47));
                int height89 = height88 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int iMax2 = Math.max((ImageManager.getImage(Images.battleArmy0).getHeight() * 2) + (CFG.PADDING * 3), CFG.TEXT_HEIGHT + (CFG.PADDING * 6));
                i = width2;
                arrayList.add(InGame_RecruitArmy.getTitleFirstLine(height89, i, iMax2));
                int height90 = height89 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                arrayList.add(InGame_RecruitArmy.getTitleFirstLineSide(height90, i, iMax2));
                int height91 = height90 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                arrayList.add(InGame_RecruitArmy.getTitleSecondLine(height91, i, iMax2));
                int height92 = height91 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                arrayList.add(new AnonymousClass17(Game.lang.get("DeploymentPhase2"), i9, height92, i47));
                height3 = height92 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                if (z2 == 0) {
                    int i110 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass18(Game.lang.get("RoleOfGenerals"), Images.general, i9, height3, i110, i12, width3, CFG.FONT_BOLD));
                    int height210 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass19(Game.lang.get("RoleOfGenerals0"), i9, height210, i110));
                    int height211 = height210 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass20(Game.lang.get("RoleOfGenerals1"), i9, height211, i110));
                    height3 = height211 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    int i111 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass18(Game.lang.get("RoleOfGenerals"), Images.general, i9, height3, i111, i12, width3, CFG.FONT_BOLD));
                    int height212 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass19(Game.lang.get("RoleOfGenerals0"), i9, height212, i111));
                    int height213 = height212 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass20(Game.lang.get("RoleOfGenerals1"), i9, height213, i111));
                    height3 = height213 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    int i112 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass21(Game.lang.get("Generals") + str4 + Game.lang.get("CombatExperience"), Images.general, i9, height3, i112, i12, width3, CFG.FONT_BOLD));
                    int height214 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("CombatExperienceDesc"), i9, height214, i112));
                    height3 = height214 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    int i113 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass21(Game.lang.get("Generals") + str4 + Game.lang.get("CombatExperience"), Images.general, i9, height3, i113, i12, width3, CFG.FONT_BOLD));
                    int height215 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("CombatExperienceDesc"), i9, height215, i113));
                    height3 = height215 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    int i114 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass22(Game.lang.get("BattlePhase"), Images.battle, i9, height3, i114, i12, width3, CFG.FONT_BOLD));
                    int height216 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass23(Game.lang.get("BattlePhase0"), i9, height216, i114));
                    int height217 = height216 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass24(Game.lang.get("BattlePhase1"), i9, height217, i114));
                    int height218 = height217 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass25(Game.lang.get("BattlePhase2"), i9, height218, i114));
                    height3 = height218 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    int i115 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass22(Game.lang.get("BattlePhase"), Images.battle, i9, height3, i115, i12, width3, CFG.FONT_BOLD));
                    int height219 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass23(Game.lang.get("BattlePhase0"), i9, height219, i115));
                    int height2110 = height219 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass24(Game.lang.get("BattlePhase1"), i9, height2110, i115));
                    int height2111 = height2110 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass25(Game.lang.get("BattlePhase2"), i9, height2111, i115));
                    height3 = height2111 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    int i210 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass26(Game.lang.get("MoraleAndRetreatMechanics"), Images.morale, i9, height3, i210, i12, width3, CFG.FONT_BOLD));
                    int height220 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass27(Game.lang.get("MoraleAndRetreatMechanics0"), i9, height220, i210));
                    int height221 = height220 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass28(Game.lang.get("MoraleAndRetreatMechanics1"), i9, height221, i210));
                    height3 = height221 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    int i211 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass26(Game.lang.get("MoraleAndRetreatMechanics"), Images.morale, i9, height3, i211, i12, width3, CFG.FONT_BOLD));
                    int height222 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass27(Game.lang.get("MoraleAndRetreatMechanics0"), i9, height222, i211));
                    int height223 = height222 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass28(Game.lang.get("MoraleAndRetreatMechanics1"), i9, height223, i211));
                    height3 = height223 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    int i212 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass29(Game.lang.get("Discipline"), Images.discipline, i9, height3, i212, i12, width3, CFG.FONT_BOLD));
                    int height310 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass30(Game.lang.get("DisciplineSignifiesOrganizationAndCoordinationOfTheArmyInBattleIncreasingUnitsAttack"), i9, height310, i212));
                    height3 = height310 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    int i213 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass29(Game.lang.get("Discipline"), Images.discipline, i9, height3, i213, i12, width3, CFG.FONT_BOLD));
                    int height311 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass30(Game.lang.get("DisciplineSignifiesOrganizationAndCoordinationOfTheArmyInBattleIncreasingUnitsAttack"), i9, height311, i213));
                    height3 = height311 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    int i214 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass31(Game.lang.get("DestructionOrSurvival"), Images.skull, i9, height3, i214, i12, width3, CFG.FONT_BOLD));
                    int height312 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("DestructionOrSurvival0", GameValues.battle.BATTLE_ARMY_DESTROYED_ROUND_ID), i9, height312, i214));
                    height3 = height312 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    int i215 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass31(Game.lang.get("DestructionOrSurvival"), Images.skull, i9, height3, i215, i12, width3, CFG.FONT_BOLD));
                    int height313 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("DestructionOrSurvival0", GameValues.battle.BATTLE_ARMY_DESTROYED_ROUND_ID), i9, height313, i215));
                    height3 = height313 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    arrayList.add(new Text_Title_v2(Game.lang.get("Wars"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height314 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i216 = i - (i9 * 2);
                    arrayList.add(new ButtonStatsRectIMG(Game.lang.get("War"), Images.war, i9, height314, i216, i12, width3, CFG.FONT_BOLD));
                    int height315 = height314 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("ToDeclareWarTheRelationsBetweenCivilizationsMustBeBelowX", GameValues.war.RELATIONS_TO_DECLARE_WAR), i9, height315, i216));
                    int height316 = height315 + arrayList.get(arrayList.size() - 1).getHeight();
                    str6 = r2;
                    arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanProposeAWhitePeace", CFG.getPrecision2(GameValues.peace.WAR_WHITE_PEACE_MIN_WAR_SCORE, 100) + str6), i9, height316, i216));
                    int height317 = height316 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanMakeDemands", CFG.getPrecision2(GameValues.peace.WAR_MAKE_DEMANDS_MIN_WAR_SCORE, 100) + str6), i9, height317, i216));
                    int height318 = height317 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("EachMonthTheWinningSideGainsXOfTheTickingWarScoreBasedOnTheCurrentOverallWarScoreFromBattlesAndOccupiedProvinces", "X"), i9, height318, i216));
                    int height319 = height318 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("AWhitePeaceWillBeAutomaticallySignedIfThereIsNoActivityForACertainPeriodAndTheWarscoreRemainsLow"), i9, height319, i216));
                    height3 = height319 + arrayList.get(arrayList.size() - 1).getHeight();
                } else {
                    arrayList.add(new Text_Title_v2(Game.lang.get("Wars"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height3110 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i217 = i - (i9 * 2);
                    arrayList.add(new ButtonStatsRectIMG(Game.lang.get("War"), Images.war, i9, height3110, i217, i12, width3, CFG.FONT_BOLD));
                    int height3111 = height3110 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("ToDeclareWarTheRelationsBetweenCivilizationsMustBeBelowX", GameValues.war.RELATIONS_TO_DECLARE_WAR), i9, height3111, i217));
                    int height3112 = height3111 + arrayList.get(arrayList.size() - 1).getHeight();
                    str6 = r2;
                    arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanProposeAWhitePeace", CFG.getPrecision2(GameValues.peace.WAR_WHITE_PEACE_MIN_WAR_SCORE, 100) + str6), i9, height3112, i217));
                    int height3113 = height3112 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanMakeDemands", CFG.getPrecision2(GameValues.peace.WAR_MAKE_DEMANDS_MIN_WAR_SCORE, 100) + str6), i9, height3113, i217));
                    int height3114 = height3113 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("EachMonthTheWinningSideGainsXOfTheTickingWarScoreBasedOnTheCurrentOverallWarScoreFromBattlesAndOccupiedProvinces", "X"), i9, height3114, i217));
                    int height3115 = height3114 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("AWhitePeaceWillBeAutomaticallySignedIfThereIsNoActivityForACertainPeriodAndTheWarscoreRemainsLow"), i9, height3115, i217));
                    height3 = height3115 + arrayList.get(arrayList.size() - 1).getHeight();
                }
                if (z2 == 0) {
                    arrayList.add(new Text_Title_v2(Game.lang.get("PeaceNegotiations"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height320 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i218 = i - (i9 * 2);
                    String str8 = str6;
                    arrayList.add(new ButtonStatsRectIMG(Game.lang.get(IlLkpaQxs.oPWPOdnXwgko), Images.peace, i9, height320, i218, i12, width3, CFG.FONT_BOLD));
                    int height321 = height320 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanMakeDemands", CFG.getPrecision2(GameValues.peace.WAR_MAKE_DEMANDS_MIN_WAR_SCORE, 100) + str8), i9, height321, i218));
                    int height410 = height321 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanProposeAWhitePeace", CFG.getPrecision2(GameValues.peace.WAR_WHITE_PEACE_MIN_WAR_SCORE, 100) + str8), i9, height410, i218));
                    int height411 = height410 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get(CvuNnwgYwe.uDQbjWBjKa), i9, height411, i218));
                    int height412 = height411 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("PeaceAnnex"), i9, height412, i218));
                    height3 = height412 + arrayList.get(arrayList.size() - 1).getHeight();
                } else {
                    arrayList.add(new Text_Title_v2(Game.lang.get("PeaceNegotiations"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height322 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i219 = i - (i9 * 2);
                    String str9 = str6;
                    arrayList.add(new ButtonStatsRectIMG(Game.lang.get(IlLkpaQxs.oPWPOdnXwgko), Images.peace, i9, height322, i219, i12, width3, CFG.FONT_BOLD));
                    int height323 = height322 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanMakeDemands", CFG.getPrecision2(GameValues.peace.WAR_MAKE_DEMANDS_MIN_WAR_SCORE, 100) + str9), i9, height323, i219));
                    int height413 = height323 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanProposeAWhitePeace", CFG.getPrecision2(GameValues.peace.WAR_WHITE_PEACE_MIN_WAR_SCORE, 100) + str9), i9, height413, i219));
                    int height414 = height413 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get(CvuNnwgYwe.uDQbjWBjKa), i9, height414, i219));
                    int height415 = height414 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("PeaceAnnex"), i9, height415, i219));
                    height3 = height415 + arrayList.get(arrayList.size() - 1).getHeight();
                }
                if (z2 == 0) {
                    arrayList.add(new AnonymousClass32(Game.lang.get("Siege"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height416 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i220 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass33(Game.lang.get("SiegeProgress"), Images.siege, i9, height416, i220, i12, width3, CFG.FONT_BOLD));
                    int height417 = height416 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass34(Game.lang.get("DailySiegeProgressIsTheSumOfTheSiegeAbilitiesOfAllUnitsInvolvedInTheSiege"), i9, height417, i220));
                    int height418 = height417 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass35(Game.lang.get("TheSiegeEndsWhenTheProgressReachesTheProvincesDefense"), i9, height418, i220));
                    int height419 = height418 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass36(Game.lang.get("AfterASuccessfulSiegeAllNeighboringProvincesWithoutDefensiveBuildingsWillBeOccupied"), i9, height419, i220));
                    int height420 = height419 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    arrayList.add(new Text_Desc(Game.lang.get("MinimumArmyRequiredToSiegeProvinceX", CFG.getPrecision2(GameValues.siege.SIEGE_REGIMENTS_MIN * Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE, 1)), i9, height420, i220));
                    height3 = height420 + arrayList.get(arrayList.size() - 1).getHeight();
                } else {
                    arrayList.add(new AnonymousClass32(Game.lang.get("Siege"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height4110 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i221 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass33(Game.lang.get("SiegeProgress"), Images.siege, i9, height4110, i221, i12, width3, CFG.FONT_BOLD));
                    int height4111 = height4110 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass34(Game.lang.get("DailySiegeProgressIsTheSumOfTheSiegeAbilitiesOfAllUnitsInvolvedInTheSiege"), i9, height4111, i221));
                    int height4112 = height4111 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass35(Game.lang.get("TheSiegeEndsWhenTheProgressReachesTheProvincesDefense"), i9, height4112, i221));
                    int height4113 = height4112 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass36(Game.lang.get("AfterASuccessfulSiegeAllNeighboringProvincesWithoutDefensiveBuildingsWillBeOccupied"), i9, height4113, i221));
                    int height421 = height4113 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    arrayList.add(new Text_Desc(Game.lang.get("MinimumArmyRequiredToSiegeProvinceX", CFG.getPrecision2(GameValues.siege.SIEGE_REGIMENTS_MIN * Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE, 1)), i9, height421, i221));
                    height3 = height421 + arrayList.get(arrayList.size() - 1).getHeight();
                }
                if (z2 == 0) {
                    arrayList.add(new AnonymousClass37(Game.lang.get("Fogofwar"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height422 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i222 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass38(Game.lang.get("Fogofwar"), Images.provinces, i9, height422, i222, i12, width3, CFG.FONT_BOLD));
                    int height423 = height422 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("FogOfWarYouCanOnlyObserveActionsInYourOwnProvincesThoseOfYourAlliesAndSubjectsDirectlyBorderingProvincesAndWhatYourTroopsUncover"), i9, height423, i222));
                    height3 = height423 + arrayList.get(arrayList.size() - 1).getHeight();
                } else {
                    arrayList.add(new AnonymousClass37(Game.lang.get("Fogofwar"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height424 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i223 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass38(Game.lang.get("Fogofwar"), Images.provinces, i9, height424, i223, i12, width3, CFG.FONT_BOLD));
                    int height425 = height424 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("FogOfWarYouCanOnlyObserveActionsInYourOwnProvincesThoseOfYourAlliesAndSubjectsDirectlyBorderingProvincesAndWhatYourTroopsUncover"), i9, height425, i223));
                    height3 = height425 + arrayList.get(arrayList.size() - 1).getHeight();
                }
                if (z2 == 0) {
                    arrayList.add(new Text_Title_v2(Game.lang.get("WarWeariness"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height510 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i224 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass39(Game.lang.get("WarWeariness"), Images.weariness, i9, height510, i224, i12, width3, CFG.FONT_BOLD));
                    int height511 = height510 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("WarWearinessH1"), i9, height511, i224));
                    int height512 = height511 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("WarWearinessH2"), i9, height512, i224));
                    height3 = height512 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    arrayList.add(new Text_Title_v2(Game.lang.get("WarWeariness"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height513 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i225 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass39(Game.lang.get("WarWeariness"), Images.weariness, i9, height513, i225, i12, width3, CFG.FONT_BOLD));
                    int height514 = height513 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("WarWearinessH1"), i9, height514, i225));
                    int height515 = height514 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("WarWearinessH2"), i9, height515, i225));
                    height3 = height515 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    arrayList.add(new Text_Title_v2(Game.lang.get("Diplomacy"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height516 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i226 = i - (i9 * 2);
                    arrayList.add(new ButtonStatsRectIMG(Game.lang.get("Diplomacy"), Images.diplomacy, i9, height516, i226, i12, width3, CFG.FONT_BOLD));
                    int height517 = height516 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("DifferentGovReligion"), i9, height517, i226));
                    height3 = height517 + arrayList.get(arrayList.size() - 1).getHeight();
                } else {
                    arrayList.add(new Text_Title_v2(Game.lang.get("Diplomacy"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height518 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i227 = i - (i9 * 2);
                    arrayList.add(new ButtonStatsRectIMG(Game.lang.get("Diplomacy"), Images.diplomacy, i9, height518, i227, i12, width3, CFG.FONT_BOLD));
                    int height519 = height518 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("DifferentGovReligion"), i9, height519, i227));
                    height3 = height519 + arrayList.get(arrayList.size() - 1).getHeight();
                }
                if (z2 == 0) {
                    arrayList.add(new AnonymousClass40(Game.lang.get("CivilizationStability"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height520 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i228 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass41(Game.lang.get("CivilizationStability"), Images.civStability, i9, height520, i228, i12, width3, CFG.FONT_BOLD));
                    int height521 = height520 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass42(Game.lang.get("CivilizationStabilityReflectsThePercentageOfYourProvincesWithLegitimateClaimsComparedToThoseWithoutAndTakesIntoAccountYourReligiousUnity"), i9, height521, i228));
                    height3 = height521 + arrayList.get(arrayList.size() - 1).getHeight();
                } else {
                    arrayList.add(new AnonymousClass40(Game.lang.get("CivilizationStability"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height522 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i229 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass41(Game.lang.get("CivilizationStability"), Images.civStability, i9, height522, i229, i12, width3, CFG.FONT_BOLD));
                    int height523 = height522 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass42(Game.lang.get("CivilizationStabilityReflectsThePercentageOfYourProvincesWithLegitimateClaimsComparedToThoseWithoutAndTakesIntoAccountYourReligiousUnity"), i9, height523, i229));
                    height3 = height523 + arrayList.get(arrayList.size() - 1).getHeight();
                }
                if (z2 == 0) {
                    arrayList.add(new AnonymousClass43(Game.lang.get("Province"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height524 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i310 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass44(Game.lang.get("ProvinceMonthlyIncome"), Images.gold, i9, height524, i310, i12, width3, CFG.FONT_BOLD));
                    int height525 = height524 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass45(Game.lang.get("Income0"), i9, height525, i310));
                    int height526 = height525 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass46(Game.lang.get("Income1"), i9, height526, i310));
                    height3 = height526 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    arrayList.add(new AnonymousClass43(Game.lang.get("Province"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height527 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i311 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass44(Game.lang.get("ProvinceMonthlyIncome"), Images.gold, i9, height527, i311, i12, width3, CFG.FONT_BOLD));
                    int height528 = height527 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass45(Game.lang.get("Income0"), i9, height528, i311));
                    int height529 = height528 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass46(Game.lang.get("Income1"), i9, height529, i311));
                    height3 = height529 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    int i312 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass47(Game.lang.get("TaxEfficiency"), Images.tax, i9, height3, i312, i12, width3, CFG.FONT_BOLD));
                    int height610 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass48(Game.lang.get("TaxEfficiency0"), i9, height610, i312));
                    height3 = height610 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    int i313 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass47(Game.lang.get("TaxEfficiency"), Images.tax, i9, height3, i313, i12, width3, CFG.FONT_BOLD));
                    int height611 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass48(Game.lang.get("TaxEfficiency0"), i9, height611, i313));
                    height3 = height611 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    int i314 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass49(Game.lang.get("EconomyOfProvince"), Game_Calendar.IMG_ECONOMY, i9, height3, i314, i12, width3, CFG.FONT_BOLD));
                    int height612 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass50(Game.lang.get("Economy0"), i9, height612, i314));
                    int height613 = height612 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass51(Game.lang.get("Economy1"), i9, height613, i314));
                    height3 = height613 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    int i315 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass49(Game.lang.get("EconomyOfProvince"), Game_Calendar.IMG_ECONOMY, i9, height3, i315, i12, width3, CFG.FONT_BOLD));
                    int height614 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass50(Game.lang.get("Economy0"), i9, height614, i315));
                    int height615 = height614 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass51(Game.lang.get("Economy1"), i9, height615, i315));
                    height3 = height615 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    int i316 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass52(Game.lang.get("ProducedGoods"), Images.goods, i9, height3, i316, i12, width3, CFG.FONT_BOLD));
                    int height616 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass53(Game.lang.get("Production0"), i9, height616, i316));
                    int height617 = height616 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass54(Game.lang.get("Production1"), i9, height617, i316));
                    int height618 = height617 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass55(Game.lang.get("Production2"), i9, height618, i316));
                    height3 = height618 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    int i317 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass52(Game.lang.get("ProducedGoods"), Images.goods, i9, height3, i317, i12, width3, CFG.FONT_BOLD));
                    int height619 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass53(Game.lang.get("Production0"), i9, height619, i317));
                    int height6110 = height619 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass54(Game.lang.get("Production1"), i9, height6110, i317));
                    int height6111 = height6110 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass55(Game.lang.get("Production2"), i9, height6111, i317));
                    height3 = height6111 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    int i318 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass56(Game.lang.get("Population"), Images.population, i9, height3, i318, i12, width3, CFG.FONT_BOLD));
                    int height620 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass57(Game.lang.get("Population0"), i9, height620, i318));
                    int height621 = height620 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass58(Game.lang.get("ThePopulationWillSlowlyAssimilateIfTheCivilizationHasACore"), i9, height621, i318));
                    height3 = height621 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    int i319 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass56(Game.lang.get("Population"), Images.population, i9, height3, i319, i12, width3, CFG.FONT_BOLD));
                    int height622 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass57(Game.lang.get("Population0"), i9, height622, i319));
                    int height623 = height622 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass58(Game.lang.get("ThePopulationWillSlowlyAssimilateIfTheCivilizationHasACore"), i9, height623, i319));
                    height3 = height623 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    int i320 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass59(Game.lang.get("GrowthRate"), Images.populationGrowth, i9, height3, i320, i12, width3, CFG.FONT_BOLD));
                    int height624 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass60(Game.lang.get("GrowthRate0"), i9, height624, i320));
                    height3 = height624 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    int i321 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass59(Game.lang.get("GrowthRate"), Images.populationGrowth, i9, height3, i321, i12, width3, CFG.FONT_BOLD));
                    int height625 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass60(Game.lang.get("GrowthRate0"), i9, height625, i321));
                    height3 = height625 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    int i322 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass61(Game.lang.get("Diseases"), Images.disease, i9, height3, i322, i12, width3, CFG.FONT_BOLD));
                    int height626 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass62(Game.lang.get("Plague0"), i9, height626, i322));
                    int height710 = height626 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("Plague1"), i9, height710, i322));
                    height3 = height710 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    int i323 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass61(Game.lang.get("Diseases"), Images.disease, i9, height3, i323, i12, width3, CFG.FONT_BOLD));
                    int height627 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass62(Game.lang.get("Plague0"), i9, height627, i323));
                    int height711 = height627 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("Plague1"), i9, height711, i323));
                    height3 = height711 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    arrayList.add(new AnonymousClass63(Game.lang.get("LegacyPoints"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height712 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i324 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass64(Game.lang.get("Legacy"), Images.legacy, i9, height712, i324, i12, width3, CFG.FONT_BOLD));
                    int height713 = height712 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("Legacy0"), i9, height713, i324));
                    int height714 = height713 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass65(Game.lang.get("Legacy1"), i9, height714, i324));
                    int height715 = height714 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("Legacy2"), i9, height715, i324));
                    height3 = height715 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    arrayList.add(new AnonymousClass63(Game.lang.get("LegacyPoints"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height716 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i325 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass64(Game.lang.get("Legacy"), Images.legacy, i9, height716, i325, i12, width3, CFG.FONT_BOLD));
                    int height717 = height716 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("Legacy0"), i9, height717, i325));
                    int height718 = height717 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass65(Game.lang.get("Legacy1"), i9, height718, i325));
                    int height719 = height718 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("Legacy2"), i9, height719, i325));
                    height3 = height719 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    arrayList.add(new AnonymousClass66(Game.lang.get(GameValues.court.COUNCIL_NAME), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height720 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i326 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass67(Game.lang.get("Advisors"), Images.council, i9, height720, i326, i12, width3, CFG.FONT_BOLD));
                    int height721 = height720 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass68(Game.lang.get(gpVDKipRURuzw.fPT), i9, height721, i326));
                    height3 = height721 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    arrayList.add(new AnonymousClass66(Game.lang.get(GameValues.court.COUNCIL_NAME), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height722 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i327 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass67(Game.lang.get("Advisors"), Images.council, i9, height722, i327, i12, width3, CFG.FONT_BOLD));
                    int height723 = height722 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass68(Game.lang.get(gpVDKipRURuzw.fPT), i9, height723, i327));
                    height3 = height723 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    arrayList.add(new AnonymousClass69(Game.lang.get("Corruption"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height724 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i328 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass70(Game.lang.get("SupremeCourt"), Images.corruption, i9, height724, i328, i12, width3, CFG.FONT_BOLD));
                    int height725 = height724 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("Corruption0"), i9, height725, i328));
                    height3 = height725 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    arrayList.add(new AnonymousClass69(Game.lang.get("Corruption"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height726 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i329 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass70(Game.lang.get("SupremeCourt"), Images.corruption, i9, height726, i329, i12, width3, CFG.FONT_BOLD));
                    int height727 = height726 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("Corruption0"), i9, height727, i329));
                    height3 = height727 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    arrayList.add(new AnonymousClass71(Game.lang.get("Technologies"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height728 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i48 = i - (i9 * 2);
                    arrayList.add(new ButtonStatsRectIMG(Game.lang.get("Research"), Game_Calendar.IMG_TECHNOLOGY, i9, height728, i48, i12, width3, CFG.FONT_BOLD));
                    int height810 = height728 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get(XjthpFh.rtD), i9, height810, i48));
                    int height811 = height810 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass72(Game.lang.get("Technology1"), i9, height811, i48));
                    height3 = height811 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    arrayList.add(new AnonymousClass71(Game.lang.get("Technologies"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height729 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i49 = i - (i9 * 2);
                    arrayList.add(new ButtonStatsRectIMG(Game.lang.get("Research"), Game_Calendar.IMG_TECHNOLOGY, i9, height729, i49, i12, width3, CFG.FONT_BOLD));
                    int height812 = height729 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get(XjthpFh.rtD), i9, height812, i49));
                    int height813 = height812 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass72(Game.lang.get("Technology1"), i9, height813, i49));
                    height3 = height813 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    int i410 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass73(Game.lang.get("CivilizationAdvantages"), Images.advantages, i9, height3, i410, i12, width3, CFG.FONT_BOLD));
                    int height814 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("EachTimeYouUnlockATechnologyYouWillGainOneAdvantagePointThatYouCanExchangeForABonus"), i9, height814, i410));
                    height3 = height814 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    int i411 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass73(Game.lang.get("CivilizationAdvantages"), Images.advantages, i9, height3, i411, i12, width3, CFG.FONT_BOLD));
                    int height815 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("EachTimeYouUnlockATechnologyYouWillGainOneAdvantagePointThatYouCanExchangeForABonus"), i9, height815, i411));
                    height3 = height815 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2) {
                    arrayList.add(new Text_Title_v2(Game.lang.get("CivilizationRank"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height816 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i412 = i - (i9 * 2);
                    arrayList.add(new ButtonStatsRectIMG(Game.lang.get("CivilizationRank"), CivilizationRanking.getCivilizationRank_IMG(Game.getCiv(Game.player.iCivID).iCivRankID), i9, height816, i412, i12, width3, CFG.FONT_BOLD));
                    height3 = height816 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    width = ImageManager.getImage(Images.council).getWidth() + (CFG.PADDING * 2);
                    i2 = (i412 - CFG.PADDING) / 2;
                    i3 = 0;
                    while (i3 < GameValues.civRank.CIV_RANK_MANPOWER_MAX.length) {
                        if (i3 % 2 == 0) {
                            i5 = i9;
                        } else {
                            i5 = CFG.PADDING + i9 + i2;
                        }
                        arrayList.add(new AnonymousClass74(CivilizationRanking.getCivilizationRank_Name(i3), CivilizationRanking.getCivilizationRank_IMG(i3), i5, height3, i2, CFG.BUTTON_HEIGHT3, width));
                        arrayList.get(arrayList.size() - 1).setCurrent(i3);
                        i3++;
                        if (i3 % 2 == 0) {
                            height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                        }
                    }
                    size = arrayList.size();
                    while (i4 < size) {
                        if (height3 < arrayList.get(i4).getPosY() + arrayList.get(i4).getHeight() + CFG.PADDING) {
                            height3 = arrayList.get(i4).getPosY() + arrayList.get(i4).getHeight() + CFG.PADDING;
                        }
                    }
                } else {
                    arrayList.add(new Text_Title_v2(Game.lang.get("CivilizationRank"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height817 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i413 = i - (i9 * 2);
                    arrayList.add(new ButtonStatsRectIMG(Game.lang.get("CivilizationRank"), CivilizationRanking.getCivilizationRank_IMG(Game.getCiv(Game.player.iCivID).iCivRankID), i9, height817, i413, i12, width3, CFG.FONT_BOLD));
                    height3 = height817 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    width = ImageManager.getImage(Images.council).getWidth() + (CFG.PADDING * 2);
                    i2 = (i413 - CFG.PADDING) / 2;
                    i3 = 0;
                    while (i3 < GameValues.civRank.CIV_RANK_MANPOWER_MAX.length) {
                        if (i3 % 2 == 0) {
                            i5 = i9;
                        } else {
                            i5 = CFG.PADDING + i9 + i2;
                        }
                        arrayList.add(new AnonymousClass74(CivilizationRanking.getCivilizationRank_Name(i3), CivilizationRanking.getCivilizationRank_IMG(i3), i5, height3, i2, CFG.BUTTON_HEIGHT3, width));
                        arrayList.get(arrayList.size() - 1).setCurrent(i3);
                        i3++;
                        if (i3 % 2 == 0) {
                            height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                        }
                    }
                    size = arrayList.size();
                    while (i4 < size) {
                        if (height3 < arrayList.get(i4).getPosY() + arrayList.get(i4).getHeight() + CFG.PADDING) {
                            height3 = arrayList.get(i4).getPosY() + arrayList.get(i4).getHeight() + CFG.PADDING;
                        }
                    }
                }
                if (Game.menuManager.getInGame()) {
                    arrayList.add(new Text_Title_v2(Game.lang.get("More"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height818 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    if (CFG.isDesktop()) {
                        i8 = CFG.BUTTON_HEIGHT2;
                    } else {
                        i8 = CFG.BUTTON_HEIGHT;
                    }
                    int i414 = i - (i9 * 2);
                    int i415 = i8;
                    arrayList.add(new AnonymousClass75(Game.lang.get("ListOfUnits"), Game_Calendar.IMG_MANPOWER, i9, height818, i414, i415, ImageManager.getImage(Images.advantages).getWidth() + (CFG.PADDING * 4), 0, 0L));
                    int height819 = height818 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    arrayList.add(new AnonymousClass76(Game.lang.get("ListOfBuildings"), Images.buildings, i9, height819, i414, i415, ImageManager.getImage(Images.advantages).getWidth() + (CFG.PADDING * 4), 0, 0L));
                    height3 = height819 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                int i416 = height3 + CFG.PADDING;
                int i417 = CFG.GAME_HEIGHT - height2;
                if (Game.menuManager.getInGame()) {
                    height = CFG.GAME_HEIGHT - Game.menuManager.getInGame_MapModesPosY();
                } else {
                    height = ImageManager.getImage(Images.buttonPlay).getHeight();
                }
                int iMin2 = Math.min(i416, i417 - (height + (CFG.PADDING * 3)));
                i6 = i;
                arrayList.add(new Empty(0, 0, i6, Math.max(i416, iMin2)));
                AnonymousClass77 anonymousClass78 = new AnonymousClass77(Game.lang.get("Encyclopedia"), false, false, Images.title500);
                if (Game.menuManager.getInGame()) {
                    i7 = (CFG.GAME_WIDTH - i6) - (CFG.PADDING * 2);
                } else {
                    i7 = CFG.PADDING * 2;
                }
                initMenu(anonymousClass78, i7, height2, i6, iMin2, arrayList, false, true);
                this.drawScrollPositionAlways = false;
            }
            str3 = str2;
            int i50 = width2 - (i9 * 2);
            arrayList.add(new ButtonStatsRectIMG(Game.lang.get("ReinforceArmyCost"), Game_Calendar.IMG_MANPOWER_UP, i9, height3, i50, i12, width3, CFG.FONT_BOLD));
            int height93 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("ReinforceCostEncy") + " " + CFG.getPrecision2(GameValues.army.REINFORCE_ARMY_COST_MODIFIER * 100.0f, 1) + "%", i9, height93, i50));
            height3 = height93 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            if (z2 == 0) {
                int i116 = width2 - (i9 * 2);
                arrayList.add(new AnonymousClass6(Game.lang.get(nEtnPpUF.EgBSfDNNNmAun), Images.provinces, i9, height3, i116, i12, width3, CFG.FONT_BOLD));
                int height110 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("ProvinceContribution0"), i9, height110, i116));
                height3 = height110 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i117 = width2 - (i9 * 2);
                arrayList.add(new AnonymousClass6(Game.lang.get(nEtnPpUF.EgBSfDNNNmAun), Images.provinces, i9, height3, i117, i12, width3, CFG.FONT_BOLD));
                int height111 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("ProvinceContribution0"), i9, height111, i117));
                height3 = height111 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                int i118 = width2 - (i9 * 2);
                arrayList.add(new AnonymousClass7(Game.lang.get("IncreasingMaximumManpower"), Game_Calendar.IMG_MANPOWER, i9, height3, i118, i12, width3, CFG.FONT_BOLD));
                int height112 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass8(Game.lang.get(SwmJtrccN.OIEbNGSeBmAe), i9, height112, i118));
                int height113 = height112 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass9(Game.lang.get("IncreasingMaximumManpower1"), i9, height113, i118));
                int height114 = height113 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass10(Game.lang.get("TipForBestResultsIncreaseManpowerInProvincesWithHighestGrowthRateOfPopulation"), i9, height114, i118));
                height3 = height114 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i119 = width2 - (i9 * 2);
                arrayList.add(new AnonymousClass7(Game.lang.get("IncreasingMaximumManpower"), Game_Calendar.IMG_MANPOWER, i9, height3, i119, i12, width3, CFG.FONT_BOLD));
                int height115 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass8(Game.lang.get(SwmJtrccN.OIEbNGSeBmAe), i9, height115, i119));
                int height116 = height115 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass9(Game.lang.get("IncreasingMaximumManpower1"), i9, height116, i119));
                int height117 = height116 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass10(Game.lang.get("TipForBestResultsIncreaseManpowerInProvincesWithHighestGrowthRateOfPopulation"), i9, height117, i119));
                height3 = height117 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                arrayList.add(new AnonymousClass11(Game.lang.get("RegimentsLimit"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, width2 - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height118 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i120 = width2 - (i9 * 2);
                arrayList.add(new AnonymousClass12(Game.lang.get("RegimentsLimit"), Images.regimentsLimit, i9, height118, i120, i12, width3, CFG.FONT_BOLD));
                int height119 = height118 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("RegimnetsLimit0"), i9, height119, i120));
                int height120 = height119 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(" = " + Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENTS_LIMIT_BASE_VALUE + " + " + Game.lang.get("LocalManpower") + " * " + CFG.getPrecision2(GameValues.army.REGIMENTS_LIMIT_MANPOWER_LEVEL, 100) + " + " + Game.lang.get("CivilizationBonuses"), i9, height120, i120));
                int height121 = height120 + arrayList.get(arrayList.size() - 1).getHeight();
                str4 = r15;
                arrayList.add(new Text_Desc(Game.lang.get("WhenTheMaximumRegimentLimitIsReachedArmyRecruitmentCostIncreasesBy") + str4 + CFG.getPrecision2(GameValues.army.REGIMENTS_LIMIT_RECRUIT_COST_OVER * 100.0f, 10) + "%", i9, height121, i120));
                int height224 = height121 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("Regiments3"), i9, height224, i120));
                int height225 = height224 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("Regiments") + " > " + Game.lang.get("RegimentsLimit") + " = " + Game.lang.get("ArmyMaintenance") + " * (" + Game.lang.get("Regiments") + " / " + Game.lang.get("RegimentsLimit") + ")%", i9, height225, i120));
                height3 = height225 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                arrayList.add(new AnonymousClass11(Game.lang.get("RegimentsLimit"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, width2 - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height1110 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i121 = width2 - (i9 * 2);
                arrayList.add(new AnonymousClass12(Game.lang.get("RegimentsLimit"), Images.regimentsLimit, i9, height1110, i121, i12, width3, CFG.FONT_BOLD));
                int height1111 = height1110 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("RegimnetsLimit0"), i9, height1111, i121));
                int height122 = height1111 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(" = " + Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENTS_LIMIT_BASE_VALUE + " + " + Game.lang.get("LocalManpower") + " * " + CFG.getPrecision2(GameValues.army.REGIMENTS_LIMIT_MANPOWER_LEVEL, 100) + " + " + Game.lang.get("CivilizationBonuses"), i9, height122, i121));
                int height123 = height122 + arrayList.get(arrayList.size() - 1).getHeight();
                str4 = r15;
                arrayList.add(new Text_Desc(Game.lang.get("WhenTheMaximumRegimentLimitIsReachedArmyRecruitmentCostIncreasesBy") + str4 + CFG.getPrecision2(GameValues.army.REGIMENTS_LIMIT_RECRUIT_COST_OVER * 100.0f, 10) + "%", i9, height123, i121));
                int height226 = height123 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("Regiments3"), i9, height226, i121));
                int height227 = height226 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("Regiments") + " > " + Game.lang.get("RegimentsLimit") + " = " + Game.lang.get("ArmyMaintenance") + " * (" + Game.lang.get("Regiments") + " / " + Game.lang.get("RegimentsLimit") + ")%", i9, height227, i121));
                height3 = height227 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                str5 = str3;
                if (searchTexts(str5, new String[]{"Battles", "DeploymentPhase", "DeploymentPhase0", "DeploymentPhase1", "DeploymentPhase2"})) {
                    i = width2;
                }
                if (z2 == 0) {
                    int i1110 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass18(Game.lang.get("RoleOfGenerals"), Images.general, i9, height3, i1110, i12, width3, CFG.FONT_BOLD));
                    int height2112 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass19(Game.lang.get("RoleOfGenerals0"), i9, height2112, i1110));
                    int height2113 = height2112 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass20(Game.lang.get("RoleOfGenerals1"), i9, height2113, i1110));
                    height3 = height2113 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    int i1111 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass18(Game.lang.get("RoleOfGenerals"), Images.general, i9, height3, i1111, i12, width3, CFG.FONT_BOLD));
                    int height2114 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass19(Game.lang.get("RoleOfGenerals0"), i9, height2114, i1111));
                    int height2115 = height2114 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass20(Game.lang.get("RoleOfGenerals1"), i9, height2115, i1111));
                    height3 = height2115 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    int i1112 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass21(Game.lang.get("Generals") + str4 + Game.lang.get("CombatExperience"), Images.general, i9, height3, i1112, i12, width3, CFG.FONT_BOLD));
                    int height2116 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("CombatExperienceDesc"), i9, height2116, i1112));
                    height3 = height2116 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    int i1113 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass21(Game.lang.get("Generals") + str4 + Game.lang.get("CombatExperience"), Images.general, i9, height3, i1113, i12, width3, CFG.FONT_BOLD));
                    int height2117 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("CombatExperienceDesc"), i9, height2117, i1113));
                    height3 = height2117 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    int i1114 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass22(Game.lang.get("BattlePhase"), Images.battle, i9, height3, i1114, i12, width3, CFG.FONT_BOLD));
                    int height2118 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass23(Game.lang.get("BattlePhase0"), i9, height2118, i1114));
                    int height2119 = height2118 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass24(Game.lang.get("BattlePhase1"), i9, height2119, i1114));
                    int height21110 = height2119 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass25(Game.lang.get("BattlePhase2"), i9, height21110, i1114));
                    height3 = height21110 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    int i1115 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass22(Game.lang.get("BattlePhase"), Images.battle, i9, height3, i1115, i12, width3, CFG.FONT_BOLD));
                    int height21111 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass23(Game.lang.get("BattlePhase0"), i9, height21111, i1115));
                    int height21112 = height21111 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass24(Game.lang.get("BattlePhase1"), i9, height21112, i1115));
                    int height21113 = height21112 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass25(Game.lang.get("BattlePhase2"), i9, height21113, i1115));
                    height3 = height21113 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    int i2110 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass26(Game.lang.get("MoraleAndRetreatMechanics"), Images.morale, i9, height3, i2110, i12, width3, CFG.FONT_BOLD));
                    int height228 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass27(Game.lang.get("MoraleAndRetreatMechanics0"), i9, height228, i2110));
                    int height229 = height228 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass28(Game.lang.get("MoraleAndRetreatMechanics1"), i9, height229, i2110));
                    height3 = height229 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    int i2111 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass26(Game.lang.get("MoraleAndRetreatMechanics"), Images.morale, i9, height3, i2111, i12, width3, CFG.FONT_BOLD));
                    int height2210 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass27(Game.lang.get("MoraleAndRetreatMechanics0"), i9, height2210, i2111));
                    int height2211 = height2210 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass28(Game.lang.get("MoraleAndRetreatMechanics1"), i9, height2211, i2111));
                    height3 = height2211 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    int i2112 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass29(Game.lang.get("Discipline"), Images.discipline, i9, height3, i2112, i12, width3, CFG.FONT_BOLD));
                    int height3116 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass30(Game.lang.get("DisciplineSignifiesOrganizationAndCoordinationOfTheArmyInBattleIncreasingUnitsAttack"), i9, height3116, i2112));
                    height3 = height3116 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    int i2113 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass29(Game.lang.get("Discipline"), Images.discipline, i9, height3, i2113, i12, width3, CFG.FONT_BOLD));
                    int height3117 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass30(Game.lang.get("DisciplineSignifiesOrganizationAndCoordinationOfTheArmyInBattleIncreasingUnitsAttack"), i9, height3117, i2113));
                    height3 = height3117 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    int i2114 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass31(Game.lang.get("DestructionOrSurvival"), Images.skull, i9, height3, i2114, i12, width3, CFG.FONT_BOLD));
                    int height3118 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("DestructionOrSurvival0", GameValues.battle.BATTLE_ARMY_DESTROYED_ROUND_ID), i9, height3118, i2114));
                    height3 = height3118 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    int i2115 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass31(Game.lang.get("DestructionOrSurvival"), Images.skull, i9, height3, i2115, i12, width3, CFG.FONT_BOLD));
                    int height3119 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("DestructionOrSurvival0", GameValues.battle.BATTLE_ARMY_DESTROYED_ROUND_ID), i9, height3119, i2115));
                    height3 = height3119 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    arrayList.add(new Text_Title_v2(Game.lang.get("Wars"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height31110 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i2116 = i - (i9 * 2);
                    arrayList.add(new ButtonStatsRectIMG(Game.lang.get("War"), Images.war, i9, height31110, i2116, i12, width3, CFG.FONT_BOLD));
                    int height31111 = height31110 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("ToDeclareWarTheRelationsBetweenCivilizationsMustBeBelowX", GameValues.war.RELATIONS_TO_DECLARE_WAR), i9, height31111, i2116));
                    int height31112 = height31111 + arrayList.get(arrayList.size() - 1).getHeight();
                    str6 = r2;
                    arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanProposeAWhitePeace", CFG.getPrecision2(GameValues.peace.WAR_WHITE_PEACE_MIN_WAR_SCORE, 100) + str6), i9, height31112, i2116));
                    int height31113 = height31112 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanMakeDemands", CFG.getPrecision2(GameValues.peace.WAR_MAKE_DEMANDS_MIN_WAR_SCORE, 100) + str6), i9, height31113, i2116));
                    int height31114 = height31113 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("EachMonthTheWinningSideGainsXOfTheTickingWarScoreBasedOnTheCurrentOverallWarScoreFromBattlesAndOccupiedProvinces", "X"), i9, height31114, i2116));
                    int height31115 = height31114 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("AWhitePeaceWillBeAutomaticallySignedIfThereIsNoActivityForACertainPeriodAndTheWarscoreRemainsLow"), i9, height31115, i2116));
                    height3 = height31115 + arrayList.get(arrayList.size() - 1).getHeight();
                } else {
                    arrayList.add(new Text_Title_v2(Game.lang.get("Wars"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height31116 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i2117 = i - (i9 * 2);
                    arrayList.add(new ButtonStatsRectIMG(Game.lang.get("War"), Images.war, i9, height31116, i2117, i12, width3, CFG.FONT_BOLD));
                    int height31117 = height31116 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("ToDeclareWarTheRelationsBetweenCivilizationsMustBeBelowX", GameValues.war.RELATIONS_TO_DECLARE_WAR), i9, height31117, i2117));
                    int height31118 = height31117 + arrayList.get(arrayList.size() - 1).getHeight();
                    str6 = r2;
                    arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanProposeAWhitePeace", CFG.getPrecision2(GameValues.peace.WAR_WHITE_PEACE_MIN_WAR_SCORE, 100) + str6), i9, height31118, i2117));
                    int height31119 = height31118 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanMakeDemands", CFG.getPrecision2(GameValues.peace.WAR_MAKE_DEMANDS_MIN_WAR_SCORE, 100) + str6), i9, height31119, i2117));
                    int height311110 = height31119 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("EachMonthTheWinningSideGainsXOfTheTickingWarScoreBasedOnTheCurrentOverallWarScoreFromBattlesAndOccupiedProvinces", "X"), i9, height311110, i2117));
                    int height311111 = height311110 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("AWhitePeaceWillBeAutomaticallySignedIfThereIsNoActivityForACertainPeriodAndTheWarscoreRemainsLow"), i9, height311111, i2117));
                    height3 = height311111 + arrayList.get(arrayList.size() - 1).getHeight();
                }
                if (z2 == 0) {
                    arrayList.add(new Text_Title_v2(Game.lang.get("PeaceNegotiations"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height324 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i2118 = i - (i9 * 2);
                    String str10 = str6;
                    arrayList.add(new ButtonStatsRectIMG(Game.lang.get(IlLkpaQxs.oPWPOdnXwgko), Images.peace, i9, height324, i2118, i12, width3, CFG.FONT_BOLD));
                    int height325 = height324 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanMakeDemands", CFG.getPrecision2(GameValues.peace.WAR_MAKE_DEMANDS_MIN_WAR_SCORE, 100) + str10), i9, height325, i2118));
                    int height4114 = height325 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanProposeAWhitePeace", CFG.getPrecision2(GameValues.peace.WAR_WHITE_PEACE_MIN_WAR_SCORE, 100) + str10), i9, height4114, i2118));
                    int height4115 = height4114 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get(CvuNnwgYwe.uDQbjWBjKa), i9, height4115, i2118));
                    int height4116 = height4115 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("PeaceAnnex"), i9, height4116, i2118));
                    height3 = height4116 + arrayList.get(arrayList.size() - 1).getHeight();
                } else {
                    arrayList.add(new Text_Title_v2(Game.lang.get("PeaceNegotiations"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height326 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i2119 = i - (i9 * 2);
                    String str11 = str6;
                    arrayList.add(new ButtonStatsRectIMG(Game.lang.get(IlLkpaQxs.oPWPOdnXwgko), Images.peace, i9, height326, i2119, i12, width3, CFG.FONT_BOLD));
                    int height327 = height326 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanMakeDemands", CFG.getPrecision2(GameValues.peace.WAR_MAKE_DEMANDS_MIN_WAR_SCORE, 100) + str11), i9, height327, i2119));
                    int height4117 = height327 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanProposeAWhitePeace", CFG.getPrecision2(GameValues.peace.WAR_WHITE_PEACE_MIN_WAR_SCORE, 100) + str11), i9, height4117, i2119));
                    int height4118 = height4117 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get(CvuNnwgYwe.uDQbjWBjKa), i9, height4118, i2119));
                    int height4119 = height4118 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("PeaceAnnex"), i9, height4119, i2119));
                    height3 = height4119 + arrayList.get(arrayList.size() - 1).getHeight();
                }
                if (z2 == 0) {
                    arrayList.add(new AnonymousClass32(Game.lang.get("Siege"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height41110 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i2210 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass33(Game.lang.get("SiegeProgress"), Images.siege, i9, height41110, i2210, i12, width3, CFG.FONT_BOLD));
                    int height41111 = height41110 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass34(Game.lang.get("DailySiegeProgressIsTheSumOfTheSiegeAbilitiesOfAllUnitsInvolvedInTheSiege"), i9, height41111, i2210));
                    int height41112 = height41111 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass35(Game.lang.get("TheSiegeEndsWhenTheProgressReachesTheProvincesDefense"), i9, height41112, i2210));
                    int height41113 = height41112 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass36(Game.lang.get("AfterASuccessfulSiegeAllNeighboringProvincesWithoutDefensiveBuildingsWillBeOccupied"), i9, height41113, i2210));
                    int height426 = height41113 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    arrayList.add(new Text_Desc(Game.lang.get("MinimumArmyRequiredToSiegeProvinceX", CFG.getPrecision2(GameValues.siege.SIEGE_REGIMENTS_MIN * Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE, 1)), i9, height426, i2210));
                    height3 = height426 + arrayList.get(arrayList.size() - 1).getHeight();
                } else {
                    arrayList.add(new AnonymousClass32(Game.lang.get("Siege"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height41114 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i2211 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass33(Game.lang.get("SiegeProgress"), Images.siege, i9, height41114, i2211, i12, width3, CFG.FONT_BOLD));
                    int height41115 = height41114 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass34(Game.lang.get("DailySiegeProgressIsTheSumOfTheSiegeAbilitiesOfAllUnitsInvolvedInTheSiege"), i9, height41115, i2211));
                    int height41116 = height41115 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass35(Game.lang.get("TheSiegeEndsWhenTheProgressReachesTheProvincesDefense"), i9, height41116, i2211));
                    int height41117 = height41116 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass36(Game.lang.get("AfterASuccessfulSiegeAllNeighboringProvincesWithoutDefensiveBuildingsWillBeOccupied"), i9, height41117, i2211));
                    int height427 = height41117 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    arrayList.add(new Text_Desc(Game.lang.get("MinimumArmyRequiredToSiegeProvinceX", CFG.getPrecision2(GameValues.siege.SIEGE_REGIMENTS_MIN * Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE, 1)), i9, height427, i2211));
                    height3 = height427 + arrayList.get(arrayList.size() - 1).getHeight();
                }
                if (z2 == 0) {
                    arrayList.add(new AnonymousClass37(Game.lang.get("Fogofwar"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height428 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i2212 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass38(Game.lang.get("Fogofwar"), Images.provinces, i9, height428, i2212, i12, width3, CFG.FONT_BOLD));
                    int height429 = height428 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("FogOfWarYouCanOnlyObserveActionsInYourOwnProvincesThoseOfYourAlliesAndSubjectsDirectlyBorderingProvincesAndWhatYourTroopsUncover"), i9, height429, i2212));
                    height3 = height429 + arrayList.get(arrayList.size() - 1).getHeight();
                } else {
                    arrayList.add(new AnonymousClass37(Game.lang.get("Fogofwar"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height4210 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i2213 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass38(Game.lang.get("Fogofwar"), Images.provinces, i9, height4210, i2213, i12, width3, CFG.FONT_BOLD));
                    int height4211 = height4210 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("FogOfWarYouCanOnlyObserveActionsInYourOwnProvincesThoseOfYourAlliesAndSubjectsDirectlyBorderingProvincesAndWhatYourTroopsUncover"), i9, height4211, i2213));
                    height3 = height4211 + arrayList.get(arrayList.size() - 1).getHeight();
                }
                if (z2 == 0) {
                    arrayList.add(new Text_Title_v2(Game.lang.get("WarWeariness"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height5110 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i2214 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass39(Game.lang.get("WarWeariness"), Images.weariness, i9, height5110, i2214, i12, width3, CFG.FONT_BOLD));
                    int height5111 = height5110 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("WarWearinessH1"), i9, height5111, i2214));
                    int height5112 = height5111 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("WarWearinessH2"), i9, height5112, i2214));
                    height3 = height5112 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    arrayList.add(new Text_Title_v2(Game.lang.get("WarWeariness"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height5113 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i2215 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass39(Game.lang.get("WarWeariness"), Images.weariness, i9, height5113, i2215, i12, width3, CFG.FONT_BOLD));
                    int height5114 = height5113 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("WarWearinessH1"), i9, height5114, i2215));
                    int height5115 = height5114 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("WarWearinessH2"), i9, height5115, i2215));
                    height3 = height5115 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    arrayList.add(new Text_Title_v2(Game.lang.get("Diplomacy"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height5116 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i2216 = i - (i9 * 2);
                    arrayList.add(new ButtonStatsRectIMG(Game.lang.get("Diplomacy"), Images.diplomacy, i9, height5116, i2216, i12, width3, CFG.FONT_BOLD));
                    int height5117 = height5116 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("DifferentGovReligion"), i9, height5117, i2216));
                    height3 = height5117 + arrayList.get(arrayList.size() - 1).getHeight();
                } else {
                    arrayList.add(new Text_Title_v2(Game.lang.get("Diplomacy"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height5118 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i2217 = i - (i9 * 2);
                    arrayList.add(new ButtonStatsRectIMG(Game.lang.get("Diplomacy"), Images.diplomacy, i9, height5118, i2217, i12, width3, CFG.FONT_BOLD));
                    int height5119 = height5118 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("DifferentGovReligion"), i9, height5119, i2217));
                    height3 = height5119 + arrayList.get(arrayList.size() - 1).getHeight();
                }
                if (z2 == 0) {
                    arrayList.add(new AnonymousClass40(Game.lang.get("CivilizationStability"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height5210 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i2218 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass41(Game.lang.get("CivilizationStability"), Images.civStability, i9, height5210, i2218, i12, width3, CFG.FONT_BOLD));
                    int height5211 = height5210 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass42(Game.lang.get("CivilizationStabilityReflectsThePercentageOfYourProvincesWithLegitimateClaimsComparedToThoseWithoutAndTakesIntoAccountYourReligiousUnity"), i9, height5211, i2218));
                    height3 = height5211 + arrayList.get(arrayList.size() - 1).getHeight();
                } else {
                    arrayList.add(new AnonymousClass40(Game.lang.get("CivilizationStability"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height5212 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i2219 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass41(Game.lang.get("CivilizationStability"), Images.civStability, i9, height5212, i2219, i12, width3, CFG.FONT_BOLD));
                    int height5213 = height5212 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass42(Game.lang.get("CivilizationStabilityReflectsThePercentageOfYourProvincesWithLegitimateClaimsComparedToThoseWithoutAndTakesIntoAccountYourReligiousUnity"), i9, height5213, i2219));
                    height3 = height5213 + arrayList.get(arrayList.size() - 1).getHeight();
                }
                if (z2 == 0) {
                    arrayList.add(new AnonymousClass43(Game.lang.get("Province"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height5214 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i3110 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass44(Game.lang.get("ProvinceMonthlyIncome"), Images.gold, i9, height5214, i3110, i12, width3, CFG.FONT_BOLD));
                    int height5215 = height5214 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass45(Game.lang.get("Income0"), i9, height5215, i3110));
                    int height5216 = height5215 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass46(Game.lang.get("Income1"), i9, height5216, i3110));
                    height3 = height5216 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    arrayList.add(new AnonymousClass43(Game.lang.get("Province"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height5217 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i3111 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass44(Game.lang.get("ProvinceMonthlyIncome"), Images.gold, i9, height5217, i3111, i12, width3, CFG.FONT_BOLD));
                    int height5218 = height5217 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass45(Game.lang.get("Income0"), i9, height5218, i3111));
                    int height5219 = height5218 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass46(Game.lang.get("Income1"), i9, height5219, i3111));
                    height3 = height5219 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    int i3112 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass47(Game.lang.get("TaxEfficiency"), Images.tax, i9, height3, i3112, i12, width3, CFG.FONT_BOLD));
                    int height6112 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass48(Game.lang.get("TaxEfficiency0"), i9, height6112, i3112));
                    height3 = height6112 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    int i3113 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass47(Game.lang.get("TaxEfficiency"), Images.tax, i9, height3, i3113, i12, width3, CFG.FONT_BOLD));
                    int height6113 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass48(Game.lang.get("TaxEfficiency0"), i9, height6113, i3113));
                    height3 = height6113 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    int i3114 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass49(Game.lang.get("EconomyOfProvince"), Game_Calendar.IMG_ECONOMY, i9, height3, i3114, i12, width3, CFG.FONT_BOLD));
                    int height6114 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass50(Game.lang.get("Economy0"), i9, height6114, i3114));
                    int height6115 = height6114 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass51(Game.lang.get("Economy1"), i9, height6115, i3114));
                    height3 = height6115 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    int i3115 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass49(Game.lang.get("EconomyOfProvince"), Game_Calendar.IMG_ECONOMY, i9, height3, i3115, i12, width3, CFG.FONT_BOLD));
                    int height6116 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass50(Game.lang.get("Economy0"), i9, height6116, i3115));
                    int height6117 = height6116 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass51(Game.lang.get("Economy1"), i9, height6117, i3115));
                    height3 = height6117 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    int i3116 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass52(Game.lang.get("ProducedGoods"), Images.goods, i9, height3, i3116, i12, width3, CFG.FONT_BOLD));
                    int height6118 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass53(Game.lang.get("Production0"), i9, height6118, i3116));
                    int height6119 = height6118 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass54(Game.lang.get("Production1"), i9, height6119, i3116));
                    int height61110 = height6119 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass55(Game.lang.get("Production2"), i9, height61110, i3116));
                    height3 = height61110 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    int i3117 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass52(Game.lang.get("ProducedGoods"), Images.goods, i9, height3, i3117, i12, width3, CFG.FONT_BOLD));
                    int height61111 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass53(Game.lang.get("Production0"), i9, height61111, i3117));
                    int height61112 = height61111 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass54(Game.lang.get("Production1"), i9, height61112, i3117));
                    int height61113 = height61112 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass55(Game.lang.get("Production2"), i9, height61113, i3117));
                    height3 = height61113 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    int i3118 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass56(Game.lang.get("Population"), Images.population, i9, height3, i3118, i12, width3, CFG.FONT_BOLD));
                    int height628 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass57(Game.lang.get("Population0"), i9, height628, i3118));
                    int height629 = height628 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass58(Game.lang.get("ThePopulationWillSlowlyAssimilateIfTheCivilizationHasACore"), i9, height629, i3118));
                    height3 = height629 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    int i3119 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass56(Game.lang.get("Population"), Images.population, i9, height3, i3119, i12, width3, CFG.FONT_BOLD));
                    int height6210 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass57(Game.lang.get("Population0"), i9, height6210, i3119));
                    int height6211 = height6210 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass58(Game.lang.get("ThePopulationWillSlowlyAssimilateIfTheCivilizationHasACore"), i9, height6211, i3119));
                    height3 = height6211 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    int i3210 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass59(Game.lang.get("GrowthRate"), Images.populationGrowth, i9, height3, i3210, i12, width3, CFG.FONT_BOLD));
                    int height6212 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass60(Game.lang.get("GrowthRate0"), i9, height6212, i3210));
                    height3 = height6212 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    int i3211 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass59(Game.lang.get("GrowthRate"), Images.populationGrowth, i9, height3, i3211, i12, width3, CFG.FONT_BOLD));
                    int height6213 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass60(Game.lang.get("GrowthRate0"), i9, height6213, i3211));
                    height3 = height6213 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    int i3212 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass61(Game.lang.get("Diseases"), Images.disease, i9, height3, i3212, i12, width3, CFG.FONT_BOLD));
                    int height6214 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass62(Game.lang.get("Plague0"), i9, height6214, i3212));
                    int height7110 = height6214 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("Plague1"), i9, height7110, i3212));
                    height3 = height7110 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    int i3213 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass61(Game.lang.get("Diseases"), Images.disease, i9, height3, i3213, i12, width3, CFG.FONT_BOLD));
                    int height6215 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass62(Game.lang.get("Plague0"), i9, height6215, i3213));
                    int height7111 = height6215 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("Plague1"), i9, height7111, i3213));
                    height3 = height7111 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    arrayList.add(new AnonymousClass63(Game.lang.get("LegacyPoints"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height7112 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i3214 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass64(Game.lang.get("Legacy"), Images.legacy, i9, height7112, i3214, i12, width3, CFG.FONT_BOLD));
                    int height7113 = height7112 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("Legacy0"), i9, height7113, i3214));
                    int height7114 = height7113 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass65(Game.lang.get("Legacy1"), i9, height7114, i3214));
                    int height7115 = height7114 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("Legacy2"), i9, height7115, i3214));
                    height3 = height7115 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    arrayList.add(new AnonymousClass63(Game.lang.get("LegacyPoints"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height7116 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i3215 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass64(Game.lang.get("Legacy"), Images.legacy, i9, height7116, i3215, i12, width3, CFG.FONT_BOLD));
                    int height7117 = height7116 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("Legacy0"), i9, height7117, i3215));
                    int height7118 = height7117 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass65(Game.lang.get("Legacy1"), i9, height7118, i3215));
                    int height7119 = height7118 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("Legacy2"), i9, height7119, i3215));
                    height3 = height7119 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    arrayList.add(new AnonymousClass66(Game.lang.get(GameValues.court.COUNCIL_NAME), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height7210 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i3216 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass67(Game.lang.get("Advisors"), Images.council, i9, height7210, i3216, i12, width3, CFG.FONT_BOLD));
                    int height7211 = height7210 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass68(Game.lang.get(gpVDKipRURuzw.fPT), i9, height7211, i3216));
                    height3 = height7211 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    arrayList.add(new AnonymousClass66(Game.lang.get(GameValues.court.COUNCIL_NAME), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height7212 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i3217 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass67(Game.lang.get("Advisors"), Images.council, i9, height7212, i3217, i12, width3, CFG.FONT_BOLD));
                    int height7213 = height7212 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass68(Game.lang.get(gpVDKipRURuzw.fPT), i9, height7213, i3217));
                    height3 = height7213 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    arrayList.add(new AnonymousClass69(Game.lang.get("Corruption"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height7214 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i3218 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass70(Game.lang.get("SupremeCourt"), Images.corruption, i9, height7214, i3218, i12, width3, CFG.FONT_BOLD));
                    int height7215 = height7214 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("Corruption0"), i9, height7215, i3218));
                    height3 = height7215 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    arrayList.add(new AnonymousClass69(Game.lang.get("Corruption"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height7216 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i3219 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass70(Game.lang.get("SupremeCourt"), Images.corruption, i9, height7216, i3219, i12, width3, CFG.FONT_BOLD));
                    int height7217 = height7216 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("Corruption0"), i9, height7217, i3219));
                    height3 = height7217 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    arrayList.add(new AnonymousClass71(Game.lang.get("Technologies"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height7218 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i418 = i - (i9 * 2);
                    arrayList.add(new ButtonStatsRectIMG(Game.lang.get("Research"), Game_Calendar.IMG_TECHNOLOGY, i9, height7218, i418, i12, width3, CFG.FONT_BOLD));
                    int height8110 = height7218 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get(XjthpFh.rtD), i9, height8110, i418));
                    int height8111 = height8110 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass72(Game.lang.get("Technology1"), i9, height8111, i418));
                    height3 = height8111 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    arrayList.add(new AnonymousClass71(Game.lang.get("Technologies"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height7219 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i419 = i - (i9 * 2);
                    arrayList.add(new ButtonStatsRectIMG(Game.lang.get("Research"), Game_Calendar.IMG_TECHNOLOGY, i9, height7219, i419, i12, width3, CFG.FONT_BOLD));
                    int height8112 = height7219 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get(XjthpFh.rtD), i9, height8112, i419));
                    int height8113 = height8112 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass72(Game.lang.get("Technology1"), i9, height8113, i419));
                    height3 = height8113 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    int i4110 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass73(Game.lang.get("CivilizationAdvantages"), Images.advantages, i9, height3, i4110, i12, width3, CFG.FONT_BOLD));
                    int height8114 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("EachTimeYouUnlockATechnologyYouWillGainOneAdvantagePointThatYouCanExchangeForABonus"), i9, height8114, i4110));
                    height3 = height8114 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    int i4111 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass73(Game.lang.get("CivilizationAdvantages"), Images.advantages, i9, height3, i4111, i12, width3, CFG.FONT_BOLD));
                    int height8115 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("EachTimeYouUnlockATechnologyYouWillGainOneAdvantagePointThatYouCanExchangeForABonus"), i9, height8115, i4111));
                    height3 = height8115 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2) {
                    arrayList.add(new Text_Title_v2(Game.lang.get("CivilizationRank"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height8116 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i4112 = i - (i9 * 2);
                    arrayList.add(new ButtonStatsRectIMG(Game.lang.get("CivilizationRank"), CivilizationRanking.getCivilizationRank_IMG(Game.getCiv(Game.player.iCivID).iCivRankID), i9, height8116, i4112, i12, width3, CFG.FONT_BOLD));
                    height3 = height8116 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    width = ImageManager.getImage(Images.council).getWidth() + (CFG.PADDING * 2);
                    i2 = (i4112 - CFG.PADDING) / 2;
                    i3 = 0;
                    while (i3 < GameValues.civRank.CIV_RANK_MANPOWER_MAX.length) {
                        if (i3 % 2 == 0) {
                            i5 = i9;
                        } else {
                            i5 = CFG.PADDING + i9 + i2;
                        }
                        arrayList.add(new AnonymousClass74(CivilizationRanking.getCivilizationRank_Name(i3), CivilizationRanking.getCivilizationRank_IMG(i3), i5, height3, i2, CFG.BUTTON_HEIGHT3, width));
                        arrayList.get(arrayList.size() - 1).setCurrent(i3);
                        i3++;
                        if (i3 % 2 == 0) {
                            height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                        }
                    }
                    size = arrayList.size();
                    while (i4 < size) {
                        if (height3 < arrayList.get(i4).getPosY() + arrayList.get(i4).getHeight() + CFG.PADDING) {
                            height3 = arrayList.get(i4).getPosY() + arrayList.get(i4).getHeight() + CFG.PADDING;
                        }
                    }
                } else {
                    arrayList.add(new Text_Title_v2(Game.lang.get("CivilizationRank"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height8117 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i4113 = i - (i9 * 2);
                    arrayList.add(new ButtonStatsRectIMG(Game.lang.get("CivilizationRank"), CivilizationRanking.getCivilizationRank_IMG(Game.getCiv(Game.player.iCivID).iCivRankID), i9, height8117, i4113, i12, width3, CFG.FONT_BOLD));
                    height3 = height8117 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    width = ImageManager.getImage(Images.council).getWidth() + (CFG.PADDING * 2);
                    i2 = (i4113 - CFG.PADDING) / 2;
                    i3 = 0;
                    while (i3 < GameValues.civRank.CIV_RANK_MANPOWER_MAX.length) {
                        if (i3 % 2 == 0) {
                            i5 = i9;
                        } else {
                            i5 = CFG.PADDING + i9 + i2;
                        }
                        arrayList.add(new AnonymousClass74(CivilizationRanking.getCivilizationRank_Name(i3), CivilizationRanking.getCivilizationRank_IMG(i3), i5, height3, i2, CFG.BUTTON_HEIGHT3, width));
                        arrayList.get(arrayList.size() - 1).setCurrent(i3);
                        i3++;
                        if (i3 % 2 == 0) {
                            height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                        }
                    }
                    size = arrayList.size();
                    while (i4 < size) {
                        if (height3 < arrayList.get(i4).getPosY() + arrayList.get(i4).getHeight() + CFG.PADDING) {
                            height3 = arrayList.get(i4).getPosY() + arrayList.get(i4).getHeight() + CFG.PADDING;
                        }
                    }
                }
                if (Game.menuManager.getInGame()) {
                    arrayList.add(new Text_Title_v2(Game.lang.get("More"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height8118 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    if (CFG.isDesktop()) {
                        i8 = CFG.BUTTON_HEIGHT2;
                    } else {
                        i8 = CFG.BUTTON_HEIGHT;
                    }
                    int i4114 = i - (i9 * 2);
                    int i4115 = i8;
                    arrayList.add(new AnonymousClass75(Game.lang.get("ListOfUnits"), Game_Calendar.IMG_MANPOWER, i9, height8118, i4114, i4115, ImageManager.getImage(Images.advantages).getWidth() + (CFG.PADDING * 4), 0, 0L));
                    int height8119 = height8118 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    arrayList.add(new AnonymousClass76(Game.lang.get("ListOfBuildings"), Images.buildings, i9, height8119, i4114, i4115, ImageManager.getImage(Images.advantages).getWidth() + (CFG.PADDING * 4), 0, 0L));
                    height3 = height8119 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                int i4116 = height3 + CFG.PADDING;
                int i4117 = CFG.GAME_HEIGHT - height2;
                if (Game.menuManager.getInGame()) {
                    height = CFG.GAME_HEIGHT - Game.menuManager.getInGame_MapModesPosY();
                } else {
                    height = ImageManager.getImage(Images.buttonPlay).getHeight();
                }
                int iMin3 = Math.min(i4116, i4117 - (height + (CFG.PADDING * 3)));
                i6 = i;
                arrayList.add(new Empty(0, 0, i6, Math.max(i4116, iMin3)));
                AnonymousClass77 anonymousClass79 = new AnonymousClass77(Game.lang.get("Encyclopedia"), false, false, Images.title500);
                if (Game.menuManager.getInGame()) {
                    i7 = (CFG.GAME_WIDTH - i6) - (CFG.PADDING * 2);
                } else {
                    i7 = CFG.PADDING * 2;
                }
                initMenu(anonymousClass79, i7, height2, i6, iMin3, arrayList, false, true);
                this.drawScrollPositionAlways = false;
            }
            str5 = str3;
            arrayList.add(new AnonymousClass13(Game.lang.get("Battles"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, width2 - (Images.boxTitleBORDERWIDTH * 2), i11));
            int height820 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int i420 = width2 - (i9 * 2);
            arrayList.add(new AnonymousClass14(Game.lang.get("DeploymentPhase"), Game_Calendar.IMG_MANPOWER, i9, height820, i420, i12, width3, CFG.FONT_BOLD));
            int height821 = height820 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass15(Game.lang.get(CvuNnwgYwe.FxjCfEgvZCvYNc), i9, height821, i420));
            int height822 = height821 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass16(Game.lang.get("DeploymentPhase1"), i9, height822, i420));
            int height823 = height822 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int iMax3 = Math.max((ImageManager.getImage(Images.battleArmy0).getHeight() * 2) + (CFG.PADDING * 3), CFG.TEXT_HEIGHT + (CFG.PADDING * 6));
            i = width2;
            arrayList.add(InGame_RecruitArmy.getTitleFirstLine(height823, i, iMax3));
            int height94 = height823 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            arrayList.add(InGame_RecruitArmy.getTitleFirstLineSide(height94, i, iMax3));
            int height95 = height94 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            arrayList.add(InGame_RecruitArmy.getTitleSecondLine(height95, i, iMax3));
            int height96 = height95 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            arrayList.add(new AnonymousClass17(Game.lang.get("DeploymentPhase2"), i9, height96, i420));
            height3 = height96 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            if (z2 == 0) {
                int i1116 = i - (i9 * 2);
                arrayList.add(new AnonymousClass18(Game.lang.get("RoleOfGenerals"), Images.general, i9, height3, i1116, i12, width3, CFG.FONT_BOLD));
                int height21114 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass19(Game.lang.get("RoleOfGenerals0"), i9, height21114, i1116));
                int height21115 = height21114 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass20(Game.lang.get("RoleOfGenerals1"), i9, height21115, i1116));
                height3 = height21115 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i1117 = i - (i9 * 2);
                arrayList.add(new AnonymousClass18(Game.lang.get("RoleOfGenerals"), Images.general, i9, height3, i1117, i12, width3, CFG.FONT_BOLD));
                int height21116 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass19(Game.lang.get("RoleOfGenerals0"), i9, height21116, i1117));
                int height21117 = height21116 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass20(Game.lang.get("RoleOfGenerals1"), i9, height21117, i1117));
                height3 = height21117 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                int i1118 = i - (i9 * 2);
                arrayList.add(new AnonymousClass21(Game.lang.get("Generals") + str4 + Game.lang.get("CombatExperience"), Images.general, i9, height3, i1118, i12, width3, CFG.FONT_BOLD));
                int height21118 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("CombatExperienceDesc"), i9, height21118, i1118));
                height3 = height21118 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i1119 = i - (i9 * 2);
                arrayList.add(new AnonymousClass21(Game.lang.get("Generals") + str4 + Game.lang.get("CombatExperience"), Images.general, i9, height3, i1119, i12, width3, CFG.FONT_BOLD));
                int height21119 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("CombatExperienceDesc"), i9, height21119, i1119));
                height3 = height21119 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                int i11110 = i - (i9 * 2);
                arrayList.add(new AnonymousClass22(Game.lang.get("BattlePhase"), Images.battle, i9, height3, i11110, i12, width3, CFG.FONT_BOLD));
                int height211110 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass23(Game.lang.get("BattlePhase0"), i9, height211110, i11110));
                int height211111 = height211110 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass24(Game.lang.get("BattlePhase1"), i9, height211111, i11110));
                int height211112 = height211111 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass25(Game.lang.get("BattlePhase2"), i9, height211112, i11110));
                height3 = height211112 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i11111 = i - (i9 * 2);
                arrayList.add(new AnonymousClass22(Game.lang.get("BattlePhase"), Images.battle, i9, height3, i11111, i12, width3, CFG.FONT_BOLD));
                int height211113 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass23(Game.lang.get("BattlePhase0"), i9, height211113, i11111));
                int height211114 = height211113 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass24(Game.lang.get("BattlePhase1"), i9, height211114, i11111));
                int height211115 = height211114 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass25(Game.lang.get("BattlePhase2"), i9, height211115, i11111));
                height3 = height211115 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                int i21110 = i - (i9 * 2);
                arrayList.add(new AnonymousClass26(Game.lang.get("MoraleAndRetreatMechanics"), Images.morale, i9, height3, i21110, i12, width3, CFG.FONT_BOLD));
                int height2212 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass27(Game.lang.get("MoraleAndRetreatMechanics0"), i9, height2212, i21110));
                int height2213 = height2212 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass28(Game.lang.get("MoraleAndRetreatMechanics1"), i9, height2213, i21110));
                height3 = height2213 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i21111 = i - (i9 * 2);
                arrayList.add(new AnonymousClass26(Game.lang.get("MoraleAndRetreatMechanics"), Images.morale, i9, height3, i21111, i12, width3, CFG.FONT_BOLD));
                int height2214 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass27(Game.lang.get("MoraleAndRetreatMechanics0"), i9, height2214, i21111));
                int height2215 = height2214 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass28(Game.lang.get("MoraleAndRetreatMechanics1"), i9, height2215, i21111));
                height3 = height2215 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                int i21112 = i - (i9 * 2);
                arrayList.add(new AnonymousClass29(Game.lang.get("Discipline"), Images.discipline, i9, height3, i21112, i12, width3, CFG.FONT_BOLD));
                int height31120 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass30(Game.lang.get("DisciplineSignifiesOrganizationAndCoordinationOfTheArmyInBattleIncreasingUnitsAttack"), i9, height31120, i21112));
                height3 = height31120 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i21113 = i - (i9 * 2);
                arrayList.add(new AnonymousClass29(Game.lang.get("Discipline"), Images.discipline, i9, height3, i21113, i12, width3, CFG.FONT_BOLD));
                int height31121 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass30(Game.lang.get("DisciplineSignifiesOrganizationAndCoordinationOfTheArmyInBattleIncreasingUnitsAttack"), i9, height31121, i21113));
                height3 = height31121 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                int i21114 = i - (i9 * 2);
                arrayList.add(new AnonymousClass31(Game.lang.get("DestructionOrSurvival"), Images.skull, i9, height3, i21114, i12, width3, CFG.FONT_BOLD));
                int height31122 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("DestructionOrSurvival0", GameValues.battle.BATTLE_ARMY_DESTROYED_ROUND_ID), i9, height31122, i21114));
                height3 = height31122 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i21115 = i - (i9 * 2);
                arrayList.add(new AnonymousClass31(Game.lang.get("DestructionOrSurvival"), Images.skull, i9, height3, i21115, i12, width3, CFG.FONT_BOLD));
                int height31123 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("DestructionOrSurvival0", GameValues.battle.BATTLE_ARMY_DESTROYED_ROUND_ID), i9, height31123, i21115));
                height3 = height31123 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                arrayList.add(new Text_Title_v2(Game.lang.get("Wars"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height311112 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i21116 = i - (i9 * 2);
                arrayList.add(new ButtonStatsRectIMG(Game.lang.get("War"), Images.war, i9, height311112, i21116, i12, width3, CFG.FONT_BOLD));
                int height311113 = height311112 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("ToDeclareWarTheRelationsBetweenCivilizationsMustBeBelowX", GameValues.war.RELATIONS_TO_DECLARE_WAR), i9, height311113, i21116));
                int height311114 = height311113 + arrayList.get(arrayList.size() - 1).getHeight();
                str6 = r2;
                arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanProposeAWhitePeace", CFG.getPrecision2(GameValues.peace.WAR_WHITE_PEACE_MIN_WAR_SCORE, 100) + str6), i9, height311114, i21116));
                int height311115 = height311114 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanMakeDemands", CFG.getPrecision2(GameValues.peace.WAR_MAKE_DEMANDS_MIN_WAR_SCORE, 100) + str6), i9, height311115, i21116));
                int height311116 = height311115 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("EachMonthTheWinningSideGainsXOfTheTickingWarScoreBasedOnTheCurrentOverallWarScoreFromBattlesAndOccupiedProvinces", "X"), i9, height311116, i21116));
                int height311117 = height311116 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("AWhitePeaceWillBeAutomaticallySignedIfThereIsNoActivityForACertainPeriodAndTheWarscoreRemainsLow"), i9, height311117, i21116));
                height3 = height311117 + arrayList.get(arrayList.size() - 1).getHeight();
            } else {
                arrayList.add(new Text_Title_v2(Game.lang.get("Wars"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height311118 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i21117 = i - (i9 * 2);
                arrayList.add(new ButtonStatsRectIMG(Game.lang.get("War"), Images.war, i9, height311118, i21117, i12, width3, CFG.FONT_BOLD));
                int height311119 = height311118 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("ToDeclareWarTheRelationsBetweenCivilizationsMustBeBelowX", GameValues.war.RELATIONS_TO_DECLARE_WAR), i9, height311119, i21117));
                int height3111110 = height311119 + arrayList.get(arrayList.size() - 1).getHeight();
                str6 = r2;
                arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanProposeAWhitePeace", CFG.getPrecision2(GameValues.peace.WAR_WHITE_PEACE_MIN_WAR_SCORE, 100) + str6), i9, height3111110, i21117));
                int height3111111 = height3111110 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanMakeDemands", CFG.getPrecision2(GameValues.peace.WAR_MAKE_DEMANDS_MIN_WAR_SCORE, 100) + str6), i9, height3111111, i21117));
                int height3111112 = height3111111 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("EachMonthTheWinningSideGainsXOfTheTickingWarScoreBasedOnTheCurrentOverallWarScoreFromBattlesAndOccupiedProvinces", "X"), i9, height3111112, i21117));
                int height3111113 = height3111112 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("AWhitePeaceWillBeAutomaticallySignedIfThereIsNoActivityForACertainPeriodAndTheWarscoreRemainsLow"), i9, height3111113, i21117));
                height3 = height3111113 + arrayList.get(arrayList.size() - 1).getHeight();
            }
            if (z2 == 0) {
                arrayList.add(new Text_Title_v2(Game.lang.get("PeaceNegotiations"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height328 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i21118 = i - (i9 * 2);
                String str12 = str6;
                arrayList.add(new ButtonStatsRectIMG(Game.lang.get(IlLkpaQxs.oPWPOdnXwgko), Images.peace, i9, height328, i21118, i12, width3, CFG.FONT_BOLD));
                int height329 = height328 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanMakeDemands", CFG.getPrecision2(GameValues.peace.WAR_MAKE_DEMANDS_MIN_WAR_SCORE, 100) + str12), i9, height329, i21118));
                int height41118 = height329 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanProposeAWhitePeace", CFG.getPrecision2(GameValues.peace.WAR_WHITE_PEACE_MIN_WAR_SCORE, 100) + str12), i9, height41118, i21118));
                int height41119 = height41118 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get(CvuNnwgYwe.uDQbjWBjKa), i9, height41119, i21118));
                int height41120 = height41119 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("PeaceAnnex"), i9, height41120, i21118));
                height3 = height41120 + arrayList.get(arrayList.size() - 1).getHeight();
            } else {
                arrayList.add(new Text_Title_v2(Game.lang.get("PeaceNegotiations"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height3210 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i21119 = i - (i9 * 2);
                String str13 = str6;
                arrayList.add(new ButtonStatsRectIMG(Game.lang.get(IlLkpaQxs.oPWPOdnXwgko), Images.peace, i9, height3210, i21119, i12, width3, CFG.FONT_BOLD));
                int height3211 = height3210 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanMakeDemands", CFG.getPrecision2(GameValues.peace.WAR_MAKE_DEMANDS_MIN_WAR_SCORE, 100) + str13), i9, height3211, i21119));
                int height411110 = height3211 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanProposeAWhitePeace", CFG.getPrecision2(GameValues.peace.WAR_WHITE_PEACE_MIN_WAR_SCORE, 100) + str13), i9, height411110, i21119));
                int height411111 = height411110 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get(CvuNnwgYwe.uDQbjWBjKa), i9, height411111, i21119));
                int height41121 = height411111 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("PeaceAnnex"), i9, height41121, i21119));
                height3 = height41121 + arrayList.get(arrayList.size() - 1).getHeight();
            }
            if (z2 == 0) {
                arrayList.add(new AnonymousClass32(Game.lang.get("Siege"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height411112 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i22110 = i - (i9 * 2);
                arrayList.add(new AnonymousClass33(Game.lang.get("SiegeProgress"), Images.siege, i9, height411112, i22110, i12, width3, CFG.FONT_BOLD));
                int height411113 = height411112 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass34(Game.lang.get("DailySiegeProgressIsTheSumOfTheSiegeAbilitiesOfAllUnitsInvolvedInTheSiege"), i9, height411113, i22110));
                int height411114 = height411113 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass35(Game.lang.get("TheSiegeEndsWhenTheProgressReachesTheProvincesDefense"), i9, height411114, i22110));
                int height411115 = height411114 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass36(Game.lang.get("AfterASuccessfulSiegeAllNeighboringProvincesWithoutDefensiveBuildingsWillBeOccupied"), i9, height411115, i22110));
                int height4212 = height411115 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                arrayList.add(new Text_Desc(Game.lang.get("MinimumArmyRequiredToSiegeProvinceX", CFG.getPrecision2(GameValues.siege.SIEGE_REGIMENTS_MIN * Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE, 1)), i9, height4212, i22110));
                height3 = height4212 + arrayList.get(arrayList.size() - 1).getHeight();
            } else {
                arrayList.add(new AnonymousClass32(Game.lang.get("Siege"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height411116 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i22111 = i - (i9 * 2);
                arrayList.add(new AnonymousClass33(Game.lang.get("SiegeProgress"), Images.siege, i9, height411116, i22111, i12, width3, CFG.FONT_BOLD));
                int height411117 = height411116 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass34(Game.lang.get("DailySiegeProgressIsTheSumOfTheSiegeAbilitiesOfAllUnitsInvolvedInTheSiege"), i9, height411117, i22111));
                int height411118 = height411117 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass35(Game.lang.get("TheSiegeEndsWhenTheProgressReachesTheProvincesDefense"), i9, height411118, i22111));
                int height411119 = height411118 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass36(Game.lang.get("AfterASuccessfulSiegeAllNeighboringProvincesWithoutDefensiveBuildingsWillBeOccupied"), i9, height411119, i22111));
                int height4213 = height411119 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                arrayList.add(new Text_Desc(Game.lang.get("MinimumArmyRequiredToSiegeProvinceX", CFG.getPrecision2(GameValues.siege.SIEGE_REGIMENTS_MIN * Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE, 1)), i9, height4213, i22111));
                height3 = height4213 + arrayList.get(arrayList.size() - 1).getHeight();
            }
            if (z2 == 0) {
                arrayList.add(new AnonymousClass37(Game.lang.get("Fogofwar"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height4214 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i22112 = i - (i9 * 2);
                arrayList.add(new AnonymousClass38(Game.lang.get("Fogofwar"), Images.provinces, i9, height4214, i22112, i12, width3, CFG.FONT_BOLD));
                int height4215 = height4214 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("FogOfWarYouCanOnlyObserveActionsInYourOwnProvincesThoseOfYourAlliesAndSubjectsDirectlyBorderingProvincesAndWhatYourTroopsUncover"), i9, height4215, i22112));
                height3 = height4215 + arrayList.get(arrayList.size() - 1).getHeight();
            } else {
                arrayList.add(new AnonymousClass37(Game.lang.get("Fogofwar"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height4216 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i22113 = i - (i9 * 2);
                arrayList.add(new AnonymousClass38(Game.lang.get("Fogofwar"), Images.provinces, i9, height4216, i22113, i12, width3, CFG.FONT_BOLD));
                int height4217 = height4216 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("FogOfWarYouCanOnlyObserveActionsInYourOwnProvincesThoseOfYourAlliesAndSubjectsDirectlyBorderingProvincesAndWhatYourTroopsUncover"), i9, height4217, i22113));
                height3 = height4217 + arrayList.get(arrayList.size() - 1).getHeight();
            }
            if (z2 == 0) {
                arrayList.add(new Text_Title_v2(Game.lang.get("WarWeariness"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height51110 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i22114 = i - (i9 * 2);
                arrayList.add(new AnonymousClass39(Game.lang.get("WarWeariness"), Images.weariness, i9, height51110, i22114, i12, width3, CFG.FONT_BOLD));
                int height51111 = height51110 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("WarWearinessH1"), i9, height51111, i22114));
                int height51112 = height51111 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("WarWearinessH2"), i9, height51112, i22114));
                height3 = height51112 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                arrayList.add(new Text_Title_v2(Game.lang.get("WarWeariness"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height51113 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i22115 = i - (i9 * 2);
                arrayList.add(new AnonymousClass39(Game.lang.get("WarWeariness"), Images.weariness, i9, height51113, i22115, i12, width3, CFG.FONT_BOLD));
                int height51114 = height51113 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("WarWearinessH1"), i9, height51114, i22115));
                int height51115 = height51114 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("WarWearinessH2"), i9, height51115, i22115));
                height3 = height51115 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                arrayList.add(new Text_Title_v2(Game.lang.get("Diplomacy"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height51116 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i22116 = i - (i9 * 2);
                arrayList.add(new ButtonStatsRectIMG(Game.lang.get("Diplomacy"), Images.diplomacy, i9, height51116, i22116, i12, width3, CFG.FONT_BOLD));
                int height51117 = height51116 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("DifferentGovReligion"), i9, height51117, i22116));
                height3 = height51117 + arrayList.get(arrayList.size() - 1).getHeight();
            } else {
                arrayList.add(new Text_Title_v2(Game.lang.get("Diplomacy"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height51118 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i22117 = i - (i9 * 2);
                arrayList.add(new ButtonStatsRectIMG(Game.lang.get("Diplomacy"), Images.diplomacy, i9, height51118, i22117, i12, width3, CFG.FONT_BOLD));
                int height51119 = height51118 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("DifferentGovReligion"), i9, height51119, i22117));
                height3 = height51119 + arrayList.get(arrayList.size() - 1).getHeight();
            }
            if (z2 == 0) {
                arrayList.add(new AnonymousClass40(Game.lang.get("CivilizationStability"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height52110 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i22118 = i - (i9 * 2);
                arrayList.add(new AnonymousClass41(Game.lang.get("CivilizationStability"), Images.civStability, i9, height52110, i22118, i12, width3, CFG.FONT_BOLD));
                int height52111 = height52110 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass42(Game.lang.get("CivilizationStabilityReflectsThePercentageOfYourProvincesWithLegitimateClaimsComparedToThoseWithoutAndTakesIntoAccountYourReligiousUnity"), i9, height52111, i22118));
                height3 = height52111 + arrayList.get(arrayList.size() - 1).getHeight();
            } else {
                arrayList.add(new AnonymousClass40(Game.lang.get("CivilizationStability"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height52112 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i22119 = i - (i9 * 2);
                arrayList.add(new AnonymousClass41(Game.lang.get("CivilizationStability"), Images.civStability, i9, height52112, i22119, i12, width3, CFG.FONT_BOLD));
                int height52113 = height52112 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass42(Game.lang.get("CivilizationStabilityReflectsThePercentageOfYourProvincesWithLegitimateClaimsComparedToThoseWithoutAndTakesIntoAccountYourReligiousUnity"), i9, height52113, i22119));
                height3 = height52113 + arrayList.get(arrayList.size() - 1).getHeight();
            }
            if (z2 == 0) {
                arrayList.add(new AnonymousClass43(Game.lang.get("Province"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height52114 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i31110 = i - (i9 * 2);
                arrayList.add(new AnonymousClass44(Game.lang.get("ProvinceMonthlyIncome"), Images.gold, i9, height52114, i31110, i12, width3, CFG.FONT_BOLD));
                int height52115 = height52114 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass45(Game.lang.get("Income0"), i9, height52115, i31110));
                int height52116 = height52115 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass46(Game.lang.get("Income1"), i9, height52116, i31110));
                height3 = height52116 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                arrayList.add(new AnonymousClass43(Game.lang.get("Province"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height52117 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i31111 = i - (i9 * 2);
                arrayList.add(new AnonymousClass44(Game.lang.get("ProvinceMonthlyIncome"), Images.gold, i9, height52117, i31111, i12, width3, CFG.FONT_BOLD));
                int height52118 = height52117 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass45(Game.lang.get("Income0"), i9, height52118, i31111));
                int height52119 = height52118 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass46(Game.lang.get("Income1"), i9, height52119, i31111));
                height3 = height52119 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                int i31112 = i - (i9 * 2);
                arrayList.add(new AnonymousClass47(Game.lang.get("TaxEfficiency"), Images.tax, i9, height3, i31112, i12, width3, CFG.FONT_BOLD));
                int height61114 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass48(Game.lang.get("TaxEfficiency0"), i9, height61114, i31112));
                height3 = height61114 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i31113 = i - (i9 * 2);
                arrayList.add(new AnonymousClass47(Game.lang.get("TaxEfficiency"), Images.tax, i9, height3, i31113, i12, width3, CFG.FONT_BOLD));
                int height61115 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass48(Game.lang.get("TaxEfficiency0"), i9, height61115, i31113));
                height3 = height61115 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                int i31114 = i - (i9 * 2);
                arrayList.add(new AnonymousClass49(Game.lang.get("EconomyOfProvince"), Game_Calendar.IMG_ECONOMY, i9, height3, i31114, i12, width3, CFG.FONT_BOLD));
                int height61116 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass50(Game.lang.get("Economy0"), i9, height61116, i31114));
                int height61117 = height61116 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass51(Game.lang.get("Economy1"), i9, height61117, i31114));
                height3 = height61117 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i31115 = i - (i9 * 2);
                arrayList.add(new AnonymousClass49(Game.lang.get("EconomyOfProvince"), Game_Calendar.IMG_ECONOMY, i9, height3, i31115, i12, width3, CFG.FONT_BOLD));
                int height61118 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass50(Game.lang.get("Economy0"), i9, height61118, i31115));
                int height61119 = height61118 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass51(Game.lang.get("Economy1"), i9, height61119, i31115));
                height3 = height61119 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                int i31116 = i - (i9 * 2);
                arrayList.add(new AnonymousClass52(Game.lang.get("ProducedGoods"), Images.goods, i9, height3, i31116, i12, width3, CFG.FONT_BOLD));
                int height611110 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass53(Game.lang.get("Production0"), i9, height611110, i31116));
                int height611111 = height611110 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass54(Game.lang.get("Production1"), i9, height611111, i31116));
                int height611112 = height611111 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass55(Game.lang.get("Production2"), i9, height611112, i31116));
                height3 = height611112 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i31117 = i - (i9 * 2);
                arrayList.add(new AnonymousClass52(Game.lang.get("ProducedGoods"), Images.goods, i9, height3, i31117, i12, width3, CFG.FONT_BOLD));
                int height611113 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass53(Game.lang.get("Production0"), i9, height611113, i31117));
                int height611114 = height611113 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass54(Game.lang.get("Production1"), i9, height611114, i31117));
                int height611115 = height611114 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass55(Game.lang.get("Production2"), i9, height611115, i31117));
                height3 = height611115 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                int i31118 = i - (i9 * 2);
                arrayList.add(new AnonymousClass56(Game.lang.get("Population"), Images.population, i9, height3, i31118, i12, width3, CFG.FONT_BOLD));
                int height6216 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass57(Game.lang.get("Population0"), i9, height6216, i31118));
                int height6217 = height6216 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass58(Game.lang.get("ThePopulationWillSlowlyAssimilateIfTheCivilizationHasACore"), i9, height6217, i31118));
                height3 = height6217 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i31119 = i - (i9 * 2);
                arrayList.add(new AnonymousClass56(Game.lang.get("Population"), Images.population, i9, height3, i31119, i12, width3, CFG.FONT_BOLD));
                int height6218 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass57(Game.lang.get("Population0"), i9, height6218, i31119));
                int height6219 = height6218 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass58(Game.lang.get("ThePopulationWillSlowlyAssimilateIfTheCivilizationHasACore"), i9, height6219, i31119));
                height3 = height6219 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                int i32110 = i - (i9 * 2);
                arrayList.add(new AnonymousClass59(Game.lang.get("GrowthRate"), Images.populationGrowth, i9, height3, i32110, i12, width3, CFG.FONT_BOLD));
                int height62110 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass60(Game.lang.get("GrowthRate0"), i9, height62110, i32110));
                height3 = height62110 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i32111 = i - (i9 * 2);
                arrayList.add(new AnonymousClass59(Game.lang.get("GrowthRate"), Images.populationGrowth, i9, height3, i32111, i12, width3, CFG.FONT_BOLD));
                int height62111 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass60(Game.lang.get("GrowthRate0"), i9, height62111, i32111));
                height3 = height62111 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                int i32112 = i - (i9 * 2);
                arrayList.add(new AnonymousClass61(Game.lang.get("Diseases"), Images.disease, i9, height3, i32112, i12, width3, CFG.FONT_BOLD));
                int height62112 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass62(Game.lang.get("Plague0"), i9, height62112, i32112));
                int height71110 = height62112 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("Plague1"), i9, height71110, i32112));
                height3 = height71110 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i32113 = i - (i9 * 2);
                arrayList.add(new AnonymousClass61(Game.lang.get("Diseases"), Images.disease, i9, height3, i32113, i12, width3, CFG.FONT_BOLD));
                int height62113 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass62(Game.lang.get("Plague0"), i9, height62113, i32113));
                int height71111 = height62113 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("Plague1"), i9, height71111, i32113));
                height3 = height71111 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                arrayList.add(new AnonymousClass63(Game.lang.get("LegacyPoints"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height71112 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i32114 = i - (i9 * 2);
                arrayList.add(new AnonymousClass64(Game.lang.get("Legacy"), Images.legacy, i9, height71112, i32114, i12, width3, CFG.FONT_BOLD));
                int height71113 = height71112 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("Legacy0"), i9, height71113, i32114));
                int height71114 = height71113 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass65(Game.lang.get("Legacy1"), i9, height71114, i32114));
                int height71115 = height71114 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("Legacy2"), i9, height71115, i32114));
                height3 = height71115 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                arrayList.add(new AnonymousClass63(Game.lang.get("LegacyPoints"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height71116 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i32115 = i - (i9 * 2);
                arrayList.add(new AnonymousClass64(Game.lang.get("Legacy"), Images.legacy, i9, height71116, i32115, i12, width3, CFG.FONT_BOLD));
                int height71117 = height71116 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("Legacy0"), i9, height71117, i32115));
                int height71118 = height71117 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass65(Game.lang.get("Legacy1"), i9, height71118, i32115));
                int height71119 = height71118 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("Legacy2"), i9, height71119, i32115));
                height3 = height71119 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                arrayList.add(new AnonymousClass66(Game.lang.get(GameValues.court.COUNCIL_NAME), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height72110 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i32116 = i - (i9 * 2);
                arrayList.add(new AnonymousClass67(Game.lang.get("Advisors"), Images.council, i9, height72110, i32116, i12, width3, CFG.FONT_BOLD));
                int height72111 = height72110 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass68(Game.lang.get(gpVDKipRURuzw.fPT), i9, height72111, i32116));
                height3 = height72111 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                arrayList.add(new AnonymousClass66(Game.lang.get(GameValues.court.COUNCIL_NAME), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height72112 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i32117 = i - (i9 * 2);
                arrayList.add(new AnonymousClass67(Game.lang.get("Advisors"), Images.council, i9, height72112, i32117, i12, width3, CFG.FONT_BOLD));
                int height72113 = height72112 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass68(Game.lang.get(gpVDKipRURuzw.fPT), i9, height72113, i32117));
                height3 = height72113 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                arrayList.add(new AnonymousClass69(Game.lang.get("Corruption"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height72114 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i32118 = i - (i9 * 2);
                arrayList.add(new AnonymousClass70(Game.lang.get("SupremeCourt"), Images.corruption, i9, height72114, i32118, i12, width3, CFG.FONT_BOLD));
                int height72115 = height72114 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("Corruption0"), i9, height72115, i32118));
                height3 = height72115 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                arrayList.add(new AnonymousClass69(Game.lang.get("Corruption"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height72116 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i32119 = i - (i9 * 2);
                arrayList.add(new AnonymousClass70(Game.lang.get("SupremeCourt"), Images.corruption, i9, height72116, i32119, i12, width3, CFG.FONT_BOLD));
                int height72117 = height72116 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("Corruption0"), i9, height72117, i32119));
                height3 = height72117 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                arrayList.add(new AnonymousClass71(Game.lang.get("Technologies"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height72118 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i4118 = i - (i9 * 2);
                arrayList.add(new ButtonStatsRectIMG(Game.lang.get("Research"), Game_Calendar.IMG_TECHNOLOGY, i9, height72118, i4118, i12, width3, CFG.FONT_BOLD));
                int height81110 = height72118 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get(XjthpFh.rtD), i9, height81110, i4118));
                int height81111 = height81110 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass72(Game.lang.get("Technology1"), i9, height81111, i4118));
                height3 = height81111 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                arrayList.add(new AnonymousClass71(Game.lang.get("Technologies"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height72119 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i4119 = i - (i9 * 2);
                arrayList.add(new ButtonStatsRectIMG(Game.lang.get("Research"), Game_Calendar.IMG_TECHNOLOGY, i9, height72119, i4119, i12, width3, CFG.FONT_BOLD));
                int height81112 = height72119 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get(XjthpFh.rtD), i9, height81112, i4119));
                int height81113 = height81112 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass72(Game.lang.get("Technology1"), i9, height81113, i4119));
                height3 = height81113 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                int i41110 = i - (i9 * 2);
                arrayList.add(new AnonymousClass73(Game.lang.get("CivilizationAdvantages"), Images.advantages, i9, height3, i41110, i12, width3, CFG.FONT_BOLD));
                int height81114 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("EachTimeYouUnlockATechnologyYouWillGainOneAdvantagePointThatYouCanExchangeForABonus"), i9, height81114, i41110));
                height3 = height81114 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i41111 = i - (i9 * 2);
                arrayList.add(new AnonymousClass73(Game.lang.get("CivilizationAdvantages"), Images.advantages, i9, height3, i41111, i12, width3, CFG.FONT_BOLD));
                int height81115 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("EachTimeYouUnlockATechnologyYouWillGainOneAdvantagePointThatYouCanExchangeForABonus"), i9, height81115, i41111));
                height3 = height81115 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2) {
                arrayList.add(new Text_Title_v2(Game.lang.get("CivilizationRank"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height81116 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i41112 = i - (i9 * 2);
                arrayList.add(new ButtonStatsRectIMG(Game.lang.get("CivilizationRank"), CivilizationRanking.getCivilizationRank_IMG(Game.getCiv(Game.player.iCivID).iCivRankID), i9, height81116, i41112, i12, width3, CFG.FONT_BOLD));
                height3 = height81116 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                width = ImageManager.getImage(Images.council).getWidth() + (CFG.PADDING * 2);
                i2 = (i41112 - CFG.PADDING) / 2;
                i3 = 0;
                while (i3 < GameValues.civRank.CIV_RANK_MANPOWER_MAX.length) {
                    if (i3 % 2 == 0) {
                        i5 = i9;
                    } else {
                        i5 = CFG.PADDING + i9 + i2;
                    }
                    arrayList.add(new AnonymousClass74(CivilizationRanking.getCivilizationRank_Name(i3), CivilizationRanking.getCivilizationRank_IMG(i3), i5, height3, i2, CFG.BUTTON_HEIGHT3, width));
                    arrayList.get(arrayList.size() - 1).setCurrent(i3);
                    i3++;
                    if (i3 % 2 == 0) {
                        height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    }
                }
                size = arrayList.size();
                while (i4 < size) {
                    if (height3 < arrayList.get(i4).getPosY() + arrayList.get(i4).getHeight() + CFG.PADDING) {
                        height3 = arrayList.get(i4).getPosY() + arrayList.get(i4).getHeight() + CFG.PADDING;
                    }
                }
            } else {
                arrayList.add(new Text_Title_v2(Game.lang.get("CivilizationRank"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height81117 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i41113 = i - (i9 * 2);
                arrayList.add(new ButtonStatsRectIMG(Game.lang.get("CivilizationRank"), CivilizationRanking.getCivilizationRank_IMG(Game.getCiv(Game.player.iCivID).iCivRankID), i9, height81117, i41113, i12, width3, CFG.FONT_BOLD));
                height3 = height81117 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                width = ImageManager.getImage(Images.council).getWidth() + (CFG.PADDING * 2);
                i2 = (i41113 - CFG.PADDING) / 2;
                i3 = 0;
                while (i3 < GameValues.civRank.CIV_RANK_MANPOWER_MAX.length) {
                    if (i3 % 2 == 0) {
                        i5 = i9;
                    } else {
                        i5 = CFG.PADDING + i9 + i2;
                    }
                    arrayList.add(new AnonymousClass74(CivilizationRanking.getCivilizationRank_Name(i3), CivilizationRanking.getCivilizationRank_IMG(i3), i5, height3, i2, CFG.BUTTON_HEIGHT3, width));
                    arrayList.get(arrayList.size() - 1).setCurrent(i3);
                    i3++;
                    if (i3 % 2 == 0) {
                        height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    }
                }
                size = arrayList.size();
                while (i4 < size) {
                    if (height3 < arrayList.get(i4).getPosY() + arrayList.get(i4).getHeight() + CFG.PADDING) {
                        height3 = arrayList.get(i4).getPosY() + arrayList.get(i4).getHeight() + CFG.PADDING;
                    }
                }
            }
            if (Game.menuManager.getInGame()) {
                arrayList.add(new Text_Title_v2(Game.lang.get("More"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height81118 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                if (CFG.isDesktop()) {
                    i8 = CFG.BUTTON_HEIGHT2;
                } else {
                    i8 = CFG.BUTTON_HEIGHT;
                }
                int i41114 = i - (i9 * 2);
                int i41115 = i8;
                arrayList.add(new AnonymousClass75(Game.lang.get("ListOfUnits"), Game_Calendar.IMG_MANPOWER, i9, height81118, i41114, i41115, ImageManager.getImage(Images.advantages).getWidth() + (CFG.PADDING * 4), 0, 0L));
                int height81119 = height81118 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                arrayList.add(new AnonymousClass76(Game.lang.get("ListOfBuildings"), Images.buildings, i9, height81119, i41114, i41115, ImageManager.getImage(Images.advantages).getWidth() + (CFG.PADDING * 4), 0, 0L));
                height3 = height81119 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            int i41116 = height3 + CFG.PADDING;
            int i41117 = CFG.GAME_HEIGHT - height2;
            if (Game.menuManager.getInGame()) {
                height = CFG.GAME_HEIGHT - Game.menuManager.getInGame_MapModesPosY();
            } else {
                height = ImageManager.getImage(Images.buttonPlay).getHeight();
            }
            int iMin4 = Math.min(i41116, i41117 - (height + (CFG.PADDING * 3)));
            i6 = i;
            arrayList.add(new Empty(0, 0, i6, Math.max(i41116, iMin4)));
            AnonymousClass77 anonymousClass710 = new AnonymousClass77(Game.lang.get("Encyclopedia"), false, false, Images.title500);
            if (Game.menuManager.getInGame()) {
                i7 = (CFG.GAME_WIDTH - i6) - (CFG.PADDING * 2);
            } else {
                i7 = CFG.PADDING * 2;
            }
            initMenu(anonymousClass710, i7, height2, i6, iMin4, arrayList, false, true);
            this.drawScrollPositionAlways = false;
        }
        str = lowerCase;
        str2 = str;
        arrayList.add(new AnonymousClass4(Game.lang.get("Manpower"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, width2 - (Images.boxTitleBORDERWIDTH * 2), i11));
        int height97 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i51 = width2 - (i9 * 2);
        arrayList.add(new AnonymousClass5(Game.lang.get("Manpower"), Game_Calendar.IMG_MANPOWER, i9, height97, i51, i12, width3, CFG.FONT_BOLD));
        int height98 = height97 + arrayList.get(arrayList.size() - 1).getHeight();
        arrayList.add(new Text_Desc(Game.lang.get("Manpower0"), i9, height98, i51));
        int height99 = height98 + arrayList.get(arrayList.size() - 1).getHeight();
        arrayList.add(new Text_Desc(Game.lang.get("Manpower1"), i9, height99, i51));
        int height100 = height99 + arrayList.get(arrayList.size() - 1).getHeight();
        arrayList.add(new Text_Desc(Game.lang.get("Manpower2"), i9, height100, i51));
        int height101 = height100 + arrayList.get(arrayList.size() - 1).getHeight();
        arrayList.add(new Text_Desc(Game.lang.get("Manpower3"), i9, height101, i51));
        int height102 = height101 + arrayList.get(arrayList.size() - 1).getHeight();
        arrayList.add(new Text_Desc(Game.lang.get("Manpower") + ": 0% -> 100%: " + Game.lang.get("MonthsX", (int) GameValues.manpower.MANPOWER_FULL_RECOVERY_MONTHS), i9, height102, i51));
        height3 = height102 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        if (z2 == 0) {
            str3 = str2;
            if (searchTexts(str3, new String[]{"ReinforceArmyCost", "ReinforceCostEncy"})) {
            }
            if (z2 == 0) {
                int i1120 = width2 - (i9 * 2);
                arrayList.add(new AnonymousClass6(Game.lang.get(nEtnPpUF.EgBSfDNNNmAun), Images.provinces, i9, height3, i1120, i12, width3, CFG.FONT_BOLD));
                int height1112 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("ProvinceContribution0"), i9, height1112, i1120));
                height3 = height1112 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i1121 = width2 - (i9 * 2);
                arrayList.add(new AnonymousClass6(Game.lang.get(nEtnPpUF.EgBSfDNNNmAun), Images.provinces, i9, height3, i1121, i12, width3, CFG.FONT_BOLD));
                int height1113 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("ProvinceContribution0"), i9, height1113, i1121));
                height3 = height1113 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                int i1122 = width2 - (i9 * 2);
                arrayList.add(new AnonymousClass7(Game.lang.get("IncreasingMaximumManpower"), Game_Calendar.IMG_MANPOWER, i9, height3, i1122, i12, width3, CFG.FONT_BOLD));
                int height1114 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass8(Game.lang.get(SwmJtrccN.OIEbNGSeBmAe), i9, height1114, i1122));
                int height1115 = height1114 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass9(Game.lang.get("IncreasingMaximumManpower1"), i9, height1115, i1122));
                int height1116 = height1115 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass10(Game.lang.get("TipForBestResultsIncreaseManpowerInProvincesWithHighestGrowthRateOfPopulation"), i9, height1116, i1122));
                height3 = height1116 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i1123 = width2 - (i9 * 2);
                arrayList.add(new AnonymousClass7(Game.lang.get("IncreasingMaximumManpower"), Game_Calendar.IMG_MANPOWER, i9, height3, i1123, i12, width3, CFG.FONT_BOLD));
                int height1117 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass8(Game.lang.get(SwmJtrccN.OIEbNGSeBmAe), i9, height1117, i1123));
                int height1118 = height1117 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass9(Game.lang.get("IncreasingMaximumManpower1"), i9, height1118, i1123));
                int height1119 = height1118 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass10(Game.lang.get("TipForBestResultsIncreaseManpowerInProvincesWithHighestGrowthRateOfPopulation"), i9, height1119, i1123));
                height3 = height1119 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                arrayList.add(new AnonymousClass11(Game.lang.get("RegimentsLimit"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, width2 - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height11110 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i122 = width2 - (i9 * 2);
                arrayList.add(new AnonymousClass12(Game.lang.get("RegimentsLimit"), Images.regimentsLimit, i9, height11110, i122, i12, width3, CFG.FONT_BOLD));
                int height11111 = height11110 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("RegimnetsLimit0"), i9, height11111, i122));
                int height124 = height11111 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(" = " + Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENTS_LIMIT_BASE_VALUE + " + " + Game.lang.get("LocalManpower") + " * " + CFG.getPrecision2(GameValues.army.REGIMENTS_LIMIT_MANPOWER_LEVEL, 100) + " + " + Game.lang.get("CivilizationBonuses"), i9, height124, i122));
                int height125 = height124 + arrayList.get(arrayList.size() - 1).getHeight();
                str4 = r15;
                arrayList.add(new Text_Desc(Game.lang.get("WhenTheMaximumRegimentLimitIsReachedArmyRecruitmentCostIncreasesBy") + str4 + CFG.getPrecision2(GameValues.army.REGIMENTS_LIMIT_RECRUIT_COST_OVER * 100.0f, 10) + "%", i9, height125, i122));
                int height2216 = height125 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("Regiments3"), i9, height2216, i122));
                int height2217 = height2216 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("Regiments") + " > " + Game.lang.get("RegimentsLimit") + " = " + Game.lang.get("ArmyMaintenance") + " * (" + Game.lang.get("Regiments") + " / " + Game.lang.get("RegimentsLimit") + ")%", i9, height2217, i122));
                height3 = height2217 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                arrayList.add(new AnonymousClass11(Game.lang.get("RegimentsLimit"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, width2 - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height11112 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i123 = width2 - (i9 * 2);
                arrayList.add(new AnonymousClass12(Game.lang.get("RegimentsLimit"), Images.regimentsLimit, i9, height11112, i123, i12, width3, CFG.FONT_BOLD));
                int height11113 = height11112 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("RegimnetsLimit0"), i9, height11113, i123));
                int height126 = height11113 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(" = " + Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENTS_LIMIT_BASE_VALUE + " + " + Game.lang.get("LocalManpower") + " * " + CFG.getPrecision2(GameValues.army.REGIMENTS_LIMIT_MANPOWER_LEVEL, 100) + " + " + Game.lang.get("CivilizationBonuses"), i9, height126, i123));
                int height127 = height126 + arrayList.get(arrayList.size() - 1).getHeight();
                str4 = r15;
                arrayList.add(new Text_Desc(Game.lang.get("WhenTheMaximumRegimentLimitIsReachedArmyRecruitmentCostIncreasesBy") + str4 + CFG.getPrecision2(GameValues.army.REGIMENTS_LIMIT_RECRUIT_COST_OVER * 100.0f, 10) + "%", i9, height127, i123));
                int height2218 = height127 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("Regiments3"), i9, height2218, i123));
                int height2219 = height2218 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("Regiments") + " > " + Game.lang.get("RegimentsLimit") + " = " + Game.lang.get("ArmyMaintenance") + " * (" + Game.lang.get("Regiments") + " / " + Game.lang.get("RegimentsLimit") + ")%", i9, height2219, i123));
                height3 = height2219 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                str5 = str3;
                if (searchTexts(str5, new String[]{"Battles", "DeploymentPhase", "DeploymentPhase0", "DeploymentPhase1", "DeploymentPhase2"})) {
                    i = width2;
                }
                if (z2 == 0) {
                    int i11112 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass18(Game.lang.get("RoleOfGenerals"), Images.general, i9, height3, i11112, i12, width3, CFG.FONT_BOLD));
                    int height211116 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass19(Game.lang.get("RoleOfGenerals0"), i9, height211116, i11112));
                    int height211117 = height211116 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass20(Game.lang.get("RoleOfGenerals1"), i9, height211117, i11112));
                    height3 = height211117 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    int i11113 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass18(Game.lang.get("RoleOfGenerals"), Images.general, i9, height3, i11113, i12, width3, CFG.FONT_BOLD));
                    int height211118 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass19(Game.lang.get("RoleOfGenerals0"), i9, height211118, i11113));
                    int height211119 = height211118 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass20(Game.lang.get("RoleOfGenerals1"), i9, height211119, i11113));
                    height3 = height211119 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    int i11114 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass21(Game.lang.get("Generals") + str4 + Game.lang.get("CombatExperience"), Images.general, i9, height3, i11114, i12, width3, CFG.FONT_BOLD));
                    int height211120 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("CombatExperienceDesc"), i9, height211120, i11114));
                    height3 = height211120 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    int i11115 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass21(Game.lang.get("Generals") + str4 + Game.lang.get("CombatExperience"), Images.general, i9, height3, i11115, i12, width3, CFG.FONT_BOLD));
                    int height211121 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("CombatExperienceDesc"), i9, height211121, i11115));
                    height3 = height211121 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    int i11116 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass22(Game.lang.get("BattlePhase"), Images.battle, i9, height3, i11116, i12, width3, CFG.FONT_BOLD));
                    int height2111110 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass23(Game.lang.get("BattlePhase0"), i9, height2111110, i11116));
                    int height2111111 = height2111110 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass24(Game.lang.get("BattlePhase1"), i9, height2111111, i11116));
                    int height2111112 = height2111111 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass25(Game.lang.get("BattlePhase2"), i9, height2111112, i11116));
                    height3 = height2111112 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    int i11117 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass22(Game.lang.get("BattlePhase"), Images.battle, i9, height3, i11117, i12, width3, CFG.FONT_BOLD));
                    int height2111113 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass23(Game.lang.get("BattlePhase0"), i9, height2111113, i11117));
                    int height2111114 = height2111113 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass24(Game.lang.get("BattlePhase1"), i9, height2111114, i11117));
                    int height2111115 = height2111114 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass25(Game.lang.get("BattlePhase2"), i9, height2111115, i11117));
                    height3 = height2111115 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    int i211110 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass26(Game.lang.get("MoraleAndRetreatMechanics"), Images.morale, i9, height3, i211110, i12, width3, CFG.FONT_BOLD));
                    int height22110 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass27(Game.lang.get("MoraleAndRetreatMechanics0"), i9, height22110, i211110));
                    int height22111 = height22110 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass28(Game.lang.get("MoraleAndRetreatMechanics1"), i9, height22111, i211110));
                    height3 = height22111 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    int i211111 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass26(Game.lang.get("MoraleAndRetreatMechanics"), Images.morale, i9, height3, i211111, i12, width3, CFG.FONT_BOLD));
                    int height22112 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass27(Game.lang.get("MoraleAndRetreatMechanics0"), i9, height22112, i211111));
                    int height22113 = height22112 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass28(Game.lang.get("MoraleAndRetreatMechanics1"), i9, height22113, i211111));
                    height3 = height22113 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    int i211112 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass29(Game.lang.get("Discipline"), Images.discipline, i9, height3, i211112, i12, width3, CFG.FONT_BOLD));
                    int height31124 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass30(Game.lang.get("DisciplineSignifiesOrganizationAndCoordinationOfTheArmyInBattleIncreasingUnitsAttack"), i9, height31124, i211112));
                    height3 = height31124 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    int i211113 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass29(Game.lang.get("Discipline"), Images.discipline, i9, height3, i211113, i12, width3, CFG.FONT_BOLD));
                    int height31125 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass30(Game.lang.get("DisciplineSignifiesOrganizationAndCoordinationOfTheArmyInBattleIncreasingUnitsAttack"), i9, height31125, i211113));
                    height3 = height31125 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    int i211114 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass31(Game.lang.get("DestructionOrSurvival"), Images.skull, i9, height3, i211114, i12, width3, CFG.FONT_BOLD));
                    int height31126 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("DestructionOrSurvival0", GameValues.battle.BATTLE_ARMY_DESTROYED_ROUND_ID), i9, height31126, i211114));
                    height3 = height31126 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    int i211115 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass31(Game.lang.get("DestructionOrSurvival"), Images.skull, i9, height3, i211115, i12, width3, CFG.FONT_BOLD));
                    int height31127 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("DestructionOrSurvival0", GameValues.battle.BATTLE_ARMY_DESTROYED_ROUND_ID), i9, height31127, i211115));
                    height3 = height31127 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    arrayList.add(new Text_Title_v2(Game.lang.get("Wars"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height3111114 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i211116 = i - (i9 * 2);
                    arrayList.add(new ButtonStatsRectIMG(Game.lang.get("War"), Images.war, i9, height3111114, i211116, i12, width3, CFG.FONT_BOLD));
                    int height3111115 = height3111114 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("ToDeclareWarTheRelationsBetweenCivilizationsMustBeBelowX", GameValues.war.RELATIONS_TO_DECLARE_WAR), i9, height3111115, i211116));
                    int height3111116 = height3111115 + arrayList.get(arrayList.size() - 1).getHeight();
                    str6 = r2;
                    arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanProposeAWhitePeace", CFG.getPrecision2(GameValues.peace.WAR_WHITE_PEACE_MIN_WAR_SCORE, 100) + str6), i9, height3111116, i211116));
                    int height3111117 = height3111116 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanMakeDemands", CFG.getPrecision2(GameValues.peace.WAR_MAKE_DEMANDS_MIN_WAR_SCORE, 100) + str6), i9, height3111117, i211116));
                    int height3111118 = height3111117 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("EachMonthTheWinningSideGainsXOfTheTickingWarScoreBasedOnTheCurrentOverallWarScoreFromBattlesAndOccupiedProvinces", "X"), i9, height3111118, i211116));
                    int height3111119 = height3111118 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("AWhitePeaceWillBeAutomaticallySignedIfThereIsNoActivityForACertainPeriodAndTheWarscoreRemainsLow"), i9, height3111119, i211116));
                    height3 = height3111119 + arrayList.get(arrayList.size() - 1).getHeight();
                } else {
                    arrayList.add(new Text_Title_v2(Game.lang.get("Wars"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height31111110 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i211117 = i - (i9 * 2);
                    arrayList.add(new ButtonStatsRectIMG(Game.lang.get("War"), Images.war, i9, height31111110, i211117, i12, width3, CFG.FONT_BOLD));
                    int height31111111 = height31111110 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("ToDeclareWarTheRelationsBetweenCivilizationsMustBeBelowX", GameValues.war.RELATIONS_TO_DECLARE_WAR), i9, height31111111, i211117));
                    int height31111112 = height31111111 + arrayList.get(arrayList.size() - 1).getHeight();
                    str6 = r2;
                    arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanProposeAWhitePeace", CFG.getPrecision2(GameValues.peace.WAR_WHITE_PEACE_MIN_WAR_SCORE, 100) + str6), i9, height31111112, i211117));
                    int height31111113 = height31111112 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanMakeDemands", CFG.getPrecision2(GameValues.peace.WAR_MAKE_DEMANDS_MIN_WAR_SCORE, 100) + str6), i9, height31111113, i211117));
                    int height31111114 = height31111113 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("EachMonthTheWinningSideGainsXOfTheTickingWarScoreBasedOnTheCurrentOverallWarScoreFromBattlesAndOccupiedProvinces", "X"), i9, height31111114, i211117));
                    int height31111115 = height31111114 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("AWhitePeaceWillBeAutomaticallySignedIfThereIsNoActivityForACertainPeriodAndTheWarscoreRemainsLow"), i9, height31111115, i211117));
                    height3 = height31111115 + arrayList.get(arrayList.size() - 1).getHeight();
                }
                if (z2 == 0) {
                    arrayList.add(new Text_Title_v2(Game.lang.get("PeaceNegotiations"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height3212 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i211118 = i - (i9 * 2);
                    String str14 = str6;
                    arrayList.add(new ButtonStatsRectIMG(Game.lang.get(IlLkpaQxs.oPWPOdnXwgko), Images.peace, i9, height3212, i211118, i12, width3, CFG.FONT_BOLD));
                    int height3213 = height3212 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanMakeDemands", CFG.getPrecision2(GameValues.peace.WAR_MAKE_DEMANDS_MIN_WAR_SCORE, 100) + str14), i9, height3213, i211118));
                    int height4111110 = height3213 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanProposeAWhitePeace", CFG.getPrecision2(GameValues.peace.WAR_WHITE_PEACE_MIN_WAR_SCORE, 100) + str14), i9, height4111110, i211118));
                    int height4111111 = height4111110 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get(CvuNnwgYwe.uDQbjWBjKa), i9, height4111111, i211118));
                    int height41122 = height4111111 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("PeaceAnnex"), i9, height41122, i211118));
                    height3 = height41122 + arrayList.get(arrayList.size() - 1).getHeight();
                } else {
                    arrayList.add(new Text_Title_v2(Game.lang.get("PeaceNegotiations"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height3214 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i211119 = i - (i9 * 2);
                    String str15 = str6;
                    arrayList.add(new ButtonStatsRectIMG(Game.lang.get(IlLkpaQxs.oPWPOdnXwgko), Images.peace, i9, height3214, i211119, i12, width3, CFG.FONT_BOLD));
                    int height3215 = height3214 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanMakeDemands", CFG.getPrecision2(GameValues.peace.WAR_MAKE_DEMANDS_MIN_WAR_SCORE, 100) + str15), i9, height3215, i211119));
                    int height4111112 = height3215 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanProposeAWhitePeace", CFG.getPrecision2(GameValues.peace.WAR_WHITE_PEACE_MIN_WAR_SCORE, 100) + str15), i9, height4111112, i211119));
                    int height4111113 = height4111112 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get(CvuNnwgYwe.uDQbjWBjKa), i9, height4111113, i211119));
                    int height41123 = height4111113 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("PeaceAnnex"), i9, height41123, i211119));
                    height3 = height41123 + arrayList.get(arrayList.size() - 1).getHeight();
                }
                if (z2 == 0) {
                    arrayList.add(new AnonymousClass32(Game.lang.get("Siege"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height4111114 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i221110 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass33(Game.lang.get("SiegeProgress"), Images.siege, i9, height4111114, i221110, i12, width3, CFG.FONT_BOLD));
                    int height4111115 = height4111114 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass34(Game.lang.get("DailySiegeProgressIsTheSumOfTheSiegeAbilitiesOfAllUnitsInvolvedInTheSiege"), i9, height4111115, i221110));
                    int height4111116 = height4111115 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass35(Game.lang.get("TheSiegeEndsWhenTheProgressReachesTheProvincesDefense"), i9, height4111116, i221110));
                    int height4111117 = height4111116 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass36(Game.lang.get("AfterASuccessfulSiegeAllNeighboringProvincesWithoutDefensiveBuildingsWillBeOccupied"), i9, height4111117, i221110));
                    int height4218 = height4111117 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    arrayList.add(new Text_Desc(Game.lang.get("MinimumArmyRequiredToSiegeProvinceX", CFG.getPrecision2(GameValues.siege.SIEGE_REGIMENTS_MIN * Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE, 1)), i9, height4218, i221110));
                    height3 = height4218 + arrayList.get(arrayList.size() - 1).getHeight();
                } else {
                    arrayList.add(new AnonymousClass32(Game.lang.get("Siege"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height4111118 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i221111 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass33(Game.lang.get("SiegeProgress"), Images.siege, i9, height4111118, i221111, i12, width3, CFG.FONT_BOLD));
                    int height4111119 = height4111118 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass34(Game.lang.get("DailySiegeProgressIsTheSumOfTheSiegeAbilitiesOfAllUnitsInvolvedInTheSiege"), i9, height4111119, i221111));
                    int height41111110 = height4111119 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass35(Game.lang.get("TheSiegeEndsWhenTheProgressReachesTheProvincesDefense"), i9, height41111110, i221111));
                    int height41111111 = height41111110 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass36(Game.lang.get("AfterASuccessfulSiegeAllNeighboringProvincesWithoutDefensiveBuildingsWillBeOccupied"), i9, height41111111, i221111));
                    int height4219 = height41111111 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    arrayList.add(new Text_Desc(Game.lang.get("MinimumArmyRequiredToSiegeProvinceX", CFG.getPrecision2(GameValues.siege.SIEGE_REGIMENTS_MIN * Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE, 1)), i9, height4219, i221111));
                    height3 = height4219 + arrayList.get(arrayList.size() - 1).getHeight();
                }
                if (z2 == 0) {
                    arrayList.add(new AnonymousClass37(Game.lang.get("Fogofwar"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height42110 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i221112 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass38(Game.lang.get("Fogofwar"), Images.provinces, i9, height42110, i221112, i12, width3, CFG.FONT_BOLD));
                    int height42111 = height42110 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("FogOfWarYouCanOnlyObserveActionsInYourOwnProvincesThoseOfYourAlliesAndSubjectsDirectlyBorderingProvincesAndWhatYourTroopsUncover"), i9, height42111, i221112));
                    height3 = height42111 + arrayList.get(arrayList.size() - 1).getHeight();
                } else {
                    arrayList.add(new AnonymousClass37(Game.lang.get("Fogofwar"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height42112 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i221113 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass38(Game.lang.get("Fogofwar"), Images.provinces, i9, height42112, i221113, i12, width3, CFG.FONT_BOLD));
                    int height42113 = height42112 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("FogOfWarYouCanOnlyObserveActionsInYourOwnProvincesThoseOfYourAlliesAndSubjectsDirectlyBorderingProvincesAndWhatYourTroopsUncover"), i9, height42113, i221113));
                    height3 = height42113 + arrayList.get(arrayList.size() - 1).getHeight();
                }
                if (z2 == 0) {
                    arrayList.add(new Text_Title_v2(Game.lang.get("WarWeariness"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height511110 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i221114 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass39(Game.lang.get("WarWeariness"), Images.weariness, i9, height511110, i221114, i12, width3, CFG.FONT_BOLD));
                    int height511111 = height511110 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("WarWearinessH1"), i9, height511111, i221114));
                    int height511112 = height511111 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("WarWearinessH2"), i9, height511112, i221114));
                    height3 = height511112 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    arrayList.add(new Text_Title_v2(Game.lang.get("WarWeariness"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height511113 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i221115 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass39(Game.lang.get("WarWeariness"), Images.weariness, i9, height511113, i221115, i12, width3, CFG.FONT_BOLD));
                    int height511114 = height511113 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("WarWearinessH1"), i9, height511114, i221115));
                    int height511115 = height511114 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("WarWearinessH2"), i9, height511115, i221115));
                    height3 = height511115 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    arrayList.add(new Text_Title_v2(Game.lang.get("Diplomacy"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height511116 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i221116 = i - (i9 * 2);
                    arrayList.add(new ButtonStatsRectIMG(Game.lang.get("Diplomacy"), Images.diplomacy, i9, height511116, i221116, i12, width3, CFG.FONT_BOLD));
                    int height511117 = height511116 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("DifferentGovReligion"), i9, height511117, i221116));
                    height3 = height511117 + arrayList.get(arrayList.size() - 1).getHeight();
                } else {
                    arrayList.add(new Text_Title_v2(Game.lang.get("Diplomacy"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height511118 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i221117 = i - (i9 * 2);
                    arrayList.add(new ButtonStatsRectIMG(Game.lang.get("Diplomacy"), Images.diplomacy, i9, height511118, i221117, i12, width3, CFG.FONT_BOLD));
                    int height511119 = height511118 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("DifferentGovReligion"), i9, height511119, i221117));
                    height3 = height511119 + arrayList.get(arrayList.size() - 1).getHeight();
                }
                if (z2 == 0) {
                    arrayList.add(new AnonymousClass40(Game.lang.get("CivilizationStability"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height521110 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i221118 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass41(Game.lang.get("CivilizationStability"), Images.civStability, i9, height521110, i221118, i12, width3, CFG.FONT_BOLD));
                    int height521111 = height521110 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass42(Game.lang.get("CivilizationStabilityReflectsThePercentageOfYourProvincesWithLegitimateClaimsComparedToThoseWithoutAndTakesIntoAccountYourReligiousUnity"), i9, height521111, i221118));
                    height3 = height521111 + arrayList.get(arrayList.size() - 1).getHeight();
                } else {
                    arrayList.add(new AnonymousClass40(Game.lang.get("CivilizationStability"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height521112 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i221119 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass41(Game.lang.get("CivilizationStability"), Images.civStability, i9, height521112, i221119, i12, width3, CFG.FONT_BOLD));
                    int height521113 = height521112 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass42(Game.lang.get("CivilizationStabilityReflectsThePercentageOfYourProvincesWithLegitimateClaimsComparedToThoseWithoutAndTakesIntoAccountYourReligiousUnity"), i9, height521113, i221119));
                    height3 = height521113 + arrayList.get(arrayList.size() - 1).getHeight();
                }
                if (z2 == 0) {
                    arrayList.add(new AnonymousClass43(Game.lang.get("Province"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height521114 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i311110 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass44(Game.lang.get("ProvinceMonthlyIncome"), Images.gold, i9, height521114, i311110, i12, width3, CFG.FONT_BOLD));
                    int height521115 = height521114 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass45(Game.lang.get("Income0"), i9, height521115, i311110));
                    int height521116 = height521115 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass46(Game.lang.get("Income1"), i9, height521116, i311110));
                    height3 = height521116 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    arrayList.add(new AnonymousClass43(Game.lang.get("Province"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height521117 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i311111 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass44(Game.lang.get("ProvinceMonthlyIncome"), Images.gold, i9, height521117, i311111, i12, width3, CFG.FONT_BOLD));
                    int height521118 = height521117 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass45(Game.lang.get("Income0"), i9, height521118, i311111));
                    int height521119 = height521118 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass46(Game.lang.get("Income1"), i9, height521119, i311111));
                    height3 = height521119 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    int i311112 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass47(Game.lang.get("TaxEfficiency"), Images.tax, i9, height3, i311112, i12, width3, CFG.FONT_BOLD));
                    int height611116 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass48(Game.lang.get("TaxEfficiency0"), i9, height611116, i311112));
                    height3 = height611116 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    int i311113 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass47(Game.lang.get("TaxEfficiency"), Images.tax, i9, height3, i311113, i12, width3, CFG.FONT_BOLD));
                    int height611117 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass48(Game.lang.get("TaxEfficiency0"), i9, height611117, i311113));
                    height3 = height611117 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    int i311114 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass49(Game.lang.get("EconomyOfProvince"), Game_Calendar.IMG_ECONOMY, i9, height3, i311114, i12, width3, CFG.FONT_BOLD));
                    int height611118 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass50(Game.lang.get("Economy0"), i9, height611118, i311114));
                    int height611119 = height611118 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass51(Game.lang.get("Economy1"), i9, height611119, i311114));
                    height3 = height611119 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    int i311115 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass49(Game.lang.get("EconomyOfProvince"), Game_Calendar.IMG_ECONOMY, i9, height3, i311115, i12, width3, CFG.FONT_BOLD));
                    int height6111110 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass50(Game.lang.get("Economy0"), i9, height6111110, i311115));
                    int height6111111 = height6111110 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass51(Game.lang.get("Economy1"), i9, height6111111, i311115));
                    height3 = height6111111 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    int i311116 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass52(Game.lang.get("ProducedGoods"), Images.goods, i9, height3, i311116, i12, width3, CFG.FONT_BOLD));
                    int height6111112 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass53(Game.lang.get("Production0"), i9, height6111112, i311116));
                    int height6111113 = height6111112 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass54(Game.lang.get("Production1"), i9, height6111113, i311116));
                    int height6111114 = height6111113 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass55(Game.lang.get("Production2"), i9, height6111114, i311116));
                    height3 = height6111114 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    int i311117 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass52(Game.lang.get("ProducedGoods"), Images.goods, i9, height3, i311117, i12, width3, CFG.FONT_BOLD));
                    int height6111115 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass53(Game.lang.get("Production0"), i9, height6111115, i311117));
                    int height6111116 = height6111115 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass54(Game.lang.get("Production1"), i9, height6111116, i311117));
                    int height6111117 = height6111116 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass55(Game.lang.get("Production2"), i9, height6111117, i311117));
                    height3 = height6111117 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    int i311118 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass56(Game.lang.get("Population"), Images.population, i9, height3, i311118, i12, width3, CFG.FONT_BOLD));
                    int height62114 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass57(Game.lang.get("Population0"), i9, height62114, i311118));
                    int height62115 = height62114 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass58(Game.lang.get("ThePopulationWillSlowlyAssimilateIfTheCivilizationHasACore"), i9, height62115, i311118));
                    height3 = height62115 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    int i311119 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass56(Game.lang.get("Population"), Images.population, i9, height3, i311119, i12, width3, CFG.FONT_BOLD));
                    int height62116 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass57(Game.lang.get("Population0"), i9, height62116, i311119));
                    int height62117 = height62116 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass58(Game.lang.get("ThePopulationWillSlowlyAssimilateIfTheCivilizationHasACore"), i9, height62117, i311119));
                    height3 = height62117 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    int i321110 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass59(Game.lang.get("GrowthRate"), Images.populationGrowth, i9, height3, i321110, i12, width3, CFG.FONT_BOLD));
                    int height62118 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass60(Game.lang.get("GrowthRate0"), i9, height62118, i321110));
                    height3 = height62118 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    int i321111 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass59(Game.lang.get("GrowthRate"), Images.populationGrowth, i9, height3, i321111, i12, width3, CFG.FONT_BOLD));
                    int height62119 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass60(Game.lang.get("GrowthRate0"), i9, height62119, i321111));
                    height3 = height62119 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    int i321112 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass61(Game.lang.get("Diseases"), Images.disease, i9, height3, i321112, i12, width3, CFG.FONT_BOLD));
                    int height621110 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass62(Game.lang.get("Plague0"), i9, height621110, i321112));
                    int height711110 = height621110 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("Plague1"), i9, height711110, i321112));
                    height3 = height711110 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    int i321113 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass61(Game.lang.get("Diseases"), Images.disease, i9, height3, i321113, i12, width3, CFG.FONT_BOLD));
                    int height621111 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass62(Game.lang.get("Plague0"), i9, height621111, i321113));
                    int height711111 = height621111 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("Plague1"), i9, height711111, i321113));
                    height3 = height711111 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    arrayList.add(new AnonymousClass63(Game.lang.get("LegacyPoints"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height711112 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i321114 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass64(Game.lang.get("Legacy"), Images.legacy, i9, height711112, i321114, i12, width3, CFG.FONT_BOLD));
                    int height711113 = height711112 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("Legacy0"), i9, height711113, i321114));
                    int height711114 = height711113 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass65(Game.lang.get("Legacy1"), i9, height711114, i321114));
                    int height711115 = height711114 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("Legacy2"), i9, height711115, i321114));
                    height3 = height711115 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    arrayList.add(new AnonymousClass63(Game.lang.get("LegacyPoints"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height711116 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i321115 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass64(Game.lang.get("Legacy"), Images.legacy, i9, height711116, i321115, i12, width3, CFG.FONT_BOLD));
                    int height711117 = height711116 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("Legacy0"), i9, height711117, i321115));
                    int height711118 = height711117 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass65(Game.lang.get("Legacy1"), i9, height711118, i321115));
                    int height711119 = height711118 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("Legacy2"), i9, height711119, i321115));
                    height3 = height711119 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    arrayList.add(new AnonymousClass66(Game.lang.get(GameValues.court.COUNCIL_NAME), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height721110 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i321116 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass67(Game.lang.get("Advisors"), Images.council, i9, height721110, i321116, i12, width3, CFG.FONT_BOLD));
                    int height721111 = height721110 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass68(Game.lang.get(gpVDKipRURuzw.fPT), i9, height721111, i321116));
                    height3 = height721111 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    arrayList.add(new AnonymousClass66(Game.lang.get(GameValues.court.COUNCIL_NAME), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height721112 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i321117 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass67(Game.lang.get("Advisors"), Images.council, i9, height721112, i321117, i12, width3, CFG.FONT_BOLD));
                    int height721113 = height721112 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass68(Game.lang.get(gpVDKipRURuzw.fPT), i9, height721113, i321117));
                    height3 = height721113 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    arrayList.add(new AnonymousClass69(Game.lang.get("Corruption"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height721114 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i321118 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass70(Game.lang.get("SupremeCourt"), Images.corruption, i9, height721114, i321118, i12, width3, CFG.FONT_BOLD));
                    int height721115 = height721114 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("Corruption0"), i9, height721115, i321118));
                    height3 = height721115 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    arrayList.add(new AnonymousClass69(Game.lang.get("Corruption"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height721116 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i321119 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass70(Game.lang.get("SupremeCourt"), Images.corruption, i9, height721116, i321119, i12, width3, CFG.FONT_BOLD));
                    int height721117 = height721116 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("Corruption0"), i9, height721117, i321119));
                    height3 = height721117 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    arrayList.add(new AnonymousClass71(Game.lang.get("Technologies"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height721118 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i41118 = i - (i9 * 2);
                    arrayList.add(new ButtonStatsRectIMG(Game.lang.get("Research"), Game_Calendar.IMG_TECHNOLOGY, i9, height721118, i41118, i12, width3, CFG.FONT_BOLD));
                    int height811110 = height721118 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get(XjthpFh.rtD), i9, height811110, i41118));
                    int height811111 = height811110 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass72(Game.lang.get("Technology1"), i9, height811111, i41118));
                    height3 = height811111 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    arrayList.add(new AnonymousClass71(Game.lang.get("Technologies"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height721119 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i41119 = i - (i9 * 2);
                    arrayList.add(new ButtonStatsRectIMG(Game.lang.get("Research"), Game_Calendar.IMG_TECHNOLOGY, i9, height721119, i41119, i12, width3, CFG.FONT_BOLD));
                    int height811112 = height721119 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get(XjthpFh.rtD), i9, height811112, i41119));
                    int height811113 = height811112 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass72(Game.lang.get("Technology1"), i9, height811113, i41119));
                    height3 = height811113 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2 == 0) {
                    int i411110 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass73(Game.lang.get("CivilizationAdvantages"), Images.advantages, i9, height3, i411110, i12, width3, CFG.FONT_BOLD));
                    int height811114 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("EachTimeYouUnlockATechnologyYouWillGainOneAdvantagePointThatYouCanExchangeForABonus"), i9, height811114, i411110));
                    height3 = height811114 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    int i411111 = i - (i9 * 2);
                    arrayList.add(new AnonymousClass73(Game.lang.get("CivilizationAdvantages"), Images.advantages, i9, height3, i411111, i12, width3, CFG.FONT_BOLD));
                    int height811115 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new Text_Desc(Game.lang.get("EachTimeYouUnlockATechnologyYouWillGainOneAdvantagePointThatYouCanExchangeForABonus"), i9, height811115, i411111));
                    height3 = height811115 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                if (z2) {
                    arrayList.add(new Text_Title_v2(Game.lang.get("CivilizationRank"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height811116 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i411112 = i - (i9 * 2);
                    arrayList.add(new ButtonStatsRectIMG(Game.lang.get("CivilizationRank"), CivilizationRanking.getCivilizationRank_IMG(Game.getCiv(Game.player.iCivID).iCivRankID), i9, height811116, i411112, i12, width3, CFG.FONT_BOLD));
                    height3 = height811116 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    width = ImageManager.getImage(Images.council).getWidth() + (CFG.PADDING * 2);
                    i2 = (i411112 - CFG.PADDING) / 2;
                    i3 = 0;
                    while (i3 < GameValues.civRank.CIV_RANK_MANPOWER_MAX.length) {
                        if (i3 % 2 == 0) {
                            i5 = i9;
                        } else {
                            i5 = CFG.PADDING + i9 + i2;
                        }
                        arrayList.add(new AnonymousClass74(CivilizationRanking.getCivilizationRank_Name(i3), CivilizationRanking.getCivilizationRank_IMG(i3), i5, height3, i2, CFG.BUTTON_HEIGHT3, width));
                        arrayList.get(arrayList.size() - 1).setCurrent(i3);
                        i3++;
                        if (i3 % 2 == 0) {
                            height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                        }
                    }
                    size = arrayList.size();
                    while (i4 < size) {
                        if (height3 < arrayList.get(i4).getPosY() + arrayList.get(i4).getHeight() + CFG.PADDING) {
                            height3 = arrayList.get(i4).getPosY() + arrayList.get(i4).getHeight() + CFG.PADDING;
                        }
                    }
                } else {
                    arrayList.add(new Text_Title_v2(Game.lang.get("CivilizationRank"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height811117 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    int i411113 = i - (i9 * 2);
                    arrayList.add(new ButtonStatsRectIMG(Game.lang.get("CivilizationRank"), CivilizationRanking.getCivilizationRank_IMG(Game.getCiv(Game.player.iCivID).iCivRankID), i9, height811117, i411113, i12, width3, CFG.FONT_BOLD));
                    height3 = height811117 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    width = ImageManager.getImage(Images.council).getWidth() + (CFG.PADDING * 2);
                    i2 = (i411113 - CFG.PADDING) / 2;
                    i3 = 0;
                    while (i3 < GameValues.civRank.CIV_RANK_MANPOWER_MAX.length) {
                        if (i3 % 2 == 0) {
                            i5 = i9;
                        } else {
                            i5 = CFG.PADDING + i9 + i2;
                        }
                        arrayList.add(new AnonymousClass74(CivilizationRanking.getCivilizationRank_Name(i3), CivilizationRanking.getCivilizationRank_IMG(i3), i5, height3, i2, CFG.BUTTON_HEIGHT3, width));
                        arrayList.get(arrayList.size() - 1).setCurrent(i3);
                        i3++;
                        if (i3 % 2 == 0) {
                            height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                        }
                    }
                    size = arrayList.size();
                    while (i4 < size) {
                        if (height3 < arrayList.get(i4).getPosY() + arrayList.get(i4).getHeight() + CFG.PADDING) {
                            height3 = arrayList.get(i4).getPosY() + arrayList.get(i4).getHeight() + CFG.PADDING;
                        }
                    }
                }
                if (Game.menuManager.getInGame()) {
                    arrayList.add(new Text_Title_v2(Game.lang.get("More"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                    int height811118 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    if (CFG.isDesktop()) {
                        i8 = CFG.BUTTON_HEIGHT2;
                    } else {
                        i8 = CFG.BUTTON_HEIGHT;
                    }
                    int i411114 = i - (i9 * 2);
                    int i411115 = i8;
                    arrayList.add(new AnonymousClass75(Game.lang.get("ListOfUnits"), Game_Calendar.IMG_MANPOWER, i9, height811118, i411114, i411115, ImageManager.getImage(Images.advantages).getWidth() + (CFG.PADDING * 4), 0, 0L));
                    int height811119 = height811118 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    arrayList.add(new AnonymousClass76(Game.lang.get("ListOfBuildings"), Images.buildings, i9, height811119, i411114, i411115, ImageManager.getImage(Images.advantages).getWidth() + (CFG.PADDING * 4), 0, 0L));
                    height3 = height811119 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                int i411116 = height3 + CFG.PADDING;
                int i411117 = CFG.GAME_HEIGHT - height2;
                if (Game.menuManager.getInGame()) {
                    height = CFG.GAME_HEIGHT - Game.menuManager.getInGame_MapModesPosY();
                } else {
                    height = ImageManager.getImage(Images.buttonPlay).getHeight();
                }
                int iMin5 = Math.min(i411116, i411117 - (height + (CFG.PADDING * 3)));
                i6 = i;
                arrayList.add(new Empty(0, 0, i6, Math.max(i411116, iMin5)));
                AnonymousClass77 anonymousClass711 = new AnonymousClass77(Game.lang.get("Encyclopedia"), false, false, Images.title500);
                if (Game.menuManager.getInGame()) {
                    i7 = (CFG.GAME_WIDTH - i6) - (CFG.PADDING * 2);
                } else {
                    i7 = CFG.PADDING * 2;
                }
                initMenu(anonymousClass711, i7, height2, i6, iMin5, arrayList, false, true);
                this.drawScrollPositionAlways = false;
            }
            str5 = str3;
            arrayList.add(new AnonymousClass13(Game.lang.get("Battles"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, width2 - (Images.boxTitleBORDERWIDTH * 2), i11));
            int height824 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int i421 = width2 - (i9 * 2);
            arrayList.add(new AnonymousClass14(Game.lang.get("DeploymentPhase"), Game_Calendar.IMG_MANPOWER, i9, height824, i421, i12, width3, CFG.FONT_BOLD));
            int height825 = height824 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass15(Game.lang.get(CvuNnwgYwe.FxjCfEgvZCvYNc), i9, height825, i421));
            int height826 = height825 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass16(Game.lang.get("DeploymentPhase1"), i9, height826, i421));
            int height827 = height826 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int iMax4 = Math.max((ImageManager.getImage(Images.battleArmy0).getHeight() * 2) + (CFG.PADDING * 3), CFG.TEXT_HEIGHT + (CFG.PADDING * 6));
            i = width2;
            arrayList.add(InGame_RecruitArmy.getTitleFirstLine(height827, i, iMax4));
            int height910 = height827 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            arrayList.add(InGame_RecruitArmy.getTitleFirstLineSide(height910, i, iMax4));
            int height911 = height910 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            arrayList.add(InGame_RecruitArmy.getTitleSecondLine(height911, i, iMax4));
            int height912 = height911 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            arrayList.add(new AnonymousClass17(Game.lang.get("DeploymentPhase2"), i9, height912, i421));
            height3 = height912 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            if (z2 == 0) {
                int i11118 = i - (i9 * 2);
                arrayList.add(new AnonymousClass18(Game.lang.get("RoleOfGenerals"), Images.general, i9, height3, i11118, i12, width3, CFG.FONT_BOLD));
                int height2111116 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass19(Game.lang.get("RoleOfGenerals0"), i9, height2111116, i11118));
                int height2111117 = height2111116 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass20(Game.lang.get("RoleOfGenerals1"), i9, height2111117, i11118));
                height3 = height2111117 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i11119 = i - (i9 * 2);
                arrayList.add(new AnonymousClass18(Game.lang.get("RoleOfGenerals"), Images.general, i9, height3, i11119, i12, width3, CFG.FONT_BOLD));
                int height2111118 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass19(Game.lang.get("RoleOfGenerals0"), i9, height2111118, i11119));
                int height2111119 = height2111118 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass20(Game.lang.get("RoleOfGenerals1"), i9, height2111119, i11119));
                height3 = height2111119 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                int i111110 = i - (i9 * 2);
                arrayList.add(new AnonymousClass21(Game.lang.get("Generals") + str4 + Game.lang.get("CombatExperience"), Images.general, i9, height3, i111110, i12, width3, CFG.FONT_BOLD));
                int height211122 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("CombatExperienceDesc"), i9, height211122, i111110));
                height3 = height211122 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i111111 = i - (i9 * 2);
                arrayList.add(new AnonymousClass21(Game.lang.get("Generals") + str4 + Game.lang.get("CombatExperience"), Images.general, i9, height3, i111111, i12, width3, CFG.FONT_BOLD));
                int height211123 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("CombatExperienceDesc"), i9, height211123, i111111));
                height3 = height211123 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                int i111112 = i - (i9 * 2);
                arrayList.add(new AnonymousClass22(Game.lang.get("BattlePhase"), Images.battle, i9, height3, i111112, i12, width3, CFG.FONT_BOLD));
                int height21111110 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass23(Game.lang.get("BattlePhase0"), i9, height21111110, i111112));
                int height21111111 = height21111110 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass24(Game.lang.get("BattlePhase1"), i9, height21111111, i111112));
                int height21111112 = height21111111 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass25(Game.lang.get("BattlePhase2"), i9, height21111112, i111112));
                height3 = height21111112 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i111113 = i - (i9 * 2);
                arrayList.add(new AnonymousClass22(Game.lang.get("BattlePhase"), Images.battle, i9, height3, i111113, i12, width3, CFG.FONT_BOLD));
                int height21111113 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass23(Game.lang.get("BattlePhase0"), i9, height21111113, i111113));
                int height21111114 = height21111113 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass24(Game.lang.get("BattlePhase1"), i9, height21111114, i111113));
                int height21111115 = height21111114 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass25(Game.lang.get("BattlePhase2"), i9, height21111115, i111113));
                height3 = height21111115 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                int i2111110 = i - (i9 * 2);
                arrayList.add(new AnonymousClass26(Game.lang.get("MoraleAndRetreatMechanics"), Images.morale, i9, height3, i2111110, i12, width3, CFG.FONT_BOLD));
                int height22114 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass27(Game.lang.get("MoraleAndRetreatMechanics0"), i9, height22114, i2111110));
                int height22115 = height22114 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass28(Game.lang.get("MoraleAndRetreatMechanics1"), i9, height22115, i2111110));
                height3 = height22115 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i2111111 = i - (i9 * 2);
                arrayList.add(new AnonymousClass26(Game.lang.get("MoraleAndRetreatMechanics"), Images.morale, i9, height3, i2111111, i12, width3, CFG.FONT_BOLD));
                int height22116 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass27(Game.lang.get("MoraleAndRetreatMechanics0"), i9, height22116, i2111111));
                int height22117 = height22116 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass28(Game.lang.get("MoraleAndRetreatMechanics1"), i9, height22117, i2111111));
                height3 = height22117 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                int i2111112 = i - (i9 * 2);
                arrayList.add(new AnonymousClass29(Game.lang.get("Discipline"), Images.discipline, i9, height3, i2111112, i12, width3, CFG.FONT_BOLD));
                int height31128 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass30(Game.lang.get("DisciplineSignifiesOrganizationAndCoordinationOfTheArmyInBattleIncreasingUnitsAttack"), i9, height31128, i2111112));
                height3 = height31128 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i2111113 = i - (i9 * 2);
                arrayList.add(new AnonymousClass29(Game.lang.get("Discipline"), Images.discipline, i9, height3, i2111113, i12, width3, CFG.FONT_BOLD));
                int height31129 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass30(Game.lang.get("DisciplineSignifiesOrganizationAndCoordinationOfTheArmyInBattleIncreasingUnitsAttack"), i9, height31129, i2111113));
                height3 = height31129 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                int i2111114 = i - (i9 * 2);
                arrayList.add(new AnonymousClass31(Game.lang.get("DestructionOrSurvival"), Images.skull, i9, height3, i2111114, i12, width3, CFG.FONT_BOLD));
                int height311210 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("DestructionOrSurvival0", GameValues.battle.BATTLE_ARMY_DESTROYED_ROUND_ID), i9, height311210, i2111114));
                height3 = height311210 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i2111115 = i - (i9 * 2);
                arrayList.add(new AnonymousClass31(Game.lang.get("DestructionOrSurvival"), Images.skull, i9, height3, i2111115, i12, width3, CFG.FONT_BOLD));
                int height311211 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("DestructionOrSurvival0", GameValues.battle.BATTLE_ARMY_DESTROYED_ROUND_ID), i9, height311211, i2111115));
                height3 = height311211 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                arrayList.add(new Text_Title_v2(Game.lang.get("Wars"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height31111116 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i2111116 = i - (i9 * 2);
                arrayList.add(new ButtonStatsRectIMG(Game.lang.get("War"), Images.war, i9, height31111116, i2111116, i12, width3, CFG.FONT_BOLD));
                int height31111117 = height31111116 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("ToDeclareWarTheRelationsBetweenCivilizationsMustBeBelowX", GameValues.war.RELATIONS_TO_DECLARE_WAR), i9, height31111117, i2111116));
                int height31111118 = height31111117 + arrayList.get(arrayList.size() - 1).getHeight();
                str6 = r2;
                arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanProposeAWhitePeace", CFG.getPrecision2(GameValues.peace.WAR_WHITE_PEACE_MIN_WAR_SCORE, 100) + str6), i9, height31111118, i2111116));
                int height31111119 = height31111118 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanMakeDemands", CFG.getPrecision2(GameValues.peace.WAR_MAKE_DEMANDS_MIN_WAR_SCORE, 100) + str6), i9, height31111119, i2111116));
                int height311111110 = height31111119 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("EachMonthTheWinningSideGainsXOfTheTickingWarScoreBasedOnTheCurrentOverallWarScoreFromBattlesAndOccupiedProvinces", "X"), i9, height311111110, i2111116));
                int height311111111 = height311111110 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("AWhitePeaceWillBeAutomaticallySignedIfThereIsNoActivityForACertainPeriodAndTheWarscoreRemainsLow"), i9, height311111111, i2111116));
                height3 = height311111111 + arrayList.get(arrayList.size() - 1).getHeight();
            } else {
                arrayList.add(new Text_Title_v2(Game.lang.get("Wars"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height311111112 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i2111117 = i - (i9 * 2);
                arrayList.add(new ButtonStatsRectIMG(Game.lang.get("War"), Images.war, i9, height311111112, i2111117, i12, width3, CFG.FONT_BOLD));
                int height311111113 = height311111112 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("ToDeclareWarTheRelationsBetweenCivilizationsMustBeBelowX", GameValues.war.RELATIONS_TO_DECLARE_WAR), i9, height311111113, i2111117));
                int height311111114 = height311111113 + arrayList.get(arrayList.size() - 1).getHeight();
                str6 = r2;
                arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanProposeAWhitePeace", CFG.getPrecision2(GameValues.peace.WAR_WHITE_PEACE_MIN_WAR_SCORE, 100) + str6), i9, height311111114, i2111117));
                int height311111115 = height311111114 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanMakeDemands", CFG.getPrecision2(GameValues.peace.WAR_MAKE_DEMANDS_MIN_WAR_SCORE, 100) + str6), i9, height311111115, i2111117));
                int height311111116 = height311111115 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("EachMonthTheWinningSideGainsXOfTheTickingWarScoreBasedOnTheCurrentOverallWarScoreFromBattlesAndOccupiedProvinces", "X"), i9, height311111116, i2111117));
                int height311111117 = height311111116 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("AWhitePeaceWillBeAutomaticallySignedIfThereIsNoActivityForACertainPeriodAndTheWarscoreRemainsLow"), i9, height311111117, i2111117));
                height3 = height311111117 + arrayList.get(arrayList.size() - 1).getHeight();
            }
            if (z2 == 0) {
                arrayList.add(new Text_Title_v2(Game.lang.get("PeaceNegotiations"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height3216 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i2111118 = i - (i9 * 2);
                String str16 = str6;
                arrayList.add(new ButtonStatsRectIMG(Game.lang.get(IlLkpaQxs.oPWPOdnXwgko), Images.peace, i9, height3216, i2111118, i12, width3, CFG.FONT_BOLD));
                int height3217 = height3216 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanMakeDemands", CFG.getPrecision2(GameValues.peace.WAR_MAKE_DEMANDS_MIN_WAR_SCORE, 100) + str16), i9, height3217, i2111118));
                int height41111112 = height3217 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanProposeAWhitePeace", CFG.getPrecision2(GameValues.peace.WAR_WHITE_PEACE_MIN_WAR_SCORE, 100) + str16), i9, height41111112, i2111118));
                int height41111113 = height41111112 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get(CvuNnwgYwe.uDQbjWBjKa), i9, height41111113, i2111118));
                int height41124 = height41111113 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("PeaceAnnex"), i9, height41124, i2111118));
                height3 = height41124 + arrayList.get(arrayList.size() - 1).getHeight();
            } else {
                arrayList.add(new Text_Title_v2(Game.lang.get("PeaceNegotiations"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height3218 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i2111119 = i - (i9 * 2);
                String str17 = str6;
                arrayList.add(new ButtonStatsRectIMG(Game.lang.get(IlLkpaQxs.oPWPOdnXwgko), Images.peace, i9, height3218, i2111119, i12, width3, CFG.FONT_BOLD));
                int height3219 = height3218 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanMakeDemands", CFG.getPrecision2(GameValues.peace.WAR_MAKE_DEMANDS_MIN_WAR_SCORE, 100) + str17), i9, height3219, i2111119));
                int height41111114 = height3219 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanProposeAWhitePeace", CFG.getPrecision2(GameValues.peace.WAR_WHITE_PEACE_MIN_WAR_SCORE, 100) + str17), i9, height41111114, i2111119));
                int height41111115 = height41111114 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get(CvuNnwgYwe.uDQbjWBjKa), i9, height41111115, i2111119));
                int height41125 = height41111115 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("PeaceAnnex"), i9, height41125, i2111119));
                height3 = height41125 + arrayList.get(arrayList.size() - 1).getHeight();
            }
            if (z2 == 0) {
                arrayList.add(new AnonymousClass32(Game.lang.get("Siege"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height41111116 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i2211110 = i - (i9 * 2);
                arrayList.add(new AnonymousClass33(Game.lang.get("SiegeProgress"), Images.siege, i9, height41111116, i2211110, i12, width3, CFG.FONT_BOLD));
                int height41111117 = height41111116 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass34(Game.lang.get("DailySiegeProgressIsTheSumOfTheSiegeAbilitiesOfAllUnitsInvolvedInTheSiege"), i9, height41111117, i2211110));
                int height41111118 = height41111117 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass35(Game.lang.get("TheSiegeEndsWhenTheProgressReachesTheProvincesDefense"), i9, height41111118, i2211110));
                int height41111119 = height41111118 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass36(Game.lang.get("AfterASuccessfulSiegeAllNeighboringProvincesWithoutDefensiveBuildingsWillBeOccupied"), i9, height41111119, i2211110));
                int height42114 = height41111119 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                arrayList.add(new Text_Desc(Game.lang.get("MinimumArmyRequiredToSiegeProvinceX", CFG.getPrecision2(GameValues.siege.SIEGE_REGIMENTS_MIN * Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE, 1)), i9, height42114, i2211110));
                height3 = height42114 + arrayList.get(arrayList.size() - 1).getHeight();
            } else {
                arrayList.add(new AnonymousClass32(Game.lang.get("Siege"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height411111110 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i2211111 = i - (i9 * 2);
                arrayList.add(new AnonymousClass33(Game.lang.get("SiegeProgress"), Images.siege, i9, height411111110, i2211111, i12, width3, CFG.FONT_BOLD));
                int height411111111 = height411111110 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass34(Game.lang.get("DailySiegeProgressIsTheSumOfTheSiegeAbilitiesOfAllUnitsInvolvedInTheSiege"), i9, height411111111, i2211111));
                int height411111112 = height411111111 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass35(Game.lang.get("TheSiegeEndsWhenTheProgressReachesTheProvincesDefense"), i9, height411111112, i2211111));
                int height411111113 = height411111112 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass36(Game.lang.get("AfterASuccessfulSiegeAllNeighboringProvincesWithoutDefensiveBuildingsWillBeOccupied"), i9, height411111113, i2211111));
                int height42115 = height411111113 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                arrayList.add(new Text_Desc(Game.lang.get("MinimumArmyRequiredToSiegeProvinceX", CFG.getPrecision2(GameValues.siege.SIEGE_REGIMENTS_MIN * Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE, 1)), i9, height42115, i2211111));
                height3 = height42115 + arrayList.get(arrayList.size() - 1).getHeight();
            }
            if (z2 == 0) {
                arrayList.add(new AnonymousClass37(Game.lang.get("Fogofwar"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height42116 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i2211112 = i - (i9 * 2);
                arrayList.add(new AnonymousClass38(Game.lang.get("Fogofwar"), Images.provinces, i9, height42116, i2211112, i12, width3, CFG.FONT_BOLD));
                int height42117 = height42116 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("FogOfWarYouCanOnlyObserveActionsInYourOwnProvincesThoseOfYourAlliesAndSubjectsDirectlyBorderingProvincesAndWhatYourTroopsUncover"), i9, height42117, i2211112));
                height3 = height42117 + arrayList.get(arrayList.size() - 1).getHeight();
            } else {
                arrayList.add(new AnonymousClass37(Game.lang.get("Fogofwar"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height42118 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i2211113 = i - (i9 * 2);
                arrayList.add(new AnonymousClass38(Game.lang.get("Fogofwar"), Images.provinces, i9, height42118, i2211113, i12, width3, CFG.FONT_BOLD));
                int height42119 = height42118 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("FogOfWarYouCanOnlyObserveActionsInYourOwnProvincesThoseOfYourAlliesAndSubjectsDirectlyBorderingProvincesAndWhatYourTroopsUncover"), i9, height42119, i2211113));
                height3 = height42119 + arrayList.get(arrayList.size() - 1).getHeight();
            }
            if (z2 == 0) {
                arrayList.add(new Text_Title_v2(Game.lang.get("WarWeariness"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height5111110 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i2211114 = i - (i9 * 2);
                arrayList.add(new AnonymousClass39(Game.lang.get("WarWeariness"), Images.weariness, i9, height5111110, i2211114, i12, width3, CFG.FONT_BOLD));
                int height5111111 = height5111110 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("WarWearinessH1"), i9, height5111111, i2211114));
                int height5111112 = height5111111 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("WarWearinessH2"), i9, height5111112, i2211114));
                height3 = height5111112 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                arrayList.add(new Text_Title_v2(Game.lang.get("WarWeariness"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height5111113 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i2211115 = i - (i9 * 2);
                arrayList.add(new AnonymousClass39(Game.lang.get("WarWeariness"), Images.weariness, i9, height5111113, i2211115, i12, width3, CFG.FONT_BOLD));
                int height5111114 = height5111113 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("WarWearinessH1"), i9, height5111114, i2211115));
                int height5111115 = height5111114 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("WarWearinessH2"), i9, height5111115, i2211115));
                height3 = height5111115 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                arrayList.add(new Text_Title_v2(Game.lang.get("Diplomacy"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height5111116 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i2211116 = i - (i9 * 2);
                arrayList.add(new ButtonStatsRectIMG(Game.lang.get("Diplomacy"), Images.diplomacy, i9, height5111116, i2211116, i12, width3, CFG.FONT_BOLD));
                int height5111117 = height5111116 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("DifferentGovReligion"), i9, height5111117, i2211116));
                height3 = height5111117 + arrayList.get(arrayList.size() - 1).getHeight();
            } else {
                arrayList.add(new Text_Title_v2(Game.lang.get("Diplomacy"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height5111118 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i2211117 = i - (i9 * 2);
                arrayList.add(new ButtonStatsRectIMG(Game.lang.get("Diplomacy"), Images.diplomacy, i9, height5111118, i2211117, i12, width3, CFG.FONT_BOLD));
                int height5111119 = height5111118 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("DifferentGovReligion"), i9, height5111119, i2211117));
                height3 = height5111119 + arrayList.get(arrayList.size() - 1).getHeight();
            }
            if (z2 == 0) {
                arrayList.add(new AnonymousClass40(Game.lang.get("CivilizationStability"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height5211110 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i2211118 = i - (i9 * 2);
                arrayList.add(new AnonymousClass41(Game.lang.get("CivilizationStability"), Images.civStability, i9, height5211110, i2211118, i12, width3, CFG.FONT_BOLD));
                int height5211111 = height5211110 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass42(Game.lang.get("CivilizationStabilityReflectsThePercentageOfYourProvincesWithLegitimateClaimsComparedToThoseWithoutAndTakesIntoAccountYourReligiousUnity"), i9, height5211111, i2211118));
                height3 = height5211111 + arrayList.get(arrayList.size() - 1).getHeight();
            } else {
                arrayList.add(new AnonymousClass40(Game.lang.get("CivilizationStability"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height5211112 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i2211119 = i - (i9 * 2);
                arrayList.add(new AnonymousClass41(Game.lang.get("CivilizationStability"), Images.civStability, i9, height5211112, i2211119, i12, width3, CFG.FONT_BOLD));
                int height5211113 = height5211112 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass42(Game.lang.get("CivilizationStabilityReflectsThePercentageOfYourProvincesWithLegitimateClaimsComparedToThoseWithoutAndTakesIntoAccountYourReligiousUnity"), i9, height5211113, i2211119));
                height3 = height5211113 + arrayList.get(arrayList.size() - 1).getHeight();
            }
            if (z2 == 0) {
                arrayList.add(new AnonymousClass43(Game.lang.get("Province"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height5211114 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i3111110 = i - (i9 * 2);
                arrayList.add(new AnonymousClass44(Game.lang.get("ProvinceMonthlyIncome"), Images.gold, i9, height5211114, i3111110, i12, width3, CFG.FONT_BOLD));
                int height5211115 = height5211114 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass45(Game.lang.get("Income0"), i9, height5211115, i3111110));
                int height5211116 = height5211115 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass46(Game.lang.get("Income1"), i9, height5211116, i3111110));
                height3 = height5211116 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                arrayList.add(new AnonymousClass43(Game.lang.get("Province"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height5211117 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i3111111 = i - (i9 * 2);
                arrayList.add(new AnonymousClass44(Game.lang.get("ProvinceMonthlyIncome"), Images.gold, i9, height5211117, i3111111, i12, width3, CFG.FONT_BOLD));
                int height5211118 = height5211117 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass45(Game.lang.get("Income0"), i9, height5211118, i3111111));
                int height5211119 = height5211118 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass46(Game.lang.get("Income1"), i9, height5211119, i3111111));
                height3 = height5211119 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                int i3111112 = i - (i9 * 2);
                arrayList.add(new AnonymousClass47(Game.lang.get("TaxEfficiency"), Images.tax, i9, height3, i3111112, i12, width3, CFG.FONT_BOLD));
                int height6111118 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass48(Game.lang.get("TaxEfficiency0"), i9, height6111118, i3111112));
                height3 = height6111118 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i3111113 = i - (i9 * 2);
                arrayList.add(new AnonymousClass47(Game.lang.get("TaxEfficiency"), Images.tax, i9, height3, i3111113, i12, width3, CFG.FONT_BOLD));
                int height6111119 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass48(Game.lang.get("TaxEfficiency0"), i9, height6111119, i3111113));
                height3 = height6111119 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                int i3111114 = i - (i9 * 2);
                arrayList.add(new AnonymousClass49(Game.lang.get("EconomyOfProvince"), Game_Calendar.IMG_ECONOMY, i9, height3, i3111114, i12, width3, CFG.FONT_BOLD));
                int height61111110 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass50(Game.lang.get("Economy0"), i9, height61111110, i3111114));
                int height61111111 = height61111110 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass51(Game.lang.get("Economy1"), i9, height61111111, i3111114));
                height3 = height61111111 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i3111115 = i - (i9 * 2);
                arrayList.add(new AnonymousClass49(Game.lang.get("EconomyOfProvince"), Game_Calendar.IMG_ECONOMY, i9, height3, i3111115, i12, width3, CFG.FONT_BOLD));
                int height61111112 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass50(Game.lang.get("Economy0"), i9, height61111112, i3111115));
                int height61111113 = height61111112 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass51(Game.lang.get("Economy1"), i9, height61111113, i3111115));
                height3 = height61111113 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                int i3111116 = i - (i9 * 2);
                arrayList.add(new AnonymousClass52(Game.lang.get("ProducedGoods"), Images.goods, i9, height3, i3111116, i12, width3, CFG.FONT_BOLD));
                int height61111114 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass53(Game.lang.get("Production0"), i9, height61111114, i3111116));
                int height61111115 = height61111114 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass54(Game.lang.get("Production1"), i9, height61111115, i3111116));
                int height61111116 = height61111115 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass55(Game.lang.get("Production2"), i9, height61111116, i3111116));
                height3 = height61111116 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i3111117 = i - (i9 * 2);
                arrayList.add(new AnonymousClass52(Game.lang.get("ProducedGoods"), Images.goods, i9, height3, i3111117, i12, width3, CFG.FONT_BOLD));
                int height61111117 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass53(Game.lang.get("Production0"), i9, height61111117, i3111117));
                int height61111118 = height61111117 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass54(Game.lang.get("Production1"), i9, height61111118, i3111117));
                int height61111119 = height61111118 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass55(Game.lang.get("Production2"), i9, height61111119, i3111117));
                height3 = height61111119 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                int i3111118 = i - (i9 * 2);
                arrayList.add(new AnonymousClass56(Game.lang.get("Population"), Images.population, i9, height3, i3111118, i12, width3, CFG.FONT_BOLD));
                int height621112 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass57(Game.lang.get("Population0"), i9, height621112, i3111118));
                int height621113 = height621112 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass58(Game.lang.get("ThePopulationWillSlowlyAssimilateIfTheCivilizationHasACore"), i9, height621113, i3111118));
                height3 = height621113 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i3111119 = i - (i9 * 2);
                arrayList.add(new AnonymousClass56(Game.lang.get("Population"), Images.population, i9, height3, i3111119, i12, width3, CFG.FONT_BOLD));
                int height621114 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass57(Game.lang.get("Population0"), i9, height621114, i3111119));
                int height621115 = height621114 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass58(Game.lang.get("ThePopulationWillSlowlyAssimilateIfTheCivilizationHasACore"), i9, height621115, i3111119));
                height3 = height621115 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                int i3211110 = i - (i9 * 2);
                arrayList.add(new AnonymousClass59(Game.lang.get("GrowthRate"), Images.populationGrowth, i9, height3, i3211110, i12, width3, CFG.FONT_BOLD));
                int height621116 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass60(Game.lang.get("GrowthRate0"), i9, height621116, i3211110));
                height3 = height621116 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i3211111 = i - (i9 * 2);
                arrayList.add(new AnonymousClass59(Game.lang.get("GrowthRate"), Images.populationGrowth, i9, height3, i3211111, i12, width3, CFG.FONT_BOLD));
                int height621117 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass60(Game.lang.get("GrowthRate0"), i9, height621117, i3211111));
                height3 = height621117 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                int i3211112 = i - (i9 * 2);
                arrayList.add(new AnonymousClass61(Game.lang.get("Diseases"), Images.disease, i9, height3, i3211112, i12, width3, CFG.FONT_BOLD));
                int height621118 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass62(Game.lang.get("Plague0"), i9, height621118, i3211112));
                int height7111110 = height621118 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("Plague1"), i9, height7111110, i3211112));
                height3 = height7111110 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i3211113 = i - (i9 * 2);
                arrayList.add(new AnonymousClass61(Game.lang.get("Diseases"), Images.disease, i9, height3, i3211113, i12, width3, CFG.FONT_BOLD));
                int height621119 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass62(Game.lang.get("Plague0"), i9, height621119, i3211113));
                int height7111111 = height621119 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("Plague1"), i9, height7111111, i3211113));
                height3 = height7111111 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                arrayList.add(new AnonymousClass63(Game.lang.get("LegacyPoints"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height7111112 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i3211114 = i - (i9 * 2);
                arrayList.add(new AnonymousClass64(Game.lang.get("Legacy"), Images.legacy, i9, height7111112, i3211114, i12, width3, CFG.FONT_BOLD));
                int height7111113 = height7111112 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("Legacy0"), i9, height7111113, i3211114));
                int height7111114 = height7111113 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass65(Game.lang.get("Legacy1"), i9, height7111114, i3211114));
                int height7111115 = height7111114 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("Legacy2"), i9, height7111115, i3211114));
                height3 = height7111115 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                arrayList.add(new AnonymousClass63(Game.lang.get("LegacyPoints"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height7111116 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i3211115 = i - (i9 * 2);
                arrayList.add(new AnonymousClass64(Game.lang.get("Legacy"), Images.legacy, i9, height7111116, i3211115, i12, width3, CFG.FONT_BOLD));
                int height7111117 = height7111116 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("Legacy0"), i9, height7111117, i3211115));
                int height7111118 = height7111117 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass65(Game.lang.get("Legacy1"), i9, height7111118, i3211115));
                int height7111119 = height7111118 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("Legacy2"), i9, height7111119, i3211115));
                height3 = height7111119 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                arrayList.add(new AnonymousClass66(Game.lang.get(GameValues.court.COUNCIL_NAME), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height7211110 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i3211116 = i - (i9 * 2);
                arrayList.add(new AnonymousClass67(Game.lang.get("Advisors"), Images.council, i9, height7211110, i3211116, i12, width3, CFG.FONT_BOLD));
                int height7211111 = height7211110 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass68(Game.lang.get(gpVDKipRURuzw.fPT), i9, height7211111, i3211116));
                height3 = height7211111 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                arrayList.add(new AnonymousClass66(Game.lang.get(GameValues.court.COUNCIL_NAME), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height7211112 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i3211117 = i - (i9 * 2);
                arrayList.add(new AnonymousClass67(Game.lang.get("Advisors"), Images.council, i9, height7211112, i3211117, i12, width3, CFG.FONT_BOLD));
                int height7211113 = height7211112 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass68(Game.lang.get(gpVDKipRURuzw.fPT), i9, height7211113, i3211117));
                height3 = height7211113 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                arrayList.add(new AnonymousClass69(Game.lang.get("Corruption"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height7211114 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i3211118 = i - (i9 * 2);
                arrayList.add(new AnonymousClass70(Game.lang.get("SupremeCourt"), Images.corruption, i9, height7211114, i3211118, i12, width3, CFG.FONT_BOLD));
                int height7211115 = height7211114 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("Corruption0"), i9, height7211115, i3211118));
                height3 = height7211115 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                arrayList.add(new AnonymousClass69(Game.lang.get("Corruption"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height7211116 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i3211119 = i - (i9 * 2);
                arrayList.add(new AnonymousClass70(Game.lang.get("SupremeCourt"), Images.corruption, i9, height7211116, i3211119, i12, width3, CFG.FONT_BOLD));
                int height7211117 = height7211116 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("Corruption0"), i9, height7211117, i3211119));
                height3 = height7211117 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                arrayList.add(new AnonymousClass71(Game.lang.get("Technologies"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height7211118 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i411118 = i - (i9 * 2);
                arrayList.add(new ButtonStatsRectIMG(Game.lang.get("Research"), Game_Calendar.IMG_TECHNOLOGY, i9, height7211118, i411118, i12, width3, CFG.FONT_BOLD));
                int height8111110 = height7211118 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get(XjthpFh.rtD), i9, height8111110, i411118));
                int height8111111 = height8111110 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass72(Game.lang.get("Technology1"), i9, height8111111, i411118));
                height3 = height8111111 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                arrayList.add(new AnonymousClass71(Game.lang.get("Technologies"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height7211119 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i411119 = i - (i9 * 2);
                arrayList.add(new ButtonStatsRectIMG(Game.lang.get("Research"), Game_Calendar.IMG_TECHNOLOGY, i9, height7211119, i411119, i12, width3, CFG.FONT_BOLD));
                int height8111112 = height7211119 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get(XjthpFh.rtD), i9, height8111112, i411119));
                int height8111113 = height8111112 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass72(Game.lang.get("Technology1"), i9, height8111113, i411119));
                height3 = height8111113 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                int i4111110 = i - (i9 * 2);
                arrayList.add(new AnonymousClass73(Game.lang.get("CivilizationAdvantages"), Images.advantages, i9, height3, i4111110, i12, width3, CFG.FONT_BOLD));
                int height8111114 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("EachTimeYouUnlockATechnologyYouWillGainOneAdvantagePointThatYouCanExchangeForABonus"), i9, height8111114, i4111110));
                height3 = height8111114 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i4111111 = i - (i9 * 2);
                arrayList.add(new AnonymousClass73(Game.lang.get("CivilizationAdvantages"), Images.advantages, i9, height3, i4111111, i12, width3, CFG.FONT_BOLD));
                int height8111115 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("EachTimeYouUnlockATechnologyYouWillGainOneAdvantagePointThatYouCanExchangeForABonus"), i9, height8111115, i4111111));
                height3 = height8111115 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2) {
                arrayList.add(new Text_Title_v2(Game.lang.get("CivilizationRank"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height8111116 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i4111112 = i - (i9 * 2);
                arrayList.add(new ButtonStatsRectIMG(Game.lang.get("CivilizationRank"), CivilizationRanking.getCivilizationRank_IMG(Game.getCiv(Game.player.iCivID).iCivRankID), i9, height8111116, i4111112, i12, width3, CFG.FONT_BOLD));
                height3 = height8111116 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                width = ImageManager.getImage(Images.council).getWidth() + (CFG.PADDING * 2);
                i2 = (i4111112 - CFG.PADDING) / 2;
                i3 = 0;
                while (i3 < GameValues.civRank.CIV_RANK_MANPOWER_MAX.length) {
                    if (i3 % 2 == 0) {
                        i5 = i9;
                    } else {
                        i5 = CFG.PADDING + i9 + i2;
                    }
                    arrayList.add(new AnonymousClass74(CivilizationRanking.getCivilizationRank_Name(i3), CivilizationRanking.getCivilizationRank_IMG(i3), i5, height3, i2, CFG.BUTTON_HEIGHT3, width));
                    arrayList.get(arrayList.size() - 1).setCurrent(i3);
                    i3++;
                    if (i3 % 2 == 0) {
                        height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    }
                }
                size = arrayList.size();
                while (i4 < size) {
                    if (height3 < arrayList.get(i4).getPosY() + arrayList.get(i4).getHeight() + CFG.PADDING) {
                        height3 = arrayList.get(i4).getPosY() + arrayList.get(i4).getHeight() + CFG.PADDING;
                    }
                }
            } else {
                arrayList.add(new Text_Title_v2(Game.lang.get("CivilizationRank"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height8111117 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i4111113 = i - (i9 * 2);
                arrayList.add(new ButtonStatsRectIMG(Game.lang.get("CivilizationRank"), CivilizationRanking.getCivilizationRank_IMG(Game.getCiv(Game.player.iCivID).iCivRankID), i9, height8111117, i4111113, i12, width3, CFG.FONT_BOLD));
                height3 = height8111117 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                width = ImageManager.getImage(Images.council).getWidth() + (CFG.PADDING * 2);
                i2 = (i4111113 - CFG.PADDING) / 2;
                i3 = 0;
                while (i3 < GameValues.civRank.CIV_RANK_MANPOWER_MAX.length) {
                    if (i3 % 2 == 0) {
                        i5 = i9;
                    } else {
                        i5 = CFG.PADDING + i9 + i2;
                    }
                    arrayList.add(new AnonymousClass74(CivilizationRanking.getCivilizationRank_Name(i3), CivilizationRanking.getCivilizationRank_IMG(i3), i5, height3, i2, CFG.BUTTON_HEIGHT3, width));
                    arrayList.get(arrayList.size() - 1).setCurrent(i3);
                    i3++;
                    if (i3 % 2 == 0) {
                        height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    }
                }
                size = arrayList.size();
                while (i4 < size) {
                    if (height3 < arrayList.get(i4).getPosY() + arrayList.get(i4).getHeight() + CFG.PADDING) {
                        height3 = arrayList.get(i4).getPosY() + arrayList.get(i4).getHeight() + CFG.PADDING;
                    }
                }
            }
            if (Game.menuManager.getInGame()) {
                arrayList.add(new Text_Title_v2(Game.lang.get("More"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height8111118 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                if (CFG.isDesktop()) {
                    i8 = CFG.BUTTON_HEIGHT2;
                } else {
                    i8 = CFG.BUTTON_HEIGHT;
                }
                int i4111114 = i - (i9 * 2);
                int i4111115 = i8;
                arrayList.add(new AnonymousClass75(Game.lang.get("ListOfUnits"), Game_Calendar.IMG_MANPOWER, i9, height8111118, i4111114, i4111115, ImageManager.getImage(Images.advantages).getWidth() + (CFG.PADDING * 4), 0, 0L));
                int height8111119 = height8111118 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                arrayList.add(new AnonymousClass76(Game.lang.get("ListOfBuildings"), Images.buildings, i9, height8111119, i4111114, i4111115, ImageManager.getImage(Images.advantages).getWidth() + (CFG.PADDING * 4), 0, 0L));
                height3 = height8111119 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            int i4111116 = height3 + CFG.PADDING;
            int i4111117 = CFG.GAME_HEIGHT - height2;
            if (Game.menuManager.getInGame()) {
                height = CFG.GAME_HEIGHT - Game.menuManager.getInGame_MapModesPosY();
            } else {
                height = ImageManager.getImage(Images.buttonPlay).getHeight();
            }
            int iMin6 = Math.min(i4111116, i4111117 - (height + (CFG.PADDING * 3)));
            i6 = i;
            arrayList.add(new Empty(0, 0, i6, Math.max(i4111116, iMin6)));
            AnonymousClass77 anonymousClass712 = new AnonymousClass77(Game.lang.get("Encyclopedia"), false, false, Images.title500);
            if (Game.menuManager.getInGame()) {
                i7 = (CFG.GAME_WIDTH - i6) - (CFG.PADDING * 2);
            } else {
                i7 = CFG.PADDING * 2;
            }
            initMenu(anonymousClass712, i7, height2, i6, iMin6, arrayList, false, true);
            this.drawScrollPositionAlways = false;
        }
        str3 = str2;
        int i52 = width2 - (i9 * 2);
        arrayList.add(new ButtonStatsRectIMG(Game.lang.get("ReinforceArmyCost"), Game_Calendar.IMG_MANPOWER_UP, i9, height3, i52, i12, width3, CFG.FONT_BOLD));
        int height913 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
        arrayList.add(new Text_Desc(Game.lang.get("ReinforceCostEncy") + " " + CFG.getPrecision2(GameValues.army.REINFORCE_ARMY_COST_MODIFIER * 100.0f, 1) + "%", i9, height913, i52));
        height3 = height913 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        if (z2 == 0) {
            int i1124 = width2 - (i9 * 2);
            arrayList.add(new AnonymousClass6(Game.lang.get(nEtnPpUF.EgBSfDNNNmAun), Images.provinces, i9, height3, i1124, i12, width3, CFG.FONT_BOLD));
            int height11114 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("ProvinceContribution0"), i9, height11114, i1124));
            height3 = height11114 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        } else {
            int i1125 = width2 - (i9 * 2);
            arrayList.add(new AnonymousClass6(Game.lang.get(nEtnPpUF.EgBSfDNNNmAun), Images.provinces, i9, height3, i1125, i12, width3, CFG.FONT_BOLD));
            int height11115 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("ProvinceContribution0"), i9, height11115, i1125));
            height3 = height11115 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        if (z2 == 0) {
            int i1126 = width2 - (i9 * 2);
            arrayList.add(new AnonymousClass7(Game.lang.get("IncreasingMaximumManpower"), Game_Calendar.IMG_MANPOWER, i9, height3, i1126, i12, width3, CFG.FONT_BOLD));
            int height11116 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass8(Game.lang.get(SwmJtrccN.OIEbNGSeBmAe), i9, height11116, i1126));
            int height11117 = height11116 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass9(Game.lang.get("IncreasingMaximumManpower1"), i9, height11117, i1126));
            int height11118 = height11117 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass10(Game.lang.get("TipForBestResultsIncreaseManpowerInProvincesWithHighestGrowthRateOfPopulation"), i9, height11118, i1126));
            height3 = height11118 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        } else {
            int i1127 = width2 - (i9 * 2);
            arrayList.add(new AnonymousClass7(Game.lang.get("IncreasingMaximumManpower"), Game_Calendar.IMG_MANPOWER, i9, height3, i1127, i12, width3, CFG.FONT_BOLD));
            int height11119 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass8(Game.lang.get(SwmJtrccN.OIEbNGSeBmAe), i9, height11119, i1127));
            int height111110 = height11119 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass9(Game.lang.get("IncreasingMaximumManpower1"), i9, height111110, i1127));
            int height111111 = height111110 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass10(Game.lang.get("TipForBestResultsIncreaseManpowerInProvincesWithHighestGrowthRateOfPopulation"), i9, height111111, i1127));
            height3 = height111111 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        if (z2 == 0) {
            arrayList.add(new AnonymousClass11(Game.lang.get("RegimentsLimit"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, width2 - (Images.boxTitleBORDERWIDTH * 2), i11));
            int height111112 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int i124 = width2 - (i9 * 2);
            arrayList.add(new AnonymousClass12(Game.lang.get("RegimentsLimit"), Images.regimentsLimit, i9, height111112, i124, i12, width3, CFG.FONT_BOLD));
            int height111113 = height111112 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("RegimnetsLimit0"), i9, height111113, i124));
            int height128 = height111113 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(" = " + Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENTS_LIMIT_BASE_VALUE + " + " + Game.lang.get("LocalManpower") + " * " + CFG.getPrecision2(GameValues.army.REGIMENTS_LIMIT_MANPOWER_LEVEL, 100) + " + " + Game.lang.get("CivilizationBonuses"), i9, height128, i124));
            int height129 = height128 + arrayList.get(arrayList.size() - 1).getHeight();
            str4 = r15;
            arrayList.add(new Text_Desc(Game.lang.get("WhenTheMaximumRegimentLimitIsReachedArmyRecruitmentCostIncreasesBy") + str4 + CFG.getPrecision2(GameValues.army.REGIMENTS_LIMIT_RECRUIT_COST_OVER * 100.0f, 10) + "%", i9, height129, i124));
            int height22118 = height129 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("Regiments3"), i9, height22118, i124));
            int height22119 = height22118 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("Regiments") + " > " + Game.lang.get("RegimentsLimit") + " = " + Game.lang.get("ArmyMaintenance") + " * (" + Game.lang.get("Regiments") + " / " + Game.lang.get("RegimentsLimit") + ")%", i9, height22119, i124));
            height3 = height22119 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        } else {
            arrayList.add(new AnonymousClass11(Game.lang.get("RegimentsLimit"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, width2 - (Images.boxTitleBORDERWIDTH * 2), i11));
            int height111114 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int i125 = width2 - (i9 * 2);
            arrayList.add(new AnonymousClass12(Game.lang.get("RegimentsLimit"), Images.regimentsLimit, i9, height111114, i125, i12, width3, CFG.FONT_BOLD));
            int height111115 = height111114 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("RegimnetsLimit0"), i9, height111115, i125));
            int height1210 = height111115 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(" = " + Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENTS_LIMIT_BASE_VALUE + " + " + Game.lang.get("LocalManpower") + " * " + CFG.getPrecision2(GameValues.army.REGIMENTS_LIMIT_MANPOWER_LEVEL, 100) + " + " + Game.lang.get("CivilizationBonuses"), i9, height1210, i125));
            int height1211 = height1210 + arrayList.get(arrayList.size() - 1).getHeight();
            str4 = r15;
            arrayList.add(new Text_Desc(Game.lang.get("WhenTheMaximumRegimentLimitIsReachedArmyRecruitmentCostIncreasesBy") + str4 + CFG.getPrecision2(GameValues.army.REGIMENTS_LIMIT_RECRUIT_COST_OVER * 100.0f, 10) + "%", i9, height1211, i125));
            int height221110 = height1211 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("Regiments3"), i9, height221110, i125));
            int height221111 = height221110 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("Regiments") + " > " + Game.lang.get("RegimentsLimit") + " = " + Game.lang.get("ArmyMaintenance") + " * (" + Game.lang.get("Regiments") + " / " + Game.lang.get("RegimentsLimit") + ")%", i9, height221111, i125));
            height3 = height221111 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        if (z2 == 0) {
            str5 = str3;
            if (searchTexts(str5, new String[]{"Battles", "DeploymentPhase", "DeploymentPhase0", "DeploymentPhase1", "DeploymentPhase2"})) {
                i = width2;
            }
            if (z2 == 0) {
                int i111114 = i - (i9 * 2);
                arrayList.add(new AnonymousClass18(Game.lang.get("RoleOfGenerals"), Images.general, i9, height3, i111114, i12, width3, CFG.FONT_BOLD));
                int height21111116 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass19(Game.lang.get("RoleOfGenerals0"), i9, height21111116, i111114));
                int height21111117 = height21111116 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass20(Game.lang.get("RoleOfGenerals1"), i9, height21111117, i111114));
                height3 = height21111117 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i111115 = i - (i9 * 2);
                arrayList.add(new AnonymousClass18(Game.lang.get("RoleOfGenerals"), Images.general, i9, height3, i111115, i12, width3, CFG.FONT_BOLD));
                int height21111118 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass19(Game.lang.get("RoleOfGenerals0"), i9, height21111118, i111115));
                int height21111119 = height21111118 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass20(Game.lang.get("RoleOfGenerals1"), i9, height21111119, i111115));
                height3 = height21111119 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                int i111116 = i - (i9 * 2);
                arrayList.add(new AnonymousClass21(Game.lang.get("Generals") + str4 + Game.lang.get("CombatExperience"), Images.general, i9, height3, i111116, i12, width3, CFG.FONT_BOLD));
                int height211124 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("CombatExperienceDesc"), i9, height211124, i111116));
                height3 = height211124 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i111117 = i - (i9 * 2);
                arrayList.add(new AnonymousClass21(Game.lang.get("Generals") + str4 + Game.lang.get("CombatExperience"), Images.general, i9, height3, i111117, i12, width3, CFG.FONT_BOLD));
                int height211125 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("CombatExperienceDesc"), i9, height211125, i111117));
                height3 = height211125 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                int i111118 = i - (i9 * 2);
                arrayList.add(new AnonymousClass22(Game.lang.get("BattlePhase"), Images.battle, i9, height3, i111118, i12, width3, CFG.FONT_BOLD));
                int height211111110 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass23(Game.lang.get("BattlePhase0"), i9, height211111110, i111118));
                int height211111111 = height211111110 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass24(Game.lang.get("BattlePhase1"), i9, height211111111, i111118));
                int height211111112 = height211111111 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass25(Game.lang.get("BattlePhase2"), i9, height211111112, i111118));
                height3 = height211111112 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i111119 = i - (i9 * 2);
                arrayList.add(new AnonymousClass22(Game.lang.get("BattlePhase"), Images.battle, i9, height3, i111119, i12, width3, CFG.FONT_BOLD));
                int height211111113 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass23(Game.lang.get("BattlePhase0"), i9, height211111113, i111119));
                int height211111114 = height211111113 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass24(Game.lang.get("BattlePhase1"), i9, height211111114, i111119));
                int height211111115 = height211111114 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass25(Game.lang.get("BattlePhase2"), i9, height211111115, i111119));
                height3 = height211111115 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                int i21111110 = i - (i9 * 2);
                arrayList.add(new AnonymousClass26(Game.lang.get("MoraleAndRetreatMechanics"), Images.morale, i9, height3, i21111110, i12, width3, CFG.FONT_BOLD));
                int height221112 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass27(Game.lang.get("MoraleAndRetreatMechanics0"), i9, height221112, i21111110));
                int height221113 = height221112 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass28(Game.lang.get("MoraleAndRetreatMechanics1"), i9, height221113, i21111110));
                height3 = height221113 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i21111111 = i - (i9 * 2);
                arrayList.add(new AnonymousClass26(Game.lang.get("MoraleAndRetreatMechanics"), Images.morale, i9, height3, i21111111, i12, width3, CFG.FONT_BOLD));
                int height221114 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass27(Game.lang.get("MoraleAndRetreatMechanics0"), i9, height221114, i21111111));
                int height221115 = height221114 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass28(Game.lang.get("MoraleAndRetreatMechanics1"), i9, height221115, i21111111));
                height3 = height221115 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                int i21111112 = i - (i9 * 2);
                arrayList.add(new AnonymousClass29(Game.lang.get("Discipline"), Images.discipline, i9, height3, i21111112, i12, width3, CFG.FONT_BOLD));
                int height311212 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass30(Game.lang.get("DisciplineSignifiesOrganizationAndCoordinationOfTheArmyInBattleIncreasingUnitsAttack"), i9, height311212, i21111112));
                height3 = height311212 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i21111113 = i - (i9 * 2);
                arrayList.add(new AnonymousClass29(Game.lang.get("Discipline"), Images.discipline, i9, height3, i21111113, i12, width3, CFG.FONT_BOLD));
                int height311213 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass30(Game.lang.get("DisciplineSignifiesOrganizationAndCoordinationOfTheArmyInBattleIncreasingUnitsAttack"), i9, height311213, i21111113));
                height3 = height311213 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                int i21111114 = i - (i9 * 2);
                arrayList.add(new AnonymousClass31(Game.lang.get("DestructionOrSurvival"), Images.skull, i9, height3, i21111114, i12, width3, CFG.FONT_BOLD));
                int height311214 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("DestructionOrSurvival0", GameValues.battle.BATTLE_ARMY_DESTROYED_ROUND_ID), i9, height311214, i21111114));
                height3 = height311214 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i21111115 = i - (i9 * 2);
                arrayList.add(new AnonymousClass31(Game.lang.get("DestructionOrSurvival"), Images.skull, i9, height3, i21111115, i12, width3, CFG.FONT_BOLD));
                int height311215 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("DestructionOrSurvival0", GameValues.battle.BATTLE_ARMY_DESTROYED_ROUND_ID), i9, height311215, i21111115));
                height3 = height311215 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                arrayList.add(new Text_Title_v2(Game.lang.get("Wars"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height311111118 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i21111116 = i - (i9 * 2);
                arrayList.add(new ButtonStatsRectIMG(Game.lang.get("War"), Images.war, i9, height311111118, i21111116, i12, width3, CFG.FONT_BOLD));
                int height311111119 = height311111118 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("ToDeclareWarTheRelationsBetweenCivilizationsMustBeBelowX", GameValues.war.RELATIONS_TO_DECLARE_WAR), i9, height311111119, i21111116));
                int height3111111110 = height311111119 + arrayList.get(arrayList.size() - 1).getHeight();
                str6 = r2;
                arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanProposeAWhitePeace", CFG.getPrecision2(GameValues.peace.WAR_WHITE_PEACE_MIN_WAR_SCORE, 100) + str6), i9, height3111111110, i21111116));
                int height3111111111 = height3111111110 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanMakeDemands", CFG.getPrecision2(GameValues.peace.WAR_MAKE_DEMANDS_MIN_WAR_SCORE, 100) + str6), i9, height3111111111, i21111116));
                int height3111111112 = height3111111111 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("EachMonthTheWinningSideGainsXOfTheTickingWarScoreBasedOnTheCurrentOverallWarScoreFromBattlesAndOccupiedProvinces", "X"), i9, height3111111112, i21111116));
                int height3111111113 = height3111111112 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("AWhitePeaceWillBeAutomaticallySignedIfThereIsNoActivityForACertainPeriodAndTheWarscoreRemainsLow"), i9, height3111111113, i21111116));
                height3 = height3111111113 + arrayList.get(arrayList.size() - 1).getHeight();
            } else {
                arrayList.add(new Text_Title_v2(Game.lang.get("Wars"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height3111111114 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i21111117 = i - (i9 * 2);
                arrayList.add(new ButtonStatsRectIMG(Game.lang.get("War"), Images.war, i9, height3111111114, i21111117, i12, width3, CFG.FONT_BOLD));
                int height3111111115 = height3111111114 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("ToDeclareWarTheRelationsBetweenCivilizationsMustBeBelowX", GameValues.war.RELATIONS_TO_DECLARE_WAR), i9, height3111111115, i21111117));
                int height3111111116 = height3111111115 + arrayList.get(arrayList.size() - 1).getHeight();
                str6 = r2;
                arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanProposeAWhitePeace", CFG.getPrecision2(GameValues.peace.WAR_WHITE_PEACE_MIN_WAR_SCORE, 100) + str6), i9, height3111111116, i21111117));
                int height3111111117 = height3111111116 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanMakeDemands", CFG.getPrecision2(GameValues.peace.WAR_MAKE_DEMANDS_MIN_WAR_SCORE, 100) + str6), i9, height3111111117, i21111117));
                int height3111111118 = height3111111117 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("EachMonthTheWinningSideGainsXOfTheTickingWarScoreBasedOnTheCurrentOverallWarScoreFromBattlesAndOccupiedProvinces", "X"), i9, height3111111118, i21111117));
                int height3111111119 = height3111111118 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("AWhitePeaceWillBeAutomaticallySignedIfThereIsNoActivityForACertainPeriodAndTheWarscoreRemainsLow"), i9, height3111111119, i21111117));
                height3 = height3111111119 + arrayList.get(arrayList.size() - 1).getHeight();
            }
            if (z2 == 0) {
                arrayList.add(new Text_Title_v2(Game.lang.get("PeaceNegotiations"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height32110 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i21111118 = i - (i9 * 2);
                String str18 = str6;
                arrayList.add(new ButtonStatsRectIMG(Game.lang.get(IlLkpaQxs.oPWPOdnXwgko), Images.peace, i9, height32110, i21111118, i12, width3, CFG.FONT_BOLD));
                int height32111 = height32110 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanMakeDemands", CFG.getPrecision2(GameValues.peace.WAR_MAKE_DEMANDS_MIN_WAR_SCORE, 100) + str18), i9, height32111, i21111118));
                int height411111114 = height32111 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanProposeAWhitePeace", CFG.getPrecision2(GameValues.peace.WAR_WHITE_PEACE_MIN_WAR_SCORE, 100) + str18), i9, height411111114, i21111118));
                int height411111115 = height411111114 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get(CvuNnwgYwe.uDQbjWBjKa), i9, height411111115, i21111118));
                int height41126 = height411111115 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("PeaceAnnex"), i9, height41126, i21111118));
                height3 = height41126 + arrayList.get(arrayList.size() - 1).getHeight();
            } else {
                arrayList.add(new Text_Title_v2(Game.lang.get("PeaceNegotiations"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height32112 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i21111119 = i - (i9 * 2);
                String str19 = str6;
                arrayList.add(new ButtonStatsRectIMG(Game.lang.get(IlLkpaQxs.oPWPOdnXwgko), Images.peace, i9, height32112, i21111119, i12, width3, CFG.FONT_BOLD));
                int height32113 = height32112 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanMakeDemands", CFG.getPrecision2(GameValues.peace.WAR_MAKE_DEMANDS_MIN_WAR_SCORE, 100) + str19), i9, height32113, i21111119));
                int height411111116 = height32113 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanProposeAWhitePeace", CFG.getPrecision2(GameValues.peace.WAR_WHITE_PEACE_MIN_WAR_SCORE, 100) + str19), i9, height411111116, i21111119));
                int height411111117 = height411111116 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get(CvuNnwgYwe.uDQbjWBjKa), i9, height411111117, i21111119));
                int height41127 = height411111117 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("PeaceAnnex"), i9, height41127, i21111119));
                height3 = height41127 + arrayList.get(arrayList.size() - 1).getHeight();
            }
            if (z2 == 0) {
                arrayList.add(new AnonymousClass32(Game.lang.get("Siege"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height411111118 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i22111110 = i - (i9 * 2);
                arrayList.add(new AnonymousClass33(Game.lang.get("SiegeProgress"), Images.siege, i9, height411111118, i22111110, i12, width3, CFG.FONT_BOLD));
                int height411111119 = height411111118 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass34(Game.lang.get("DailySiegeProgressIsTheSumOfTheSiegeAbilitiesOfAllUnitsInvolvedInTheSiege"), i9, height411111119, i22111110));
                int height4111111110 = height411111119 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass35(Game.lang.get("TheSiegeEndsWhenTheProgressReachesTheProvincesDefense"), i9, height4111111110, i22111110));
                int height4111111111 = height4111111110 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass36(Game.lang.get("AfterASuccessfulSiegeAllNeighboringProvincesWithoutDefensiveBuildingsWillBeOccupied"), i9, height4111111111, i22111110));
                int height421110 = height4111111111 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                arrayList.add(new Text_Desc(Game.lang.get("MinimumArmyRequiredToSiegeProvinceX", CFG.getPrecision2(GameValues.siege.SIEGE_REGIMENTS_MIN * Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE, 1)), i9, height421110, i22111110));
                height3 = height421110 + arrayList.get(arrayList.size() - 1).getHeight();
            } else {
                arrayList.add(new AnonymousClass32(Game.lang.get("Siege"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height4111111112 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i22111111 = i - (i9 * 2);
                arrayList.add(new AnonymousClass33(Game.lang.get("SiegeProgress"), Images.siege, i9, height4111111112, i22111111, i12, width3, CFG.FONT_BOLD));
                int height4111111113 = height4111111112 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass34(Game.lang.get("DailySiegeProgressIsTheSumOfTheSiegeAbilitiesOfAllUnitsInvolvedInTheSiege"), i9, height4111111113, i22111111));
                int height4111111114 = height4111111113 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass35(Game.lang.get("TheSiegeEndsWhenTheProgressReachesTheProvincesDefense"), i9, height4111111114, i22111111));
                int height4111111115 = height4111111114 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass36(Game.lang.get("AfterASuccessfulSiegeAllNeighboringProvincesWithoutDefensiveBuildingsWillBeOccupied"), i9, height4111111115, i22111111));
                int height421111 = height4111111115 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                arrayList.add(new Text_Desc(Game.lang.get("MinimumArmyRequiredToSiegeProvinceX", CFG.getPrecision2(GameValues.siege.SIEGE_REGIMENTS_MIN * Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE, 1)), i9, height421111, i22111111));
                height3 = height421111 + arrayList.get(arrayList.size() - 1).getHeight();
            }
            if (z2 == 0) {
                arrayList.add(new AnonymousClass37(Game.lang.get("Fogofwar"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height421112 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i22111112 = i - (i9 * 2);
                arrayList.add(new AnonymousClass38(Game.lang.get("Fogofwar"), Images.provinces, i9, height421112, i22111112, i12, width3, CFG.FONT_BOLD));
                int height421113 = height421112 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("FogOfWarYouCanOnlyObserveActionsInYourOwnProvincesThoseOfYourAlliesAndSubjectsDirectlyBorderingProvincesAndWhatYourTroopsUncover"), i9, height421113, i22111112));
                height3 = height421113 + arrayList.get(arrayList.size() - 1).getHeight();
            } else {
                arrayList.add(new AnonymousClass37(Game.lang.get("Fogofwar"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height421114 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i22111113 = i - (i9 * 2);
                arrayList.add(new AnonymousClass38(Game.lang.get("Fogofwar"), Images.provinces, i9, height421114, i22111113, i12, width3, CFG.FONT_BOLD));
                int height421115 = height421114 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("FogOfWarYouCanOnlyObserveActionsInYourOwnProvincesThoseOfYourAlliesAndSubjectsDirectlyBorderingProvincesAndWhatYourTroopsUncover"), i9, height421115, i22111113));
                height3 = height421115 + arrayList.get(arrayList.size() - 1).getHeight();
            }
            if (z2 == 0) {
                arrayList.add(new Text_Title_v2(Game.lang.get("WarWeariness"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height51111110 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i22111114 = i - (i9 * 2);
                arrayList.add(new AnonymousClass39(Game.lang.get("WarWeariness"), Images.weariness, i9, height51111110, i22111114, i12, width3, CFG.FONT_BOLD));
                int height51111111 = height51111110 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("WarWearinessH1"), i9, height51111111, i22111114));
                int height51111112 = height51111111 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("WarWearinessH2"), i9, height51111112, i22111114));
                height3 = height51111112 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                arrayList.add(new Text_Title_v2(Game.lang.get("WarWeariness"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height51111113 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i22111115 = i - (i9 * 2);
                arrayList.add(new AnonymousClass39(Game.lang.get("WarWeariness"), Images.weariness, i9, height51111113, i22111115, i12, width3, CFG.FONT_BOLD));
                int height51111114 = height51111113 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("WarWearinessH1"), i9, height51111114, i22111115));
                int height51111115 = height51111114 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("WarWearinessH2"), i9, height51111115, i22111115));
                height3 = height51111115 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                arrayList.add(new Text_Title_v2(Game.lang.get("Diplomacy"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height51111116 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i22111116 = i - (i9 * 2);
                arrayList.add(new ButtonStatsRectIMG(Game.lang.get("Diplomacy"), Images.diplomacy, i9, height51111116, i22111116, i12, width3, CFG.FONT_BOLD));
                int height51111117 = height51111116 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("DifferentGovReligion"), i9, height51111117, i22111116));
                height3 = height51111117 + arrayList.get(arrayList.size() - 1).getHeight();
            } else {
                arrayList.add(new Text_Title_v2(Game.lang.get("Diplomacy"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height51111118 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i22111117 = i - (i9 * 2);
                arrayList.add(new ButtonStatsRectIMG(Game.lang.get("Diplomacy"), Images.diplomacy, i9, height51111118, i22111117, i12, width3, CFG.FONT_BOLD));
                int height51111119 = height51111118 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("DifferentGovReligion"), i9, height51111119, i22111117));
                height3 = height51111119 + arrayList.get(arrayList.size() - 1).getHeight();
            }
            if (z2 == 0) {
                arrayList.add(new AnonymousClass40(Game.lang.get("CivilizationStability"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height52111110 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i22111118 = i - (i9 * 2);
                arrayList.add(new AnonymousClass41(Game.lang.get("CivilizationStability"), Images.civStability, i9, height52111110, i22111118, i12, width3, CFG.FONT_BOLD));
                int height52111111 = height52111110 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass42(Game.lang.get("CivilizationStabilityReflectsThePercentageOfYourProvincesWithLegitimateClaimsComparedToThoseWithoutAndTakesIntoAccountYourReligiousUnity"), i9, height52111111, i22111118));
                height3 = height52111111 + arrayList.get(arrayList.size() - 1).getHeight();
            } else {
                arrayList.add(new AnonymousClass40(Game.lang.get("CivilizationStability"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height52111112 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i22111119 = i - (i9 * 2);
                arrayList.add(new AnonymousClass41(Game.lang.get("CivilizationStability"), Images.civStability, i9, height52111112, i22111119, i12, width3, CFG.FONT_BOLD));
                int height52111113 = height52111112 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass42(Game.lang.get("CivilizationStabilityReflectsThePercentageOfYourProvincesWithLegitimateClaimsComparedToThoseWithoutAndTakesIntoAccountYourReligiousUnity"), i9, height52111113, i22111119));
                height3 = height52111113 + arrayList.get(arrayList.size() - 1).getHeight();
            }
            if (z2 == 0) {
                arrayList.add(new AnonymousClass43(Game.lang.get("Province"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height52111114 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i31111110 = i - (i9 * 2);
                arrayList.add(new AnonymousClass44(Game.lang.get("ProvinceMonthlyIncome"), Images.gold, i9, height52111114, i31111110, i12, width3, CFG.FONT_BOLD));
                int height52111115 = height52111114 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass45(Game.lang.get("Income0"), i9, height52111115, i31111110));
                int height52111116 = height52111115 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass46(Game.lang.get("Income1"), i9, height52111116, i31111110));
                height3 = height52111116 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                arrayList.add(new AnonymousClass43(Game.lang.get("Province"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height52111117 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i31111111 = i - (i9 * 2);
                arrayList.add(new AnonymousClass44(Game.lang.get("ProvinceMonthlyIncome"), Images.gold, i9, height52111117, i31111111, i12, width3, CFG.FONT_BOLD));
                int height52111118 = height52111117 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass45(Game.lang.get("Income0"), i9, height52111118, i31111111));
                int height52111119 = height52111118 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass46(Game.lang.get("Income1"), i9, height52111119, i31111111));
                height3 = height52111119 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                int i31111112 = i - (i9 * 2);
                arrayList.add(new AnonymousClass47(Game.lang.get("TaxEfficiency"), Images.tax, i9, height3, i31111112, i12, width3, CFG.FONT_BOLD));
                int height61111120 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass48(Game.lang.get("TaxEfficiency0"), i9, height61111120, i31111112));
                height3 = height61111120 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i31111113 = i - (i9 * 2);
                arrayList.add(new AnonymousClass47(Game.lang.get("TaxEfficiency"), Images.tax, i9, height3, i31111113, i12, width3, CFG.FONT_BOLD));
                int height61111121 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass48(Game.lang.get("TaxEfficiency0"), i9, height61111121, i31111113));
                height3 = height61111121 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                int i31111114 = i - (i9 * 2);
                arrayList.add(new AnonymousClass49(Game.lang.get("EconomyOfProvince"), Game_Calendar.IMG_ECONOMY, i9, height3, i31111114, i12, width3, CFG.FONT_BOLD));
                int height611111110 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass50(Game.lang.get("Economy0"), i9, height611111110, i31111114));
                int height611111111 = height611111110 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass51(Game.lang.get("Economy1"), i9, height611111111, i31111114));
                height3 = height611111111 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i31111115 = i - (i9 * 2);
                arrayList.add(new AnonymousClass49(Game.lang.get("EconomyOfProvince"), Game_Calendar.IMG_ECONOMY, i9, height3, i31111115, i12, width3, CFG.FONT_BOLD));
                int height611111112 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass50(Game.lang.get("Economy0"), i9, height611111112, i31111115));
                int height611111113 = height611111112 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass51(Game.lang.get("Economy1"), i9, height611111113, i31111115));
                height3 = height611111113 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                int i31111116 = i - (i9 * 2);
                arrayList.add(new AnonymousClass52(Game.lang.get("ProducedGoods"), Images.goods, i9, height3, i31111116, i12, width3, CFG.FONT_BOLD));
                int height611111114 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass53(Game.lang.get("Production0"), i9, height611111114, i31111116));
                int height611111115 = height611111114 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass54(Game.lang.get("Production1"), i9, height611111115, i31111116));
                int height611111116 = height611111115 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass55(Game.lang.get("Production2"), i9, height611111116, i31111116));
                height3 = height611111116 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i31111117 = i - (i9 * 2);
                arrayList.add(new AnonymousClass52(Game.lang.get("ProducedGoods"), Images.goods, i9, height3, i31111117, i12, width3, CFG.FONT_BOLD));
                int height611111117 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass53(Game.lang.get("Production0"), i9, height611111117, i31111117));
                int height611111118 = height611111117 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass54(Game.lang.get("Production1"), i9, height611111118, i31111117));
                int height611111119 = height611111118 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass55(Game.lang.get("Production2"), i9, height611111119, i31111117));
                height3 = height611111119 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                int i31111118 = i - (i9 * 2);
                arrayList.add(new AnonymousClass56(Game.lang.get("Population"), Images.population, i9, height3, i31111118, i12, width3, CFG.FONT_BOLD));
                int height6211110 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass57(Game.lang.get("Population0"), i9, height6211110, i31111118));
                int height6211111 = height6211110 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass58(Game.lang.get("ThePopulationWillSlowlyAssimilateIfTheCivilizationHasACore"), i9, height6211111, i31111118));
                height3 = height6211111 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i31111119 = i - (i9 * 2);
                arrayList.add(new AnonymousClass56(Game.lang.get("Population"), Images.population, i9, height3, i31111119, i12, width3, CFG.FONT_BOLD));
                int height6211112 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass57(Game.lang.get("Population0"), i9, height6211112, i31111119));
                int height6211113 = height6211112 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass58(Game.lang.get("ThePopulationWillSlowlyAssimilateIfTheCivilizationHasACore"), i9, height6211113, i31111119));
                height3 = height6211113 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                int i32111110 = i - (i9 * 2);
                arrayList.add(new AnonymousClass59(Game.lang.get("GrowthRate"), Images.populationGrowth, i9, height3, i32111110, i12, width3, CFG.FONT_BOLD));
                int height6211114 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass60(Game.lang.get("GrowthRate0"), i9, height6211114, i32111110));
                height3 = height6211114 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i32111111 = i - (i9 * 2);
                arrayList.add(new AnonymousClass59(Game.lang.get("GrowthRate"), Images.populationGrowth, i9, height3, i32111111, i12, width3, CFG.FONT_BOLD));
                int height6211115 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass60(Game.lang.get("GrowthRate0"), i9, height6211115, i32111111));
                height3 = height6211115 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                int i32111112 = i - (i9 * 2);
                arrayList.add(new AnonymousClass61(Game.lang.get("Diseases"), Images.disease, i9, height3, i32111112, i12, width3, CFG.FONT_BOLD));
                int height6211116 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass62(Game.lang.get("Plague0"), i9, height6211116, i32111112));
                int height71111110 = height6211116 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("Plague1"), i9, height71111110, i32111112));
                height3 = height71111110 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i32111113 = i - (i9 * 2);
                arrayList.add(new AnonymousClass61(Game.lang.get("Diseases"), Images.disease, i9, height3, i32111113, i12, width3, CFG.FONT_BOLD));
                int height6211117 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass62(Game.lang.get("Plague0"), i9, height6211117, i32111113));
                int height71111111 = height6211117 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("Plague1"), i9, height71111111, i32111113));
                height3 = height71111111 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                arrayList.add(new AnonymousClass63(Game.lang.get("LegacyPoints"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height71111112 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i32111114 = i - (i9 * 2);
                arrayList.add(new AnonymousClass64(Game.lang.get("Legacy"), Images.legacy, i9, height71111112, i32111114, i12, width3, CFG.FONT_BOLD));
                int height71111113 = height71111112 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("Legacy0"), i9, height71111113, i32111114));
                int height71111114 = height71111113 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass65(Game.lang.get("Legacy1"), i9, height71111114, i32111114));
                int height71111115 = height71111114 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("Legacy2"), i9, height71111115, i32111114));
                height3 = height71111115 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                arrayList.add(new AnonymousClass63(Game.lang.get("LegacyPoints"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height71111116 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i32111115 = i - (i9 * 2);
                arrayList.add(new AnonymousClass64(Game.lang.get("Legacy"), Images.legacy, i9, height71111116, i32111115, i12, width3, CFG.FONT_BOLD));
                int height71111117 = height71111116 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("Legacy0"), i9, height71111117, i32111115));
                int height71111118 = height71111117 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass65(Game.lang.get("Legacy1"), i9, height71111118, i32111115));
                int height71111119 = height71111118 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("Legacy2"), i9, height71111119, i32111115));
                height3 = height71111119 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                arrayList.add(new AnonymousClass66(Game.lang.get(GameValues.court.COUNCIL_NAME), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height72111110 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i32111116 = i - (i9 * 2);
                arrayList.add(new AnonymousClass67(Game.lang.get("Advisors"), Images.council, i9, height72111110, i32111116, i12, width3, CFG.FONT_BOLD));
                int height72111111 = height72111110 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass68(Game.lang.get(gpVDKipRURuzw.fPT), i9, height72111111, i32111116));
                height3 = height72111111 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                arrayList.add(new AnonymousClass66(Game.lang.get(GameValues.court.COUNCIL_NAME), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height72111112 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i32111117 = i - (i9 * 2);
                arrayList.add(new AnonymousClass67(Game.lang.get("Advisors"), Images.council, i9, height72111112, i32111117, i12, width3, CFG.FONT_BOLD));
                int height72111113 = height72111112 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass68(Game.lang.get(gpVDKipRURuzw.fPT), i9, height72111113, i32111117));
                height3 = height72111113 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                arrayList.add(new AnonymousClass69(Game.lang.get("Corruption"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height72111114 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i32111118 = i - (i9 * 2);
                arrayList.add(new AnonymousClass70(Game.lang.get("SupremeCourt"), Images.corruption, i9, height72111114, i32111118, i12, width3, CFG.FONT_BOLD));
                int height72111115 = height72111114 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("Corruption0"), i9, height72111115, i32111118));
                height3 = height72111115 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                arrayList.add(new AnonymousClass69(Game.lang.get("Corruption"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height72111116 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i32111119 = i - (i9 * 2);
                arrayList.add(new AnonymousClass70(Game.lang.get("SupremeCourt"), Images.corruption, i9, height72111116, i32111119, i12, width3, CFG.FONT_BOLD));
                int height72111117 = height72111116 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("Corruption0"), i9, height72111117, i32111119));
                height3 = height72111117 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                arrayList.add(new AnonymousClass71(Game.lang.get("Technologies"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height72111118 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i4111118 = i - (i9 * 2);
                arrayList.add(new ButtonStatsRectIMG(Game.lang.get("Research"), Game_Calendar.IMG_TECHNOLOGY, i9, height72111118, i4111118, i12, width3, CFG.FONT_BOLD));
                int height81111110 = height72111118 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get(XjthpFh.rtD), i9, height81111110, i4111118));
                int height81111111 = height81111110 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass72(Game.lang.get("Technology1"), i9, height81111111, i4111118));
                height3 = height81111111 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                arrayList.add(new AnonymousClass71(Game.lang.get("Technologies"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height72111119 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i4111119 = i - (i9 * 2);
                arrayList.add(new ButtonStatsRectIMG(Game.lang.get("Research"), Game_Calendar.IMG_TECHNOLOGY, i9, height72111119, i4111119, i12, width3, CFG.FONT_BOLD));
                int height81111112 = height72111119 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get(XjthpFh.rtD), i9, height81111112, i4111119));
                int height81111113 = height81111112 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass72(Game.lang.get("Technology1"), i9, height81111113, i4111119));
                height3 = height81111113 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2 == 0) {
                int i41111110 = i - (i9 * 2);
                arrayList.add(new AnonymousClass73(Game.lang.get("CivilizationAdvantages"), Images.advantages, i9, height3, i41111110, i12, width3, CFG.FONT_BOLD));
                int height81111114 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("EachTimeYouUnlockATechnologyYouWillGainOneAdvantagePointThatYouCanExchangeForABonus"), i9, height81111114, i41111110));
                height3 = height81111114 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                int i41111111 = i - (i9 * 2);
                arrayList.add(new AnonymousClass73(Game.lang.get("CivilizationAdvantages"), Images.advantages, i9, height3, i41111111, i12, width3, CFG.FONT_BOLD));
                int height81111115 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new Text_Desc(Game.lang.get("EachTimeYouUnlockATechnologyYouWillGainOneAdvantagePointThatYouCanExchangeForABonus"), i9, height81111115, i41111111));
                height3 = height81111115 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (z2) {
                arrayList.add(new Text_Title_v2(Game.lang.get("CivilizationRank"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height81111116 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i41111112 = i - (i9 * 2);
                arrayList.add(new ButtonStatsRectIMG(Game.lang.get("CivilizationRank"), CivilizationRanking.getCivilizationRank_IMG(Game.getCiv(Game.player.iCivID).iCivRankID), i9, height81111116, i41111112, i12, width3, CFG.FONT_BOLD));
                height3 = height81111116 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                width = ImageManager.getImage(Images.council).getWidth() + (CFG.PADDING * 2);
                i2 = (i41111112 - CFG.PADDING) / 2;
                i3 = 0;
                while (i3 < GameValues.civRank.CIV_RANK_MANPOWER_MAX.length) {
                    if (i3 % 2 == 0) {
                        i5 = i9;
                    } else {
                        i5 = CFG.PADDING + i9 + i2;
                    }
                    arrayList.add(new AnonymousClass74(CivilizationRanking.getCivilizationRank_Name(i3), CivilizationRanking.getCivilizationRank_IMG(i3), i5, height3, i2, CFG.BUTTON_HEIGHT3, width));
                    arrayList.get(arrayList.size() - 1).setCurrent(i3);
                    i3++;
                    if (i3 % 2 == 0) {
                        height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    }
                }
                size = arrayList.size();
                while (i4 < size) {
                    if (height3 < arrayList.get(i4).getPosY() + arrayList.get(i4).getHeight() + CFG.PADDING) {
                        height3 = arrayList.get(i4).getPosY() + arrayList.get(i4).getHeight() + CFG.PADDING;
                    }
                }
            } else {
                arrayList.add(new Text_Title_v2(Game.lang.get("CivilizationRank"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height81111117 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i41111113 = i - (i9 * 2);
                arrayList.add(new ButtonStatsRectIMG(Game.lang.get("CivilizationRank"), CivilizationRanking.getCivilizationRank_IMG(Game.getCiv(Game.player.iCivID).iCivRankID), i9, height81111117, i41111113, i12, width3, CFG.FONT_BOLD));
                height3 = height81111117 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                width = ImageManager.getImage(Images.council).getWidth() + (CFG.PADDING * 2);
                i2 = (i41111113 - CFG.PADDING) / 2;
                i3 = 0;
                while (i3 < GameValues.civRank.CIV_RANK_MANPOWER_MAX.length) {
                    if (i3 % 2 == 0) {
                        i5 = i9;
                    } else {
                        i5 = CFG.PADDING + i9 + i2;
                    }
                    arrayList.add(new AnonymousClass74(CivilizationRanking.getCivilizationRank_Name(i3), CivilizationRanking.getCivilizationRank_IMG(i3), i5, height3, i2, CFG.BUTTON_HEIGHT3, width));
                    arrayList.get(arrayList.size() - 1).setCurrent(i3);
                    i3++;
                    if (i3 % 2 == 0) {
                        height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    }
                }
                size = arrayList.size();
                while (i4 < size) {
                    if (height3 < arrayList.get(i4).getPosY() + arrayList.get(i4).getHeight() + CFG.PADDING) {
                        height3 = arrayList.get(i4).getPosY() + arrayList.get(i4).getHeight() + CFG.PADDING;
                    }
                }
            }
            if (Game.menuManager.getInGame()) {
                arrayList.add(new Text_Title_v2(Game.lang.get("More"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
                int height81111118 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                if (CFG.isDesktop()) {
                    i8 = CFG.BUTTON_HEIGHT2;
                } else {
                    i8 = CFG.BUTTON_HEIGHT;
                }
                int i41111114 = i - (i9 * 2);
                int i41111115 = i8;
                arrayList.add(new AnonymousClass75(Game.lang.get("ListOfUnits"), Game_Calendar.IMG_MANPOWER, i9, height81111118, i41111114, i41111115, ImageManager.getImage(Images.advantages).getWidth() + (CFG.PADDING * 4), 0, 0L));
                int height81111119 = height81111118 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                arrayList.add(new AnonymousClass76(Game.lang.get("ListOfBuildings"), Images.buildings, i9, height81111119, i41111114, i41111115, ImageManager.getImage(Images.advantages).getWidth() + (CFG.PADDING * 4), 0, 0L));
                height3 = height81111119 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            int i41111116 = height3 + CFG.PADDING;
            int i41111117 = CFG.GAME_HEIGHT - height2;
            if (Game.menuManager.getInGame()) {
                height = CFG.GAME_HEIGHT - Game.menuManager.getInGame_MapModesPosY();
            } else {
                height = ImageManager.getImage(Images.buttonPlay).getHeight();
            }
            int iMin7 = Math.min(i41111116, i41111117 - (height + (CFG.PADDING * 3)));
            i6 = i;
            arrayList.add(new Empty(0, 0, i6, Math.max(i41111116, iMin7)));
            AnonymousClass77 anonymousClass713 = new AnonymousClass77(Game.lang.get("Encyclopedia"), false, false, Images.title500);
            if (Game.menuManager.getInGame()) {
                i7 = (CFG.GAME_WIDTH - i6) - (CFG.PADDING * 2);
            } else {
                i7 = CFG.PADDING * 2;
            }
            initMenu(anonymousClass713, i7, height2, i6, iMin7, arrayList, false, true);
            this.drawScrollPositionAlways = false;
        }
        str5 = str3;
        arrayList.add(new AnonymousClass13(Game.lang.get("Battles"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, width2 - (Images.boxTitleBORDERWIDTH * 2), i11));
        int height828 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i422 = width2 - (i9 * 2);
        arrayList.add(new AnonymousClass14(Game.lang.get("DeploymentPhase"), Game_Calendar.IMG_MANPOWER, i9, height828, i422, i12, width3, CFG.FONT_BOLD));
        int height829 = height828 + arrayList.get(arrayList.size() - 1).getHeight();
        arrayList.add(new AnonymousClass15(Game.lang.get(CvuNnwgYwe.FxjCfEgvZCvYNc), i9, height829, i422));
        int height8210 = height829 + arrayList.get(arrayList.size() - 1).getHeight();
        arrayList.add(new AnonymousClass16(Game.lang.get("DeploymentPhase1"), i9, height8210, i422));
        int height8211 = height8210 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int iMax5 = Math.max((ImageManager.getImage(Images.battleArmy0).getHeight() * 2) + (CFG.PADDING * 3), CFG.TEXT_HEIGHT + (CFG.PADDING * 6));
        i = width2;
        arrayList.add(InGame_RecruitArmy.getTitleFirstLine(height8211, i, iMax5));
        int height914 = height8211 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(InGame_RecruitArmy.getTitleFirstLineSide(height914, i, iMax5));
        int height915 = height914 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(InGame_RecruitArmy.getTitleSecondLine(height915, i, iMax5));
        int height916 = height915 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass17(Game.lang.get("DeploymentPhase2"), i9, height916, i422));
        height3 = height916 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        if (z2 == 0) {
            int i1111110 = i - (i9 * 2);
            arrayList.add(new AnonymousClass18(Game.lang.get("RoleOfGenerals"), Images.general, i9, height3, i1111110, i12, width3, CFG.FONT_BOLD));
            int height211111116 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass19(Game.lang.get("RoleOfGenerals0"), i9, height211111116, i1111110));
            int height211111117 = height211111116 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass20(Game.lang.get("RoleOfGenerals1"), i9, height211111117, i1111110));
            height3 = height211111117 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        } else {
            int i1111111 = i - (i9 * 2);
            arrayList.add(new AnonymousClass18(Game.lang.get("RoleOfGenerals"), Images.general, i9, height3, i1111111, i12, width3, CFG.FONT_BOLD));
            int height211111118 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass19(Game.lang.get("RoleOfGenerals0"), i9, height211111118, i1111111));
            int height211111119 = height211111118 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass20(Game.lang.get("RoleOfGenerals1"), i9, height211111119, i1111111));
            height3 = height211111119 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        if (z2 == 0) {
            int i1111112 = i - (i9 * 2);
            arrayList.add(new AnonymousClass21(Game.lang.get("Generals") + str4 + Game.lang.get("CombatExperience"), Images.general, i9, height3, i1111112, i12, width3, CFG.FONT_BOLD));
            int height211126 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("CombatExperienceDesc"), i9, height211126, i1111112));
            height3 = height211126 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        } else {
            int i1111113 = i - (i9 * 2);
            arrayList.add(new AnonymousClass21(Game.lang.get("Generals") + str4 + Game.lang.get("CombatExperience"), Images.general, i9, height3, i1111113, i12, width3, CFG.FONT_BOLD));
            int height211127 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("CombatExperienceDesc"), i9, height211127, i1111113));
            height3 = height211127 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        if (z2 == 0) {
            int i1111114 = i - (i9 * 2);
            arrayList.add(new AnonymousClass22(Game.lang.get("BattlePhase"), Images.battle, i9, height3, i1111114, i12, width3, CFG.FONT_BOLD));
            int height2111111110 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass23(Game.lang.get("BattlePhase0"), i9, height2111111110, i1111114));
            int height2111111111 = height2111111110 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass24(Game.lang.get("BattlePhase1"), i9, height2111111111, i1111114));
            int height2111111112 = height2111111111 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass25(Game.lang.get("BattlePhase2"), i9, height2111111112, i1111114));
            height3 = height2111111112 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        } else {
            int i1111115 = i - (i9 * 2);
            arrayList.add(new AnonymousClass22(Game.lang.get("BattlePhase"), Images.battle, i9, height3, i1111115, i12, width3, CFG.FONT_BOLD));
            int height2111111113 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass23(Game.lang.get("BattlePhase0"), i9, height2111111113, i1111115));
            int height2111111114 = height2111111113 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass24(Game.lang.get("BattlePhase1"), i9, height2111111114, i1111115));
            int height2111111115 = height2111111114 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass25(Game.lang.get("BattlePhase2"), i9, height2111111115, i1111115));
            height3 = height2111111115 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        if (z2 == 0) {
            int i211111110 = i - (i9 * 2);
            arrayList.add(new AnonymousClass26(Game.lang.get("MoraleAndRetreatMechanics"), Images.morale, i9, height3, i211111110, i12, width3, CFG.FONT_BOLD));
            int height221116 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass27(Game.lang.get("MoraleAndRetreatMechanics0"), i9, height221116, i211111110));
            int height221117 = height221116 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass28(Game.lang.get("MoraleAndRetreatMechanics1"), i9, height221117, i211111110));
            height3 = height221117 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        } else {
            int i211111111 = i - (i9 * 2);
            arrayList.add(new AnonymousClass26(Game.lang.get("MoraleAndRetreatMechanics"), Images.morale, i9, height3, i211111111, i12, width3, CFG.FONT_BOLD));
            int height221118 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass27(Game.lang.get("MoraleAndRetreatMechanics0"), i9, height221118, i211111111));
            int height221119 = height221118 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass28(Game.lang.get("MoraleAndRetreatMechanics1"), i9, height221119, i211111111));
            height3 = height221119 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        if (z2 == 0) {
            int i211111112 = i - (i9 * 2);
            arrayList.add(new AnonymousClass29(Game.lang.get("Discipline"), Images.discipline, i9, height3, i211111112, i12, width3, CFG.FONT_BOLD));
            int height311216 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass30(Game.lang.get("DisciplineSignifiesOrganizationAndCoordinationOfTheArmyInBattleIncreasingUnitsAttack"), i9, height311216, i211111112));
            height3 = height311216 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        } else {
            int i211111113 = i - (i9 * 2);
            arrayList.add(new AnonymousClass29(Game.lang.get("Discipline"), Images.discipline, i9, height3, i211111113, i12, width3, CFG.FONT_BOLD));
            int height311217 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass30(Game.lang.get("DisciplineSignifiesOrganizationAndCoordinationOfTheArmyInBattleIncreasingUnitsAttack"), i9, height311217, i211111113));
            height3 = height311217 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        if (z2 == 0) {
            int i211111114 = i - (i9 * 2);
            arrayList.add(new AnonymousClass31(Game.lang.get("DestructionOrSurvival"), Images.skull, i9, height3, i211111114, i12, width3, CFG.FONT_BOLD));
            int height311218 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("DestructionOrSurvival0", GameValues.battle.BATTLE_ARMY_DESTROYED_ROUND_ID), i9, height311218, i211111114));
            height3 = height311218 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        } else {
            int i211111115 = i - (i9 * 2);
            arrayList.add(new AnonymousClass31(Game.lang.get("DestructionOrSurvival"), Images.skull, i9, height3, i211111115, i12, width3, CFG.FONT_BOLD));
            int height311219 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("DestructionOrSurvival0", GameValues.battle.BATTLE_ARMY_DESTROYED_ROUND_ID), i9, height311219, i211111115));
            height3 = height311219 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        if (z2 == 0) {
            arrayList.add(new Text_Title_v2(Game.lang.get("Wars"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
            int height31111111110 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int i211111116 = i - (i9 * 2);
            arrayList.add(new ButtonStatsRectIMG(Game.lang.get("War"), Images.war, i9, height31111111110, i211111116, i12, width3, CFG.FONT_BOLD));
            int height31111111111 = height31111111110 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("ToDeclareWarTheRelationsBetweenCivilizationsMustBeBelowX", GameValues.war.RELATIONS_TO_DECLARE_WAR), i9, height31111111111, i211111116));
            int height31111111112 = height31111111111 + arrayList.get(arrayList.size() - 1).getHeight();
            str6 = r2;
            arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanProposeAWhitePeace", CFG.getPrecision2(GameValues.peace.WAR_WHITE_PEACE_MIN_WAR_SCORE, 100) + str6), i9, height31111111112, i211111116));
            int height31111111113 = height31111111112 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanMakeDemands", CFG.getPrecision2(GameValues.peace.WAR_MAKE_DEMANDS_MIN_WAR_SCORE, 100) + str6), i9, height31111111113, i211111116));
            int height31111111114 = height31111111113 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("EachMonthTheWinningSideGainsXOfTheTickingWarScoreBasedOnTheCurrentOverallWarScoreFromBattlesAndOccupiedProvinces", "X"), i9, height31111111114, i211111116));
            int height31111111115 = height31111111114 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("AWhitePeaceWillBeAutomaticallySignedIfThereIsNoActivityForACertainPeriodAndTheWarscoreRemainsLow"), i9, height31111111115, i211111116));
            height3 = height31111111115 + arrayList.get(arrayList.size() - 1).getHeight();
        } else {
            arrayList.add(new Text_Title_v2(Game.lang.get("Wars"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
            int height31111111116 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int i211111117 = i - (i9 * 2);
            arrayList.add(new ButtonStatsRectIMG(Game.lang.get("War"), Images.war, i9, height31111111116, i211111117, i12, width3, CFG.FONT_BOLD));
            int height31111111117 = height31111111116 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("ToDeclareWarTheRelationsBetweenCivilizationsMustBeBelowX", GameValues.war.RELATIONS_TO_DECLARE_WAR), i9, height31111111117, i211111117));
            int height31111111118 = height31111111117 + arrayList.get(arrayList.size() - 1).getHeight();
            str6 = r2;
            arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanProposeAWhitePeace", CFG.getPrecision2(GameValues.peace.WAR_WHITE_PEACE_MIN_WAR_SCORE, 100) + str6), i9, height31111111118, i211111117));
            int height31111111119 = height31111111118 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanMakeDemands", CFG.getPrecision2(GameValues.peace.WAR_MAKE_DEMANDS_MIN_WAR_SCORE, 100) + str6), i9, height31111111119, i211111117));
            int height311111111110 = height31111111119 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("EachMonthTheWinningSideGainsXOfTheTickingWarScoreBasedOnTheCurrentOverallWarScoreFromBattlesAndOccupiedProvinces", "X"), i9, height311111111110, i211111117));
            int height311111111111 = height311111111110 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("AWhitePeaceWillBeAutomaticallySignedIfThereIsNoActivityForACertainPeriodAndTheWarscoreRemainsLow"), i9, height311111111111, i211111117));
            height3 = height311111111111 + arrayList.get(arrayList.size() - 1).getHeight();
        }
        if (z2 == 0) {
            arrayList.add(new Text_Title_v2(Game.lang.get("PeaceNegotiations"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
            int height32114 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int i211111118 = i - (i9 * 2);
            String str110 = str6;
            arrayList.add(new ButtonStatsRectIMG(Game.lang.get(IlLkpaQxs.oPWPOdnXwgko), Images.peace, i9, height32114, i211111118, i12, width3, CFG.FONT_BOLD));
            int height32115 = height32114 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanMakeDemands", CFG.getPrecision2(GameValues.peace.WAR_MAKE_DEMANDS_MIN_WAR_SCORE, 100) + str110), i9, height32115, i211111118));
            int height4111111116 = height32115 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanProposeAWhitePeace", CFG.getPrecision2(GameValues.peace.WAR_WHITE_PEACE_MIN_WAR_SCORE, 100) + str110), i9, height4111111116, i211111118));
            int height4111111117 = height4111111116 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get(CvuNnwgYwe.uDQbjWBjKa), i9, height4111111117, i211111118));
            int height41128 = height4111111117 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("PeaceAnnex"), i9, height41128, i211111118));
            height3 = height41128 + arrayList.get(arrayList.size() - 1).getHeight();
        } else {
            arrayList.add(new Text_Title_v2(Game.lang.get("PeaceNegotiations"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
            int height32116 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int i211111119 = i - (i9 * 2);
            String str111 = str6;
            arrayList.add(new ButtonStatsRectIMG(Game.lang.get(IlLkpaQxs.oPWPOdnXwgko), Images.peace, i9, height32116, i211111119, i12, width3, CFG.FONT_BOLD));
            int height32117 = height32116 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanMakeDemands", CFG.getPrecision2(GameValues.peace.WAR_MAKE_DEMANDS_MIN_WAR_SCORE, 100) + str111), i9, height32117, i211111119));
            int height4111111118 = height32117 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("WithAWarScoreOfXTheWinningSideCanProposeAWhitePeace", CFG.getPrecision2(GameValues.peace.WAR_WHITE_PEACE_MIN_WAR_SCORE, 100) + str111), i9, height4111111118, i211111119));
            int height4111111119 = height4111111118 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get(CvuNnwgYwe.uDQbjWBjKa), i9, height4111111119, i211111119));
            int height41129 = height4111111119 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("PeaceAnnex"), i9, height41129, i211111119));
            height3 = height41129 + arrayList.get(arrayList.size() - 1).getHeight();
        }
        if (z2 == 0) {
            arrayList.add(new AnonymousClass32(Game.lang.get("Siege"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
            int height41111111110 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int i221111110 = i - (i9 * 2);
            arrayList.add(new AnonymousClass33(Game.lang.get("SiegeProgress"), Images.siege, i9, height41111111110, i221111110, i12, width3, CFG.FONT_BOLD));
            int height41111111111 = height41111111110 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass34(Game.lang.get("DailySiegeProgressIsTheSumOfTheSiegeAbilitiesOfAllUnitsInvolvedInTheSiege"), i9, height41111111111, i221111110));
            int height41111111112 = height41111111111 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass35(Game.lang.get("TheSiegeEndsWhenTheProgressReachesTheProvincesDefense"), i9, height41111111112, i221111110));
            int height41111111113 = height41111111112 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass36(Game.lang.get("AfterASuccessfulSiegeAllNeighboringProvincesWithoutDefensiveBuildingsWillBeOccupied"), i9, height41111111113, i221111110));
            int height421116 = height41111111113 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            arrayList.add(new Text_Desc(Game.lang.get("MinimumArmyRequiredToSiegeProvinceX", CFG.getPrecision2(GameValues.siege.SIEGE_REGIMENTS_MIN * Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE, 1)), i9, height421116, i221111110));
            height3 = height421116 + arrayList.get(arrayList.size() - 1).getHeight();
        } else {
            arrayList.add(new AnonymousClass32(Game.lang.get("Siege"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
            int height41111111114 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int i221111111 = i - (i9 * 2);
            arrayList.add(new AnonymousClass33(Game.lang.get("SiegeProgress"), Images.siege, i9, height41111111114, i221111111, i12, width3, CFG.FONT_BOLD));
            int height41111111115 = height41111111114 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass34(Game.lang.get("DailySiegeProgressIsTheSumOfTheSiegeAbilitiesOfAllUnitsInvolvedInTheSiege"), i9, height41111111115, i221111111));
            int height41111111116 = height41111111115 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass35(Game.lang.get("TheSiegeEndsWhenTheProgressReachesTheProvincesDefense"), i9, height41111111116, i221111111));
            int height41111111117 = height41111111116 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass36(Game.lang.get("AfterASuccessfulSiegeAllNeighboringProvincesWithoutDefensiveBuildingsWillBeOccupied"), i9, height41111111117, i221111111));
            int height421117 = height41111111117 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            arrayList.add(new Text_Desc(Game.lang.get("MinimumArmyRequiredToSiegeProvinceX", CFG.getPrecision2(GameValues.siege.SIEGE_REGIMENTS_MIN * Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE, 1)), i9, height421117, i221111111));
            height3 = height421117 + arrayList.get(arrayList.size() - 1).getHeight();
        }
        if (z2 == 0) {
            arrayList.add(new AnonymousClass37(Game.lang.get("Fogofwar"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
            int height421118 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int i221111112 = i - (i9 * 2);
            arrayList.add(new AnonymousClass38(Game.lang.get("Fogofwar"), Images.provinces, i9, height421118, i221111112, i12, width3, CFG.FONT_BOLD));
            int height421119 = height421118 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("FogOfWarYouCanOnlyObserveActionsInYourOwnProvincesThoseOfYourAlliesAndSubjectsDirectlyBorderingProvincesAndWhatYourTroopsUncover"), i9, height421119, i221111112));
            height3 = height421119 + arrayList.get(arrayList.size() - 1).getHeight();
        } else {
            arrayList.add(new AnonymousClass37(Game.lang.get("Fogofwar"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
            int height4211110 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int i221111113 = i - (i9 * 2);
            arrayList.add(new AnonymousClass38(Game.lang.get("Fogofwar"), Images.provinces, i9, height4211110, i221111113, i12, width3, CFG.FONT_BOLD));
            int height4211111 = height4211110 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("FogOfWarYouCanOnlyObserveActionsInYourOwnProvincesThoseOfYourAlliesAndSubjectsDirectlyBorderingProvincesAndWhatYourTroopsUncover"), i9, height4211111, i221111113));
            height3 = height4211111 + arrayList.get(arrayList.size() - 1).getHeight();
        }
        if (z2 == 0) {
            arrayList.add(new Text_Title_v2(Game.lang.get("WarWeariness"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
            int height511111110 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int i221111114 = i - (i9 * 2);
            arrayList.add(new AnonymousClass39(Game.lang.get("WarWeariness"), Images.weariness, i9, height511111110, i221111114, i12, width3, CFG.FONT_BOLD));
            int height511111111 = height511111110 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("WarWearinessH1"), i9, height511111111, i221111114));
            int height511111112 = height511111111 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("WarWearinessH2"), i9, height511111112, i221111114));
            height3 = height511111112 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        } else {
            arrayList.add(new Text_Title_v2(Game.lang.get("WarWeariness"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
            int height511111113 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int i221111115 = i - (i9 * 2);
            arrayList.add(new AnonymousClass39(Game.lang.get("WarWeariness"), Images.weariness, i9, height511111113, i221111115, i12, width3, CFG.FONT_BOLD));
            int height511111114 = height511111113 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("WarWearinessH1"), i9, height511111114, i221111115));
            int height511111115 = height511111114 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("WarWearinessH2"), i9, height511111115, i221111115));
            height3 = height511111115 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        if (z2 == 0) {
            arrayList.add(new Text_Title_v2(Game.lang.get("Diplomacy"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
            int height511111116 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int i221111116 = i - (i9 * 2);
            arrayList.add(new ButtonStatsRectIMG(Game.lang.get("Diplomacy"), Images.diplomacy, i9, height511111116, i221111116, i12, width3, CFG.FONT_BOLD));
            int height511111117 = height511111116 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("DifferentGovReligion"), i9, height511111117, i221111116));
            height3 = height511111117 + arrayList.get(arrayList.size() - 1).getHeight();
        } else {
            arrayList.add(new Text_Title_v2(Game.lang.get("Diplomacy"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
            int height511111118 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int i221111117 = i - (i9 * 2);
            arrayList.add(new ButtonStatsRectIMG(Game.lang.get("Diplomacy"), Images.diplomacy, i9, height511111118, i221111117, i12, width3, CFG.FONT_BOLD));
            int height511111119 = height511111118 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("DifferentGovReligion"), i9, height511111119, i221111117));
            height3 = height511111119 + arrayList.get(arrayList.size() - 1).getHeight();
        }
        if (z2 == 0) {
            arrayList.add(new AnonymousClass40(Game.lang.get("CivilizationStability"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
            int height521111110 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int i221111118 = i - (i9 * 2);
            arrayList.add(new AnonymousClass41(Game.lang.get("CivilizationStability"), Images.civStability, i9, height521111110, i221111118, i12, width3, CFG.FONT_BOLD));
            int height521111111 = height521111110 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass42(Game.lang.get("CivilizationStabilityReflectsThePercentageOfYourProvincesWithLegitimateClaimsComparedToThoseWithoutAndTakesIntoAccountYourReligiousUnity"), i9, height521111111, i221111118));
            height3 = height521111111 + arrayList.get(arrayList.size() - 1).getHeight();
        } else {
            arrayList.add(new AnonymousClass40(Game.lang.get("CivilizationStability"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
            int height521111112 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int i221111119 = i - (i9 * 2);
            arrayList.add(new AnonymousClass41(Game.lang.get("CivilizationStability"), Images.civStability, i9, height521111112, i221111119, i12, width3, CFG.FONT_BOLD));
            int height521111113 = height521111112 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass42(Game.lang.get("CivilizationStabilityReflectsThePercentageOfYourProvincesWithLegitimateClaimsComparedToThoseWithoutAndTakesIntoAccountYourReligiousUnity"), i9, height521111113, i221111119));
            height3 = height521111113 + arrayList.get(arrayList.size() - 1).getHeight();
        }
        if (z2 == 0) {
            arrayList.add(new AnonymousClass43(Game.lang.get("Province"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
            int height521111114 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int i311111110 = i - (i9 * 2);
            arrayList.add(new AnonymousClass44(Game.lang.get("ProvinceMonthlyIncome"), Images.gold, i9, height521111114, i311111110, i12, width3, CFG.FONT_BOLD));
            int height521111115 = height521111114 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass45(Game.lang.get("Income0"), i9, height521111115, i311111110));
            int height521111116 = height521111115 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass46(Game.lang.get("Income1"), i9, height521111116, i311111110));
            height3 = height521111116 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        } else {
            arrayList.add(new AnonymousClass43(Game.lang.get("Province"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
            int height521111117 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int i311111111 = i - (i9 * 2);
            arrayList.add(new AnonymousClass44(Game.lang.get("ProvinceMonthlyIncome"), Images.gold, i9, height521111117, i311111111, i12, width3, CFG.FONT_BOLD));
            int height521111118 = height521111117 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass45(Game.lang.get("Income0"), i9, height521111118, i311111111));
            int height521111119 = height521111118 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass46(Game.lang.get("Income1"), i9, height521111119, i311111111));
            height3 = height521111119 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        if (z2 == 0) {
            int i311111112 = i - (i9 * 2);
            arrayList.add(new AnonymousClass47(Game.lang.get("TaxEfficiency"), Images.tax, i9, height3, i311111112, i12, width3, CFG.FONT_BOLD));
            int height61111122 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass48(Game.lang.get("TaxEfficiency0"), i9, height61111122, i311111112));
            height3 = height61111122 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        } else {
            int i311111113 = i - (i9 * 2);
            arrayList.add(new AnonymousClass47(Game.lang.get("TaxEfficiency"), Images.tax, i9, height3, i311111113, i12, width3, CFG.FONT_BOLD));
            int height61111123 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass48(Game.lang.get("TaxEfficiency0"), i9, height61111123, i311111113));
            height3 = height61111123 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        if (z2 == 0) {
            int i311111114 = i - (i9 * 2);
            arrayList.add(new AnonymousClass49(Game.lang.get("EconomyOfProvince"), Game_Calendar.IMG_ECONOMY, i9, height3, i311111114, i12, width3, CFG.FONT_BOLD));
            int height6111111110 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass50(Game.lang.get("Economy0"), i9, height6111111110, i311111114));
            int height6111111111 = height6111111110 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass51(Game.lang.get("Economy1"), i9, height6111111111, i311111114));
            height3 = height6111111111 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        } else {
            int i311111115 = i - (i9 * 2);
            arrayList.add(new AnonymousClass49(Game.lang.get("EconomyOfProvince"), Game_Calendar.IMG_ECONOMY, i9, height3, i311111115, i12, width3, CFG.FONT_BOLD));
            int height6111111112 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass50(Game.lang.get("Economy0"), i9, height6111111112, i311111115));
            int height6111111113 = height6111111112 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass51(Game.lang.get("Economy1"), i9, height6111111113, i311111115));
            height3 = height6111111113 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        if (z2 == 0) {
            int i311111116 = i - (i9 * 2);
            arrayList.add(new AnonymousClass52(Game.lang.get("ProducedGoods"), Images.goods, i9, height3, i311111116, i12, width3, CFG.FONT_BOLD));
            int height6111111114 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass53(Game.lang.get("Production0"), i9, height6111111114, i311111116));
            int height6111111115 = height6111111114 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass54(Game.lang.get("Production1"), i9, height6111111115, i311111116));
            int height6111111116 = height6111111115 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass55(Game.lang.get("Production2"), i9, height6111111116, i311111116));
            height3 = height6111111116 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        } else {
            int i311111117 = i - (i9 * 2);
            arrayList.add(new AnonymousClass52(Game.lang.get("ProducedGoods"), Images.goods, i9, height3, i311111117, i12, width3, CFG.FONT_BOLD));
            int height6111111117 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass53(Game.lang.get("Production0"), i9, height6111111117, i311111117));
            int height6111111118 = height6111111117 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass54(Game.lang.get("Production1"), i9, height6111111118, i311111117));
            int height6111111119 = height6111111118 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass55(Game.lang.get("Production2"), i9, height6111111119, i311111117));
            height3 = height6111111119 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        if (z2 == 0) {
            int i311111118 = i - (i9 * 2);
            arrayList.add(new AnonymousClass56(Game.lang.get("Population"), Images.population, i9, height3, i311111118, i12, width3, CFG.FONT_BOLD));
            int height6211118 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass57(Game.lang.get("Population0"), i9, height6211118, i311111118));
            int height6211119 = height6211118 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass58(Game.lang.get("ThePopulationWillSlowlyAssimilateIfTheCivilizationHasACore"), i9, height6211119, i311111118));
            height3 = height6211119 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        } else {
            int i311111119 = i - (i9 * 2);
            arrayList.add(new AnonymousClass56(Game.lang.get("Population"), Images.population, i9, height3, i311111119, i12, width3, CFG.FONT_BOLD));
            int height62111110 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass57(Game.lang.get("Population0"), i9, height62111110, i311111119));
            int height62111111 = height62111110 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass58(Game.lang.get("ThePopulationWillSlowlyAssimilateIfTheCivilizationHasACore"), i9, height62111111, i311111119));
            height3 = height62111111 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        if (z2 == 0) {
            int i321111110 = i - (i9 * 2);
            arrayList.add(new AnonymousClass59(Game.lang.get("GrowthRate"), Images.populationGrowth, i9, height3, i321111110, i12, width3, CFG.FONT_BOLD));
            int height62111112 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass60(Game.lang.get("GrowthRate0"), i9, height62111112, i321111110));
            height3 = height62111112 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        } else {
            int i321111111 = i - (i9 * 2);
            arrayList.add(new AnonymousClass59(Game.lang.get("GrowthRate"), Images.populationGrowth, i9, height3, i321111111, i12, width3, CFG.FONT_BOLD));
            int height62111113 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass60(Game.lang.get("GrowthRate0"), i9, height62111113, i321111111));
            height3 = height62111113 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        if (z2 == 0) {
            int i321111112 = i - (i9 * 2);
            arrayList.add(new AnonymousClass61(Game.lang.get("Diseases"), Images.disease, i9, height3, i321111112, i12, width3, CFG.FONT_BOLD));
            int height62111114 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass62(Game.lang.get("Plague0"), i9, height62111114, i321111112));
            int height711111110 = height62111114 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("Plague1"), i9, height711111110, i321111112));
            height3 = height711111110 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        } else {
            int i321111113 = i - (i9 * 2);
            arrayList.add(new AnonymousClass61(Game.lang.get("Diseases"), Images.disease, i9, height3, i321111113, i12, width3, CFG.FONT_BOLD));
            int height62111115 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass62(Game.lang.get("Plague0"), i9, height62111115, i321111113));
            int height711111111 = height62111115 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("Plague1"), i9, height711111111, i321111113));
            height3 = height711111111 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        if (z2 == 0) {
            arrayList.add(new AnonymousClass63(Game.lang.get("LegacyPoints"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
            int height711111112 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int i321111114 = i - (i9 * 2);
            arrayList.add(new AnonymousClass64(Game.lang.get("Legacy"), Images.legacy, i9, height711111112, i321111114, i12, width3, CFG.FONT_BOLD));
            int height711111113 = height711111112 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("Legacy0"), i9, height711111113, i321111114));
            int height711111114 = height711111113 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass65(Game.lang.get("Legacy1"), i9, height711111114, i321111114));
            int height711111115 = height711111114 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("Legacy2"), i9, height711111115, i321111114));
            height3 = height711111115 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        } else {
            arrayList.add(new AnonymousClass63(Game.lang.get("LegacyPoints"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
            int height711111116 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int i321111115 = i - (i9 * 2);
            arrayList.add(new AnonymousClass64(Game.lang.get("Legacy"), Images.legacy, i9, height711111116, i321111115, i12, width3, CFG.FONT_BOLD));
            int height711111117 = height711111116 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("Legacy0"), i9, height711111117, i321111115));
            int height711111118 = height711111117 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass65(Game.lang.get("Legacy1"), i9, height711111118, i321111115));
            int height711111119 = height711111118 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("Legacy2"), i9, height711111119, i321111115));
            height3 = height711111119 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        if (z2 == 0) {
            arrayList.add(new AnonymousClass66(Game.lang.get(GameValues.court.COUNCIL_NAME), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
            int height721111110 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int i321111116 = i - (i9 * 2);
            arrayList.add(new AnonymousClass67(Game.lang.get("Advisors"), Images.council, i9, height721111110, i321111116, i12, width3, CFG.FONT_BOLD));
            int height721111111 = height721111110 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass68(Game.lang.get(gpVDKipRURuzw.fPT), i9, height721111111, i321111116));
            height3 = height721111111 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        } else {
            arrayList.add(new AnonymousClass66(Game.lang.get(GameValues.court.COUNCIL_NAME), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
            int height721111112 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int i321111117 = i - (i9 * 2);
            arrayList.add(new AnonymousClass67(Game.lang.get("Advisors"), Images.council, i9, height721111112, i321111117, i12, width3, CFG.FONT_BOLD));
            int height721111113 = height721111112 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass68(Game.lang.get(gpVDKipRURuzw.fPT), i9, height721111113, i321111117));
            height3 = height721111113 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        if (z2 == 0) {
            arrayList.add(new AnonymousClass69(Game.lang.get("Corruption"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
            int height721111114 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int i321111118 = i - (i9 * 2);
            arrayList.add(new AnonymousClass70(Game.lang.get("SupremeCourt"), Images.corruption, i9, height721111114, i321111118, i12, width3, CFG.FONT_BOLD));
            int height721111115 = height721111114 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("Corruption0"), i9, height721111115, i321111118));
            height3 = height721111115 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        } else {
            arrayList.add(new AnonymousClass69(Game.lang.get("Corruption"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
            int height721111116 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int i321111119 = i - (i9 * 2);
            arrayList.add(new AnonymousClass70(Game.lang.get("SupremeCourt"), Images.corruption, i9, height721111116, i321111119, i12, width3, CFG.FONT_BOLD));
            int height721111117 = height721111116 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("Corruption0"), i9, height721111117, i321111119));
            height3 = height721111117 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        if (z2 == 0) {
            arrayList.add(new AnonymousClass71(Game.lang.get("Technologies"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
            int height721111118 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int i41111118 = i - (i9 * 2);
            arrayList.add(new ButtonStatsRectIMG(Game.lang.get("Research"), Game_Calendar.IMG_TECHNOLOGY, i9, height721111118, i41111118, i12, width3, CFG.FONT_BOLD));
            int height811111110 = height721111118 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get(XjthpFh.rtD), i9, height811111110, i41111118));
            int height811111111 = height811111110 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass72(Game.lang.get("Technology1"), i9, height811111111, i41111118));
            height3 = height811111111 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        } else {
            arrayList.add(new AnonymousClass71(Game.lang.get("Technologies"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
            int height721111119 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int i41111119 = i - (i9 * 2);
            arrayList.add(new ButtonStatsRectIMG(Game.lang.get("Research"), Game_Calendar.IMG_TECHNOLOGY, i9, height721111119, i41111119, i12, width3, CFG.FONT_BOLD));
            int height811111112 = height721111119 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get(XjthpFh.rtD), i9, height811111112, i41111119));
            int height811111113 = height811111112 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new AnonymousClass72(Game.lang.get("Technology1"), i9, height811111113, i41111119));
            height3 = height811111113 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        if (z2 == 0) {
            int i411111110 = i - (i9 * 2);
            arrayList.add(new AnonymousClass73(Game.lang.get("CivilizationAdvantages"), Images.advantages, i9, height3, i411111110, i12, width3, CFG.FONT_BOLD));
            int height811111114 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("EachTimeYouUnlockATechnologyYouWillGainOneAdvantagePointThatYouCanExchangeForABonus"), i9, height811111114, i411111110));
            height3 = height811111114 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        } else {
            int i411111111 = i - (i9 * 2);
            arrayList.add(new AnonymousClass73(Game.lang.get("CivilizationAdvantages"), Images.advantages, i9, height3, i411111111, i12, width3, CFG.FONT_BOLD));
            int height811111115 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
            arrayList.add(new Text_Desc(Game.lang.get("EachTimeYouUnlockATechnologyYouWillGainOneAdvantagePointThatYouCanExchangeForABonus"), i9, height811111115, i411111111));
            height3 = height811111115 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        if (z2) {
            arrayList.add(new Text_Title_v2(Game.lang.get("CivilizationRank"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
            int height811111116 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int i411111112 = i - (i9 * 2);
            arrayList.add(new ButtonStatsRectIMG(Game.lang.get("CivilizationRank"), CivilizationRanking.getCivilizationRank_IMG(Game.getCiv(Game.player.iCivID).iCivRankID), i9, height811111116, i411111112, i12, width3, CFG.FONT_BOLD));
            height3 = height811111116 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            width = ImageManager.getImage(Images.council).getWidth() + (CFG.PADDING * 2);
            i2 = (i411111112 - CFG.PADDING) / 2;
            i3 = 0;
            while (i3 < GameValues.civRank.CIV_RANK_MANPOWER_MAX.length) {
                if (i3 % 2 == 0) {
                    i5 = i9;
                } else {
                    i5 = CFG.PADDING + i9 + i2;
                }
                arrayList.add(new AnonymousClass74(CivilizationRanking.getCivilizationRank_Name(i3), CivilizationRanking.getCivilizationRank_IMG(i3), i5, height3, i2, CFG.BUTTON_HEIGHT3, width));
                arrayList.get(arrayList.size() - 1).setCurrent(i3);
                i3++;
                if (i3 % 2 == 0) {
                    height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
            }
            size = arrayList.size();
            while (i4 < size) {
                if (height3 < arrayList.get(i4).getPosY() + arrayList.get(i4).getHeight() + CFG.PADDING) {
                    height3 = arrayList.get(i4).getPosY() + arrayList.get(i4).getHeight() + CFG.PADDING;
                }
            }
        } else {
            arrayList.add(new Text_Title_v2(Game.lang.get("CivilizationRank"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
            int height811111117 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int i411111113 = i - (i9 * 2);
            arrayList.add(new ButtonStatsRectIMG(Game.lang.get("CivilizationRank"), CivilizationRanking.getCivilizationRank_IMG(Game.getCiv(Game.player.iCivID).iCivRankID), i9, height811111117, i411111113, i12, width3, CFG.FONT_BOLD));
            height3 = height811111117 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            width = ImageManager.getImage(Images.council).getWidth() + (CFG.PADDING * 2);
            i2 = (i411111113 - CFG.PADDING) / 2;
            i3 = 0;
            while (i3 < GameValues.civRank.CIV_RANK_MANPOWER_MAX.length) {
                if (i3 % 2 == 0) {
                    i5 = i9;
                } else {
                    i5 = CFG.PADDING + i9 + i2;
                }
                arrayList.add(new AnonymousClass74(CivilizationRanking.getCivilizationRank_Name(i3), CivilizationRanking.getCivilizationRank_IMG(i3), i5, height3, i2, CFG.BUTTON_HEIGHT3, width));
                arrayList.get(arrayList.size() - 1).setCurrent(i3);
                i3++;
                if (i3 % 2 == 0) {
                    height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
            }
            size = arrayList.size();
            while (i4 < size) {
                if (height3 < arrayList.get(i4).getPosY() + arrayList.get(i4).getHeight() + CFG.PADDING) {
                    height3 = arrayList.get(i4).getPosY() + arrayList.get(i4).getHeight() + CFG.PADDING;
                }
            }
        }
        if (Game.menuManager.getInGame()) {
            arrayList.add(new Text_Title_v2(Game.lang.get("More"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), i11));
            int height811111118 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            if (CFG.isDesktop()) {
                i8 = CFG.BUTTON_HEIGHT2;
            } else {
                i8 = CFG.BUTTON_HEIGHT;
            }
            int i411111114 = i - (i9 * 2);
            int i411111115 = i8;
            arrayList.add(new AnonymousClass75(Game.lang.get("ListOfUnits"), Game_Calendar.IMG_MANPOWER, i9, height811111118, i411111114, i411111115, ImageManager.getImage(Images.advantages).getWidth() + (CFG.PADDING * 4), 0, 0L));
            int height811111119 = height811111118 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            arrayList.add(new AnonymousClass76(Game.lang.get("ListOfBuildings"), Images.buildings, i9, height811111119, i411111114, i411111115, ImageManager.getImage(Images.advantages).getWidth() + (CFG.PADDING * 4), 0, 0L));
            height3 = height811111119 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        int i411111116 = height3 + CFG.PADDING;
        int i411111117 = CFG.GAME_HEIGHT - height2;
        if (Game.menuManager.getInGame()) {
            height = CFG.GAME_HEIGHT - Game.menuManager.getInGame_MapModesPosY();
        } else {
            height = ImageManager.getImage(Images.buttonPlay).getHeight();
        }
        int iMin8 = Math.min(i411111116, i411111117 - (height + (CFG.PADDING * 3)));
        i6 = i;
        arrayList.add(new Empty(0, 0, i6, Math.max(i411111116, iMin8)));
        AnonymousClass77 anonymousClass714 = new AnonymousClass77(Game.lang.get("Encyclopedia"), false, false, Images.title500);
        if (Game.menuManager.getInGame()) {
            i7 = (CFG.GAME_WIDTH - i6) - (CFG.PADDING * 2);
        } else {
            i7 = CFG.PADDING * 2;
        }
        initMenu(anonymousClass714, i7, height2, i6, iMin8, arrayList, false, true);
        this.drawScrollPositionAlways = false;
    }

    public static boolean searchTexts(String str, String[] strArr) {
        for (int length = strArr.length - 1; length >= 0; length--) {
            if (Game.lang.get(strArr[length]).toLowerCase().indexOf(str) != -1) {
                return true;
            }
        }
        return false;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void actionCloseMenu() {
        super.actionCloseMenu();
        Game.keyboard.hideKeyboard();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3;
        if (lTime + 60 >= CFG.currentTimeMillis) {
            i3 = Game.menuManager.getInGame() ? (i + CFG.BUTTON_WIDTH) - ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - lTime) / 60.0f))) : (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - lTime) / 60.0f)));
        } else {
            i3 = i;
        }
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop500, Images.insideBot500);
        ImageManager.getImage(Images.civInfoOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.civInfoOver).getWidth() / 2)) + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.civInfoOver).getHeight()));
        super.draw(spriteBatch, i3, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
        if (z) {
            return;
        }
        Game.keyboard.hideKeyboard();
    }
}
