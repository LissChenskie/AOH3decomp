package aoc.kingdoms.lukasz.menusInGame.Battle;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.map.battles.Battle;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_OngoingBattles {
    public static void draw(SpriteBatch spriteBatch, int i, int i2) {
        if (GameValues.battle.DRAW_BATTLE_NOT_IN_VIEW) {
            int size = Game.getCiv(Game.player.iCivID).inBattles.size();
            for (int i3 = 0; i3 < size; i3++) {
                Battle battle = Game.battleManager.getBattle(Game.getCiv(Game.player.iCivID).inBattles.get(i3));
                if (battle != null && !Game.getProvince(battle.provinceID).getDrawProvince()) {
                    int iMax = Math.max(0, Math.min(CFG.GAME_WIDTH - CFG.BUTTON_HEIGHT4, Game.getProvince(battle.provinceID).iCenterShiftX + Game.mapCoords.getPosX()));
                    int iMax2 = Math.max(0, Math.min(CFG.GAME_HEIGHT - (CFG.PADDING * 2), Game.getProvince(battle.provinceID).iCenterShiftY + Game.mapCoords.getPosY()));
                    spriteBatch.setColor(DiplomacyManager.COLOR_BATTLE);
                    if (iMax2 == 0) {
                        Images.gradientXY.draw(spriteBatch, i + iMax, i2 + iMax2, CFG.BUTTON_HEIGHT4, CFG.PADDING * 2, false, true);
                    } else if (iMax2 == CFG.GAME_HEIGHT - (CFG.PADDING * 2)) {
                        Images.gradientXY.draw(spriteBatch, i + iMax, i2 + iMax2, CFG.BUTTON_HEIGHT4, CFG.PADDING * 2, false, false);
                    } else if (iMax == 0) {
                        ImageManager.getImage(Images.gradientXYVertical).draw(spriteBatch, i + iMax, i2 + iMax2, CFG.PADDING * 2, CFG.BUTTON_HEIGHT4, false, false);
                    } else {
                        ImageManager.getImage(Images.gradientXYVertical).draw(spriteBatch, (CFG.GAME_WIDTH + i) - (CFG.PADDING * 2), i2 + iMax2, CFG.PADDING * 2, CFG.BUTTON_HEIGHT4, true, false);
                    }
                    spriteBatch.setColor(Color.WHITE);
                }
            }
        }
    }
}
