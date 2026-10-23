package aoc.kingdoms.lukasz.menu_element.menuElementHover;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.graph.Graph;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.google.android.gms.internal.common.oss.ClXgFvsSKQc;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MenuElement_HoverElement_Type_Graph implements MenuElement_HoverElement_Type {
    public Graph graph;
    public int iGraphWidth;

    public MenuElement_HoverElement_Type_Graph(String str, Graph.GraphType graphType, boolean z) {
        this.iGraphWidth = 0;
        this.iGraphWidth = CFG.BUTTON_WIDTH * 3;
        this.graph = new Graph("", str, 0, 0, this.iGraphWidth, CFG.BUTTON_WIDTH + (CFG.BUTTON_WIDTH / 2), true, 1, graphType, z);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public void draw(SpriteBatch spriteBatch, int i, int i2, float f, int i3) {
        if (this.iGraphWidth != i3) {
            this.iGraphWidth = i3;
            this.graph = new Graph(ClXgFvsSKQc.lLQgVDzMPUpfQbl, this.graph.sTextY, 0, 0, this.iGraphWidth, CFG.BUTTON_WIDTH + (CFG.BUTTON_WIDTH / 2), true, 1, this.graph.graphType, this.graph.split100);
        }
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, 0.9f * f));
        Images.pix.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), i2, i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), getHeight2() + (CFG.PADDING * 2));
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.75f * f));
        Images.gradientXY.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), i2, i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), getHeight2() + (CFG.PADDING * 2));
        float f2 = f * 1.0f;
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, f2));
        Images.gradientXY.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), i2, i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), getHeight2() + (CFG.PADDING * 2));
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.2f * f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), i2, i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), CFG.PADDING * 2);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, f2));
        Images.gradientFull.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), i2 + 1, i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), 1);
        Images.gradientFull.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), ((i2 + getHeight2()) + (CFG.PADDING * 2)) - 2, i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), 1);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, f2));
        Images.gradientFull.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), i2, i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), 1);
        Images.gradientFull.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), ((i2 + getHeight2()) + (CFG.PADDING * 2)) - 1, i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), 1);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.15f * f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), (CFG.PADDING * 2) + i2 + getHeight2(), i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), CFG.PADDING);
        Images.gradientXY.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), (CFG.PADDING * 2) + i2 + getHeight2(), i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), CFG.PADDING, false, true);
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), i2 - CFG.PADDING, i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), CFG.PADDING, false, true);
        Images.gradientXY.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), i2 - CFG.PADDING, i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), CFG.PADDING);
        spriteBatch.setColor(Color.WHITE);
        this.graph.draw(spriteBatch, i, i2 + (CFG.PADDING * 2), false, false);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getHeight() {
        return this.graph.getHeight() + CFG.PADDING;
    }

    public int getHeight2() {
        return this.graph.getHeight() + CFG.PADDING;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getWidth() {
        return this.graph.getWidth();
    }
}
