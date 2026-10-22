package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ReligionTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonReligion2 extends Button {
    public int imgHeight;
    public int imgWidth;
    public int religionID;

    public ButtonReligion2(int i, int i2, int i3, int i4, int i5) {
        this.religionID = i;
        init(Game.religionManager.getReligion(i).Name, CFG.FONT_REGULAR_SMALL, this.iTextPositionX, i2, i3, i4, i5, true, true, false, false);
        if (ImageManager.getImage(Images.population).getHeight() >= Game.religionManager.religionImages.get(i).getHeight()) {
            this.imgWidth = Game.religionManager.religionImages.get(i).getWidth();
            this.imgHeight = Game.religionManager.religionImages.get(i).getHeight();
        } else {
            float height = ImageManager.getImage(Images.population).getHeight() / Game.religionManager.religionImages.get(i).getHeight();
            this.imgWidth = (int) (Game.religionManager.religionImages.get(i).getWidth() * height);
            this.imgHeight = (int) (Game.religionManager.religionImages.get(i).getHeight() * height);
        }
    }

    public ButtonReligion2(int i, int i2, int i3, int i4, int i5, boolean z) {
        this.religionID = i;
        init(Game.religionManager.getReligion(i).Name, CFG.FONT_REGULAR_SMALL, this.iTextPositionX, i2, i3, i4, i5, true, true, false, false);
        this.imgWidth = Game.religionManager.religionImages.get(i).getWidth();
        this.imgHeight = Game.religionManager.religionImages.get(i).getHeight();
    }

    public static int getTextHeightBG() {
        return CFG.TEXT_HEIGHT + (CFG.PADDING * 2);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Religion") + ": ", CFG.FONT_BOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.religionManager.getReligion(this.religionID).Name, CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_ReligionTitle(this.religionID, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        this.menuElementHover = new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(TextIcon2.getColor_gradientXY());
        Images.gradientXY.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - getTextHeightBG()) + i2, getWidth(), getTextHeightBG());
        spriteBatch.setColor(TextIcon2.getColor_gradientFull());
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - getTextHeightBG()) + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 1) + i2, getWidth(), 1);
        spriteBatch.setColor(Color.WHITE);
        if (getIsHovered() || z) {
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 1.0f));
            Renderer.drawBox(spriteBatch, Images.statsRectBGBorder, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
            spriteBatch.setColor(Color.WHITE);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Image image = Game.religionManager.religionImages.get(this.religionID);
        int posX = ((getPosX() + (getWidth() / 2)) - (this.imgWidth / 2)) + i;
        int posY = getPosY() + ((getHeight() - getTextHeightBG()) / 2);
        int i3 = this.imgHeight;
        image.draw(spriteBatch, posX, (posY - (i3 / 2)) + i2, this.imgWidth, i3);
        Renderer.drawText(spriteBatch, this.fontID, getText(), ((getPosX() + (getWidth() / 2)) - (getTextWidth() / 2)) + i, ((((getPosY() + getHeight()) - (CFG.TEXT_HEIGHT / 2)) - (getTextHeight() / 2)) - CFG.PADDING) + i2, getColor(z));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        return Colors.getColorButtonHover(z, getIsHovered());
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getCurrent() {
        return this.religionID;
    }
}
