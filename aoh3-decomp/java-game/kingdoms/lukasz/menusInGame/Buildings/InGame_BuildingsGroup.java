package aoc.kingdoms.lukasz.menusInGame.Buildings;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_DoubleText;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.backends.android.surfaceview.JuyF.CvuNnwgYwe;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_BuildingsGroup extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int iProvinceID;
    public static boolean isCapital;
    public static long lTime;
    public static int mTranslateX;
    public static int menuHeight;
    public static int menuX;
    public static int menuY;
    public int imgBot;
    public int imgTitle;
    public int imgTop;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Buildings.InGame_BuildingsGroup$1, reason: invalid class name */
    class AnonymousClass1 extends Text_TitleBlue {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
        protected Color getColor(boolean z) {
            return Colors.getColorTopStats3(z, getIsHovered());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Buildings.InGame_BuildingsGroup$2, reason: invalid class name */
    class AnonymousClass2 extends Text_TitleBlue {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
        protected Color getColor(boolean z) {
            return Colors.getColorTopStats3(z, getIsHovered());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Buildings.InGame_BuildingsGroup$3, reason: invalid class name */
    class AnonymousClass3 extends Text_TitleBlue {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
        protected Color getColor(boolean z) {
            return Colors.getColorTopStats3(z, getIsHovered());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Buildings.InGame_BuildingsGroup$4, reason: invalid class name */
    class AnonymousClass4 extends Text_TitleBlue {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("UniqueCapitalBuildings"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.player.iCivID, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
        protected Color getColor(boolean z) {
            return Colors.getColorTopStats3(z, getIsHovered());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Buildings.InGame_BuildingsGroup$5, reason: invalid class name */
    class AnonymousClass5 extends MenuTitleIMG_DoubleText {
        AnonymousClass5(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public void action() {
            Game.menuManager.setOrderOfMenu_InGameBuildings();
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_BuildingsGroup.lTime;
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public void onHovered() {
            Game.menuManager.setOrderOfMenu_InGameBuildings();
        }
    }

    public InGame_BuildingsGroup() {
        int width;
        ArrayList arrayList = new ArrayList();
        int i = CFG.PADDING;
        int i2 = Images.boxTitleBORDERWIDTH;
        ImageManager.getImage(Images.title2).getHeight();
        if (Game.getProvince(iProvinceID).isCapital && Game.getCiv(Game.getProvince(iProvinceID).getCivID()).getCapitalProvinceID() == iProvinceID) {
            this.imgTitle = Images.title928;
            this.imgTop = Images.insideTop928;
            this.imgBot = Images.insideBot928;
            isCapital = true;
            width = (ImageManager.getImage(this.imgTitle).getWidth() - (Images.boxTitleBORDERWIDTH * 2)) / 4;
        } else {
            this.imgTitle = Images.title698;
            this.imgTop = Images.insideTop698;
            this.imgBot = Images.insideBot698;
            isCapital = false;
            width = (ImageManager.getImage(this.imgTitle).getWidth() - (Images.boxTitleBORDERWIDTH * 2)) / 3;
        }
        int i3 = width;
        int width2 = ImageManager.getImage(this.imgTitle).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        menuX = Images.boxTitleBORDERWIDTH + otherMenuPosX_2;
        int height = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title1Red).getHeight();
        menuY = getInnerTitleHeight() + height;
        arrayList.add(new AnonymousClass1(Game.lang.get("Administration"), -1, Images.boxTitleBORDERWIDTH, 0, i3, getInnerTitleHeight()));
        arrayList.add(new AnonymousClass2(Game.lang.get("Military"), -1, Images.boxTitleBORDERWIDTH + i3, 0, i3, getInnerTitleHeight()));
        arrayList.add(new AnonymousClass3(Game.lang.get("Economy"), -1, Images.boxTitleBORDERWIDTH + (i3 * 2), 0, i3, getInnerTitleHeight()));
        if (isCapital) {
            arrayList.add(new AnonymousClass4(Game.lang.get(CvuNnwgYwe.QOhNW), -1, Images.boxTitleBORDERWIDTH + (i3 * 3), 0, i3, getInnerTitleHeight()));
        }
        int height2 = 0 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2) + ((ImageManager.getImage(Images.buildingsFrame).getHeight() + (CFG.PADDING * 4)) * 6);
        int iMin = CFG.isDesktop() ? Math.min(height2, ((CFG.GAME_HEIGHT - height) - (CFG.GAME_HEIGHT - InGame_ProvinceInfo.menuPosY)) - (CFG.PADDING * 3)) : Math.min(height2, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 2));
        menuHeight = iMin - getInnerTitleHeight();
        arrayList.add(new Empty(0, 0, width2, Math.min(height - 1, Math.max(height2, iMin))));
        initMenu(new AnonymousClass5(Game.lang.get("ConstructNewBuilding"), Game.getProvince(iProvinceID).getProvinceName(), false, false, this.imgTitle), otherMenuPosX_2, height, width2, iMin, arrayList, false, true);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void actionCloseMenu() {
        super.actionCloseMenu();
        Game.menuManager.setVisibleInGame_Buildings(false, false);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i;
        mTranslateX = i3;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight() + CFG.PADDING, false, this.imgTop, this.imgBot);
        super.draw(spriteBatch, i3, i2, z, status);
    }

    public int getInnerTitleHeight() {
        return CFG.TEXT_HEIGHT + (CFG.PADDING * 6);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void onHovered() {
        super.onHovered();
        Game.menuManager.setOrderOfMenu_InGameBuildings();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
    }
}
