package aoc.kingdoms.lukasz.menu.menuTitle;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MenuTitleIMG_FlagCenter2 extends MenuTitleIMG {
    public int flagHeight;
    public int flagWidth;

    public MenuTitleIMG_FlagCenter2(String str, boolean z, boolean z2, int i) {
        super(str, z, z2, i);
        this.fontID = CFG.FONT_BOLD;
        int height = getHeight() - Images.boxTitleBORDERWIDTH;
        this.flagHeight = height;
        this.flagWidth = (int) (CFG.CIV_FLAG_WIDTH * (height / CFG.CIV_FLAG_HEIGHT));
    }

    @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG, aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
    public void draw(SpriteBatch spriteBatch, int i, int i2, int i3, Status status) {
        super.draw(spriteBatch, i, i2, i3, status);
        try {
            spriteBatch.setShader(Renderer.shaderAlpha);
            Game.getCiv(getFlagCivID()).getFlag().getTexture().bind(1);
            Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 1.0f));
            ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, i + Images.boxTitleBORDERWIDTH, (i2 - getHeight()) + Images.boxTitleBORDERWIDTH, this.flagWidth, this.flagHeight);
            spriteBatch.setColor(Color.WHITE);
            spriteBatch.flush();
            spriteBatch.setShader(Renderer.shaderDefault);
            spriteBatch.setShader(Renderer.shaderAlpha);
            ImageManager.getImage(Images.titleFlagOver).getTexture().bind(1);
            Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.75f));
            ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, i, (i2 - getHeight()) + Images.boxTitleBORDERWIDTH, this.flagWidth, this.flagHeight);
            spriteBatch.setColor(Color.WHITE);
            spriteBatch.flush();
            spriteBatch.setShader(Renderer.shaderDefault);
        } catch (IndexOutOfBoundsException unused) {
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
    public void drawText(SpriteBatch spriteBatch, int i, int i2, int i3, Status status) {
        Renderer.drawText(spriteBatch, this.fontID, getText(), (i + (i3 / 2)) - (getTextWidth() / 2), ((i2 + 1) - (getHeight() / 2)) + ((-getTextHeight()) / 2), getColorText(status));
    }

    public int getFlagCivID() {
        return 0;
    }
}
