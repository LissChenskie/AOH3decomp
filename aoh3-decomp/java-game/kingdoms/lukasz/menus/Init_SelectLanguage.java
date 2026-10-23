package aoc.kingdoms.lukasz.menus;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.LanguageManager;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame2;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Init_SelectLanguage extends Menu {
    public static List<String> languages = new ArrayList();
    public static List<String> languagesFiles = new ArrayList();
    public static View goBackToMenu = View.INIT_GAME_MENU;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Init_SelectLanguage$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonGame2 {
        int id;

        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
            this.id = 0;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.settingsManager.LANGUAGE_TAG = Init_SelectLanguage.languagesFiles.get(this.id);
            if (Init_SelectLanguage.goBackToMenu != View.INIT_GAME_MENU) {
                Game.menuManager.addToastGold(Game.lang.get("GameNeedsToBeRestartedToApplyTheChanges"), Images.settings);
            } else {
                Game.lang = new LanguageManager(Init_SelectLanguage.languagesFiles.get(this.id));
            }
            Game.saveSettings();
            Game.menuManager.setViewIDWithoutAnimation(Init_SelectLanguage.goBackToMenu);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonGame2, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setCurrent(int i) {
            this.id = i;
        }
    }

    public Init_SelectLanguage() {
        ArrayList arrayList = new ArrayList();
        int i = CFG.PADDING * 2;
        int i2 = CFG.BUTTON_HEIGHT + (CFG.BUTTON_HEIGHT / 2);
        int i3 = CFG.GAME_WIDTH / 10;
        int i4 = CFG.GAME_HEIGHT / 10;
        int i5 = CFG.PADDING * 2;
        int i6 = 0;
        int height = i5;
        while (i6 < languages.size()) {
            arrayList.add(new AnonymousClass1(languages.get(i6), 0, -1, i, height, CFG.LEFT_MENU_WIDTH - (i * 2), true));
            arrayList.get(arrayList.size() - 1).setCurrent(i6);
            height += arrayList.get(arrayList.size() - 1).getHeight() + i5;
            i6++;
            i = i;
        }
        initMenu(new MenuTitle(Game.lang.get("SelectLanguage"), 1.0f, i2, false, false), i3, i2 + i4, CFG.LEFT_MENU_WIDTH, Math.min(height, (CFG.GAME_HEIGHT - i2) - (i4 * 2)), arrayList, true, false);
    }

    public static void loadLanguages() {
        try {
            String[] strArrSplit = FileManager.loadFile("game/languages/Languages.txt").readString().split(";");
            for (int i = 0; i < strArrSplit.length; i += 2) {
                languages.add(strArrSplit[i]);
                languagesFiles.add(strArrSplit[i + 1]);
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        spriteBatch.setColor(new Color(0.047058824f, 0.047058824f, 0.047058824f, 1.0f));
        Images.pix.draw(spriteBatch, i, i2, CFG.GAME_WIDTH, CFG.GAME_HEIGHT);
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.2f));
        InitGame.background.draw(spriteBatch, i + ((CFG.GAME_WIDTH - InitGame.backgroundWidth) / 2), i2 + ((CFG.GAME_HEIGHT - InitGame.backgroundHeight) / 2), InitGame.backgroundWidth, InitGame.backgroundHeight);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.6f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i, i2, CFG.GAME_WIDTH, CFG.PADDING * 3);
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i, (CFG.GAME_HEIGHT - (CFG.PADDING * 3)) + i2, CFG.GAME_WIDTH, CFG.PADDING * 3, false, true);
        spriteBatch.setColor(Color.WHITE);
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawEditorMenuBG(spriteBatch, getPosX(), getPosY(), getWidth(), CFG.PADDING + getHeight(), i, i2);
        super.draw(spriteBatch, i, i2, z, status);
    }
}
