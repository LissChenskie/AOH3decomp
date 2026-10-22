package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.LawsManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Button_Law3 extends Button {
    public int iLineSize;
    public int imageID;
    public int lawID;
    public int lawID2;
    public List<String> sLines = new ArrayList();

    public Button_Law3(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
        int i7 = 0;
        this.iLineSize = 0;
        init(str, CFG.FONT_REGULAR, 0, i, i2, i3, getButtonHeight(), true, true, false, false);
        this.lawID = i5;
        this.lawID2 = i6;
        this.imageID = i4;
        String[] strArrSplit = str2.split(" ");
        int innerWidth = getInnerWidth() - (CFG.PADDING * 4);
        int length = strArrSplit.length;
        String str3 = "";
        int i8 = 0;
        for (int i9 = 0; i9 < length; i9++) {
            Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), strArrSplit[i9] + " ");
            int i10 = (int) Renderer.glyphLayout.width;
            i8 += i10;
            if (i8 < innerWidth) {
                str3 = str3 + strArrSplit[i9] + " ";
            } else {
                this.sLines.add(str3);
                str3 = strArrSplit[i9] + " ";
                i8 = i10;
            }
        }
        if (str3.length() > 0) {
            this.sLines.add(str3);
        }
        if (this.sLines.size() > 0 && this.sLines.get(0).length() > 0) {
            Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), this.sLines.get(0));
            i7 = (int) Renderer.glyphLayout.height;
        }
        this.iLineSize = this.sLines.size();
        setHeight(Math.max(getButtonHeight(), (getButtonHeight() / 2) + (CFG.PADDING * 3) + (i7 * this.sLines.size()) + ((this.sLines.size() - 1) * CFG.PADDING * 2)));
    }

    public static int getButtonHeight() {
        return LawsManager.lawsImages.get(0).getHeight() + (getPaddingIMG() * 2);
    }

    public static int getPaddingIMG() {
        return CFG.PADDING + (CFG.PADDING / 2);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        this.menuElementHover = LawsManager.getHover(this.lawID, this.lawID2);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        if (getIsHovered() || z) {
            Renderer.drawBoxCorner(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        }
        float f = 0.5f;
        spriteBatch.setColor(new Color(Colors.COLOR_NOTIFICATION_BG.r, Colors.COLOR_NOTIFICATION_BG.g, Colors.COLOR_NOTIFICATION_BG.b, (getIsHovered() || z) ? 0.5f : 0.25f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, (getIsHovered() || z) ? 1.0f : 0.75f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getButtonHeight(), getHeight(), 1.0f);
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
        drawImage(spriteBatch, i, i2, z);
    }

    protected void drawImage(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setShader(Renderer.shaderAlpha);
        LawsManager.lawsImages.get(this.imageID).getTexture().bind(1);
        Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
        ImageManager.getImage(Images.lawMask).draw(spriteBatch, getPosX() + getPaddingIMG() + i, getPosY() + getPaddingIMG() + i2);
        spriteBatch.flush();
        spriteBatch.setShader(Renderer.shaderDefault);
        ImageManager.getImage(Images.lawOver).draw(spriteBatch, getPosX() + getPaddingIMG() + i, getPosY() + getPaddingIMG() + i2);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Renderer.drawText(spriteBatch, this.fontID, this.sText, getPosX() + getInnerPosX() + (CFG.PADDING * 3) + i, ((getPosY() + (getButtonHeight() / 4)) - (this.iTextHeight / 2)) + i2, getColor(z));
        for (int i3 = 0; i3 < this.iLineSize; i3++) {
            Renderer.drawTextWithShadow(spriteBatch, CFG.FONT_REGULAR_SMALL, this.sLines.get(i3), getPosX() + getInnerPosX() + (CFG.PADDING * 2) + i, getPosY() + (getButtonHeight() / 2) + CFG.PADDING + ((this.iTextHeight + (CFG.PADDING * 2)) * i3) + i2, Colors.getColorButtonHover(z, getIsHovered()));
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        return Colors.getColorButtonHover2(z, getIsHovered());
    }

    public int getInnerPosX() {
        return (getPaddingIMG() * 2) + LawsManager.lawsImages.get(this.imageID).getWidth();
    }

    public int getInnerWidth() {
        return getWidth() - getInnerPosX();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getValue1() {
        return this.lawID;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getValue2() {
        return this.lawID2;
    }
}
