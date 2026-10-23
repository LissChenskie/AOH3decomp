package aoc.kingdoms.lukasz.menu_element;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Toast implements Hover {
    public static final float TEXT_SCALE = 0.75f;
    public static final int TIME_INVIEW_LONG = 3500;
    public static final int TIME_INVIEW_SHORT = 1750;
    public static final int TIME_INVIEW_STANDARD = 2500;
    public static final int TIME_INVIEW_VERY_LONG = 6000;
    public static final int TIME_INVIEW_VERY_SHORT = 1000;
    public static final int TIME_INVIEW_VERY_VERY_LONG = 10000;
    private static final float TIME_START_OPACITY_PERCENTAGE = 0.4f;
    private boolean backAnimation;
    private float fAlpha;
    private int iElementsSize;
    public int iFontID;
    public int iHeight;
    public int iMaxWidth;
    public int iPosX;
    public int iPosY;
    private int iScrollPosX;
    private int iTimeInView;
    public int iWidth;
    private int iWidthOver;
    public boolean inView;
    private List<MenuElement_HoverElement> lElements;
    private long lTime;

    public Toast(String str) {
        this.iElementsSize = 0;
        this.inView = false;
        this.iTimeInView = TIME_INVIEW_STANDARD;
        this.lTime = 0L;
        this.fAlpha = 1.0f;
        this.iPosX = -1;
        this.iPosY = -1;
        this.iFontID = 0;
        this.iHeight = 0;
        this.iWidth = 0;
        this.iMaxWidth = 0;
        this.iWidthOver = 0;
        this.iScrollPosX = 0;
        this.backAnimation = true;
        init(initText(str), TIME_INVIEW_STANDARD, 0);
    }

    public Toast(String str, int i) {
        this.iElementsSize = 0;
        this.inView = false;
        this.iTimeInView = TIME_INVIEW_STANDARD;
        this.lTime = 0L;
        this.fAlpha = 1.0f;
        this.iPosX = -1;
        this.iPosY = -1;
        this.iFontID = 0;
        this.iHeight = 0;
        this.iWidth = 0;
        this.iMaxWidth = 0;
        this.iWidthOver = 0;
        this.iScrollPosX = 0;
        this.backAnimation = true;
        init(initText(str), TIME_INVIEW_STANDARD, i);
    }

    public Toast(String str, int i, int i2) {
        this.iElementsSize = 0;
        this.inView = false;
        this.iTimeInView = TIME_INVIEW_STANDARD;
        this.lTime = 0L;
        this.fAlpha = 1.0f;
        this.iPosX = -1;
        this.iPosY = -1;
        this.iFontID = 0;
        this.iHeight = 0;
        this.iWidth = 0;
        this.iMaxWidth = 0;
        this.iWidthOver = 0;
        this.iScrollPosX = 0;
        this.backAnimation = true;
        init(initText(str), i2, i);
    }

    public Toast(String str, int i, int i2, Color color) {
        this.iElementsSize = 0;
        this.inView = false;
        this.iTimeInView = TIME_INVIEW_STANDARD;
        this.lTime = 0L;
        this.fAlpha = 1.0f;
        this.iPosX = -1;
        this.iPosY = -1;
        this.iFontID = 0;
        this.iHeight = 0;
        this.iWidth = 0;
        this.iMaxWidth = 0;
        this.iWidthOver = 0;
        this.iScrollPosX = 0;
        this.backAnimation = true;
        init(initText(str, color), i2, i);
    }

    public Toast(String str, int i, int i2, Color color, int i3, int i4) {
        this.iElementsSize = 0;
        this.inView = false;
        this.iTimeInView = TIME_INVIEW_STANDARD;
        this.lTime = 0L;
        this.fAlpha = 1.0f;
        this.iFontID = 0;
        this.iHeight = 0;
        this.iWidth = 0;
        this.iMaxWidth = 0;
        this.iWidthOver = 0;
        this.iScrollPosX = 0;
        this.backAnimation = true;
        this.iPosX = i3;
        this.iPosY = i4;
        init(initText(str, color), i2, i);
    }

    public Toast(String str, int i, boolean z) {
        this.iElementsSize = 0;
        this.inView = false;
        this.iTimeInView = TIME_INVIEW_STANDARD;
        this.lTime = 0L;
        this.fAlpha = 1.0f;
        this.iPosX = -1;
        this.iPosY = -1;
        this.iFontID = 0;
        this.iHeight = 0;
        this.iWidth = 0;
        this.iMaxWidth = 0;
        this.iWidthOver = 0;
        this.iScrollPosX = 0;
        this.backAnimation = true;
        init(initText(str), TIME_INVIEW_STANDARD, i);
        this.inView = z;
    }

    public Toast(String str, Color color) {
        this.iElementsSize = 0;
        this.inView = false;
        this.iTimeInView = TIME_INVIEW_STANDARD;
        this.lTime = 0L;
        this.fAlpha = 1.0f;
        this.iPosX = -1;
        this.iPosY = -1;
        this.iFontID = 0;
        this.iHeight = 0;
        this.iWidth = 0;
        this.iMaxWidth = 0;
        this.iWidthOver = 0;
        this.iScrollPosX = 0;
        this.backAnimation = true;
        init(initText(str, color), TIME_INVIEW_STANDARD, this.iFontID);
    }

    public Toast(List<MenuElement_HoverElement> list) {
        this.iElementsSize = 0;
        this.inView = false;
        this.iTimeInView = TIME_INVIEW_STANDARD;
        this.lTime = 0L;
        this.fAlpha = 1.0f;
        this.iPosX = -1;
        this.iPosY = -1;
        this.iFontID = 0;
        this.iHeight = 0;
        this.iWidth = 0;
        this.iMaxWidth = 0;
        this.iWidthOver = 0;
        this.iScrollPosX = 0;
        this.backAnimation = true;
        init(list, TIME_INVIEW_STANDARD, 0);
    }

    public Toast(List<MenuElement_HoverElement> list, int i) {
        this.iElementsSize = 0;
        this.inView = false;
        this.iTimeInView = TIME_INVIEW_STANDARD;
        this.lTime = 0L;
        this.fAlpha = 1.0f;
        this.iPosX = -1;
        this.iPosY = -1;
        this.iFontID = 0;
        this.iHeight = 0;
        this.iWidth = 0;
        this.iMaxWidth = 0;
        this.iWidthOver = 0;
        this.iScrollPosX = 0;
        this.backAnimation = true;
        init(list, TIME_INVIEW_STANDARD, i);
    }

    public Toast(List<MenuElement_HoverElement> list, int i, int i2) {
        this.iElementsSize = 0;
        this.inView = false;
        this.iTimeInView = TIME_INVIEW_STANDARD;
        this.lTime = 0L;
        this.fAlpha = 1.0f;
        this.iPosX = -1;
        this.iPosY = -1;
        this.iFontID = 0;
        this.iHeight = 0;
        this.iWidth = 0;
        this.iMaxWidth = 0;
        this.iWidthOver = 0;
        this.iScrollPosX = 0;
        this.backAnimation = true;
        init(list, i2, i);
    }

    public Toast(List<MenuElement_HoverElement> list, int i, int i2, int i3, int i4) {
        this.iElementsSize = 0;
        this.inView = false;
        this.iTimeInView = TIME_INVIEW_STANDARD;
        this.lTime = 0L;
        this.fAlpha = 1.0f;
        this.iFontID = 0;
        this.iHeight = 0;
        this.iWidth = 0;
        this.iMaxWidth = 0;
        this.iWidthOver = 0;
        this.iScrollPosX = 0;
        this.backAnimation = true;
        this.iPosX = i3;
        this.iPosY = i4;
        init(list, i2, i);
    }

    private final void init(List<MenuElement_HoverElement> list, int i, int i2) {
        this.lElements = list;
        this.iElementsSize = list.size();
        this.iWidth = 0;
        this.iFontID = i2;
        for (int i3 = 0; i3 < this.iElementsSize; i3++) {
            if (this.lElements.get(i3).getWidth() > CFG.GAME_WIDTH - (CFG.PADDING * 2) && (this.lElements.get(i3).getWidth() - CFG.GAME_WIDTH) - (CFG.PADDING * 2) > this.iWidthOver) {
                this.iWidthOver = (this.lElements.get(i3).getWidth() - CFG.GAME_WIDTH) - (CFG.PADDING * 2);
            }
        }
        int i4 = this.iWidthOver;
        if (i4 > 0) {
            this.iScrollPosX = i4 + (CFG.PADDING * 10);
            this.lTime = CFG.currentTimeMillis;
        }
        for (int i5 = 0; i5 < this.iElementsSize; i5++) {
            if (this.lElements.get(i5).getWidth() > this.iWidth) {
                this.iWidth = this.lElements.get(i5).getWidth();
                this.iMaxWidth = this.lElements.get(i5).getWidth();
            }
        }
        this.iWidth += CFG.PADDING * 6;
        this.iHeight = (CFG.TEXT_HEIGHT * this.iElementsSize) + (CFG.PADDING * (this.iElementsSize - 1)) + (CFG.PADDING * 4);
        this.inView = true;
        this.fAlpha = 1.0f;
        this.lTime = CFG.currentTimeMillis;
        this.iTimeInView = i;
    }

    private final List<MenuElement_HoverElement> initText(String str) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(str));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        return arrayList;
    }

    private final List<MenuElement_HoverElement> initText(String str, Color color) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(str, color));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        return arrayList;
    }

    @Override // aoc.kingdoms.lukasz.menu.Hover
    public final void draw(SpriteBatch spriteBatch, int i, int i2) {
        draw_Hover(spriteBatch, i, i2);
    }

    @Override // aoc.kingdoms.lukasz.menu.Hover
    public final void drawAlwaysBelow(SpriteBatch spriteBatch, int i, int i2) {
        draw_Hover(spriteBatch, i, i2);
    }

    @Override // aoc.kingdoms.lukasz.menu.Hover
    public final void drawAlwaysOver(SpriteBatch spriteBatch, int i, int i2) {
        draw_Hover(spriteBatch, i, i2);
    }

    @Override // aoc.kingdoms.lukasz.menu.Hover
    public final void drawAlwaysOver_Mobile(SpriteBatch spriteBatch, int i, int i2) {
        draw_Hover(spriteBatch, i, i2);
    }

    @Override // aoc.kingdoms.lukasz.menu.Hover
    public void drawProvinceInfo(SpriteBatch spriteBatch, int i, int i2) {
    }

    @Override // aoc.kingdoms.lukasz.menu.Hover
    public final void draw_Hover(SpriteBatch spriteBatch, int i, int i2) {
        int i3;
        int scrollPosX = getScrollPosX();
        int i4 = this.iPosX;
        if (i4 != -1) {
            i3 = this.iPosY;
            if (this.iWidth + i4 > CFG.GAME_WIDTH) {
                this.iPosX = (CFG.GAME_WIDTH - this.iWidth) - (CFG.PADDING * 2);
            }
        } else {
            i4 = (CFG.GAME_WIDTH / 2) - (this.iWidth / 2);
            i3 = ((CFG.GAME_HEIGHT - (CFG.PADDING * 2)) - this.iHeight) - i2;
        }
        int i5 = i3;
        if (this.lTime + ((long) this.iTimeInView) < CFG.currentTimeMillis) {
            this.inView = false;
        } else if (this.lTime + ((long) ((int) (this.iTimeInView * TIME_START_OPACITY_PERCENTAGE))) < CFG.currentTimeMillis) {
            long j = CFG.currentTimeMillis - this.lTime;
            int i6 = this.iTimeInView;
            float colorStep = Renderer.getColorStep(255, 0, (int) (j - ((long) ((int) (i6 * TIME_START_OPACITY_PERCENTAGE)))), i6 - ((int) (i6 * TIME_START_OPACITY_PERCENTAGE)));
            this.fAlpha = colorStep;
            if (colorStep < 0.0f) {
                this.fAlpha = 0.0f;
            }
        }
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, this.fAlpha));
        int i7 = i4 + scrollPosX;
        Renderer.drawBox(spriteBatch, Images.buttonGame, i7, i5, this.iWidth, this.iHeight, this.fAlpha);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT.r, Colors.COLOR_GRADIENT.g, Colors.COLOR_GRADIENT.b, this.fAlpha * 0.75f));
        Images.gradientXY.draw(spriteBatch, i7, i5 + 2, this.iWidth, CFG.PADDING, false, true);
        Images.gradientXY.draw(spriteBatch, i7, ((this.iHeight + i5) - 2) - CFG.PADDING, this.iWidth, CFG.PADDING);
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, this.fAlpha));
        for (int i8 = 0; i8 < this.iElementsSize; i8++) {
            this.lElements.get(i8).draw(spriteBatch, i7 + (CFG.PADDING * 3), (CFG.PADDING * i8) + ((CFG.PADDING + i5) - (CFG.PADDING / 2)) + (CFG.TEXT_HEIGHT * i8), this.fAlpha, this.iMaxWidth);
        }
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu.Hover
    public final void draw_HoverWithoutAnimation(SpriteBatch spriteBatch, int i, int i2) {
        int scrollPosX = getScrollPosX();
        if (this.lTime + ((long) this.iTimeInView) < CFG.currentTimeMillis) {
            this.inView = false;
        } else if (this.lTime + ((long) ((int) (this.iTimeInView * TIME_START_OPACITY_PERCENTAGE))) < CFG.currentTimeMillis) {
            long j = CFG.currentTimeMillis - this.lTime;
            int i3 = this.iTimeInView;
            float colorStep = Renderer.getColorStep(255, 0, (int) (j - ((long) ((int) (i3 * TIME_START_OPACITY_PERCENTAGE)))), i3 - ((int) (i3 * TIME_START_OPACITY_PERCENTAGE)));
            this.fAlpha = colorStep;
            if (colorStep < 0.0f) {
                this.fAlpha = 0.0f;
            }
        }
        int i4 = i2 + this.iHeight > CFG.GAME_HEIGHT - (CFG.PADDING * 2) ? (CFG.GAME_HEIGHT - (CFG.PADDING * 2)) - this.iHeight : i2;
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, this.fAlpha));
        int i5 = i + scrollPosX;
        Renderer.drawBox(spriteBatch, Images.buttonGame, i5, i4, this.iWidth, this.iHeight, this.fAlpha);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT.r, Colors.COLOR_GRADIENT.g, Colors.COLOR_GRADIENT.b, this.fAlpha * 0.75f));
        Images.gradientXY.draw(spriteBatch, i5, i4 + 2, this.iWidth, CFG.PADDING, false, true);
        Images.gradientXY.draw(spriteBatch, i5, ((this.iHeight + i4) - 2) - CFG.PADDING, this.iWidth, CFG.PADDING);
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 1.0f));
        Renderer.setFontScale(0.9f);
        for (int i6 = 0; i6 < this.iElementsSize; i6++) {
            this.lElements.get(i6).draw(spriteBatch, i5 + (CFG.PADDING * 3), (CFG.PADDING * i6) + CFG.PADDING + i4 + (CFG.TEXT_HEIGHT * i6), this.fAlpha, this.iMaxWidth);
        }
        Renderer.resetFontScale();
        spriteBatch.setColor(Color.WHITE);
    }

    protected final int getScrollPosX() {
        if (this.iWidthOver <= 0) {
            return 0;
        }
        if (this.backAnimation) {
            if (this.lTime + 1500 < CFG.currentTimeMillis) {
                int i = this.iScrollPosX;
                this.iScrollPosX = i - 1;
                if (i < (-CFG.PADDING)) {
                    this.backAnimation = !this.backAnimation;
                    this.lTime = CFG.currentTimeMillis;
                }
            }
        } else if (this.lTime + 1000 < CFG.currentTimeMillis) {
            int i2 = this.iScrollPosX;
            this.iScrollPosX = i2 + 1;
            if (i2 > this.iWidthOver + (CFG.PADDING * 10)) {
                this.backAnimation = !this.backAnimation;
                this.lTime = CFG.currentTimeMillis;
            }
        }
        return this.iScrollPosX;
    }

    public final void setInView(String str) {
        setInView(str, 0);
    }

    public final void setInView(String str, int i) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(str));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        init(arrayList, TIME_INVIEW_STANDARD, i);
        setInView(true);
    }

    public final void setInView(boolean z) {
        this.inView = z;
    }
}
