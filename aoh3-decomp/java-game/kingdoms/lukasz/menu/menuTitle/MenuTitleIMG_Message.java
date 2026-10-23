package aoc.kingdoms.lukasz.menu.menuTitle;

import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MenuTitleIMG_Message extends MenuTitleIMG {
    public MenuTitleIMG_Message(String str, int i, int i2, boolean z, boolean z2, int i3) {
        super(str, i, i2, z, z2, i3);
    }

    public MenuTitleIMG_Message(String str, int i, boolean z, boolean z2, int i2) {
        super(str, i, z, z2, i2);
    }

    public MenuTitleIMG_Message(String str, boolean z, boolean z2, int i) {
        super(str, z, z2, i);
    }

    @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG, aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
    public void draw(SpriteBatch spriteBatch, int i, int i2, int i3, Status status) {
        super.draw(spriteBatch, i, i2, i3, status);
        ImageManager.getImage(Images.message).draw(spriteBatch, i + ((getHeight() - ImageManager.getImage(Images.message).getHeight()) / 2), (i2 - (getHeight() / 2)) - (ImageManager.getImage(Images.message).getHeight() / 2));
    }
}
