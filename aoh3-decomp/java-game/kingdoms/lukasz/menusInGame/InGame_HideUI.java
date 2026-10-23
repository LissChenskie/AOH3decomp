package aoc.kingdoms.lukasz.menusInGame;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.button.ButtonTopDate;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_HideUI extends Menu {
    public static boolean addDate = true;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_HideUI$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonTopDate {
        AnonymousClass1(String str, int i, int i2) {
            super(str, i, i2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.gameThread.play = !Game.gameThread.play;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonTopDate, aoc.kingdoms.lukasz.menu_element.button.Button
        protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getPosX() {
            return (CFG.GAME_WIDTH - InGame.getDatePadding()) - getWidth();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return Game.gameThread.play ? SoundsManager.SOUND_CLICK_TOP : SoundsManager.PLAY;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_HideUI$2, reason: invalid class name */
    class AnonymousClass2 extends Empty {
        AnonymousClass2(int i, int i2, int i3, int i4) {
            super(i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setViewIDWithoutAnimation(View.IN_GAME);
        }
    }

    public InGame_HideUI() {
        ArrayList arrayList = new ArrayList();
        if (addDate) {
            arrayList.add(new AnonymousClass1(Game_Calendar.getCurrentDate(), 0, InGame.topStatsHeight));
        }
        arrayList.add(new AnonymousClass2(0, 0, CFG.GAME_WIDTH / 4, CFG.GAME_HEIGHT / 4));
        arrayList.get(arrayList.size() - 1).setClickable(true);
        initMenu(null, 0, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT, arrayList, true);
    }
}
