package aoc.kingdoms.lukasz.menu_element.menuElementHover;

import aoc.kingdoms.lukasz.menu_element.button.Button_Preview;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MenuElement_HoverElement_Type_ScenarioPreview implements MenuElement_HoverElement_Type {
    public Button_Preview buttonPreview;

    public MenuElement_HoverElement_Type_ScenarioPreview(int i) {
        this.buttonPreview = new Button_Preview(0, 0, i);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public void draw(SpriteBatch spriteBatch, int i, int i2, float f, int i3) {
        this.buttonPreview.draw(spriteBatch, i, i2, false, false);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getHeight() {
        return this.buttonPreview.getHeight();
    }

    public int getHeight2() {
        return this.buttonPreview.getHeight();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getWidth() {
        return this.buttonPreview.getWidth();
    }
}
