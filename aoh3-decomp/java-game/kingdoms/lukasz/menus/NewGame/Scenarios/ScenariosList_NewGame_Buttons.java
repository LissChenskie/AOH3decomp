package aoc.kingdoms.lukasz.menus.NewGame.Scenarios;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.Button_PreviewSmall;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ScenariosList_NewGame_Buttons extends Menu {
    public ScenariosList_NewGame_Buttons() {
        ArrayList arrayList = new ArrayList();
        int i = (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH;
        ImageManager.getImage(Images.title600).getHeight();
        int width = ImageManager.getImage(Images.title600).getWidth();
        int i2 = CFG.BUTTON_WIDTH;
        int i3 = Renderer.boxBGExtraY;
        int i4 = CFG.PADDING;
        ImageManager.getImage(Images.topStats).getHeight();
        int i5 = CFG.PADDING;
        ImageManager.getImage(Images.title600).getHeight();
        int height = CFG.PADDING * 2;
        int i6 = ((width - (i * 2)) - CFG.PADDING) / 2;
        int i7 = 0;
        for (int i8 = Game.mapScenarios.SCENARIOS_SIZE - 1; i8 >= 0; i8--) {
            if (!Game.mapScenarios.details.get(i8).Campaign) {
                int i9 = i7 % 2;
                arrayList.add(new Button_PreviewSmall(Game.lang.get(Game.mapScenarios.details.get(i8).Name), "" + Game.gameAges.getYear(Game.mapScenarios.details.get(i8).Year), i9 == 0 ? i : CFG.PADDING + i + i6, height, i6, CFG.BUTTON_HEIGHT4, i8));
                height = i9 == 1 ? height + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING : height;
                i7++;
            }
        }
        int size = arrayList.size();
        int posY = 0;
        for (int i10 = 0; i10 < size; i10++) {
            if (posY < arrayList.get(i10).getPosY() + arrayList.get(i10).getHeight() + (CFG.PADDING * 2)) {
                posY = arrayList.get(i10).getPosY() + arrayList.get(i10).getHeight() + (CFG.PADDING * 2);
            }
        }
        int iMin = Math.min(posY, (CFG.GAME_HEIGHT - (CFG.GAME_HEIGHT / 8)) - (CFG.PADDING * 2));
        arrayList.add(new Empty(0, 0, width, Math.max(posY, iMin)));
        initMenu(new MenuTitleIMG(Game.lang.get("Scenarios"), false, false, Images.title600), (CFG.GAME_WIDTH / 2) - (width / 2), CFG.GAME_HEIGHT / 8, width, iMin, arrayList, true, false);
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
