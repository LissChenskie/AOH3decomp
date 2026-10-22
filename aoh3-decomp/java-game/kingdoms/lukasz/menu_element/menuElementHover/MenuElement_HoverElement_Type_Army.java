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
public class MenuElement_HoverElement_Type_Army implements MenuElement_HoverElement_Type {
    public int attackIconHeight;
    public int attackIconWidth;
    public int defenseIconHeight;
    public int defenseIconWidth;
    public int iArmyID;
    public int iAttackWidth;
    public int iCivID;
    public int iDefenseWidth;
    public int iTextNameWidth;
    public int iTextWidth;
    public int iUnitTypeID;
    public String sText;
    public String sTextName;

    public MenuElement_HoverElement_Type_Army(String str, int i, int i2, int i3) {
        this.iUnitTypeID = i;
        this.iArmyID = i2;
        this.iCivID = i3;
        this.sText = str;
        this.sTextName = ArmyManager.lArmy.get(this.iUnitTypeID).get(this.iArmyID).Name;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), this.sText);
        this.iTextWidth = (int) Renderer.glyphLayout.width;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_BOLD_SMALL), this.sTextName);
        this.iTextNameWidth = (int) Renderer.glyphLayout.width;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_BOLD_SMALL), "" + ArmyManager.lArmy.get(this.iUnitTypeID).get(this.iArmyID).getAttack(i3));
        this.iAttackWidth = (int) Renderer.glyphLayout.width;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_BOLD_SMALL), "" + ArmyManager.lArmy.get(this.iUnitTypeID).get(this.iArmyID).getDefense(i3));
        this.iDefenseWidth = (int) Renderer.glyphLayout.width;
        float imageScale = getImageScale(Images.attack);
        this.attackIconWidth = (int) (ImageManager.getImage(Images.attack).getWidth() * imageScale);
        this.attackIconHeight = (int) (ImageManager.getImage(Images.attack).getHeight() * imageScale);
        this.defenseIconWidth = (int) (ImageManager.getImage(Images.defense).getWidth() * imageScale);
        this.defenseIconHeight = (int) (ImageManager.getImage(Images.defense).getHeight() * imageScale);
    }

    private final float getImageScale(int i) {
        return CFG.TEXT_HEIGHT / ImageManager.getImage(i).getHeight();
    }

    public static int getStatsHeight() {
        return (CFG.TEXT_HEIGHT_SMALL * 2) + (CFG.PADDING * 3);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public void draw(SpriteBatch spriteBatch, int i, int i2, float f, int i3) {
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f));
        ArmyManager.armyImages.get(ArmyManager.lArmy.get(this.iUnitTypeID).get(this.iArmyID).ImageID).draw(spriteBatch, i, i2, ImageManager.getImage(Images.unitsFrame).getWidth(), ImageManager.getImage(Images.unitsFrame).getHeight());
        ImageManager.getImage(Images.unitsFrame).draw(spriteBatch, i, i2);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.5f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i, i2 + ImageManager.getImage(Images.unitsFrame).getHeight(), getWidth(), getStatsHeight());
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i, i2 + ImageManager.getImage(Images.unitsFrame).getHeight(), 1, getStatsHeight());
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, (getWidth() + i) - 1, i2 + ImageManager.getImage(Images.unitsFrame).getHeight(), 1, getStatsHeight());
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.75f));
        Images.gradientFull.draw(spriteBatch, i, (((ImageManager.getImage(Images.unitsFrame).getHeight() + i2) - 2) - (CFG.PADDING * 2)) - CFG.TEXT_HEIGHT_SMALL, this.iAttackWidth + (CFG.PADDING * 5) + this.attackIconWidth, (CFG.PADDING * 2) + CFG.TEXT_HEIGHT_SMALL);
        Images.gradientFull.draw(spriteBatch, (((getWidth() + i) - (CFG.PADDING * 5)) - this.iDefenseWidth) - this.defenseIconWidth, (((ImageManager.getImage(Images.unitsFrame).getHeight() + i2) - 2) - (CFG.PADDING * 2)) - CFG.TEXT_HEIGHT_SMALL, this.iDefenseWidth + this.iDefenseWidth + (CFG.PADDING * 5), CFG.TEXT_HEIGHT_SMALL + (CFG.PADDING * 2));
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.6f));
        Images.gradientXY.draw(spriteBatch, i, (((ImageManager.getImage(Images.unitsFrame).getHeight() + i2) - 2) - (CFG.PADDING * 2)) - CFG.TEXT_HEIGHT_SMALL, this.iAttackWidth + (CFG.PADDING * 5) + this.attackIconWidth, (CFG.PADDING * 2) + CFG.TEXT_HEIGHT_SMALL);
        Images.gradientXY.draw(spriteBatch, (((getWidth() + i) - (CFG.PADDING * 5)) - this.iDefenseWidth) - this.defenseIconWidth, (((ImageManager.getImage(Images.unitsFrame).getHeight() + i2) - 2) - (CFG.PADDING * 2)) - CFG.TEXT_HEIGHT_SMALL, this.iDefenseWidth + this.iDefenseWidth + (CFG.PADDING * 5), CFG.TEXT_HEIGHT_SMALL + (CFG.PADDING * 2));
        spriteBatch.setColor(Color.WHITE);
        Renderer.drawTextWithShadow(spriteBatch, CFG.FONT_BOLD_SMALL, this.sTextName, ((getWidth() / 2) + i) - (this.iTextNameWidth / 2), CFG.PADDING + ImageManager.getImage(Images.unitsFrame).getHeight() + i2, Colors.HOVER_GOLD);
        Renderer.drawTextWithShadow(spriteBatch, CFG.FONT_REGULAR_SMALL, this.sText, ((getWidth() / 2) + i) - (this.iTextWidth / 2), CFG.TEXT_HEIGHT_SMALL + ImageManager.getImage(Images.unitsFrame).getHeight() + i2 + (CFG.PADDING * 2), Colors.BUTTON_TEXT);
        ImageManager.getImage(Images.attack).draw(spriteBatch, i + (CFG.PADDING * 2), ((((ImageManager.getImage(Images.unitsFrame).getHeight() + i2) - 2) - (CFG.TEXT_HEIGHT_SMALL / 2)) - (this.attackIconHeight / 2)) - CFG.PADDING, this.attackIconWidth, this.attackIconHeight);
        ImageManager.getImage(Images.defense).draw(spriteBatch, ((getWidth() + i) - (CFG.PADDING * 2)) - this.defenseIconWidth, ((((ImageManager.getImage(Images.unitsFrame).getHeight() + i2) - 2) - (CFG.TEXT_HEIGHT_SMALL / 2)) - (this.defenseIconHeight / 2)) - CFG.PADDING, this.defenseIconWidth, this.defenseIconHeight);
        Renderer.drawTextWithShadow(spriteBatch, CFG.FONT_BOLD_SMALL, "" + ArmyManager.lArmy.get(this.iUnitTypeID).get(this.iArmyID).getAttack(this.iCivID), this.attackIconWidth + (CFG.PADDING * 3) + i, (((ImageManager.getImage(Images.unitsFrame).getHeight() + i2) - 2) - CFG.TEXT_HEIGHT_SMALL) - CFG.PADDING, Colors.HOVER_IMPORTANT);
        Renderer.drawTextWithShadow(spriteBatch, CFG.FONT_BOLD_SMALL, "" + ArmyManager.lArmy.get(this.iUnitTypeID).get(this.iArmyID).getDefense(this.iCivID), (((getWidth() + i) - (CFG.PADDING * 3)) - this.iDefenseWidth) - this.defenseIconWidth, (((ImageManager.getImage(Images.unitsFrame).getHeight() + i2) - 2) - CFG.TEXT_HEIGHT_SMALL) - CFG.PADDING, Colors.HOVER_IMPORTANT);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getHeight() {
        return ImageManager.getImage(Images.unitsFrame).getHeight() + getStatsHeight();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getWidth() {
        return ImageManager.getImage(Images.unitsFrame).getWidth();
    }
}
