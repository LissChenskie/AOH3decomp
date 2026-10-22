package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.button.Button;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class TextCores extends Button {
    public boolean drawRed;
    public int flagHeight;
    public int flagWidth;
    public int iCivsSize;
    public int iProvinceID;
    public List<Integer> lCivID;

    public TextCores(String str, List<Integer> list, int i, int i2, int i3, int i4, int i5, boolean z) {
        this.lCivID = new ArrayList();
        this.iCivsSize = 0;
        init(str, CFG.FONT_REGULAR_SMALL, 0, i, i2, i3, i4, true, true, false, false);
        this.iProvinceID = i5;
        this.lCivID = list;
        this.iCivsSize = list.size();
        this.drawRed = z;
        this.flagWidth = (int) (CFG.CIV_FLAG_WIDTH * getImageScale());
        this.flagHeight = (int) (CFG.CIV_FLAG_HEIGHT * getImageScale());
    }

    private final float getImageScale() {
        return CFG.TEXT_HEIGHT / CFG.CIV_FLAG_HEIGHT;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        this.menuElementHover = InGame_ProvinceInfo.getHoverCores(this.iProvinceID, true);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        if (this.drawRed) {
            spriteBatch.setColor(new Color(Colors.HOVER_NEGATIVE.r, Colors.HOVER_NEGATIVE.g, Colors.HOVER_NEGATIVE.b, Game.getProvince(this.iProvinceID).getCivID() == Game.player.iCivID ? 0.5f : 0.3f));
            Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        }
        if (this.iCivsSize != Game.getProvince(this.iProvinceID).iCoresSize) {
            this.lCivID.clear();
            for (int i3 = 0; i3 < Game.getProvince(this.iProvinceID).iCoresSize; i3++) {
                this.lCivID.add(Integer.valueOf(Game.getProvince(this.iProvinceID).getCore(i3)));
            }
            this.iCivsSize = this.lCivID.size();
        }
        try {
            if (Game.getProvince(this.iProvinceID).coreCreation != null) {
                spriteBatch.setColor(new Color(ProvinceDraw.progressBar.r, ProvinceDraw.progressBar.g, ProvinceDraw.progressBar.b, 0.5f));
                Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
                spriteBatch.setColor(new Color(ProvinceDraw.progressBar));
                Renderer.drawBoxProgress(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, (int) (getWidth() * (1.0f - (Game.getProvince(this.iProvinceID).coreCreation.daysLeft / Game.getProvince(this.iProvinceID).coreCreation.investTime))), getHeight(), getWidth());
                spriteBatch.setColor(Color.WHITE);
                spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, 0.2f));
                Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
                spriteBatch.setColor(Color.WHITE);
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        if (getIsHovered() || z) {
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 1.0f));
            Renderer.drawBox(spriteBatch, Images.statsRectBGBorder, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
            spriteBatch.setColor(Color.WHITE);
        }
        spriteBatch.setColor(Color.WHITE);
        Renderer.drawText(spriteBatch, this.fontID, getTextToDraw(), getPosX() + CFG.PADDING + i, ((getPosY() + (getHeight() / 2)) - (this.iTextHeight / 2)) + i2, getColor(z));
        for (int i4 = 0; i4 < this.iCivsSize; i4++) {
            try {
                if (this.lCivID.get(i4).intValue() >= 0) {
                    Game.getCiv(this.lCivID.get(i4).intValue()).getFlag().draw(spriteBatch, getPosX() + ((this.flagWidth + CFG.PADDING) * i4) + (CFG.PADDING * 2) + getTextWidth() + i, ((getPosY() + (getHeight() / 2)) - ((int) ((CFG.CIV_FLAG_HEIGHT * getImageScale()) / 2.0f))) + i2, this.flagWidth, this.flagHeight);
                } else {
                    ImageManager.getImage(Images.randomCivilizationFlag).draw(spriteBatch, getPosX() + ((this.flagWidth + CFG.PADDING) * i4) + (CFG.PADDING * 2) + getTextWidth() + i, ((getPosY() + (getHeight() / 2)) - ((int) ((CFG.CIV_FLAG_HEIGHT * getImageScale()) / 2.0f))) + i2, this.flagWidth, this.flagHeight);
                }
            } catch (IndexOutOfBoundsException unused) {
                ImageManager.getImage(Images.randomCivilizationFlag).draw(spriteBatch, getPosX() + ((this.flagWidth + CFG.PADDING) * i4) + (CFG.PADDING * 2) + getTextWidth() + i, ((getPosY() + (getHeight() / 2)) - ((int) ((CFG.CIV_FLAG_HEIGHT * getImageScale()) / 2.0f))) + i2, this.flagWidth, this.flagHeight);
            }
            ImageManager.getImage(Images.flag_rect).draw(spriteBatch, getPosX() + ((this.flagWidth + CFG.PADDING) * i4) + (CFG.PADDING * 2) + getTextWidth() + i, ((getPosY() + (getHeight() / 2)) - ((int) ((CFG.CIV_FLAG_HEIGHT * getImageScale()) / 2.0f))) + i2, this.flagWidth, this.flagHeight);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        return Colors.getColorButtonHover(z, getIsHovered());
    }
}
