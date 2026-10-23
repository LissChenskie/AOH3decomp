package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.GlyphLayout_Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.MenuElement_Type;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Button extends MenuElement {
    protected static final Color COLOR_BUTTON_MENU_HOVER_BG = new Color(1.0f, 1.0f, 1.0f, 1.0f);
    protected int iTextHeight;
    protected int iTextPositionX;
    protected Checkbox oCheckbox;
    protected TextPosition textPosition;
    protected String sText = null;
    protected int iTextWidth = -1;
    protected boolean checkbox = false;
    private boolean checkboxState = false;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.button.Button$1, reason: invalid class name */
    class AnonymousClass1 implements TextPosition {
        AnonymousClass1() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button.TextPosition
        public int getTextPosition() {
            return (Button.this.getWidth() / 2) - (Button.this.getTextWidth() / 2);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.button.Button$2, reason: invalid class name */
    class AnonymousClass2 implements TextPosition {
        AnonymousClass2() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button.TextPosition
        public int getTextPosition() {
            return Button.this.iTextPositionX;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.button.Button$3, reason: invalid class name */
    class AnonymousClass3 implements Checkbox {
        AnonymousClass3() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button.Checkbox
        public void drawCheckBox(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            if (Button.this.getCheckboxState()) {
                spriteBatch.setColor(new Color(0.55f, 0.8f, 0.0f, 0.25f));
            } else {
                spriteBatch.setColor(new Color(0.8f, 0.137f, 0.0f, 0.25f));
            }
            ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, Button.this.getPosX() + i, Button.this.getPosY() + 1 + i2, Button.this.getWidth() / 4, Button.this.getHeight() - 2, false, false);
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.1f));
            ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, Button.this.getPosX() + i, Button.this.getPosY() + 1 + i2, Button.this.getWidth(), Button.this.getHeight() / 4, false, false);
            ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, Button.this.getPosX() + i, (((Button.this.getPosY() + Button.this.getHeight()) - 1) + i2) - (Button.this.getHeight() / 4), Button.this.getWidth(), Button.this.getHeight() / 4, false, true);
            spriteBatch.setColor(Color.WHITE);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.button.Button$4, reason: invalid class name */
    class AnonymousClass4 implements Checkbox {
        AnonymousClass4() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button.Checkbox
        public void drawCheckBox(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        }
    }

    interface Checkbox {
        void drawCheckBox(SpriteBatch spriteBatch, int i, int i2, boolean z);
    }

    public interface TextPosition {
        int getTextPosition();
    }

    public Button() {
    }

    public Button(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
        init(str, i, i2, i3, i4, i5, i6, z, true, false, false);
    }

    public Button(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
        init(str, i, i2, i3, i4, i5, CFG.BUTTON_HEIGHT, z, true, false, false);
    }

    public Checkbox buildCheckbox() {
        return this.checkbox ? new AnonymousClass3() : new AnonymousClass4();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        if (getClickable()) {
            drawButtonBG(spriteBatch, i, i2, z);
        } else {
            spriteBatch.setColor(1.0f, 1.0f, 1.0f, 0.45f);
            drawButtonBG(spriteBatch, i, i2, z);
            spriteBatch.setColor(Color.WHITE);
        }
        this.oCheckbox.drawCheckBox(spriteBatch, i, i2, z2);
        drawText(spriteBatch, i, i2, z);
    }

    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        if (z) {
            ImageManager.getImage(Images.buttonMenuH).draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth());
            return;
        }
        if (getIsHovered() && getClickable()) {
            spriteBatch.setColor(COLOR_BUTTON_MENU_HOVER_BG);
            ImageManager.getImage(Images.buttonMenuH).draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth());
            spriteBatch.setColor(Color.WHITE);
        } else {
            ImageManager.getImage(Images.buttonMenu).draw2(spriteBatch, getPosX() + i, getPosY() + i2, getWidth() - ImageManager.getImage(Images.buttonMenu).getWidth());
            ImageManager.getImage(Images.buttonMenu).draw2(spriteBatch, ((getPosX() + getWidth()) - ImageManager.getImage(Images.buttonMenu).getWidth()) + i, getPosY() + i2, ImageManager.getImage(Images.buttonMenu).getWidth(), ImageManager.getImage(Images.buttonMenu).getHeight(), true, false);
            spriteBatch.setColor(new Color(Colors.COLOR_BOX_FRAME2.r, Colors.COLOR_BOX_FRAME2.g, Colors.COLOR_BOX_FRAME2.b, Colors.COLOR_BOX_FRAME2.a));
            Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + 1 + i2, getWidth(), 1);
            Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 2) + i2, getWidth() - 2, 1);
            spriteBatch.setColor(Color.WHITE);
        }
    }

    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Renderer.drawText(spriteBatch, this.fontID, getTextToDraw(), getPosX() + this.textPosition.getTextPosition() + i, ((getPosY() + (getHeight() / 2)) - (this.iTextHeight / 2)) + i2, getColor(z));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public boolean getCheckboxState() {
        return this.checkboxState;
    }

    protected Color getColor(boolean z) {
        if (z) {
            return Colors.BUTTON_TEXT_ACTIVE;
        }
        if (getIsHovered()) {
            return Colors.BUTTON_TEXT_HOVERED;
        }
        return getClickable() ? Colors.BUTTON_TEXT : Colors.BUTTON_TEXT_DISABLED;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public String getText() {
        return this.sText;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getTextHeight() {
        return this.iTextHeight;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getTextPos() {
        return this.iTextPositionX;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public String getTextToDraw() {
        return this.sText;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getTextWidth() {
        return this.iTextWidth;
    }

    public final void init(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z, boolean z2, boolean z3, boolean z4) {
        this.typeOfElement = MenuElement_Type.BUTTON;
        this.fontID = i;
        setPosX(i3);
        setPosY(i4);
        setWidth(i5);
        setHeight(i6);
        setText(str);
        this.iTextPositionX = i2;
        if (i2 < 0) {
            this.textPosition = new AnonymousClass1();
        } else {
            this.textPosition = new AnonymousClass2();
        }
        this.checkbox = z3;
        this.checkboxState = z4;
        this.oCheckbox = buildCheckbox();
        setClickable(z);
        setVisible(z2);
    }

    public final void setCheckbox(boolean z) {
        this.checkbox = z;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setCheckboxState(boolean z) {
        this.checkboxState = z;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setText(String str) {
        this.sText = str;
        try {
            if (str != null) {
                GlyphLayout_Game glyphLayout_Game = new GlyphLayout_Game();
                glyphLayout_Game.setText(Renderer.fontMain.get(this.fontID), getText());
                this.iTextWidth = (int) glyphLayout_Game.width;
                this.iTextHeight = (int) glyphLayout_Game.height;
            } else {
                this.iTextHeight = 0;
                this.iTextWidth = 0;
            }
        } catch (IllegalArgumentException e) {
            CFG.exceptionStack(e);
        } catch (IndexOutOfBoundsException e2) {
            CFG.exceptionStack(e2);
        } catch (NullPointerException e3) {
            CFG.exceptionStack(e3);
        }
    }
}
