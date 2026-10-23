package aoc.kingdoms.lukasz.menu_element.menuElementHover;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical;
import aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical_Data_Type;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.net.HttpStatus;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MenuElement_HoverElement_Type_GraphVertical implements MenuElement_HoverElement_Type {
    public Graph_Vertical graphVertical = new Graph_Vertical(Graph_Vertical_Data_Type.NUM_OF_PROVINCES_BY_CONTINENT, Game.lang.get("Civilizations"), Game.lang.get("Provinces"), 0, 0, 500, HttpStatus.SC_OK, true);

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public void draw(SpriteBatch spriteBatch, int i, int i2, float f, int i3) {
        this.graphVertical.draw(spriteBatch, i, i2 + CFG.PADDING, false, false);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getHeight() {
        return this.graphVertical.getHeight();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getWidth() {
        return this.graphVertical.getWidth();
    }
}
