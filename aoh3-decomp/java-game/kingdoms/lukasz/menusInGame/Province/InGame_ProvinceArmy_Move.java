package aoc.kingdoms.lukasz.menusInGame.Province;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame_Style;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_ProvinceArmy_Move extends Menu {
    public long LAST_TIME_CHECK;
    public long TIME_CHECK = 1000;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmy_Move$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonGame_Style {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.chooseProvinceMode = !Game.chooseProvinceMode;
            if (Game.chooseProvinceMode) {
                InGame_ProvinceArmy.lTimeMOVE = CFG.currentTimeMillis;
                InGame_ProvinceArmy.chooseProvinceExtraY = 0;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonGame_Style, aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return Game.chooseProvinceMode ? Colors.HOVER_GOLD : super.getColor(z);
        }
    }

    public InGame_ProvinceArmy_Move() {
        int armyKeyID;
        this.LAST_TIME_CHECK = 0L;
        ArrayList arrayList = new ArrayList();
        int i = CFG.BUTTON_HEIGHT + 1;
        arrayList.add(new AnonymousClass1(Game.lang.get("Move"), CFG.FONT_REGULAR, -1, 0, 0, CFG.BUTTON_WIDTH, CFG.BUTTON_HEIGHT, true));
        arrayList.get(arrayList.size() - 1).getWidth();
        int i2 = CFG.PADDING;
        initMenu(null, ImageManager.getImage(Images.title530).getWidth() + (CFG.PADDING * 2) + 1, (CFG.GAME_HEIGHT - i) - CFG.PADDING, CFG.BUTTON_WIDTH + 1, i, arrayList, Game.menuManager.getVisibleInGame_ProvinceArmy() && ((!CFG.isDesktop() || GameValues.move.DESKTOP_SHOW_MOVE_BUTTON) && (GameValues.move.PLAYER_CAN_MOVE_ALL_ARMIES || ((Game.SPECTATOR_MODE && Game.SANDBOX) || ((armyKeyID = Game.getProvince(Game.activeArmy.get(InGame_ProvinceArmy.iActiveID).iProvinceID).getArmyKeyID(Game.activeArmy.get(InGame_ProvinceArmy.iActiveID).key)) >= 0 && (Game.getProvince(InGame_ProvinceArmy.iProvinceID).getArmy(armyKeyID).civID == Game.player.iCivID || (GameValues.move.PLAYER_CAN_MOVE_VASSALS_ARMIES && Game.getCiv(Game.getProvince(InGame_ProvinceArmy.iProvinceID).getArmy(armyKeyID).civID).getPuppetOfCivID() == Game.player.iCivID)))))));
        this.drawScrollPositionAlways = false;
        this.LAST_TIME_CHECK = CFG.currentTimeMillis;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, getPosY() + i2, getWidth() - 1, getHeight() - 1);
        super.draw(spriteBatch, i, i2, z, status);
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
        return super.getPosY() + InGame_ProvinceArmy.nTranslateY;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public boolean getVisible() {
        return super.getVisible() && Game.mapBG.getHideMenuZoomOut();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void onHovered() {
        super.onHovered();
        Game.menuManager.setOrderOfMenu_InGameProvinceArmy();
    }
}
