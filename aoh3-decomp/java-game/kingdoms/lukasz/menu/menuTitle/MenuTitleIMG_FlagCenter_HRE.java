package aoc.kingdoms.lukasz.menu.menuTitle;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GlyphLayout_Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MenuTitleIMG_FlagCenter_HRE extends MenuTitleIMG {
    public int allianceID;
    public int flagHeight;
    public int flagWidth;
    public int iText2Width;
    public String sText2;

    public MenuTitleIMG_FlagCenter_HRE(int i, String str, String str2, boolean z, boolean z2, int i2) {
        super(str, z, z2, i2);
        this.iText2Width = 0;
        this.allianceID = i;
        this.fontID = CFG.FONT_BOLD;
        this.sText2 = str2;
        int height = getHeight() - Images.boxTitleBORDERWIDTH;
        this.flagHeight = height;
        this.flagWidth = (int) (CFG.CIV_FLAG_WIDTH * (height / CFG.CIV_FLAG_HEIGHT));
        GlyphLayout_Game glyphLayout_Game = new GlyphLayout_Game();
        glyphLayout_Game.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), str2);
        this.iText2Width = (int) glyphLayout_Game.width;
    }

    @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG, aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
    public void draw(SpriteBatch spriteBatch, int i, int i2, int i3, Status status) {
        super.draw(spriteBatch, i, i2, i3, status);
        try {
            spriteBatch.setShader(Renderer.shaderAlpha);
            Game.alliancesSpecial_Flag.get(this.allianceID).getTexture().bind(1);
            Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 1.0f));
            ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, i + Images.boxTitleBORDERWIDTH, (i2 - getHeight()) + Images.boxTitleBORDERWIDTH, this.flagWidth, this.flagHeight);
            spriteBatch.setColor(Color.WHITE);
            spriteBatch.flush();
            spriteBatch.setShader(Renderer.shaderDefault);
            spriteBatch.setShader(Renderer.shaderAlpha);
            ImageManager.getImage(Images.titleFlagOver).getTexture().bind(1);
            Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.75f));
            ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, i, (i2 - getHeight()) + Images.boxTitleBORDERWIDTH, this.flagWidth, this.flagHeight);
            spriteBatch.setColor(Color.WHITE);
            spriteBatch.flush();
            spriteBatch.setShader(Renderer.shaderDefault);
        } catch (Exception unused) {
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
    public void drawText(SpriteBatch spriteBatch, int i, int i2, int i3, Status status) {
        int i4 = i + (i3 / 2);
        int i5 = i2 + 1;
        Renderer.drawText(spriteBatch, this.fontID, getText(), i4 - (getTextWidth() / 2), ((getHeight() / 2) - getTextHeight()) + (i5 - getHeight()), getColorText(status));
        Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, this.sText2, i4 - (this.iText2Width / 2), (i5 - getHeight()) + (getHeight() / 2) + CFG.PADDING, MenuTitle.colorHovered);
    }

    public int getFlagCivID() {
        return 0;
    }
}
