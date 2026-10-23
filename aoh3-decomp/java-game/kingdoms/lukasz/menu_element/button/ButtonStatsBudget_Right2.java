package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.google.android.gms.common.internal.constants.oyIG.kfGnwGN;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonStatsBudget_Right2 extends Button {
    public int id;
    public float lastValue;
    public Color nColor;
    public Color nColorA;
    public Color nColorH;

    public ButtonStatsBudget_Right2(String str, int i, int i2, int i3, int i4) {
        this.lastValue = -997654.3f;
        this.nColor = Colors.COLOR_TEXT_MODIFIER_POSITIVE;
        this.nColorH = Colors.COLOR_TEXT_MODIFIER_POSITIVE_HOVER;
        this.nColorA = Colors.COLOR_TEXT_MODIFIER_POSITIVE_ACTIVE;
        init(str, CFG.FONT_BOLD_SMALL, 0, i, i2, i3, i4, true, true, false, false);
    }

    public ButtonStatsBudget_Right2(String str, int i, int i2, int i3, int i4, float f) {
        this.lastValue = -997654.3f;
        this.nColor = Colors.COLOR_TEXT_MODIFIER_POSITIVE;
        this.nColorH = Colors.COLOR_TEXT_MODIFIER_POSITIVE_HOVER;
        this.nColorA = Colors.COLOR_TEXT_MODIFIER_POSITIVE_ACTIVE;
        init(str, CFG.FONT_BOLD_SMALL, 0, i, i2, i3, i4, true, true, false, false);
        if (f < 0.0f) {
            this.nColor = Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
            this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_HOVER;
            this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_ACTIVE;
        }
    }

    public ButtonStatsBudget_Right2(String str, int i, int i2, int i3, int i4, int i5) {
        this.lastValue = -997654.3f;
        this.nColor = Colors.COLOR_TEXT_MODIFIER_POSITIVE;
        this.nColorH = Colors.COLOR_TEXT_MODIFIER_POSITIVE_HOVER;
        this.nColorA = Colors.COLOR_TEXT_MODIFIER_POSITIVE_ACTIVE;
        init(str, CFG.FONT_BOLD_SMALL, 0, i, i2, i3, i4, true, true, false, false);
        this.id = i5;
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

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(kfGnwGN.iqOLmnMUvhnShcf) + ": ", getText(), Images.gold, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        this.menuElementHover = new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, getBoxAlpha(getClickable(), getIsHovered(), z)));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.55f));
        ImageManager.getImage(Images.gradientXYVertical).draw(spriteBatch, ((getPosX() + getWidth()) - (CFG.PADDING * 2)) + i, getPosY() + i2, CFG.PADDING * 2, getHeight(), true, false);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.4f));
        Images.line_32_off1.draw(spriteBatch, getPosX() + i, ((getPosY() + 1) - Images.line_32_off1.getHeight()) + i2, getWidth(), 1);
        Images.line_32_off1.draw(spriteBatch, getPosX() + i, (((getPosY() + getHeight()) - 2) - Images.line_32_off1.getHeight()) + i2, getWidth(), 1, false, true);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_TITLE_BLUE.r, Colors.COLOR_GRADIENT_TITLE_BLUE.g, Colors.COLOR_GRADIENT_TITLE_BLUE.b, 0.35f));
        Images.line_32_off1.draw(spriteBatch, getPosX() + i, (getPosY() - Images.line_32_off1.getHeight()) + i2, getWidth(), 1);
        Images.line_32_off1.draw(spriteBatch, getPosX() + i, (((getPosY() + getHeight()) - 1) - Images.line_32_off1.getHeight()) + i2, getWidth(), 1, false, true);
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, getTextToDraw(), (((getPosX() + getWidth()) - (CFG.PADDING * 2)) - getTextWidth()) + i, ((getPosY() + (getHeight() / 2)) - (this.iTextHeight / 2)) + i2, getColor(z));
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
}
