package aoc.kingdoms.lukasz.menusInGame.Province;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.Button_PinnedArmy_Province;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_ProvinceInfo_Army extends Menu {
    public long LAST_TIME_CHECK;
    public long TIME_CHECK = 1000;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo_Army$1, reason: invalid class name */
    class AnonymousClass1 extends Game.SimpleTask {
        AnonymousClass1(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_ProvinceInfo_Army();
        }
    }

    public InGame_ProvinceInfo_Army() {
        this.LAST_TIME_CHECK = 0L;
        ArrayList arrayList = new ArrayList();
        int height = ImageManager.getImage(Images.pinnedGeneralFrame).getHeight() + 1;
        if (InGame_ProvinceInfo.iProvinceID >= 0) {
            try {
                if (!Game.FOG_OF_WAR || Game.getProvince(InGame_ProvinceInfo.iProvinceID).getFogDrawArmy()) {
                    int width = 0;
                    for (int i = 0; i < Game.getProvince(InGame_ProvinceInfo.iProvinceID).getArmySize(); i++) {
                        if (Game.getProvince(InGame_ProvinceInfo.iProvinceID).getArmy(i).civID == Game.player.iCivID) {
                            arrayList.add(new Button_PinnedArmy_Province(Game.getProvince(InGame_ProvinceInfo.iProvinceID).getArmy(i).civID, Game.getProvince(InGame_ProvinceInfo.iProvinceID).getArmy(i).key, width, 0, InGame_ProvinceInfo.iProvinceID));
                            width += arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                        }
                    }
                    int width2 = width;
                    for (int i2 = 0; i2 < Game.getProvince(InGame_ProvinceInfo.iProvinceID).getArmySize(); i2++) {
                        if (Game.getProvince(InGame_ProvinceInfo.iProvinceID).getArmy(i2).civID != Game.player.iCivID) {
                            arrayList.add(new Button_PinnedArmy_Province(Game.getProvince(InGame_ProvinceInfo.iProvinceID).getArmy(i2).civID, Game.getProvince(InGame_ProvinceInfo.iProvinceID).getArmy(i2).key, width2, 0, InGame_ProvinceInfo.iProvinceID));
                            width2 += arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                        }
                    }
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        initMenu(null, ImageManager.getImage(Images.title580).getWidth() + CFG.PADDING + 1, CFG.GAME_HEIGHT - height, (ImageManager.getImage(Images.pinnedGeneralFrame).getWidth() * 3) + (CFG.PADDING * 2), height, arrayList, Game.menuManager.getVisibleInGame_ProvinceInfo());
        this.drawScrollPositionAlways = false;
        this.LAST_TIME_CHECK = CFG.currentTimeMillis;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        super.draw(spriteBatch, i, i2, z, status);
        if (getMenuElementsSize() != 0 || this.LAST_TIME_CHECK + this.TIME_CHECK >= CFG.currentTimeMillis) {
            return;
        }
        this.LAST_TIME_CHECK = CFG.currentTimeMillis;
        for (int i3 = 0; i3 < Game.getProvince(InGame_ProvinceInfo.iProvinceID).getArmySize(); i3++) {
            try {
                if (Game.getProvince(InGame_ProvinceInfo.iProvinceID).getArmy(i3).civID == Game.player.iCivID) {
                    Game.addSimpleTask(new AnonymousClass1("rebuildInGame_ProvinceInfo_Army"));
                    return;
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public int getMenuPosX() {
        return super.getMenuPosX() + InGame_ProvinceInfo.nTranslateX;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public int getMenuPosY() {
        return super.getMenuPosY() + InGame_ProvinceInfo.nTranslateY;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public int getPosX() {
        return super.getPosX() + InGame_ProvinceInfo.nTranslateX;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public int getPosY() {
        return super.getPosY() + InGame_ProvinceInfo.nTranslateY;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public boolean getVisible() {
        return super.getVisible() && Game.mapBG.getHideMenuZoomOut();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void onHovered() {
        super.onHovered();
        Game.menuManager.setOrderOfMenu_InGameProvinceInfo();
    }
}
