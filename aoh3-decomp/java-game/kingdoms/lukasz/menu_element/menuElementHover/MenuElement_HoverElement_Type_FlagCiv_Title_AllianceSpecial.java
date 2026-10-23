package aoc.kingdoms.lukasz.menu_element.menuElementHover;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MenuElement_HoverElement_Type_FlagCiv_Title_AllianceSpecial implements MenuElement_HoverElement_Type {
    private static final int fontID = CFG.FONT_BOLD;
    private static final int fontID2 = CFG.FONT_REGULAR_SMALL;
    private int iAllianceID;
    private int iTextWidthMAX;
    private String sText2;
    private String sTextName;

    public MenuElement_HoverElement_Type_FlagCiv_Title_AllianceSpecial(int i, String str) {
        this.iTextWidthMAX = 0;
        this.iAllianceID = i;
        this.sText2 = str;
        this.sTextName = Game.lang.get(Game.alliancesSpecial.get(i).Name_Alliance);
        Renderer.glyphLayout.setText(Renderer.fontMain.get(fontID), this.sTextName);
        this.iTextWidthMAX = (int) Renderer.glyphLayout.width;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(fontID2), this.sText2);
        this.iTextWidthMAX = Math.max(this.iTextWidthMAX, (int) Renderer.glyphLayout.width);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public void draw(SpriteBatch spriteBatch, int i, int i2, float f, int i3) {
        spriteBatch.setColor(Game.getCiv(Game.alliancesSpecial.get(this.iAllianceID).iLeaderCivID).getRGB(0.65f * f));
        Images.gradientXY.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), i2 - CFG.PADDING, i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), CFG.PADDING + getHeight());
        spriteBatch.setColor(new Color(Colors.HOVER_LINE1.r, Colors.HOVER_LINE1.g, Colors.HOVER_LINE1.b, Colors.HOVER_LINE1.a * f));
        Images.pix.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), (getHeight() + i2) - 1, i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), 1);
        spriteBatch.setColor(new Color(Colors.HOVER_LINE2.r, Colors.HOVER_LINE2.g, Colors.HOVER_LINE2.b, Colors.HOVER_LINE2.a * f));
        Images.pix.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), i2 + getHeight(), i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), 1);
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f));
        spriteBatch.setShader(Renderer.shaderAlpha);
        Game.alliancesSpecial_Flag.get(this.iAllianceID).getTexture().bind(1);
        Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
        ImageManager.getImage(Images.flagMaskDefault).draw(spriteBatch, i + ((ImageManager.getImage(Images.flagOverDefault).getWidth() - ImageManager.getImage(Images.flagMaskDefault).getWidth()) / 2), i2 + ((ImageManager.getImage(Images.flagOverDefault).getHeight() - ImageManager.getImage(Images.flagMaskDefault).getHeight()) / 2), ImageManager.getImage(Images.flagMaskDefault).getWidth(), ImageManager.getImage(Images.flagMaskDefault).getHeight());
        spriteBatch.flush();
        spriteBatch.setShader(Renderer.shaderDefault);
        ImageManager.getImage(Images.flagOverDefault).draw(spriteBatch, i, i2);
        Renderer.drawText(spriteBatch, fontID, this.sTextName, ImageManager.getImage(Images.flagOverDefault).getWidth() + CFG.PADDING + i, (((ImageManager.getImage(Images.flagOverDefault).getHeight() / 2) + i2) - ((int) Math.floor(CFG.PADDING / 2.0f))) - CFG.TEXT_HEIGHT, new Color(Colors.HOVER_TITLE.r, Colors.HOVER_TITLE.g, Colors.HOVER_TITLE.b, Colors.HOVER_TITLE.a * f));
        Renderer.drawText(spriteBatch, fontID2, this.sText2, ImageManager.getImage(Images.flagOverDefault).getWidth() + CFG.PADDING + i, ((int) Math.ceil(CFG.PADDING / 2.0f)) + (ImageManager.getImage(Images.flagOverDefault).getHeight() / 2) + i2, new Color(Colors.HOVER_TITLE_2.r, Colors.HOVER_TITLE_2.g, Colors.HOVER_TITLE_2.b, Colors.HOVER_TITLE_2.a * f));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getHeight() {
        return ImageManager.getImage(Images.flagOverDefault).getHeight() + CFG.PADDING + (CFG.PADDING / 2);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getWidth() {
        return CFG.PADDING + ImageManager.getImage(Images.flagOverDefault).getWidth() + this.iTextWidthMAX + (CFG.PADDING * 2);
    }
}
