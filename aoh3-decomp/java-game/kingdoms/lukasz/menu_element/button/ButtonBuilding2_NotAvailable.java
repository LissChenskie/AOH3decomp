package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GlyphLayout_Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.BuildingsManager;
import aoc.kingdoms.lukasz.map.technology.TechnologyTree;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonBuilding2_NotAvailable extends ButtonBuilding2 {
    public int iTitleHeight;
    public int iTitleWidth;
    public int iTitleWidth2;
    public String sTitle;
    public String sTitle2;

    public ButtonBuilding2_NotAvailable(int i, boolean z, int i2, int i3, int i4, int i5, int i6, boolean z2, boolean z3, boolean z4, boolean z5) {
        super(i, z, i2, i3, i4, i5, i6, z2);
        this.sTitle2 = "";
        try {
            GlyphLayout_Game glyphLayout_Game = new GlyphLayout_Game();
            if (z3) {
                this.sTitle = Game.lang.get("RequiredTechnology");
                glyphLayout_Game.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), this.sTitle);
                this.iTitleWidth = (int) glyphLayout_Game.width;
                this.iTitleHeight = (int) glyphLayout_Game.height;
                this.sTitle2 = TechnologyTree.lTechnology.get(BuildingsManager.buildings.get(i2).RequiredTechID[i3]).Name;
                glyphLayout_Game.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), this.sTitle2);
                this.iTitleWidth2 = (int) glyphLayout_Game.width;
            } else if (z4 && BuildingsManager.buildings.get(i2).RequiredReligionID >= 0) {
                this.sTitle = Game.lang.get("Religion");
                glyphLayout_Game.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), this.sTitle);
                this.iTitleWidth = (int) glyphLayout_Game.width;
                this.iTitleHeight = (int) glyphLayout_Game.height;
                this.sTitle2 = Game.religionManager.getReligion(BuildingsManager.buildings.get(i2).RequiredReligionID).Name;
                glyphLayout_Game.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), this.sTitle2);
                this.iTitleWidth2 = (int) glyphLayout_Game.width;
            } else if (!z4 || BuildingsManager.buildings.get(i2).RequiredGovernmentID < 0) {
                this.sTitle = Game.lang.get("RequiredBuilding");
                glyphLayout_Game.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), this.sTitle);
                this.iTitleWidth = (int) glyphLayout_Game.width;
                this.iTitleHeight = (int) glyphLayout_Game.height;
                this.sTitle2 = BuildingsManager.buildings.get(i2).Name[Math.max(0, i3 - 1)];
                glyphLayout_Game.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), this.sTitle2);
                this.iTitleWidth2 = (int) glyphLayout_Game.width;
            } else {
                this.sTitle = Game.lang.get("Government");
                glyphLayout_Game.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), this.sTitle);
                this.iTitleWidth = (int) glyphLayout_Game.width;
                this.iTitleHeight = (int) glyphLayout_Game.height;
                this.sTitle2 = Game.ideologiesManager.getIdeology(BuildingsManager.buildings.get(i2).RequiredGovernmentID).Name;
                glyphLayout_Game.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), this.sTitle2);
                this.iTitleWidth2 = (int) glyphLayout_Game.width;
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonBuilding2
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        super.drawText(spriteBatch, i, i2, z);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.5f));
        Images.pix.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, 0.6f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, 0.9f));
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight() / 2);
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + (getHeight() / 2) + i2, getWidth(), getHeight() / 2, false, true);
        spriteBatch.setColor(Color.WHITE);
        Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, this.sTitle, ((getPosX() + (getWidth() / 2)) - (this.iTitleWidth / 2)) + i, (((getPosY() + (getHeight() / 2)) - this.iTitleHeight) - CFG.PADDING) + i2, Colors.HOVER_RIGHT);
        Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, this.sTitle2, ((getPosX() + (getWidth() / 2)) - (this.iTitleWidth2 / 2)) + i, getPosY() + (getHeight() / 2) + CFG.PADDING + i2, Colors.HOVER_RIGHT2);
    }
}
