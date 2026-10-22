package aoc.kingdoms.lukasz.menu_element;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Empty_AdvantageBG extends Empty {
    public Empty_AdvantageBG(int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, 0.3f));
        Images.pix.draw(spriteBatch, (getPosX() - InGame_CivilizationAdvantages.iMenuWidth) + i, getPosY() + i2, InGame_CivilizationAdvantages.iMenuWidth, getHeight());
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.35f));
        Images.gradientFull.draw(spriteBatch, (getPosX() - InGame_CivilizationAdvantages.iMenuWidth) + i, getPosY() + i2, InGame_CivilizationAdvantages.iMenuWidth, getHeight(), false, true);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.75f));
        Images.gradientFull.draw(spriteBatch, (getPosX() - InGame_CivilizationAdvantages.iMenuWidth) + i, getPosY() + 1 + i2, InGame_CivilizationAdvantages.iMenuWidth, 1);
        Images.gradientFull.draw(spriteBatch, (getPosX() - InGame_CivilizationAdvantages.iMenuWidth) + i, ((getPosY() + getHeight()) - 2) + i2, InGame_CivilizationAdvantages.iMenuWidth, 1);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.2f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, (getPosX() - InGame_CivilizationAdvantages.iMenuWidth) + i, getPosY() + i2, InGame_CivilizationAdvantages.iMenuWidth, CFG.PADDING * 2);
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, (getPosX() - InGame_CivilizationAdvantages.iMenuWidth) + i, ((getPosY() + getHeight()) - (CFG.PADDING * 2)) + i2, InGame_CivilizationAdvantages.iMenuWidth, CFG.PADDING * 2, false, true);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 1.0f));
        Images.gradientFull.draw(spriteBatch, (getPosX() - InGame_CivilizationAdvantages.iMenuWidth) + i, getPosY() + i2, InGame_CivilizationAdvantages.iMenuWidth, 1);
        Images.gradientFull.draw(spriteBatch, (getPosX() - InGame_CivilizationAdvantages.iMenuWidth) + i, ((getPosY() + getHeight()) - 1) + i2, InGame_CivilizationAdvantages.iMenuWidth, 1);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.25f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, (getPosX() - InGame_CivilizationAdvantages.iMenuWidth) + i, ((getPosY() + getHeight()) - CFG.PADDING) + i2, InGame_CivilizationAdvantages.iMenuWidth, CFG.PADDING, false, true);
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.Empty, aoc.kingdoms.lukasz.menu_element.MenuElement
    public boolean playSFX_Hovered() {
        return false;
    }
}
