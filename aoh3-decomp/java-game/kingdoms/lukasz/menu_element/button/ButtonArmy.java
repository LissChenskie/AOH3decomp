package aoc.kingdoms.lukasz.menu_element.button;

import androidx.lifecycle.livedata.core.jzw.jkEBdieJhbh;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.LanguageManager;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.army.ArmyManager;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Empty;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Center;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonArmy extends Button {
    public float fPerc;
    public int iArmyID;
    public int iAttackWidth;
    public int iCivID;
    public int iDefenseWidth;
    public int iID;
    public int iProvinceID;
    public int iTextNameWidth;
    public int iUnitTypeID;
    public int numOfRegiments;
    public String sTextName;

    public ButtonArmy(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        this.iID = 0;
        init(CFG.getNumberWithSpaces(str), CFG.FONT_REGULAR_SMALL, this.iTextPositionX, i3, i4, getButtonWidth(), getButtonHeight(), true, true, false, false);
        this.iUnitTypeID = i5;
        this.iArmyID = i6;
        this.numOfRegiments = i;
        this.iCivID = i2;
        this.iProvinceID = i8;
        this.iID = i7;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), "" + ArmyManager.lArmy.get(this.iUnitTypeID).get(this.iArmyID).getAttack(i2));
        this.iAttackWidth = (int) Renderer.glyphLayout.width;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), "" + ArmyManager.lArmy.get(this.iUnitTypeID).get(this.iArmyID).getDefense(i2));
        this.iDefenseWidth = (int) Renderer.glyphLayout.width;
        this.sTextName = ArmyManager.lArmy.get(this.iUnitTypeID).get(this.iArmyID).Name;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), this.sTextName);
        this.iTextNameWidth = (int) Renderer.glyphLayout.width;
        int i9 = 0;
        while (this.iTextNameWidth > getWidth() && this.sTextName.length() > 5 && (i9 = i9 + 1) < 100) {
            StringBuilder sb = new StringBuilder();
            String str2 = this.sTextName;
            this.sTextName = sb.append(str2.substring(0, Math.max(1, str2.length() - 3))).append("..").toString();
            Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), this.sTextName);
            this.iTextNameWidth = (int) Renderer.glyphLayout.width;
        }
    }

    public ButtonArmy(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, float f) {
        this.iID = 0;
        init(CFG.getNumberWithSpaces(str), CFG.FONT_REGULAR_SMALL, this.iTextPositionX, i3, i4, getButtonWidth(), getButtonHeight(), true, true, false, false);
        this.iUnitTypeID = i5;
        this.iArmyID = i6;
        this.numOfRegiments = i;
        this.iCivID = i2;
        this.iProvinceID = i8;
        this.iID = i7;
        this.fPerc = Math.min(1.0f, f);
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), "" + ArmyManager.lArmy.get(this.iUnitTypeID).get(this.iArmyID).getAttack(i2));
        this.iAttackWidth = (int) Renderer.glyphLayout.width;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), "" + ArmyManager.lArmy.get(this.iUnitTypeID).get(this.iArmyID).getDefense(i2));
        this.iDefenseWidth = (int) Renderer.glyphLayout.width;
        this.sTextName = ArmyManager.lArmy.get(this.iUnitTypeID).get(this.iArmyID).Name;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), this.sTextName);
        this.iTextNameWidth = (int) Renderer.glyphLayout.width;
        int i9 = 0;
        while (this.iTextNameWidth > getWidth() && this.sTextName.length() > 5 && (i9 = i9 + 1) < 100) {
            StringBuilder sb = new StringBuilder();
            String str2 = this.sTextName;
            this.sTextName = sb.append(str2.substring(0, Math.max(1, str2.length() - 3))).append("..").toString();
            Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), this.sTextName);
            this.iTextNameWidth = (int) Renderer.glyphLayout.width;
        }
    }

    public static int getButtonHeight() {
        return ImageManager.getImage(Images.unitsFrameSmall).getHeight() + getStatsHeight();
    }

    public static int getButtonWidth() {
        return ImageManager.getImage(Images.unitsFrameSmall).getWidth();
    }

    public static int getStatsHeight() {
        return (CFG.TEXT_HEIGHT_SMALL * 2) + (CFG.PADDING * 3);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        LanguageManager languageManager;
        String str;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center(this.sTextName, CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Attack") + ": ", "" + ArmyManager.lArmy.get(this.iUnitTypeID).get(this.iArmyID).getAttack(this.iCivID), Images.attack, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Defense") + ": ", "" + ArmyManager.lArmy.get(this.iUnitTypeID).get(this.iArmyID).getDefense(this.iCivID), Images.defense, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MovementSpeed") + ": ", "" + ArmyManager.lArmy.get(this.iUnitTypeID).get(this.iArmyID).MovementSpeed, Images.movementSpeed, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("AttackRange") + ": ", "" + ArmyManager.lArmy.get(this.iUnitTypeID).get(this.iArmyID).AttackRange, Images.attack, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("SiegeAbility") + ": ", "" + CFG.getPrecision2(ArmyManager.lArmy.get(this.iUnitTypeID).get(this.iArmyID).SiegeProgress, 100), Images.siege, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("BattlePosition") + ": ", CFG.FONT_REGULAR_SMALL));
        StringBuilder sb = new StringBuilder("");
        if (ArmyManager.lUnitsTypes.get(this.iUnitTypeID).Line == 0 || ArmyManager.lUnitsTypes.get(this.iUnitTypeID).Line == 1) {
            languageManager = Game.lang;
            str = "FirstLine";
        } else if (ArmyManager.lUnitsTypes.get(this.iUnitTypeID).Line == 2) {
            languageManager = Game.lang;
            str = "Support";
        } else {
            languageManager = Game.lang;
            str = jkEBdieJhbh.oYqJFFe;
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Text(sb.append(languageManager.get(str)).toString(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Manpower") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + getText(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
        if (DiplomacyManager.isAlly(Game.player.iCivID, this.iCivID)) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text("/" + (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE * this.numOfRegiments), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (DiplomacyManager.isAlly(Game.player.iCivID, this.iCivID)) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaintenanceCost") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("XPerMonth", "" + CFG.getPrecision2(ArmyManager.lArmy.get(this.iUnitTypeID).get(this.iArmyID).MaintenanceCost * this.numOfRegiments, 100)), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (this.iProvinceID >= 0 && this.iCivID == Game.player.iCivID) {
            arrayList2.add(new MenuElement_HoverElement_Type_Empty());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (!ArmyManager.lArmy.get(this.iUnitTypeID).get(this.iArmyID).isSettler) {
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("RecruitAndAssignToTheArmy"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
                return;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("EstablishSettlement"), CFG.FONT_BOLD, Game.getProvince(this.iProvinceID).getCivID() == 0 ? Colors.HOVER_GOLD : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ProvinceMustBeUncolonized"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("ThePopulationOfTheProvinceWillBeEqualToTheNumberOfSettlers"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaximumNumberOfSettlers") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getNumberWithSpaces("" + (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE * GameValues.colonization.COLONIZATION_MAX_SETTLERS)), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.population, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        this.menuElementHover = new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        if (getIsHovered() || z) {
            Renderer.drawBoxCorner(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.unitsFrameSmall).getWidth(), ImageManager.getImage(Images.unitsFrameSmall).getHeight());
        }
        ArmyManager.armyImages.get(ArmyManager.lArmy.get(this.iUnitTypeID).get(this.iArmyID).ImageID).draw(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.unitsFrameSmall).getWidth(), ImageManager.getImage(Images.unitsFrameSmall).getHeight());
        if (this.iCivID == Game.player.iCivID && (getIsHovered() || z)) {
            ImageManager.getImage(Images.unitsPlus).draw(spriteBatch, ((getPosX() + (ImageManager.getImage(Images.unitsFrameSmall).getWidth() / 2)) - (ImageManager.getImage(Images.unitsPlus).getWidth() / 2)) + i, ((getPosY() + (ImageManager.getImage(Images.unitsFrameSmall).getHeight() / 2)) - (ImageManager.getImage(Images.unitsPlus).getHeight() / 2)) + i2);
        }
        ImageManager.getImage(Images.unitsFrameSmall).draw(spriteBatch, getPosX() + i, getPosY() + i2);
        if (z) {
            Renderer.drawBoxLineFrame(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.unitsFrameSmall).getWidth(), ImageManager.getImage(Images.unitsFrameSmall).getHeight(), Colors.COLOR_BOX_ACTIVE);
        } else if (getIsHovered()) {
            Renderer.drawBoxLineFrame(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.unitsFrameSmall).getWidth(), ImageManager.getImage(Images.unitsFrameSmall).getHeight(), Colors.COLOR_BOX_HOVER);
        }
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.5f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + i, getPosY() + ImageManager.getImage(Images.unitsFrameSmall).getHeight() + i2, getWidth(), getStatsHeight());
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + ImageManager.getImage(Images.unitsFrameSmall).getHeight() + i2, getWidth(), getStatsHeight(), false, true);
        if (this.fPerc >= 0.0f) {
            if (getIsHovered() || z) {
                spriteBatch.setColor(new Color(Colors.COLOR_BOX_GOLD.r, Colors.COLOR_BOX_GOLD.g, Colors.COLOR_BOX_GOLD.b, 1.0f));
            } else {
                spriteBatch.setColor(new Color(Colors.COLOR_BOX_GOLD.r, Colors.COLOR_BOX_GOLD.g, Colors.COLOR_BOX_GOLD.b, 0.8f));
            }
            Images.pix.draw(spriteBatch, getPosX() + i + 1, ImageManager.getImage(Images.unitsFrameSmall).getHeight() + getPosY() + i2, (int) ((getWidth() - 2) * this.fPerc), CFG.PADDING / 2);
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.5f));
            ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + i + 1, ImageManager.getImage(Images.unitsFrameSmall).getHeight() + getPosY() + i2, getWidth() - 2, CFG.PADDING / 2);
        }
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + i, getPosY() + ImageManager.getImage(Images.unitsFrameSmall).getHeight() + i2, 1, getStatsHeight());
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, ((getPosX() + getWidth()) - 1) + i, getPosY() + ImageManager.getImage(Images.unitsFrameSmall).getHeight() + i2, 1, getStatsHeight());
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.6f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((((getPosY() + ImageManager.getImage(Images.unitsFrameSmall).getHeight()) - 2) - (CFG.PADDING * 2)) - CFG.TEXT_HEIGHT_SMALL) + i2, (CFG.PADDING * 2) + this.iAttackWidth, CFG.TEXT_HEIGHT_SMALL + (CFG.PADDING * 2));
        Images.gradientFull.draw(spriteBatch, (((getPosX() + getWidth()) - (CFG.PADDING * 2)) - this.iDefenseWidth) + i, ((((getPosY() + ImageManager.getImage(Images.unitsFrameSmall).getHeight()) - 2) - (CFG.PADDING * 2)) - CFG.TEXT_HEIGHT_SMALL) + i2, (CFG.PADDING * 2) + this.iDefenseWidth, CFG.TEXT_HEIGHT_SMALL + (CFG.PADDING * 2));
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Renderer.drawTextWithShadow(spriteBatch, CFG.FONT_REGULAR_SMALL, this.sTextName, ((getPosX() + (getWidth() / 2)) - (this.iTextNameWidth / 2)) + i, getPosY() + ImageManager.getImage(Images.unitsFrameSmall).getHeight() + CFG.PADDING + i2, getColor(z));
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, getTextToDraw(), ((getPosX() + (getWidth() / 2)) - (getTextWidth() / 2)) + i, getPosY() + ImageManager.getImage(Images.unitsFrameSmall).getHeight() + (CFG.PADDING * 2) + CFG.TEXT_HEIGHT_SMALL + i2, getColor(z));
        Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, "" + ArmyManager.lArmy.get(this.iUnitTypeID).get(this.iArmyID).getAttack(this.iCivID), getPosX() + CFG.PADDING + i, ((((getPosY() + ImageManager.getImage(Images.unitsFrameSmall).getHeight()) - 2) - CFG.TEXT_HEIGHT_SMALL) - CFG.PADDING) + i2, Colors.BUTTON_TEXT_HOVERED);
        Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, "" + ArmyManager.lArmy.get(this.iUnitTypeID).get(this.iArmyID).getDefense(this.iCivID), (((getPosX() + getWidth()) - CFG.PADDING) - this.iDefenseWidth) + i, ((((getPosY() + ImageManager.getImage(Images.unitsFrameSmall).getHeight()) - 2) - CFG.TEXT_HEIGHT_SMALL) - CFG.PADDING) + i2, Colors.BUTTON_TEXT_HOVERED);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getCurrent() {
        return this.iID;
    }
}
