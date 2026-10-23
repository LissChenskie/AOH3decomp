package aoc.kingdoms.lukasz.menus.NewGame.Scenarios;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.Button_Preview;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ScenariosList_NewGame extends Menu {
    public static int iYPos;
    private int iHeight;
    private int iWidth;
    private int iXPos;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.Scenarios.ScenariosList_NewGame$1, reason: invalid class name */
    class AnonymousClass1 extends Button_Preview {
        AnonymousClass1(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setIsHovered(boolean z) {
            if (z) {
                Scenarios.activeDescID = getCurrent();
            } else {
                Scenarios.activeDescID = Game.scenarioID;
            }
            super.setIsHovered(z);
        }
    }

    public ScenariosList_NewGame() {
        int i;
        this.iXPos = 0;
        this.iWidth = 480;
        this.iHeight = 480;
        ArrayList arrayList = new ArrayList();
        int i2 = CFG.PADDING;
        int i3 = CFG.PADDING / 2;
        int i4 = CFG.PADDING * 4;
        this.iXPos = -CFG.BUTTON_WIDTH;
        this.iWidth = CFG.GAME_WIDTH + (CFG.BUTTON_WIDTH * 2);
        this.iHeight = Game.mapBG.scenarioOver.getHeight() + (i4 * 2);
        iYPos = (int) ((CFG.GAME_HEIGHT - this.iHeight) * 0.5f);
        int i5 = CFG.PADDING * 2;
        int width = CFG.BUTTON_WIDTH;
        int i6 = CFG.PADDING * 3;
        int i7 = Game.mapScenarios.SCENARIOS_SIZE - 1;
        int posX = 0;
        while (i7 >= 0) {
            if (!Game.mapScenarios.details.get(i7).Campaign) {
                arrayList.add(new AnonymousClass1(width, i6, i7));
                posX = i7 == Game.scenarioID ? arrayList.get(arrayList.size() - 1).getPosX() + (arrayList.get(arrayList.size() - 1).getWidth() / 2) : posX;
                width += arrayList.get(arrayList.size() - 1).getWidth() + i5;
            }
            i7--;
        }
        if (width < CFG.GAME_WIDTH) {
            int width2 = 0;
            for (int i8 = 0; i8 < arrayList.size(); i8++) {
                width2 += arrayList.get(i8).getWidth() + i5;
            }
            int width3 = (CFG.GAME_WIDTH - (width2 - i5)) / 2;
            for (int i9 = 0; i9 < arrayList.size(); i9++) {
                arrayList.get(i9).setPosX(width3);
                width3 += arrayList.get(arrayList.size() - 1).getWidth() + i5;
            }
            i = 0;
        } else {
            i = posX;
        }
        int i10 = i6 * 2;
        initMenu(null, 0, (CFG.GAME_HEIGHT / 2) - ((Button_Preview.getButtonHeight() + i10) / 2), CFG.GAME_WIDTH, Button_Preview.getButtonHeight() + i10, arrayList, true);
        this.drawScrollPositionAlways = false;
        if (i != 0) {
            setMenuPosX((-i) + (CFG.GAME_WIDTH / 2));
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        Renderer.drawBoxCorner(spriteBatch, this.iXPos + i, iYPos + i2, this.iWidth, this.iHeight);
        spriteBatch.setColor(Color.WHITE);
        super.draw(spriteBatch, i, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void onHovered() {
        super.onHovered();
        Game.menuManager.setOrderOfMenu_Scenarios();
    }
}
