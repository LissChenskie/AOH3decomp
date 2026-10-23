package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Button_Notification_Flag extends Button_Notification {
    public int civID;

    public Button_Notification_Flag(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, long j, int i7) {
        super(str, str2, i, i2, i3, i4, i5, i6, j);
        this.civID = i7;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button_Notification, aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        drawIcon(spriteBatch, i, i2, z);
        spriteBatch.setShader(Renderer.shaderAlpha);
        int i3 = this.civID;
        if (i3 >= 0) {
            Game.getCiv(i3).getFlag().getTexture().bind(1);
        } else {
            ImageManager.getImage(Images.randomCivilizationFlag).getTexture().bind(1);
        }
        Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
        ImageManager.getImage(Images.flagRect2Mask).draw(spriteBatch, getPosX() + this.iconWidth + (CFG.PADDING * 4) + i, ((getPosY() + (getHeight() / 2)) - (ImageManager.getImage(Images.flagRect2).getHeight() / 2)) + i2, ImageManager.getImage(Images.flagRect2).getWidth(), ImageManager.getImage(Images.flagRect2).getHeight());
        spriteBatch.flush();
        spriteBatch.setShader(Renderer.shaderDefault);
        ImageManager.getImage(Images.flagRect2).draw(spriteBatch, getPosX() + this.iconWidth + (CFG.PADDING * 4) + i, ((getPosY() + (getHeight() / 2)) - (ImageManager.getImage(Images.flagRect2).getHeight() / 2)) + i2, ImageManager.getImage(Images.flagRect2).getWidth(), ImageManager.getImage(Images.flagRect2).getHeight());
        Renderer.drawText(spriteBatch, this.fontID, getTextToDraw(), getPosX() + this.iconWidth + (CFG.PADDING * 6) + ImageManager.getImage(Images.flagRect2).getWidth() + i, ((getPosY() + (getHeight() / 2)) - (getTextHeight() / 2)) + i2, getColor2(getColor(z)));
        Renderer.drawText(spriteBatch, this.fontID, this.sText2, (((getPosX() + getWidth()) - (CFG.PADDING * 2)) - this.iTextWidth2) + i, ((getPosY() + (getHeight() / 2)) - (getTextHeight() / 2)) + i2, getColor2(getColor(z)));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button_Notification
    public void updateTextWidth() {
        int i = 0;
        while (this.iTextWidth > (((getWidth() - this.iTextWidth2) - (CFG.PADDING * 8)) - ImageManager.getImage(Images.flagRect2).getWidth()) - this.iconWidth && getText().length() > 5 && (i = i + 1) < 100) {
            setText(getText().substring(0, Math.max(1, getText().length() - 3)) + ".");
        }
    }
}
