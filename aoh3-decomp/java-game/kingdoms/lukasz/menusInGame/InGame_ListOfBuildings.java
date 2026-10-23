package aoc.kingdoms.lukasz.menusInGame;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.LanguageManager;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.BuildingsManager;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_DoubleText;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonBuilding_Special;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2Center;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.Technology.InGame_TechnologyChoose;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_ListOfBuildings extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static boolean IN_BUILDINGS;
    public static long lTime;
    public static long lTime2;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_ListOfBuildings$1, reason: invalid class name */
    class AnonymousClass1 extends MenuTitleIMG_DoubleText {
        AnonymousClass1(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_ListOfBuildings.lTime2;
        }
    }

    public InGame_ListOfBuildings() {
        LanguageManager languageManager;
        String str;
        ArrayList arrayList = new ArrayList();
        int i = 2;
        int i2 = (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH;
        ImageManager.getImage(Images.title500).getHeight();
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title500).getHeight();
        int i3 = CFG.PADDING;
        int i4 = 1;
        IN_BUILDINGS = true;
        int i5 = 0;
        InGame_TechnologyChoose.IN_TECHNOLOGY_CHOOSE = false;
        int height2 = 0;
        int i6 = 0;
        int i7 = 0;
        while (i7 < 4) {
            if (i7 == 0) {
                languageManager = Game.lang;
                str = "Administration";
            } else {
                languageManager = Game.lang;
                str = i7 == i4 ? "Military" : i7 == i ? "Economy" : "UniqueCapitalBuildings";
            }
            arrayList.add(new Text_Title_v2Center(languageManager.get(str), -1, Images.boxTitleBORDERWIDTH, height2, width - (Images.boxTitleBORDERWIDTH * i), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
            height2 += arrayList.get(arrayList.size() - i4).getHeight() + i3;
            int i8 = i5;
            while (i8 < BuildingsManager.buildingsSize) {
                int height3 = height2;
                int i9 = i6;
                int i10 = i5;
                while (i10 < BuildingsManager.buildingSize.get(i8).intValue()) {
                    if (BuildingsManager.buildings.get(i8).GroupID == i7) {
                        arrayList.add(new ButtonBuilding_Special(true, i8, i10, i2, height3, width - (i2 * 2), true, true, ""));
                        height3 += arrayList.get(arrayList.size() - 1).getHeight() + i3;
                        i9++;
                    }
                    i10++;
                    i8 = i8;
                    i7 = i7;
                    i4 = i4;
                }
                i8++;
                height2 = height3;
                i6 = i9;
                i5 = 0;
            }
            i7++;
            i = 2;
            i5 = 0;
        }
        arrayList.add(new Text_Title_v2Center(Game.lang.get("Resources"), -1, Images.boxTitleBORDERWIDTH, height2, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height4 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + i3;
        int i11 = BuildingsManager.buildingsResourceStartID;
        while (i11 < BuildingsManager.buildingsResourceSize) {
            int height5 = height4;
            int i12 = i6;
            for (int i13 = 0; i13 < BuildingsManager.buildingSize.get(i11).intValue(); i13++) {
                if (BuildingsManager.buildings.get(i11).RequiredResource >= 0 && !BuildingsManager.buildings.get(i11).UniqueCapitalBuilding) {
                    arrayList.add(new ButtonBuilding_Special(true, i11, i13, i2, height5, width - (i2 * 2), true, true, ""));
                    height5 += arrayList.get(arrayList.size() - 1).getHeight() + i3;
                    i12++;
                }
            }
            i11++;
            height4 = height5;
            i6 = i12;
        }
        int iMin = Math.min(height4, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, 0, width, Math.max(height4, iMin)));
        initMenu(new AnonymousClass1(Game.lang.get("ListOfBuildings"), "" + i6, false, false, Images.title500), otherMenuPosX_2, height, width, iMin, arrayList, false, true);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void actionCloseMenu() {
        super.actionCloseMenu();
        InGame_Civ.actionOnClose();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop500, Images.insideBot500);
        ImageManager.getImage(Images.rulerOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.rulerOver).getWidth() / 2)) + i3, getPosY() + i2, ImageManager.getImage(Images.rulerOver).getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.rulerOver).getHeight()));
        super.draw(spriteBatch, i3, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
        lTime2 = CFG.currentTimeMillis;
    }
}
