package aoc.kingdoms.lukasz.menu_element;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu_element.button.Button;
import aoc.kingdoms.lukasz.menus.MainMenu;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class IconCourt extends Button {
    public int id;
    public int imageID;
    public int widthDraw;

    public IconCourt(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.imageID = i;
        this.id = i6;
        this.widthDraw = i7;
        init(str, CFG.FONT_REGULAR_SMALL, 0, i2, i3, i4, i5, true, true, false, false);
    }

    public static Color getColor_gradientFull() {
        return new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.45f);
    }

    public static Color getColor_gradientXY() {
        return new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.7f);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        int i3;
        int i4;
        float f;
        int posX = getPosX() + i;
        int posY = getPosY() + i2;
        if (InGame_CourtOptions2.isOptionHovered) {
            if (InGame_CourtOptions2.TEXT_TIME + ((long) InGame_CourtOptions2.TEXT_ANIMATION_TIME) >= CFG.currentTimeMillis) {
                float f2 = (CFG.currentTimeMillis - InGame_CourtOptions2.TEXT_TIME) / InGame_CourtOptions2.TEXT_ANIMATION_TIME;
                f = f2;
                i4 = (-InGame_CourtOptions2.textMaxWidth) + ((int) (InGame_CourtOptions2.textMaxWidth * f2));
            } else {
                i4 = 0;
                f = 1.0f;
            }
            int i5 = i4 + 1;
            int i6 = posX + this.widthDraw + i5;
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, f * 1.0f));
            ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, i6, posY, InGame_CourtOptions2.textMaxWidth, getHeight() + 1);
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, 0.9f * f));
            ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, i6, posY, InGame_CourtOptions2.textMaxWidth, getHeight() + 1);
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, 0.75f * f));
            Images.gradientFull.draw(spriteBatch, i6, posY, InGame_CourtOptions2.textMaxWidth, getHeight() + 1);
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE3.r, Colors.COLOR_GRADIENT_OVER_BLUE3.g, Colors.COLOR_GRADIENT_OVER_BLUE3.b, 0.15f * f));
            ImageManager.getImage(Images.gradientXYVertical).draw(spriteBatch, i6, posY, getTextWidth(), getHeight() + 1);
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, f * 0.45f));
            ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, i6, posY + 1, InGame_CourtOptions2.textMaxWidth, 1);
            ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, i6, ((getHeight() + posY) + 1) - 2, InGame_CourtOptions2.textMaxWidth, 1);
            int i7 = i6 - this.widthDraw;
            spriteBatch.setColor(Color.WHITE);
            if (i4 != 0) {
                Color color = getColor(z);
                Renderer.drawText(spriteBatch, this.fontID, getTextToDraw(), CFG.PADDING + i7 + super.getWidth(), ((getHeight() / 2) + posY) - (this.iTextHeight / 2), new Color(color.r, color.g, color.b, Math.min(1.0f, color.a * f)));
            } else {
                Renderer.drawTextWithShadow(spriteBatch, this.fontID, getTextToDraw(), CFG.PADDING + i7 + super.getWidth(), ((getHeight() / 2) + posY) - (this.iTextHeight / 2), getColor(z));
            }
            i3 = i7 - i5;
        } else {
            i3 = posX;
        }
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.4f));
        int i8 = i3;
        Images.gradientXY.draw(spriteBatch, i8, posY, this.widthDraw, getHeight());
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.45f));
        Images.gradientFull.draw(spriteBatch, i8, posY, this.widthDraw, 1);
        Images.gradientFull.draw(spriteBatch, i8, (getHeight() + posY) - 1, this.widthDraw, 1);
        spriteBatch.setColor(Color.WHITE);
        if (InGame_CourtOptions.iActiveID == this.id) {
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT.r, Colors.COLOR_GRADIENT.g, Colors.COLOR_GRADIENT.b, 1.0f));
            int i9 = i3;
            ImageManager.getImage(Images.gradientXYVertical).draw(spriteBatch, i9, posY, this.widthDraw, getHeight());
            ImageManager.getImage(Images.gradientXYVertical).draw(spriteBatch, i9, posY + (getHeight() / 2), this.widthDraw, getHeight() / 2);
        }
        if (getIsHovered() || z) {
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT.r, Colors.COLOR_GRADIENT.g, Colors.COLOR_GRADIENT.b, 0.65f));
            ImageManager.getImage(Images.gradientXYVertical).draw(spriteBatch, i3, posY, this.widthDraw, getHeight());
        }
        if (InGame_CourtOptions.iActiveID == this.id) {
            spriteBatch.setColor(MainMenu.sparksColors);
            MenuManager.sparksAnimationSidebarActive.draw2(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        } else if (getIsHovered() || z) {
            spriteBatch.setColor(MainMenu.sparksColors);
            MenuManager.sparksAnimationSidebar.draw2(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        }
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        if (!getIsHovered() && !z) {
            ImageManager.getImage(getImageID()).draw(spriteBatch, ((getPosX() + i) + (this.widthDraw / 2)) - (ImageManager.getImage(getImageID()).getWidth() / 2), ((getPosY() + i2) + (getHeight() / 2)) - (ImageManager.getImage(getImageID()).getHeight() / 2));
            return;
        }
        int width = (int) (ImageManager.getImage(getImageID()).getWidth() * 1.1f);
        int height = (int) (ImageManager.getImage(getImageID()).getHeight() * 1.1f);
        ImageManager.getImage(getImageID()).draw(spriteBatch, ((getPosX() + i) + (this.widthDraw / 2)) - (width / 2), ((getPosY() + i2) + (getHeight() / 2)) - (height / 2), width, height);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        return InGame_CourtOptions.iActiveID == this.id ? Colors.HOVER_GOLD : super.getColor(z);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getCurrent() {
        return this.id;
    }

    public int getImageID() {
        return this.imageID;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getPosX() {
        return super.getPosX() + Game.settingsManager.IN_GAME_LEFT_PADDING_EXTRA;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getWidth() {
        return InGame_CourtOptions2.isOptionHovered ? super.getWidth() + (InGame_CourtOptions2.textMaxWidth / 2) : super.getWidth();
    }
}
