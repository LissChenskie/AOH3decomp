package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menus.MainMenu_Stats;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonFlag_Stats extends Button {
    private int flagImgID = 0;
    private int statsFlagID;

    public ButtonFlag_Stats(int i, int i2, int i3) {
        this.statsFlagID = 0;
        init("", this.fontID, this.iTextPositionX, i2, i3, getButtonWidth(), getButtonHeight(), true, true, false, false);
        this.statsFlagID = i;
        updateLanguage();
    }

    public static int getButtonHeight() {
        return ImageManager.getImage(Images.flagOver.get(0).intValue()).getHeight();
    }

    public static int getButtonWidth() {
        return ImageManager.getImage(Images.flagOver.get(0).intValue()).getWidth();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        this.menuElementHover = MainMenu_Stats.getHover(getFlagCivID());
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        drawFlag(spriteBatch, i, i2, z);
    }

    protected void drawFlag(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        if (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).FLAG_BELOW) {
            ImageManager.getImage(Images.flagBelow).draw(spriteBatch, getPosX() + ((ImageManager.getImage(Images.flagOver.get(this.flagImgID).intValue()).getWidth() - ImageManager.getImage(Images.flagBelow).getWidth()) / 2) + i, getPosY() + i2);
        }
        spriteBatch.setShader(Renderer.shaderAlpha);
        try {
            MainMenu_Stats.lFlags.get(getFlagCivID()).getTexture().bind(1);
            Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
            ImageManager.getImage(Images.flagMask.get(this.flagImgID).intValue()).draw(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.flagMask.get(this.flagImgID).intValue()).getWidth(), ImageManager.getImage(Images.flagMask.get(this.flagImgID).intValue()).getHeight());
        } catch (Exception unused) {
        }
        spriteBatch.flush();
        spriteBatch.setShader(Renderer.shaderDefault);
        ImageManager.getImage(Images.flagOver.get(this.flagImgID).intValue()).draw(spriteBatch, getPosX() + ((ImageManager.getImage(Images.flagMask.get(this.flagImgID).intValue()).getWidth() - ImageManager.getImage(Images.flagOver.get(this.flagImgID).intValue()).getWidth()) / 2) + i, getPosY() + i2);
        if (getIsHovered() || z) {
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.3f));
            ImageManager.getImage(Images.flagOver.get(this.flagImgID).intValue()).draw(spriteBatch, getPosX() + ((ImageManager.getImage(Images.flagMask.get(this.flagImgID).intValue()).getWidth() - ImageManager.getImage(Images.flagOver.get(this.flagImgID).intValue()).getWidth()) / 2) + i, getPosY() + i2);
        }
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getCurrent() {
        return this.statsFlagID;
    }

    public int getFlagCivID() {
        return this.statsFlagID;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void updateLanguage() {
        this.flagImgID = Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).FLAG_GROUP[0] + (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).FLAG_GROUP[1] - Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).FLAG_GROUP[0] > 0 ? (ButtonFlag.EXTRA_RANDOM + getFlagCivID()) % (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).FLAG_GROUP[1] - Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).FLAG_GROUP[0]) : 0);
    }
}
