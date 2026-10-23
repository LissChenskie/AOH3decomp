package aoc.kingdoms.lukasz.menu.menuTitle;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GlyphLayout_Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MenuTitleIMG_Terrain extends MenuTitleIMG {
    public int flagHeight;
    public int flagWidth;
    public int iText2Height;
    public int iText2Width;
    public String sText2;
    public int terrainID;
    public int terrainID2;

    public MenuTitleIMG_Terrain(String str, String str2, boolean z, boolean z2, int i, int i2, int i3) {
        super(str, z, z2, i);
        this.iText2Width = 0;
        this.terrainID = i2;
        this.terrainID2 = i3 % Game.terrainManager.terrainImages.get(i2).size();
        this.fontID = CFG.FONT_BOLD;
        this.sText2 = str2;
        GlyphLayout_Game glyphLayout_Game = new GlyphLayout_Game();
        glyphLayout_Game.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), str2);
        this.iText2Width = (int) glyphLayout_Game.width;
        this.iText2Height = (int) glyphLayout_Game.height;
        int height = getHeight() - Images.boxTitleBORDERWIDTH;
        this.flagHeight = height;
        this.flagWidth = (int) (Game.terrainManager.terrainImages.get(i2).get(this.terrainID2).getWidth() * (height / Game.terrainManager.terrainImages.get(i2).get(this.terrainID2).getHeight()));
    }

    @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG, aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
    public void draw(SpriteBatch spriteBatch, int i, int i2, int i3, Status status) {
        ImageManager.getImage(this.imageID).draw(spriteBatch, i, i2 - getHeight(), i3, getHeight());
        drawGradient(spriteBatch, i, i2, i3, status);
        try {
            spriteBatch.setShader(Renderer.shaderAlpha);
            Game.terrainManager.terrainImages.get(this.terrainID).get(this.terrainID2).getTexture().bind(1);
            Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 1.0f));
            ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, i, (i2 - getHeight()) + Images.boxTitleBORDERWIDTH, this.flagWidth, this.flagHeight);
            Images.gradientXY.draw(spriteBatch, i, (i2 - getHeight()) + Images.boxTitleBORDERWIDTH, this.flagWidth, this.flagHeight);
            spriteBatch.setColor(Color.WHITE);
            spriteBatch.flush();
            spriteBatch.setShader(Renderer.shaderDefault);
        } catch (IndexOutOfBoundsException unused) {
        }
        drawText(spriteBatch, i, i2, i3, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
    public void drawText(SpriteBatch spriteBatch, int i, int i2, int i3, Status status) {
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f));
        int i4 = i2 + 1;
        Renderer.drawBox(spriteBatch, Images.statsRectBG, i + CFG.PADDING, (i4 - this.iText2Height) - (CFG.PADDING * 3), (CFG.PADDING * 2) + this.iText2Width, (CFG.PADDING * 2) + this.iText2Height, 1.0f);
        spriteBatch.setColor(Color.WHITE);
        Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, this.sText2, i + (CFG.PADDING * 2), (i4 - this.iText2Height) - (CFG.PADDING * 2), MenuTitle.colorHovered);
        int i5 = i + (i3 / 2);
        Renderer.drawText(spriteBatch, this.fontID, getText(), i5 - (getTextWidth() / 2), ((getHeight() / 2) - getTextHeight()) + (i4 - getHeight()), getColorText(status));
        Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, InGame_Battle.sDay, i5 - (InGame_Battle.iDayWidth / 2), (i4 - getHeight()) + (getHeight() / 2) + CFG.PADDING, MenuTitle.colorHovered);
    }
}
