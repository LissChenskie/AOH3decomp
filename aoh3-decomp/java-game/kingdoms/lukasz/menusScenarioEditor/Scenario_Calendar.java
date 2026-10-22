package aoc.kingdoms.lukasz.menusScenarioEditor;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Keyboard;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Write;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Scenario_Calendar extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static long lTime = 0;
    public static String sYear = "";

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.Scenario_Calendar$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonGame {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleScenario_Calendar(false);
            Game.keyboard.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.Scenario_Calendar$2, reason: invalid class name */
    class AnonymousClass2 extends Text_StaticBG_Write {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.SCENARIO_YEAR, Scenario_Calendar.sYear);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Write, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return Scenario_Calendar.sYear + Keyboard.getKeyboardVerticalLine();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.Scenario_Calendar$3, reason: invalid class name */
    class AnonymousClass3 extends Text_StaticBG {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game_Calendar.currentMonth--;
            if (Game_Calendar.currentMonth < 0) {
                Game_Calendar.currentMonth = 11;
            }
            Game.menuManager.rebuildScenario_Calendar();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.Scenario_Calendar$4, reason: invalid class name */
    class AnonymousClass4 extends Text_StaticBG {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game_Calendar.currentMonth++;
            if (Game_Calendar.currentMonth > 11) {
                Game_Calendar.currentMonth = 0;
            }
            Game.menuManager.rebuildScenario_Calendar();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.Scenario_Calendar$5, reason: invalid class name */
    class AnonymousClass5 extends Text_StaticBG_ID {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game_Calendar.currentDay = getCurrent();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.Scenario_Calendar$6, reason: invalid class name */
    class AnonymousClass6 extends MenuTitleIMG {
        AnonymousClass6(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return Scenario_Calendar.lTime;
        }
    }

    public Scenario_Calendar(boolean z) {
        ArrayList arrayList = new ArrayList();
        int i = (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH;
        ImageManager.getImage(Images.title2).getHeight();
        int width = ImageManager.getImage(Images.insideTop).getWidth();
        int i2 = CFG.PADDING;
        int height = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title1Red).getHeight();
        int i3 = CFG.PADDING * 2;
        int i4 = Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2);
        int i5 = CFG.TEXT_HEIGHT;
        int i6 = CFG.PADDING;
        sYear = "" + Game_Calendar.currentYear;
        int i7 = width - (i * 2);
        arrayList.add(new AnonymousClass1(Game.lang.get("Close"), CFG.FONT_REGULAR, -1, i, i3, i7, true));
        int height2 = i3 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
        arrayList.add(new AnonymousClass2(Game.lang.get("Year") + ": ", CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i, height2, i7, CFG.BUTTON_HEIGHT2));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
        arrayList.add(new AnonymousClass3("-", CFG.FONT_REGULAR, -1, i4, height3, CFG.BUTTON_HEIGHT3, CFG.BUTTON_HEIGHT3));
        int width2 = i4 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
        arrayList.add(new Text_StaticBG("" + Game_Calendar.getMonthName(Game_Calendar.currentMonth), CFG.FONT_REGULAR, -1, width2, height3, (i7 - (CFG.PADDING * 2)) - (CFG.BUTTON_HEIGHT3 * 2), CFG.BUTTON_HEIGHT3));
        arrayList.add(new AnonymousClass4("+", CFG.FONT_REGULAR, -1, width2 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height3, CFG.BUTTON_HEIGHT3, CFG.BUTTON_HEIGHT3));
        arrayList.get(arrayList.size() - 1).getWidth();
        int i8 = CFG.PADDING;
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
        int i9 = (i7 - (CFG.PADDING * 6)) / 7;
        int i10 = i;
        int i11 = 0;
        while (i11 < Game_Calendar.getNumOfDaysInMonth(Game_Calendar.currentMonth)) {
            i11++;
            arrayList.add(new AnonymousClass5("" + i11, CFG.FONT_REGULAR_SMALL, -1, i10, height4, i9, CFG.BUTTON_HEIGHT3, i11));
            i10 += i9 + CFG.PADDING;
            if (i11 % 7 == 0) {
                height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                i10 = i;
            }
        }
        arrayList.get(arrayList.size() - 1).getHeight();
        int i12 = CFG.PADDING;
        int size = arrayList.size();
        int posY = 0;
        for (int i13 = 0; i13 < size; i13++) {
            if (posY < arrayList.get(i13).getPosY() + arrayList.get(i13).getHeight() + (CFG.PADDING * 2)) {
                posY = arrayList.get(i13).getPosY() + arrayList.get(i13).getHeight() + (CFG.PADDING * 2);
            }
        }
        int iMin = Math.min(Math.max(posY, CFG.BUTTON_HEIGHT + (CFG.BUTTON_HEIGHT * 4)), (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, 0, width, iMin));
        initMenu(new AnonymousClass6(Game.lang.get("DateAndAgeOfScenario"), false, false, Images.title1Red), (CFG.GAME_WIDTH - (CFG.GAME_WIDTH / 10)) - width, height, width, iMin, arrayList, z, true);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void actionCloseMenu() {
        super.actionCloseMenu();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        if (lTime + 60 >= CFG.currentTimeMillis) {
            i = (i - CFG.BUTTON_WIDTH) + ((int) (((CFG.BUTTON_WIDTH * 4) / 5) * ((CFG.currentTimeMillis - lTime) / 60.0f)));
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
}
