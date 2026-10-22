package aoc.kingdoms.lukasz.menus.Settings;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.setting.SettingsDesktop;
import aoc.kingdoms.lukasz.jakowski.zOther.Point_XY;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame2;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2_TextLR;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.pairip.licensecheck.CohD.CaiJWNfqszJNZ;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Settings_Resolution extends Menu {

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Resolution$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonGame2 {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Renderer.drawArmyInProvince = true;
            Game.menuManager.setViewID(View.SETTINGS);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Resolution$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonGame2 {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            SettingsDesktop.iWidth = -1;
            SettingsDesktop.iHeight = -1;
            SettingsDesktop.saveConfig();
            Game.menuManager.setViewID(View.SETTINGS);
            Game.menuManager.addToastGold(Game.lang.get(CaiJWNfqszJNZ.CoZkBsutZlh), Images.settings);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Resolution$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonGame2 {
        int id;

        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            SettingsDesktop.iWidth = Settings_Resolution.this.getResolution(this.id).getPosX();
            SettingsDesktop.iHeight = Settings_Resolution.this.getResolution(this.id).getPosY();
            SettingsDesktop.saveConfig();
            Game.menuManager.setViewID(View.SETTINGS);
            Game.menuManager.addToastGold(Game.lang.get("GameNeedsToBeRestartedToApplyTheChanges"), Images.settings);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonGame2, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setCurrent(int i) {
            this.id = i;
        }
    }

    public Settings_Resolution() {
        ArrayList arrayList = new ArrayList();
        int i = (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH;
        ImageManager.getImage(Images.title600).getHeight();
        int width = ImageManager.getImage(Images.title600).getWidth();
        int i2 = CFG.BUTTON_WIDTH;
        int i3 = Renderer.boxBGExtraY;
        int i4 = CFG.PADDING;
        int height = ImageManager.getImage(Images.topStats).getHeight() + (CFG.PADDING * 2) + ImageManager.getImage(Images.title600).getHeight();
        int i5 = CFG.PADDING;
        int i6 = i5 * 2;
        int i7 = i * 2;
        arrayList.add(new AnonymousClass1(Game.lang.get("Back"), 1, -1, i, i6, CFG.LEFT_MENU_WIDTH2 - i7, true, CFG.BUTTON_HEIGHT2));
        int height2 = i6 + arrayList.get(arrayList.size() - 1).getHeight() + i6;
        arrayList.add(new Text_Title_v2_TextLR(Game.lang.get("Resolution"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height2, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ""));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass2(Game.lang.get("Max"), 1, -1, i, height3, CFG.LEFT_MENU_WIDTH2 - i7, true, CFG.BUTTON_HEIGHT2));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        int i8 = 0;
        while (i8 < 26) {
            int i9 = i;
            int i10 = i8;
            arrayList.add(new AnonymousClass3("" + getResolution(i8).getPosX() + " x " + getResolution(i8).getPosY(), 1, -1, i, height4, CFG.LEFT_MENU_WIDTH2 - i7, true, CFG.BUTTON_HEIGHT2));
            arrayList.get(arrayList.size() - 1).setCurrent(i10);
            height4 += arrayList.get(arrayList.size() - 1).getHeight() + i5;
            i8 = i10 + 1;
            i = i9;
        }
        int size = arrayList.size();
        int posY = 0;
        for (int i11 = 0; i11 < size; i11++) {
            if (posY < arrayList.get(i11).getPosY() + arrayList.get(i11).getHeight() + (CFG.PADDING * 2)) {
                posY = arrayList.get(i11).getPosY() + arrayList.get(i11).getHeight() + (CFG.PADDING * 2);
            }
        }
        int iMin = Math.min(posY, (CFG.GAME_HEIGHT - (height * 2)) - (CFG.PADDING * 2));
        arrayList.add(new Empty(0, 0, width, Math.max(posY, iMin)));
        initMenu(new MenuTitleIMG(Game.lang.get("Resolution"), false, false, Images.title600), CFG.GAME_WIDTH / 10, CFG.GAME_HEIGHT / 8, width, iMin, arrayList, true, false);
        this.drawScrollPositionAlways = false;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop600, Images.insideBot600);
        ImageManager.getImage(Images.rulerOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.rulerOver).getWidth() / 2)) + i, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.rulerOver).getHeight()));
        spriteBatch.setColor(Color.WHITE);
        super.draw(spriteBatch, i, i2, z, status);
    }

    public Point_XY getResolution(int i) {
        switch (i) {
            case 0:
                return new Point_XY(GL20.GL_KEEP, 4320);
            case 1:
                return new Point_XY(GL20.GL_BYTE, 2880);
            case 2:
                return new Point_XY(GL20.GL_BYTE, 2160);
            case 3:
                return new Point_XY(4096, 2160);
            case 4:
                return new Point_XY(3840, 2160);
            case 5:
                return new Point_XY(3440, 1440);
            case 6:
                return new Point_XY(2560, 2048);
            case 7:
                return new Point_XY(2560, 1920);
            case 8:
                return new Point_XY(2560, 1600);
            case 9:
                return new Point_XY(2560, 1440);
            case 10:
                return new Point_XY(2560, 1080);
            case 11:
                return new Point_XY(2048, 1536);
            case 12:
                return new Point_XY(1920, 1440);
            case 13:
                return new Point_XY(1920, 1080);
            case 14:
                return new Point_XY(1856, 1392);
            case 15:
                return new Point_XY(1792, 1344);
            case 16:
                return new Point_XY(1680, 1050);
            case 17:
                return new Point_XY(1600, 1200);
            case 18:
                return new Point_XY(1600, 900);
            case 19:
                return new Point_XY(1440, 1050);
            case 20:
                return new Point_XY(1440, 900);
            case 21:
                return new Point_XY(1366, GL20.GL_SRC_COLOR);
            case 22:
                return new Point_XY(GL20.GL_INVALID_ENUM, 1024);
            case 23:
                return new Point_XY(GL20.GL_INVALID_ENUM, 960);
            case 24:
                return new Point_XY(1024, GL20.GL_SRC_COLOR);
            case 25:
                return new Point_XY(800, 600);
            default:
                return new Point_XY(1920, 1080);
        }
    }
}
