package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.MessageButton;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Button_Notification extends Button {
    public int ANIMATION_TIME;
    float fAlpha;
    public int iTextWidth2;
    public int iconHeight;
    public int iconWidth;
    public int imageID;
    public long lTime;
    public int notificationID;
    public String sText2;

    public Button_Notification(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, long j) {
        super(str, CFG.FONT_REGULAR_SMALL, -1, i, i2, i3, i4, true);
        this.ANIMATION_TIME = MessageButton.ANIMATION_TIME;
        this.iTextWidth2 = 0;
        this.fAlpha = 1.0f;
        this.imageID = i5;
        this.notificationID = i6;
        this.lTime = j;
        this.sText2 = str2;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), str2);
        this.iTextWidth2 = (int) Renderer.glyphLayout.width;
        updateIcon();
        updateTextWidth();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void actionElement() {
        try {
            Game.player.lNotifications.get(this.notificationID).onAction();
            Game.player.removeNotification(this.notificationID);
        } catch (Exception unused) {
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void actionElementPPM() {
        Game.player.removeNotification(this.notificationID);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        try {
            this.menuElementHover = Game.player.lNotifications.get(this.notificationID).buildMenuElementHover();
        } catch (Exception unused) {
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        if (this.lTime + ((long) this.ANIMATION_TIME) >= CFG.currentTimeMillis) {
            this.fAlpha = Math.min(1.0f, (CFG.currentTimeMillis - this.lTime) / this.ANIMATION_TIME);
            i = (int) (i + (CFG.BUTTON_WIDTH - (CFG.BUTTON_WIDTH * this.fAlpha)));
        }
        super.draw(spriteBatch, i, i2, z, z2);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setColor(new Color(Colors.COLOR_NOTIFICATION_BG.r, Colors.COLOR_NOTIFICATION_BG.g, Colors.COLOR_NOTIFICATION_BG.b, ((getIsHovered() || z) ? 0.975f : 0.925f) * this.fAlpha));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(new Color(Colors.COLOR_NOTIFICATION_OVER.r, Colors.COLOR_NOTIFICATION_OVER.g, Colors.COLOR_NOTIFICATION_OVER.b, this.fAlpha * 0.3f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        spriteBatch.setColor(new Color(Colors.COLOR_NOTIFICATION_OVER.r, Colors.COLOR_NOTIFICATION_OVER.g, Colors.COLOR_NOTIFICATION_OVER.b, this.fAlpha * 0.35f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        spriteBatch.setColor(new Color(Colors.COLOR_NOTIFICATION_OVER.r, Colors.COLOR_NOTIFICATION_OVER.g, Colors.COLOR_NOTIFICATION_OVER.b, this.fAlpha * 0.3f));
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, this.fAlpha * 0.25f));
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), CFG.PADDING * 2, false, true);
        Images.gradientXY.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - (CFG.PADDING * 2)) + i2, getWidth(), CFG.PADDING * 2);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, this.fAlpha * 0.25f));
        Renderer.drawBox(spriteBatch, Images.statsRectBGBorder, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(new Color(Colors.COLOR_NOTIFICATION_BG.r, Colors.COLOR_NOTIFICATION_BG.g, Colors.COLOR_NOTIFICATION_BG.b, 0.25f));
        Renderer.drawBox(spriteBatch, Images.statsRectBGBorder, (getPosX() - 1) + i, (getPosY() - 1) + i2, getWidth() + 2, getHeight() + 2, 1.0f);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, this.fAlpha * 0.5f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 1) + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), 1);
        spriteBatch.setColor(new Color(Colors.COLOR_NOTIFICATION_OVER.r, Colors.COLOR_NOTIFICATION_OVER.g, Colors.COLOR_NOTIFICATION_OVER.b, this.fAlpha * 0.85f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 2) + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + 1 + i2, getWidth(), 1);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, this.fAlpha * 0.55f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 1) + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), 1);
        spriteBatch.setColor(new Color(Colors.COLOR_NOTIFICATION_OVER.r, Colors.COLOR_NOTIFICATION_OVER.g, Colors.COLOR_NOTIFICATION_OVER.b, this.fAlpha * 0.9f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 2) + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + 1 + i2, getWidth(), 1);
        spriteBatch.setColor(Color.WHITE);
    }

    protected void drawIcon(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, this.fAlpha));
        Image image = ImageManager.getImage(this.imageID);
        int posX = getPosX() + (CFG.PADDING * 2) + i;
        int posY = getPosY() + (getHeight() / 2);
        int i3 = this.iconHeight;
        image.draw(spriteBatch, posX, (posY - (i3 / 2)) + i2, this.iconWidth, i3);
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        drawIcon(spriteBatch, i, i2, z);
        Renderer.drawText(spriteBatch, this.fontID, getTextToDraw(), getPosX() + this.iconWidth + (CFG.PADDING * 4) + i, ((getPosY() + (getHeight() / 2)) - (getTextHeight() / 2)) + i2, getColor2(getColor(z)));
        Renderer.drawText(spriteBatch, this.fontID, this.sText2, (((getPosX() + getWidth()) - (CFG.PADDING * 2)) - this.iTextWidth2) + i, ((getPosY() + (getHeight() / 2)) - (getTextHeight() / 2)) + i2, getColor2(getColor(z)));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        return Colors.getColorButton(z, getIsHovered());
    }

    protected Color getColor2(Color color) {
        return new Color(color.r, color.g, color.b, this.fAlpha);
    }

    public float getImageScale(int i) {
        return CFG.TEXT_HEIGHT / ImageManager.getImage(i).getHeight();
    }

    public void updateIcon() {
        float imageScale = getImageScale(this.imageID) * 1.2f;
        this.iconWidth = (int) (ImageManager.getImage(this.imageID).getWidth() * imageScale);
        this.iconHeight = (int) (ImageManager.getImage(this.imageID).getHeight() * imageScale);
    }

    public void updateTextWidth() {
        int i = 0;
        while (this.iTextWidth > ((getWidth() - this.iTextWidth2) - (CFG.PADDING * 7)) - this.iconWidth && getText().length() > 5 && (i = i + 1) < 100) {
            setText(getText().substring(0, Math.max(1, getText().length() - 3)) + ".");
        }
    }
}
