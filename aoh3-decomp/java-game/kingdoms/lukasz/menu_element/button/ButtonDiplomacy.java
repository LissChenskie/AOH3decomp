package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.AI.Values.nvwi.cIUGJCqyPXfp;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menus.MainMenu;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonDiplomacy extends Button {
    public int iconH;
    public int iconY;
    public int imageID;
    public List<String> sLines = new ArrayList();
    public List<Integer> iLinesWidth = new ArrayList();
    public int iLineSize = 0;
    public int iY_Text = 0;

    public ButtonDiplomacy(String str, int i, int i2, int i3, int i4, int i5) {
        this.iconY = 0;
        this.iconH = 0;
        this.imageID = i;
        this.iconY = ((i5 / 10) + (InGame_Civ.iMaxH_DiplomacyIcon / 2)) - (ImageManager.getImage(i).getHeight() / 2);
        this.iconH = (i5 / 5) + InGame_Civ.iMaxH_DiplomacyIcon;
        init(str, CFG.FONT_REGULAR_SMALL, this.iTextPositionX, i2, i3, i4, i5, true, true, false, false);
    }

    public ButtonDiplomacy(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
        this.iconY = 0;
        this.iconH = 0;
        this.imageID = i;
        this.iconY = ((i5 / 10) + (InGame_Civ.iMaxH_DiplomacyIcon / 2)) - (ImageManager.getImage(i).getHeight() / 2);
        this.iconH = (i5 / 5) + InGame_Civ.iMaxH_DiplomacyIcon;
        init(str, CFG.FONT_REGULAR_SMALL, this.iTextPositionX, i2, i3, i4, i5, z, true, false, false);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, 0.3f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + this.iconH + i2, getWidth(), getHeight() - this.iconH, 1.0f);
        if (getIsHovered() || z) {
            spriteBatch.setColor(getColorHover1());
            Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        } else {
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.35f));
            Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + this.iconH + i2, getWidth(), getHeight() - this.iconH);
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.3f));
            Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + this.iconH + i2, getWidth(), getHeight() - this.iconH);
        }
        if (getIsHovered() || z) {
            spriteBatch.setColor(getColorHover2());
            Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + this.iconH + i2, getWidth(), getHeight() - this.iconH);
        }
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.3f));
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + this.iconH + i2, getWidth(), CFG.PADDING * 2, false, true);
        Images.gradientXY.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - (CFG.PADDING * 2)) + i2, getWidth(), CFG.PADDING * 2);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.25f));
        Renderer.drawBox(spriteBatch, Images.statsRectBGBorder, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.25f));
        Renderer.drawBox(spriteBatch, Images.statsRectBGBorder, getPosX() + 1 + i, getPosY() + 1 + i2, getWidth() - 2, getHeight() - 2, 1.0f);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.9f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 1) + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + this.iconH) - 1) + i2, getWidth(), 1);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.55f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 2) + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + 1 + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + this.iconH + i2, getWidth(), 1);
        if (getIsHovered() || z) {
            drawButtonSparks(spriteBatch, i, i2, z);
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 1.0f));
            Renderer.drawBox(spriteBatch, Images.statsRectBGBorder, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        }
        spriteBatch.setColor(Color.WHITE);
    }

    protected void drawButtonSparks(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setColor(MainMenu.sparksColors);
        MenuManager.sparksAnimationHover.draw2(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        if (getClickable()) {
            ImageManager.getImage(this.imageID).draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(this.imageID).getWidth() / 2)) + i, getPosY() + this.iconY + i2);
        } else {
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.33f));
            ImageManager.getImage(this.imageID).draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(this.imageID).getWidth() / 2)) + i, getPosY() + this.iconY + i2);
            spriteBatch.setColor(Color.WHITE);
        }
        for (int i3 = 0; i3 < this.iLineSize; i3++) {
            Renderer.drawText(spriteBatch, this.fontID, this.sLines.get(i3), ((getPosX() + (getWidth() / 2)) - (this.iLinesWidth.get(i3).intValue() / 2)) + i, getPosY() + this.iY_Text + ((this.iTextHeight + (CFG.PADDING * 2)) * i3) + i2, getColor(z));
        }
    }

    public Color getColorHover1() {
        return new Color(Colors.COLOR_GRADIENT_OVER_BLUE3.r, Colors.COLOR_GRADIENT_OVER_BLUE3.g, Colors.COLOR_GRADIENT_OVER_BLUE3.b, 0.15f);
    }

    public Color getColorHover2() {
        return new Color(Colors.COLOR_GRADIENT_OVER_BLUE3.r, Colors.COLOR_GRADIENT_OVER_BLUE3.g, Colors.COLOR_GRADIENT_OVER_BLUE3.b, 0.5f);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getSFX() {
        return SoundsManager.DIPLOMACY_CLICK;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setText(String str) {
        this.sLines.clear();
        this.iLineSize = 0;
        this.iLinesWidth.clear();
        String str2 = cIUGJCqyPXfp.PPewbl;
        String[] strArrSplit = str.split(str2);
        int width = getWidth() - (CFG.PADDING * 2);
        int length = strArrSplit.length;
        int i = 0;
        String str3 = "";
        for (int i2 = 0; i2 < length; i2++) {
            Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), strArrSplit[i2] + str2);
            this.iTextWidth = (int) Renderer.glyphLayout.width;
            i += this.iTextWidth;
            if (i < width) {
                str3 = str3 + strArrSplit[i2] + str2;
            } else {
                if (str3.length() <= 1) {
                    this.sLines.add(strArrSplit[i2] + str2);
                    str3 = "";
                } else {
                    this.sLines.add(str3);
                    str3 = strArrSplit[i2] + str2;
                }
                i = this.iTextWidth;
            }
        }
        if (str3.length() > 0) {
            this.sLines.add(str3);
        }
        if (this.sLines.size() > 0 && this.sLines.get(0).length() > 0) {
            Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), this.sLines.get(0));
            this.iTextHeight = (int) Renderer.glyphLayout.height;
        }
        this.iLineSize = this.sLines.size();
        for (int i3 = 0; i3 < this.iLineSize; i3++) {
            Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), this.sLines.get(i3));
            this.iLinesWidth.add(Integer.valueOf((int) Renderer.glyphLayout.width));
        }
        this.iY_Text = (this.iconH + ((getHeight() - this.iconH) / 2)) - (((this.iTextHeight * this.iLineSize) + ((CFG.PADDING * 2) * (this.iLineSize - 1))) / 2);
    }
}
