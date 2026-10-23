package aoc.kingdoms.lukasz.menusInGame;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.WondersManager;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonWonder2;
import aoc.kingdoms.lukasz.menu_element.button.ButtonWonderProvince;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_RulerTitle_General;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Wonders extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static long lTime;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Wonders$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonWonder2 {
        AnonymousClass1(int i, int i2, int i3, int i4) {
            super(i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_CurrentSituation(false);
            InGame_Wonder.iProvinceID = this.iProvinceID;
            Game.menuManager.rebuildInGame_Wonder();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Wonders$2, reason: invalid class name */
    class AnonymousClass2 extends Text_StaticBG_RulerTitle_General {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_CurrentSituation(false);
            InGame_Wonder.iProvinceID = this.iProvinceID;
            Game.menuManager.rebuildInGame_Wonder();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = ButtonWonderProvince.getHoverWonder(this.iProvinceID, this.iCivID, false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Wonders$3, reason: invalid class name */
    class AnonymousClass3 extends MenuTitleIMG {
        AnonymousClass3(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Wonders.lTime;
        }
    }

    public InGame_Wonders() {
        ArrayList arrayList = new ArrayList();
        int i = (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH;
        ImageManager.getImage(Images.title2).getHeight();
        int width = ImageManager.getImage(Images.insideTop).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height = ImageManager.getImage(Images.title1Red).getHeight() + ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int height2 = CFG.PADDING * 2;
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        int i2 = Game.player.iCivID;
        for (int i3 = 0; i3 < Game.getCiv(i2).getNumOfProvinces(); i3++) {
            if (Game.getProvince(Game.getCiv(i2).getProvinceID(i3)).wonderID >= 0 && !Game.getProvince(Game.getCiv(i2).getProvinceID(i3)).getWonderBuilt() && Game.getProvince(Game.getCiv(i2).getProvinceID(i3)).wonderConstruction == null) {
                arrayList2.add(Integer.valueOf(Game.getProvince(Game.getCiv(i2).getProvinceID(i3)).wonderID));
                arrayList3.add(Integer.valueOf(Game.getCiv(i2).getProvinceID(i3)));
            }
        }
        while (arrayList2.size() > 0) {
            int i4 = 0;
            for (int i5 = 1; i5 < arrayList2.size(); i5++) {
                if (CFG.compareAlphabetic_TwoString(WondersManager.wonders.get(((Integer) arrayList2.get(i5)).intValue()).Name, WondersManager.wonders.get(((Integer) arrayList2.get(i4)).intValue()).Name)) {
                    i4 = i5;
                }
            }
            arrayList.add(new AnonymousClass1(i, height2 + CFG.PADDING, ((Integer) arrayList2.get(i4)).intValue(), ((Integer) arrayList3.get(i4)).intValue()));
            int width2 = i + arrayList.get(arrayList.size() - 1).getWidth() + (CFG.PADDING * 2);
            int i6 = i4;
            arrayList.add(new AnonymousClass2(WondersManager.wonders.get(((Integer) arrayList2.get(i4)).intValue()).Name, width2, height2, (width - width2) - i, ButtonWonder2.getButtonHeight(), ((Integer) arrayList3.get(i4)).intValue(), ((Integer) arrayList2.get(i4)).intValue()));
            height2 += arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
            arrayList2.remove(i6);
            arrayList3.remove(i6);
        }
        int iMin = Math.min(height2, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, 0, width, Math.max(height2, iMin)));
        initMenu(new AnonymousClass3("", false, false, Images.title1Red), otherMenuPosX_2, height, width, iMin, arrayList, false, true);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        if (lTime + 60 >= CFG.currentTimeMillis) {
            i = (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - lTime) / 60.0f)));
        }
        int i3 = i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight() + CFG.PADDING, false);
        ImageManager.getImage(Images.newGameOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.newGameOver).getWidth() / 2)) + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.newGameOver).getHeight()));
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
        getTitle().setText(Game.lang.get("Wonders"));
    }
}
