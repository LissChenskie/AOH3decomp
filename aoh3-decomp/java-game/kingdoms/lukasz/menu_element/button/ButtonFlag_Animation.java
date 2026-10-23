package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.map.terrain.exjB.uiwPYaNhJS;
import aoc.kingdoms.lukasz.menu_element.MenuElement_Type;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonFlag_Animation extends Button {
    public static int EXTRA_RANDOM;
    public int iCivID;
    public boolean inAnimation;
    private int flagImgID = 0;
    private long currentTime = 0;
    private int ANIMATION_TIME = 125;

    public ButtonFlag_Animation(int i, int i2, int i3, boolean z) {
        init(uiwPYaNhJS.TbJyuZZewpYlEK, this.fontID, this.iTextPositionX, i2, i3, getButtonWidth(), getButtonHeight(), z, true, false, false);
        this.typeOfElement = MenuElement_Type.BUTTON_FLAG;
        this.iCivID = i;
        this.inAnimation = true;
    }

    public ButtonFlag_Animation(int i, int i2, boolean z) {
        init("", this.fontID, this.iTextPositionX, i, i2, getButtonWidth(), getButtonHeight(), z, true, false, false);
        this.typeOfElement = MenuElement_Type.BUTTON_FLAG;
        this.inAnimation = true;
    }

    public static int getButtonHeight() {
        return ImageManager.getImage(Images.flagOver.get(0).intValue()).getHeight();
    }

    public static int getButtonWidth() {
        return ImageManager.getImage(Images.flagOver.get(0).intValue()).getWidth();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void actionElementPPM() {
        try {
            if (getFlagCivID() <= 0 || Game.getCiv(getFlagCivID()).getCapitalProvinceID() < 0 || getFlagCivID() != Game.getProvince(Game.getCiv(getFlagCivID()).getCapitalProvinceID()).getCivID()) {
                return;
            }
            Game.mapCoords.centerToProvinceID(Game.getCiv(getFlagCivID()).getCapitalProvinceID());
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        if (!this.inAnimation) {
            drawFlag(spriteBatch, i, i2, z);
            return;
        }
        if (this.currentTime == 0) {
            this.currentTime = CFG.currentTimeMillis;
        }
        Renderer.clipView_Start(spriteBatch, i, CFG.GAME_HEIGHT - (getPosY() + i2), CFG.GAME_WIDTH, -((int) (ImageManager.getImage(Images.flagOver.get(this.flagImgID).intValue()).getHeight() * ((((CFG.currentTimeMillis - this.currentTime) / this.ANIMATION_TIME) * 0.8f) + 0.2f))));
        drawFlag(spriteBatch, i, i2, z);
        Renderer.clipView_End(spriteBatch);
        if (CFG.currentTimeMillis - this.currentTime > this.ANIMATION_TIME) {
            this.inAnimation = false;
            this.currentTime = 0L;
        }
    }

    protected void drawFlag(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        if (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).FLAG_BELOW) {
            ImageManager.getImage(Images.flagBelow).draw(spriteBatch, getPosX() + ((ImageManager.getImage(Images.flagOver.get(this.flagImgID).intValue()).getWidth() - ImageManager.getImage(Images.flagBelow).getWidth()) / 2) + i, getPosY() + i2);
        }
        if (Game.getCiv(getFlagCivID()).isFlagNearest) {
            spriteBatch.setShader(Renderer.shaderAlpha);
            Game.getCiv(getFlagCivID()).getFlag().getTexture().bind(1);
            Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
            ImageManager.getImage(Images.flagMask.get(this.flagImgID).intValue()).draw(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.flagMask.get(this.flagImgID).intValue()).getWidth(), ImageManager.getImage(Images.flagMask.get(this.flagImgID).intValue()).getHeight());
        } else {
            Renderer.setShaderWater3(spriteBatch);
            Renderer.shaderWater3.setUniformf("u_maskScale", 1.0f);
            Renderer.shaderWater3.setUniformf("u_maskScaleY", 1.0f);
            ImageManager.getImage(Images.flagMask.get(this.flagImgID).intValue()).getTexture().bind(1);
            Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
            Game.getCiv(getFlagCivID()).getFlag().draw(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.flagMask.get(this.flagImgID).intValue()).getWidth(), ImageManager.getImage(Images.flagMask.get(this.flagImgID).intValue()).getHeight());
        }
        spriteBatch.flush();
        spriteBatch.setShader(Renderer.shaderDefault);
        if (GameValues.inGame.ENABLE_VASSAL_LORD_FLAG && Game.getCiv(getFlagCivID()).getPuppetOfCivID() != getFlagCivID()) {
            if (Game.getCiv(Game.getCiv(getFlagCivID()).getPuppetOfCivID()).isFlagNearest) {
                spriteBatch.setShader(Renderer.shaderAlpha);
                Game.getCiv(Game.getCiv(getFlagCivID()).getPuppetOfCivID()).getFlag().getTexture().bind(1);
                Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
                ImageManager.getImage(Images.flagMaskLord.get(this.flagImgID).intValue()).draw(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.flagMaskLord.get(this.flagImgID).intValue()).getWidth(), ImageManager.getImage(Images.flagMaskLord.get(this.flagImgID).intValue()).getHeight());
            } else {
                Renderer.setShaderWater3(spriteBatch);
                Renderer.shaderWater3.setUniformf("u_maskScale", 1.0f);
                Renderer.shaderWater3.setUniformf("u_maskScaleY", 1.0f);
                ImageManager.getImage(Images.flagMaskLord.get(this.flagImgID).intValue()).getTexture().bind(1);
                Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
                Game.getCiv(Game.getCiv(getFlagCivID()).getPuppetOfCivID()).getFlag().draw(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.flagMaskLord.get(this.flagImgID).intValue()).getWidth(), ImageManager.getImage(Images.flagMaskLord.get(this.flagImgID).intValue()).getHeight());
            }
            spriteBatch.flush();
            spriteBatch.setShader(Renderer.shaderDefault);
        }
        ImageManager.getImage(Images.flagOver.get(this.flagImgID).intValue()).draw(spriteBatch, getPosX() + ((ImageManager.getImage(Images.flagMask.get(this.flagImgID).intValue()).getWidth() - ImageManager.getImage(Images.flagOver.get(this.flagImgID).intValue()).getWidth()) / 2) + i, getPosY() + i2);
        if (getIsHovered() || z) {
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.3f));
            ImageManager.getImage(Images.flagOver.get(this.flagImgID).intValue()).draw(spriteBatch, getPosX() + ((ImageManager.getImage(Images.flagMask.get(this.flagImgID).intValue()).getWidth() - ImageManager.getImage(Images.flagOver.get(this.flagImgID).intValue()).getWidth()) / 2) + i, getPosY() + i2);
        }
        spriteBatch.setColor(Color.WHITE);
    }

    public int getFlagCivID() {
        return Game.iActiveProvince >= 0 ? Game.getProvince(Game.iActiveProvince).getCivID() : getCurrent();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setIsHovered(boolean z) {
        super.setIsHovered(z);
        if (z) {
            ProvinceDraw.drawProvincesCiv_HoveredFlagID = getFlagCivID();
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void updateLanguage() {
        this.flagImgID = Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).FLAG_GROUP[0] + (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).FLAG_GROUP[1] - Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).FLAG_GROUP[0] > 0 ? (EXTRA_RANDOM + getFlagCivID()) % (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).FLAG_GROUP[1] - Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).FLAG_GROUP[0]) : 0);
    }
}
