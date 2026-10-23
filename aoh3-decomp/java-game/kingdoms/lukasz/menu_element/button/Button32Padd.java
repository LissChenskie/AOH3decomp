package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menusInGame.InGame_MapModes;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Button32Padd extends Button {
    protected static final int ANIMATION_T = 1000;
    protected static int animationState;
    protected static long lTimeAnimation;
    public int iconImageID;
    public int imgHeight;
    public int imgWidth;
    public int imgX;
    public int imgY;
    private static final Color colorLine = new Color(0.5176471f, 0.43529412f, 0.25882354f, 0.55f);
    public static final Color buttonColor = new Color(0.627451f, 0.50980395f, 0.29411766f, 1.0f);
    public static final Color buttonColor2 = new Color(0.627451f, 0.50980395f, 0.29411766f, 0.75f);

    public Button32Padd(int i) {
        this.iconImageID = i;
        init(this.sText, this.fontID, 0, 0, 0, (CFG.PADDING * 2) + ImageManager.getImage(i).getWidth(), ImageManager.getImage(i).getHeight() + (CFG.PADDING * 2), true, true, false, false);
        updateImgWH();
    }

    public Button32Padd(int i, int i2, int i3) {
        this.iconImageID = i;
        init(this.sText, this.fontID, 0, i2, i3, ImageManager.getImage(i).getWidth() + (CFG.PADDING * 2), ImageManager.getImage(i).getHeight() + (CFG.PADDING * 2), true, true, false, false);
        updateImgWH();
    }

    public Button32Padd(int i, int i2, int i3, int i4) {
        this.iconImageID = i;
        init(this.sText, this.fontID, 0, i2, i3, ImageManager.getImage(i).getWidth() + (CFG.PADDING * 2), i4, true, true, false, false);
        updateImgWH();
    }

    public static int getButtonHeight() {
        return ImageManager.getImage(Images.mapModesCivs).getHeight() + (CFG.PADDING * 2);
    }

    protected static final Color getColorLine() {
        return colorLine;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        int i3;
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, (getIsHovered() || z) ? 0.6f : 0.5f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        if ((z || getIsHovered()) && getClickable()) {
            spriteBatch.setColor(COLOR_BUTTON_MENU_HOVER_BG);
            if (getIsHovered() || z) {
                spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 1.0f));
                Renderer.drawBox(spriteBatch, Images.statsRectBGBorder, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
                spriteBatch.setColor(Color.WHITE);
            }
        }
        if (getClickable() && getIsHovered() && (i3 = animationState) >= 0) {
            if (i3 == 0) {
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
        spriteBatch.setColor(getColor(z));
        ImageManager.getImage(this.iconImageID).draw(spriteBatch, getPosX() + this.imgX + i, getPosY() + this.imgY + i2, this.imgWidth, this.imgHeight, false, getFlipY());
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        if (z) {
            return Colors.COLOR_TOP_STATS_ACTIVE;
        }
        if (getIsHovered()) {
            return Colors.COLOR_TOP_STATS_HOVER;
        }
        return isActiveView() ? Colors.COLOR_TOP_STATS : buttonColor2;
    }

    public boolean getFlipY() {
        return false;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getHeight() {
        return ImageManager.getImage(this.iconImageID).getHeight() + (CFG.PADDING * 2);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getSFX() {
        return isActiveView() ? SoundsManager.MAP_MODE1 : SoundsManager.MAP_MODE0;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getWidth() {
        return InGame_MapModes.maxWidth + (CFG.PADDING * 2);
    }

    public float imgScale() {
        return 0.85f;
    }

    public boolean isActiveView() {
        return false;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setIsHovered(boolean z) {
        super.setIsHovered(z);
        lTimeAnimation = CFG.currentTimeMillis;
        animationState = 0;
    }

    public void updateImgWH() {
        this.imgWidth = (int) (ImageManager.getImage(this.iconImageID).getWidth() * imgScale());
        this.imgHeight = (int) (ImageManager.getImage(this.iconImageID).getHeight() * imgScale());
        this.imgX = (getWidth() / 2) - (this.imgWidth / 2);
        this.imgY = ((ImageManager.getImage(this.iconImageID).getHeight() - this.imgHeight) / 2) + CFG.PADDING;
    }
}
