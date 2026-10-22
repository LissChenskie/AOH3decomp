package aoc.kingdoms.lukasz.menusInGame;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.SparksAnimation;
import aoc.kingdoms.lukasz.map.war.WarManager;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu_element.MessageWar;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_MessagesWars extends Menu {
    public static SparksAnimation sparksAnimation = new SparksAnimation();

    public InGame_MessagesWars() {
        int width;
        int i;
        ArrayList arrayList = new ArrayList();
        int iMin = Math.min(4, Math.max(Game.getCiv(Game.player.iCivID).diplomacy.iWarsSize, 1));
        int i2 = CFG.PADDING * 3;
        int width2 = (ImageManager.getImage(Images.warBG).getWidth() * iMin) + (CFG.PADDING * (iMin - 1));
        int i3 = ((CFG.GAME_WIDTH - (Game.mapBG.iMinimapWidth + Images.boxTitleBORDERWIDTH)) - width2) - i2;
        int i4 = width2 + (Game.getCiv(Game.player.iCivID).diplomacy.iWarsSize > 4 ? i2 : 0);
        int i5 = CFG.PADDING / 2;
        int i6 = 0;
        for (int i7 = 0; i7 < Game.getCiv(Game.player.iCivID).diplomacy.iWarsSize; i7++) {
            try {
                if (WarManager.lWars.get(Game.getCiv(Game.player.iCivID).diplomacy.lWars.get(i7)).isAggressor(Game.player.iCivID)) {
                    arrayList.add(new MessageWar(i6, i5, true, WarManager.lWars.get(Game.getCiv(Game.player.iCivID).diplomacy.lWars.get(i7)).lDefenders.get(0).iCivID, Game.getCiv(Game.player.iCivID).diplomacy.lWars.get(i7)));
                    width = arrayList.get(arrayList.size() - 1).getWidth();
                    i = CFG.PADDING;
                } else {
                    if (WarManager.lWars.get(Game.getCiv(Game.player.iCivID).diplomacy.lWars.get(i7)).isDefender(Game.player.iCivID)) {
                        arrayList.add(new MessageWar(i6, i5, true, WarManager.lWars.get(Game.getCiv(Game.player.iCivID).diplomacy.lWars.get(i7)).lAggressors.get(0).iCivID, Game.getCiv(Game.player.iCivID).diplomacy.lWars.get(i7)));
                        width = arrayList.get(arrayList.size() - 1).getWidth();
                        i = CFG.PADDING;
                    }
                }
                i6 += width + i;
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        initMenu(null, i3, (CFG.GAME_HEIGHT - i2) - ImageManager.getImage(Images.warBG).getHeight(), i4, ImageManager.getImage(Images.warBG).getHeight() + (CFG.PADDING * 4), arrayList, true);
        this.drawScrollPositionAlways = false;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        if (getMenuElementsSize() > 0) {
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.5f));
            sparksAnimation.draw2(spriteBatch, ((CFG.GAME_WIDTH - (Game.mapBG.iMinimapWidth + Images.boxTitleBORDERWIDTH)) - ((Images.sparkWidth * 3) / 4)) + i, (CFG.GAME_HEIGHT - ((Images.sparkHeight * 3) / 4)) + i2, (Images.sparkWidth * 3) / 4, (Images.sparkHeight * 3) / 4);
            spriteBatch.setColor(Color.WHITE);
        }
        super.draw(spriteBatch, i, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public boolean getVisible() {
        return super.getVisible() && Game.mapBG.getHideMenuZoomOut();
    }
}
