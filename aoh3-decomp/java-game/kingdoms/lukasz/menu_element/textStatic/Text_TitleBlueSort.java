package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Text_TitleBlueSort extends Text_TitleBlue {
    public boolean active;
    public boolean flipY;

    public Text_TitleBlueSort(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5) {
        super(str, i, i2, i3, i4, i5, CFG.FONT_BOLD);
        this.active = z;
        this.flipY = z2;
    }

    public Text_TitleBlueSort(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
        super(str, i, i2, i3, i4, i5, i6);
        this.active = z;
        this.flipY = z2;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static, aoc.kingdoms.lukasz.menu_element.MenuElement
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        super.draw(spriteBatch, i, i2, z, z2);
        if (this.active) {
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.4f));
            ImageManager.getImage(Images.activeSort).draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.activeSort).getWidth() / 2)) + i, ((getPosY() + getHeight()) - (ImageManager.getImage(Images.activeSort).getHeight() / 2)) + i2, false, this.flipY);
            spriteBatch.setColor(Color.WHITE);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
    public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getSFX() {
        return Game.soundsManager.getTab();
    }
}
