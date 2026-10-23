package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.button.Button;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class TextIcon_Diplomacy extends Button {
    public int imageID;
    public long lTimeAnimation;
    public int maxWidth;
    public int animationState = 0;
    public final int ANIMATION_T = ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED;

    public TextIcon_Diplomacy(int i, int i2, int i3, int i4, int i5, int i6) {
        this.lTimeAnimation = 0L;
        init(null, CFG.FONT_REGULAR_SMALL, 0, i2, i3, i4, i5, true, true, false, false);
        this.imageID = i;
        this.maxWidth = i6;
        this.lTimeAnimation = CFG.currentTimeMillis;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public boolean canBeHovered() {
        return false;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        int posX = getPosX();
        int width = getWidth();
        if (DiplomacyManager.inAnimation) {
            width = (int) (getWidth() * DiplomacyManager.fAnimationPerc);
            posX = (posX + (getWidth() / 2)) - (width / 2);
        }
        int i3 = width;
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, 0.5f));
        int i4 = posX + i;
        Renderer.drawBox(spriteBatch, Images.statsRectBG, i4, getPosY() + i2, i3, getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, (getIsHovered() || z) ? 0.65f : 0.35f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, i4, getPosY() + i2, i3, getHeight(), 1.0f);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.3f));
        Images.gradientFull.draw(spriteBatch, i4, getPosY() + i2, i3, getHeight());
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.35f));
        Images.gradientFull.draw(spriteBatch, i4, getPosY() + i2, i3, getHeight());
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.3f));
        Images.gradientXY.draw(spriteBatch, i4, getPosY() + i2, i3, getHeight());
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.3f));
        Images.gradientXY.draw(spriteBatch, i4, getPosY() + i2, i3, getHeight());
        if (DiplomacyManager.inAnimation) {
            spriteBatch.setColor(new Color(getColorBar().r, getColorBar().g, getColorBar().b, (1.0f - DiplomacyManager.fAnimationPerc) * 0.65f));
            Images.gradientFull.draw(spriteBatch, i4, getPosY() + i2, i3, getHeight());
            spriteBatch.setColor(new Color(getColorBar().r, getColorBar().g, getColorBar().b, ((1.0f - DiplomacyManager.fAnimationPerc) * 0.6f) + 0.45f));
        } else {
            spriteBatch.setColor(new Color(getColorBar().r, getColorBar().g, getColorBar().b, 0.45f));
        }
        Images.gradientXY.draw(spriteBatch, i4, getPosY() + i2, i3, getHeight());
        int i5 = this.animationState;
        if (i5 >= 0) {
            if (i5 == 0) {
                spriteBatch.setColor(new Color(getColorBar().r, getColorBar().g, getColorBar().b, (1.0f - Math.min(((CFG.currentTimeMillis - this.lTimeAnimation) * 1.0f) / 1500.0f, 1.0f)) * 0.55f));
                Images.gradientXY.draw(spriteBatch, i4, getPosY() + (getHeight() / 2) + i2, i3, getHeight() / 2);
                if (this.lTimeAnimation < CFG.currentTimeMillis - 1500) {
                    this.animationState++;
                    this.lTimeAnimation = CFG.currentTimeMillis;
                }
            } else {
                spriteBatch.setColor(new Color(getColorBar().r, getColorBar().g, getColorBar().b, Math.min(((CFG.currentTimeMillis - this.lTimeAnimation) * 1.0f) / 1500.0f, 1.0f) * 0.55f));
                Images.gradientXY.draw(spriteBatch, i4, getPosY() + (getHeight() / 2) + i2, i3, getHeight() / 2);
                if (this.lTimeAnimation < CFG.currentTimeMillis - 1500) {
                    this.animationState = 0;
                    this.lTimeAnimation = CFG.currentTimeMillis;
                }
            }
            spriteBatch.setColor(Color.WHITE);
        }
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.25f));
        Images.gradientXY.draw(spriteBatch, i4, getPosY() + i2, i3, CFG.PADDING * 2, false, true);
        Images.gradientXY.draw(spriteBatch, i4, ((getPosY() + getHeight()) - (CFG.PADDING * 2)) + i2, i3, CFG.PADDING * 2);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.25f));
        Renderer.drawBox(spriteBatch, Images.statsRectBGBorder, i4, getPosY() + i2, i3, getHeight(), 1.0f);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.5f));
        Images.gradientFull.draw(spriteBatch, i4, ((getPosY() + getHeight()) - 1) + i2, i3, 1);
        Images.gradientFull.draw(spriteBatch, i4, getPosY() + i2, i3, 1);
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        ImageManager.getImage(this.imageID).draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(this.imageID).getWidth() / 2)) + i, ((getPosY() + (getHeight() / 2)) - (ImageManager.getImage(this.imageID).getHeight() / 2)) + i2);
    }

    public Color getColorBar() {
        return DiplomacyManager.COLOR_RED;
    }
}
