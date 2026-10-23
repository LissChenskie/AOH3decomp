package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonBuild extends Button {
    public ButtonBuild(int i, int i2, boolean z) {
        init(null, 0, 0, i, i2, ImageManager.getImage(Images.buildButton).getWidth(), ImageManager.getImage(Images.buildButton).getHeight(), z, true, false, false);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("ConstructNewBuilding"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        this.menuElementHover = new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        ImageManager.getImage(Images.buildButton).draw(spriteBatch, getPosX() + i, getPosY() + i2);
        if (getIsHovered() || z) {
            spriteBatch.setColor(Colors.COLOR_GRAY);
            Images.gradientXY.draw(spriteBatch, getPosX() + 2 + i, getPosY() + 2 + i2, getWidth() - 4, CFG.PADDING * 2, false, true);
            Images.gradientXY.draw(spriteBatch, getPosX() + 2 + i, (((getPosY() + getHeight()) - 2) - (CFG.PADDING * 2)) + i2, getWidth() - 4, CFG.PADDING * 2);
            spriteBatch.setColor(Color.WHITE);
        }
    }
}
