package aoc.kingdoms.lukasz.menusEditor;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.RulersManager;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;
import aoc.kingdoms.lukasz.menusInGame.Province.iOYW.ALZmnpZHj;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class CreateCivGroup extends Menu {
    public CreateCivGroup() {
        ArrayList arrayList = new ArrayList();
        int i = CFG.PADDING * 2;
        int i2 = CFG.BUTTON_HEIGHT;
        int i3 = CFG.GAME_WIDTH / 10;
        int i4 = CFG.GAME_HEIGHT / 10;
        int i5 = CFG.PADDING * 2;
        int i6 = CFG.PADDING * 4;
        int height = i5;
        int i7 = 0;
        while (i7 < RulersManager.iGroupsSize) {
            arrayList.add(new ButtonMain(RulersManager.groups.get(i7), 1, i6, i, height, CFG.LEFT_MENU_WIDTH - (i * 2), true));
            height += arrayList.get(arrayList.size() - 1).getHeight() + i5;
            i7++;
            i = i;
        }
        initMenu(new MenuTitle("", 1.0f, i2, true, true), i3, i2 + i4, CFG.LEFT_MENU_WIDTH, (CFG.GAME_HEIGHT - i2) - (i4 * 2), arrayList, false);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void actionElement(int i) {
        CreateCiv.nCiv.GroupID = i;
        Game.menuManager.createCivGroup().setVisible(false);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawEditorMenuBG(spriteBatch, getPosX(), getPosY(), getWidth(), getHeight() + CFG.PADDING, i, i2);
        super.draw(spriteBatch, i, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void updateLanguage() {
        super.updateLanguage();
        getTitle().setText(Game.lang.get(ALZmnpZHj.nXSoYf));
    }
}
