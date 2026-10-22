package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Button_Likelihood extends Button {
    public static final int ANIMATION_TIME = 150;
    public float fPerc;
    public int iText2Width;
    public int iconHeight;
    public int iconWidth;
    public int imageID;
    public long lTime;
    public String sText2;

    public Button_Likelihood(String str, String str2, int i, int i2, int i3, int i4, float f, int i5) {
        this.iText2Width = 0;
        init(str, CFG.FONT_REGULAR_SMALL, 0, i, i2, i3, i4, true, true, false, false);
        this.fPerc = f;
        this.sText2 = str2;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), str2);
        this.iText2Width = (int) Renderer.glyphLayout.width;
        this.imageID = i5;
        float imageScale = getImageScale(i5) * 1.1f;
        this.iconWidth = (int) (ImageManager.getImage(i5).getWidth() * imageScale);
        this.iconHeight = (int) (ImageManager.getImage(i5).getHeight() * imageScale);
        this.lTime = CFG.currentTimeMillis;
    }

    private final float getImageScale(int i) {
        return CFG.TEXT_HEIGHT / ImageManager.getImage(i).getHeight();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        float fCurrentTimeMillis = this.fPerc;
        if (this.lTime + 150 > System.currentTimeMillis()) {
            fCurrentTimeMillis = (this.fPerc * (System.currentTimeMillis() - this.lTime)) / 150.0f;
        }
        float f = fCurrentTimeMillis;
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, 0.5f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, (getIsHovered() || z) ? 0.65f : 0.35f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.3f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.35f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.3f));
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.25f));
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), CFG.PADDING * 2, false, true);
        Images.gradientXY.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - (CFG.PADDING * 2)) + i2, getWidth(), CFG.PADDING * 2);
        spriteBatch.setColor(new Color(Colors.HOVER_POSITIVE.r, Colors.HOVER_POSITIVE.g, Colors.HOVER_POSITIVE.b, 0.375f));
        ImageManager.getImage(Images.gradientXYVertical).draw(spriteBatch, getPosX() + i, getPosY() + i2, (int) (getWidth() * f), getHeight(), true, false);
        spriteBatch.setColor(new Color(Colors.HOVER_NEGATIVE.r, Colors.HOVER_NEGATIVE.g, Colors.HOVER_NEGATIVE.b, 0.375f));
        ImageManager.getImage(Images.gradientXYVertical).draw(spriteBatch, getPosX() + ((int) (getWidth() * f)) + i, getPosY() + i2, getWidth() - ((int) (getWidth() * f)), getHeight());
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, 1.0f));
        Images.pix.draw(spriteBatch, getPosX() + ((int) (getWidth() * f)) + i, getPosY() + i2, 1, getHeight());
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.75f));
        ImageManager.getImage(Images.gradientXYVertical).draw(spriteBatch, getPosX() + ((int) (getWidth() * f)) + i, getPosY() + i2, 1, getHeight() / 2);
        ImageManager.getImage(Images.gradientXYVertical).draw(spriteBatch, getPosX() + ((int) (getWidth() * f)) + i, getPosY() + (getHeight() / 2) + i2, 1, getHeight() / 2, false, true);
        spriteBatch.setColor(new Color(Colors.HOVER_GOLD.r, Colors.HOVER_GOLD.g, Colors.HOVER_GOLD.b, 0.5f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + ((int) (getWidth() / 2.0f)) + i, getPosY() + i2, 1, getHeight() / 2, false, true);
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + ((int) (getWidth() / 2.0f)) + i, getPosY() + (getHeight() / 2) + i2, 1, getHeight() / 2);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.5f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, ((getPosX() + ((int) (getWidth() / 2.0f))) - 1) + i, getPosY() + i2, 1, getHeight() / 2, false, true);
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, ((getPosX() + ((int) (getWidth() / 2.0f))) - 1) + i, getPosY() + (getHeight() / 2) + i2, 1, getHeight() / 2);
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + ((int) (getWidth() / 2.0f)) + 1 + i, getPosY() + i2, 1, getHeight() / 2, false, true);
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + ((int) (getWidth() / 2.0f)) + 1 + i, getPosY() + (getHeight() / 2) + i2, 1, getHeight() / 2);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.25f));
        Renderer.drawBox(spriteBatch, Images.statsRectBGBorder, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.5f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 1) + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), 1);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.85f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 2) + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + 1 + i2, getWidth(), 1);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.55f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 1) + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), 1);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.9f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 2) + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + 1 + i2, getWidth(), 1);
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, getTextToDraw(), ((((((getPosX() + getWidth()) - (CFG.PADDING * 2)) - getTextWidth()) - this.iText2Width) - this.iconWidth) - (CFG.PADDING * 2)) + i, ((getPosY() + (getHeight() / 2)) - (this.iTextHeight / 2)) + i2, getColor(z));
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, this.sText2, (((((getPosX() + getWidth()) - (CFG.PADDING * 2)) - this.iText2Width) - this.iconWidth) - (CFG.PADDING * 2)) + i, ((getPosY() + (getHeight() / 2)) - (this.iTextHeight / 2)) + i2, Colors.HOVER_GOLD);
        Image image = ImageManager.getImage(this.imageID);
        int posX = (((getPosX() + getWidth()) - (CFG.PADDING * 2)) - this.iconWidth) + i;
        int posY = getPosY();
        int height = getHeight();
        int i3 = this.iconHeight;
        image.draw(spriteBatch, posX, posY + ((height - i3) / 2) + i2, this.iconWidth, i3);
    }
}
