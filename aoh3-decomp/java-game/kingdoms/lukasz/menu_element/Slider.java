package aoc.kingdoms.lukasz.menu_element;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Slider extends MenuElement {
    private int iCurrent;
    public int iMax;
    public int iMin;
    public int iCurrentPosX = -1;
    public String sText = null;
    private int iTextWidth = -1;
    private int iTextHeight = -1;
    private long lTime = 0;
    public int iDifference_CurrentPosX = 0;
    private int iDifference_PosX = 0;

    public Slider() {
    }

    public Slider(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        initSlider("", i, i2, i3, i4, i5, i6, i7);
    }

    public Slider(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        initSlider(str, i, i2, i3, i4, i5, i6, i7);
    }

    private final void updateCurrentPosX() {
        int i = this.iCurrent;
        int i2 = this.iMin;
        this.iCurrentPosX = (int) (((((i - i2) * 100.0f) / (this.iMax - i2)) * getWidth()) / 100.0f);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        drawSliderBG(spriteBatch, i, i2, z, z2);
        drawSliderText(spriteBatch, i, i2, z, z2);
        drawSliderBorder(spriteBatch, i, i2, z, z2);
        spriteBatch.setColor(Color.WHITE);
    }

    public void drawSliderBG(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        drawSliderBG_UpdateAnimation();
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(new Color(ProvinceDraw.progressBar.r, ProvinceDraw.progressBar.g, ProvinceDraw.progressBar.b, 0.5f));
        Renderer.drawBoxProgress(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, this.iCurrentPosX + this.iDifference_CurrentPosX, getHeight(), getWidth());
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, 0.2f));
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        spriteBatch.setColor(Color.WHITE);
    }

    public final void drawSliderBG_UpdateAnimation() {
        if (this.iDifference_CurrentPosX != 0) {
            if (this.lTime == 0) {
                this.lTime = CFG.currentTimeMillis;
            }
            int i = this.iDifference_PosX;
            this.iDifference_CurrentPosX = i - ((int) (i * ((CFG.currentTimeMillis - this.lTime) / 375.0f)));
            if (CFG.currentTimeMillis >= this.lTime + 375) {
                this.iDifference_CurrentPosX = 0;
            }
        }
    }

    public void drawSliderBorder(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
    }

    public void drawSliderText(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, getDrawText(), ((getPosX() + (getWidth() / 2)) - (getTextWidth() / 2)) + i, ((getPosY() + (getHeight() / 2)) - (getTextHeight() / 2)) + i2, new Color(0.945f, 0.945f, 0.945f, 1.0f));
    }

    public Color getColorLEFT() {
        return Colors.COLOR_SLIDER_LEFT_BG;
    }

    public Color getColorRIGHT() {
        return Colors.COLOR_SLIDER_RIGHT_BG;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public final int getCurrent() {
        return this.iCurrent;
    }

    public String getDrawText() {
        return this.sText + this.iCurrent;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public boolean getScrollable() {
        return true;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public final String getText() {
        return this.sText;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public final int getTextHeight() {
        return this.iTextHeight;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getTextPos() {
        return this.iMax;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getTextWidth() {
        return this.iTextWidth;
    }

    public void initSlider(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        setPosX(i);
        setPosY(i2);
        setWidth(i3);
        setHeight(i4);
        this.fontID = CFG.FONT_REGULAR_SMALL;
        this.sText = str;
        this.iMin = i5;
        this.iMax = i6;
        this.iCurrent = i7;
        updateSlider(-1);
        this.typeOfElement = MenuElement_Type.SLIDER;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void scrollByWheel(int i) {
        setCurrent(getCurrent() + i);
        actionElement();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setCurrent(int i) {
        int i2 = this.iCurrentPosX;
        int i3 = this.iMax;
        if (i > i3) {
            this.iCurrent = i3;
        } else {
            int i4 = this.iMin;
            if (i < i4) {
                this.iCurrent = i4;
            } else {
                this.iCurrent = i;
            }
        }
        updateCurrentPosX();
        updateTextWidth();
        int i5 = this.iCurrentPosX;
        if (i2 != i5) {
            this.lTime = 0L;
            int i6 = i2 - i5;
            this.iDifference_CurrentPosX = i6;
            this.iDifference_PosX = i6;
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setMax(int i) {
        this.iMax = i;
        if (this.iCurrent > i) {
            this.iCurrent = i;
            updateTextWidth();
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setMin(int i) {
        this.iMin = i;
        if (this.iCurrent < i) {
            this.iCurrent = i;
            updateTextWidth();
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setText(String str) {
        this.sText = str;
        updateTextWidth();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void updateSlider(int i) {
        if (i >= 0) {
            float posX = ((i - getPosX()) * 100.0f) / getWidth();
            int i2 = this.iMax;
            int i3 = this.iMin;
            this.iCurrent = (int) (((posX * (i2 - i3)) / 100.0f) + i3);
        }
        int i4 = this.iCurrent;
        int i5 = this.iMin;
        if (i4 < i5) {
            this.iCurrent = i5;
        } else {
            int i6 = this.iMax;
            if (i4 > i6) {
                this.iCurrent = i6;
            }
        }
        updateCurrentPosX();
        updateTextWidth();
        this.iDifference_CurrentPosX = 0;
        this.iDifference_PosX = 0;
    }

    public final void updateTextWidth() {
        Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), getDrawText());
        this.iTextWidth = (int) Renderer.glyphLayout.width;
        this.iTextHeight = (int) Renderer.glyphLayout.height;
    }
}
