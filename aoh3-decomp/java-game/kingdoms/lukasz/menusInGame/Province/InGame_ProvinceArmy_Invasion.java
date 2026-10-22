package aoc.kingdoms.lukasz.menusInGame.Province;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Click;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Desc;
import aoc.kingdoms.lukasz.menusInGame.DrawOver.SQ.XjthpFh;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_ProvinceArmy_Invasion extends Menu {

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmy_Invasion$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, i7, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            CFG.brushTool = !CFG.brushTool;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Click
        public int getImageID() {
            return CFG.brushTool ? Images.v : Images.x;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmy_Invasion$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, i7, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.invasionArmy_UndoProvince();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmy_Invasion$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, i7, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.invasionArmy_Clear();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmy_Invasion$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonGame {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_ProvinceArmy_Invasion.confirm();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("LaunchInvasionOfProvinces"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.invasion, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getClickable() {
            return Game.invasionArmyProvincesSize > 0;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmy_Invasion$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, i7, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.setInvasionArmyMode(false);
        }
    }

    public InGame_ProvinceArmy_Invasion() {
        ArrayList arrayList = new ArrayList();
        int i = CFG.PADDING;
        int i2 = CFG.PADDING;
        int i3 = CFG.PADDING;
        ImageManager.getImage(Images.generalFrame).getWidth();
        if (Game.invasionArmyMode) {
            try {
                int i4 = (CFG.GAME_HEIGHT - InGame_ProvinceArmyUnits.mPosY) - (CFG.PADDING * 2);
                int i5 = InGame_ProvinceArmyUnits.mWidth - (CFG.PADDING * 4);
                arrayList.add(new Text_Desc(Game.lang.get("OnlyProvincesBelongingToCivilizationsYouAreAtWarWithCanBeConquered"), i, i2, i5));
                int height = i2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int height2 = i4 - (arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING);
                int i6 = (i5 - CFG.PADDING) / 2;
                int i7 = (height2 - CFG.PADDING) / 2;
                int i8 = (height2 - (CFG.PADDING * 2)) / 3;
                arrayList.add(new AnonymousClass1(Game.lang.get("Brush"), Images.x, i, height, i6, i8, ImageManager.getImage(Images.gold).getWidth(), 0, true));
                arrayList.add(new AnonymousClass2(Game.lang.get("Undo"), Images.x, i, height + i8 + CFG.PADDING, i6, i8, ImageManager.getImage(Images.gold).getWidth(), 0, true));
                arrayList.add(new AnonymousClass3(Game.lang.get("Clear"), Images.x, i, (i8 * 2) + height + (CFG.PADDING * 2), i6, i8, ImageManager.getImage(Images.gold).getWidth(), 0, true));
                arrayList.add(new AnonymousClass4(Game.lang.get("Confirm"), CFG.FONT_REGULAR, -1, CFG.PADDING + i + i6, height, i6, i7, true));
                arrayList.add(new AnonymousClass5(Game.lang.get(XjthpFh.oqLVeoVAlUndz), Images.x, i + CFG.PADDING + i6, height + CFG.PADDING + i7, i6, i7, ImageManager.getImage(Images.gold).getWidth(), 0, true));
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        int size = arrayList.size();
        int posY = 0;
        for (int i9 = 0; i9 < size; i9++) {
            if (posY < arrayList.get(i9).getPosY() + arrayList.get(i9).getHeight() + CFG.PADDING) {
                posY = arrayList.get(i9).getPosY() + arrayList.get(i9).getHeight() + CFG.PADDING;
            }
        }
        initMenu(null, InGame_ProvinceArmyUnits.mPosX, InGame_ProvinceArmyUnits.mPosY, InGame_ProvinceArmyUnits.mWidth, Math.max(CFG.PADDING, posY), arrayList, false);
        this.drawScrollPositionAlways = false;
    }

    public static final void confirm() {
        if (!Game.player.playerData.invasion.addInvasion(Game.player.iCivID)) {
            Game.menuManager.addToast_Error(Game.lang.get("ArmyNotFound"), Game_Calendar.IMG_MANPOWER);
        } else {
            Game.menuManager.addToastGold(Game.lang.get("Done"), Game_Calendar.IMG_MANPOWER);
            Game.setInvasionArmyMode(false);
        }
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
