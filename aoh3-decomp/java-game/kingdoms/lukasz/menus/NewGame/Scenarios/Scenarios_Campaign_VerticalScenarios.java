package aoc.kingdoms.lukasz.menus.NewGame.Scenarios;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.Button_Preview;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Scenarios_Campaign_VerticalScenarios extends Menu {
    private int iHeight;
    private int iWidth;
    private int iXPos;
    private int iYPos;

    public Scenarios_Campaign_VerticalScenarios() {
        int i;
        this.iXPos = 0;
        this.iYPos = 0;
        this.iWidth = 480;
        this.iHeight = 480;
        ArrayList arrayList = new ArrayList();
        int i2 = (CFG.PADDING * 2) + (CFG.PADDING / 2);
        int i3 = CFG.PADDING;
        this.iYPos = -CFG.BUTTON_HEIGHT;
        this.iWidth = Game.mapBG.scenarioOver.getWidth() + (i2 * 2);
        this.iHeight = CFG.GAME_HEIGHT + (CFG.BUTTON_HEIGHT * 2);
        this.iXPos = (CFG.GAME_WIDTH / 2) - (this.iWidth / 2);
        this.iYPos = (int) ((CFG.GAME_HEIGHT - this.iHeight) * 0.5f);
        int i4 = CFG.PADDING * 2;
        int height = CFG.BUTTON_HEIGHT / 2;
        int i5 = Game.mapScenarios.SCENARIOS_SIZE - 1;
        int posX = 0;
        while (i5 >= 0) {
            if (Game.mapScenarios.details.get(i5).Campaign) {
                arrayList.add(new Button_Preview(i2, height, i5));
                posX = i5 == Game.scenarioID ? arrayList.get(arrayList.size() - 1).getPosX() + (arrayList.get(arrayList.size() - 1).getWidth() / 2) : posX;
                height += arrayList.get(arrayList.size() - 1).getHeight() + i4;
            }
            i5--;
        }
        if (height < CFG.GAME_HEIGHT) {
            int height2 = 0;
            for (int i6 = 0; i6 < arrayList.size(); i6++) {
                height2 += arrayList.get(i6).getHeight() + i4;
            }
            height = (CFG.GAME_HEIGHT - (height2 - i4)) / 2;
            for (int i7 = 0; i7 < arrayList.size(); i7++) {
                arrayList.get(i7).setPosY(height);
                height += arrayList.get(arrayList.size() - 1).getHeight() + i4;
            }
            i = 0;
        } else {
            i = posX;
        }
        arrayList.add(new Empty(0, 0, this.iWidth - 1, height + CFG.BUTTON_HEIGHT));
        initMenu(null, this.iXPos, 0, this.iWidth, CFG.GAME_HEIGHT, arrayList, true);
        this.drawScrollPositionAlways2 = false;
        if (i != 0) {
            setMenuPosY((-i) + (CFG.GAME_HEIGHT / 2));
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        Renderer.drawBoxCorner(spriteBatch, this.iXPos + i, this.iYPos + i2, this.iWidth, this.iHeight);
        spriteBatch.setColor(Color.WHITE);
        super.draw(spriteBatch, i, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void onHovered() {
        super.onHovered();
        Game.menuManager.setOrderOfMenu_Scenarios();
    }
}
