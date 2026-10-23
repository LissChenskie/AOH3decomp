package aoc.kingdoms.lukasz.menu.menuTitle;

import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.textures.ImageManager;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MenuTitleIMG extends MenuTitle {
    public int imageID;

    public MenuTitleIMG(String str, int i, int i2, boolean z, boolean z2, int i3) {
        super(str, i, i2, z, z2);
        this.imageID = i3;
    }

    public MenuTitleIMG(String str, int i, boolean z, boolean z2, int i2) {
        super(str, i, z, z2);
        this.imageID = i2;
    }

    public MenuTitleIMG(String str, boolean z, boolean z2, int i) {
        super(str, ImageManager.getImage(i).getHeight(), z, z2);
        this.imageID = i;
    }

    @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
    public void draw(SpriteBatch spriteBatch, int i, int i2, int i3, Status status) {
        ImageManager.getImage(this.imageID).draw(spriteBatch, i, i2 - getHeight(), i3, getHeight());
        drawGradient(spriteBatch, i, i2, i3, status);
        drawText(spriteBatch, i, i2, i3, status);
    }
}
