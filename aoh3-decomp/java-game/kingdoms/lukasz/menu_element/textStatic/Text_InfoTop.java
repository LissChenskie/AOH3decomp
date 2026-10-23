package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu_element.MenuElement_Type;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Text_InfoTop extends Text_Static {
    public Color colorText = new Color(0.17254902f, 0.09019608f, 0.05490196f, 1.0f);
    public Color colorTextHover = new Color(0.11764706f, 0.039215688f, 0.023529412f, 1.0f);
    public Color colorTextActive = new Color(0.08235294f, 0.023529412f, 0.007843138f, 1.0f);

    public Text_InfoTop(String str, int i, int i2, int i3, int i4, int i5) {
        this.typeOfElement = MenuElement_Type.TEXT;
        this.fontID = CFG.FONT_BOLD;
        this.iTextPositionX = i;
        setPosX(i2);
        setPosY(i3);
        setWidth(i4);
        setHeight(i5);
        setText(str);
        updateTextPosition();
    }

    public Text_InfoTop(String str, int i, int i2, int i3, int i4, int i5, int i6) {
        this.typeOfElement = MenuElement_Type.TEXT;
        this.fontID = i;
        this.iTextPositionX = i2;
        setPosX(i3);
        setPosY(i4);
        setWidth(i5);
        setHeight(i6);
        setText(str);
        updateTextPosition();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static, aoc.kingdoms.lukasz.menu_element.MenuElement
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        Renderer.drawText(spriteBatch, this.fontID, this.sText, ((getPosX() + (getWidth() / 2)) - (getTextWidth() / 2)) + i, getPosY() + ((getHeight() - this.iTextHeight) / 2) + i2, getColor(z));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
    protected Color getColor(boolean z) {
        if (z) {
            return new Color(this.colorTextActive.r, this.colorTextActive.g, this.colorTextActive.b, InGame_Info.fAnimationPerc * 1.0f);
        }
        return getIsHovered() ? new Color(this.colorTextHover.r, this.colorTextHover.g, this.colorTextHover.b, InGame_Info.fAnimationPerc * 1.0f) : new Color(this.colorText.r, this.colorText.g, this.colorText.b, InGame_Info.fAnimationPerc * 1.0f);
    }
}
