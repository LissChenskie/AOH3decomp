package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.LawsManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Button_Law2 extends Button {
    public int iText2Height;
    public int iText2Width;
    public int imageID;
    public String sText2;

    public Button_Law2(String str, String str2, int i, int i2, int i3, int i4) {
        init(str, CFG.FONT_REGULAR, 0, i, i2, i3, getButtonHeight(), true, true, false, false);
        this.imageID = i4;
        this.sText2 = str2;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), str2);
        this.iText2Width = (int) Renderer.glyphLayout.width;
        this.iText2Height = (int) Renderer.glyphLayout.height;
    }

    public static int getButtonHeight() {
        return LawsManager.lawsImages.get(0).getHeight() + (getPaddingIMG() * 2);
    }

    public static int getPaddingIMG() {
        return CFG.PADDING + (CFG.PADDING / 2);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        if (getIsHovered() || z) {
            Renderer.drawBoxCorner(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        }
        float f = 0.5f;
        spriteBatch.setColor(new Color(Colors.COLOR_NOTIFICATION_BG.r, Colors.COLOR_NOTIFICATION_BG.g, Colors.COLOR_NOTIFICATION_BG.b, (getIsHovered() || z) ? 0.75f : 0.5f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, (getIsHovered() || z) ? 1.0f : 0.9f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getButtonHeight(), getButtonHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(new Color(Colors.COLOR_NOTIFICATION_OVER.r, Colors.COLOR_NOTIFICATION_OVER.g, Colors.COLOR_NOTIFICATION_OVER.b, 0.3f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        spriteBatch.setColor(new Color(Colors.COLOR_NOTIFICATION_OVER.r, Colors.COLOR_NOTIFICATION_OVER.g, Colors.COLOR_NOTIFICATION_OVER.b, 0.35f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        spriteBatch.setColor(new Color(Colors.COLOR_NOTIFICATION_OVER.r, Colors.COLOR_NOTIFICATION_OVER.g, Colors.COLOR_NOTIFICATION_OVER.b, 0.3f));
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.25f));
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), CFG.PADDING * 2, false, true);
        Images.gradientXY.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - (CFG.PADDING * 2)) + i2, getWidth(), CFG.PADDING * 2);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.25f));
        Renderer.drawBox(spriteBatch, Images.statsRectBGBorder, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(new Color(Colors.COLOR_NOTIFICATION_BG.r, Colors.COLOR_NOTIFICATION_BG.g, Colors.COLOR_NOTIFICATION_BG.b, 0.25f));
        Renderer.drawBox(spriteBatch, Images.statsRectBGBorder, (getPosX() - 1) + i, (getPosY() - 1) + i2, getWidth() + 2, getHeight() + 2, 1.0f);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.5f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 1) + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), 1);
        spriteBatch.setColor(new Color(Colors.COLOR_NOTIFICATION_OVER.r, Colors.COLOR_NOTIFICATION_OVER.g, Colors.COLOR_NOTIFICATION_OVER.b, 0.85f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 2) + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + 1 + i2, getWidth(), 1);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.55f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 1) + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), 1);
        spriteBatch.setColor(new Color(Colors.COLOR_NOTIFICATION_OVER.r, Colors.COLOR_NOTIFICATION_OVER.g, Colors.COLOR_NOTIFICATION_OVER.b, 0.9f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 2) + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + 1 + i2, getWidth(), 1);
        float f2 = Colors.COLOR_GRADIENT_BG_BLUE.r;
        float f3 = Colors.COLOR_GRADIENT_BG_BLUE.g;
        float f4 = Colors.COLOR_GRADIENT_BG_BLUE.b;
        if (!getIsHovered() && !z) {
            f = 0.3f;
        }
        spriteBatch.setColor(new Color(f2, f3, f4, f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + getInnerPosX() + CFG.PADDING + i, getPosY() + CFG.PADDING + i2, getInnerWidth() - (CFG.PADDING * 2), (getButtonHeight() - (CFG.PADDING * 3)) / 2, 1.0f);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(Color.WHITE);
        LawsManager.lawsImages.get(this.imageID).draw(spriteBatch, getPosX() + getPaddingIMG() + i, getPosY() + getPaddingIMG() + i2);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Renderer.drawText(spriteBatch, this.fontID, this.sText, (((getPosX() + getInnerPosX()) + (getInnerWidth() / 2)) - (this.iTextWidth / 2)) + i, ((getPosY() + (getHeight() / 4)) - (this.iTextHeight / 2)) + i2, getColor(z));
        Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, this.sText2, (((getPosX() + getInnerPosX()) + (getInnerWidth() / 2)) - (this.iText2Width / 2)) + i, ((((getPosY() + ((getButtonHeight() - (CFG.PADDING * 3)) / 2)) + CFG.PADDING) + (((getHeight() - ((getButtonHeight() - (CFG.PADDING * 3)) / 2)) - CFG.PADDING) / 2)) - (this.iText2Height / 2)) + i2, Colors.getColorButtonHover2(z, getIsHovered()));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        return Colors.getColorTopStats(z, getIsHovered());
    }

    public int getInnerPosX() {
        return (getPaddingIMG() * 2) + LawsManager.lawsImages.get(this.imageID).getWidth();
    }

    public int getInnerWidth() {
        return getWidth() - getInnerPosX();
    }
}
