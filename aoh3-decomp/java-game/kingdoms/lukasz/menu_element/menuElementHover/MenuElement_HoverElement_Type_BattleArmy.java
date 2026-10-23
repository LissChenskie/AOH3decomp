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
public class MenuElement_HoverElement_Type_BattleArmy implements MenuElement_HoverElement_Type {
    public int iArmyID;
    public int iTextWidth;
    public int iUnitTypeID;
    public int offsetLeft;
    public String sText;
    public int unitImgWidth;

    public MenuElement_HoverElement_Type_BattleArmy(String str, int i, int i2, int i3) {
        this.unitImgWidth = 0;
        this.sText = CFG.getNumberWithSpaces(str);
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), this.sText);
        this.iTextWidth = (int) Renderer.glyphLayout.width;
        this.iUnitTypeID = i;
        this.iArmyID = i2;
        this.offsetLeft = i3;
        this.unitImgWidth = (int) (ArmyManager.armyImages.get(ArmyManager.lArmy.get(this.iUnitTypeID).get(this.iArmyID).ImageID).getWidth() * (ImageManager.getImage(Images.unitsFrameBattle).getHeight() / ArmyManager.armyImages.get(ArmyManager.lArmy.get(this.iUnitTypeID).get(this.iArmyID).ImageID).getHeight()));
    }

    public static int getStatsHeight() {
        return CFG.TEXT_HEIGHT_SMALL + (CFG.PADDING * 2);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public void draw(SpriteBatch spriteBatch, int i, int i2, float f, int i3) {
        int i4 = i + this.offsetLeft;
        int i5 = i2 + CFG.PADDING;
        Renderer.clipView_Start(spriteBatch, i4, CFG.GAME_HEIGHT - i5, ImageManager.getImage(Images.unitsFrameBattle).getWidth(), -ImageManager.getImage(Images.unitsFrameBattle).getHeight());
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f));
        ArmyManager.armyImages.get(ArmyManager.lArmy.get(this.iUnitTypeID).get(this.iArmyID).ImageID).draw(spriteBatch, (i4 - (this.unitImgWidth / 2)) + (ImageManager.getImage(Images.unitsFrameBattle).getWidth() / 2), i5, this.unitImgWidth, ImageManager.getImage(Images.unitsFrameBattle).getHeight());
        Renderer.clipView_End(spriteBatch);
        ImageManager.getImage(Images.unitsFrameBattle).draw(spriteBatch, i4, i5);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.5f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i4, i5 + ImageManager.getImage(Images.unitsFrameBattle).getHeight(), ImageManager.getImage(Images.unitsFrameBattle).getWidth(), getStatsHeight());
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i4, i5 + ImageManager.getImage(Images.unitsFrameBattle).getHeight(), 1, getStatsHeight());
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, (ImageManager.getImage(Images.unitsFrameBattle).getWidth() + i4) - 1, i5 + ImageManager.getImage(Images.unitsFrameBattle).getHeight(), 1, getStatsHeight());
        spriteBatch.setColor(Color.WHITE);
        Renderer.drawTextWithShadow(spriteBatch, CFG.FONT_REGULAR_SMALL, this.sText, (i4 + (ImageManager.getImage(Images.unitsFrameBattle).getWidth() / 2)) - (this.iTextWidth / 2), i5 + ImageManager.getImage(Images.unitsFrameBattle).getHeight() + CFG.PADDING, Colors.BUTTON_TEXT);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getHeight() {
        return ImageManager.getImage(Images.unitsFrameBattle).getHeight() + getStatsHeight();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getWidth() {
        return ImageManager.getImage(Images.unitsFrameBattle).getWidth() + this.offsetLeft;
    }
}
