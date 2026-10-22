package aoc.kingdoms.lukasz.menusInGame.AtomicNukes;

import androidx.core.internal.oiV.CoLRpi;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.LanguageManager;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.terrain.exjB.uiwPYaNhJS;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Click;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses;
import aoc.kingdoms.lukasz.menu_element.button.Button_AtomicBomb;
import aoc.kingdoms.lukasz.menu_element.button.Button_NuclearReactor;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Empty;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageFull;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Center;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_RulerTitle;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_RulerTitle_Nukes;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2Center;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.assets.loaders.Wkvw.PZBvyl;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.utils.compression.spWT.QefTqRjwAJmEDy;
import com.google.android.gms.security.IYT.MQYGMkZOAcS;
import com.pairip.licensecheck.CohD.CaiJWNfqszJNZ;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Nukes extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static long lTime;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AtomicNukes.InGame_Nukes$1, reason: invalid class name */
    class AnonymousClass1 extends Button_NuclearReactor {
        AnonymousClass1(int i, int i2) {
            super(i, i2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).getNuclearReactorLevel() >= Game.getNuclearReactor_MaxLvl(Game.player.iCivID)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("MaximumLevel") + ": ", "" + Game.getCiv(Game.player.iCivID).getNuclearReactorLevel() + CoLRpi.pBrqoJyDkVwgc + Game.getNuclearReactor_MaxLvl(Game.player.iCivID), Images.nuke);
            } else if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 5) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_UpgradeNuclearReactor();
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AtomicNukes.InGame_Nukes$2, reason: invalid class name */
    class AnonymousClass2 extends Text_StaticBG_RulerTitle {
        AnonymousClass2(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).getNuclearReactorLevel() >= Game.getNuclearReactor_MaxLvl(Game.player.iCivID)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("MaximumLevel") + ": ", "" + Game.getCiv(Game.player.iCivID).getNuclearReactorLevel() + " / " + Game.getNuclearReactor_MaxLvl(Game.player.iCivID), Images.nuke);
            } else if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 5) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_UpgradeNuclearReactor();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Nukes.getHoverNuclearReactor();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AtomicNukes.InGame_Nukes$3, reason: invalid class name */
    class AnonymousClass3 extends Button_AtomicBomb {
        AnonymousClass3(int i, int i2) {
            super(i, i2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 6) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_BuildAtomicBomb();
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AtomicNukes.InGame_Nukes$4, reason: invalid class name */
    class AnonymousClass4 extends Text_StaticBG_RulerTitle_Nukes {
        AnonymousClass4(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 6) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_BuildAtomicBomb();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Nukes.getHoverBuildAtomicBomb();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AtomicNukes.InGame_Nukes$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass5(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.HOVER_RIGHT;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.iCurrent != ((int) Game.getAtomicBombCost(Game.player.iCivID))) {
                this.iCurrent = (int) Game.getAtomicBombCost(Game.player.iCivID);
                this.sText2 = CFG.getPrecision2(Game.getAtomicBombCost(Game.player.iCivID), 100);
                Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_BOLD_SMALL), this.sText2);
                this.iTextBonusW = (int) Renderer.glyphLayout.width;
            }
            return super.getTextToDraw();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AtomicNukes.InGame_Nukes$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass6(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.HOVER_RIGHT;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AtomicNukes.InGame_Nukes$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass7(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, i7, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return super.getTextToDraw() + Game.getCiv(Game.player.iCivID).getNukes();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AtomicNukes.InGame_Nukes$8, reason: invalid class name */
    class AnonymousClass8 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass8(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, i7, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).getNukes() <= 0) {
                Game.menuManager.addToast_Error(Game.lang.get("AtomicBombs") + ": " + Game.getCiv(Game.player.iCivID).getNukes(), Images.nuke);
            }
            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_NUKE_CHOOSE_PROVINCE) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
                return;
            }
            Game.gameActiveProvince.resetLastActiveProvince();
            Game.setActiveProvinceID(-1);
            Game.menuManager.setVisibleInGame_ProvinceInfo(false);
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_NUKE_CHOOSE_PROVINCE);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("DropAtomicBomb") + ": " + Game.lang.get("ChooseAProvince"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("AtomicBombs") + ": ", "" + Game.getCiv(Game.player.iCivID).getNukes(), Images.nuke, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Click, aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active, aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_NUKE_CHOOSE_PROVINCE ? Colors.HOVER_GOLD : super.getColor(z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.AtomicNukes.InGame_Nukes$9, reason: invalid class name */
    class AnonymousClass9 extends MenuTitleIMG {
        AnonymousClass9(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Nukes.lTime;
        }
    }

    public InGame_Nukes() {
        ArrayList arrayList = new ArrayList();
        int i = (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH;
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title500).getHeight();
        int i2 = CFG.PADDING;
        arrayList.add(new Text_Title_v2Center(Game.lang.get("NuclearReactor"), -1, Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height2 = arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING + 0;
        arrayList.add(new AnonymousClass1(i, height2));
        int width2 = i + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int width3 = ImageManager.getImage(Images.gold).getWidth();
        int i3 = (width - width2) - i;
        int buttonHeight = (Button_NuclearReactor.getButtonHeight() - (CFG.PADDING * 2)) / 3;
        StringBuilder sbAppend = new StringBuilder().append(Game.lang.get("Level"));
        String str = CaiJWNfqszJNZ.gzlCzxSKGwTe;
        arrayList.add(new AnonymousClass2(sbAppend.append(str).append(Game.getCiv(Game.player.iCivID).getNuclearReactorLevel()).append(" / ").append(Game.getNuclearReactor_MaxLvl(Game.player.iCivID)).toString(), width2, height2, i3, buttonHeight));
        int height4 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("AtomicBombCost") + str, CFG.getPrecision2(Game.getNuclearReactor_AtomicBombCost(Game.player.iCivID) * 100.0f, 100) + "%", Images.nuke, width2, height4, i3, buttonHeight, width3));
        arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("ProductionEfficiency") + str, "+" + CFG.getPrecision2(Game.getNuclearReactor_ProductionEfficiency(Game.player.iCivID), 100) + "%", Images.goods, width2, height4 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING, i3, buttonHeight, width3));
        arrayList.get(arrayList.size() - 1).getHeight();
        int i4 = CFG.PADDING;
        arrayList.add(new Text_Title_v2Center(Game.lang.get("AtomicBomb"), -1, Images.boxTitleBORDERWIDTH, height3, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height5 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass3(i, height5));
        int width4 = i + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
        int height6 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int width5 = ImageManager.getImage(Images.gold).getWidth();
        int i5 = (width - width4) - i;
        int buttonHeight2 = (Button_NuclearReactor.getButtonHeight() - (CFG.PADDING * 2)) / 3;
        arrayList.add(new AnonymousClass4(Game.lang.get("AtomicBombs") + str + Game.getCiv(Game.player.iCivID).getNukes(), width4, height5, i5, buttonHeight2));
        int height7 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass5(Game.lang.get("Cost") + str, CFG.getPrecision2(Game.getAtomicBombCost(Game.player.iCivID), 100), Images.gold, width4, height7, i5, buttonHeight2, width5));
        arrayList.add(new AnonymousClass6(Game.lang.get("ProductionTime") + str, Game.lang.get("DaysX", Game.getAtomicBombProductionTime(Game.player.iCivID)), Images.time, width4, height7 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING, i5, buttonHeight2, width5));
        arrayList.get(arrayList.size() - 1).getHeight();
        int i6 = CFG.PADDING;
        arrayList.add(new Text_Title_v2Center(Game.lang.get("NuclearWeapons"), -1, Images.boxTitleBORDERWIDTH, height6, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height8 = height6 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i7 = width - (i * 2);
        arrayList.add(new AnonymousClass7(Game.lang.get("AtomicBombs") + str, Images.nuke, i, height8, i7, CFG.BUTTON_HEIGHT3, width5, 0, true));
        int height9 = height8 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass8(Game.lang.get("DropAtomicBomb") + str + Game.lang.get("ChooseAProvince"), Images.nuke, i, height9, i7, CFG.BUTTON_HEIGHT3, width5, 0, true));
        int height10 = height9 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int iMin = Math.min(height10, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, 0, width, Math.max(height10, iMin)));
        initMenu(new AnonymousClass9("", false, false, Images.title500), otherMenuPosX_2, height, width, iMin, arrayList, false, true);
    }

    public static final void buildAtomicBomb() {
        if (Game.getCiv(Game.player.iCivID).getNuclearReactorLevel() < GameValues.atomic.NUCLEAR_REACTOR_LVL_TO_CONSTRUCT_NUKE) {
            Game.menuManager.addToastInsufficient("", Game.lang.get("ToConstructAnAtomicBombTheNuclearReactorMustReachAtLeastLevel", GameValues.atomic.NUCLEAR_REACTOR_LVL_TO_CONSTRUCT_NUKE), Images.nuke);
            return;
        }
        if (Game.getCiv(Game.player.iCivID).fGold < Game.getAtomicBombCost(Game.player.iCivID)) {
            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getAtomicBombCost(Game.player.iCivID), 100), Images.gold);
            return;
        }
        Game.getCiv(Game.player.iCivID).addNukeProduction();
        InGame_Info.iCivID = Game.player.iCivID;
        InGame_Info.iCivID2 = 0;
        Game.menuManager.rebuildInGame_Info(Game.lang.get("AtomicBombUnderConstruction"), Game.lang.get("ProductionTime") + ": " + Game.lang.get("XDays", Game.getAtomicBombProductionTime(Game.player.iCivID)));
        InGame_Info.imgID = Images.infoAtomic;
    }

    public static MenuElement_Hover getHoverBuildAtomicBomb() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center(Game.lang.get("BuildAnAtomicBomb"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_ImageFull(Images.atomicBombBig, 0, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("AtomicBombs") + ": ", CFG.FONT_REGULAR));
        String str = MQYGMkZOAcS.uCQnIKgOw;
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(str + Game.getCiv(Game.player.iCivID).getNukes(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.nuke, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (Game.getCiv(Game.player.iCivID).iNukesSize > 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AtomicBombUnderConstruction") + ": ", CFG.FONT_REGULAR_SMALL));
            LanguageManager languageManager = Game.lang;
            int i = Game.getCiv(Game.player.iCivID).nukesDaysLeft.get(0).daysLeft;
            String str2 = QefTqRjwAJmEDy.NtWap;
            arrayList2.add(new MenuElement_HoverElement_Type_Text(languageManager.get(str2, i), CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, CFG.PADDING));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("[" + CFG.getPrecision2((1.0f - (Game.getCiv(Game.player.iCivID).nukesDaysLeft.get(0).daysLeft / Game.getCiv(Game.player.iCivID).nukesDaysLeft.get(0).investTime)) * 100.0f, 10) + "%]", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (Game.getCiv(Game.player.iCivID).iNukesSize > 1) {
                int i2 = 0;
                for (int i3 = 0; i3 < Game.getCiv(Game.player.iCivID).iNukesSize; i3++) {
                    i2 += Game.getCiv(Game.player.iCivID).nukesDaysLeft.get(i3).daysLeft;
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("InQueue") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str + (Game.getCiv(Game.player.iCivID).iNukesSize - 1), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(" [" + Game.lang.get(str2, i2) + "]", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, CFG.PADDING));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AtomicBombCost") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(Game.getAtomicBombCost(Game.player.iCivID), 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_RIGHT));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.nuke, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ProductionTime") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("XDays", Game.getAtomicBombProductionTime(Game.player.iCivID)), CFG.FONT_BOLD_SMALL, Colors.HOVER_RIGHT));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (Game.getCiv(Game.player.iCivID).getNuclearReactorLevel() < GameValues.atomic.NUCLEAR_REACTOR_LVL_TO_CONSTRUCT_NUKE) {
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("ToConstructAnAtomicBombTheNuclearReactorMustReachAtLeastLevel", GameValues.atomic.NUCLEAR_REACTOR_LVL_TO_CONSTRUCT_NUKE), CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        return new MenuElement_Hover(arrayList);
    }

    public static MenuElement_Hover getHoverNuclearReactor() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center(Game.lang.get("NuclearReactor"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_ImageFull(Images.nuclearReactorBig, 0, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Level") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(Game.player.iCivID).getNuclearReactorLevel() + " / " + Game.getNuclearReactor_MaxLvl(Game.player.iCivID), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AtomicBombCost") + ": ", CFG.FONT_REGULAR_SMALL));
        StringBuilder sb = new StringBuilder();
        float nuclearReactor_AtomicBombCost = Game.getNuclearReactor_AtomicBombCost(Game.player.iCivID);
        String str = uiwPYaNhJS.YqmY;
        arrayList2.add(new MenuElement_HoverElement_Type_Text(sb.append(nuclearReactor_AtomicBombCost > 0.0f ? "+" : str).append(CFG.getPrecision2(Game.getNuclearReactor_AtomicBombCost(Game.player.iCivID) * 100.0f, 100)).append("%").toString(), CFG.FONT_BOLD_SMALL, Game.getNuclearReactor_AtomicBombCost(Game.player.iCivID) < 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.HOVER_RIGHT));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.nuke, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ProductionEfficiency") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text((Game.getNuclearReactor_ProductionEfficiency(Game.player.iCivID) > 0.0f ? "+" : str) + CFG.getPrecision2(Game.getNuclearReactor_ProductionEfficiency(Game.player.iCivID), 100) + "%", CFG.FONT_BOLD_SMALL, Game.getNuclearReactor_ProductionEfficiency(Game.player.iCivID) > 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.HOVER_RIGHT));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.goods, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (Game.getCiv(Game.player.iCivID).getNuclearReactorLevel() >= Game.getNuclearReactor_MaxLvl(Game.player.iCivID)) {
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaximumLevel"), CFG.FONT_BOLD_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.nuke, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        } else {
            arrayList2.add(new MenuElement_HoverElement_Type_Empty());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("UpgradeNuclearReactor"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.nuke, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Cost") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(Game.getNuclearReactor_Cost(Game.player.iCivID), 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AtomicBombCostPerLevel") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(str + CFG.getPrecision2(GameValues.atomic.NUCLEAR_REACTOR_ATOMIC_BOMB_COST_PER_LEVEL * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.nuke, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ProductionEfficiencyPerLevel") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(GameValues.atomic.NUCLEAR_REACTOR_PRODUCTION_EFFICIENCY_PER_LVL, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.goods, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        return new MenuElement_Hover(arrayList);
    }

    public static final void upgradeNuclearReactor() {
        if (Game.getCiv(Game.player.iCivID).getNuclearReactorLevel() >= Game.getNuclearReactor_MaxLvl(Game.player.iCivID)) {
            Game.menuManager.addToastInsufficient(Game.lang.get("MaximumLevel") + ": ", "" + Game.getCiv(Game.player.iCivID).getNuclearReactorLevel() + " / " + Game.getNuclearReactor_MaxLvl(Game.player.iCivID), Images.nuke);
            return;
        }
        if (Game.getCiv(Game.player.iCivID).fGold < Game.getNuclearReactor_Cost(Game.player.iCivID)) {
            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getNuclearReactor_Cost(Game.player.iCivID), 100), Images.gold);
            return;
        }
        Game.getCiv(Game.player.iCivID).upgradeNuclearReactor();
        if (Game.menuManager.getVisibleInGame_Nukes()) {
            Game.menuManager.rebuildInGame_Nukes();
            lTime = 0L;
        }
        InGame_Info.iCivID = Game.player.iCivID;
        InGame_Info.iCivID2 = 0;
        Game.menuManager.rebuildInGame_Info(Game.lang.get("NuclearReactor"), Game.lang.get(PZBvyl.DEzAK) + ": " + Game.getCiv(Game.player.iCivID).getNuclearReactorLevel() + " / " + Game.getNuclearReactor_MaxLvl(Game.player.iCivID));
        InGame_Info.imgID = Images.infoCrown;
        Game.getCiv(Game.player.iCivID).updateTotalIncomePerMonth();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void actionCloseMenu() {
        super.actionCloseMenu();
        if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_NUKE_CHOOSE_PROVINCE) {
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
        }
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
        if (z || Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_NUKE_CHOOSE_PROVINCE) {
            return;
        }
        Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void updateLanguage() {
        super.updateLanguage();
        getTitle().setText(Game.lang.get("NuclearWeapons"));
    }
}
