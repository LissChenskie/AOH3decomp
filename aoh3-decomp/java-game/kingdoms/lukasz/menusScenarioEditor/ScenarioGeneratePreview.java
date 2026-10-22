package aoc.kingdoms.lukasz.menusScenarioEditor;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ScenarioGeneratePreview extends Menu {
    public ScenarioGeneratePreview() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Empty(0, 0, 1, 1));
        initMenu(null, 0, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT, arrayList, true);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        super.draw(spriteBatch, i, i2, z, status);
        try {
            Game.mapBG.previewTexture_Generate(spriteBatch);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        try {
            Game.mapScenarios.loadScenarios(false);
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
        Game.menuManager.setViewIDWithoutAnimation(View.EDITOR_SCENARIOS_LIST);
    }
}
