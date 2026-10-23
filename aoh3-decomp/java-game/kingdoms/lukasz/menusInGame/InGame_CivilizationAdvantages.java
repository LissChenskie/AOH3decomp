package aoc.kingdoms.lukasz.menusInGame;

import androidx.lifecycle.livedata.core.jzw.jkEBdieJhbh;
import aoc.kingdoms.lukasz.jakowski.AI.Advantages.AI_Advantages;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.map.AdvantagesManager;
import aoc.kingdoms.lukasz.map.allianceHRE.JgPF.HTGgowNjn;
import aoc.kingdoms.lukasz.map.plague.KMTV.fTNtCctcBZcqKK;
import aoc.kingdoms.lukasz.map.terrain.exjB.uiwPYaNhJS;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Empty_AdvantageBG;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Click;
import aoc.kingdoms.lukasz.menu_element.button.Button_Advantage2;
import aoc.kingdoms.lukasz.menu_element.button.Button_Advantage3;
import aoc.kingdoms.lukasz.menu_element.button.Button_Advantage_Title;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Clear;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2Center;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2_TextLR;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.DrawOver.SQ.XjthpFh;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.menusInGame.Technology.InGame_TechnologyChoose;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.net.otUh.aBEBOpwLZcQFCZ;
import com.badlogic.gdx.utils.compression.spWT.QefTqRjwAJmEDy;
import com.google.android.gms.internal.common.oss.ClXgFvsSKQc;
import com.google.android.gms.internal.tasks.Vhe.SwmJtrccN;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_CivilizationAdvantages extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int iActiveCivID = -1;
    public static int iActiveSortID = -1;
    public static int iMenuWidth;
    public static long lTime;
    public static long lTime2;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.iActiveSortID = 0;
            Game.menuManager.rebuildInGame_CivilizationAdvantages(InGame_CivilizationAdvantages.iActiveCivID);
            InGame_CivilizationAdvantages.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < AdvantagesManager.iAdvantagesSize; i3++) {
                if (AdvantagesManager.advantages.get(i3).GroupID == 0) {
                    if (Game.getCiv(InGame_CivilizationAdvantages.iActiveCivID).haveAdvantage(i3, 0)) {
                        i++;
                    }
                    if (Game.getCiv(InGame_CivilizationAdvantages.iActiveCivID).getTechResearched(AdvantagesManager.advantages.get(i3).RequiredTechID) || Game.getCiv(InGame_CivilizationAdvantages.iActiveCivID).haveAdvantage(i3, 0)) {
                        i2++;
                    }
                }
            }
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("AdministrativeAdvantages"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.government, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Advantages") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + i + " / " + i2, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.advantages, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Click, aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active, aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return InGame_CivilizationAdvantages.iActiveSortID == 0 ? Colors.HOVER_GOLD : super.getColor(z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$10, reason: invalid class name */
    class AnonymousClass10 extends Button_Advantage2 {
        AnonymousClass10(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$11, reason: invalid class name */
    class AnonymousClass11 extends Button_Advantage2 {
        AnonymousClass11(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$12, reason: invalid class name */
    class AnonymousClass12 extends Button_Advantage2 {
        AnonymousClass12(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$13, reason: invalid class name */
    class AnonymousClass13 extends Button_Advantage2 {
        AnonymousClass13(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$14, reason: invalid class name */
    class AnonymousClass14 extends Button_Advantage2 {
        AnonymousClass14(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$15, reason: invalid class name */
    class AnonymousClass15 extends Button_Advantage2 {
        AnonymousClass15(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$16, reason: invalid class name */
    class AnonymousClass16 extends Button_Advantage2 {
        AnonymousClass16(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$17, reason: invalid class name */
    class AnonymousClass17 extends Button_Advantage2 {
        AnonymousClass17(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$18, reason: invalid class name */
    class AnonymousClass18 extends Button_Advantage2 {
        AnonymousClass18(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$19, reason: invalid class name */
    class AnonymousClass19 extends Button_Advantage2 {
        AnonymousClass19(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.iActiveSortID = 1;
            Game.menuManager.rebuildInGame_CivilizationAdvantages(InGame_CivilizationAdvantages.iActiveCivID);
            InGame_CivilizationAdvantages.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < AdvantagesManager.iAdvantagesSize; i3++) {
                if (1 == AdvantagesManager.advantages.get(i3).GroupID) {
                    if (Game.getCiv(InGame_CivilizationAdvantages.iActiveCivID).haveAdvantage(i3, 0)) {
                        i++;
                    }
                    if (Game.getCiv(InGame_CivilizationAdvantages.iActiveCivID).getTechResearched(AdvantagesManager.advantages.get(i3).RequiredTechID) || Game.getCiv(InGame_CivilizationAdvantages.iActiveCivID).haveAdvantage(i3, 0)) {
                        i2++;
                    }
                }
            }
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("EconomicAdvantages"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_ECONOMY, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Advantages") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + i + " / " + i2, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.advantages, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Click, aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active, aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return InGame_CivilizationAdvantages.iActiveSortID == 1 ? Colors.HOVER_GOLD : super.getColor(z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$20, reason: invalid class name */
    class AnonymousClass20 extends Button_Advantage2 {
        AnonymousClass20(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$21, reason: invalid class name */
    class AnonymousClass21 extends Button_Advantage2 {
        AnonymousClass21(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$22, reason: invalid class name */
    class AnonymousClass22 extends Button_Advantage2 {
        AnonymousClass22(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$23, reason: invalid class name */
    class AnonymousClass23 extends Button_Advantage2 {
        AnonymousClass23(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$24, reason: invalid class name */
    class AnonymousClass24 extends Button_Advantage2 {
        AnonymousClass24(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$25, reason: invalid class name */
    class AnonymousClass25 extends Button_Advantage2 {
        AnonymousClass25(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$26, reason: invalid class name */
    class AnonymousClass26 extends Button_Advantage2 {
        AnonymousClass26(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$27, reason: invalid class name */
    class AnonymousClass27 extends Button_Advantage2 {
        AnonymousClass27(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$28, reason: invalid class name */
    class AnonymousClass28 extends Button_Advantage2 {
        AnonymousClass28(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$29, reason: invalid class name */
    class AnonymousClass29 extends Button_Advantage2 {
        AnonymousClass29(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.iActiveSortID = 2;
            Game.menuManager.rebuildInGame_CivilizationAdvantages(InGame_CivilizationAdvantages.iActiveCivID);
            InGame_CivilizationAdvantages.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < AdvantagesManager.iAdvantagesSize; i3++) {
                if (2 == AdvantagesManager.advantages.get(i3).GroupID) {
                    if (Game.getCiv(InGame_CivilizationAdvantages.iActiveCivID).haveAdvantage(i3, 0)) {
                        i++;
                    }
                    if (Game.getCiv(InGame_CivilizationAdvantages.iActiveCivID).getTechResearched(AdvantagesManager.advantages.get(i3).RequiredTechID) || Game.getCiv(InGame_CivilizationAdvantages.iActiveCivID).haveAdvantage(i3, 0)) {
                        i2++;
                    }
                }
            }
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("MilitaryAdvantages"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Advantages") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + i + " / " + i2, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.advantages, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Click, aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active, aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return InGame_CivilizationAdvantages.iActiveSortID == 2 ? Colors.HOVER_GOLD : super.getColor(z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$30, reason: invalid class name */
    class AnonymousClass30 extends Button_Advantage2 {
        AnonymousClass30(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$31, reason: invalid class name */
    class AnonymousClass31 extends Button_Advantage2 {
        AnonymousClass31(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$32, reason: invalid class name */
    class AnonymousClass32 extends Button_Advantage2 {
        AnonymousClass32(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$33, reason: invalid class name */
    class AnonymousClass33 extends Button_Advantage2 {
        AnonymousClass33(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$34, reason: invalid class name */
    class AnonymousClass34 extends Button_Advantage2 {
        AnonymousClass34(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$35, reason: invalid class name */
    class AnonymousClass35 extends Button_Advantage2 {
        AnonymousClass35(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$36, reason: invalid class name */
    class AnonymousClass36 extends Button_Advantage2 {
        AnonymousClass36(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$37, reason: invalid class name */
    class AnonymousClass37 extends Button_Advantage2 {
        AnonymousClass37(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$38, reason: invalid class name */
    class AnonymousClass38 extends Button_Advantage2 {
        AnonymousClass38(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$39, reason: invalid class name */
    class AnonymousClass39 extends Button_Advantage2 {
        AnonymousClass39(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.iActiveSortID = -1;
            Game.menuManager.rebuildInGame_CivilizationAdvantages(InGame_CivilizationAdvantages.iActiveCivID);
            InGame_CivilizationAdvantages.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < AdvantagesManager.iAdvantagesSize; i3++) {
                if (Game.getCiv(InGame_CivilizationAdvantages.iActiveCivID).haveAdvantage(i3, 0)) {
                    i++;
                }
                if (Game.getCiv(InGame_CivilizationAdvantages.iActiveCivID).getTechResearched(AdvantagesManager.advantages.get(i3).RequiredTechID) || Game.getCiv(InGame_CivilizationAdvantages.iActiveCivID).haveAdvantage(i3, 0)) {
                    i2++;
                }
            }
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("All"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.advantages, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Advantages") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + i + " / " + i2, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.advantages, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Click, aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active, aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return InGame_CivilizationAdvantages.iActiveSortID == -1 ? Colors.HOVER_GOLD : super.getColor(z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$40, reason: invalid class name */
    class AnonymousClass40 extends Button_Advantage2 {
        AnonymousClass40(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$41, reason: invalid class name */
    class AnonymousClass41 extends Button_Advantage2 {
        AnonymousClass41(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$42, reason: invalid class name */
    class AnonymousClass42 extends Button_Advantage2 {
        AnonymousClass42(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$43, reason: invalid class name */
    class AnonymousClass43 extends Button_Advantage2 {
        AnonymousClass43(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$44, reason: invalid class name */
    class AnonymousClass44 extends Button_Advantage2 {
        AnonymousClass44(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$45, reason: invalid class name */
    class AnonymousClass45 extends Button_Advantage2 {
        AnonymousClass45(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$46, reason: invalid class name */
    class AnonymousClass46 extends Button_Advantage2 {
        AnonymousClass46(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$47, reason: invalid class name */
    class AnonymousClass47 extends Button_Advantage2 {
        AnonymousClass47(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$48, reason: invalid class name */
    class AnonymousClass48 extends Button_Advantage2 {
        AnonymousClass48(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$49, reason: invalid class name */
    class AnonymousClass49 extends Button_Advantage2 {
        AnonymousClass49(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            int iTakeAdvantage_Player = AI_Advantages.takeAdvantage_Player(Game.player.iCivID);
            if (iTakeAdvantage_Player >= 0) {
                InGame_Info.iCivID = Game.player.iCivID;
                InGame_Info.iCivID2 = 0;
                Game.menuManager.rebuildInGame_Info(Game.lang.get("CivilizationAdvantage"), AdvantagesManager.getAdvantageName(iTakeAdvantage_Player) + " - " + Game.lang.get("Unlocked"));
                InGame_Info.imgID = Images.infoAdvantage;
            }
            Game.menuManager.rebuildInGame_CivilizationAdvantages_SavePos(Game.player.iCivID);
            InGame_CivilizationAdvantages.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("UnlockAdvantage") + ": ", CFG.FONT_BOLD, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.lang.get("Random"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.advantages, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$50, reason: invalid class name */
    class AnonymousClass50 extends Button_Advantage2 {
        AnonymousClass50(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$51, reason: invalid class name */
    class AnonymousClass51 extends Button_Advantage2 {
        AnonymousClass51(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$52, reason: invalid class name */
    class AnonymousClass52 extends Button_Advantage2 {
        AnonymousClass52(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$53, reason: invalid class name */
    class AnonymousClass53 extends Button_Advantage2 {
        AnonymousClass53(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$54, reason: invalid class name */
    class AnonymousClass54 extends Button_Advantage2 {
        AnonymousClass54(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$55, reason: invalid class name */
    class AnonymousClass55 extends Button_Advantage2 {
        AnonymousClass55(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$56, reason: invalid class name */
    class AnonymousClass56 extends Button_Advantage2 {
        AnonymousClass56(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$57, reason: invalid class name */
    class AnonymousClass57 extends Button_Advantage2 {
        AnonymousClass57(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$58, reason: invalid class name */
    class AnonymousClass58 extends Button_Advantage2 {
        AnonymousClass58(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$59, reason: invalid class name */
    class AnonymousClass59 extends Button_Advantage2 {
        AnonymousClass59(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_Civ_UnlockedTechnologies();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.getCiv(InGame_CivilizationAdvantages.iActiveCivID).getCivName() + ": " + Game.lang.get("UnlockedTechnologies"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$60, reason: invalid class name */
    class AnonymousClass60 extends Button_Advantage2 {
        AnonymousClass60(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$61, reason: invalid class name */
    class AnonymousClass61 extends Button_Advantage2 {
        AnonymousClass61(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$62, reason: invalid class name */
    class AnonymousClass62 extends Button_Advantage2 {
        AnonymousClass62(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$63, reason: invalid class name */
    class AnonymousClass63 extends Button_Advantage2 {
        AnonymousClass63(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$64, reason: invalid class name */
    class AnonymousClass64 extends Button_Advantage2 {
        AnonymousClass64(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$65, reason: invalid class name */
    class AnonymousClass65 extends Button_Advantage2 {
        AnonymousClass65(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$66, reason: invalid class name */
    class AnonymousClass66 extends Button_Advantage2 {
        AnonymousClass66(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$67, reason: invalid class name */
    class AnonymousClass67 extends Button_Advantage2 {
        AnonymousClass67(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$68, reason: invalid class name */
    class AnonymousClass68 extends Button_Advantage2 {
        AnonymousClass68(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$69, reason: invalid class name */
    class AnonymousClass69 extends Button_Advantage2 {
        AnonymousClass69(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$7, reason: invalid class name */
    class AnonymousClass7 extends Button_Advantage2 {
        AnonymousClass7(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$70, reason: invalid class name */
    class AnonymousClass70 extends Button_Advantage2 {
        AnonymousClass70(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$71, reason: invalid class name */
    class AnonymousClass71 extends Button_Advantage2 {
        AnonymousClass71(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$72, reason: invalid class name */
    class AnonymousClass72 extends Button_Advantage2 {
        AnonymousClass72(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$73, reason: invalid class name */
    class AnonymousClass73 extends Button_Advantage2 {
        AnonymousClass73(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$74, reason: invalid class name */
    class AnonymousClass74 extends Button_Advantage2 {
        AnonymousClass74(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$75, reason: invalid class name */
    class AnonymousClass75 extends MenuTitleIMG_FlagCenter {
        AnonymousClass75(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter
        public int getFlagCivID() {
            return InGame_CivilizationAdvantages.iActiveCivID;
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_CivilizationAdvantages.lTime2;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$8, reason: invalid class name */
    class AnonymousClass8 extends Button_Advantage2 {
        AnonymousClass8(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages$9, reason: invalid class name */
    class AnonymousClass9 extends Button_Advantage2 {
        AnonymousClass9(int i, int i2, int i3, int i4, String str, String str2, int i5) {
            super(i, i2, i3, i4, str, str2, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CivilizationAdvantages.this.actionUnlock(getValue1(), getValue2(), getTextToDraw());
        }
    }

    /* JADX WARN: Multi-variable search skipped. Vars limit reached: 5192 (expected less than 5000) */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r15v4 */
    public InGame_CivilizationAdvantages(int i) {
        int i2;
        String str;
        String str2;
        int height;
        ?? r15;
        int height2;
        int i3;
        String str3;
        int i4;
        int i5;
        int i6;
        int i7;
        ArrayList arrayList = new ArrayList();
        iActiveCivID = i;
        int i8 = Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2);
        int i9 = Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2);
        ImageManager.getImage(Images.title500).getHeight();
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        iMenuWidth = width - (Images.boxTitleBORDERWIDTH * 2);
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height3 = ImageManager.getImage(Images.title500).getHeight() + ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i10 = CFG.PADDING + (CFG.PADDING / 2);
        int i11 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
        InGame_TechnologyChoose.IN_TECHNOLOGY_CHOOSE = false;
        if (iActiveCivID == Game.player.iCivID) {
            arrayList.add(new Text_Title_v2Center(Game.lang.get("GroupsOfAdvantages"), -1, CFG.FONT_BOLD, Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
            int height4 = arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING + 0;
            int i12 = width - (i9 * 2);
            i2 = 1;
            arrayList.add(new AnonymousClass1(Game.lang.get("Administrative"), Images.government, i9, height4, (i12 - CFG.PADDING) / 2, i11, ImageManager.getImage(Game_Calendar.IMG_MANPOWER).getWidth(), 0, iActiveSortID == 0 ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL));
            arrayList.add(new AnonymousClass2(Game.lang.get("Economic"), Game_Calendar.IMG_ECONOMY, ((i12 - CFG.PADDING) / 2) + i9 + CFG.PADDING, height4, (i12 - CFG.PADDING) / 2, i11, ImageManager.getImage(Game_Calendar.IMG_MANPOWER).getWidth(), 0, iActiveSortID == 1 ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL));
            int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            arrayList.add(new AnonymousClass3(Game.lang.get("Military"), Game_Calendar.IMG_MANPOWER, i9, height5, (i12 - CFG.PADDING) / 2, i11, ImageManager.getImage(Game_Calendar.IMG_MANPOWER).getWidth(), 0, iActiveSortID == 2 ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL));
            arrayList.add(new AnonymousClass4(Game.lang.get("All"), Images.advantages, ((i12 - CFG.PADDING) / 2) + i9 + CFG.PADDING, height5, (i12 - CFG.PADDING) / 2, i11, ImageManager.getImage(Game_Calendar.IMG_MANPOWER).getWidth(), 0, iActiveSortID == -1 ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL));
            int height6 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            if (Game.getCiv(Game.player.iCivID).getAdvantagePoints() > 0) {
                arrayList.add(new Text_Title_v2_TextLR(Game.lang.get("Advantages"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height6, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ""));
                int height7 = height6 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                str = ": ";
                arrayList.add(new AnonymousClass5(Game.lang.get("UnlockAdvantage") + ": " + Game.lang.get("Random"), Images.advantages, i9, height7, i12, i11, ImageManager.getImage(Game_Calendar.IMG_MANPOWER).getWidth(), 0, iActiveSortID == 0 ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL));
                height6 = height7 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                str = ": ";
            }
            height = height6;
            str2 = "CivilizationAdvantages";
        } else {
            i2 = 1;
            str = ": ";
            int i13 = CFG.PADDING + 0;
            str2 = "CivilizationAdvantages";
            arrayList.add(new AnonymousClass6(Game.lang.get("CivilizationAdvantages") + str + Game.getCiv(iActiveCivID).iAdvantagesSize, Images.advantages, i9, i13, width - (i9 * 2), i11, ImageManager.getImage(Images.advantages).getWidth(), 0));
            height = i13 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        int i14 = CFG.TEXT_HEIGHT + (CFG.PADDING * 5);
        ArrayList arrayList2 = new ArrayList();
        int i15 = 0;
        while (i15 < AdvantagesManager.iAdvantagesSize) {
            if (iActiveCivID != Game.player.iCivID ? Game.getCiv(iActiveCivID).haveAdvantage(i15, 0) : ((i7 = iActiveSortID) < 0 || i7 == AdvantagesManager.advantages.get(i15).GroupID) && (Game.getCiv(iActiveCivID).getTechResearched(AdvantagesManager.advantages.get(i15).RequiredTechID) || Game.getCiv(iActiveCivID).haveAdvantage(i15, 0))) {
                int iMax = Math.max(CFG.PADDING * 2, (width / 2) - (((AdvantagesManager.advantages.get(i15).ImageID.length * Button_Advantage2.getButtonWidth()) + ((CFG.PADDING * 2) * (AdvantagesManager.advantages.get(i15).ImageID.length - i2))) / 2));
                if (AdvantagesManager.advantages.get(i15).ConstructionCost != null) {
                    ArrayList arrayList3 = new ArrayList();
                    i4 = otherMenuPosX_2;
                    str3 = str;
                    i5 = height3;
                    i3 = height;
                    int i16 = 10;
                    String str4 = "%";
                    arrayList3.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("ConstructionCost") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                    int i17 = 0;
                    while (i17 < AdvantagesManager.advantages.get(i15).ConstructionCost.length) {
                        String str5 = str4;
                        arrayList3.add(new AnonymousClass7(iMax + (Button_Advantage2.getButtonWidth() * i17) + (CFG.PADDING * 2 * i17), i14 + CFG.PADDING, i15, i17, Game.lang.get("ConstructionCost"), "" + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).ConstructionCost[i17] * 100.0f, i16) + str5, Images.construction));
                        i17++;
                        str4 = str5;
                        i16 = 10;
                    }
                    arrayList3.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                    arrayList2.add(arrayList3);
                } else {
                    i3 = height;
                    str3 = str;
                    i4 = otherMenuPosX_2;
                    i5 = height3;
                    String str6 = "%";
                    if (AdvantagesManager.advantages.get(i15).AdministrationBuildingsCost != null) {
                        ArrayList arrayList4 = new ArrayList();
                        String str7 = "AdministrationBuildingsCost";
                        arrayList4.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("AdministrationBuildingsCost") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                        int i18 = 0;
                        while (i18 < AdvantagesManager.advantages.get(i15).AdministrationBuildingsCost.length) {
                            String str8 = str6;
                            arrayList4.add(new AnonymousClass8(iMax + (Button_Advantage2.getButtonWidth() * i18) + (CFG.PADDING * 2 * i18), i14 + CFG.PADDING, i15, i18, Game.lang.get(str7), "" + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).AdministrationBuildingsCost[i18] * 100.0f, 10) + str8, Images.construction));
                            i18++;
                            str6 = str8;
                            str7 = str7;
                        }
                        arrayList4.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                        arrayList2.add(arrayList4);
                    } else if (AdvantagesManager.advantages.get(i15).MilitaryBuildingsCost != null) {
                        ArrayList arrayList5 = new ArrayList();
                        i6 = i8;
                        String str9 = "MilitaryBuildingsCost";
                        arrayList5.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("MilitaryBuildingsCost") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                        int i19 = 0;
                        while (i19 < AdvantagesManager.advantages.get(i15).MilitaryBuildingsCost.length) {
                            arrayList5.add(new AnonymousClass9(iMax + (Button_Advantage2.getButtonWidth() * i19) + (CFG.PADDING * 2 * i19), i14 + CFG.PADDING, i15, i19, Game.lang.get(str9), "" + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).MilitaryBuildingsCost[i19] * 100.0f, 10) + str6, Images.construction));
                            i19++;
                            str9 = str9;
                        }
                        arrayList5.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                        arrayList2.add(arrayList5);
                    } else {
                        i6 = i8;
                        if (AdvantagesManager.advantages.get(i15).EconomyBuildingsCost != null) {
                            ArrayList arrayList6 = new ArrayList();
                            String str10 = "EconomyBuildingsCost";
                            arrayList6.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("EconomyBuildingsCost") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            int i20 = 0;
                            while (i20 < AdvantagesManager.advantages.get(i15).EconomyBuildingsCost.length) {
                                arrayList6.add(new AnonymousClass10(iMax + (Button_Advantage2.getButtonWidth() * i20) + (CFG.PADDING * 2 * i20), i14 + CFG.PADDING, i15, i20, Game.lang.get(str10), "" + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).EconomyBuildingsCost[i20] * 100.0f, 10) + str6, Images.construction));
                                i20++;
                                str10 = str10;
                            }
                            arrayList6.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList6);
                        } else if (AdvantagesManager.advantages.get(i15).ConstructionTime != null) {
                            ArrayList arrayList7 = new ArrayList();
                            String str11 = "ConstructionTime";
                            arrayList7.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("ConstructionTime") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            int i21 = 0;
                            while (i21 < AdvantagesManager.advantages.get(i15).ConstructionTime.length) {
                                arrayList7.add(new AnonymousClass11(iMax + (Button_Advantage2.getButtonWidth() * i21) + (CFG.PADDING * 2 * i21), i14 + CFG.PADDING, i15, i21, Game.lang.get(str11), "" + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).ConstructionTime[i21] * 100.0f, 10) + str6, Images.buildTime));
                                i21++;
                                str11 = str11;
                            }
                            arrayList7.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList7);
                        } else if (AdvantagesManager.advantages.get(i15).WonderConstructionCost != null) {
                            ArrayList arrayList8 = new ArrayList();
                            String str12 = "WonderConstructionCost";
                            arrayList8.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("WonderConstructionCost") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            int i22 = 0;
                            while (i22 < AdvantagesManager.advantages.get(i15).WonderConstructionCost.length) {
                                arrayList8.add(new AnonymousClass12(iMax + (Button_Advantage2.getButtonWidth() * i22) + (CFG.PADDING * 2 * i22), i14 + CFG.PADDING, i15, i22, Game.lang.get(str12), "" + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).WonderConstructionCost[i22] * 100.0f, 10) + str6, Images.mapModesWonders));
                                i22++;
                                str12 = str12;
                            }
                            arrayList8.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList8);
                        } else if (AdvantagesManager.advantages.get(i15).TaxEfficiency != null) {
                            ArrayList arrayList9 = new ArrayList();
                            String str13 = "TaxEfficiency";
                            arrayList9.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("TaxEfficiency") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            int i23 = 0;
                            while (i23 < AdvantagesManager.advantages.get(i15).TaxEfficiency.length) {
                                arrayList9.add(new AnonymousClass13(iMax + (Button_Advantage2.getButtonWidth() * i23) + (CFG.PADDING * 2 * i23), i14 + CFG.PADDING, i15, i23, Game.lang.get(str13), (AdvantagesManager.advantages.get(i15).TaxEfficiency[i23] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).TaxEfficiency[i23], 10) + str6, Images.tax));
                                i23++;
                                str13 = str13;
                            }
                            arrayList9.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList9);
                        } else if (AdvantagesManager.advantages.get(i15).ProvinceMaintenance != null) {
                            ArrayList arrayList10 = new ArrayList();
                            String str14 = "ProvinceMaintenance";
                            arrayList10.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("ProvinceMaintenance") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            int i24 = 0;
                            while (i24 < AdvantagesManager.advantages.get(i15).ProvinceMaintenance.length) {
                                arrayList10.add(new AnonymousClass14(iMax + (Button_Advantage2.getButtonWidth() * i24) + (CFG.PADDING * 2 * i24), i14 + CFG.PADDING, i15, i24, Game.lang.get(str14), (AdvantagesManager.advantages.get(i15).ProvinceMaintenance[i24] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).ProvinceMaintenance[i24], 10) + str6, Images.provinces));
                                i24++;
                                str14 = str14;
                            }
                            arrayList10.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList10);
                        } else if (AdvantagesManager.advantages.get(i15).BuildingsMaintenanceCost != null) {
                            ArrayList arrayList11 = new ArrayList();
                            arrayList11.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("BuildingsMaintenanceCost") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i25 = 0; i25 < AdvantagesManager.advantages.get(i15).BuildingsMaintenanceCost.length; i25++) {
                                arrayList11.add(new AnonymousClass15(iMax + (Button_Advantage2.getButtonWidth() * i25) + (CFG.PADDING * 2 * i25), i14 + CFG.PADDING, i15, i25, Game.lang.get("BuildingsMaintenanceCost"), (AdvantagesManager.advantages.get(i15).BuildingsMaintenanceCost[i25] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).BuildingsMaintenanceCost[i25] * 100.0f, 10) + str6, Images.buildings));
                            }
                            arrayList11.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList11);
                        } else if (AdvantagesManager.advantages.get(i15).ManpowerRecoverySpeed != null) {
                            ArrayList arrayList12 = new ArrayList();
                            arrayList12.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("ManpowerRecoverySpeed") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i26 = 0; i26 < AdvantagesManager.advantages.get(i15).ManpowerRecoverySpeed.length; i26++) {
                                arrayList12.add(new AnonymousClass16(iMax + (Button_Advantage2.getButtonWidth() * i26) + (CFG.PADDING * 2 * i26), i14 + CFG.PADDING, i15, i26, Game.lang.get("ManpowerRecoverySpeed"), (AdvantagesManager.advantages.get(i15).ManpowerRecoverySpeed[i26] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).ManpowerRecoverySpeed[i26] * 100.0f, 10) + str6, Game_Calendar.IMG_MANPOWER_TIME));
                            }
                            arrayList12.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList12);
                        } else if (AdvantagesManager.advantages.get(i15).ArmyMoraleRecovery != null) {
                            ArrayList arrayList13 = new ArrayList();
                            arrayList13.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("ArmyMoraleRecovery") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i27 = 0; i27 < AdvantagesManager.advantages.get(i15).ArmyMoraleRecovery.length; i27++) {
                                arrayList13.add(new AnonymousClass17(iMax + (Button_Advantage2.getButtonWidth() * i27) + (CFG.PADDING * 2 * i27), i14 + CFG.PADDING, i15, i27, Game.lang.get("ArmyMoraleRecovery"), (AdvantagesManager.advantages.get(i15).ArmyMoraleRecovery[i27] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).ArmyMoraleRecovery[i27] * 100.0f, 10) + str6, Images.morale));
                            }
                            arrayList13.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList13);
                        } else if (AdvantagesManager.advantages.get(i15).WarScoreCost != null) {
                            ArrayList arrayList14 = new ArrayList();
                            arrayList14.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("WarScoreCost") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i28 = 0; i28 < AdvantagesManager.advantages.get(i15).WarScoreCost.length; i28++) {
                                arrayList14.add(new AnonymousClass18(iMax + (Button_Advantage2.getButtonWidth() * i28) + (CFG.PADDING * 2 * i28), i14 + CFG.PADDING, i15, i28, Game.lang.get("WarScoreCost"), (AdvantagesManager.advantages.get(i15).WarScoreCost[i28] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).WarScoreCost[i28] * 100.0f, 10) + str6, Images.victoryPoints));
                            }
                            arrayList14.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList14);
                        } else if (AdvantagesManager.advantages.get(i15).ReinforcementSpeed != null) {
                            ArrayList arrayList15 = new ArrayList();
                            arrayList15.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("ReinforcementSpeed") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i29 = 0; i29 < AdvantagesManager.advantages.get(i15).ReinforcementSpeed.length; i29++) {
                                arrayList15.add(new AnonymousClass19(iMax + (Button_Advantage2.getButtonWidth() * i29) + (CFG.PADDING * 2 * i29), i14 + CFG.PADDING, i15, i29, Game.lang.get("ReinforcementSpeed"), (AdvantagesManager.advantages.get(i15).ReinforcementSpeed[i29] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).ReinforcementSpeed[i29] * 100.0f, 10) + str6, Game_Calendar.IMG_MANPOWER_TIME));
                            }
                            arrayList15.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList15);
                        } else if (AdvantagesManager.advantages.get(i15).MaxManpower != null) {
                            ArrayList arrayList16 = new ArrayList();
                            arrayList16.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("MaximumManpower") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i30 = 0; i30 < AdvantagesManager.advantages.get(i15).MaxManpower.length; i30++) {
                                arrayList16.add(new AnonymousClass20(iMax + (Button_Advantage2.getButtonWidth() * i30) + (CFG.PADDING * 2 * i30), i14 + CFG.PADDING, i15, i30, Game.lang.get(aBEBOpwLZcQFCZ.emlP), (AdvantagesManager.advantages.get(i15).MaxManpower[i30] > 0 ? "+" : "") + CFG.getNumberWithSpaces("" + AdvantagesManager.advantages.get(i15).MaxManpower[i30]), Game_Calendar.IMG_MANPOWER_UP));
                            }
                            arrayList16.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList16);
                        } else if (AdvantagesManager.advantages.get(i15).Research != null) {
                            ArrayList arrayList17 = new ArrayList();
                            arrayList17.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("Research") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i31 = 0; i31 < AdvantagesManager.advantages.get(i15).Research.length; i31++) {
                                arrayList17.add(new AnonymousClass21(iMax + (Button_Advantage2.getButtonWidth() * i31) + (CFG.PADDING * 2 * i31), i14 + CFG.PADDING, i15, i31, Game.lang.get("Research"), (AdvantagesManager.advantages.get(i15).Research[i31] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).Research[i31], 10) + str6, Game_Calendar.IMG_TECHNOLOGY));
                            }
                            arrayList17.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList17);
                        } else if (AdvantagesManager.advantages.get(i15).ResearchPoints != null) {
                            ArrayList arrayList18 = new ArrayList();
                            arrayList18.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("ResearchPerMonth") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i32 = 0; i32 < AdvantagesManager.advantages.get(i15).ResearchPoints.length; i32++) {
                                arrayList18.add(new AnonymousClass22(iMax + (Button_Advantage2.getButtonWidth() * i32) + (CFG.PADDING * 2 * i32), i14 + CFG.PADDING, i15, i32, Game.lang.get("ResearchPerMonth"), (AdvantagesManager.advantages.get(i15).ResearchPoints[i32] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).ResearchPoints[i32], 100), Game_Calendar.IMG_TECHNOLOGY));
                            }
                            arrayList18.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList18);
                        } else if (AdvantagesManager.advantages.get(i15).BuildingSlot != null) {
                            ArrayList arrayList19 = new ArrayList();
                            arrayList19.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("AdditionalBuildingsInProvince") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i33 = 0; i33 < AdvantagesManager.advantages.get(i15).BuildingSlot.length; i33++) {
                                arrayList19.add(new AnonymousClass23(iMax + (Button_Advantage2.getButtonWidth() * i33) + (CFG.PADDING * 2 * i33), i14 + CFG.PADDING, i15, i33, Game.lang.get("AdditionalBuildingsInProvince"), (AdvantagesManager.advantages.get(i15).BuildingSlot[i33] > 0 ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).BuildingSlot[i33], 1), Images.build));
                            }
                            arrayList19.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList19);
                        } else if (AdvantagesManager.advantages.get(i15).MaxInfrastructure != null) {
                            ArrayList arrayList20 = new ArrayList();
                            arrayList20.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("MaximumInfrastructureLevel") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i34 = 0; i34 < AdvantagesManager.advantages.get(i15).MaxInfrastructure.length; i34++) {
                                arrayList20.add(new AnonymousClass24(iMax + (Button_Advantage2.getButtonWidth() * i34) + (CFG.PADDING * 2 * i34), i14 + CFG.PADDING, i15, i34, Game.lang.get("MaximumInfrastructureLevel"), (AdvantagesManager.advantages.get(i15).MaxInfrastructure[i34] > 0 ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).MaxInfrastructure[i34], 1), Images.infrastructure));
                            }
                            arrayList20.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList20);
                        } else if (AdvantagesManager.advantages.get(i15).Devastation != null) {
                            ArrayList arrayList21 = new ArrayList();
                            arrayList21.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("Devastation") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i35 = 0; i35 < AdvantagesManager.advantages.get(i15).Devastation.length; i35++) {
                                arrayList21.add(new AnonymousClass25(iMax + (Button_Advantage2.getButtonWidth() * i35) + (CFG.PADDING * 2 * i35), i14 + CFG.PADDING, i15, i35, Game.lang.get("Devastation"), (AdvantagesManager.advantages.get(i15).Devastation[i35] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).Devastation[i35] * 100.0f, 10) + str6, Images.devastation));
                            }
                            arrayList21.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList21);
                        } else if (AdvantagesManager.advantages.get(i15).GrowthRate != null) {
                            ArrayList arrayList22 = new ArrayList();
                            arrayList22.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("GrowthRate") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i36 = 0; i36 < AdvantagesManager.advantages.get(i15).GrowthRate.length; i36++) {
                                arrayList22.add(new AnonymousClass26(iMax + (Button_Advantage2.getButtonWidth() * i36) + (CFG.PADDING * 2 * i36), i14 + CFG.PADDING, i15, i36, Game.lang.get("GrowthRate"), (AdvantagesManager.advantages.get(i15).GrowthRate[i36] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).GrowthRate[i36], 10) + str6, Images.populationGrowth));
                            }
                            arrayList22.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList22);
                        } else if (AdvantagesManager.advantages.get(i15).MonthlyIncome != null) {
                            ArrayList arrayList23 = new ArrayList();
                            arrayList23.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("MonthlyIncome") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i37 = 0; i37 < AdvantagesManager.advantages.get(i15).MonthlyIncome.length; i37++) {
                                arrayList23.add(new AnonymousClass27(iMax + (Button_Advantage2.getButtonWidth() * i37) + (CFG.PADDING * 2 * i37), i14 + CFG.PADDING, i15, i37, Game.lang.get("MonthlyIncome"), (AdvantagesManager.advantages.get(i15).MonthlyIncome[i37] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).MonthlyIncome[i37], 100), Images.goldPositive));
                            }
                            arrayList23.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList23);
                        } else if (AdvantagesManager.advantages.get(i15).Gold != null) {
                            ArrayList arrayList24 = new ArrayList();
                            arrayList24.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("Gold") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i38 = 0; i38 < AdvantagesManager.advantages.get(i15).Gold.length; i38++) {
                                arrayList24.add(new AnonymousClass28(iMax + (Button_Advantage2.getButtonWidth() * i38) + (CFG.PADDING * 2 * i38), i14 + CFG.PADDING, i15, i38, Game.lang.get("Gold"), (AdvantagesManager.advantages.get(i15).Gold[i38] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).Gold[i38], 100), Images.gold));
                            }
                            arrayList24.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList24);
                        } else if (AdvantagesManager.advantages.get(i15).MonthlyLegacy != null) {
                            ArrayList arrayList25 = new ArrayList();
                            arrayList25.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("MonthlyLegacy") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i39 = 0; i39 < AdvantagesManager.advantages.get(i15).MonthlyLegacy.length; i39++) {
                                arrayList25.add(new AnonymousClass29(iMax + (Button_Advantage2.getButtonWidth() * i39) + (CFG.PADDING * 2 * i39), i14 + CFG.PADDING, i15, i39, Game.lang.get("MonthlyLegacy"), (AdvantagesManager.advantages.get(i15).MonthlyLegacy[i39] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).MonthlyLegacy[i39], 100), Images.legacy));
                            }
                            arrayList25.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList25);
                        } else if (AdvantagesManager.advantages.get(i15).IncomeProduction != null) {
                            ArrayList arrayList26 = new ArrayList();
                            arrayList26.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("IncomeProduction") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i40 = 0; i40 < AdvantagesManager.advantages.get(i15).IncomeProduction.length; i40++) {
                                arrayList26.add(new AnonymousClass30(iMax + (Button_Advantage2.getButtonWidth() * i40) + (CFG.PADDING * 2 * i40), i14 + CFG.PADDING, i15, i40, Game.lang.get("IncomeProduction"), (AdvantagesManager.advantages.get(i15).IncomeProduction[i40] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).IncomeProduction[i40], 10) + str6, Images.goods));
                            }
                            arrayList26.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList26);
                        } else if (AdvantagesManager.advantages.get(i15).ProductionEfficiency != null) {
                            ArrayList arrayList27 = new ArrayList();
                            arrayList27.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get(QefTqRjwAJmEDy.EWLFSEGmwUTJu) + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i41 = 0; i41 < AdvantagesManager.advantages.get(i15).ProductionEfficiency.length; i41++) {
                                arrayList27.add(new AnonymousClass31(iMax + (Button_Advantage2.getButtonWidth() * i41) + (CFG.PADDING * 2 * i41), i14 + CFG.PADDING, i15, i41, Game.lang.get("ProductionEfficiency"), (AdvantagesManager.advantages.get(i15).ProductionEfficiency[i41] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).ProductionEfficiency[i41], 10) + str6, Images.goods));
                            }
                            arrayList27.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList27);
                        } else if (AdvantagesManager.advantages.get(i15).InvestInEconomyCost != null) {
                            ArrayList arrayList28 = new ArrayList();
                            arrayList28.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("InvestInEconomyCost") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i42 = 0; i42 < AdvantagesManager.advantages.get(i15).InvestInEconomyCost.length; i42++) {
                                arrayList28.add(new AnonymousClass32(iMax + (Button_Advantage2.getButtonWidth() * i42) + (CFG.PADDING * 2 * i42), i14 + CFG.PADDING, i15, i42, Game.lang.get("InvestInEconomyCost"), (AdvantagesManager.advantages.get(i15).InvestInEconomyCost[i42] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).InvestInEconomyCost[i42] * 100.0f, 10) + str6, Game_Calendar.IMG_ECONOMY_UP));
                            }
                            arrayList28.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList28);
                        } else if (AdvantagesManager.advantages.get(i15).IncreaseManpowerCost != null) {
                            ArrayList arrayList29 = new ArrayList();
                            arrayList29.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("IncreaseManpowerCost") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i43 = 0; i43 < AdvantagesManager.advantages.get(i15).IncreaseManpowerCost.length; i43++) {
                                arrayList29.add(new AnonymousClass33(iMax + (Button_Advantage2.getButtonWidth() * i43) + (CFG.PADDING * 2 * i43), i14 + CFG.PADDING, i15, i43, Game.lang.get("IncreaseManpowerCost"), (AdvantagesManager.advantages.get(i15).IncreaseManpowerCost[i43] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).IncreaseManpowerCost[i43], 10) + str6, Game_Calendar.IMG_MANPOWER_UP));
                            }
                            arrayList29.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList29);
                        } else if (AdvantagesManager.advantages.get(i15).IncreaseTaxEfficiencyCost != null) {
                            ArrayList arrayList30 = new ArrayList();
                            arrayList30.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("IncreaseTaxEfficiencyCost") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i44 = 0; i44 < AdvantagesManager.advantages.get(i15).IncreaseTaxEfficiencyCost.length; i44++) {
                                arrayList30.add(new AnonymousClass34(iMax + (Button_Advantage2.getButtonWidth() * i44) + (CFG.PADDING * 2 * i44), i14 + CFG.PADDING, i15, i44, Game.lang.get("IncreaseTaxEfficiencyCost"), (AdvantagesManager.advantages.get(i15).IncreaseTaxEfficiencyCost[i44] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).IncreaseTaxEfficiencyCost[i44] * 100.0f, 10) + str6, Images.taxUp));
                            }
                            arrayList30.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList30);
                        } else if (AdvantagesManager.advantages.get(i15).IncreaseGrowthRateCost != null) {
                            ArrayList arrayList31 = new ArrayList();
                            arrayList31.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("IncreaseGrowthRateCost") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i45 = 0; i45 < AdvantagesManager.advantages.get(i15).IncreaseGrowthRateCost.length; i45++) {
                                arrayList31.add(new AnonymousClass35(iMax + (Button_Advantage2.getButtonWidth() * i45) + (CFG.PADDING * 2 * i45), i14 + CFG.PADDING, i15, i45, Game.lang.get("IncreaseGrowthRateCost"), (AdvantagesManager.advantages.get(i15).IncreaseGrowthRateCost[i45] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).IncreaseGrowthRateCost[i45] * 100.0f, 10) + str6, Images.populationUp));
                            }
                            arrayList31.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList31);
                        } else if (AdvantagesManager.advantages.get(i15).DevelopInfrastructureCost != null) {
                            ArrayList arrayList32 = new ArrayList();
                            arrayList32.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("DevelopInfrastructureCost") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i46 = 0; i46 < AdvantagesManager.advantages.get(i15).DevelopInfrastructureCost.length; i46++) {
                                arrayList32.add(new AnonymousClass36(iMax + (Button_Advantage2.getButtonWidth() * i46) + (CFG.PADDING * 2 * i46), i14 + CFG.PADDING, i15, i46, Game.lang.get("DevelopInfrastructureCost"), (AdvantagesManager.advantages.get(i15).DevelopInfrastructureCost[i46] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).DevelopInfrastructureCost[i46] * 100.0f, 10) + str6, Images.infrastructureUp));
                            }
                            arrayList32.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList32);
                        } else if (AdvantagesManager.advantages.get(i15).GeneralAttack != null) {
                            ArrayList arrayList33 = new ArrayList();
                            arrayList33.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("GeneralsAttack") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i47 = 0; i47 < AdvantagesManager.advantages.get(i15).GeneralAttack.length; i47++) {
                                arrayList33.add(new AnonymousClass37(iMax + (Button_Advantage2.getButtonWidth() * i47) + (CFG.PADDING * 2 * i47), i14 + CFG.PADDING, i15, i47, Game.lang.get("GeneralsAttack"), (AdvantagesManager.advantages.get(i15).GeneralAttack[i47] > 0 ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).GeneralAttack[i47], 1), Images.attack));
                            }
                            arrayList33.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList33);
                        } else if (AdvantagesManager.advantages.get(i15).GeneralDefense != null) {
                            ArrayList arrayList34 = new ArrayList();
                            arrayList34.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("GeneralsDefense") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i48 = 0; i48 < AdvantagesManager.advantages.get(i15).GeneralDefense.length; i48++) {
                                arrayList34.add(new AnonymousClass38(iMax + (Button_Advantage2.getButtonWidth() * i48) + (CFG.PADDING * 2 * i48), i14 + CFG.PADDING, i15, i48, Game.lang.get("GeneralsDefense"), (AdvantagesManager.advantages.get(i15).GeneralDefense[i48] > 0 ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).GeneralDefense[i48], 1), Images.defense));
                            }
                            arrayList34.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList34);
                        } else if (AdvantagesManager.advantages.get(i15).UnitsAttack != null) {
                            ArrayList arrayList35 = new ArrayList();
                            arrayList35.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("UnitsAttack") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i49 = 0; i49 < AdvantagesManager.advantages.get(i15).UnitsAttack.length; i49++) {
                                arrayList35.add(new AnonymousClass39(iMax + (Button_Advantage2.getButtonWidth() * i49) + (CFG.PADDING * 2 * i49), i14 + CFG.PADDING, i15, i49, Game.lang.get("UnitsAttack"), (AdvantagesManager.advantages.get(i15).UnitsAttack[i49] > 0 ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).UnitsAttack[i49], 1), Images.attack));
                            }
                            arrayList35.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList35);
                        } else if (AdvantagesManager.advantages.get(i15).UnitsDefense != null) {
                            ArrayList arrayList36 = new ArrayList();
                            arrayList36.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("UnitsDefense") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i50 = 0; i50 < AdvantagesManager.advantages.get(i15).UnitsDefense.length; i50++) {
                                arrayList36.add(new AnonymousClass40(iMax + (Button_Advantage2.getButtonWidth() * i50) + (CFG.PADDING * 2 * i50), i14 + CFG.PADDING, i15, i50, Game.lang.get(uiwPYaNhJS.cXCHfgJkksdJPo), (AdvantagesManager.advantages.get(i15).UnitsDefense[i50] > 0 ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).UnitsDefense[i50], 1), Images.defense));
                            }
                            arrayList36.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList36);
                        } else if (AdvantagesManager.advantages.get(i15).MaxMorale != null) {
                            ArrayList arrayList37 = new ArrayList();
                            arrayList37.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("MaxMorale") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i51 = 0; i51 < AdvantagesManager.advantages.get(i15).MaxMorale.length; i51++) {
                                arrayList37.add(new AnonymousClass41(iMax + (Button_Advantage2.getButtonWidth() * i51) + (CFG.PADDING * 2 * i51), i14 + CFG.PADDING, i15, i51, Game.lang.get("MaxMorale"), (AdvantagesManager.advantages.get(i15).MaxMorale[i51] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).MaxMorale[i51] * 100.0f, 10) + str6, Images.morale));
                            }
                            arrayList37.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList37);
                        } else if (AdvantagesManager.advantages.get(i15).ArmyMovementSpeed != null) {
                            ArrayList arrayList38 = new ArrayList();
                            arrayList38.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("ArmyMovementSpeed") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i52 = 0; i52 < AdvantagesManager.advantages.get(i15).ArmyMovementSpeed.length; i52++) {
                                arrayList38.add(new AnonymousClass42(iMax + (Button_Advantage2.getButtonWidth() * i52) + (CFG.PADDING * 2 * i52), i14 + CFG.PADDING, i15, i52, Game.lang.get("ArmyMovementSpeed"), (AdvantagesManager.advantages.get(i15).ArmyMovementSpeed[i52] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).ArmyMovementSpeed[i52], 10) + str6, Images.movementSpeed));
                            }
                            arrayList38.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList38);
                        } else if (AdvantagesManager.advantages.get(i15).SiegeEffectiveness != null) {
                            ArrayList arrayList39 = new ArrayList();
                            arrayList39.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("SiegeEffectiveness") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i53 = 0; i53 < AdvantagesManager.advantages.get(i15).SiegeEffectiveness.length; i53++) {
                                arrayList39.add(new AnonymousClass43(iMax + (Button_Advantage2.getButtonWidth() * i53) + (CFG.PADDING * 2 * i53), i14 + CFG.PADDING, i15, i53, Game.lang.get("SiegeEffectiveness"), (AdvantagesManager.advantages.get(i15).SiegeEffectiveness[i53] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).SiegeEffectiveness[i53] * 100.0f, 10) + str6, Images.siege));
                            }
                            arrayList39.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList39);
                        } else if (AdvantagesManager.advantages.get(i15).ImproveRelationsModifier != null) {
                            ArrayList arrayList40 = new ArrayList();
                            arrayList40.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get(SwmJtrccN.nxoSOBxylIq) + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i54 = 0; i54 < AdvantagesManager.advantages.get(i15).ImproveRelationsModifier.length; i54++) {
                                arrayList40.add(new AnonymousClass44(iMax + (Button_Advantage2.getButtonWidth() * i54) + (CFG.PADDING * 2 * i54), i14 + CFG.PADDING, i15, i54, Game.lang.get("ImproveRelationsModifier"), (AdvantagesManager.advantages.get(i15).ImproveRelationsModifier[i54] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).ImproveRelationsModifier[i54], 10) + str6, Images.relations));
                            }
                            arrayList40.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList40);
                        } else if (AdvantagesManager.advantages.get(i15).IncomeFromVassals != null) {
                            ArrayList arrayList41 = new ArrayList();
                            arrayList41.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("IncomeFromVassals") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i55 = 0; i55 < AdvantagesManager.advantages.get(i15).IncomeFromVassals.length; i55++) {
                                arrayList41.add(new AnonymousClass45(iMax + (Button_Advantage2.getButtonWidth() * i55) + (CFG.PADDING * 2 * i55), i14 + CFG.PADDING, i15, i55, Game.lang.get("IncomeFromVassals"), (AdvantagesManager.advantages.get(i15).IncomeFromVassals[i55] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).IncomeFromVassals[i55] * 100.0f, 10) + str6, Images.vassal));
                            }
                            arrayList41.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList41);
                        } else if (AdvantagesManager.advantages.get(i15).LoanInterest != null) {
                            ArrayList arrayList42 = new ArrayList();
                            arrayList42.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("LoanInterest") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i56 = 0; i56 < AdvantagesManager.advantages.get(i15).LoanInterest.length; i56++) {
                                arrayList42.add(new AnonymousClass46(iMax + (Button_Advantage2.getButtonWidth() * i56) + (CFG.PADDING * 2 * i56), i14 + CFG.PADDING, i15, i56, Game.lang.get("LoanInterest"), (AdvantagesManager.advantages.get(i15).LoanInterest[i56] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).LoanInterest[i56], 10) + str6, Images.loan));
                            }
                            arrayList42.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList42);
                        } else if (AdvantagesManager.advantages.get(i15).DiplomacyPoints != null) {
                            ArrayList arrayList43 = new ArrayList();
                            arrayList43.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("DiplomacyPoints") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i57 = 0; i57 < AdvantagesManager.advantages.get(i15).DiplomacyPoints.length; i57++) {
                                arrayList43.add(new AnonymousClass47(iMax + (Button_Advantage2.getButtonWidth() * i57) + (CFG.PADDING * 2 * i57), i14 + CFG.PADDING, i15, i57, Game.lang.get("DiplomacyPoints"), (AdvantagesManager.advantages.get(i15).DiplomacyPoints[i57] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).DiplomacyPoints[i57] * 100.0f, 10) + str6, Images.diplomacy));
                            }
                            arrayList43.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList43);
                        } else if (AdvantagesManager.advantages.get(i15).RecruitmentTime != null) {
                            ArrayList arrayList44 = new ArrayList();
                            arrayList44.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("RecruitmentTime") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i58 = 0; i58 < AdvantagesManager.advantages.get(i15).RecruitmentTime.length; i58++) {
                                arrayList44.add(new AnonymousClass48(iMax + (Button_Advantage2.getButtonWidth() * i58) + (CFG.PADDING * 2 * i58), i14 + CFG.PADDING, i15, i58, Game.lang.get("RecruitmentTime"), (AdvantagesManager.advantages.get(i15).RecruitmentTime[i58] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).RecruitmentTime[i58], 10) + str6, Game_Calendar.IMG_MANPOWER_TIME));
                            }
                            arrayList44.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList44);
                        } else if (AdvantagesManager.advantages.get(i15).RecruitArmyCost != null) {
                            ArrayList arrayList45 = new ArrayList();
                            arrayList45.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("ArmyRecruitmentCost") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i59 = 0; i59 < AdvantagesManager.advantages.get(i15).RecruitArmyCost.length; i59++) {
                                arrayList45.add(new AnonymousClass49(iMax + (Button_Advantage2.getButtonWidth() * i59) + (CFG.PADDING * 2 * i59), i14 + CFG.PADDING, i15, i59, Game.lang.get("ArmyRecruitmentCost"), (AdvantagesManager.advantages.get(i15).RecruitArmyCost[i59] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).RecruitArmyCost[i59], 10) + str6, Images.gold));
                            }
                            arrayList45.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList45);
                        } else if (AdvantagesManager.advantages.get(i15).RecruitArmyFirstLineCost != null) {
                            ArrayList arrayList46 = new ArrayList();
                            arrayList46.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("FirstLineArmyRecruitmentCost") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i60 = 0; i60 < AdvantagesManager.advantages.get(i15).RecruitArmyFirstLineCost.length; i60++) {
                                arrayList46.add(new AnonymousClass50(iMax + (Button_Advantage2.getButtonWidth() * i60) + (CFG.PADDING * 2 * i60), i14 + CFG.PADDING, i15, i60, Game.lang.get("FirstLineArmyRecruitmentCost"), (AdvantagesManager.advantages.get(i15).RecruitArmyFirstLineCost[i60] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).RecruitArmyFirstLineCost[i60], 10) + str6, Images.gold));
                            }
                            arrayList46.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList46);
                        } else if (AdvantagesManager.advantages.get(i15).RecruitArmySecondLineCost != null) {
                            ArrayList arrayList47 = new ArrayList();
                            arrayList47.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("SecondLineArmyRecruitmentCost") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i61 = 0; i61 < AdvantagesManager.advantages.get(i15).RecruitArmySecondLineCost.length; i61++) {
                                arrayList47.add(new AnonymousClass51(iMax + (Button_Advantage2.getButtonWidth() * i61) + (CFG.PADDING * 2 * i61), i14 + CFG.PADDING, i15, i61, Game.lang.get("SecondLineArmyRecruitmentCost"), (AdvantagesManager.advantages.get(i15).RecruitArmySecondLineCost[i61] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).RecruitArmySecondLineCost[i61], 10) + str6, Images.gold));
                            }
                            arrayList47.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList47);
                        } else if (AdvantagesManager.advantages.get(i15).ArmyMaintenance != null) {
                            ArrayList arrayList48 = new ArrayList();
                            arrayList48.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("ArmyMaintenance") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i62 = 0; i62 < AdvantagesManager.advantages.get(i15).ArmyMaintenance.length; i62++) {
                                arrayList48.add(new AnonymousClass52(iMax + (Button_Advantage2.getButtonWidth() * i62) + (CFG.PADDING * 2 * i62), i14 + CFG.PADDING, i15, i62, Game.lang.get("ArmyMaintenance"), (AdvantagesManager.advantages.get(i15).ArmyMaintenance[i62] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).ArmyMaintenance[i62], 10) + str6, Images.armyMaintenance));
                            }
                            arrayList48.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList48);
                        } else if (AdvantagesManager.advantages.get(i15).CoreCost != null) {
                            ArrayList arrayList49 = new ArrayList();
                            arrayList49.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("CoreConstruction") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i63 = 0; i63 < AdvantagesManager.advantages.get(i15).CoreCost.length; i63++) {
                                arrayList49.add(new AnonymousClass53(iMax + (Button_Advantage2.getButtonWidth() * i63) + (CFG.PADDING * 2 * i63), i14 + CFG.PADDING, i15, i63, Game.lang.get("CoreConstruction"), (AdvantagesManager.advantages.get(i15).CoreCost[i63] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).CoreCost[i63], 10) + str6, Images.core));
                            }
                            arrayList49.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList49);
                        } else if (AdvantagesManager.advantages.get(i15).ReligionCost != null) {
                            ArrayList arrayList50 = new ArrayList();
                            arrayList50.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("ReligionConversionCost") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i64 = 0; i64 < AdvantagesManager.advantages.get(i15).ReligionCost.length; i64++) {
                                arrayList50.add(new AnonymousClass54(iMax + (Button_Advantage2.getButtonWidth() * i64) + (CFG.PADDING * 2 * i64), i14 + CFG.PADDING, i15, i64, Game.lang.get("ReligionConversionCost"), (AdvantagesManager.advantages.get(i15).ReligionCost[i64] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).ReligionCost[i64], 10) + str6, Images.religion));
                            }
                            arrayList50.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList50);
                        } else if (AdvantagesManager.advantages.get(i15).MaxNumOfAlliances != null) {
                            ArrayList arrayList51 = new ArrayList();
                            arrayList51.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("MaxNumOfAlliances") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i65 = 0; i65 < AdvantagesManager.advantages.get(i15).MaxNumOfAlliances.length; i65++) {
                                arrayList51.add(new AnonymousClass55(iMax + (Button_Advantage2.getButtonWidth() * i65) + (CFG.PADDING * 2 * i65), i14 + CFG.PADDING, i15, i65, Game.lang.get("MaxNumOfAlliances"), (AdvantagesManager.advantages.get(i15).MaxNumOfAlliances[i65] > 0 ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).MaxNumOfAlliances[i65], 1), Images.alliance));
                            }
                            arrayList51.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList51);
                        } else if (AdvantagesManager.advantages.get(i15).AdvisorMaxLevel != null) {
                            ArrayList arrayList52 = new ArrayList();
                            arrayList52.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("MaximumAdvisorSkillLevel") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i66 = 0; i66 < AdvantagesManager.advantages.get(i15).AdvisorMaxLevel.length; i66++) {
                                arrayList52.add(new AnonymousClass56(iMax + (Button_Advantage2.getButtonWidth() * i66) + (CFG.PADDING * 2 * i66), i14 + CFG.PADDING, i15, i66, Game.lang.get("MaximumAdvisorSkillLevel"), (AdvantagesManager.advantages.get(i15).AdvisorMaxLevel[i66] > 0 ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).AdvisorMaxLevel[i66], 1), Images.skill));
                            }
                            arrayList52.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList52);
                        } else if (AdvantagesManager.advantages.get(i15).AdvisorPoolSize != null) {
                            ArrayList arrayList53 = new ArrayList();
                            arrayList53.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("AdvisorPool") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i67 = 0; i67 < AdvantagesManager.advantages.get(i15).AdvisorPoolSize.length; i67++) {
                                arrayList53.add(new AnonymousClass57(iMax + (Button_Advantage2.getButtonWidth() * i67) + (CFG.PADDING * 2 * i67), i14 + CFG.PADDING, i15, i67, Game.lang.get("AdvisorPool"), (AdvantagesManager.advantages.get(i15).AdvisorPoolSize[i67] > 0 ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).AdvisorPoolSize[i67], 1), Images.council));
                            }
                            arrayList53.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList53);
                        } else if (AdvantagesManager.advantages.get(i15).MaxNumberOfLoans != null) {
                            ArrayList arrayList54 = new ArrayList();
                            arrayList54.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("MaximumNumberOfLoans") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i68 = 0; i68 < AdvantagesManager.advantages.get(i15).MaxNumberOfLoans.length; i68++) {
                                arrayList54.add(new AnonymousClass58(iMax + (Button_Advantage2.getButtonWidth() * i68) + (CFG.PADDING * 2 * i68), i14 + CFG.PADDING, i15, i68, Game.lang.get("MaximumNumberOfLoans"), (AdvantagesManager.advantages.get(i15).MaxNumberOfLoans[i68] > 0 ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).MaxNumberOfLoans[i68], 1), Images.loan));
                            }
                            arrayList54.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList54);
                        } else if (AdvantagesManager.advantages.get(i15).MaximumLevelOfTheMilitaryAcademyForGenerals != null) {
                            ArrayList arrayList55 = new ArrayList();
                            arrayList55.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("MaximumLevelOfTheMilitaryAcademyForGenerals") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i69 = 0; i69 < AdvantagesManager.advantages.get(i15).MaximumLevelOfTheMilitaryAcademyForGenerals.length; i69++) {
                                arrayList55.add(new AnonymousClass59(iMax + (Button_Advantage2.getButtonWidth() * i69) + (CFG.PADDING * 2 * i69), i14 + CFG.PADDING, i15, i69, Game.lang.get("MaximumLevelOfTheMilitaryAcademyForGenerals"), (AdvantagesManager.advantages.get(i15).MaximumLevelOfTheMilitaryAcademyForGenerals[i69] > 0 ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).MaximumLevelOfTheMilitaryAcademyForGenerals[i69], 1), Images.general));
                            }
                            arrayList55.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList55);
                        } else if (AdvantagesManager.advantages.get(i15).MaximumLevelOfTheMilitaryAcademy != null) {
                            ArrayList arrayList56 = new ArrayList();
                            arrayList56.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("MaximumLevelOfTheMilitaryAcademy") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i70 = 0; i70 < AdvantagesManager.advantages.get(i15).MaximumLevelOfTheMilitaryAcademy.length; i70++) {
                                arrayList56.add(new AnonymousClass60(iMax + (Button_Advantage2.getButtonWidth() * i70) + (CFG.PADDING * 2 * i70), i14 + CFG.PADDING, i15, i70, Game.lang.get("MaximumLevelOfTheMilitaryAcademy"), (AdvantagesManager.advantages.get(i15).MaximumLevelOfTheMilitaryAcademy[i70] > 0 ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).MaximumLevelOfTheMilitaryAcademy[i70], 1), Game_Calendar.IMG_MANPOWER));
                            }
                            arrayList56.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList56);
                        } else if (AdvantagesManager.advantages.get(i15).MaximumLevelOfTheSupremeCourt != null) {
                            ArrayList arrayList57 = new ArrayList();
                            arrayList57.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("MaximumLevelOfTheSupremeCourt") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i71 = 0; i71 < AdvantagesManager.advantages.get(i15).MaximumLevelOfTheSupremeCourt.length; i71++) {
                                arrayList57.add(new AnonymousClass61(iMax + (Button_Advantage2.getButtonWidth() * i71) + (CFG.PADDING * 2 * i71), i14 + CFG.PADDING, i15, i71, Game.lang.get("MaximumLevelOfTheSupremeCourt"), (AdvantagesManager.advantages.get(i15).MaximumLevelOfTheSupremeCourt[i71] > 0 ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).MaximumLevelOfTheSupremeCourt[i71], 1), Images.stability));
                            }
                            arrayList57.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList57);
                        } else if (AdvantagesManager.advantages.get(i15).MaximumLevelOfCapitalCity != null) {
                            ArrayList arrayList58 = new ArrayList();
                            arrayList58.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("MaximumLevelOfCapitalCity") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i72 = 0; i72 < AdvantagesManager.advantages.get(i15).MaximumLevelOfCapitalCity.length; i72++) {
                                arrayList58.add(new AnonymousClass62(iMax + (Button_Advantage2.getButtonWidth() * i72) + (CFG.PADDING * 2 * i72), i14 + CFG.PADDING, i15, i72, Game.lang.get("MaximumLevelOfCapitalCity"), (AdvantagesManager.advantages.get(i15).MaximumLevelOfCapitalCity[i72] > 0 ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).MaximumLevelOfCapitalCity[i72], 1), Images.capital));
                            }
                            arrayList58.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList58);
                        } else if (AdvantagesManager.advantages.get(i15).AggressiveExpansion != null) {
                            ArrayList arrayList59 = new ArrayList();
                            arrayList59.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("AggressiveExpansion") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i73 = 0; i73 < AdvantagesManager.advantages.get(i15).AggressiveExpansion.length; i73++) {
                                arrayList59.add(new AnonymousClass63(iMax + (Button_Advantage2.getButtonWidth() * i73) + (CFG.PADDING * 2 * i73), i14 + CFG.PADDING, i15, i73, Game.lang.get("AggressiveExpansion"), (AdvantagesManager.advantages.get(i15).AggressiveExpansion[i73] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).AggressiveExpansion[i73], 10) + str6, Images.war));
                            }
                            arrayList59.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList59);
                        } else if (AdvantagesManager.advantages.get(i15).DiseaseDeathRate != null) {
                            ArrayList arrayList60 = new ArrayList();
                            arrayList60.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("DiseasesDeathRate") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i74 = 0; i74 < AdvantagesManager.advantages.get(i15).DiseaseDeathRate.length; i74++) {
                                arrayList60.add(new AnonymousClass64(iMax + (Button_Advantage2.getButtonWidth() * i74) + (CFG.PADDING * 2 * i74), i14 + CFG.PADDING, i15, i74, Game.lang.get("DiseasesDeathRate"), (AdvantagesManager.advantages.get(i15).DiseaseDeathRate[i74] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).DiseaseDeathRate[i74] * 100.0f, 10) + str6, Images.disease));
                            }
                            arrayList60.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList60);
                        } else if (AdvantagesManager.advantages.get(i15).ManpowerRecoveryFromADisbandedArmy != null) {
                            ArrayList arrayList61 = new ArrayList();
                            arrayList61.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("ManpowerRecoveryFromADisbandedArmy") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i75 = 0; i75 < AdvantagesManager.advantages.get(i15).ManpowerRecoveryFromADisbandedArmy.length; i75++) {
                                arrayList61.add(new AnonymousClass65(iMax + (Button_Advantage2.getButtonWidth() * i75) + (CFG.PADDING * 2 * i75), i14 + CFG.PADDING, i15, i75, Game.lang.get("ManpowerRecoveryFromADisbandedArmy"), (AdvantagesManager.advantages.get(i15).ManpowerRecoveryFromADisbandedArmy[i75] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).ManpowerRecoveryFromADisbandedArmy[i75] * 100.0f, 10) + str6, Game_Calendar.IMG_MANPOWER_DISBAND));
                            }
                            arrayList61.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList61);
                        } else if (AdvantagesManager.advantages.get(i15).AdvisorCost != null) {
                            ArrayList arrayList62 = new ArrayList();
                            arrayList62.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("AdvisorCost") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i76 = 0; i76 < AdvantagesManager.advantages.get(i15).AdvisorCost.length; i76++) {
                                arrayList62.add(new AnonymousClass66(iMax + (Button_Advantage2.getButtonWidth() * i76) + (CFG.PADDING * 2 * i76), i14 + CFG.PADDING, i15, i76, Game.lang.get("AdvisorCost"), (AdvantagesManager.advantages.get(i15).AdvisorCost[i76] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).AdvisorCost[i76] * 100.0f, 10) + str6, Images.council));
                            }
                            arrayList62.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList62);
                        } else if (AdvantagesManager.advantages.get(i15).GeneralCost != null) {
                            ArrayList arrayList63 = new ArrayList();
                            arrayList63.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("GeneralCost") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i77 = 0; i77 < AdvantagesManager.advantages.get(i15).GeneralCost.length; i77++) {
                                arrayList63.add(new AnonymousClass67(iMax + (Button_Advantage2.getButtonWidth() * i77) + (CFG.PADDING * 2 * i77), i14 + CFG.PADDING, i15, i77, Game.lang.get("GeneralCost"), (AdvantagesManager.advantages.get(i15).GeneralCost[i77] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).GeneralCost[i77] * 100.0f, 10) + str6, Images.general));
                            }
                            arrayList63.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList63);
                        } else if (AdvantagesManager.advantages.get(i15).Discipline != null) {
                            ArrayList arrayList64 = new ArrayList();
                            arrayList64.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("Discipline") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                            for (int i78 = 0; i78 < AdvantagesManager.advantages.get(i15).Discipline.length; i78++) {
                                arrayList64.add(new AnonymousClass68(iMax + (Button_Advantage2.getButtonWidth() * i78) + (CFG.PADDING * 2 * i78), i14 + CFG.PADDING, i15, i78, Game.lang.get("Discipline"), (AdvantagesManager.advantages.get(i15).Discipline[i78] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).Discipline[i78] * 100.0f, 10) + str6, Images.discipline));
                            }
                            arrayList64.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                            arrayList2.add(arrayList64);
                        } else {
                            String str15 = "MaximumAmountOfGold";
                            if (AdvantagesManager.advantages.get(i15).MaximumAmountOfGold != null) {
                                ArrayList arrayList65 = new ArrayList();
                                arrayList65.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("MaximumAmountOfGold") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                                for (int i79 = 0; i79 < AdvantagesManager.advantages.get(i15).MaximumAmountOfGold.length; i79++) {
                                    arrayList65.add(new AnonymousClass69(iMax + (Button_Advantage2.getButtonWidth() * i79) + (CFG.PADDING * 2 * i79), i14 + CFG.PADDING, i15, i79, Game.lang.get("MaximumAmountOfGold"), (AdvantagesManager.advantages.get(i15).MaximumAmountOfGold[i79] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).MaximumAmountOfGold[i79], 10), Images.gold));
                                }
                                arrayList65.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                                arrayList2.add(arrayList65);
                            } else if (AdvantagesManager.advantages.get(i15).MaximumAmountOfGold_Percentage != null) {
                                ArrayList arrayList66 = new ArrayList();
                                arrayList66.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("MaximumAmountOfGold") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                                int i80 = 0;
                                while (i80 < AdvantagesManager.advantages.get(i15).MaximumAmountOfGold_Percentage.length) {
                                    arrayList66.add(new AnonymousClass70(iMax + (Button_Advantage2.getButtonWidth() * i80) + (CFG.PADDING * 2 * i80), i14 + CFG.PADDING, i15, i80, Game.lang.get(str15), (AdvantagesManager.advantages.get(i15).MaximumAmountOfGold_Percentage[i80] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).MaximumAmountOfGold_Percentage[i80] * 100.0f, 10) + str6, Images.gold));
                                    i80++;
                                    str15 = str15;
                                }
                                arrayList66.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                                arrayList2.add(arrayList66);
                            } else if (AdvantagesManager.advantages.get(i15).Loot != null) {
                                ArrayList arrayList67 = new ArrayList();
                                arrayList67.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("Loot") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                                for (int i81 = 0; i81 < AdvantagesManager.advantages.get(i15).Loot.length; i81++) {
                                    arrayList67.add(new AnonymousClass71(iMax + (Button_Advantage2.getButtonWidth() * i81) + (CFG.PADDING * 2 * i81), i14 + CFG.PADDING, i15, i81, Game.lang.get("Loot"), (AdvantagesManager.advantages.get(i15).Loot[i81] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).Loot[i81] * 100.0f, 10) + str6, Images.loot));
                                }
                                arrayList67.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                                arrayList2.add(arrayList67);
                            } else if (AdvantagesManager.advantages.get(i15).BattleWidth != null) {
                                ArrayList arrayList68 = new ArrayList();
                                arrayList68.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("BattleWidth") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                                for (int i82 = 0; i82 < AdvantagesManager.advantages.get(i15).BattleWidth.length; i82++) {
                                    arrayList68.add(new AnonymousClass72(iMax + (Button_Advantage2.getButtonWidth() * i82) + (CFG.PADDING * 2 * i82), i14 + CFG.PADDING, i15, i82, Game.lang.get("BattleWidth"), (AdvantagesManager.advantages.get(i15).BattleWidth[i82] > 0 ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).BattleWidth[i82], 1), Images.battleWidth));
                                }
                                arrayList68.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                                arrayList2.add(arrayList68);
                            } else if (AdvantagesManager.advantages.get(i15).RegimentsLimit != null) {
                                ArrayList arrayList69 = new ArrayList();
                                arrayList69.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("RegimentsLimit") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                                for (int i83 = 0; i83 < AdvantagesManager.advantages.get(i15).RegimentsLimit.length; i83++) {
                                    arrayList69.add(new AnonymousClass73(iMax + (Button_Advantage2.getButtonWidth() * i83) + (CFG.PADDING * 2 * i83), i14 + CFG.PADDING, i15, i83, Game.lang.get("RegimentsLimit"), (AdvantagesManager.advantages.get(i15).RegimentsLimit[i83] > 0 ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(i15).RegimentsLimit[i83], 1), Images.regimentsLimit));
                                }
                                arrayList69.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                                arrayList2.add(arrayList69);
                            } else if (AdvantagesManager.advantages.get(i15).AllCharactersLifeExpectancy != null) {
                                ArrayList arrayList70 = new ArrayList();
                                arrayList70.add(new Button_Advantage_Title(Game.getCiv(iActiveCivID).haveAdvantageMaxLvl(i15), Game.lang.get("AllCharactersLifeExpectancy") + "", Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), i14));
                                for (int i84 = 0; i84 < AdvantagesManager.advantages.get(i15).AllCharactersLifeExpectancy.length; i84++) {
                                    arrayList70.add(new AnonymousClass74(iMax + (Button_Advantage2.getButtonWidth() * i84) + (CFG.PADDING * 2 * i84), i14 + CFG.PADDING, i15, i84, Game.lang.get("AllCharactersLifeExpectancy"), (AdvantagesManager.advantages.get(i15).AllCharactersLifeExpectancy[i84] > 0 ? "+" : "") + Game.lang.get(HTGgowNjn.oOqnvoFciIFizBL, AdvantagesManager.advantages.get(i15).AllCharactersLifeExpectancy[i84]), Images.council));
                                }
                                arrayList70.add(new Empty_AdvantageBG(width - Images.boxTitleBORDERWIDTH, i14, Images.boxTitleBORDERWIDTH, Button_Advantage2.getButtonHeight() + (CFG.PADDING * 2)));
                                arrayList2.add(arrayList70);
                            }
                        }
                    }
                    i15++;
                    otherMenuPosX_2 = i4;
                    str = str3;
                    height3 = i5;
                    height = i3;
                    i8 = i6;
                    i2 = 1;
                }
            } else {
                i3 = height;
                str3 = str;
                i4 = otherMenuPosX_2;
                i5 = height3;
            }
            i6 = i8;
            i15++;
            otherMenuPosX_2 = i4;
            str = str3;
            height3 = i5;
            height = i3;
            i8 = i6;
            i2 = 1;
        }
        int i85 = height;
        String str16 = str;
        int i86 = otherMenuPosX_2;
        int i87 = height3;
        int i88 = i8;
        if (arrayList2.size() > 0) {
            height2 = i85;
            while (arrayList2.size() > 0) {
                int size = arrayList2.size();
                int i89 = 0;
                for (int i90 = 1; i90 < size; i90++) {
                    if (CFG.compareAlphabetic_TwoString(((MenuElement) ((List) arrayList2.get(i89)).get(0)).getText(), ((MenuElement) ((List) arrayList2.get(i90)).get(0)).getText())) {
                        i89 = i90;
                    }
                }
                int size2 = ((List) arrayList2.get(i89)).size();
                for (int i91 = 0; i91 < size2; i91++) {
                    ((MenuElement) ((List) arrayList2.get(i89)).get(i91)).setPosY(((MenuElement) ((List) arrayList2.get(i89)).get(i91)).getPosY() + height2);
                    arrayList.add((MenuElement) ((List) arrayList2.get(i89)).get(i91));
                }
                height2 += (CFG.PADDING * 2) + i14 + Button_Advantage2.getButtonHeight() + i10;
                arrayList2.remove(i89);
            }
            r15 = 0;
        } else {
            r15 = 0;
            arrayList.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i88, i85, width - (i88 * 2), CFG.BUTTON_HEIGHT2));
            height2 = i85 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        int iMin = Math.min(height2, (CFG.GAME_HEIGHT - i87) - (CFG.PADDING * 3));
        arrayList.add(new Empty(r15, r15, width, Math.max(height2, iMin)));
        initMenu(new AnonymousClass75(Game.lang.get(str2), Game.lang.get("AdvantagePoints") + str16 + Game.getCiv(iActiveCivID).getAdvantagePoints(), false, false, Images.title500), i86, i87, width, iMin, arrayList, false, true);
        this.drawScrollPositionAlways = r15;
    }

    public static final List<MenuElement> getAdvantagesSmall(int i) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < Game.getCiv(i).iAdvantagesSize; i2++) {
            for (int i3 = 0; i3 < Game.getCiv(i).lAdvantages.get(i2).lvl + 1; i3++) {
                if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).ConstructionCost != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("ConstructionCost"), "" + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).ConstructionCost[i3] * 100.0f, 10) + "%", Images.construction));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).AdministrationBuildingsCost != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("AdministrationBuildingsCost"), "" + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).AdministrationBuildingsCost[i3] * 100.0f, 10) + "%", Images.construction));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).MilitaryBuildingsCost != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("MilitaryBuildingsCost"), "" + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).MilitaryBuildingsCost[i3] * 100.0f, 10) + "%", Images.construction));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).EconomyBuildingsCost != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("EconomyBuildingsCost"), "" + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).EconomyBuildingsCost[i3] * 100.0f, 10) + "%", Images.construction));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).ConstructionTime != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("ConstructionTime"), "" + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).ConstructionTime[i3] * 100.0f, 10) + "%", Images.buildTime));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).WonderConstructionCost != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("WonderConstructionCost"), "" + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).WonderConstructionCost[i3] * 100.0f, 10) + "%", Images.mapModesWonders));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).TaxEfficiency != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("TaxEfficiency"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).TaxEfficiency[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).TaxEfficiency[i3], 10) + "%", Images.tax));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).ProvinceMaintenance != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("ProvinceMaintenance"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).ProvinceMaintenance[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).ProvinceMaintenance[i3], 10) + "%", Images.provinces));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).BuildingsMaintenanceCost != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("BuildingsMaintenanceCost"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).BuildingsMaintenanceCost[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).BuildingsMaintenanceCost[i3] * 100.0f, 10) + "%", Images.buildings));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).ManpowerRecoverySpeed != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("ManpowerRecoverySpeed"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).ManpowerRecoverySpeed[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).ManpowerRecoverySpeed[i3] * 100.0f, 10) + "%", Game_Calendar.IMG_MANPOWER_TIME));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).ArmyMoraleRecovery != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("ArmyMoraleRecovery"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).ArmyMoraleRecovery[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).ArmyMoraleRecovery[i3] * 100.0f, 10) + "%", Images.morale));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).WarScoreCost != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("WarScoreCost"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).WarScoreCost[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).WarScoreCost[i3] * 100.0f, 10) + "%", Images.victoryPoints));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).ReinforcementSpeed != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("ReinforcementSpeed"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).ReinforcementSpeed[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).ReinforcementSpeed[i3] * 100.0f, 10) + "%", Game_Calendar.IMG_MANPOWER_TIME));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).MaxManpower != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("MaximumManpower"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).MaxManpower[i3] <= 0 ? "" : "+") + CFG.getNumberWithSpaces("" + AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).MaxManpower[i3]), Game_Calendar.IMG_MANPOWER_UP));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).Research != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("Research"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).Research[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).Research[i3], 10) + "%", Game_Calendar.IMG_TECHNOLOGY));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).ResearchPoints != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("ResearchPerMonth"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).ResearchPoints[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).ResearchPoints[i3], 100), Game_Calendar.IMG_TECHNOLOGY));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).BuildingSlot != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get(ClXgFvsSKQc.vuOEUEiPiSbkdv), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).BuildingSlot[i3] > 0 ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).BuildingSlot[i3], 1), Images.build));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).MaxInfrastructure != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("MaximumInfrastructureLevel"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).MaxInfrastructure[i3] > 0 ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).MaxInfrastructure[i3], 1), Images.infrastructure));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).Devastation != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get(QefTqRjwAJmEDy.JUGowqiyA), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).Devastation[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).Devastation[i3] * 100.0f, 10) + "%", Images.devastation));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).GrowthRate != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("GrowthRate"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).GrowthRate[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).GrowthRate[i3], 10) + "%", Images.populationGrowth));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).MonthlyIncome != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("MonthlyIncome"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).MonthlyIncome[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).MonthlyIncome[i3], 100), Images.goldPositive));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).Gold != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("Gold"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).Gold[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).Gold[i3], 100), Images.gold));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).MonthlyLegacy != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("MonthlyLegacy"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).MonthlyLegacy[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).MonthlyLegacy[i3], 100), Images.legacy));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).IncomeProduction != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("IncomeProduction"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).IncomeProduction[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).IncomeProduction[i3], 10) + "%", Images.goods));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).ProductionEfficiency != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("ProductionEfficiency"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).ProductionEfficiency[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).ProductionEfficiency[i3], 10) + "%", Images.goods));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).InvestInEconomyCost != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("InvestInEconomyCost"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).InvestInEconomyCost[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).InvestInEconomyCost[i3] * 100.0f, 10) + "%", Game_Calendar.IMG_ECONOMY_UP));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).IncreaseManpowerCost != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("IncreaseManpowerCost"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).IncreaseManpowerCost[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).IncreaseManpowerCost[i3], 10) + "%", Game_Calendar.IMG_MANPOWER_UP));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).IncreaseTaxEfficiencyCost != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("IncreaseTaxEfficiencyCost"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).IncreaseTaxEfficiencyCost[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).IncreaseTaxEfficiencyCost[i3] * 100.0f, 10) + "%", Images.taxUp));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).IncreaseGrowthRateCost != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("IncreaseGrowthRateCost"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).IncreaseGrowthRateCost[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).IncreaseGrowthRateCost[i3] * 100.0f, 10) + "%", Images.populationUp));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).DevelopInfrastructureCost != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("DevelopInfrastructureCost"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).DevelopInfrastructureCost[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).DevelopInfrastructureCost[i3] * 100.0f, 10) + "%", Images.infrastructure));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).GeneralAttack != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("GeneralsAttack"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).GeneralAttack[i3] > 0 ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).GeneralAttack[i3], 1), Images.attack));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).GeneralDefense != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("GeneralsDefense"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).GeneralDefense[i3] > 0 ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).GeneralDefense[i3], 1), Images.defense));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).UnitsAttack != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("UnitsAttack"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).UnitsAttack[i3] > 0 ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).UnitsAttack[i3], 1), Images.attack));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).UnitsDefense != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("UnitsDefense"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).UnitsDefense[i3] > 0 ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).UnitsDefense[i3], 1), Images.defense));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).MaxMorale != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("MaxMorale"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).MaxMorale[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).MaxMorale[i3] * 100.0f, 10) + "%", Images.morale));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).ArmyMovementSpeed != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get(XjthpFh.aTqBBEUtfRtmHBU), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).ArmyMovementSpeed[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).ArmyMovementSpeed[i3], 10) + "%", Images.movementSpeed));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).SiegeEffectiveness != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("SiegeEffectiveness"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).SiegeEffectiveness[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).SiegeEffectiveness[i3] * 100.0f, 10) + "%", Images.siege));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).ImproveRelationsModifier != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("ImproveRelationsModifier"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).ImproveRelationsModifier[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).ImproveRelationsModifier[i3], 10) + "%", Images.relations));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).IncomeFromVassals != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("IncomeFromVassals"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).IncomeFromVassals[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).IncomeFromVassals[i3] * 100.0f, 10) + "%", Images.vassal));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).LoanInterest != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("LoanInterest"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).LoanInterest[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).LoanInterest[i3], 10) + "%", Images.loan));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).DiplomacyPoints != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("DiplomacyPoints"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).DiplomacyPoints[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).DiplomacyPoints[i3] * 100.0f, 10) + "%", Images.diplomacy));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).RecruitmentTime != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("RecruitmentTime"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).RecruitmentTime[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).RecruitmentTime[i3], 10) + "%", Game_Calendar.IMG_MANPOWER_TIME));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).RecruitArmyCost != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("ArmyRecruitmentCost"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).RecruitArmyCost[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).RecruitArmyCost[i3], 10) + "%", Images.gold));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).RecruitArmyFirstLineCost != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get(jkEBdieJhbh.VBdTructuZs), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).RecruitArmyFirstLineCost[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).RecruitArmyFirstLineCost[i3], 10) + "%", Images.gold));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).RecruitArmySecondLineCost != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("SecondLineArmyRecruitmentCost"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).RecruitArmySecondLineCost[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).RecruitArmySecondLineCost[i3], 10) + "%", Images.gold));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).ArmyMaintenance != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("ArmyMaintenance"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).ArmyMaintenance[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).ArmyMaintenance[i3], 10) + "%", Images.armyMaintenance));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).CoreCost != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("CoreConstruction"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).CoreCost[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).CoreCost[i3], 10) + "%", Images.core));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).ReligionCost != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("ReligionConversionCost"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).ReligionCost[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).ReligionCost[i3], 10) + "%", Images.religion));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).MaxNumOfAlliances != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get(fTNtCctcBZcqKK.TfRMZZQicYb), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).MaxNumOfAlliances[i3] > 0 ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).MaxNumOfAlliances[i3], 1), Images.alliance));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).AdvisorMaxLevel != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("MaximumAdvisorSkillLevel"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).AdvisorMaxLevel[i3] > 0 ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).AdvisorMaxLevel[i3], 1), Images.skill));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).AdvisorPoolSize != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("AdvisorPool"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).AdvisorPoolSize[i3] > 0 ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).AdvisorPoolSize[i3], 1), Images.council));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).MaxNumberOfLoans != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("MaximumNumberOfLoans"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).MaxNumberOfLoans[i3] > 0 ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).MaxNumberOfLoans[i3], 1), Images.loan));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).MaximumLevelOfTheMilitaryAcademyForGenerals != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("MaximumLevelOfTheMilitaryAcademyForGenerals"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).MaximumLevelOfTheMilitaryAcademyForGenerals[i3] > 0 ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).MaximumLevelOfTheMilitaryAcademyForGenerals[i3], 1), Images.general));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).MaximumLevelOfTheMilitaryAcademy != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("MaximumLevelOfTheMilitaryAcademy"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).MaximumLevelOfTheMilitaryAcademy[i3] > 0 ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).MaximumLevelOfTheMilitaryAcademy[i3], 1), Game_Calendar.IMG_MANPOWER));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).MaximumLevelOfTheSupremeCourt != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("MaximumLevelOfTheSupremeCourt"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).MaximumLevelOfTheSupremeCourt[i3] > 0 ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).MaximumLevelOfTheSupremeCourt[i3], 1), Images.stability));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).MaximumLevelOfCapitalCity != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("MaximumLevelOfCapitalCity"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).MaximumLevelOfCapitalCity[i3] > 0 ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).MaximumLevelOfCapitalCity[i3], 1), Images.capital));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).AggressiveExpansion != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("AggressiveExpansion"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).AggressiveExpansion[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).AggressiveExpansion[i3], 10) + "%", Images.war));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).DiseaseDeathRate != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("DiseasesDeathRate"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).DiseaseDeathRate[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).DiseaseDeathRate[i3] * 100.0f, 10) + "%", Images.disease));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).ManpowerRecoveryFromADisbandedArmy != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("ManpowerRecoveryFromADisbandedArmy"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).ManpowerRecoveryFromADisbandedArmy[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).ManpowerRecoveryFromADisbandedArmy[i3] * 100.0f, 10) + "%", Game_Calendar.IMG_MANPOWER_DISBAND));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).AdvisorCost != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("AdvisorCost"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).AdvisorCost[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).AdvisorCost[i3] * 100.0f, 10) + "%", Images.council));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).GeneralCost != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("GeneralCost"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).GeneralCost[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).GeneralCost[i3] * 100.0f, 10) + "%", Images.general));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).Discipline != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("Discipline"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).Discipline[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).Discipline[i3] * 100.0f, 10) + "%", Images.discipline));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).MaximumAmountOfGold != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("MaximumAmountOfGold"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).MaximumAmountOfGold[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).MaximumAmountOfGold[i3], 10), Images.gold));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).MaximumAmountOfGold_Percentage != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("MaximumAmountOfGold"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).MaximumAmountOfGold_Percentage[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).MaximumAmountOfGold_Percentage[i3] * 100.0f, 10) + "%", Images.gold));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).Loot != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("Loot"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).Loot[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).Loot[i3] * 100.0f, 10) + "%", Images.loot));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).BattleWidth != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("BattleWidth"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).BattleWidth[i3] > 0 ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).BattleWidth[i3], 1), Images.battleWidth));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).RegimentsLimit != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("RegimentsLimit"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).RegimentsLimit[i3] > 0 ? "+" : "") + CFG.getPrecision2(AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).RegimentsLimit[i3], 1), Images.regimentsLimit));
                } else if (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).AllCharactersLifeExpectancy != null) {
                    arrayList.add(new Button_Advantage3(0, 0, Game.getCiv(i).lAdvantages.get(i2).id, i3, Game.lang.get("AllCharactersLifeExpectancy"), (AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).AllCharactersLifeExpectancy[i3] > 0 ? "+" : "") + Game.lang.get("YearsX", AdvantagesManager.advantages.get(Game.getCiv(i).lAdvantages.get(i2).id).AllCharactersLifeExpectancy[i3]), Images.council));
                }
            }
        }
        return arrayList;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void actionCloseMenu() {
        super.actionCloseMenu();
        InGame_Civ.actionOnClose();
    }

    public final void actionUnlock(int i, int i2, String str) {
        int i3;
        if (iActiveCivID != Game.player.iCivID) {
            Game.soundsManager.playSound(Game.soundsManager.getClickMain());
            return;
        }
        if (Game.getCiv(iActiveCivID).haveAdvantage(i, i2)) {
            Game.menuManager.addToastGold(Game.lang.get("AlreadyUnlocked"), Images.advantages);
            Game.soundsManager.playSound(Game.soundsManager.getClickMain());
            return;
        }
        if (Game.getCiv(iActiveCivID).getAdvantagePoints() <= 0) {
            Game.menuManager.addToastInsufficient(Game.lang.get("AdvantagePoints") + ": ", "" + Game.getCiv(iActiveCivID).getAdvantagePoints(), Images.advantages);
            Game.soundsManager.playSound(Game.soundsManager.getClickMain());
            return;
        }
        if (!Game.getCiv(iActiveCivID).canUnlockAdvantage(i, i2)) {
            if (i2 > 0) {
                actionUnlock(i, i2 - 1, str);
                return;
            }
            return;
        }
        if (!AdvantagesManager.unlockAdvantage(iActiveCivID, i, i2)) {
            Game.menuManager.addToastGold(Game.lang.get("NotAvailable"), Images.advantages);
            Game.soundsManager.playSound(Game.soundsManager.getClickMain());
            return;
        }
        SoundsManager soundsManager = Game.soundsManager;
        if (i2 == 0) {
            i3 = SoundsManager.SOUND_ADVANTAGE0;
        } else {
            i3 = i2 == 1 ? SoundsManager.SOUND_ADVANTAGE1 : SoundsManager.SOUND_ADVANTAGE2;
        }
        soundsManager.playSound(i3);
        InGame_Info.iCivID = iActiveCivID;
        InGame_Info.iCivID2 = 0;
        Game.menuManager.rebuildInGame_Info(Game.lang.get("CivilizationAdvantage"), str + " - " + Game.lang.get("Unlocked"));
        InGame_Info.imgID = Images.infoAdvantage;
        Game.menuManager.rebuildInGame_CivilizationAdvantages_SavePos(iActiveCivID);
        lTime = 0L;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop500, Images.insideBot500);
        ImageManager.getImage(Images.rulerOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.rulerOver).getWidth() / 2)) + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.rulerOver).getHeight()));
        super.draw(spriteBatch, i3, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
        lTime2 = CFG.currentTimeMillis;
    }
}
