package aoc.kingdoms.lukasz.menusInGame.Civ;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRanking;
import aoc.kingdoms.lukasz.map.civilization.stats.LQy.lJxd;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag2;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Click;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Horizontal;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2Center;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_CivRank extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static long lTime;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_CivRank$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_Civ();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("OpenTheDiplomacyView"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.diplomacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_CivRank$2, reason: invalid class name */
    class AnonymousClass2 extends TextIcon2_Horizontal {
        int id;

        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6) {
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_CivRank$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonFlag2 {
        AnonymousClass3(int i, int i2, int i3, boolean z) {
            super(i, i2, i3, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(getCurrent()).getCapitalProvinceID() >= 0) {
                if (!Game.getProvince(Game.getCiv(getCurrent()).getCapitalProvinceID()).getDrawProvince()) {
                    Game.mapCoords.centerToProvinceID(Game.getCiv(getCurrent()).getCapitalProvinceID());
                }
                Game.setActiveProvinceID(Game.getCiv(getCurrent()).getCapitalProvinceID());
                ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
                Game.menuManager.rebuildInGame_Civ();
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_CivRank$4, reason: invalid class name */
    class AnonymousClass4 extends Text_StaticBG_ID {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(getCurrent()).getCapitalProvinceID() >= 0) {
                Game.mapCoords.centerToProvinceID(Game.getCiv(getCurrent()).getCapitalProvinceID());
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_CivRank$5, reason: invalid class name */
    class AnonymousClass5 extends Text_StaticBG {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("NumberOfProvinces") + lJxd.xxtKMXNZ));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(getText(), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_CivRank$6, reason: invalid class name */
    class AnonymousClass6 extends MenuTitleIMG {
        AnonymousClass6(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_CivRank.lTime;
        }
    }

    public InGame_CivRank() {
        ArrayList arrayList = new ArrayList();
        int i = Images.boxTitleBORDERWIDTH + CFG.PADDING;
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height = ImageManager.getImage(Images.title1Red).getHeight() + ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i2 = CFG.PADDING * 2;
        int height2 = ImageManager.getImage(Images.flagOverDefault).getHeight();
        int i3 = width - (i * 2);
        int width2 = (int) (((i3 - ImageManager.getImage(Images.flagOverDefault).getWidth()) - (CFG.PADDING * 2)) * 0.65f);
        int width3 = (int) (((i3 - ImageManager.getImage(Images.flagOverDefault).getWidth()) - (CFG.PADDING * 2)) * 0.35f);
        int i4 = Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2);
        int i5 = width - (i4 * 2);
        String str = "";
        arrayList.add(new AnonymousClass1(Game.lang.get("Civilizations") + ": " + CFG.getNumberWithSpaces("" + Game.getCivilizationsInGame()), Images.council, i4, i2, i5, height2, ImageManager.getImage(Images.council).getWidth(), 0));
        int height3 = i2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int width4 = ImageManager.getImage(Images.council).getWidth() + (CFG.PADDING * 2);
        int i6 = (i5 - CFG.PADDING) / 2;
        int i7 = 0;
        while (i7 < GameValues.civRank.CIV_RANK_MANPOWER_MAX.length) {
            int i8 = height2;
            int i9 = i7;
            arrayList.add(new AnonymousClass2(CivilizationRanking.getCivilizationRank_Name(i7), CivilizationRanking.getCivilizationRank_IMG(i7), i7 % 2 == 0 ? i : CFG.PADDING + i + i6, height3, i6, CFG.BUTTON_HEIGHT3, width4));
            arrayList.get(arrayList.size() - 1).setCurrent(i9);
            i7 = i9 + 1;
            if (i7 % 2 == 0) {
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            height2 = i8;
        }
        int i10 = height2;
        int size = arrayList.size();
        for (int i11 = 0; i11 < size; i11++) {
            if (height3 < arrayList.get(i11).getPosY() + arrayList.get(i11).getHeight() + CFG.PADDING) {
                height3 = arrayList.get(i11).getPosY() + arrayList.get(i11).getHeight() + CFG.PADDING;
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i12 = 1; i12 < Game.getCivsSize(); i12++) {
            if (Game.getCiv(i12).getNumOfProvinces() > 0) {
                arrayList2.add(Integer.valueOf(i12));
            }
        }
        int i13 = 5;
        while (arrayList2.size() > 0) {
            int size2 = arrayList2.size();
            int i14 = 0;
            for (int i15 = 0; i15 < size2; i15++) {
                if (Game.getCiv(((Integer) arrayList2.get(i14)).intValue()).getNumOfProvinces() < Game.getCiv(((Integer) arrayList2.get(i15)).intValue()).getNumOfProvinces()) {
                    i14 = i15;
                }
            }
            if (Game.getCiv(((Integer) arrayList2.get(i14)).intValue()).iCivRankID != i13) {
                i13 = Game.getCiv(((Integer) arrayList2.get(i14)).intValue()).iCivRankID;
                arrayList.add(new Text_Title_v2Center(Game.lang.get("CivilizationRank") + ": " + CivilizationRanking.getCivilizationRank_Name(i13), -1, Images.boxTitleBORDERWIDTH, height3, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
                int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight();
                int i16 = Images.boxTitleBORDERWIDTH;
                arrayList.add(new Text_Title_v2Center(Game.lang.get("Civilization"), -1, CFG.FONT_REGULAR_SMALL, i16, height4, (width - width3) - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4)));
                int width5 = i16 + arrayList.get(arrayList.size() - 1).getWidth();
                arrayList.add(new Text_Title_v2Center(Game.lang.get("Provinces"), -1, CFG.FONT_REGULAR_SMALL, width5, height4, (width - width5) - Images.boxTitleBORDERWIDTH, CFG.TEXT_HEIGHT + (CFG.PADDING * 4)));
                height3 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            arrayList.add(new AnonymousClass3(((Integer) arrayList2.get(i14)).intValue(), i, height3, true));
            int width6 = i + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            int i17 = i14;
            arrayList.add(new AnonymousClass4(Game.getCiv(((Integer) arrayList2.get(i14)).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, -1, width6, height3, width2, i10, ((Integer) arrayList2.get(i14)).intValue()));
            String str2 = str;
            arrayList.add(new AnonymousClass5(str2 + Game.getCiv(((Integer) arrayList2.get(i17)).intValue()).getNumOfProvinces(), CFG.FONT_REGULAR_SMALL, -1, width6 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height3, width3, i10));
            height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            arrayList2.remove(i17);
            str = str2;
            i = i;
        }
        int size3 = arrayList.size();
        int posY = 0;
        for (int i18 = 0; i18 < size3; i18++) {
            if (posY < arrayList.get(i18).getPosY() + arrayList.get(i18).getHeight() + CFG.PADDING) {
                posY = arrayList.get(i18).getPosY() + arrayList.get(i18).getHeight() + CFG.PADDING;
            }
        }
        int iMin = Math.min(posY, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, 0, width, Math.max(posY, iMin)));
        initMenu(new AnonymousClass6(Game.lang.get("CivilizationRank"), false, false, Images.title500), otherMenuPosX_2, height, width, iMin, arrayList, false, true);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth() + Images.boxTitleBORDERWIDTH, getHeight() + CFG.PADDING, false, Images.insideTop500, Images.insideBot500);
        ImageManager.getImage(Images.rulerOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.rulerOver).getWidth() / 2)) + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.rulerOver).getHeight()));
        super.draw(spriteBatch, i3, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void updateLanguage() {
        super.updateLanguage();
        getTitle().setText(Game.lang.get("Civilizations"));
    }
}
