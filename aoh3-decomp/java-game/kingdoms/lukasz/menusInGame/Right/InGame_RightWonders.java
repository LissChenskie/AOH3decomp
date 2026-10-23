package aoc.kingdoms.lukasz.menusInGame.Right;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.WondersManager;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_DoubleText;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonWonderProvince;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_Flag;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort;
import aoc.kingdoms.lukasz.menusInGame.InGame_Wonder;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_RightWonders extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int iReligionID = -1;
    public static int iSortID;
    public static long lTime;
    public static long lTime2;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightWonders$1, reason: invalid class name */
    class AnonymousClass1 extends Text_TitleBlueSort {
        AnonymousClass1(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightWonders.iSortID == 0) {
                InGame_RightWonders.iSortID = 1;
            } else {
                InGame_RightWonders.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_RightWonders();
            InGame_RightWonders.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Name"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightWonders$2, reason: invalid class name */
    class AnonymousClass2 extends Text_TitleBlueSort {
        AnonymousClass2(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightWonders.iSortID == 2) {
                InGame_RightWonders.iSortID = 3;
            } else {
                InGame_RightWonders.iSortID = 2;
            }
            Game.menuManager.rebuildInGame_RightWonders();
            InGame_RightWonders.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Province"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightWonders$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonWonderProvince {
        AnonymousClass3(int i, int i2, int i3, int i4) {
            super(i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.mapCoords.centerToProvinceID(getCurrent());
            Game.setActiveProvinceID(getCurrent());
            ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
            if (!Game.menuManager.getVisibleInGame_Wonder() || getCurrent() < 0 || Game.getProvince(getCurrent()).wonderID < 0) {
                return;
            }
            InGame_Wonder.iProvinceID = getCurrent();
            Game.menuManager.rebuildInGame_Wonder();
            InGame_Wonder.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonWonderProvince, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = getHoverWonder(this.iProvinceID, this.wonderID, false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonWonderProvince, aoc.kingdoms.lukasz.menu_element.button.Button
        public void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f));
            Renderer.drawBox(spriteBatch, Images.statsRectBG, (getPosX() - CFG.PADDING) + i, (getPosY() - (CFG.PADDING * 2)) + i2, (CFG.PADDING * 2) + getWidth(), (CFG.PADDING * 4) + getHeight(), 1.0f);
            spriteBatch.setColor(Color.WHITE);
            super.drawButtonBG(spriteBatch, i, i2, z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightWonders$4, reason: invalid class name */
    class AnonymousClass4 extends Text_StaticBG_ID {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.iActiveProvince == getCurrent()) {
                Game.menuManager.hideCourtCiv();
                Game.menuManager.setVisibleInGame_Civ(false);
                Game.setActiveProvinceID(getCurrent());
                Game.menuManager.rebuildInGame_ProvinceInfo(true);
                ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
            } else {
                Game.mapCoords.centerToProvinceID(getCurrent());
                Game.setActiveProvinceID(getCurrent());
                ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
                if (Game.menuManager.getVisibleInGame_ProvinceInfo()) {
                    Game.menuManager.rebuildInGame_ProvinceInfo(false);
                }
            }
            if (!Game.menuManager.getVisibleInGame_Wonder() || getCurrent() < 0 || Game.getProvince(getCurrent()).wonderID < 0) {
                return;
            }
            InGame_Wonder.iProvinceID = getCurrent();
            Game.menuManager.rebuildInGame_Wonder();
            InGame_Wonder.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
        protected Color getColor(boolean z) {
            return Colors.getColorTopStats3(z, getIsHovered());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightWonders$5, reason: invalid class name */
    class AnonymousClass5 extends Text_StaticBG_ID_Flag {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.iActiveProvince == getCurrent()) {
                Game.menuManager.hideCourtCiv();
                Game.menuManager.setVisibleInGame_Civ(false);
                Game.setActiveProvinceID(getCurrent());
                Game.menuManager.rebuildInGame_ProvinceInfo(true);
                ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
            } else {
                Game.mapCoords.centerToProvinceID(getCurrent());
                Game.setActiveProvinceID(getCurrent());
                ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
                if (Game.menuManager.getVisibleInGame_ProvinceInfo()) {
                    Game.menuManager.rebuildInGame_ProvinceInfo(false);
                }
            }
            if (!Game.menuManager.getVisibleInGame_Wonder() || getCurrent() < 0 || Game.getProvince(getCurrent()).wonderID < 0) {
                return;
            }
            InGame_Wonder.iProvinceID = getCurrent();
            Game.menuManager.rebuildInGame_Wonder();
            InGame_Wonder.lTime = 0L;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightWonders$6, reason: invalid class name */
    class AnonymousClass6 extends MenuTitleIMG_DoubleText {
        AnonymousClass6(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG, aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public void draw(SpriteBatch spriteBatch, int i, int i2, int i3, Status status) {
            ImageManager.getImage(this.imageID).draw2(spriteBatch, i, i2 - getHeight(), i3, getHeight());
            drawGradient(spriteBatch, i, i2, i3, status);
            drawText(spriteBatch, i + (Images.boxTitleBORDERWIDTH / 2), i2, i3, status);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_RightWonders.lTime2;
        }
    }

    public InGame_RightWonders() {
        int i;
        int i2;
        ArrayList arrayList = new ArrayList();
        int i3 = CFG.PADDING;
        ImageManager.getImage(Images.title2).getHeight();
        int i4 = Images.boxTitleBORDERWIDTH;
        int width = ImageManager.getImage(Images.title1Red).getWidth();
        int i5 = CFG.GAME_WIDTH - width;
        int height = ImageManager.getImage(Images.topStats).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title1Red).getHeight();
        int i6 = CFG.PADDING;
        int i7 = Images.boxTitleBORDERWIDTH;
        if (CFG.isDesktop()) {
            int i8 = CFG.BUTTON_HEIGHT3;
        } else {
            int i9 = CFG.BUTTON_HEIGHT2;
        }
        int width2 = ImageManager.getImage(Images.wonderFrame).getWidth() + (CFG.PADDING * 2);
        int i10 = (width - Images.boxTitleBORDERWIDTH) - width2;
        int width3 = ((width - Images.boxTitleBORDERWIDTH) - (CFG.PADDING * 5)) - ImageManager.getImage(Images.wonderFrame).getWidth();
        int i11 = Images.boxTitleBORDERWIDTH;
        int height2 = ((ImageManager.getImage(Images.wonderFrame).getHeight() + (CFG.PADDING * 4)) - CFG.PADDING) / 2;
        int i12 = iSortID;
        int i13 = 1;
        arrayList.add(new AnonymousClass1(i12 == 0 || i12 == 1, i12 == 1, Game.lang.get("Name"), -1, i11, 0, width2, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width4 = i11 + arrayList.get(arrayList.size() - 1).getWidth();
        int i14 = iSortID;
        arrayList.add(new AnonymousClass2(i14 == 2 || i14 == 3, i14 == 3, Game.lang.get("Province"), -1, width4, 0, i10, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int i15 = 0;
        int height3 = arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING + 0;
        ArrayList arrayList2 = new ArrayList();
        for (int i16 = 0; i16 < WondersManager.wondersSize; i16++) {
            if (WondersManager.wonders.get(i16).ProvinceID >= 0) {
                arrayList2.add(Integer.valueOf(i16));
            }
        }
        if (arrayList2.size() > 0) {
            while (arrayList2.size() > 0) {
                int i17 = iSortID;
                if (i17 == 0) {
                    i2 = i15;
                    for (int i18 = i13; i18 < arrayList2.size(); i18++) {
                        if (CFG.compareAlphabetic_TwoString(WondersManager.wonders.get(((Integer) arrayList2.get(i2)).intValue()).Name, WondersManager.wonders.get(((Integer) arrayList2.get(i18)).intValue()).Name)) {
                            i2 = i18;
                        }
                    }
                } else if (i17 == i13) {
                    i2 = 0;
                    for (int i19 = i13; i19 < arrayList2.size(); i19++) {
                        if (CFG.compareAlphabetic_TwoString(WondersManager.wonders.get(((Integer) arrayList2.get(i19)).intValue()).Name, WondersManager.wonders.get(((Integer) arrayList2.get(i2)).intValue()).Name)) {
                            i2 = i19;
                        }
                    }
                } else if (i17 == 2) {
                    i2 = 0;
                    for (int i20 = i13; i20 < arrayList2.size(); i20++) {
                        if (CFG.compareAlphabetic_TwoString(Game.getProvince(WondersManager.wonders.get(((Integer) arrayList2.get(i2)).intValue()).ProvinceID).getProvinceName(), Game.getProvince(WondersManager.wonders.get(((Integer) arrayList2.get(i20)).intValue()).ProvinceID).getProvinceName())) {
                            i2 = i20;
                        }
                    }
                } else if (i17 == 3) {
                    i2 = 0;
                    for (int i21 = i13; i21 < arrayList2.size(); i21++) {
                        if (CFG.compareAlphabetic_TwoString(Game.getProvince(WondersManager.wonders.get(((Integer) arrayList2.get(i21)).intValue()).ProvinceID).getProvinceName(), Game.getProvince(WondersManager.wonders.get(((Integer) arrayList2.get(i2)).intValue()).ProvinceID).getProvinceName())) {
                            i2 = i21;
                        }
                    }
                } else {
                    i2 = 0;
                }
                int i22 = Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2);
                arrayList.add(new AnonymousClass3(i22, height3 + (CFG.PADDING * 2), ((Integer) arrayList2.get(i2)).intValue(), WondersManager.wonders.get(((Integer) arrayList2.get(i2)).intValue()).ProvinceID));
                int width5 = i22 + arrayList.get(arrayList.size() - i13).getWidth() + (CFG.PADDING * 2);
                arrayList.add(new AnonymousClass4(WondersManager.wonders.get(((Integer) arrayList2.get(i2)).intValue()).Name, CFG.FONT_BOLD_SMALL, CFG.PADDING * 2, width5, height3, width3, height2, WondersManager.wonders.get(((Integer) arrayList2.get(i2)).intValue()).ProvinceID));
                arrayList.add(new AnonymousClass5(Game.getProvince(WondersManager.wonders.get(((Integer) arrayList2.get(i2)).intValue()).ProvinceID).getProvinceName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, width5, CFG.PADDING + height3 + height2, width3, height2, WondersManager.wonders.get(((Integer) arrayList2.get(i2)).intValue()).ProvinceID));
                height3 += ImageManager.getImage(Images.wonderFrame).getHeight() + (CFG.PADDING * 4) + CFG.PADDING;
                arrayList2.remove(i2);
                i13 = 1;
                i15 = 0;
            }
            i = i15;
        } else {
            i = 0;
            arrayList.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i3, height3, width - (i3 * 2), CFG.BUTTON_HEIGHT2));
            arrayList.get(arrayList.size() - 1).getHeight();
            int i23 = CFG.PADDING;
        }
        int size = arrayList.size();
        int i24 = i;
        int posY = i24;
        while (i24 < size) {
            if (posY < arrayList.get(i24).getPosY() + arrayList.get(i24).getHeight() + CFG.PADDING) {
                posY = arrayList.get(i24).getPosY() + arrayList.get(i24).getHeight() + CFG.PADDING;
            }
            i24++;
        }
        int iMin = Math.min(posY, (CFG.GAME_HEIGHT - height) - ((CFG.GAME_HEIGHT - Game.menuManager.getInGame_MapModesPosY()) + (CFG.PADDING * 3)));
        arrayList.add(new Empty(i, i, width, Math.max(posY, iMin)));
        initMenu(new AnonymousClass6(Game.lang.get("Wonders"), Game.lang.get("Total") + ": " + WondersManager.wondersSize, false, false, Images.title600), i5, height, width, iMin, arrayList, false, true);
        this.scrollExtraPosX = Images.boxTitleBORDERWIDTH;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (CFG.BUTTON_WIDTH + i) - ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), CFG.PADDING + getHeight(), false, Images.insideTop600, Images.insideBot600);
        spriteBatch.setColor(Colors.COLOR_GRADIENT);
        Images.gradientXY.draw(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight(), false, true);
        spriteBatch.setColor(Color.WHITE);
        super.draw(spriteBatch, i3, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public boolean getVisible() {
        return super.getVisible() && Game.mapBG.getHideMenuZoomOut() && !Game.menuManager.getVisibleInGame_CivBonuses();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        long j = CFG.currentTimeMillis;
        lTime = j;
        lTime2 = j;
    }
}
