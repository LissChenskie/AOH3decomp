package aoc.kingdoms.lukasz.menus.Settings;

import androidx.core.internal.oiV.CoLRpi;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame2;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2_TextLR;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.google.android.gms.internal.tasks.Vhe.SwmJtrccN;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Settings_UIScale extends Menu {

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_UIScale$1, reason: invalid class name */
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_UIScale$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonGame2 {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6, boolean z2) {
            super(str, i, i2, i3, i4, i5, z, i6, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.settingsManager.UI_SCALE = 0;
            Game.saveSettings();
            Game.menuManager.setViewID(View.SETTINGS);
            Game.menuManager.addToastGold(Game.lang.get("GameNeedsToBeRestartedToApplyTheChanges"), Images.settings);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_UIScale$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonGame2 {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6, boolean z2) {
            super(str, i, i2, i3, i4, i5, z, i6, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.settingsManager.UI_SCALE = 1;
            Game.saveSettings();
            Game.menuManager.setViewID(View.SETTINGS);
            Game.menuManager.addToastGold(Game.lang.get("GameNeedsToBeRestartedToApplyTheChanges"), Images.settings);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_UIScale$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonGame2 {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6, boolean z2) {
            super(str, i, i2, i3, i4, i5, z, i6, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.settingsManager.UI_SCALE = 2;
            Game.saveSettings();
            Game.menuManager.setViewID(View.SETTINGS);
            Game.menuManager.addToastGold(Game.lang.get("GameNeedsToBeRestartedToApplyTheChanges"), Images.settings);
        }
    }

    public Settings_UIScale() {
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
        arrayList.add(new Text_Title_v2_TextLR(Game.lang.get("UIScale"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height2, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), SwmJtrccN.pjFxkfmgSFRhc));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass2(CoLRpi.ZoveuisnlWyKYpy, 1, -1, i, height3, CFG.LEFT_MENU_WIDTH2 - i7, true, 68, (CFG.XHDPI || CFG.XXHDPI) ? false : true));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass3("1", 1, -1, i, height4, CFG.LEFT_MENU_WIDTH2 - i7, true, 90, CFG.XHDPI && !CFG.XXHDPI));
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass4("2", 1, -1, i, height5, CFG.LEFT_MENU_WIDTH2 - i7, true, Input.Keys.BUTTON_MODE, CFG.XXHDPI));
        int height6 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        int iMin = Math.min(height6, (CFG.GAME_HEIGHT - (height * 2)) - (CFG.PADDING * 2));
        arrayList.add(new Empty(0, 0, width, Math.max(height6, iMin)));
        initMenu(new MenuTitleIMG(Game.lang.get("UIScale"), false, false, Images.title600), CFG.GAME_WIDTH / 10, CFG.GAME_HEIGHT / 8, width, iMin, arrayList, true, false);
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
}
