package aoc.kingdoms.lukasz.menusInGame.Buildings;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.BuildingsManager;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonBuilding;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Buildings extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int iProvinceID;
    private long lTime = 0;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Buildings.InGame_Buildings$1, reason: invalid class name */
    class AnonymousClass1 extends Text_Title {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("BuildingsConstructed"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Buildings.InGame_Buildings$2, reason: invalid class name */
    class AnonymousClass2 extends Text_TitleBlue {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("UniqueCapitalBuildings"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Buildings.InGame_Buildings$3, reason: invalid class name */
    class AnonymousClass3 extends Text_TitleBlue {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Buildings"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Buildings.InGame_Buildings$4, reason: invalid class name */
    class AnonymousClass4 extends MenuTitleIMG_FlagCenter {
        AnonymousClass4(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter
        public int getFlagCivID() {
            return Game.getProvince(InGame_Buildings.iProvinceID).getCivID();
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Buildings.this.lTime;
        }
    }

    public InGame_Buildings() {
        boolean z;
        ArrayList arrayList = new ArrayList();
        int i = CFG.PADDING * 4;
        int height = ImageManager.getImage(Images.title2).getHeight();
        int width = ImageManager.getImage(Images.insideTop).getWidth();
        int i2 = CFG.BUTTON_WIDTH + Renderer.boxBGExtraY + CFG.PADDING;
        int height2 = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title1Red).getHeight();
        int i3 = CFG.PADDING * 2;
        int i4 = CFG.PADDING;
        arrayList.add(new AnonymousClass1(Game.lang.get("BuildingsConstructed"), -1, Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height3 = arrayList.get(arrayList.size() - 1).getHeight() + i3 + 0;
        int i5 = width - (i * 2);
        int i6 = 0;
        arrayList.add(new ButtonBuilding(true, 6, 0, i, height3, i5, true, true));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + i3;
        arrayList.add(new AnonymousClass2(Game.lang.get("UniqueCapitalBuildings"), -1, Images.boxTitleBORDERWIDTH, height4, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int i7 = 0;
        boolean z2 = true;
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + i3;
        while (i7 < BuildingsManager.buildingsSize) {
            int height6 = height5;
            int i8 = i6;
            while (i8 < BuildingsManager.buildingSize.get(i7).intValue()) {
                if (!z2 || BuildingsManager.buildings.get(i7).UniqueCapitalBuilding) {
                    z = z2;
                } else {
                    arrayList.add(new AnonymousClass3(Game.lang.get("Buildings"), -1, Images.boxTitleBORDERWIDTH, height6, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
                    height6 += arrayList.get(arrayList.size() - 1).getHeight() + i3;
                    z = false;
                }
                arrayList.add(new ButtonBuilding(false, i7, i8, i, height6, i5, true, true));
                height6 += arrayList.get(arrayList.size() - 1).getHeight() + i3;
                i8++;
                z2 = z;
                i7 = i7;
            }
            i7++;
            height5 = height6;
            i6 = 0;
        }
        int iMin = Math.min(height5, (CFG.GAME_HEIGHT - height) - height2);
        arrayList.add(new Empty(0, 0, width, Math.max(height5, iMin)));
        initMenu(new AnonymousClass4(Game.lang.get("ConstructNewBuilding"), Game.getProvince(iProvinceID).getProvinceName(), false, false, Images.title1Red), i2, height2, width, iMin, arrayList, false, true);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        if (this.lTime + 60 >= CFG.currentTimeMillis) {
            i = (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - this.lTime) / 60.0f)));
        }
        int i3 = i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight() + CFG.PADDING, false);
        ImageManager.getImage(Images.recruitArmyOver).draw2(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.recruitArmyOver).getHeight()));
        super.draw(spriteBatch, i3, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        this.lTime = CFG.currentTimeMillis;
    }
}
