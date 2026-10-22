package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.LanguageManager;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.Touch;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menusInGame.InGame;
import aoc.kingdoms.lukasz.menusInGame.Right.InGame_Right;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonTopOutliner extends Button {
    public int imageID;

    public ButtonTopOutliner(int i, int i2) {
        this.imageID = Images.outliner;
        init(this.sText, 0, this.iTextPositionX, 0, i, ImageManager.getImage(this.imageID).getWidth() + getPaddingX(), i2, true, true, false, false);
    }

    public ButtonTopOutliner(int i, int i2, int i3, int i4) {
        this.imageID = i4;
        init(this.sText, 0, this.iTextPositionX, i, i2, ImageManager.getImage(i4).getWidth() + getPaddingX(), i3, true, true, false, false);
    }

    public ButtonTopOutliner(int i, int i2, int i3, int i4, int i5) {
        this.imageID = i5;
        init(this.sText, 0, this.iTextPositionX, i, i2, i3, i4, true, true, false, false);
    }

    public static int getPaddingX() {
        return CFG.PADDING * 4;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        LanguageManager languageManager;
        String str;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (CFG.isDesktop()) {
            if (InGame_Right.outlinerInView) {
                languageManager = Game.lang;
                str = "HidePinned";
            } else {
                languageManager = Game.lang;
                str = "ShowPinned";
            }
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(languageManager.get(str), CFG.FONT_BOLD, Colors.HOVER_GOLD));
        } else {
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("SelectMoreThanOneArmy"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
        }
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.1f));
        Images.gradientFull.draw(spriteBatch, getPosX() + InGame.outlinerExtraX + i, getPosY() + 1 + i2, getWidth(), getHeight() - 2);
        Images.gradientXY.draw(spriteBatch, getPosX() + InGame.outlinerExtraX + i, getPosY() + 1 + i2, getWidth(), getHeight() - 2);
        Images.gradientXY.draw(spriteBatch, getPosX() + InGame.outlinerExtraX + i, getPosY() + 1 + i2, getWidth(), getHeight() - 2, false, true);
        spriteBatch.setColor(Color.WHITE);
        if (getIsHovered() || z) {
            spriteBatch.setColor(new Color(Colors.HOVER_GOLD.r, Colors.HOVER_GOLD.g, Colors.HOVER_GOLD.b, 0.5f));
            Images.gradientXY.draw(spriteBatch, getPosX() + InGame.outlinerExtraX + i, getPosY() + i2, getWidth(), CFG.PADDING, false, true);
            Images.gradientXY.draw(spriteBatch, getPosX() + InGame.outlinerExtraX + i, ((getPosY() + getHeight()) - CFG.PADDING) + i2, getWidth(), CFG.PADDING);
            spriteBatch.setColor(Color.WHITE);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        if (CFG.isDesktop()) {
            spriteBatch.setColor(getColor(z));
            ImageManager.getImage(this.imageID).draw(spriteBatch, (((getPosX() + (getWidth() / 2)) + InGame.outlinerExtraX) - (ImageManager.getImage(this.imageID).getWidth() / 2)) + i, ((getPosY() + (getHeight() / 2)) - (ImageManager.getImage(this.imageID).getHeight() / 2)) + i2);
        } else {
            if (Touch.selectArmiesMode) {
                spriteBatch.setColor(new Color(Colors.HOVER_GOLD.r, Colors.HOVER_GOLD.g, Colors.HOVER_GOLD.b, 0.15f));
            } else {
                spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.075f));
            }
            Images.pix.draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(this.imageID).getHeight() / 2)) + i, ((getPosY() + (getHeight() / 2)) - (ImageManager.getImage(this.imageID).getHeight() / 2)) + i2, ImageManager.getImage(this.imageID).getHeight(), ImageManager.getImage(this.imageID).getHeight());
            if (Touch.selectArmiesMode) {
                spriteBatch.setColor(new Color(Colors.HOVER_GOLD.r, Colors.HOVER_GOLD.g, Colors.HOVER_GOLD.b, 0.375f));
            } else {
                spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.275f));
            }
            Renderer.drawBox2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(this.imageID).getHeight() / 2)) + i, ((getPosY() + (getHeight() / 2)) - (ImageManager.getImage(this.imageID).getHeight() / 2)) + i2, ImageManager.getImage(this.imageID).getHeight(), ImageManager.getImage(this.imageID).getHeight(), 1.0f);
        }
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        return Colors.getColorTopStats_Outliner(z, getIsHovered());
    }
}
