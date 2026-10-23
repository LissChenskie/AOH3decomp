package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonIdeology extends Button {
    public static int maxHeight;
    public int ideologyID;

    public ButtonIdeology(int i, int i2, int i3) {
        this.ideologyID = i;
        init(Game.ideologiesManager.getIdeology(i).Name, CFG.FONT_REGULAR_SMALL, this.iTextPositionX, i2, i3, getButtonWidth(), getButtonHeight(), true, true, false, false);
    }

    public static int getButtonHeight() {
        return getImageHeight() + CFG.TEXT_HEIGHT + (CFG.PADDING * 2);
    }

    public static int getButtonWidth() {
        return Game.ideologiesManager.maxWidth + (CFG.PADDING * 4);
    }

    public static int getImageHeight() {
        return maxHeight + (CFG.PADDING * 4);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Government") + ": ", CFG.FONT_BOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.ideologiesManager.getIdeology(this.ideologyID).Name, CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        this.menuElementHover = new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Game.ideologiesManager.ideologiesImages.get(this.ideologyID).draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (Game.ideologiesManager.ideologiesImages.get(this.ideologyID).getWidth() / 2)) + i, ((getPosY() + (getImageHeight() / 2)) - (Game.ideologiesManager.ideologiesImages.get(this.ideologyID).getHeight() / 2)) + i2);
        Renderer.drawText(spriteBatch, this.fontID, getText(), ((getPosX() + (getWidth() / 2)) - (getTextWidth() / 2)) + i, (((getPosY() + getHeight()) - CFG.TEXT_HEIGHT) - CFG.PADDING) + i2, getColor(z));
    }
}
