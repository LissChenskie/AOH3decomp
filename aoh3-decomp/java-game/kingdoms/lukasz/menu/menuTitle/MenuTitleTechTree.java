package aoc.kingdoms.lukasz.menu.menuTitle;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MenuTitleTechTree extends MenuTitle {
    public MenuTitleTechTree(String str, int i, boolean z, boolean z2) {
        super(str, i, z, z2);
    }

    @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
    public void draw(SpriteBatch spriteBatch, int i, int i2, int i3, Status status) {
        ImageManager.getImage(Images.titleTechTree).draw2(spriteBatch, i, i2 - getHeight(), i3 - ImageManager.getImage(Images.titleTechTree).getWidth(), getHeight());
        ImageManager.getImage(Images.titleTechTree).draw2(spriteBatch, (i + i3) - ImageManager.getImage(Images.titleTechTree).getWidth(), i2 - getHeight(), ImageManager.getImage(Images.titleTechTree).getWidth(), getHeight(), true, false);
        ImageManager.getImage(Images.titleTechTreeOver).draw2(spriteBatch, i, i2 - getHeight(), i3, getHeight());
        drawGradient(spriteBatch, i, i2, i3, status);
        spriteBatch.setColor(new Color(0.57254905f, 0.49411765f, 0.29411766f, 1.0f));
        int i4 = i2 - 1;
        Images.gradientFull.draw(spriteBatch, i, i4, i3, 1);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(new Color(Colors.HOVER_GOLD.r, Colors.HOVER_GOLD.g, Colors.HOVER_GOLD.b, 0.45f));
        int i5 = i3 / 2;
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, i, i2 - (getHeight() / 2), (i5 - (getTextWidth() / 2)) - (CFG.PADDING * 2), 1, true, false);
        int i6 = i + i5;
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, (CFG.PADDING * 2) + (getTextWidth() / 2) + i6, i2 - (getHeight() / 2), (i5 - (getTextWidth() / 2)) - (CFG.PADDING * 2), 1);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.3f));
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, i, i4 - (getHeight() / 2), (i5 - (getTextWidth() / 2)) - (CFG.PADDING * 2), 1, true, false);
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, (CFG.PADDING * 2) + (getTextWidth() / 2) + i6, i4 - (getHeight() / 2), (i5 - (getTextWidth() / 2)) - (CFG.PADDING * 2), 1);
        int i7 = i2 + 1;
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, i, i7 - (getHeight() / 2), (i5 - (getTextWidth() / 2)) - (CFG.PADDING * 2), 1, true, false);
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, i6 + (getTextWidth() / 2) + (CFG.PADDING * 2), i7 - (getHeight() / 2), (i5 - (getTextWidth() / 2)) - (CFG.PADDING * 2), 1);
        spriteBatch.setColor(Color.WHITE);
        drawText(spriteBatch, i, i2, i3, status);
    }

    public void draw2(SpriteBatch spriteBatch, int i, int i2, int i3, Status status) {
        ImageManager.getImage(Images.titleTechTree).draw2(spriteBatch, i, i2 - getHeight(), i3 - ImageManager.getImage(Images.titleTechTree).getWidth(), getHeight());
        ImageManager.getImage(Images.titleTechTree).draw2(spriteBatch, (i + i3) - ImageManager.getImage(Images.titleTechTree).getWidth(), i2 - getHeight(), ImageManager.getImage(Images.titleTechTree).getWidth(), getHeight(), true, false);
        ImageManager.getImage(Images.titleTechTreeOver).draw2(spriteBatch, i, i2 - getHeight(), i3, getHeight());
        drawGradient(spriteBatch, i, i2, i3, status);
        spriteBatch.setColor(Color.WHITE);
        drawText(spriteBatch, i, i2, i3, status);
    }
}
