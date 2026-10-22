package aoc.kingdoms.lukasz.menu_element.menuElementHover;

import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MenuElement_HoverElement {
    public boolean drawElement;
    private int iMaxHeight;
    private List<MenuElement_HoverElement_Type> lElements;

    public MenuElement_HoverElement(List<MenuElement_HoverElement_Type> list) {
        this.iMaxHeight = 0;
        this.drawElement = true;
        this.lElements = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            this.lElements.add(list.get(i));
            this.iMaxHeight = Math.max(this.iMaxHeight, list.get(i).getHeight());
        }
    }

    public MenuElement_HoverElement(List<MenuElement_HoverElement_Type> list, boolean z) {
        this.iMaxHeight = 0;
        this.drawElement = z;
        this.lElements = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            this.lElements.add(list.get(i));
            this.iMaxHeight = Math.max(this.iMaxHeight, list.get(i).getHeight());
        }
    }

    public final void draw(SpriteBatch spriteBatch, int i, int i2, float f, int i3) {
        int width = 0;
        for (int i4 = 0; i4 < this.lElements.size(); i4++) {
            this.lElements.get(i4).draw(spriteBatch, i + width, i2, f, i3);
            width += this.lElements.get(i4).getWidth();
        }
    }

    public int getHeight() {
        return this.iMaxHeight;
    }

    public final int getWidth() {
        int width = 0;
        for (int i = 0; i < this.lElements.size(); i++) {
            width += this.lElements.get(i).getWidth();
        }
        return width;
    }
}
