package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonStatsBudget_Balance extends Button {
    public int iTextHeight2;
    public int iTextWidth2;
    public int iconHeight;
    public int iconWidth;
    public int imageID;
    public String sText2;
    public float lastValue = -997654.3f;
    public Color nColor = Colors.COLOR_TEXT_MODIFIER_POSITIVE;
    public Color nColorH = Colors.COLOR_TEXT_MODIFIER_POSITIVE_HOVER;
    public Color nColorA = Colors.COLOR_TEXT_MODIFIER_POSITIVE_ACTIVE;

    public ButtonStatsBudget_Balance(String str, String str2, int i, int i2, int i3, int i4, int i5) {
        init(str, CFG.FONT_REGULAR, 0, i2, i3, i4, i5, true, true, false, false);
        this.imageID = i;
        float imageScale = getImageScale(i) * 1.2f;
        this.iconWidth = (int) (ImageManager.getImage(i).getWidth() * imageScale);
        this.iconHeight = (int) (ImageManager.getImage(i).getHeight() * imageScale);
        setText2(str2);
    }

    public static final float getBoxAlpha(boolean z, boolean z2, boolean z3) {
        if (!z) {
            return 0.2f;
        }
        if (z3) {
            return 0.85f;
        }
        return z2 ? 0.7f : 0.5f;
    }

    private final float getImageScale(int i) {
        return CFG.TEXT_HEIGHT / ImageManager.getImage(i).getHeight();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, getBoxAlpha(getClickable(), getIsHovered(), z)));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT.r, Colors.COLOR_GRADIENT.g, Colors.COLOR_GRADIENT.b, 0.45f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT.r, Colors.COLOR_GRADIENT.g, Colors.COLOR_GRADIENT.b, 0.8f));
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 1.0f));
        Renderer.drawBox(spriteBatch, Images.statsRectBGBorder, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Image image = ImageManager.getImage(this.imageID);
        int posX = ((getPosX() + (getWidth() / 2)) - (((getTextWidth() + this.iTextWidth2) + this.iconWidth) / 2)) + getTextWidth() + this.iTextWidth2 + CFG.PADDING + i;
        int posY = getPosY();
        int height = getHeight();
        int i3 = this.iconHeight;
        image.draw(spriteBatch, posX, posY + ((height - i3) / 2) + i2, this.iconWidth, i3);
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, getTextToDraw(), ((getPosX() + (getWidth() / 2)) - (((getTextWidth() + this.iTextWidth2) + this.iconWidth) / 2)) + i, ((getPosY() + (getHeight() / 2)) - (this.iTextHeight / 2)) + i2, getColor2(z));
        Renderer.drawTextWithShadow(spriteBatch, CFG.FONT_BOLD, getText2(), ((getPosX() + (getWidth() / 2)) - (((getTextWidth() + this.iTextWidth2) + this.iconWidth) / 2)) + getTextWidth() + i, ((getPosY() + (getHeight() / 2)) - (this.iTextHeight2 / 2)) + i2, getColor(z));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        if (z) {
            return this.nColorA;
        }
        if (getIsHovered()) {
            return this.nColorH;
        }
        return getClickable() ? this.nColor : Colors.BUTTON_TEXT_DISABLED;
    }

    protected Color getColor2(boolean z) {
        return Colors.getColorTopStats(z, getIsHovered());
    }

    public String getText2() {
        String precision2;
        if (this.lastValue != (Game.getCiv(Game.player.iCivID).fTotalIncomePerMonth + Game.getCiv(Game.player.iCivID).civBonuses.MonthlyIncome) - Game.getCiv(Game.player.iCivID).fTotalExpensesPerMonth) {
            float f = (Game.getCiv(Game.player.iCivID).fTotalIncomePerMonth + Game.getCiv(Game.player.iCivID).civBonuses.MonthlyIncome) - Game.getCiv(Game.player.iCivID).fTotalExpensesPerMonth;
            StringBuilder sbAppend = new StringBuilder().append(f > 0.0f ? "+" : "");
            if (f >= 1000.0f) {
                precision2 = CFG.getNumberWithSpaces("" + ((int) f));
            } else {
                precision2 = CFG.getPrecision2(f, f >= 100.0f ? 10 : 100);
            }
            setText2(sbAppend.append(precision2).toString());
            this.lastValue = f;
            if (f == 0.0f) {
                this.nColor = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
                this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_HOVER;
                this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_ACTIVE;
            } else if (f > 0.0f) {
                this.nColor = Colors.COLOR_TEXT_MODIFIER_POSITIVE;
                this.nColorH = Colors.COLOR_TEXT_MODIFIER_POSITIVE_HOVER;
                this.nColorA = Colors.COLOR_TEXT_MODIFIER_POSITIVE_ACTIVE;
            } else {
                this.nColor = Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
                this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_HOVER;
                this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_ACTIVE;
            }
        }
        return this.sText2;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public final void setText2(String str) {
        this.sText2 = str;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_BOLD), str);
        this.iTextWidth2 = (int) Renderer.glyphLayout.width;
        this.iTextHeight2 = (int) Renderer.glyphLayout.height;
    }
}
