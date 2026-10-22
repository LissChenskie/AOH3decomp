package aoc.kingdoms.lukasz.menusInGame;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.army.ArmyManager;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_DoubleText;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonUnit_03;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.Technology.InGame_TechnologyChoose;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_ListOfUnits extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static long lTime;
    public static long lTime2;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_ListOfUnits$1, reason: invalid class name */
    class AnonymousClass1 extends MenuTitleIMG_DoubleText {
        AnonymousClass1(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG, aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public void draw(SpriteBatch spriteBatch, int i, int i2, int i3, Status status) {
            super.draw(spriteBatch, i - Images.boxTitleBORDERWIDTH, i2, i3 + (Images.boxTitleBORDERWIDTH * 2), status);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_ListOfUnits.lTime2;
        }
    }

    public InGame_ListOfUnits() {
        ArrayList arrayList = new ArrayList();
        int i = CFG.PADDING * 2;
        ImageManager.getImage(Images.title698).getHeight();
        int width = ImageManager.getImage(Images.insideTop698).getWidth() - (Images.boxTitleBORDERWIDTH * 2);
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height = ImageManager.getImage(Images.title698).getHeight() + ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int height2 = CFG.PADDING;
        int i2 = 0;
        InGame_ListOfBuildings.IN_BUILDINGS = false;
        InGame_TechnologyChoose.IN_TECHNOLOGY_CHOOSE = false;
        int width2 = (ImageManager.getImage(Images.insideTop).getWidth() - (i * 2)) - CFG.BUTTON_HEIGHT;
        int i3 = 0;
        int i4 = 0;
        while (i3 < ArmyManager.lArmy.size()) {
            int i5 = i;
            int i6 = i4;
            for (int i7 = i2; i7 < ArmyManager.lArmy.get(i3).size(); i7++) {
                arrayList.add(new ButtonUnit_03(i3, i7, i5, height2, width2, true));
                i5 += CFG.PADDING + width2;
                i6++;
            }
            height2 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            i3++;
            i4 = i6;
            i2 = 0;
        }
        int iMin = Math.min(height2, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 3));
        int iMax = 0;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            iMax = Math.max(iMax, arrayList.get(size).getPosX() + arrayList.get(size).getWidth() + CFG.PADDING);
        }
        arrayList.add(new Empty(0, 0, iMax, Math.max(height2, iMin)));
        initMenu(new AnonymousClass1(Game.lang.get("ListOfUnits"), "" + i4, false, false, Images.title698), otherMenuPosX_2 + Images.boxTitleBORDERWIDTH, height, width, iMin, arrayList, false, true);
        this.scrollExtraPosX = Images.boxTitleBORDERWIDTH;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void actionCloseMenu() {
        super.actionCloseMenu();
        InGame_Civ.actionOnClose();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i;
        Renderer.drawBoxCorner(spriteBatch, (getPosX() - Images.boxTitleBORDERWIDTH) + i3, (getPosY() - getTitle().getHeight()) + i2, getWidth() + (Images.boxTitleBORDERWIDTH * 2), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, (getPosX() - Images.boxTitleBORDERWIDTH) + i3, getPosY() + i2, getWidth() + (Images.boxTitleBORDERWIDTH * 2), getHeight() + CFG.PADDING, false, Images.insideTop698, Images.insideBot698);
        ImageManager.getImage(Images.outlinerOver).draw2(spriteBatch, ((getPosX() + ((getWidth() + Images.boxTitleBORDERWIDTH) / 2)) - (ImageManager.getImage(Images.outlinerOver).getWidth() / 2)) + i3, getPosY() + i2, ImageManager.getImage(Images.outlinerOver).getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.outlinerOver).getHeight()));
        super.draw(spriteBatch, i3, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
        lTime2 = CFG.currentTimeMillis;
    }
}
