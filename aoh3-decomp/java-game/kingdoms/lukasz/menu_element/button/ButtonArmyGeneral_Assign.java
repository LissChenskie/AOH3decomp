package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.GeneralManager;
import aoc.kingdoms.lukasz.map.army.ArmyGeneral;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
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
import aoc.kingdoms.lukasz.menusInGame.InGame_Armies;
import aoc.kingdoms.lukasz.menusInGame.InGame_Generals;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmy;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonArmyGeneral_Assign extends Button {
    public static int attackIconHeight = 0;
    public static int attackIconWidth = 0;
    public static int defenseIconHeight = 0;
    public static int defenseIconWidth = 0;
    public static float iconScale = 1.0f;
    public float combatExperience;
    public Image generalImage;
    public String generalKey;
    public int iAttackWidth;
    public int iCivID;
    public int iDay;
    public int iDefenseWidth;
    public int iMonth;
    public int iYear;
    public int imageID;
    public boolean recruitMode;
    public String sAttack;
    public String sDefense;
    public int statH;

    public ButtonArmyGeneral_Assign(int i, int i2, int i3, String str, int i4, int i5, int i6, int i7, int i8, int i9, int i10, boolean z, String str2, String str3, int i11) {
        this.statH = 0;
        init(str, CFG.FONT_REGULAR_SMALL, this.iTextPositionX, i, i2, Math.max(ImageManager.getImage(Images.generalFrame).getWidth(), i3), getButtonHeight(), true, true, false, false);
        this.iCivID = i4;
        this.iDay = i8;
        this.iMonth = i9;
        this.iYear = i10;
        this.imageID = i7;
        this.sAttack = "" + i5;
        this.sDefense = "" + i6;
        this.combatExperience = Math.min(1.0f, Math.max(0.0f, i11 / GameValues.generals.COMBAT_EXPERIENCE_MAX));
        this.recruitMode = z;
        this.generalKey = str2;
        this.statH = (ImageManager.getImage(Images.generalFrame).getHeight() - (CFG.PADDING * 3)) / 2;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR), this.sAttack);
        this.iAttackWidth = (int) Renderer.glyphLayout.width;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR), this.sDefense);
        this.iDefenseWidth = (int) Renderer.glyphLayout.width;
        iconScale = getImageScale(Images.attack);
        attackIconWidth = (int) (ImageManager.getImage(Images.attack).getWidth() * iconScale);
        attackIconHeight = (int) (ImageManager.getImage(Images.attack).getHeight() * iconScale);
        defenseIconWidth = (int) (ImageManager.getImage(Images.defense).getWidth() * iconScale);
        defenseIconHeight = (int) (ImageManager.getImage(Images.defense).getHeight() * iconScale);
        int i12 = 0;
        while (this.iTextWidth > getWidth() && getText().length() > 5 && (i12 = i12 + 1) < 100) {
            setText(getText().substring(0, Math.max(1, getText().length() - 3)) + "..");
        }
        if (str3 != null) {
            try {
                if (FileManager.loadFile("game/characters/" + CFG.getRescouresPath_Short() + str3 + ".png").exists()) {
                    this.generalImage = new Image(ImageManager.loadTexture_RGB888("game/characters/" + CFG.getRescouresPath_Short() + str3 + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
                } else if (FileManager.loadFile("game/characters/" + CFG.getRescouresPath_Short_H() + str3 + ".png").exists()) {
                    this.generalImage = new Image(ImageManager.loadTexture_RGB888("game/characters/" + CFG.getRescouresPath_Short_H() + str3 + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
        if (this.generalImage == null) {
            if (FileManager.loadFile("game/generals/" + GeneralManager.getGeneralsImgPath(i4) + CFG.getRescouresPath_Short() + Game.getCiv(i4).iGroupID + "/" + i7 + ".png").exists()) {
                this.generalImage = new Image(ImageManager.loadTexture_RGB888("game/generals/" + GeneralManager.getGeneralsImgPath(i4) + CFG.getRescouresPath_Short() + Game.getCiv(i4).iGroupID + "/" + i7 + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
            } else {
                this.generalImage = new Image(ImageManager.loadTexture_RGB888("game/generals/" + GeneralManager.getGeneralsImgPath(i4) + CFG.getRescouresPath_Short() + Game.getCiv(i4).iGroupID + "/0.png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
            }
        }
    }

    public static final void assignGeneral(int i, String str, boolean z) {
        if (Game.menuManager.getVisibleInGame_ProvinceArmy() && InGame_ProvinceArmy.iCivFlagID == Game.player.iCivID) {
            InGame_Generals.assignProvinceID = InGame_ProvinceArmy.iProvinceID;
            InGame_Generals.assignArmyKey = InGame_ProvinceArmy.sActiveKEY;
        }
        if (str == null || InGame_Generals.assignProvinceID < 0) {
            return;
        }
        int armyKeyID = Game.getProvince(InGame_Generals.assignProvinceID).getArmyKeyID(InGame_Generals.assignArmyKey);
        if (armyKeyID < 0) {
            for (int i2 = 0; i2 < Game.getProvincesSize(); i2++) {
                int armyKeyID2 = Game.getProvince(i2).getArmyKeyID(InGame_Generals.assignArmyKey, i);
                if (armyKeyID2 >= 0) {
                    InGame_Generals.assignProvinceID = i2;
                    armyKeyID = armyKeyID2;
                    break;
                }
            }
        }
        if (armyKeyID < 0 || Game.getProvince(InGame_Generals.assignProvinceID).getArmy(armyKeyID).civID != Game.player.iCivID) {
            return;
        }
        if (z || Game.getProvince(InGame_Generals.assignProvinceID).getArmy(armyKeyID).armyGeneral == null) {
            if (Game.getProvince(InGame_Generals.assignProvinceID).getArmy(armyKeyID).armyGeneral != null) {
                if (Game.getProvince(InGame_Generals.assignProvinceID).getArmy(armyKeyID).armyGeneral.key.equals(str)) {
                    Game.getCiv(Game.player.iCivID).addGeneral(Game.getProvince(InGame_Generals.assignProvinceID).getArmy(armyKeyID).armyGeneral);
                    Game.getProvince(InGame_Generals.assignProvinceID).getArmy(armyKeyID).setArmyGeneral(null);
                    rebuildMenus();
                    return;
                }
                for (int i3 = 0; i3 < Game.getCiv(Game.player.iCivID).iArmyPositionSize; i3++) {
                    for (int i4 = 0; i4 < Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(i3)).getArmySize(); i4++) {
                        if (Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(i3)).getArmy(i4).civID == Game.player.iCivID && Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(i3)).getArmy(i4).armyGeneral != null && Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(i3)).getArmy(i4).armyGeneral.key.equals(str)) {
                            ArmyGeneral armyGeneral = Game.getProvince(InGame_Generals.assignProvinceID).getArmy(armyKeyID).armyGeneral;
                            Game.getProvince(InGame_Generals.assignProvinceID).getArmy(armyKeyID).setArmyGeneral(Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(i3)).getArmy(i4).armyGeneral);
                            Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(i3)).getArmy(i4).setArmyGeneral(armyGeneral);
                            rebuildMenus();
                            return;
                        }
                    }
                }
            }
            if (!Game.getCiv(Game.player.iCivID).assignGeneralToArmy(InGame_Generals.assignProvinceID, armyKeyID, str)) {
                for (int i5 = 0; i5 < Game.getCiv(Game.player.iCivID).iArmyPositionSize; i5++) {
                    for (int i6 = 0; i6 < Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(i5)).getArmySize(); i6++) {
                        if (Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(i5)).getArmy(i6).civID == Game.player.iCivID && Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(i5)).getArmy(i6).armyGeneral != null && Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(i5)).getArmy(i6).armyGeneral.key.equals(str)) {
                            ArmyGeneral armyGeneral2 = Game.getProvince(InGame_Generals.assignProvinceID).getArmy(armyKeyID).armyGeneral;
                            Game.getProvince(InGame_Generals.assignProvinceID).getArmy(armyKeyID).setArmyGeneral(Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(i5)).getArmy(i6).armyGeneral);
                            Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(i5)).getArmy(i6).setArmyGeneral(armyGeneral2);
                            rebuildMenus();
                            return;
                        }
                    }
                }
            }
            rebuildMenus();
        }
    }

    public static int getButtonHeight() {
        return ImageManager.getImage(Images.generalFrame).getHeight() + getStatsHeight();
    }

    private final float getImageScale(int i) {
        return ((this.statH - CFG.TEXT_HEIGHT) - (CFG.PADDING * 4)) / ImageManager.getImage(i).getHeight();
    }

    public static int getStatsHeight() {
        return CFG.TEXT_HEIGHT_SMALL + (CFG.PADDING * 4);
    }

    public static final void rebuildMenus() {
        Game.menuManager.setVisibleInGame_Generals(false);
        if (Game.menuManager.getVisibleInGame_ProvinceArmy()) {
            Game.menuManager.rebuildInGame_ProvinceArmy(true, true);
        }
        if (Game.menuManager.getVisibleInGame_Armies()) {
            Game.menuManager.rebuildInGame_Armies(false, true);
            Game.menuManager.setVisibleInGame_Armies(true);
            InGame_Armies.lTime = 0L;
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void actionElement() {
        assignGeneral(this.iCivID, this.generalKey, true);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(this.iCivID, getText()));
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
        if (this.recruitMode || this.iCivID != Game.player.iCivID || !Game.menuManager.getVisibleInGame_ProvinceArmy()) {
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
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, 0.65f));
        Images.pix.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), ImageManager.getImage(Images.generalFrame).getHeight());
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.5f));
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + getInnerPosX() + i, getPosY() + i2, getInnerWidth(), ImageManager.getImage(Images.generalFrame).getHeight());
        ImageManager.getImage(Images.gradientXYVertical).draw(spriteBatch, getPosX() + getInnerPosX() + i, getPosY() + i2, getInnerWidth(), ImageManager.getImage(Images.generalFrame).getHeight());
        spriteBatch.setColor(new Color(Colors.BUTTON_BUILDING_COLORS_STATS.r, Colors.BUTTON_BUILDING_COLORS_STATS.g, Colors.BUTTON_BUILDING_COLORS_STATS.b, 0.65f));
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + getInnerPosX() + i, getPosY() + i2, getInnerWidth(), 1);
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + getInnerPosX() + i, ((getPosY() + ImageManager.getImage(Images.generalFrame).getHeight()) - 1) + i2, getInnerWidth(), 1);
        spriteBatch.setColor(Color.WHITE);
        if (getIsHovered() || z) {
            Renderer.drawBoxCornerEmpty(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), ImageManager.getImage(Images.generalFrame).getHeight());
        }
        try {
            this.generalImage.draw(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.generalFrame).getWidth(), ImageManager.getImage(Images.generalFrame).getHeight());
        } catch (Exception unused) {
        }
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.25f));
        Images.pix.draw(spriteBatch, getPosX() + i, ((getPosY() + ImageManager.getImage(Images.generalFrame).getHeight()) - CFG.PADDING) + i2, ImageManager.getImage(Images.generalFrame).getWidth(), CFG.PADDING);
        if (getIsHovered() || z) {
            spriteBatch.setColor(ProvinceDraw.progressBar);
        } else {
            spriteBatch.setColor(Colors.COLOR_BOX_GOLD);
        }
        Images.pix.draw(spriteBatch, getPosX() + i, ((getPosY() + ImageManager.getImage(Images.generalFrame).getHeight()) - CFG.PADDING) + i2, (int) (ImageManager.getImage(Images.generalFrame).getWidth() * this.combatExperience), CFG.PADDING);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.75f));
        Images.pix.draw(spriteBatch, getPosX() + i, ((getPosY() + ImageManager.getImage(Images.generalFrame).getHeight()) - CFG.PADDING) + i2, ImageManager.getImage(Images.generalFrame).getWidth(), 1);
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
        spriteBatch.setColor(Color.WHITE);
        drawStats(spriteBatch, i, i2, z);
    }

    public final void drawStats(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + getInnerPosX() + CFG.PADDING + i, getPosY() + CFG.PADDING + i2, getInnerWidth() - (CFG.PADDING * 2), this.statH, 1.0f);
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.3f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + getInnerPosX() + CFG.PADDING + i, (((getPosY() + CFG.PADDING) + this.statH) - (CFG.TEXT_HEIGHT + (CFG.PADDING * 2))) + i2, getInnerWidth() - (CFG.PADDING * 2), (CFG.PADDING * 2) + CFG.TEXT_HEIGHT, 1.0f);
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + getInnerPosX() + CFG.PADDING + i, getPosY() + (CFG.PADDING * 2) + this.statH + i2, getInnerWidth() - (CFG.PADDING * 2), this.statH, 1.0f);
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.3f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + getInnerPosX() + CFG.PADDING + i, (((getPosY() + (CFG.PADDING * 2)) + (this.statH * 2)) - (CFG.TEXT_HEIGHT + (CFG.PADDING * 2))) + i2, getInnerWidth() - (CFG.PADDING * 2), (CFG.PADDING * 2) + CFG.TEXT_HEIGHT, 1.0f);
        Image image = ImageManager.getImage(Images.attack);
        int posX = (((getPosX() + getInnerPosX()) + (getInnerWidth() / 2)) - (attackIconWidth / 2)) + i;
        int posY = getPosY() + CFG.PADDING + (((this.statH - CFG.TEXT_HEIGHT) - (CFG.PADDING * 2)) / 2);
        int i3 = attackIconHeight;
        image.draw(spriteBatch, posX, (posY - (i3 / 2)) + i2, attackIconWidth, i3);
        Renderer.drawTextWithShadow(spriteBatch, CFG.FONT_REGULAR, this.sAttack, (((getPosX() + getInnerPosX()) + (getInnerWidth() / 2)) - (this.iAttackWidth / 2)) + i, ((((getPosY() + CFG.PADDING) + this.statH) - CFG.TEXT_HEIGHT) - CFG.PADDING) + i2, Colors.BUTTON_TEXT_HOVERED);
        ImageManager.getImage(Images.defense).draw(spriteBatch, (((getPosX() + getInnerPosX()) + (getInnerWidth() / 2)) - (defenseIconWidth / 2)) + i, (((getPosY() + CFG.PADDING) + (((this.statH - CFG.TEXT_HEIGHT) - (CFG.PADDING * 2)) / 2)) - (defenseIconHeight / 2)) + CFG.PADDING + this.statH + i2, defenseIconWidth, defenseIconHeight);
        Renderer.drawTextWithShadow(spriteBatch, CFG.FONT_REGULAR, this.sDefense, (((getPosX() + getInnerPosX()) + (getInnerWidth() / 2)) - (this.iDefenseWidth / 2)) + i, ((((getPosY() + CFG.PADDING) + this.statH) - CFG.TEXT_HEIGHT) - CFG.PADDING) + CFG.PADDING + this.statH + i2, Colors.BUTTON_TEXT_HOVERED);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, getTextToDraw(), ((getPosX() + (getWidth() / 2)) - (getTextWidth() / 2)) + i, getPosY() + ImageManager.getImage(Images.generalFrame).getHeight() + (CFG.PADDING * 2) + i2, getColor(z));
    }

    public int getInnerPosX() {
        return ImageManager.getImage(Images.generalFrame).getWidth();
    }

    public int getInnerWidth() {
        return getWidth() - ImageManager.getImage(Images.generalFrame).getWidth();
    }
}
