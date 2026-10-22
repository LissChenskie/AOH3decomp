package aoc.kingdoms.lukasz.menu_element.menuElementHover;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.army.ArmyManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MenuElement_HoverElement_Type_BattleArmyPerc extends MenuElement_HoverElement_Type_BattleArmy {
    public float fPerc;

    public MenuElement_HoverElement_Type_BattleArmyPerc(String str, int i, int i2, int i3, float f) {
        super(str, i, i2, i3);
        this.fPerc = Math.min(f, 1.0f);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_BattleArmy, aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public void draw(SpriteBatch spriteBatch, int i, int i2, float f, int i3) {
        int i4 = i + this.offsetLeft;
        int i5 = i2 + CFG.PADDING;
        Renderer.clipView_Start(spriteBatch, i4, CFG.GAME_HEIGHT - i5, ImageManager.getImage(Images.unitsFrameBattle).getWidth(), -ImageManager.getImage(Images.unitsFrameBattle).getHeight());
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f));
        ArmyManager.armyImages.get(ArmyManager.lArmy.get(this.iUnitTypeID).get(this.iArmyID).ImageID).draw(spriteBatch, (ImageManager.getImage(Images.unitsFrameBattle).getWidth() / 2) + (i4 - (this.unitImgWidth / 2)), i5, this.unitImgWidth, ImageManager.getImage(Images.unitsFrameBattle).getHeight());
        Renderer.clipView_End(spriteBatch);
        ImageManager.getImage(Images.unitsFrameBattle).draw(spriteBatch, i4, i5);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.5f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i4, i5 + ImageManager.getImage(Images.unitsFrameBattle).getHeight(), ImageManager.getImage(Images.unitsFrameBattle).getWidth(), getStatsHeight());
        if (this.fPerc >= 0.0f) {
            spriteBatch.setColor(new Color(Colors.HOVER_POSITIVE.r, Colors.HOVER_POSITIVE.g, Colors.HOVER_POSITIVE.b, 0.8f));
            int i6 = i4 + 1;
            int i7 = i5 - 1;
            Images.pix.draw(spriteBatch, i6, i7 + ImageManager.getImage(Images.unitsFrameBattle).getHeight(), (int) ((ImageManager.getImage(Images.unitsFrameBattle).getWidth() - 2) * this.fPerc), CFG.PADDING / 2);
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.5f));
            ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i6, i7 + ImageManager.getImage(Images.unitsFrameBattle).getHeight(), ImageManager.getImage(Images.unitsFrameBattle).getWidth() - 2, CFG.PADDING / 2);
        }
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.5f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i4, i5 + ImageManager.getImage(Images.unitsFrameBattle).getHeight(), 1, getStatsHeight());
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, (ImageManager.getImage(Images.unitsFrameBattle).getWidth() + i4) - 1, i5 + ImageManager.getImage(Images.unitsFrameBattle).getHeight(), 1, getStatsHeight());
        spriteBatch.setColor(Color.WHITE);
        Renderer.drawTextWithShadow(spriteBatch, CFG.FONT_REGULAR_SMALL, this.sText, (i4 + (ImageManager.getImage(Images.unitsFrameBattle).getWidth() / 2)) - (this.iTextWidth / 2), i5 + ImageManager.getImage(Images.unitsFrameBattle).getHeight() + CFG.PADDING, Colors.BUTTON_TEXT);
    }
}
