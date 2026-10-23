package aoc.kingdoms.lukasz.menus.NewGame;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag2_CivName;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag2_CivName_Random;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class NewGameFlags extends Menu {

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.NewGameFlags$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonFlag2_CivName {
        AnonymousClass1(int i, int i2, int i3, boolean z) {
            super(i, i2, i3, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.setActiveProvinceID(Game.getCiv(this.iCivID).getCapitalProvinceID());
            if (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getCivID() <= 0 || Game.player.iCivID == Game.getProvince(Game.iActiveProvince).getCivID()) {
                return;
            }
            Game.player.iCivID = Game.getProvince(Game.iActiveProvince).getCivID();
            ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
            Game.mapCoords.centerToProvinceID(Game.iActiveProvince);
            Game.menuManager.rebuildNewGameCiv();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag2_CivName, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = null;
        }
    }

    public NewGameFlags() {
        ArrayList arrayList = new ArrayList();
        int i = CFG.PADDING * 2;
        int i2 = CFG.PADDING * 2;
        ArrayList arrayList2 = new ArrayList();
        for (int i3 = 1; i3 < Game.getCivsSize(); i3++) {
            if (Game.getCiv(i3).getNumOfProvinces() > 0 && Game.getCiv(i3).getCapitalProvinceID() >= 0) {
                arrayList2.add(Integer.valueOf(i3));
            }
        }
        arrayList.add(new ButtonFlag2_CivName_Random(i, i2, true));
        int width = i + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING + (CFG.PADDING / 2);
        while (!arrayList2.isEmpty()) {
            int size = arrayList2.size();
            int i4 = 0;
            for (int i5 = 1; i5 < size; i5++) {
                if (Game.getCiv(((Integer) arrayList2.get(i4)).intValue()).iCivRankScore < Game.getCiv(((Integer) arrayList2.get(i5)).intValue()).iCivRankScore) {
                    i4 = i5;
                }
            }
            arrayList.add(new AnonymousClass1(((Integer) arrayList2.get(i4)).intValue(), width, i2, true));
            width += arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING + (CFG.PADDING / 2);
            arrayList2.remove(i4);
            if (arrayList.size() >= GameValues.newGame.NEW_GAME_FLAGS_LIMIT) {
                break;
            }
        }
        int height = ImageManager.getImage(Images.flagDiplomacyOver).getHeight() + CFG.TEXT_HEIGHT + (CFG.PADDING * 2) + (i2 * 2);
        int width2 = ImageManager.getImage(Images.buttonPlay).getWidth() + CFG.PADDING;
        initMenu(null, width2, CFG.GAME_HEIGHT - height, CFG.GAME_WIDTH - (width2 * 2), height, arrayList, true);
        this.drawScrollPositionAlways = false;
        this.drawScrollPositionAlways2 = false;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.65f));
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + (getHeight() / 2) + i2, getWidth(), getHeight() / 2);
        spriteBatch.setColor(Color.WHITE);
        super.draw(spriteBatch, i, i2, z, status);
    }
}
