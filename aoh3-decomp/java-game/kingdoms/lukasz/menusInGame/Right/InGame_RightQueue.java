package aoc.kingdoms.lukasz.menusInGame.Right;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.civilization.Civilization;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.Button_QueueBuilding;
import aoc.kingdoms.lukasz.menu_element.button.Button_QueueUnit;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_RightQueue extends Menu {
    public static int extraY;

    public InGame_RightQueue() {
        ArrayList arrayList = new ArrayList();
        int i = CFG.PADDING;
        ImageManager.getImage(Images.title2).getHeight();
        int i2 = Game.mapBG.iMinimapWidth + Images.boxTitleBORDERWIDTH;
        int i3 = CFG.GAME_WIDTH - i2;
        int height = CFG.PADDING + ImageManager.getImage(Images.topStats).getHeight();
        int i4 = i2 - CFG.PADDING;
        int i5 = CFG.PADDING;
        int height2 = ImageManager.getImage(Images.unitsFrameMap).getHeight();
        if (InGame_Right.outlinerInView) {
            try {
                Civilization civ = Game.getCiv(Game.player.iCivID);
                int width = 0;
                for (int i6 = 0; i6 < civ.getArmyRecruitSize(); i6++) {
                    for (int i7 = 0; i7 < civ.lArmyRecruit.get(i6).size(); i7++) {
                        arrayList.add(new Button_QueueUnit(width, i5, civ.lArmyRecruit.get(i6).get(i7)));
                        width += arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                    }
                }
                for (int i8 = 0; i8 < civ.getNumOfProvinces(); i8++) {
                    if (Game.getProvince(civ.getProvinceID(i8)).iBuildingsConstructionSize > 0) {
                        for (int i9 = 0; i9 < Game.getProvince(civ.getProvinceID(i8)).iBuildingsConstructionSize; i9++) {
                            arrayList.add(new Button_QueueBuilding(width, i5, civ.getProvinceID(i8), Game.getProvince(civ.getProvinceID(i8)).getBuildingsConstruction(i9)));
                            width += arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                        }
                    }
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        int i10 = height2 + (CFG.PADDING * 2);
        initMenu(null, CFG.PADDING + i3, height, i4 - (CFG.PADDING * 2), i10, arrayList, arrayList.size() > 0, false);
        if (getVisible()) {
            extraY = i10 + CFG.PADDING;
        } else {
            extraY = 0;
        }
        this.drawScrollPositionAlways = false;
        this.drawScrollPositionAlways2 = false;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int posX = (getPosX() + i) - CFG.PADDING;
        int width = getWidth() + (CFG.PADDING * 2);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, 0.9f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, posX, getPosY() + i2, width, getHeight(), 1.0f);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.3f));
        Images.gradientFull.draw(spriteBatch, posX, getPosY() + i2, width, getHeight());
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.35f));
        Images.gradientFull.draw(spriteBatch, posX, getPosY() + i2, width, getHeight());
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.3f));
        Images.gradientXY.draw(spriteBatch, posX, getPosY() + i2, width, getHeight());
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.25f));
        Images.gradientXY.draw(spriteBatch, posX, getPosY() + i2, width, CFG.PADDING * 2, false, true);
        Images.gradientXY.draw(spriteBatch, posX, ((getPosY() + getHeight()) - (CFG.PADDING * 2)) + i2, width, CFG.PADDING * 2);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.25f));
        Renderer.drawBox(spriteBatch, Images.statsRectBGBorder, posX, getPosY() + i2, width, getHeight(), 1.0f);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.5f));
        Images.gradientFull.draw(spriteBatch, posX, ((getPosY() + getHeight()) - 1) + i2, width, 1);
        Images.gradientFull.draw(spriteBatch, posX, getPosY() + i2, width, 1);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.85f));
        Images.gradientFull.draw(spriteBatch, posX, ((getPosY() + getHeight()) - 2) + i2, width, 1);
        Images.gradientFull.draw(spriteBatch, posX, getPosY() + 1 + i2, width, 1);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.55f));
        Images.gradientFull.draw(spriteBatch, posX, ((getPosY() + getHeight()) - 1) + i2, width, 1);
        Images.gradientFull.draw(spriteBatch, posX, getPosY() + i2, width, 1);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.9f));
        Images.gradientFull.draw(spriteBatch, posX, ((getPosY() + getHeight()) - 2) + i2, width, 1);
        Images.gradientFull.draw(spriteBatch, posX, getPosY() + 1 + i2, width, 1);
        spriteBatch.setColor(Color.WHITE);
        super.draw(spriteBatch, i, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public boolean getVisible() {
        return super.getVisible() && Game.mapBG.getHideMenuZoomOut() && !Game.menuManager.getVisibleInGame_CivBonuses();
    }
}
