package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Text_Title_BattleLine extends Text_Title_v2 {
    public int activeLine;

    public Text_Title_BattleLine(String str, int i, int i2, int i3, int i4, int i5, int i6) {
        super(str, CFG.FONT_BOLD, i, i2, i3, i4, i5);
        this.activeLine = i6;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2
    public void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.325f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.15f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), false, true);
        spriteBatch.setColor(Color.WHITE);
        int width = ImageManager.getImage(Images.battleArmy1).getWidth() + (CFG.PADDING * 2);
        int i3 = 0;
        while (true) {
            if (i3 >= 2) {
                break;
            }
            spriteBatch.setColor(new Color(Game.getCiv(Game.player.iCivID).getR(), Game.getCiv(Game.player.iCivID).getG(), Game.getCiv(Game.player.iCivID).getB(), 1 == this.activeLine ? 1.0f : 0.225f));
            Images.pix.draw(spriteBatch, ((getPosX() + getWidth()) - width) + i, getPosY() + CFG.PADDING + i2, ImageManager.getImage(Images.battleArmy0).getWidth(), ImageManager.getImage(Images.battleArmy0).getHeight());
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.2f));
            ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, ((getPosX() + getWidth()) - width) + i, getPosY() + CFG.PADDING + i2, ImageManager.getImage(Images.battleArmy0).getWidth(), ImageManager.getImage(Images.battleArmy0).getHeight());
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 1 == this.activeLine ? 1.0f : 0.4f));
            ImageManager.getImage(Images.battleArmy1).draw(spriteBatch, ((getPosX() + getWidth()) - width) + i, getPosY() + CFG.PADDING + i2);
            width += ImageManager.getImage(Images.battleArmy0).getWidth() + (CFG.PADDING / 2);
            i3++;
        }
        for (int i4 = 0; i4 < 6; i4++) {
            spriteBatch.setColor(new Color(Game.getCiv(Game.player.iCivID).getR(), Game.getCiv(Game.player.iCivID).getG(), Game.getCiv(Game.player.iCivID).getB(), this.activeLine == 0 ? 1.0f : 0.225f));
            Images.pix.draw(spriteBatch, ((getPosX() + getWidth()) - width) + i, getPosY() + CFG.PADDING + i2, ImageManager.getImage(Images.battleArmy0).getWidth(), ImageManager.getImage(Images.battleArmy0).getHeight());
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.2f));
            ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, ((getPosX() + getWidth()) - width) + i, getPosY() + CFG.PADDING + i2, ImageManager.getImage(Images.battleArmy0).getWidth(), ImageManager.getImage(Images.battleArmy0).getHeight());
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, this.activeLine == 0 ? 1.0f : 0.4f));
            ImageManager.getImage(Images.battleArmy0).draw(spriteBatch, ((getPosX() + getWidth()) - width) + i, getPosY() + CFG.PADDING + i2);
            width += ImageManager.getImage(Images.battleArmy0).getWidth() + (CFG.PADDING / 2);
        }
        for (int i5 = 0; i5 < 2; i5++) {
            spriteBatch.setColor(new Color(Game.getCiv(Game.player.iCivID).getR(), Game.getCiv(Game.player.iCivID).getG(), Game.getCiv(Game.player.iCivID).getB(), 1 == this.activeLine ? 1.0f : 0.225f));
            Images.pix.draw(spriteBatch, ((getPosX() + getWidth()) - width) + i, getPosY() + CFG.PADDING + i2, ImageManager.getImage(Images.battleArmy0).getWidth(), ImageManager.getImage(Images.battleArmy0).getHeight());
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.2f));
            ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, ((getPosX() + getWidth()) - width) + i, getPosY() + CFG.PADDING + i2, ImageManager.getImage(Images.battleArmy0).getWidth(), ImageManager.getImage(Images.battleArmy0).getHeight());
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 1 == this.activeLine ? 1.0f : 0.4f));
            ImageManager.getImage(Images.battleArmy1).draw(spriteBatch, ((getPosX() + getWidth()) - width) + i, getPosY() + CFG.PADDING + i2);
            width += ImageManager.getImage(Images.battleArmy0).getWidth() + (CFG.PADDING / 2);
        }
        int width2 = ImageManager.getImage(Images.battleArmy1).getWidth() + (CFG.PADDING * 2);
        for (int i6 = 0; i6 < 10; i6++) {
            spriteBatch.setColor(new Color(Game.getCiv(Game.player.iCivID).getR(), Game.getCiv(Game.player.iCivID).getG(), Game.getCiv(Game.player.iCivID).getB(), 2 == this.activeLine ? 1.0f : 0.225f));
            Images.pix.draw(spriteBatch, ((getPosX() + getWidth()) - width2) + i, getPosY() + (CFG.PADDING * 2) + ImageManager.getImage(Images.battleArmy0).getHeight() + i2, ImageManager.getImage(Images.battleArmy0).getWidth(), ImageManager.getImage(Images.battleArmy0).getHeight());
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.2f));
            ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, ((getPosX() + getWidth()) - width2) + i, getPosY() + CFG.PADDING + i2, ImageManager.getImage(Images.battleArmy0).getWidth(), ImageManager.getImage(Images.battleArmy0).getHeight());
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 2 == this.activeLine ? 1.0f : 0.4f));
            ImageManager.getImage(Images.battleArmy2).draw(spriteBatch, ((getPosX() + getWidth()) - width2) + i, getPosY() + (CFG.PADDING * 2) + ImageManager.getImage(Images.battleArmy0).getHeight() + i2);
            width2 += ImageManager.getImage(Images.battleArmy0).getWidth() + (CFG.PADDING / 2);
        }
        spriteBatch.setColor(Color.WHITE);
        super.drawText(spriteBatch, i, i2, z, z2);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
    protected Color getColor(boolean z) {
        return Colors.getColorTopStats2(z, getIsHovered());
    }
}
