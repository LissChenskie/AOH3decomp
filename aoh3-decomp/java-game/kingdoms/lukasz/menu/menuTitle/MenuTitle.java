package aoc.kingdoms.lukasz.menu.menuTitle;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.GlyphLayout_Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MenuTitle {
    protected static final int ANIMATION_TIME = 325;
    public int fontID;
    public float fontScale;
    private int iHeight;
    private int iTextHeight;
    public int iTextWidth;
    private boolean moveable;
    private boolean resizable;
    private String sText;
    public static Color colorDefault = new Color(0.92941177f, 0.99607843f, 1.0f, 1.0f);
    public static Color colorHovered = new Color(0.78431374f, 0.78431374f, 0.7647059f, 1.0f);
    public static Color colorActive = new Color(0.54901963f, 0.5882353f, 0.60784316f, 1.0f);

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$aoc$kingdoms$lukasz$menu_element$Status;

        static {
            int[] iArr = new int[Status.values().length];
            $SwitchMap$aoc$kingdoms$lukasz$menu_element$Status = iArr;
            try {
                iArr[Status.ACTIVE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu_element$Status[Status.HOVERED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public MenuTitle(String str, float f, int i, boolean z, boolean z2) {
        this.fontScale = 1.0f;
        this.iTextWidth = -1;
        this.iTextHeight = -1;
        this.moveable = false;
        this.resizable = false;
        this.fontID = 0;
        initTitle(str, f, i, z, z2);
    }

    public MenuTitle(String str, int i, int i2, boolean z, boolean z2) {
        this.fontScale = 1.0f;
        this.iTextWidth = -1;
        this.iTextHeight = -1;
        this.moveable = false;
        this.resizable = false;
        this.fontID = i2;
        initTitle(str, 1.0f, i, z, z2);
    }

    public MenuTitle(String str, int i, boolean z, boolean z2) {
        this.fontScale = 1.0f;
        this.iTextWidth = -1;
        this.iTextHeight = -1;
        this.moveable = false;
        this.resizable = false;
        this.fontID = 0;
        initTitle(str, 1.0f, i, z, z2);
    }

    private final void initTitle(String str, float f, int i, boolean z, boolean z2) {
        this.fontScale = f;
        this.iHeight = i;
        this.moveable = z;
        this.resizable = z2;
        setText(str);
    }

    public void action() {
    }

    public void draw(SpriteBatch spriteBatch, int i, int i2, int i3, Status status) {
        Renderer.drawBox_EDGE_TOP_LR(spriteBatch, Images.boxTitle, i, i2 - getHeight(), i3, getHeight());
        drawGradient(spriteBatch, i, i2, i3, status);
        spriteBatch.setColor(new Color(0.57254905f, 0.49411765f, 0.29411766f, 1.0f));
        Images.gradientFull.draw(spriteBatch, i, i2 - 1, i3, 1);
        spriteBatch.setColor(Color.WHITE);
        drawText(spriteBatch, i, i2, i3, status);
    }

    public void drawGradient(SpriteBatch spriteBatch, int i, int i2, int i3, Status status) {
        spriteBatch.setColor(new Color(Colors.COLOR_TITLE.r, Colors.COLOR_TITLE.g, Colors.COLOR_TITLE.b, 0.225f));
        Images.gradientXY.draw(spriteBatch, i, i2 - getHeight(), i3, getHeight());
        if (getTime() + 325 >= CFG.currentTimeMillis) {
            spriteBatch.setColor(new Color(Colors.COLOR_TITLE.r, Colors.COLOR_TITLE.g, Colors.COLOR_TITLE.b, 0.25f - (((CFG.currentTimeMillis - getTime()) / 325.0f) * 0.25f)));
            ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i, i2 - (CFG.PADDING * 2), i3, CFG.PADDING * 2, false, true);
            Images.gradientXY.draw(spriteBatch, i, i2 - getHeight(), i3, getHeight());
        }
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.5f));
        Images.gradientFull.draw(spriteBatch, i, i2 - 2, i3, 1);
        spriteBatch.setColor(Color.WHITE);
    }

    public void drawText(SpriteBatch spriteBatch, int i, int i2, int i3, Status status) {
        Renderer.drawText(spriteBatch, this.fontID, getText(), this.fontScale, i + ((int) ((i3 / 2.0f) - (getTextWidth() / 2.0f))), i2 + 1 + ((int) (((-getHeight()) + (getHeight() / 2.0f)) - (getTextHeight() / 2.0f))), getColorText(status));
    }

    public Color getColorText(Status status) {
        int i = AnonymousClass1.$SwitchMap$aoc$kingdoms$lukasz$menu_element$Status[status.ordinal()];
        if (i != 1) {
            return i != 2 ? colorDefault : colorHovered;
        }
        return colorActive;
    }

    public final int getHeight() {
        return this.iHeight;
    }

    public final boolean getMoveable() {
        return this.moveable;
    }

    public final boolean getResizable() {
        return this.resizable;
    }

    public String getText() {
        return this.sText;
    }

    public final int getTextHeight() {
        return this.iTextHeight;
    }

    public final int getTextWidth() {
        return this.iTextWidth;
    }

    public long getTime() {
        return 0L;
    }

    public void onHovered() {
    }

    public void setText(String str) {
        this.sText = str;
        setTextWidth(-1);
        if (str == null || getTextWidth() >= 0) {
            return;
        }
        GlyphLayout_Game glyphLayout_Game = new GlyphLayout_Game();
        glyphLayout_Game.setText(Renderer.fontMain.get(this.fontID), str);
        setTextWidth((int) (glyphLayout_Game.width * this.fontScale));
        setTextHeight((int) (glyphLayout_Game.height * this.fontScale));
    }

    public final void setTextHeight(int i) {
        this.iTextHeight = i;
    }

    public final void setTextWidth(int i) {
        this.iTextWidth = i;
    }
}
