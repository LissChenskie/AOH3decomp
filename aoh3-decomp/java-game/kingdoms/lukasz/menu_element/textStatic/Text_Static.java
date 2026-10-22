package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.GlyphLayout_Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.MenuElement_Type;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Text_Static extends MenuElement {
    protected int iTextPositionX;
    protected TextPosition textPosition;
    protected String sText = null;
    protected int iTextWidth = -1;
    protected int iTextHeight = -1;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static$1, reason: invalid class name */
    class AnonymousClass1 implements TextPosition {
        AnonymousClass1() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static.TextPosition
        public int getTextPosition() {
            return 0;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static$2, reason: invalid class name */
    class AnonymousClass2 implements TextPosition {
        AnonymousClass2() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static.TextPosition
        public int getTextPosition() {
            return 0;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static$3, reason: invalid class name */
    class AnonymousClass3 implements TextPosition {
        AnonymousClass3() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static.TextPosition
        public int getTextPosition() {
            return (Text_Static.this.getWidth() / 2) - (Text_Static.this.iTextWidth / 2);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static$4, reason: invalid class name */
    class AnonymousClass4 implements TextPosition {
        AnonymousClass4() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static.TextPosition
        public int getTextPosition() {
            return Text_Static.this.iTextPositionX;
        }
    }

    interface TextPosition {
        int getTextPosition();
    }

    protected Text_Static() {
    }

    public Text_Static(String str, int i, int i2) {
        this.typeOfElement = MenuElement_Type.TEXT;
        setPosX(i);
        setPosY(i2);
        setHeight(CFG.TEXT_HEIGHT);
        setText(str);
        this.textPosition = new AnonymousClass1();
    }

    public Text_Static(String str, int i, int i2, int i3) {
        this.typeOfElement = MenuElement_Type.TEXT;
        this.fontID = i3;
        setPosX(i);
        setPosY(i2);
        setHeight(CFG.TEXT_HEIGHT);
        setText(str);
        this.textPosition = new AnonymousClass2();
    }

    public Text_Static(String str, int i, int i2, int i3, int i4) {
        this.typeOfElement = MenuElement_Type.TEXT;
        this.iTextPositionX = i;
        setPosX(i2);
        setPosY(i3);
        setHeight(i4);
        setText(str);
        updateTextPosition();
    }

    public Text_Static(String str, int i, int i2, int i3, int i4, int i5) {
        this.typeOfElement = MenuElement_Type.TEXT;
        this.iTextPositionX = i;
        setPosX(i2);
        setPosY(i3);
        setWidth(i4);
        setHeight(i5);
        setText(str);
        updateTextPosition();
    }

    public Text_Static(String str, int i, int i2, int i3, int i4, int i5, int i6) {
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

    public Text_Static(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.typeOfElement = MenuElement_Type.TEXT;
        this.fontID = i;
        this.iCurrent = i7;
        this.iTextPositionX = i2;
        setPosX(i3);
        setPosY(i4);
        setWidth(i5);
        setHeight(i6);
        setText(str);
        updateTextPosition();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, this.sText, getPosX() + this.textPosition.getTextPosition() + i, getPosY() + ((getHeight() - CFG.TEXT_HEIGHT) / 2) + i2, getColor(z));
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

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getCurrent() {
        return this.iCurrent;
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
            GlyphLayout_Game glyphLayout_Game = new GlyphLayout_Game();
            glyphLayout_Game.setText(Renderer.fontMain.get(this.fontID), str);
            this.iTextWidth = (int) glyphLayout_Game.width;
            this.iTextHeight = (int) glyphLayout_Game.height;
            int width = super.getWidth();
            int i = this.iTextWidth;
            if (width < i) {
                setWidth(i);
            }
            int height = getHeight();
            int i2 = this.iTextHeight;
            if (height < i2) {
                setHeight(i2);
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    protected void updateTextPosition() {
        if (this.iTextPositionX < 0) {
            this.textPosition = new AnonymousClass3();
        } else {
            this.textPosition = new AnonymousClass4();
        }
    }
}
