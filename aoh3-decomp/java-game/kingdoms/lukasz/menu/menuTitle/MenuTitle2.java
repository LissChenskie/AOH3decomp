package aoc.kingdoms.lukasz.menu.menuTitle;

import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MenuTitle2 extends MenuTitle {
    public MenuTitle2(String str, float f, int i, boolean z, boolean z2) {
        super(str, f, i, z, z2);
    }

    public MenuTitle2(String str, int i, boolean z, boolean z2) {
        super(str, i, z, z2);
    }

    @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
    public void draw(SpriteBatch spriteBatch, int i, int i2, int i3, Status status) {
        ImageManager.getImage(Images.title2).draw(spriteBatch, i, i2 - getHeight(), i3, getHeight());
        drawText(spriteBatch, i, i2, i3, status);
    }
}
