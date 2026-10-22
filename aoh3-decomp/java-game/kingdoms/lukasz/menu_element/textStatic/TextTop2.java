package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.MenuElement_Type;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class TextTop2 extends MenuElement {
    public int iTextPosX;
    public int imageID;
    public String sText = null;
    public int iTextWidth = -1;
    public int iTextHeight = -1;

    public TextTop2(int i, String str, int i2, int i3) {
        this.typeOfElement = MenuElement_Type.TEXT;
        this.fontID = CFG.FONT_REGULAR_SMALL;
        this.imageID = i;
        setPosX(i2);
        setPosY(i3);
        setHeight((CFG.TEXT_HEIGHT * 2) + (CFG.PADDING * 3));
        setText(str);
        this.iTextPosX = TextTop.EXTRA_WIDTH_BOX_PADDING + ImageManager.getImage(i).getWidth() + (CFG.PADDING * 2);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        ImageManager.getImage(this.imageID).draw(spriteBatch, getPosX() + TextTop.EXTRA_WIDTH_BOX_PADDING + i, getPosY() + ((getHeight() - ImageManager.getImage(this.imageID).getHeight()) / 2) + i2);
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, this.sText, getPosX() + this.iTextPosX + i, ((getPosY() + (getHeight() / 2)) - (getTextHeight() / 2)) + i2, getColor(z));
    }

    public final int extraWidth() {
        return ImageManager.getImage(this.imageID).getWidth() + (CFG.PADDING * 2) + (TextTop.EXTRA_WIDTH_BOX_PADDING * 2);
    }

    protected Color getColor(boolean z) {
        if (z) {
            return new Color(0.56f, 0.56f, 0.56f, 1.0f);
        }
        if (getClickable()) {
            return getIsHovered() ? new Color(0.68f, 0.68f, 0.68f, 1.0f) : new Color(0.82f, 0.82f, 0.82f, 1.0f);
        }
        return new Color(0.78f, 0.78f, 0.78f, 0.7f);
    }

    protected Color getColor2(boolean z) {
        return getColor(z);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public final String getText() {
        return this.sText;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getTextHeight() {
        return this.iTextHeight;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getTextWidth() {
        return this.iTextWidth;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setText(String str) {
        this.sText = str;
        try {
            Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), str);
            this.iTextWidth = (int) Renderer.glyphLayout.width;
            this.iTextHeight = (int) Renderer.glyphLayout.height;
            if (super.getWidth() < this.iTextWidth + extraWidth()) {
                setWidth(this.iTextWidth + extraWidth());
            }
        } catch (IllegalArgumentException e) {
            CFG.exceptionStack(e);
        } catch (IndexOutOfBoundsException e2) {
            CFG.exceptionStack(e2);
        } catch (NullPointerException e3) {
            CFG.exceptionStack(e3);
        }
    }

    public final void setWidthOfButton() {
        setWidth(extraWidth());
    }
}
