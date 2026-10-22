package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.GeneralManager;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.map.technology.Bhs.fiRhHJntP;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Empty;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagCiv_Title;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonArmyGeneral extends Button {
    public static int attackIconHeight = 0;
    public static int attackIconWidth = 0;
    public static int defenseIconHeight = 0;
    public static int defenseIconWidth = 0;
    public static float iconScale = 1.0f;
    public float combatExperience;
    public Image generalImage;
    public int iAttackWidth;
    public int iCivID;
    public int iDay;
    public int iDefenseWidth;
    public int iMonth;
    public int iYear;
    public int imageID;
    public String sAttack;
    public String sDefense;
    public String sFullName;

    public ButtonArmyGeneral(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, String str2, int i10) {
        init(str, CFG.FONT_REGULAR_SMALL, this.iTextPositionX, i4, i5, ImageManager.getImage(Images.generalFrame).getWidth(), getButtonHeight(), true, true, false, false);
        this.sFullName = str;
        this.iCivID = i;
        this.iDay = i7;
        this.iMonth = i8;
        this.iYear = i9;
        this.imageID = i6;
        this.sAttack = "" + i2;
        this.sDefense = "" + i3;
        this.combatExperience = Math.min(1.0f, Math.max(0.0f, i10 / GameValues.generals.COMBAT_EXPERIENCE_MAX));
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR), this.sAttack);
        this.iAttackWidth = (int) Renderer.glyphLayout.width;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR), this.sDefense);
        this.iDefenseWidth = (int) Renderer.glyphLayout.width;
        iconScale = getImageScale(Images.attack) * 1.1f;
        attackIconWidth = (int) (ImageManager.getImage(Images.attack).getWidth() * iconScale);
        attackIconHeight = (int) (ImageManager.getImage(Images.attack).getHeight() * iconScale);
        defenseIconWidth = (int) (ImageManager.getImage(Images.defense).getWidth() * iconScale);
        defenseIconHeight = (int) (ImageManager.getImage(Images.defense).getHeight() * iconScale);
        if (str2 != null) {
            if (FileManager.loadFile("game/characters/" + CFG.getRescouresPath_Short() + str2 + ".png").exists()) {
                this.generalImage = new Image(ImageManager.loadTexture_RGB888("game/characters/" + CFG.getRescouresPath_Short() + str2 + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
            } else if (FileManager.loadFile("game/characters/" + CFG.getRescouresPath_Short_H() + str2 + ".png").exists()) {
                this.generalImage = new Image(ImageManager.loadTexture_RGB888("game/characters/" + CFG.getRescouresPath_Short_H() + str2 + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
            }
        }
        if (this.generalImage == null) {
            int iAbs = Math.abs(i);
            if (FileManager.loadFile("game/generals/" + GeneralManager.getGeneralsImgPath(iAbs) + CFG.getRescouresPath_Short() + Game.getCiv(iAbs).iGroupID + "/" + i6 + ".png").exists()) {
                this.generalImage = new Image(ImageManager.loadTexture_RGB888("game/generals/" + GeneralManager.getGeneralsImgPath(iAbs) + CFG.getRescouresPath_Short() + Game.getCiv(iAbs).iGroupID + "/" + i6 + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
            } else {
                this.generalImage = new Image(ImageManager.loadTexture_RGB888("game/generals/" + GeneralManager.getGeneralsImgPath(iAbs) + CFG.getRescouresPath_Short() + Game.getCiv(iAbs).iGroupID + "/0.png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
            }
        }
        int i11 = 0;
        while (this.iTextWidth > getWidth() && getText().length() > 5 && (i11 = i11 + 1) < 100) {
            setText(getText().substring(0, Math.max(1, getText().length() - 3)) + "..");
        }
    }

    public static int getButtonHeight() {
        return ImageManager.getImage(Images.generalFrame).getHeight() + getStatsHeight();
    }

    private final float getImageScale(int i) {
        return CFG.TEXT_HEIGHT / ImageManager.getImage(i).getHeight();
    }

    public static int getStatsHeight() {
        return CFG.TEXT_HEIGHT_SMALL + (CFG.PADDING * 2);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(this.iCivID, this.sFullName));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Attack") + ": ", this.sAttack, Images.attack, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Defense") + ": ", this.sDefense, Images.defense, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("CombatExperience") + ": ", CFG.getNumberWithSpaces("" + ((int) (this.combatExperience * GameValues.generals.COMBAT_EXPERIENCE_MAX))) + " / " + GameValues.generals.COMBAT_EXPERIENCE_MAX, Images.general, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("CombatExperienceDesc"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Empty());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DateOfBirth") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + this.iDay + " " + Game_Calendar.getMonthName(this.iMonth) + " " + this.iYear, CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("XYearsOld", Math.min(99, Game_Calendar.currentYear - this.iYear)), CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (this.iCivID != Game.player.iCivID) {
            this.menuElementHover = new MenuElement_Hover(arrayList);
            return;
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Empty());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("AssignGeneralToThisUnit"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
    }

    public void buildElementHover2() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(this.iCivID, this.sFullName));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Attack") + ": ", this.sAttack, Images.attack, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Defense") + ": ", this.sDefense, Images.defense, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("CombatExperience") + ": ", CFG.getNumberWithSpaces("" + ((int) (this.combatExperience * GameValues.generals.COMBAT_EXPERIENCE_MAX))) + fiRhHJntP.cMMJFSPJT + GameValues.generals.COMBAT_EXPERIENCE_MAX, Images.general, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("CombatExperienceDesc"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Empty());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DateOfBirth") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + this.iDay + " " + Game_Calendar.getMonthName(this.iMonth) + " " + this.iYear, CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("XYearsOld", Math.min(99, Game_Calendar.currentYear - this.iYear)), CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        this.menuElementHover = new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void dispose() {
        Image image = this.generalImage;
        if (image != null) {
            image.dispose();
            this.generalImage = null;
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        if (getIsHovered() || z) {
            Renderer.drawBoxCorner(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.generalFrame).getWidth(), ImageManager.getImage(Images.generalFrame).getHeight());
        }
        try {
            this.generalImage.draw(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.generalFrame).getWidth(), ImageManager.getImage(Images.generalFrame).getHeight());
        } catch (Exception unused) {
        }
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.25f));
        Images.pix.draw(spriteBatch, getPosX() + i, (((getPosY() + getHeight()) - getStatsHeight()) - CFG.PADDING) + i2, getWidth(), CFG.PADDING);
        if (getIsHovered() || z) {
            spriteBatch.setColor(ProvinceDraw.progressBar);
        } else {
            spriteBatch.setColor(Colors.COLOR_BOX_GOLD);
        }
        Images.pix.draw(spriteBatch, getPosX() + i, (((getPosY() + getHeight()) - getStatsHeight()) - CFG.PADDING) + i2, (int) (getWidth() * this.combatExperience), CFG.PADDING);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.75f));
        Images.pix.draw(spriteBatch, getPosX() + i, (((getPosY() + getHeight()) - getStatsHeight()) - CFG.PADDING) + i2, getWidth(), 1);
        spriteBatch.setColor(Color.WHITE);
        ImageManager.getImage(Images.generalFrame).draw(spriteBatch, getPosX() + i, getPosY() + i2);
        if (getIsHovered() || z) {
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 1.0f));
            Renderer.drawBox(spriteBatch, Images.statsRectBGBorder, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.generalFrame).getWidth(), ImageManager.getImage(Images.generalFrame).getHeight(), 1.0f);
            spriteBatch.setColor(Color.WHITE);
        }
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.5f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + i, getPosY() + ImageManager.getImage(Images.generalFrame).getHeight() + i2, getWidth(), getStatsHeight());
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + ImageManager.getImage(Images.generalFrame).getHeight() + i2, getWidth(), getStatsHeight(), false, true);
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + i, getPosY() + ImageManager.getImage(Images.generalFrame).getHeight() + i2, 1, getStatsHeight());
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, ((getPosX() + getWidth()) - 1) + i, getPosY() + ImageManager.getImage(Images.generalFrame).getHeight() + i2, 1, getStatsHeight());
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.5f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + CFG.PADDING + i, ((((getPosY() + getHeight()) - getStatsHeight()) - (CFG.PADDING * 2)) - (CFG.TEXT_HEIGHT + (CFG.PADDING * 2))) + i2, (CFG.PADDING * 3) + this.iAttackWidth + attackIconWidth, (CFG.PADDING * 2) + CFG.TEXT_HEIGHT, 1.0f);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.5f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, (((getPosX() + getWidth()) - ((this.iDefenseWidth + defenseIconWidth) + (CFG.PADDING * 3))) - CFG.PADDING) + i, ((((getPosY() + getHeight()) - getStatsHeight()) - (CFG.PADDING * 2)) - (CFG.TEXT_HEIGHT + (CFG.PADDING * 2))) + i2, (CFG.PADDING * 3) + this.iDefenseWidth + defenseIconWidth, (CFG.PADDING * 2) + CFG.TEXT_HEIGHT, 1.0f);
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, getTextToDraw(), ((getPosX() + (getWidth() / 2)) - (getTextWidth() / 2)) + i, getPosY() + ImageManager.getImage(Images.generalFrame).getHeight() + CFG.PADDING + i2, getColor(z));
        Image image = ImageManager.getImage(Images.attack);
        int posX = getPosX() + (CFG.PADDING * 2) + i;
        int posY = (getPosY() + ImageManager.getImage(Images.generalFrame).getHeight()) - (CFG.PADDING * 3);
        int i3 = attackIconHeight;
        image.draw(spriteBatch, posX, (posY - i3) + i2, attackIconWidth, i3);
        Image image2 = ImageManager.getImage(Images.defense);
        int posX2 = (((getPosX() + getWidth()) - defenseIconWidth) - (CFG.PADDING * 2)) + i;
        int posY2 = (getPosY() + ImageManager.getImage(Images.generalFrame).getHeight()) - (CFG.PADDING * 3);
        int i4 = defenseIconHeight;
        image2.draw(spriteBatch, posX2, (posY2 - i4) + i2, defenseIconWidth, i4);
        Renderer.drawTextWithShadow(spriteBatch, CFG.FONT_REGULAR, this.sAttack, getPosX() + attackIconWidth + (CFG.PADDING * 2) + i, (((getPosY() + ImageManager.getImage(Images.generalFrame).getHeight()) - (CFG.PADDING * 3)) - CFG.TEXT_HEIGHT_SMALL) + i2, Colors.BUTTON_TEXT_HOVERED);
        Renderer.drawTextWithShadow(spriteBatch, CFG.FONT_REGULAR, this.sDefense, ((((getPosX() + getWidth()) - (CFG.PADDING * 3)) - defenseIconWidth) - this.iDefenseWidth) + i, (((getPosY() + ImageManager.getImage(Images.generalFrame).getHeight()) - (CFG.PADDING * 3)) - CFG.TEXT_HEIGHT_SMALL) + i2, Colors.BUTTON_TEXT_HOVERED);
    }
}
