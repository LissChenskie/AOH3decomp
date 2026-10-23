package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.Renderer.SparksAnimation;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.MenuElement_Type;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menus.MainMenu;
import aoc.kingdoms.lukasz.menusInGame.InGame;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class TextTop extends MenuElement {
    public static final int ANIMATION_T = 1000;
    public int fontID2;
    public int iTextPosX;
    public int imageID;
    public int textPosY;
    public static final int EXTRA_WIDTH_BOX_PADDING = CFG.PADDING * 3;
    protected static long lTimeAnimation = 0;
    protected static int animationState = 0;
    public String sText = null;
    public String sText2 = null;
    public int iTextWidth = -1;
    public int iTextHeight = -1;
    public int iTextWidth2 = -1;
    public int iTextHeight2 = -1;
    public SparksAnimation sparksAnimationTop = new SparksAnimation();
    public float lastValue = -997654.3f;
    public int WIDTH_LAST_TURN_UPDATE = 0;

    public TextTop(int i, String str, String str2, int i2, int i3) {
        this.fontID2 = 1;
        this.typeOfElement = MenuElement_Type.TEXT;
        this.imageID = i;
        setPosX(i2);
        setPosY(i3);
        setHeight(InGame.topStatsHeight - (CFG.PADDING * 2));
        setText(str);
        setText2(str2);
        this.iTextPosX = EXTRA_WIDTH_BOX_PADDING + ImageManager.getImage(i).getWidth() + (CFG.PADDING * 2);
        this.fontID = CFG.FONT_REGULAR;
        this.fontID2 = CFG.FONT_REGULAR_SMALL;
        this.textPosY = (getHeight() - ((this.iTextHeight + this.iTextHeight2) + CFG.PADDING)) / 2;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        int i3;
        int posX = getPosX() + i;
        int posY = getPosY() + i2;
        spriteBatch.setColor(Colors.COLOR_GRADIENT_OVER_BLUE);
        spriteBatch.getColor().a = 0.65f;
        Images.gradientFull.draw(spriteBatch, posX, posY, getWidth(), getHeight());
        spriteBatch.getColor().a = 0.3f;
        Images.gradientXY.draw(spriteBatch, posX, posY, getWidth(), getHeight());
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.25f));
        Images.gradientXY.draw(spriteBatch, posX, posY, getWidth(), CFG.PADDING * 2, false, true);
        Images.gradientXY.draw(spriteBatch, posX, (getHeight() + posY) - (CFG.PADDING * 2), getWidth(), CFG.PADDING * 2);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.25f));
        Renderer.drawBox(spriteBatch, Images.statsRectBGBorder, posX, posY, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.5f));
        Images.gradientFull.draw(spriteBatch, posX, (getHeight() + posY) - 1, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, posX, posY, getWidth(), 1);
        spriteBatch.setColor(Colors.COLOR_GRADIENT_OVER_BLUE);
        spriteBatch.getColor().a = 0.85f;
        Images.gradientFull.draw(spriteBatch, posX, (getHeight() + posY) - 2, getWidth(), 1);
        int i4 = posY + 1;
        Images.gradientFull.draw(spriteBatch, posX, i4, getWidth(), 1);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.55f));
        Images.gradientFull.draw(spriteBatch, posX, (getHeight() + posY) - 1, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, posX, posY, getWidth(), 1);
        spriteBatch.setColor(Colors.COLOR_GRADIENT_OVER_BLUE);
        spriteBatch.getColor().a = 0.9f;
        Images.gradientFull.draw(spriteBatch, posX, (getHeight() + posY) - 2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, posX, i4, getWidth(), 1);
        spriteBatch.setColor(Color.WHITE);
        if (getIsHovered() || z || getIsActiveButton()) {
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT.r, Colors.COLOR_GRADIENT.g, Colors.COLOR_GRADIENT.b, 0.8f));
            Images.gradientXY.draw(spriteBatch, posX, posY, getWidth(), getHeight());
            spriteBatch.setColor(MainMenu.sparksColors);
            this.sparksAnimationTop.draw2(spriteBatch, posX, posY, getWidth(), getHeight());
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 1.0f));
            Renderer.drawBox(spriteBatch, Images.statsRectBGBorder, posX, posY, getWidth(), getHeight(), 1.0f);
            spriteBatch.setColor(Color.WHITE);
        }
        if (getClickable() && getIsHovered() && (i3 = animationState) >= 0) {
            if (i3 == 0) {
                float fMin = Math.min(((CFG.currentTimeMillis - lTimeAnimation) * 1.0f) / 1000.0f, 1.0f);
                spriteBatch.setColor(ButtonGame.getColorLine());
                Images.line_32_off1.draw(spriteBatch, posX + CFG.PADDING, i4, (int) ((getWidth() - (CFG.PADDING * 2)) * fMin), 1);
                Images.line_32_off1.draw(spriteBatch, posX + CFG.PADDING, (getHeight() + posY) - 2, (int) ((getWidth() - (CFG.PADDING * 2)) * fMin), 1);
                if (lTimeAnimation < CFG.currentTimeMillis - 1000) {
                    animationState++;
                    lTimeAnimation = CFG.currentTimeMillis;
                }
            } else {
                float fMin2 = Math.min(((CFG.currentTimeMillis - lTimeAnimation) * 1.0f) / 1000.0f, 1.0f);
                spriteBatch.setColor(ButtonGame.getColorLine());
                Images.line_32_off1.draw(spriteBatch, ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)) + CFG.PADDING + posX, i4, (getWidth() - (CFG.PADDING * 2)) - ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)), 1);
                Images.line_32_off1.draw(spriteBatch, ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)) + CFG.PADDING + posX, (getHeight() + posY) - 2, (getWidth() - (CFG.PADDING * 2)) - ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)), 1);
                if (lTimeAnimation < CFG.currentTimeMillis - 1000) {
                    animationState = 0;
                    lTimeAnimation = CFG.currentTimeMillis;
                }
            }
            spriteBatch.setColor(Color.WHITE);
        }
        ImageManager.getImage(getImageID()).draw(spriteBatch, EXTRA_WIDTH_BOX_PADDING + posX, ((getHeight() - ImageManager.getImage(getImageID()).getHeight()) / 2) + posY);
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, getTextToDraw(), posX + this.iTextPosX, posY + this.textPosY, getColor(z));
        Renderer.drawTextWithShadow(spriteBatch, this.fontID2, this.sText2, posX + this.iTextPosX, posY + this.textPosY + this.iTextHeight + CFG.PADDING, Colors.TEXT_TOP_BOT);
    }

    public final int extraWidth() {
        return ImageManager.getImage(this.imageID).getWidth() + (CFG.PADDING * 2) + (EXTRA_WIDTH_BOX_PADDING * 2);
    }

    protected Color getColor(boolean z) {
        return Colors.getColorTopStats(z, getIsHovered());
    }

    protected Color getColor2(boolean z) {
        return getColor(z);
    }

    public int getImageID() {
        return this.imageID;
    }

    public boolean getIsActiveButton() {
        return false;
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
    public String getTextToDraw() {
        return this.sText;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getTextWidth() {
        return this.iTextWidth;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setIsHovered(boolean z) {
        super.setIsHovered(z);
        lTimeAnimation = CFG.currentTimeMillis;
        animationState = 0;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setText(String str) {
        this.sText = str;
        try {
            Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), str);
            this.iTextWidth = (int) Renderer.glyphLayout.width;
            this.iTextHeight = (int) Renderer.glyphLayout.height;
            if (super.getWidth() < this.iTextWidth + extraWidth()) {
                setWidth(this.iTextWidth + extraWidth());
            }
            if (Game_Calendar.TURN_ID > this.WIDTH_LAST_TURN_UPDATE + Game_Calendar.NUM_OF_DAYS) {
                setWidth(Math.max(this.iTextWidth, this.iTextWidth2) + extraWidth());
                this.WIDTH_LAST_TURN_UPDATE = Game_Calendar.TURN_ID;
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setText2(String str) {
        this.sText2 = str;
        try {
            Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID2), str);
            this.iTextWidth2 = (int) Renderer.glyphLayout.width;
            this.iTextHeight2 = (int) Renderer.glyphLayout.height;
            if (super.getWidth() < this.iTextWidth2 + extraWidth()) {
                setWidth(this.iTextWidth2 + extraWidth());
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void setWidthOfButton() {
        setWidth(extraWidth());
    }
}
