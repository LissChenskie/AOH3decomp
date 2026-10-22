package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonMainTitle extends Button {
    private final int LOGO_PADDING = 30;
    private int logoHeight;
    private int logoWidth;

    public ButtonMainTitle(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
        init(str, i, i2, i3, i4, i5, ImageManager.getImage(Images.mainTitle).getHeight(), z, true, false, false);
        float height = (ImageManager.getImage(Images.mainTitle).getHeight() - 60.0f) / ImageManager.getImage(Images.logo).getHeight();
        this.logoWidth = (int) (ImageManager.getImage(Images.logo).getWidth() * height);
        this.logoHeight = (int) (ImageManager.getImage(Images.logo).getHeight() * height);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Renderer.drawBox_EDGE_TOP_LR(spriteBatch, Images.mainTitle, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        spriteBatch.setColor(new Color(DiplomacyManager.COLOR_WAR.r, DiplomacyManager.COLOR_WAR.g, DiplomacyManager.COLOR_WAR.b, 0.25f));
        MenuManager.sparksAnimationHover.draw2(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(new Color(0.57254905f, 0.49411765f, 0.29411766f, 1.0f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 1) + i2, getWidth(), 1);
        spriteBatch.setColor(Color.WHITE);
        if (z) {
            spriteBatch.setColor(COLOR_BUTTON_MENU_HOVER_BG);
        } else if (getIsHovered() && getClickable()) {
            spriteBatch.setColor(COLOR_BUTTON_MENU_HOVER_BG);
        }
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, (getIsHovered() || z) ? 0.9f : 1.0f));
        ImageManager.getImage(Images.logo).draw(spriteBatch, getPosX() + ((getWidth() - this.logoWidth) / 2) + i, getPosY() + 30 + i2, this.logoWidth, this.logoHeight);
        spriteBatch.setColor(Color.WHITE);
    }
}
