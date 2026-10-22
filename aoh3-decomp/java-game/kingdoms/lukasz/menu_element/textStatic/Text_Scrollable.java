package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.MenuElement_Type;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Text_Scrollable extends MenuElement {
    private DrawText drawText;
    private long lTime;
    private Color textColor;
    protected TextPosition textPosition;
    protected String sText = null;
    protected int iTextWidth = -1;
    protected int iTextHeight = -1;
    private float fTextScale = 1.0f;
    private boolean center = false;
    private boolean scrollable = false;
    private int iScrollPosX = 0;
    private boolean scrollInRightDirection = true;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.textStatic.Text_Scrollable$1, reason: invalid class name */
    class AnonymousClass1 implements DrawText {
        AnonymousClass1() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Scrollable.DrawText
        public void draw_Element(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
            Renderer.setFontScale(Text_Scrollable.this.fTextScale);
            Renderer.drawTextWithShadow(spriteBatch, Text_Scrollable.this.fontID, Text_Scrollable.this.getText(), Text_Scrollable.this.getPosX() + Text_Scrollable.this.textPosition.getTextPosition(z) + i, ((Text_Scrollable.this.getPosY() + (Text_Scrollable.this.getHeight() / 2)) - (Text_Scrollable.this.iTextHeight / 2)) + i2, Text_Scrollable.this.getColor(z));
            Renderer.resetFontScale();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.textStatic.Text_Scrollable$2, reason: invalid class name */
    class AnonymousClass2 implements DrawText {
        AnonymousClass2() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Scrollable.DrawText
        public void draw_Element(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
            Renderer.drawTextWithShadow(spriteBatch, Text_Scrollable.this.fontID, Text_Scrollable.this.getText(), Text_Scrollable.this.getPosX() + Text_Scrollable.this.textPosition.getTextPosition(z) + i, ((Text_Scrollable.this.getPosY() + (Text_Scrollable.this.getHeight() / 2)) - (Text_Scrollable.this.iTextHeight / 2)) + i2, Text_Scrollable.this.getColor(z));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.textStatic.Text_Scrollable$3, reason: invalid class name */
    class AnonymousClass3 implements TextPosition {
        AnonymousClass3() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Scrollable.TextPosition
        public int getTextPosition(boolean z) {
            if (z) {
                return Text_Scrollable.this.iScrollPosX;
            }
            if (Text_Scrollable.this.lTime + 30 <= CFG.currentTimeMillis) {
                if (Text_Scrollable.this.scrollInRightDirection) {
                    Text_Scrollable.access$306(Text_Scrollable.this);
                    if (Text_Scrollable.this.getWidth() - Text_Scrollable.this.iScrollPosX >= Text_Scrollable.this.getTextWidth() + CFG.PADDING) {
                        Text_Scrollable text_Scrollable = Text_Scrollable.this;
                        text_Scrollable.scrollInRightDirection = !text_Scrollable.scrollInRightDirection;
                    }
                } else {
                    Text_Scrollable.access$304(Text_Scrollable.this);
                    if (Text_Scrollable.this.iScrollPosX == CFG.PADDING) {
                        Text_Scrollable text_Scrollable2 = Text_Scrollable.this;
                        text_Scrollable2.scrollInRightDirection = !text_Scrollable2.scrollInRightDirection;
                    }
                }
                Text_Scrollable.this.lTime = CFG.currentTimeMillis;
            }
            return Text_Scrollable.this.iScrollPosX;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.textStatic.Text_Scrollable$4, reason: invalid class name */
    class AnonymousClass4 implements TextPosition {
        AnonymousClass4() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Scrollable.TextPosition
        public int getTextPosition(boolean z) {
            return (Text_Scrollable.this.getWidth() / 2) - (Text_Scrollable.this.getTextWidth() / 2);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.textStatic.Text_Scrollable$5, reason: invalid class name */
    class AnonymousClass5 implements TextPosition {
        AnonymousClass5() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Scrollable.TextPosition
        public int getTextPosition(boolean z) {
            return 0;
        }
    }

    private interface DrawText {
        void draw_Element(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2);
    }

    interface TextPosition {
        int getTextPosition(boolean z);
    }

    public Text_Scrollable(String str, int i, int i2, int i3, int i4, Color color) {
        init(str, i, i2, i3, i4, color, 1.0f, 0);
    }

    public Text_Scrollable(String str, int i, int i2, int i3, int i4, Color color, float f) {
        init(str, i, i2, i3, i4, color, f, 0);
    }

    public Text_Scrollable(String str, int i, int i2, int i3, int i4, Color color, float f, int i5) {
        init(str, i, i2, i3, i4, color, f, i5);
    }

    public Text_Scrollable(String str, int i, int i2, int i3, Color color) {
        init(str, i, i2, i3, 0, color, 1.0f, 0);
    }

    public Text_Scrollable(String str, int i, int i2, int i3, Color color, float f) {
        init(str, i, i2, i3, 0, color, f, 0);
    }

    static /* synthetic */ int access$304(Text_Scrollable text_Scrollable) {
        int i = text_Scrollable.iScrollPosX + 1;
        text_Scrollable.iScrollPosX = i;
        return i;
    }

    static /* synthetic */ int access$306(Text_Scrollable text_Scrollable) {
        int i = text_Scrollable.iScrollPosX - 1;
        text_Scrollable.iScrollPosX = i;
        return i;
    }

    private final void init(String str, int i, int i2, int i3, int i4, Color color, float f, int i5) {
        this.typeOfElement = MenuElement_Type.TEXT_SCROLLABLE;
        this.iScrollPosX = i5;
        this.fTextScale = f;
        this.center = i5 < 0;
        setPosX(i);
        setPosY(i2);
        setWidth(i3);
        if (i4 > 0) {
            setHeight(i4);
        }
        setText(str);
        this.textColor = color;
        updateTextPosition();
        if (this.fTextScale != 1.0f) {
            this.drawText = new AnonymousClass1();
        } else {
            this.drawText = new AnonymousClass2();
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        if (Renderer.clipView_Start(spriteBatch, getPosX() + i, (CFG.GAME_HEIGHT - getPosY()) - i2, getWidth(), (-getHeight()) - (CFG.PADDING * 2))) {
            draw_Element(spriteBatch, i, i2, z, z2);
            draw_EndClip(spriteBatch, i, i2, z, z2);
        }
    }

    protected void draw_Element(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        try {
            this.drawText.draw_Element(spriteBatch, i, i2, z, z2);
        } catch (NullPointerException e) {
            e.printStackTrace();
        }
    }

    protected void draw_EndClip(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        Renderer.clipView_End(spriteBatch);
    }

    public Color getColor(boolean z) {
        if (z) {
            return Colors.BUTTON_TEXT_ACTIVE;
        }
        if (getIsHovered()) {
            return Colors.BUTTON_TEXT_HOVERED;
        }
        return getClickable() ? this.textColor : new Color(0.78f, 0.78f, 0.78f, 0.7f);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getScrollPosX() {
        return this.iScrollPosX;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public boolean getScrollable() {
        return this.scrollable;
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
    public void scrollByWheel(int i) {
        this.scrollInRightDirection = i < 0;
        setScrollPosX(getScrollPosX() + i);
        this.lTime = CFG.currentTimeMillis + 375;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setScrollPosX(int i) {
        this.iScrollPosX = i;
        if (i > CFG.PADDING) {
            this.iScrollPosX = CFG.PADDING;
            this.scrollInRightDirection = true;
        } else if ((getTextWidth() + CFG.PADDING) - getWidth() < (-this.iScrollPosX)) {
            this.iScrollPosX = -((getTextWidth() + CFG.PADDING) - getWidth());
            this.scrollInRightDirection = false;
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setText(String str) {
        this.sText = str;
        try {
            Renderer.setFontScale(this.fTextScale);
            Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), str);
            this.iTextWidth = (int) Renderer.glyphLayout.width;
            this.iTextHeight = (int) Renderer.glyphLayout.height;
            Renderer.resetFontScale();
            updateTextPosition();
            int height = getHeight();
            int i = this.iTextHeight;
            if (height < i) {
                setHeight(i);
            }
        } catch (NullPointerException unused) {
        }
    }

    protected final void updateTextPosition() {
        if (getTextWidth() > getWidth() + CFG.PADDING) {
            this.textPosition = new AnonymousClass3();
            this.scrollable = true;
        } else {
            if (this.center) {
                this.textPosition = new AnonymousClass4();
            } else {
                this.textPosition = new AnonymousClass5();
            }
            this.scrollable = false;
        }
        this.iScrollPosX = 0;
        this.scrollInRightDirection = true;
    }
}
