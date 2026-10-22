package aoc.kingdoms.lukasz.menu_element.button;

import androidx.lifecycle.livedata.core.jzw.jkEBdieJhbh;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.LanguageManager;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.army.ArmyManager;
import aoc.kingdoms.lukasz.map.technology.Bhs.fiRhHJntP;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Center;
import aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.backends.android.surfaceview.JuyF.CvuNnwgYwe;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonArmyBattle extends Button {
    public int iArmyID;
    public int iAttackWidth;
    public int iCivID;
    public int iDefenseWidth;
    public int iUnitTypeID;
    public boolean inBattleView;
    public int numOfRegiments;
    public int unitImgWidth;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.button.ButtonArmyBattle$1, reason: invalid class name */
    class AnonymousClass1 extends MenuElement_Hover {
        AnonymousClass1(List list) {
            super(list);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover, aoc.kingdoms.lukasz.menu.Hover
        public void draw(SpriteBatch spriteBatch, int i, int i2) {
            super.draw(spriteBatch, i, (InGame_Battle.HOVER_POSY + ((CFG.GAME_HEIGHT - InGame_Battle.HOVER_POSY) / 2)) - (this.iHeight / 2));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover
        public int getMinPosX() {
            return InGame_Battle.HOVER_POSX;
        }
    }

    public ButtonArmyBattle(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
        this.unitImgWidth = 0;
        init(CFG.getNumberWithSpaces(str), CFG.FONT_REGULAR_SMALL, this.iTextPositionX, i3, i4, getButtonWidth(), getButtonHeight(), true, true, false, false);
        this.iUnitTypeID = i5;
        this.iArmyID = i6;
        this.numOfRegiments = i;
        this.iCivID = i2;
        this.inBattleView = z;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), "" + ArmyManager.lArmy.get(this.iUnitTypeID).get(this.iArmyID).getAttack(i2));
        this.iAttackWidth = (int) Renderer.glyphLayout.width;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), "" + ArmyManager.lArmy.get(this.iUnitTypeID).get(this.iArmyID).getDefense(i2));
        this.iDefenseWidth = (int) Renderer.glyphLayout.width;
        this.unitImgWidth = (int) (ArmyManager.armyImages.get(ArmyManager.lArmy.get(this.iUnitTypeID).get(this.iArmyID).ImageID).getWidth() * (ImageManager.getImage(Images.unitsFrameBattle).getHeight() / ArmyManager.armyImages.get(ArmyManager.lArmy.get(this.iUnitTypeID).get(this.iArmyID).ImageID).getHeight()));
    }

    public static int getButtonHeight() {
        return ImageManager.getImage(Images.unitsFrameBattle).getHeight() + getStatsHeight();
    }

    public static int getButtonWidth() {
        return ImageManager.getImage(Images.unitsFrameBattle).getWidth();
    }

    public static int getStatsHeight() {
        return CFG.TEXT_HEIGHT_SMALL + (CFG.PADDING * 2);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        LanguageManager languageManager;
        String str;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center(ArmyManager.lArmy.get(this.iUnitTypeID).get(this.iArmyID).Name, CFG.FONT_BOLD, Colors.HOVER_GOLD));
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
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(jkEBdieJhbh.cXwDcIfMMCVJkH) + ": ", CFG.FONT_REGULAR_SMALL));
        StringBuilder sb = new StringBuilder("");
        if (ArmyManager.lUnitsTypes.get(this.iUnitTypeID).Line == 0 || ArmyManager.lUnitsTypes.get(this.iUnitTypeID).Line == 1) {
            languageManager = Game.lang;
            str = "FirstLine";
        } else if (ArmyManager.lUnitsTypes.get(this.iUnitTypeID).Line == 2) {
            languageManager = Game.lang;
            str = "Support";
        } else {
            languageManager = Game.lang;
            str = CvuNnwgYwe.nmFEyokKDoW;
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Text(sb.append(languageManager.get(str)).toString(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(fiRhHJntP.LenBbyM) + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + getText(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("/" + (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE * this.numOfRegiments), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (this.inBattleView) {
            this.menuElementHover = new AnonymousClass1(arrayList);
        } else {
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        if (getIsHovered() || z) {
            Renderer.drawBoxCorner(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.unitsFrameBattle).getWidth(), ImageManager.getImage(Images.unitsFrameBattle).getHeight());
        }
        try {
            Renderer.clipViewPeek();
            Renderer.clipView_Start(spriteBatch, getPosX() + i, CFG.GAME_HEIGHT - (getPosY() + i2), ImageManager.getImage(Images.unitsFrameBattle).getWidth(), -ImageManager.getImage(Images.unitsFrameBattle).getHeight());
            ArmyManager.armyImages.get(ArmyManager.lArmy.get(this.iUnitTypeID).get(this.iArmyID).ImageID).draw(spriteBatch, (getPosX() - (this.unitImgWidth / 2)) + (ImageManager.getImage(Images.unitsFrameBattle).getWidth() / 2) + i, getPosY() + i2, this.unitImgWidth, ImageManager.getImage(Images.unitsFrameBattle).getHeight());
            Renderer.clipView_End(spriteBatch);
            Renderer.clipViewPeek_Add(spriteBatch);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        ImageManager.getImage(Images.unitsFrameBattle).draw(spriteBatch, getPosX() + i, getPosY() + i2);
        if (z) {
            Renderer.drawBoxLineFrame(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.unitsFrameBattle).getWidth(), ImageManager.getImage(Images.unitsFrameBattle).getHeight(), Colors.COLOR_BOX_ACTIVE);
        } else if (getIsHovered()) {
            Renderer.drawBoxLineFrame(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.unitsFrameBattle).getWidth(), ImageManager.getImage(Images.unitsFrameBattle).getHeight(), Colors.COLOR_BOX_HOVER);
        }
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.5f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + i, getPosY() + ImageManager.getImage(Images.unitsFrameBattle).getHeight() + i2, getWidth(), getStatsHeight());
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + i, getPosY() + ImageManager.getImage(Images.unitsFrameBattle).getHeight() + i2, 1, getStatsHeight());
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, ((getPosX() + getWidth()) - 1) + i, getPosY() + ImageManager.getImage(Images.unitsFrameBattle).getHeight() + i2, 1, getStatsHeight());
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Renderer.drawTextWithShadow(spriteBatch, CFG.FONT_REGULAR_SMALL, getTextToDraw(), ((getPosX() + (getWidth() / 2)) - (getTextWidth() / 2)) + i, getPosY() + ImageManager.getImage(Images.unitsFrameBattle).getHeight() + CFG.PADDING + i2, getColor(z));
    }
}
