package aoc.kingdoms.lukasz.menu_element;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessage;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.button.Button;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MessageButton extends Button {
    public static final int ANIMATION_TIME = 350;
    public static int messageMaskY;
    public int expiresTurnID;
    private int iCivID;
    public int imageID;
    public int imgH;
    public int imgW;
    public String key;
    public long lTime;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.MessageButton$1, reason: invalid class name */
    class AnonymousClass1 extends Game.SimpleTask {
        AnonymousClass1(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_MessagesSavePos();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.MessageButton$2, reason: invalid class name */
    class AnonymousClass2 extends Game.SimpleTask {
        AnonymousClass2(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_MessagesSavePos();
        }
    }

    public MessageButton(String str, int i, int i2, int i3, long j, int i4, int i5, boolean z) {
        this.lTime = 0L;
        this.iCivID = i;
        this.key = str;
        this.imageID = i2;
        this.expiresTurnID = i3;
        this.imgW = (int) (ImageManager.getImage(i2).getWidth() * 0.75f);
        this.imgH = (int) (ImageManager.getImage(i2).getHeight() * 0.75f);
        this.lTime = j;
        init("", this.fontID, this.iTextPositionX, i4, i5, ImageManager.getImage(Images.messageBG).getWidth() + getExtraWidth(), ImageManager.getImage(Images.messageBG).getHeight(), z, true, false, false);
        this.typeOfElement = MenuElement_Type.BUTTON_FLAG;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void actionElement() {
        PMessage message = Game.player.getMessage(this.key);
        if (message != null) {
            message.actionClick();
        } else {
            Game.addSimpleTask(new AnonymousClass1("rebuildInGame_MessagesSavePos"));
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void actionElementPPM() {
        PMessage message = Game.player.getMessage(this.key);
        if (message != null) {
            message.actionClick();
        } else {
            Game.addSimpleTask(new AnonymousClass2("rebuildInGame_MessagesSavePos"));
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        this.menuElementHover = Game.player.getMessage_Hover(this.key);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        if (this.lTime + 350 >= CFG.currentTimeMillis) {
            i2 = (i2 - getHeight()) + ((int) (getHeight() * ((CFG.currentTimeMillis - this.lTime) / 350.0f)));
        }
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, 1.0f));
        ImageManager.getImage(Images.gradientXYVertical).draw(spriteBatch, getPosX() + (ImageManager.getImage(Images.messageBG).getWidth() / 2) + i, getPosY() + i2, getWidth() - (ImageManager.getImage(Images.messageBG).getWidth() / 2), getHeight());
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.5f));
        ImageManager.getImage(Images.gradientXYVertical).draw(spriteBatch, getPosX() + (ImageManager.getImage(Images.messageBG).getWidth() / 2) + i, getPosY() + CFG.PADDING + i2, getWidth() - (ImageManager.getImage(Images.messageBG).getWidth() / 2), getHeight() - (CFG.PADDING * 2));
        if (getIsHovered()) {
            ImageManager.getImage(Images.gradientXYVertical).draw(spriteBatch, getPosX() + (ImageManager.getImage(Images.messageBG).getWidth() / 2) + i, getPosY() + CFG.PADDING + i2, getWidth() - (ImageManager.getImage(Images.messageBG).getWidth() / 2), getHeight() - (CFG.PADDING * 2));
        }
        spriteBatch.setColor(Color.WHITE);
        Image image = ImageManager.getImage(this.imageID);
        int posX = (((getPosX() + ImageManager.getImage(Images.messageBG).getWidth()) + (getExtraWidth() / 2)) - (this.imgW / 2)) + i;
        int posY = getPosY() + (getHeight() / 2);
        int i3 = this.imgH;
        image.draw(spriteBatch, posX, (posY - (i3 / 2)) + i2, this.imgW, i3);
        ImageManager.getImage(Images.messageBG).draw(spriteBatch, getPosX() + i, getPosY() + i2);
        spriteBatch.setShader(Renderer.shaderAlpha);
        Game.getCiv(this.iCivID).getFlag().getTexture().bind(1);
        Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
        ImageManager.getImage(Images.messageMask).draw(spriteBatch, ((getPosX() + (ImageManager.getImage(Images.messageBG).getWidth() / 2)) - (ImageManager.getImage(Images.messageMask).getWidth() / 2)) + i, (((getPosY() + messageMaskY) + (ImageManager.getImage(Images.messageBG).getHeight() / 2)) - (ImageManager.getImage(Images.messageMask).getHeight() / 2)) + i2);
        spriteBatch.flush();
        spriteBatch.setShader(Renderer.shaderDefault);
        spriteBatch.setColor(Color.WHITE);
        ImageManager.getImage(Images.messageOver).draw(spriteBatch, getPosX() + i, getPosY() + i2);
        if (getIsHovered()) {
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.5f));
            ImageManager.getImage(Images.messageOver).draw(spriteBatch, getPosX() + i, getPosY() + i2);
        }
        spriteBatch.setColor(Color.WHITE);
    }

    public int getExtraWidth() {
        return this.imgW + CFG.PADDING;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setIsHovered(boolean z) {
        super.setIsHovered(z);
        if (z) {
            ProvinceDraw.drawProvincesCiv_HoveredFlagID = this.iCivID;
        }
    }
}
