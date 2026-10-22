package aoc.kingdoms.lukasz.menu_element.menuElementHover;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Hover;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MenuElement_Hover implements Hover {
    public static float ANIMATION_ALPHA = 0.0f;
    public static int ANIMATION_INTERVAL = 2450;
    public static float ANIMATION_PADDING = 0.0f;
    public static long ANIMATION_TIME = 0;
    public static int DRAW_EXTRA_TIME = 2500;
    public static final float TEXT_SCALE = 0.9f;
    public static Color colorGradient = new Color(0.078431375f, 0.078431375f, 0.1254902f, 0.45f);
    public static Color colorGradientLoading = new Color(0.13725491f, 0.19607843f, 0.25490198f, 1.0f);
    public static long lTimeDrawExtra;
    public long INIT_TIME;
    private List<MenuElement_HoverElement> lElements;
    private int iElementsSize = 0;
    public boolean haveDrawExtraElement = false;
    public int iFontID = 0;
    public int iHeight = 0;
    public int iHeight2 = 0;
    public int iHeightDrawExtra = 0;
    private int iWidth = 0;
    private int iMaxWidth = 0;
    private int iWidthOver = 0;
    private int iScrollPosX = 0;
    private boolean backAnimation = true;
    private long lTime = 0;

    public MenuElement_Hover(List<MenuElement_HoverElement> list) {
        init(list, 0, false);
    }

    public MenuElement_Hover(List<MenuElement_HoverElement> list, int i) {
        init(list, i, false);
    }

    public MenuElement_Hover(List<MenuElement_HoverElement> list, boolean z) {
        init(list, 0, z);
    }

    public static final int getDrawExtraXPos() {
        return CFG.PADDING * 3;
    }

    private final void init(List<MenuElement_HoverElement> list, int i, boolean z) {
        this.lElements = list;
        this.iElementsSize = list.size();
        this.iWidth = 0;
        this.iFontID = i;
        for (int i2 = 0; i2 < this.iElementsSize; i2++) {
            if (this.lElements.get(i2).getWidth() > CFG.GAME_WIDTH - (CFG.PADDING * 2) && (this.lElements.get(i2).getWidth() - CFG.GAME_WIDTH) - (CFG.PADDING * 2) > this.iWidthOver) {
                this.iWidthOver = (this.lElements.get(i2).getWidth() - CFG.GAME_WIDTH) - (CFG.PADDING * 2);
            }
            if (!this.lElements.get(i2).drawElement) {
                this.haveDrawExtraElement = true;
            }
        }
        int i3 = this.iWidthOver;
        if (i3 > 0) {
            this.iScrollPosX = i3 + (CFG.PADDING * 10);
            this.lTime = CFG.currentTimeMillis;
        }
        for (int i4 = 0; i4 < this.iElementsSize; i4++) {
            if (this.lElements.get(i4).getWidth() > this.iWidth) {
                this.iWidth = this.lElements.get(i4).getWidth();
                this.iMaxWidth = this.lElements.get(i4).getWidth();
            }
        }
        this.iWidth += getDrawExtraXPos() * 2;
        this.iHeight2 = 0;
        this.iHeightDrawExtra = (CFG.PADDING * (this.iElementsSize - 1)) + (CFG.PADDING * 6);
        int i5 = 0;
        for (int i6 = 0; i6 < this.iElementsSize; i6++) {
            this.iHeightDrawExtra += this.lElements.get(i6).getHeight();
            if (this.lElements.get(i6).drawElement) {
                this.iHeight2 += this.lElements.get(i6).getHeight();
                i5++;
            }
        }
        if (z) {
            this.iHeight2 -= CFG.PADDING * 2;
            this.iHeightDrawExtra -= CFG.PADDING * 2;
        }
        int i7 = this.iHeight2 + (CFG.PADDING * i5) + (CFG.PADDING * 5);
        this.iHeight2 = i7;
        this.iHeight = i7;
        lTimeDrawExtra = CFG.currentTimeMillis;
        this.INIT_TIME = CFG.currentTimeMillis;
    }

    public static final void resetAnimation() {
        ANIMATION_TIME = CFG.currentTimeMillis;
        ANIMATION_ALPHA = 0.0225f;
        ANIMATION_PADDING = CFG.PADDING;
    }

    @Override // aoc.kingdoms.lukasz.menu.Hover
    public void draw(SpriteBatch spriteBatch, int i, int i2) {
        if (initHide() && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DEFAULT) {
            return;
        }
        updateHeight();
        int iMax = (int) (Math.max(getMinPosX(), i) + ANIMATION_PADDING);
        if (this.iWidth + iMax > CFG.GAME_WIDTH - CFG.PADDING) {
            iMax = (CFG.GAME_WIDTH - this.iWidth) - CFG.PADDING;
        }
        if (i2 < 0) {
            i2 = CFG.PADDING;
        } else if (this.iHeight + i2 > CFG.GAME_HEIGHT) {
            i2 = (CFG.GAME_HEIGHT - this.iHeight) - CFG.PADDING;
        }
        draw_Hover(spriteBatch, iMax, i2);
    }

    @Override // aoc.kingdoms.lukasz.menu.Hover
    public final void drawAlwaysBelow(SpriteBatch spriteBatch, int i, int i2) {
        updateHeight();
        int i3 = ((int) (i + ANIMATION_PADDING)) + CFG.PADDING;
        int i4 = i2 + CFG.PADDING;
        if (this.iWidth + i3 > CFG.GAME_WIDTH - CFG.PADDING) {
            i3 = (CFG.GAME_WIDTH - this.iWidth) - CFG.PADDING;
        }
        if (i4 < 0) {
            i4 = CFG.PADDING;
        } else if (this.iHeight + i4 > CFG.GAME_HEIGHT) {
            i4 = (CFG.GAME_HEIGHT - this.iHeight) - CFG.PADDING;
        }
        draw_Hover(spriteBatch, i3, i4);
    }

    @Override // aoc.kingdoms.lukasz.menu.Hover
    public final void drawAlwaysOver(SpriteBatch spriteBatch, int i, int i2) {
        if (initHide()) {
            return;
        }
        updateHeight();
        int i3 = ((int) (i + ANIMATION_PADDING)) + CFG.PADDING;
        int i4 = (i2 - this.iHeight) - CFG.PADDING;
        if (this.iWidth + i3 > CFG.GAME_WIDTH - CFG.PADDING) {
            i3 = (CFG.GAME_WIDTH - this.iWidth) - CFG.PADDING;
        }
        if (i4 < 0) {
            i4 = CFG.PADDING;
        } else if (this.iHeight + i4 > CFG.GAME_HEIGHT) {
            i4 = (CFG.GAME_HEIGHT - this.iHeight) - CFG.PADDING;
        }
        draw_Hover(spriteBatch, i3, i4);
    }

    @Override // aoc.kingdoms.lukasz.menu.Hover
    public final void drawAlwaysOver_Mobile(SpriteBatch spriteBatch, int i, int i2) {
        updateHeight();
        int i3 = ((int) (i + ANIMATION_PADDING)) - (this.iWidth / 4);
        int i4 = (i2 - this.iHeight) - (CFG.PADDING * 4);
        if (i3 < CFG.PADDING) {
            i3 = CFG.PADDING;
        }
        if (this.iWidth + i3 > CFG.GAME_WIDTH - CFG.PADDING) {
            i3 = (CFG.GAME_WIDTH - this.iWidth) - CFG.PADDING;
        }
        if (i4 < 0) {
            i4 = CFG.PADDING;
        } else if (this.iHeight + i4 > CFG.GAME_HEIGHT) {
            i4 = (CFG.GAME_HEIGHT - this.iHeight) - CFG.PADDING;
        }
        draw_Hover(spriteBatch, i3, i4);
    }

    @Override // aoc.kingdoms.lukasz.menu.Hover
    public final void drawProvinceInfo(SpriteBatch spriteBatch, int i, int i2) {
        if (initHide()) {
            return;
        }
        draw_Hover(spriteBatch, (int) (i + ANIMATION_PADDING), i2);
    }

    @Override // aoc.kingdoms.lukasz.menu.Hover
    public final void draw_Hover(SpriteBatch spriteBatch, int i, int i2) {
        float f;
        int scrollPosX = getScrollPosX();
        boolean z = CFG.currentTimeMillis - lTimeDrawExtra >= ((long) DRAW_EXTRA_TIME);
        if (z) {
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, ANIMATION_ALPHA * 0.975f));
            int i3 = i + scrollPosX;
            Renderer.drawBoxHover(spriteBatch, i3, i2, this.iWidth, this.iHeightDrawExtra, ANIMATION_ALPHA);
            spriteBatch.setColor(new Color(colorGradient.r, colorGradient.g, colorGradient.b, colorGradient.a * ANIMATION_ALPHA));
            Image image = Images.gradientXY;
            int i4 = this.iHeightDrawExtra;
            image.draw(spriteBatch, i3, i2 + (i4 / 2), this.iWidth, (i4 - (i4 / 2)) - 2, false, false);
            if (this.haveDrawExtraElement) {
                spriteBatch.setColor(new Color(colorGradientLoading.r, colorGradientLoading.g, colorGradientLoading.b, colorGradientLoading.a * ANIMATION_ALPHA));
                ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i3, (i2 + this.iHeightDrawExtra) - CFG.PADDING, (int) (this.iWidth * Math.min((CFG.currentTimeMillis - lTimeDrawExtra) / DRAW_EXTRA_TIME, 1.0f)), CFG.PADDING, false, true);
                Images.gradientXY.draw(spriteBatch, i3, (i2 + this.iHeightDrawExtra) - (CFG.PADDING * 2), (int) (this.iWidth * Math.min((CFG.currentTimeMillis - lTimeDrawExtra) / DRAW_EXTRA_TIME, 1.0f)), CFG.PADDING * 2, false, false);
                spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, ANIMATION_ALPHA * 0.1f));
                Images.gradientFull.draw(spriteBatch, i3, (i2 + this.iHeightDrawExtra) - 1, (int) (this.iWidth * Math.min((CFG.currentTimeMillis - lTimeDrawExtra) / DRAW_EXTRA_TIME, 1.0f)), 1, false, false);
            }
            spriteBatch.setColor(Color.WHITE);
            f = 1.0f;
        } else {
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, ANIMATION_ALPHA * 0.975f));
            int i5 = i + scrollPosX;
            Renderer.drawBoxHover(spriteBatch, i5, i2, this.iWidth, this.iHeight, ANIMATION_ALPHA);
            spriteBatch.setColor(new Color(colorGradient.r, colorGradient.g, colorGradient.b, colorGradient.a * ANIMATION_ALPHA));
            Image image2 = Images.gradientXY;
            int i6 = this.iHeight;
            f = 1.0f;
            image2.draw(spriteBatch, i5, i2 + (i6 / 2), this.iWidth, (i6 - (i6 / 2)) - 2, false, false);
            if (this.haveDrawExtraElement) {
                spriteBatch.setColor(new Color(colorGradientLoading.r, colorGradientLoading.g, colorGradientLoading.b, colorGradientLoading.a * ANIMATION_ALPHA));
                ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i5, (i2 + this.iHeight) - CFG.PADDING, (int) (this.iWidth * Math.min((CFG.currentTimeMillis - lTimeDrawExtra) / DRAW_EXTRA_TIME, 1.0f)), CFG.PADDING, false, true);
                Images.gradientXY.draw(spriteBatch, i5, (i2 + this.iHeight) - (CFG.PADDING * 2), (int) (this.iWidth * Math.min((CFG.currentTimeMillis - lTimeDrawExtra) / DRAW_EXTRA_TIME, 1.0f)), CFG.PADDING * 2, false, false);
                spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, ANIMATION_ALPHA * 0.1f));
                Images.gradientFull.draw(spriteBatch, i5, (i2 + this.iHeight) - 1, (int) (this.iWidth * Math.min((CFG.currentTimeMillis - lTimeDrawExtra) / DRAW_EXTRA_TIME, 1.0f)), 1, false, false);
            }
            spriteBatch.setColor(Color.WHITE);
        }
        spriteBatch.setColor(new Color(f, f, f, ANIMATION_ALPHA));
        draw_HoverWithoutAnimation(spriteBatch, i, i2, scrollPosX, ANIMATION_ALPHA, z);
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu.Hover
    public final void draw_HoverWithoutAnimation(SpriteBatch spriteBatch, int i, int i2) {
        int i3;
        float f;
        int scrollPosX = getScrollPosX();
        boolean z = CFG.currentTimeMillis - lTimeDrawExtra >= ((long) DRAW_EXTRA_TIME);
        if (z) {
            i3 = i2 + this.iHeightDrawExtra > CFG.GAME_HEIGHT - (CFG.PADDING * 2) ? (CFG.GAME_HEIGHT - (CFG.PADDING * 2)) - this.iHeightDrawExtra : i2;
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.975f));
            int i4 = i + scrollPosX;
            Renderer.drawBoxHover(spriteBatch, i4, i3, this.iWidth, this.iHeightDrawExtra, 1.0f);
            spriteBatch.setColor(colorGradient);
            Image image = Images.gradientXY;
            int i5 = this.iHeightDrawExtra;
            image.draw(spriteBatch, i4, i3 + (i5 / 2), this.iWidth, (i5 - (i5 / 2)) - 2, false, false);
            if (this.haveDrawExtraElement) {
                spriteBatch.setColor(new Color(colorGradientLoading.r, colorGradientLoading.g, colorGradientLoading.b, colorGradientLoading.a));
                ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i4, (i3 + this.iHeightDrawExtra) - CFG.PADDING, (int) (this.iWidth * Math.min((CFG.currentTimeMillis - lTimeDrawExtra) / DRAW_EXTRA_TIME, 1.0f)), CFG.PADDING, false, true);
                Images.gradientXY.draw(spriteBatch, i4, (i3 + this.iHeightDrawExtra) - (CFG.PADDING * 2), (int) (this.iWidth * Math.min((CFG.currentTimeMillis - lTimeDrawExtra) / DRAW_EXTRA_TIME, 1.0f)), CFG.PADDING * 2, false, false);
                spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.1f));
                Images.gradientFull.draw(spriteBatch, i4, (i3 + this.iHeightDrawExtra) - 1, (int) (this.iWidth * Math.min((CFG.currentTimeMillis - lTimeDrawExtra) / DRAW_EXTRA_TIME, 1.0f)), 1, false, false);
            }
            spriteBatch.setColor(Color.WHITE);
            f = 1.0f;
        } else {
            i3 = i2 + this.iHeight > CFG.GAME_HEIGHT - (CFG.PADDING * 2) ? (CFG.GAME_HEIGHT - (CFG.PADDING * 2)) - this.iHeight : i2;
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.975f));
            int i6 = i + scrollPosX;
            Renderer.drawBoxHover(spriteBatch, i6, i3, this.iWidth, this.iHeight, 1.0f);
            spriteBatch.setColor(colorGradient);
            Image image2 = Images.gradientXY;
            int i7 = this.iHeight;
            f = 1.0f;
            image2.draw(spriteBatch, i6, i3 + (i7 / 2), this.iWidth, (i7 - (i7 / 2)) - 2, false, false);
            if (this.haveDrawExtraElement) {
                spriteBatch.setColor(new Color(colorGradientLoading.r, colorGradientLoading.g, colorGradientLoading.b, colorGradientLoading.a));
                ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i6, (i3 + this.iHeight) - CFG.PADDING, (int) (this.iWidth * Math.min((CFG.currentTimeMillis - lTimeDrawExtra) / DRAW_EXTRA_TIME, 1.0f)), CFG.PADDING, false, true);
                Images.gradientXY.draw(spriteBatch, i6, (i3 + this.iHeight) - (CFG.PADDING * 2), (int) (this.iWidth * Math.min((CFG.currentTimeMillis - lTimeDrawExtra) / DRAW_EXTRA_TIME, 1.0f)), CFG.PADDING * 2, false, false);
                spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.1f));
                Images.gradientFull.draw(spriteBatch, i6, (i3 + this.iHeight) - 1, (int) (this.iWidth * Math.min((CFG.currentTimeMillis - lTimeDrawExtra) / DRAW_EXTRA_TIME, 1.0f)), 1, false, false);
            }
            spriteBatch.setColor(Color.WHITE);
        }
        spriteBatch.setColor(new Color(f, f, f, f));
        draw_HoverWithoutAnimation(spriteBatch, i, i3, scrollPosX, 1.0f, z);
        spriteBatch.setColor(Color.WHITE);
    }

    public final void draw_HoverWithoutAnimation(SpriteBatch spriteBatch, int i, int i2, int i3, float f, boolean z) {
        int height = 0;
        for (int i4 = 0; i4 < this.iElementsSize; i4++) {
            if (z || this.lElements.get(i4).drawElement) {
                this.lElements.get(i4).draw(spriteBatch, i + i3 + getDrawExtraXPos(), (CFG.PADDING * 2) + i2 + height, f, this.iMaxWidth);
                height += this.lElements.get(i4).getHeight() + CFG.PADDING;
            }
        }
    }

    public int getMinPosX() {
        return 0;
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

    public boolean initHide() {
        return this.INIT_TIME + ((long) GameValues.notifications.HOVER_HIDE_TIME) > CFG.currentTimeMillis;
    }

    public final void updateHeight() {
        this.iHeight = CFG.currentTimeMillis - lTimeDrawExtra >= ((long) DRAW_EXTRA_TIME) ? this.iHeightDrawExtra : this.iHeight2;
    }
}
