package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Button_GoldenAge extends Button {
    public int iLevelW;
    public int iProgressH;
    public int iProgressLeftW;
    public int iProgressLeftW2;
    public int imageID;
    public int maxIconWidth = ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4);
    public int progressIcon;
    public int progressIcon2;
    public String sLevel;
    public String sProgressLeft;
    public String sProgressLeft2;
    public String sProgressRight;
    public String sProgressRight2;
    public int titleH;

    public Button_GoldenAge(String str, int i, int i2, int i3, int i4, int i5, int i6, String str2, String str3, String str4, String str5, String str6) {
        this.progressIcon = i5;
        this.progressIcon2 = i6;
        this.imageID = i4;
        this.titleH = Math.max(ImageManager.getImage(i4).getHeight(), CFG.TEXT_HEIGHT);
        init(str, CFG.FONT_REGULAR, 0, i, i2, i3, getButtonHeight2(), true, true, false, false);
        this.sProgressLeft = str2;
        this.sProgressRight = str3;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), str2);
        this.iProgressLeftW = (int) Renderer.glyphLayout.width;
        this.iProgressH = (int) Renderer.glyphLayout.height;
        this.sProgressLeft2 = str4;
        this.sProgressRight2 = str5;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), str4);
        this.iProgressLeftW2 = (int) Renderer.glyphLayout.width;
        this.sLevel = str6;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), str6);
        this.iLevelW = (int) Renderer.glyphLayout.width;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        if (getIsHovered() || z) {
            Renderer.drawBoxCorner(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        }
        float f = 0.5f;
        spriteBatch.setColor(new Color(Colors.COLOR_NOTIFICATION_BG.r, Colors.COLOR_NOTIFICATION_BG.g, Colors.COLOR_NOTIFICATION_BG.b, (getIsHovered() || z) ? 0.5f : 0.25f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
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
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + CFG.PADDING + i, getPosY() + CFG.PADDING + i2, getWidth() - (CFG.PADDING * 2), (CFG.PADDING * 4) + this.titleH, 1.0f);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, 0.3f));
        Images.gradientXY.draw(spriteBatch, getPosX() + CFG.PADDING + i, getPosY() + CFG.PADDING + i2, getWidth() - (CFG.PADDING * 2), (CFG.PADDING * 4) + this.titleH);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.45f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + CFG.PADDING + i, getPosY() + this.titleH + (CFG.PADDING * 6) + i2, getWidth() - (CFG.PADDING * 2), getStatH(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.3f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + CFG.PADDING + i, getPosY() + this.titleH + (CFG.PADDING * 6) + i2, this.maxIconWidth, getStatH(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.45f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + CFG.PADDING + i, getPosY() + this.titleH + (CFG.PADDING * 6) + getStatH() + CFG.PADDING + i2, getWidth() - (CFG.PADDING * 2), getStatH(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.3f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + CFG.PADDING + i, getPosY() + this.titleH + (CFG.PADDING * 6) + getStatH() + CFG.PADDING + i2, this.maxIconWidth, getStatH(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        ImageManager.getImage(this.imageID).draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (((getTextWidth() + ImageManager.getImage(this.imageID).getWidth()) + (CFG.PADDING * 2)) / 2)) + i, ((getPosY() + (this.titleH / 2)) - (ImageManager.getImage(this.imageID).getHeight() / 2)) + (CFG.PADDING * 3) + i2);
        Renderer.drawText(spriteBatch, this.fontID, this.sText, ((getPosX() + (getWidth() / 2)) - (((getTextWidth() + ImageManager.getImage(this.imageID).getWidth()) + (CFG.PADDING * 2)) / 2)) + ImageManager.getImage(this.imageID).getWidth() + (CFG.PADDING * 2) + i, ((getPosY() + (this.titleH / 2)) - (getTextHeight() / 2)) + (CFG.PADDING * 3) + i2, getColor(z));
        Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, this.sLevel, (((getPosX() + getWidth()) - (CFG.PADDING * 2)) - this.iLevelW) + i, ((getPosY() + (this.titleH / 2)) - (this.iProgressH / 2)) + (CFG.PADDING * 3) + i2, Colors.HOVER_RIGHT3);
        ImageManager.getImage(this.progressIcon).draw(spriteBatch, (((getPosX() + CFG.PADDING) + (this.maxIconWidth / 2)) - (ImageManager.getImage(this.progressIcon).getWidth() / 2)) + i, ((((getPosY() + this.titleH) + (CFG.PADDING * 6)) + (getStatH() / 2)) - (ImageManager.getImage(this.progressIcon).getHeight() / 2)) + i2);
        ImageManager.getImage(this.progressIcon2).draw(spriteBatch, (((getPosX() + CFG.PADDING) + (this.maxIconWidth / 2)) - (ImageManager.getImage(this.progressIcon2).getWidth() / 2)) + i, ((((((getPosY() + this.titleH) + getStatH()) + CFG.PADDING) + (CFG.PADDING * 6)) + (getStatH() / 2)) - (ImageManager.getImage(this.progressIcon2).getHeight() / 2)) + i2);
        Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, this.sProgressLeft, getPosX() + this.maxIconWidth + (CFG.PADDING * 3) + i, ((((getPosY() + this.titleH) + (CFG.PADDING * 6)) + (getStatH() / 2)) - (this.iProgressH / 2)) + i2, getColor(z));
        Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, this.sProgressRight, getPosX() + this.maxIconWidth + (CFG.PADDING * 3) + this.iProgressLeftW + i, ((((getPosY() + this.titleH) + (CFG.PADDING * 6)) + (getStatH() / 2)) - (this.iProgressH / 2)) + i2, Colors.HOVER_GOLD);
        Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, this.sProgressLeft2, getPosX() + this.maxIconWidth + (CFG.PADDING * 3) + i, ((((((getPosY() + this.titleH) + (CFG.PADDING * 6)) + getStatH()) + CFG.PADDING) + (getStatH() / 2)) - (this.iProgressH / 2)) + i2, getColor(z));
        Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, this.sProgressRight2, getPosX() + this.maxIconWidth + (CFG.PADDING * 3) + this.iProgressLeftW2 + i, ((((((getPosY() + this.titleH) + (CFG.PADDING * 6)) + getStatH()) + CFG.PADDING) + (getStatH() / 2)) - (this.iProgressH / 2)) + i2, Colors.HOVER_GOLD);
    }

    public int getButtonHeight2() {
        return this.titleH + (CFG.PADDING * 8) + (getStatH() * 2);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        return Colors.getColorButtonHover2(z, getIsHovered());
    }

    public int getStatH() {
        return this.titleH + (CFG.PADDING * 4);
    }
}
