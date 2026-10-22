package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.LanguageManager;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.army.ArmyManager;
import aoc.kingdoms.lukasz.map.technology.TechnologyTree;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.MenuElement_Type;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Center;
import aoc.kingdoms.lukasz.menusInGame.Court.zHJ.lOow;
import aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.assets.loaders.Wkvw.PZBvyl;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonUnit_03 extends MenuElement {
    public static final Color COLOR_STATS = new Color(0.039215688f, 0.05882353f, 0.09803922f, 0.6f);
    public static int attackIconHeight = 0;
    public static int attackIconWidth = 0;
    public static int defenseIconHeight = 0;
    public static int defenseIconWidth = 0;
    public static int goldIconHeight = 0;
    public static int goldIconWidth = 0;
    public static int iconAttackDefenseMaxWidth = 0;
    public static float iconScale = 1.0f;
    public static int speedIconHeight;
    public static int speedIconWidth;
    public static int timeIconHeight;
    public static int timeIconWidth;
    public int armyID;
    public int iAttackWidth;
    public int iCostHeight;
    public int iCostWidth;
    public int iDefenseWidth;
    public int iRecruitmentTimeHeight;
    public int iRecruitmentTimeWidth;
    public int iSpeedHeight;
    public int iSpeedWidth;
    public int maxIconWidth;
    public String sAttack;
    public String sCost;
    public String sDefense;
    public String sRecruitmentTime;
    public String sSpeed;
    public String sText;
    public int statH;
    public int unitTypeID;
    public int iTextWidth = 0;
    public int iTextHeight = 0;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.button.ButtonUnit_03$1, reason: invalid class name */
    class AnonymousClass1 extends MenuElement_Hover {
        AnonymousClass1(List list) {
            super(list);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover
        public int getMinPosX() {
            return InGame_RecruitArmy.HOVER_POSX;
        }
    }

    public ButtonUnit_03(int i, int i2, int i3, int i4, int i5, boolean z) {
        this.maxIconWidth = 0;
        this.statH = 0;
        this.typeOfElement = MenuElement_Type.BUTTON;
        this.unitTypeID = i;
        this.armyID = i2;
        this.fontID = CFG.FONT_BOLD;
        setPosX(i3);
        setPosY(i4);
        setWidth(i5);
        setHeight(ImageManager.getImage(Images.unitsFrame).getHeight() + (getPaddingIMG() * 2));
        setText(ArmyManager.lArmy.get(i).get(i2).Name);
        this.sAttack = "" + ArmyManager.lArmy.get(i).get(i2).getAttack(Game.player.iCivID);
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR), this.sAttack);
        this.iAttackWidth = (int) Renderer.glyphLayout.width;
        this.sDefense = "" + ArmyManager.lArmy.get(i).get(i2).getDefense(Game.player.iCivID);
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR), this.sDefense);
        this.iDefenseWidth = (int) Renderer.glyphLayout.width;
        this.sRecruitmentTime = "" + ArmyManager.getRecruitmentTime(Game.player.iCivID, -1, i, i2);
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), this.sRecruitmentTime);
        this.iRecruitmentTimeWidth = (int) Renderer.glyphLayout.width;
        this.iRecruitmentTimeHeight = (int) Renderer.glyphLayout.height;
        this.sSpeed = "" + ArmyManager.lArmy.get(i).get(i2).MovementSpeed;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), this.sSpeed);
        this.iSpeedWidth = (int) Renderer.glyphLayout.width;
        this.iSpeedHeight = (int) Renderer.glyphLayout.height;
        this.sCost = "" + ArmyManager.getRecruitmentCost(Game.player.iCivID, -1, i, i2);
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), this.sCost);
        this.iCostWidth = (int) Renderer.glyphLayout.width;
        this.iCostHeight = (int) Renderer.glyphLayout.height;
        this.statH = (getHeight() - (CFG.PADDING * 4)) / 3;
        iconScale = Math.min(0.9f, getImageScale(Images.attack));
        attackIconWidth = (int) (ImageManager.getImage(Images.attack).getWidth() * iconScale);
        attackIconHeight = (int) (ImageManager.getImage(Images.attack).getHeight() * iconScale);
        defenseIconWidth = (int) (ImageManager.getImage(Images.defense).getWidth() * iconScale);
        defenseIconHeight = (int) (ImageManager.getImage(Images.defense).getHeight() * iconScale);
        timeIconWidth = (int) (ImageManager.getImage(Images.time).getWidth() * iconScale);
        timeIconHeight = (int) (ImageManager.getImage(Images.time).getHeight() * iconScale);
        goldIconWidth = (int) (ImageManager.getImage(Images.gold).getWidth() * iconScale);
        goldIconHeight = (int) (ImageManager.getImage(Images.gold).getHeight() * iconScale);
        speedIconWidth = (int) (ImageManager.getImage(Images.movementSpeed).getWidth() * iconScale);
        speedIconHeight = (int) (ImageManager.getImage(Images.movementSpeed).getHeight() * iconScale);
        this.maxIconWidth = Math.max(attackIconWidth, Math.max(goldIconWidth, defenseIconWidth));
        iconAttackDefenseMaxWidth = Math.max(attackIconWidth, defenseIconWidth);
        setClickable(z);
        setVisible(true);
        int width = ImageManager.getImage(Images.unitsFrame).getWidth() - (CFG.PADDING * 2);
        int i6 = 0;
        while (this.iTextWidth > width && getText().length() > 5 && (i6 = i6 + 1) < 100) {
            setText(getText().substring(0, Math.max(1, getText().length() - 3)) + "..");
        }
    }

    private final float getImageScale(int i) {
        return (this.statH - (CFG.PADDING * 2)) / ImageManager.getImage(i).getHeight();
    }

    public static int getPaddingIMG() {
        return CFG.PADDING;
    }

    public static int getTopH() {
        return ImageManager.getImage(Images.unitsFrame).getHeight() + (getPaddingIMG() * 2);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        LanguageManager languageManager;
        String str;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center(ArmyManager.lArmy.get(this.unitTypeID).get(this.armyID).Name, CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Attack") + ": ", "" + ArmyManager.lArmy.get(this.unitTypeID).get(this.armyID).getAttack(Game.player.iCivID), Images.attack, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Defense") + ": ", "" + ArmyManager.lArmy.get(this.unitTypeID).get(this.armyID).getDefense(Game.player.iCivID), Images.defense, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MovementSpeed") + ": ", "" + ArmyManager.lArmy.get(this.unitTypeID).get(this.armyID).MovementSpeed, Images.movementSpeed, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("AttackRange") + ": ", "" + ArmyManager.lArmy.get(this.unitTypeID).get(this.armyID).AttackRange, Images.attack, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(PZBvyl.yVeZhk) + ": ", "" + CFG.getPrecision2(ArmyManager.lArmy.get(this.unitTypeID).get(this.armyID).SiegeProgress, 100), Images.siege, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("BattlePosition") + ": ", CFG.FONT_REGULAR_SMALL));
        StringBuilder sb = new StringBuilder("");
        if (ArmyManager.lUnitsTypes.get(this.unitTypeID).Line == 0 || ArmyManager.lUnitsTypes.get(this.unitTypeID).Line == 1) {
            languageManager = Game.lang;
            str = "FirstLine";
        } else if (ArmyManager.lUnitsTypes.get(this.unitTypeID).Line == 2) {
            languageManager = Game.lang;
            str = "Support";
        } else {
            languageManager = Game.lang;
            str = "ThirdLine";
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Text(sb.append(languageManager.get(str)).toString(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Manpower") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE, CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(lOow.KKjTLhM) + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("XDays", ArmyManager.getRecruitmentTime(Game.player.iCivID, -1, this.unitTypeID, this.armyID)), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER_TIME, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaintenanceCost") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("XPerMonth", CFG.getPrecision2(ArmyManager.lArmy.get(this.unitTypeID).get(this.armyID).MaintenanceCost, 100)), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.armyMaintenance, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Cost") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + ArmyManager.getRecruitmentCost(Game.player.iCivID, -1, this.unitTypeID, this.armyID), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (ArmyManager.lArmy.get(this.unitTypeID).get(this.armyID).RequiredTechID >= 0) {
            try {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("RequiredTechnology") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + TechnologyTree.lTechnology.get(ArmyManager.lArmy.get(this.unitTypeID).get(this.armyID).RequiredTechID).Name, CFG.FONT_BOLD_SMALL, Colors.HOVER_RIGHT));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        this.menuElementHover = new AnonymousClass1(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        drawButtonBG(spriteBatch, i, i2, z);
        drawText(spriteBatch, i, i2, z);
    }

    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        if (getIsHovered() || z || (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_RECRUIT_ARMY && Game.armyRecruit.unitID == this.unitTypeID && Game.armyRecruit.armyID == this.armyID)) {
            Renderer.drawBoxCornerEmpty(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
            spriteBatch.setColor(new Color(Colors.COLOR_NOTIFICATION_BG.r, Colors.COLOR_NOTIFICATION_BG.g, Colors.COLOR_NOTIFICATION_BG.b, (getIsHovered() || z) ? 0.5f : 0.25f));
            Images.pix.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        } else {
            spriteBatch.setColor(new Color(Colors.COLOR_NOTIFICATION_BG.r, Colors.COLOR_NOTIFICATION_BG.g, Colors.COLOR_NOTIFICATION_BG.b, (getIsHovered() || z) ? 0.5f : 0.25f));
            Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        }
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, (getIsHovered() || z) ? 1.0f : 0.75f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.unitsFrame).getWidth(), getTopH(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(new Color(Colors.COLOR_NOTIFICATION_OVER.r, Colors.COLOR_NOTIFICATION_OVER.g, Colors.COLOR_NOTIFICATION_OVER.b, 0.3f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        spriteBatch.setColor(new Color(Colors.COLOR_NOTIFICATION_OVER.r, Colors.COLOR_NOTIFICATION_OVER.g, Colors.COLOR_NOTIFICATION_OVER.b, 0.35f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        spriteBatch.setColor(new Color(Colors.COLOR_NOTIFICATION_OVER.r, Colors.COLOR_NOTIFICATION_OVER.g, Colors.COLOR_NOTIFICATION_OVER.b, 0.3f));
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.25f));
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), CFG.PADDING * 2, false, true);
        Images.gradientXY.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - (CFG.PADDING * 2)) + i2, getWidth(), CFG.PADDING * 2);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.25f));
        Renderer.drawBox(spriteBatch, Images.statsRectBGBorder, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(new Color(Colors.COLOR_NOTIFICATION_BG.r, Colors.COLOR_NOTIFICATION_BG.g, Colors.COLOR_NOTIFICATION_BG.b, 0.25f));
        Renderer.drawBox(spriteBatch, Images.statsRectBGBorder, (getPosX() - 1) + i, (getPosY() - 1) + i2, getWidth() + 2, getHeight() + 2, 1.0f);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.5f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 1) + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), 1);
        spriteBatch.setColor(new Color(Colors.COLOR_NOTIFICATION_OVER.r, Colors.COLOR_NOTIFICATION_OVER.g, Colors.COLOR_NOTIFICATION_OVER.b, 0.85f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 2) + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + 1 + i2, getWidth(), 1);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.55f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 1) + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), 1);
        spriteBatch.setColor(new Color(Colors.COLOR_NOTIFICATION_OVER.r, Colors.COLOR_NOTIFICATION_OVER.g, Colors.COLOR_NOTIFICATION_OVER.b, 0.9f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 2) + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + 1 + i2, getWidth(), 1);
        spriteBatch.setColor(Color.WHITE);
        if (!getClickable()) {
            spriteBatch.setColor(1.0f, 1.0f, 1.0f, 0.45f);
        }
        ArmyManager.armyImages.get(ArmyManager.lArmy.get(this.unitTypeID).get(this.armyID).ImageID).draw(spriteBatch, getPosX() + i, getPosY() + getPaddingIMG() + i2, ImageManager.getImage(Images.unitsFrame).getWidth(), ImageManager.getImage(Images.unitsFrame).getHeight());
        spriteBatch.setColor(Color.WHITE);
        ImageManager.getImage(Images.unitsFrame).draw(spriteBatch, getPosX() + i, getPosY() + getPaddingIMG() + i2);
        if (z) {
            Renderer.drawBoxLineFrame(spriteBatch, getPosX() + i, getPosY() + getPaddingIMG() + i2, ImageManager.getImage(Images.unitsFrame).getWidth(), ImageManager.getImage(Images.unitsFrame).getHeight(), Colors.COLOR_BOX_ACTIVE);
        } else if (getIsHovered()) {
            Renderer.drawBoxLineFrame(spriteBatch, getPosX() + i, getPosY() + getPaddingIMG() + i2, ImageManager.getImage(Images.unitsFrame).getWidth(), ImageManager.getImage(Images.unitsFrame).getHeight(), Colors.COLOR_BOX_HOVER);
        }
    }

    public void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, getText(), (((getPosX() + (ImageManager.getImage(Images.unitsFrame).getWidth() / 2)) - (this.iTextWidth / 2)) - getPaddingIMG()) + i, (((getPosY() + getHeight()) - this.iTextHeight) - (CFG.PADDING * 2)) + i2, getColor(z));
        int height = getHeight() / 2;
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + getInnerPosX() + CFG.PADDING + i, getPosY() + CFG.PADDING + i2, getInnerWidth() - (CFG.PADDING * 2), this.statH, 1.0f);
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.3f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + getInnerPosX() + CFG.PADDING + i, getPosY() + CFG.PADDING + i2, (CFG.PADDING * 2) + this.maxIconWidth, this.statH, 1.0f);
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + getInnerPosX() + CFG.PADDING + i, getPosY() + (CFG.PADDING * 2) + this.statH + i2, getInnerWidth() - (CFG.PADDING * 2), this.statH, 1.0f);
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.3f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + getInnerPosX() + CFG.PADDING + i, getPosY() + (CFG.PADDING * 2) + this.statH + i2, (CFG.PADDING * 2) + this.maxIconWidth, this.statH, 1.0f);
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + getInnerPosX() + CFG.PADDING + i, getPosY() + (CFG.PADDING * 3) + (this.statH * 2) + i2, getInnerWidth() - (CFG.PADDING * 2), this.statH, 1.0f);
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.3f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + getInnerPosX() + CFG.PADDING + i, getPosY() + (CFG.PADDING * 3) + (this.statH * 2) + i2, (CFG.PADDING * 2) + this.maxIconWidth, this.statH, 1.0f);
        Image image = ImageManager.getImage(Images.attack);
        int posX = ((((getPosX() + getInnerPosX()) + (CFG.PADDING * 2)) + (this.maxIconWidth / 2)) - (attackIconWidth / 2)) + i;
        int posY = getPosY() + CFG.PADDING + (this.statH / 2);
        int i3 = attackIconHeight;
        image.draw(spriteBatch, posX, (posY - (i3 / 2)) + i2, attackIconWidth, i3);
        Renderer.drawText(spriteBatch, CFG.FONT_REGULAR, this.sAttack, (((((getPosX() + getInnerPosX()) + (CFG.PADDING * 2)) + this.maxIconWidth) + (((getInnerWidth() - (CFG.PADDING * 4)) - this.maxIconWidth) / 2)) - (this.iAttackWidth / 2)) + i, (((getPosY() + (CFG.PADDING * 2)) + (this.statH / 2)) - this.iCostHeight) + i2, Colors.HOVER_LEFT2);
        Image image2 = ImageManager.getImage(Images.defense);
        int posX2 = ((((getPosX() + getInnerPosX()) + (CFG.PADDING * 2)) + (this.maxIconWidth / 2)) - (defenseIconWidth / 2)) + i;
        int posY2 = getPosY() + (CFG.PADDING * 2);
        int i4 = this.statH;
        int i5 = defenseIconHeight;
        image2.draw(spriteBatch, posX2, (((posY2 + i4) + (i4 / 2)) - (i5 / 2)) + i2, defenseIconWidth, i5);
        int i6 = CFG.FONT_REGULAR;
        String str = this.sDefense;
        int posX3 = (((((getPosX() + getInnerPosX()) + (CFG.PADDING * 2)) + this.maxIconWidth) + (((getInnerWidth() - (CFG.PADDING * 4)) - this.maxIconWidth) / 2)) - (this.iDefenseWidth / 2)) + i;
        int posY3 = getPosY() + (CFG.PADDING * 3);
        int i7 = this.statH;
        Renderer.drawText(spriteBatch, i6, str, posX3, (((posY3 + i7) + (i7 / 2)) - this.iCostHeight) + i2, Colors.HOVER_LEFT2);
        Image image3 = ImageManager.getImage(Images.gold);
        int posX4 = ((((getPosX() + getInnerPosX()) + (CFG.PADDING * 2)) + (this.maxIconWidth / 2)) - (goldIconWidth / 2)) + i;
        int posY4 = getPosY() + (CFG.PADDING * 3);
        int i8 = this.statH;
        int i9 = goldIconHeight;
        image3.draw(spriteBatch, posX4, (((posY4 + (i8 * 2)) + (i8 / 2)) - (i9 / 2)) + i2, goldIconWidth, i9);
        int i10 = CFG.FONT_REGULAR;
        String str2 = this.sCost;
        int posX5 = (((((getPosX() + getInnerPosX()) + (CFG.PADDING * 2)) + this.maxIconWidth) + (((getInnerWidth() - (CFG.PADDING * 4)) - this.maxIconWidth) / 2)) - (this.iCostWidth / 2)) + i;
        int posY5 = getPosY() + (CFG.PADDING * 4);
        int i11 = this.statH;
        Renderer.drawText(spriteBatch, i10, str2, posX5, (((posY5 + (i11 * 2)) + (i11 / 2)) - this.iCostHeight) + i2, Colors.HOVER_LEFT2);
    }

    protected Color getColor(boolean z) {
        return Colors.getColorTopStats3(z, getIsHovered());
    }

    public int getInnerPosX() {
        return ImageManager.getImage(Images.unitsFrame).getWidth();
    }

    public int getInnerWidth() {
        return getWidth() - ImageManager.getImage(Images.unitsFrame).getWidth();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public String getText() {
        return this.sText;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getTextHeight() {
        return this.iTextHeight;
    }

    public int getTitleHeight() {
        return CFG.TEXT_HEIGHT + (CFG.PADDING * 4);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getValue1() {
        return this.unitTypeID;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getValue2() {
        return this.armyID;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setText(String str) {
        this.sText = str;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), getText());
        this.iTextWidth = (int) Renderer.glyphLayout.width;
        this.iTextHeight = (int) Renderer.glyphLayout.height;
    }
}
