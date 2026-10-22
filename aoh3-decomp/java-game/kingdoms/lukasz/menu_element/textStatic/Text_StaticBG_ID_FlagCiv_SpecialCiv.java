package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.MenuElement_Type;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Text_StaticBG_ID_FlagCiv_SpecialCiv extends Text_StaticBG {
    public static int img;
    public static int imgH;
    public static int imgW;
    public int iTextH;
    public int iTextW;
    public int id;
    public String text;

    public Text_StaticBG_ID_FlagCiv_SpecialCiv(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, String str2) {
        super(str, i, i2, i3, i4, i5, i6);
        this.typeOfElement = MenuElement_Type.BUTTON_FLAG;
        this.id = i7;
        float imageScale = getImageScale(Images.gold);
        this.text = str2;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), str2);
        this.iTextW = (int) Renderer.glyphLayout.width;
        this.iTextH = (int) Renderer.glyphLayout.height;
        img = i8;
        imgW = (int) (ImageManager.getImage(i8).getWidth() * imageScale);
        imgH = (int) (ImageManager.getImage(i8).getHeight() * imageScale);
    }

    private final float getImageScale(int i) {
        return Math.min(1.0f, (CFG.TEXT_HEIGHT / ImageManager.getImage(i).getHeight()) * 1.15f);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static, aoc.kingdoms.lukasz.menu_element.MenuElement
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, (getIsHovered() || z) ? 0.5f : 0.3f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + CFG.PADDING + i2, getWidth(), getHeight() - (CFG.PADDING * 2), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        Image image = ImageManager.getImage(img);
        int posX = (((getPosX() + getWidth()) - (CFG.PADDING * 2)) - imgW) + i;
        int posY = getPosY() + (getHeight() / 2);
        int i3 = imgH;
        image.draw(spriteBatch, posX, (posY - (i3 / 2)) + i2, imgW, i3);
        Renderer.drawTextWithShadow(spriteBatch, CFG.FONT_REGULAR_SMALL, this.text, ((((getPosX() + getWidth()) - (CFG.PADDING * 3)) - this.iTextW) - imgW) + i, ((getPosY() + (getHeight() / 2)) - (this.iTextH / 2)) + i2, getColor2(z));
        Game.getCiv(this.id).getFlag().draw(spriteBatch, (CFG.PADDING * 2) + getPosX() + i, ((getPosY() + (getHeight() / 2)) - (ImageManager.getImage(Images.flag_rect).getHeight() / 2)) + i2, ImageManager.getImage(Images.flag_rect).getWidth(), ImageManager.getImage(Images.flag_rect).getHeight());
        ImageManager.getImage(Images.flag_rect).draw(spriteBatch, getPosX() + i + (CFG.PADDING * 2), ((getPosY() + (getHeight() / 2)) - (ImageManager.getImage(Images.flag_rect).getHeight() / 2)) + i2);
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, this.sText, getPosX() + (CFG.PADDING * 4) + ImageManager.getImage(Images.flag_rect).getWidth() + i, getPosY() + ((getHeight() - CFG.TEXT_HEIGHT) / 2) + i2, getColor(z));
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
