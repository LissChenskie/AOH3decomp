package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.allianceHRE.JgPF.HTGgowNjn;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonIdeology_OnlyIMG extends Button {
    public int ideologyID;
    public int imgHeight;
    public int imgWidth;

    public ButtonIdeology_OnlyIMG(int i, int i2, int i3, int i4, int i5) {
        this.ideologyID = i;
        init(HTGgowNjn.NCalbyVafDlJvAA, CFG.FONT_REGULAR_SMALL, this.iTextPositionX, i2, i3, i4, i5, true, true, false, false);
        if (ImageManager.getImage(Images.population).getHeight() >= Game.ideologiesManager.ideologiesImages.get(i).getHeight()) {
            this.imgWidth = Game.ideologiesManager.ideologiesImages.get(i).getWidth();
            this.imgHeight = Game.ideologiesManager.ideologiesImages.get(i).getHeight();
        } else {
            float height = ImageManager.getImage(Images.population).getHeight() / Game.ideologiesManager.ideologiesImages.get(i).getHeight();
            this.imgWidth = (int) (Game.ideologiesManager.ideologiesImages.get(i).getWidth() * height);
            this.imgHeight = (int) (Game.ideologiesManager.ideologiesImages.get(i).getHeight() * height);
        }
    }

    public static int getTextHeightBG() {
        return CFG.TEXT_HEIGHT + (CFG.PADDING * 2);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        this.menuElementHover = Game.ideologiesManager.getHoverIdeology(this.ideologyID, false, false);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        if (getIsHovered() || z) {
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 1.0f));
            Renderer.drawBox(spriteBatch, Images.statsRectBGBorder, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
            spriteBatch.setColor(Color.WHITE);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Image image = Game.ideologiesManager.ideologiesImages.get(this.ideologyID);
        int posX = ((getPosX() + (getWidth() / 2)) - (this.imgWidth / 2)) + i;
        int posY = getPosY() + (getHeight() / 2);
        int i3 = this.imgHeight;
        image.draw(spriteBatch, posX, (posY - (i3 / 2)) + i2, this.imgWidth, i3);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        return Colors.getColorButtonHover(z, getIsHovered());
    }
}
