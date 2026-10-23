package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FBO.idYW.HjHDSSkYG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.GlyphLayout_Game;
import aoc.kingdoms.lukasz.jakowski.LanguageManager;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.advisors.VjN.hQfu;
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
import aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonUnit2 extends MenuElement {
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
    public Color colorBG;
    public Color colorBGOver;
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
    public int unitTypeID;
    public int iTextWidth = 0;
    public int iTextHeight = 0;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.button.ButtonUnit2$1, reason: invalid class name */
    class AnonymousClass1 extends MenuElement_Hover {
        AnonymousClass1(List list) {
            super(list);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover
        public int getMinPosX() {
            return InGame_RecruitArmy.HOVER_POSX;
        }
    }

    public ButtonUnit2(int i, int i2, int i3, int i4, int i5, boolean z, boolean z2) {
        this.maxIconWidth = 0;
        this.typeOfElement = MenuElement_Type.BUTTON;
        this.unitTypeID = i;
        this.armyID = i2;
        this.fontID = CFG.FONT_REGULAR;
        setPosX(i3);
        setPosY(i4);
        setWidth(i5);
        setHeight(ImageManager.getImage(Images.unitsFrame).getHeight() + getTitleHeight());
        setText(ArmyManager.lArmy.get(i).get(i2).Name);
        this.sAttack = "" + ArmyManager.lArmy.get(i).get(i2).getAttack(Game.player.iCivID);
        GlyphLayout_Game glyphLayout_Game = Renderer.glyphLayout;
        BitmapFont bitmapFont = Renderer.fontMain.get(CFG.FONT_REGULAR);
        String str = HjHDSSkYG.VavJkxoeooVaBI;
        glyphLayout_Game.setText(bitmapFont, str);
        this.iAttackWidth = (int) Renderer.glyphLayout.width;
        this.sDefense = "" + ArmyManager.lArmy.get(i).get(i2).getDefense(Game.player.iCivID);
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR), str);
        this.iDefenseWidth = (int) Renderer.glyphLayout.width;
        this.sRecruitmentTime = "" + ArmyManager.getRecruitmentTime(Game.player.iCivID, -1, i, i2);
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), this.sRecruitmentTime);
        this.iRecruitmentTimeWidth = (int) Renderer.glyphLayout.width;
        this.iRecruitmentTimeHeight = (int) Renderer.glyphLayout.height;
        this.sSpeed = "" + ArmyManager.lArmy.get(i).get(i2).MovementSpeed;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR), this.sSpeed);
        this.iSpeedWidth = (int) Renderer.glyphLayout.width;
        this.iSpeedHeight = (int) Renderer.glyphLayout.height;
        this.sCost = "" + ArmyManager.getRecruitmentCost(Game.player.iCivID, -1, i, i2);
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), this.sCost);
        this.iCostWidth = (int) Renderer.glyphLayout.width;
        this.iCostHeight = (int) Renderer.glyphLayout.height;
        iconScale = getImageScale(Images.attack);
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
        this.maxIconWidth = Math.max(timeIconWidth, Math.max(goldIconWidth, speedIconWidth));
        iconAttackDefenseMaxWidth = Math.max(attackIconWidth, defenseIconWidth);
        setClickable(z);
        setVisible(true);
        if (z2) {
            this.colorBG = Colors.COLOR_GRADIENT_BG_BLUE;
            this.colorBGOver = Colors.COLOR_GRADIENT_OVER_BLUE;
        } else {
            this.colorBG = Colors.COLOR_GRADIENT_BG;
            this.colorBGOver = Colors.COLOR_GRADIENT_OVER;
        }
        int i6 = ((((i5 - (CFG.PADDING * 7)) - timeIconWidth) - goldIconWidth) - this.iCostWidth) - this.iRecruitmentTimeWidth;
        int i7 = 0;
        while (this.iTextWidth > i6 && getText().length() > 5 && (i7 = i7 + 1) < 100) {
            setText(getText().substring(0, Math.max(1, getText().length() - 3)) + "..");
        }
    }

    private final float getImageScale(int i) {
        return CFG.TEXT_HEIGHT / ImageManager.getImage(i).getHeight();
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
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("SiegeAbility") + ": ", "" + CFG.getPrecision2(ArmyManager.lArmy.get(this.unitTypeID).get(this.armyID).SiegeProgress, 100), Images.siege, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
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
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("RecruitmentTime") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("XDays", ArmyManager.getRecruitmentTime(Game.player.iCivID, -1, this.unitTypeID, this.armyID)), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER_TIME, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaintenanceCost") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(hQfu.McOTmccbI, CFG.getPrecision2(ArmyManager.lArmy.get(this.unitTypeID).get(this.armyID).MaintenanceCost, 100)), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
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
    public final void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        drawButtonBG(spriteBatch, i, i2, z);
        drawText(spriteBatch, i, i2, z);
    }

    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        if (getIsHovered() || z || (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_RECRUIT_ARMY && Game.armyRecruit.unitID == this.unitTypeID && Game.armyRecruit.armyID == this.armyID)) {
            Renderer.drawBoxCornerEmpty(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        }
        int posY = getPosY() + getTitleHeight() + i2;
        int height = getHeight() - getTitleHeight();
        spriteBatch.setColor(new Color(this.colorBG.r, this.colorBG.g, this.colorBG.b, 0.4f));
        Images.pix.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        Images.pix.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getTitleHeight());
        spriteBatch.setColor(new Color(this.colorBG.r, this.colorBG.g, this.colorBG.b, 0.3f));
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + getInnerPosX() + i, posY, getInnerWidth(), height);
        Color color = COLOR_STATS;
        spriteBatch.setColor(new Color(color.r, color.g, color.b, 0.4f));
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + getInnerPosX() + i, posY, getInnerWidth(), height);
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + getInnerPosX() + i, posY, getInnerWidth(), 1);
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + getInnerPosX() + i, ((getPosY() + getHeight()) - 1) + i2, getInnerWidth(), 1);
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + getInnerPosX() + i, (getTitleHeight() + posY) - 1, getInnerWidth(), 1);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.3f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + getInnerPosX() + i, posY, getInnerWidth(), CFG.PADDING);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.2f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + getInnerPosX() + i, ((getPosY() + getHeight()) - CFG.PADDING) + i2, getInnerWidth(), CFG.PADDING, false, true);
        spriteBatch.setColor(new Color(this.colorBGOver.r, this.colorBGOver.g, this.colorBGOver.b, 0.75f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getTitleHeight());
        spriteBatch.setColor(new Color(this.colorBGOver.r, this.colorBGOver.g, this.colorBGOver.b, 0.75f));
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getTitleHeight());
        spriteBatch.setColor(new Color(this.colorBGOver.r, this.colorBGOver.g, this.colorBGOver.b, 1.0f));
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getTitleHeight());
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), 1);
        spriteBatch.setColor(new Color(this.colorBG.r, this.colorBG.g, this.colorBG.b, 0.2f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), CFG.PADDING);
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + i, ((getPosY() + getTitleHeight()) - CFG.PADDING) + i2, getWidth(), CFG.PADDING, false, true);
        spriteBatch.setColor(new Color(this.colorBG.r, this.colorBG.g, this.colorBG.b, 0.7f));
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), CFG.PADDING, false, true);
        Images.gradientXY.draw(spriteBatch, getPosX() + i, ((getPosY() + getTitleHeight()) - CFG.PADDING) + i2, getWidth(), CFG.PADDING);
        if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_RECRUIT_ARMY && Game.armyRecruit.unitID == this.unitTypeID && Game.armyRecruit.armyID == this.armyID) {
            spriteBatch.setColor(new Color(Colors.HOVER_POSITIVE.r, Colors.HOVER_POSITIVE.g, Colors.HOVER_POSITIVE.b, 0.15f));
            ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getTitleHeight(), false, true);
            Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getTitleHeight());
        }
        spriteBatch.setColor(Color.WHITE);
        ArmyManager.armyImages.get(ArmyManager.lArmy.get(this.unitTypeID).get(this.armyID).ImageID).draw(spriteBatch, getPosX() + i, posY, ImageManager.getImage(Images.unitsFrame).getWidth(), ImageManager.getImage(Images.unitsFrame).getHeight());
        spriteBatch.setColor(Color.WHITE);
        ImageManager.getImage(Images.unitsFrame).draw(spriteBatch, getPosX() + i, posY);
        if (z) {
            Renderer.drawBoxLineFrame(spriteBatch, getPosX() + i, posY, ImageManager.getImage(Images.unitsFrame).getWidth(), ImageManager.getImage(Images.unitsFrame).getHeight(), Colors.COLOR_BOX_ACTIVE);
        } else if (getIsHovered()) {
            Renderer.drawBoxLineFrame(spriteBatch, getPosX() + i, posY, ImageManager.getImage(Images.unitsFrame).getWidth(), ImageManager.getImage(Images.unitsFrame).getHeight(), Colors.COLOR_BOX_HOVER);
        }
    }

    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, getText(), getPosX() + (CFG.PADDING * 2) + i, ((getPosY() + (getTitleHeight() / 2)) - (getTextHeight() / 2)) + i2, getColor(z));
        int titleHeight = getTitleHeight() + ((getHeight() - getTitleHeight()) / 2);
        int titleHeight2 = getTitleHeight() / 2;
        Image image = ImageManager.getImage(Images.gold);
        int posX = (((getPosX() + getWidth()) - (CFG.PADDING * 2)) - goldIconWidth) + i;
        int posY = getPosY() + titleHeight2;
        int i3 = goldIconHeight;
        image.draw(spriteBatch, posX, (posY - (i3 / 2)) + i2, goldIconWidth, i3);
        Image image2 = ImageManager.getImage(Images.time);
        int posX2 = (((((getPosX() + getWidth()) - (CFG.PADDING * 5)) - timeIconWidth) - goldIconWidth) - this.iCostWidth) + i;
        int posY2 = getPosY() + titleHeight2;
        int i4 = timeIconHeight;
        image2.draw(spriteBatch, posX2, (posY2 - (i4 / 2)) + i2, timeIconWidth, i4);
        Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, this.sCost, ((((getPosX() + getWidth()) - (CFG.PADDING * 3)) - goldIconWidth) - this.iCostWidth) + i, ((getPosY() + titleHeight2) - (this.iCostHeight / 2)) + i2, Colors.HOVER_RIGHT2);
        Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, this.sRecruitmentTime, ((((((getPosX() + getWidth()) - (CFG.PADDING * 6)) - timeIconWidth) - goldIconWidth) - this.iCostWidth) - this.iRecruitmentTimeWidth) + i, ((getPosY() + titleHeight2) - (this.iRecruitmentTimeHeight / 2)) + i2, Colors.HOVER_RIGHT2);
        Image image3 = ImageManager.getImage(Images.movementSpeed);
        int posX3 = getPosX() + getInnerPosX() + (CFG.PADDING * 10);
        int i5 = iconAttackDefenseMaxWidth;
        int i6 = posX3 + i5 + this.iAttackWidth + ((i5 - defenseIconWidth) / 2) + i5 + this.iDefenseWidth + ((i5 - speedIconWidth) / 2) + i;
        int posY3 = getPosY() + titleHeight;
        int i7 = speedIconHeight;
        image3.draw(spriteBatch, i6, (posY3 - (i7 / 2)) + i2, speedIconWidth, i7);
        int i8 = CFG.FONT_REGULAR;
        String str = this.sSpeed;
        int posX4 = getPosX() + getInnerPosX() + (CFG.PADDING * 12);
        int i9 = iconAttackDefenseMaxWidth;
        int i10 = posX4 + i9 + this.iAttackWidth + ((i9 - defenseIconWidth) / 2) + i9 + this.iDefenseWidth;
        int i11 = speedIconWidth;
        Renderer.drawText(spriteBatch, i8, str, i10 + ((i9 - i11) / 2) + i11 + i, ((getPosY() + titleHeight) - (CFG.TEXT_HEIGHT / 2)) + i2, Colors.HOVER_LEFT2);
        Image image4 = ImageManager.getImage(Images.attack);
        int posX5 = getPosX() + getInnerPosX() + (CFG.PADDING * 4) + ((iconAttackDefenseMaxWidth - attackIconWidth) / 2) + i;
        int posY4 = getPosY() + titleHeight;
        int i12 = attackIconHeight;
        image4.draw(spriteBatch, posX5, (posY4 - (i12 / 2)) + i2, attackIconWidth, i12);
        Renderer.drawText(spriteBatch, CFG.FONT_REGULAR, this.sAttack, getPosX() + getInnerPosX() + (CFG.PADDING * 6) + iconAttackDefenseMaxWidth + i, ((getPosY() + titleHeight) - (CFG.TEXT_HEIGHT / 2)) + i2, Colors.HOVER_LEFT2);
        Image image5 = ImageManager.getImage(Images.defense);
        int posX6 = getPosX() + getInnerPosX() + (CFG.PADDING * 7);
        int i13 = iconAttackDefenseMaxWidth;
        image5.draw(spriteBatch, posX6 + i13 + this.iAttackWidth + ((i13 - defenseIconWidth) / 2) + i, ((getPosY() + titleHeight) - (attackIconHeight / 2)) + i2, defenseIconWidth, defenseIconHeight);
        Renderer.drawText(spriteBatch, CFG.FONT_REGULAR, this.sDefense, getPosX() + getInnerPosX() + (CFG.PADDING * 9) + (iconAttackDefenseMaxWidth * 2) + this.iAttackWidth + i, ((getPosY() + titleHeight) - (CFG.TEXT_HEIGHT / 2)) + i2, Colors.HOVER_LEFT2);
    }

    protected Color getColor(boolean z) {
        return Colors.getColorTopStatsHover(z, getIsHovered());
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
        return CFG.TEXT_HEIGHT + (CFG.PADDING * 5);
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
