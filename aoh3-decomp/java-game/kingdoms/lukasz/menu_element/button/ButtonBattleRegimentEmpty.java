package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.MenuElement_Type;
import aoc.kingdoms.lukasz.textures.ImageManager;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonBattleRegimentEmpty extends MenuElement {
    public int imageID;

    public ButtonBattleRegimentEmpty(int i, int i2, int i3) {
        this.typeOfElement = MenuElement_Type.BUTTON;
        this.imageID = i;
        setPosX(i2);
        setPosY(i3);
        setWidth(ImageManager.getImage(i).getWidth() + 2);
        setHeight(ImageManager.getImage(i).getHeight() + 2);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, getImageAlpha(z)));
        ImageManager.getImage(this.imageID).draw(spriteBatch, getPosX() + 1 + i, getPosY() + 1 + i2);
        spriteBatch.setColor(Color.WHITE);
        if (getIsHovered()) {
            spriteBatch.setColor(Colors.HOVER_GOLD);
            Renderer.drawBox2(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        }
        spriteBatch.setColor(Color.WHITE);
    }

    public float getImageAlpha(boolean z) {
        return (getIsHovered() || z) ? 0.35f : 0.15f;
    }
}
