package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonStatsRectIMG_Active_Click extends ButtonStatsRectIMG_Active {
    public int lastValue;

    public ButtonStatsRectIMG_Active_Click(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        super(str, i, i2, i3, i4, i5, i6 + CFG.PADDING, i7, CFG.FONT_REGULAR_SMALL);
        this.lastValue = -997654;
    }

    public ButtonStatsRectIMG_Active_Click(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, float f) {
        super(str, i, i2, i3, i4, i5, i6 + CFG.PADDING, i7, CFG.FONT_REGULAR_SMALL);
        this.lastValue = -997654;
        this.iconWidth = ImageManager.getImage(i).getWidth();
        this.iconHeight = ImageManager.getImage(i).getHeight();
    }

    public ButtonStatsRectIMG_Active_Click(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        super(str, i, i2, i3, i4, i5, i6 + CFG.PADDING, i7, i8);
        this.lastValue = -997654;
    }

    public ButtonStatsRectIMG_Active_Click(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j) {
        super(str, i, i2, i3, i4, i5, i6 + CFG.PADDING, i7, CFG.FONT_REGULAR_SMALL);
        this.lastValue = -997654;
        this.iconWidth = ImageManager.getImage(i).getWidth();
        this.iconHeight = ImageManager.getImage(i).getHeight();
    }

    public ButtonStatsRectIMG_Active_Click(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
        super(str, i, i2, i3, i4, i5, i6 + CFG.PADDING, i7, CFG.FONT_REGULAR_SMALL);
        this.lastValue = -997654;
        int i8 = 0;
        while (this.iTextWidth >= getWidth() - ((CFG.PADDING * 2) + i6) && getText().length() > 5 && (i8 = i8 + 1) < 100) {
            setText(getText().substring(0, Math.max(1, getText().length() - 3)) + "..");
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active, aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, getBoxAlpha(getClickable(), getIsHovered(), z)));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, (getIsHovered() || z) ? 0.65f : 0.35f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, this.maxIconWidth + (CFG.PADDING * 2), getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.35f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, this.maxIconWidth + (CFG.PADDING * 2), getHeight());
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.3f));
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, this.maxIconWidth + (CFG.PADDING * 2), getHeight());
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.55f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 1) + i2, this.maxIconWidth + (CFG.PADDING * 2), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, this.maxIconWidth + (CFG.PADDING * 2), 1);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.9f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 2) + i2, this.maxIconWidth + (CFG.PADDING * 2), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + 1 + i2, this.maxIconWidth + (CFG.PADDING * 2), 1);
        spriteBatch.setColor(Color.WHITE);
        if (getClickable() && getIsHovered() && animationState >= 0) {
            if (animationState == 0) {
                float fMin = Math.min(((CFG.currentTimeMillis - lTimeAnimation) * 1.0f) / 1000.0f, 1.0f);
                spriteBatch.setColor(ButtonGame.getColorLine());
                Images.line_32_off1.draw(spriteBatch, getPosX() + CFG.PADDING + i, getPosY() + 1 + i2, (int) ((getWidth() - (CFG.PADDING * 2)) * fMin), 1);
                Images.line_32_off1.draw(spriteBatch, getPosX() + CFG.PADDING + i, ((getPosY() + getHeight()) - 2) + i2, (int) ((getWidth() - (CFG.PADDING * 2)) * fMin), 1);
                if (lTimeAnimation < CFG.currentTimeMillis - 1000) {
                    animationState++;
                    lTimeAnimation = CFG.currentTimeMillis;
                }
            } else {
                float fMin2 = Math.min(((CFG.currentTimeMillis - lTimeAnimation) * 1.0f) / 1000.0f, 1.0f);
                spriteBatch.setColor(ButtonGame.getColorLine());
                Images.line_32_off1.draw(spriteBatch, getPosX() + CFG.PADDING + ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)) + i, getPosY() + 1 + i2, (getWidth() - (CFG.PADDING * 2)) - ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)), 1);
                Images.line_32_off1.draw(spriteBatch, getPosX() + CFG.PADDING + ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)) + i, ((getPosY() + getHeight()) - 2) + i2, (getWidth() - (CFG.PADDING * 2)) - ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)), 1);
                if (lTimeAnimation < CFG.currentTimeMillis - 1000) {
                    animationState = 0;
                    lTimeAnimation = CFG.currentTimeMillis;
                }
            }
            spriteBatch.setColor(Color.WHITE);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active, aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        ImageManager.getImage(getImageID()).draw(spriteBatch, ((getPosX() + ((this.maxIconWidth + (CFG.PADDING * 2)) / 2)) - (this.iconWidth / 2)) + i, getPosY() + ((getHeight() - this.iconHeight) / 2) + i2, this.iconWidth, this.iconHeight);
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, getTextToDraw(), (((getPosX() + (this.maxIconWidth + (CFG.PADDING * 2))) + ((getWidth() - ((CFG.PADDING * 2) + this.maxIconWidth)) / 2)) - (getTextWidth() / 2)) + i, ((getPosY() + (getHeight() / 2)) - (this.iTextHeight / 2)) + i2, getColor(z));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active, aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        if (z) {
            return Colors.BUTTON_TEXT_ACTIVE;
        }
        if (getIsHovered()) {
            return Colors.BUTTON_TEXT_HOVERED;
        }
        return getClickable() ? Colors.BUTTON_TEXT : Colors.BUTTON_TEXT_DISABLED;
    }

    public int getImageID() {
        return this.imageID;
    }

    public void setImageID(int i) {
        this.imageID = i;
        float imageScale = getImageScale(i) * 1.2f;
        this.iconWidth = (int) (ImageManager.getImage(i).getWidth() * imageScale);
        this.iconHeight = (int) (ImageManager.getImage(i).getHeight() * imageScale);
    }
}
