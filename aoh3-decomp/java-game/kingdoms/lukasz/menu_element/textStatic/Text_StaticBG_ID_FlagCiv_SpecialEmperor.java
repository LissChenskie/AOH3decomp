package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.MenuElement_Type;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Text_StaticBG_ID_FlagCiv_SpecialEmperor extends Text_StaticBG {
    public int iTextH;
    public int iTextW;
    public int id;
    public String text;

    public Text_StaticBG_ID_FlagCiv_SpecialEmperor(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        super(str2, i, i2, i3, i4, i5, i6);
        this.typeOfElement = MenuElement_Type.BUTTON_FLAG;
        this.id = i7;
        this.text = str;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(i), str);
        this.iTextW = (int) Renderer.glyphLayout.width;
        this.iTextH = (int) Renderer.glyphLayout.height;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static, aoc.kingdoms.lukasz.menu_element.MenuElement
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, (getIsHovered() || z) ? 0.5f : 0.3f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        Game.getCiv(this.id).getFlag().draw(spriteBatch, (CFG.PADDING * 2) + getPosX() + i, ((getPosY() + (getHeight() / 2)) - (ImageManager.getImage(Images.flag_rect).getHeight() / 2)) + i2, ImageManager.getImage(Images.flag_rect).getWidth(), ImageManager.getImage(Images.flag_rect).getHeight());
        ImageManager.getImage(Images.flag_rect).draw(spriteBatch, getPosX() + i + (CFG.PADDING * 2), ((getPosY() + (getHeight() / 2)) - (ImageManager.getImage(Images.flag_rect).getHeight() / 2)) + i2);
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, this.text, getPosX() + (CFG.PADDING * 4) + ImageManager.getImage(Images.flag_rect).getWidth() + i, ((getPosY() + (getHeight() / 2)) - (this.iTextH / 2)) + i2, getColor2(z));
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, this.sText, getPosX() + (CFG.PADDING * 4) + this.iTextW + ImageManager.getImage(Images.flag_rect).getWidth() + i, ((getPosY() + (getHeight() / 2)) - (this.iTextH / 2)) + i2, getColor(z));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
    protected Color getColor(boolean z) {
        return Colors.getColorButtonHover2(z, getIsHovered());
    }

    public Color getColor2(boolean z) {
        return Colors.getColorButtonHover(z, getIsHovered());
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static, aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getCurrent() {
        return this.id;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setIsHovered(boolean z) {
        super.setIsHovered(z);
        if (z) {
            ProvinceDraw.drawProvincesCiv_HoveredFlagID = this.id;
        }
    }
}
