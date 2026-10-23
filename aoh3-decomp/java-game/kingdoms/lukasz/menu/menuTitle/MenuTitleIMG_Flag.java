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
public class MenuTitleIMG_Flag extends MenuTitleIMG {
    public int flagHeight;
    public int flagWidth;
    public String sText2;

    public MenuTitleIMG_Flag(String str, String str2, boolean z, boolean z2, int i) {
        super(str2, z, z2, i);
        this.fontID = CFG.FONT_BOLD;
        this.sText2 = str;
        int height = getHeight() - Images.boxTitleBORDERWIDTH;
        this.flagHeight = height;
        this.flagWidth = (int) (CFG.CIV_FLAG_WIDTH * (height / CFG.CIV_FLAG_HEIGHT));
    }

    @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG, aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
    public void draw(SpriteBatch spriteBatch, int i, int i2, int i3, Status status) {
        super.draw(spriteBatch, i, i2, i3, status);
        try {
            spriteBatch.setShader(Renderer.shaderAlpha);
            if (getFlagCivID() < 0) {
                ImageManager.getImage(Images.rebelsFlag).getTexture().bind(1);
            } else {
                Game.getCiv(getFlagCivID()).getFlag().getTexture().bind(1);
            }
            Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 1.0f));
            ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, i, (i2 - getHeight()) + Images.boxTitleBORDERWIDTH, this.flagWidth, this.flagHeight);
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
        } catch (Exception unused) {
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
    public void drawText(SpriteBatch spriteBatch, int i, int i2, int i3, Status status) {
        int i4 = i2 + 1;
        Renderer.drawText(spriteBatch, this.fontID, getText2(), CFG.PADDING + i + this.flagWidth, ((getHeight() / 2) - getTextHeight()) + (i4 - getHeight()), getColorText(status));
        Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, getText(), i + this.flagWidth + CFG.PADDING, (i4 - getHeight()) + (getHeight() / 2) + CFG.PADDING, MenuTitle.colorHovered);
    }

    public int getFlagCivID() {
        return 0;
    }

    public String getText2() {
        return this.sText2;
    }
}
