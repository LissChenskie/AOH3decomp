package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.RomanNumber;
import aoc.kingdoms.lukasz.map.army.ArmyManager;
import aoc.kingdoms.lukasz.map.battles.BattleRegiment;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.MenuElement_Type;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Army;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagCiv_Title;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.backends.android.Zrdz.PxHJ;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonBattleRegiment extends MenuElement {
    public int attackRange;
    public boolean defenders;
    public int iCivID;
    public int id;
    public int imageID;
    public int offsetY;
    public boolean secondLine;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.button.ButtonBattleRegiment$1, reason: invalid class name */
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

    public ButtonBattleRegiment(int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, boolean z2) {
        this.offsetY = 0;
        this.typeOfElement = MenuElement_Type.BUTTON;
        this.iCivID = i;
        this.imageID = i2;
        this.id = i5;
        this.secondLine = z;
        this.defenders = z2;
        this.attackRange = (i7 * 2) + 1;
        this.offsetY = i6;
        setPosX(i3);
        setPosY(i4);
        setWidth(ImageManager.getImage(i2).getWidth() + 2);
        setHeight(ImageManager.getImage(i2).getHeight() + 2);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        int battleID = Game.battleManager.getBattleID(InGame_Battle.key);
        if (battleID < 0) {
            this.menuElementHover = null;
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(getBattleRegiment(battleID, this.id).c, RomanNumber.getRoman(getBattleRegiment(battleID, this.id).rn) + ". " + Game.lang.get("Regiment")));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Army("" + getBattleRegiment(battleID, this.id).aR.num, getBattleRegiment(battleID, this.id).aR.uID, getBattleRegiment(battleID, this.id).aR.aID, getBattleRegiment(battleID, this.id).c));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Casualties") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + getBattleRegiment(battleID, this.id).ca, CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.skull, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("CasualtiesOfThePreviousDay") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + getBattleRegiment(battleID, this.id).cL, CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.skull, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Retreated") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + getBattleRegiment(battleID, this.id).re, CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.retreat, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("RetreatsOnTheLastDay") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + getBattleRegiment(battleID, this.id).rL, CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.retreat, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(PxHJ.rdyZH) + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(getBattleRegiment(battleID, this.id).aR.mo * 100.0f, 1) + "%", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.morale, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DiceRoll") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + getBattleRegiment(battleID, this.id).d, CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(" / " + GameValues.battle.BATTLE_MAX_DICE_ROLL_REGIMENT, CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.dice, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AttackRange") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + ArmyManager.lArmy.get(getBattleRegiment(battleID, this.id).aR.uID).get(getBattleRegiment(battleID, this.id).aR.aID).AttackRange, CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("SiegeAbility") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(ArmyManager.lArmy.get(getBattleRegiment(battleID, this.id).aR.uID).get(getBattleRegiment(battleID, this.id).aR.aID).SiegeProgress, 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_RIGHT));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.siege, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        this.menuElementHover = new AnonymousClass1(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        spriteBatch.setColor(Game.getCiv(this.iCivID).getRGB(1.0f));
        Images.pix.draw(spriteBatch, getPosX() + 1 + i, getPosY() + 1 + i2, ImageManager.getImage(this.imageID).getWidth(), ImageManager.getImage(this.imageID).getHeight());
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, getIsHovered() ? 0.65f : 0.4f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + 1 + i, getPosY() + 1 + i2, ImageManager.getImage(this.imageID).getWidth(), ImageManager.getImage(this.imageID).getHeight());
        spriteBatch.setColor(Color.WHITE);
        ImageManager.getImage(this.imageID).draw(spriteBatch, getPosX() + 1 + i, getPosY() + 1 + i2);
        if (getIsHovered()) {
            spriteBatch.setColor(Colors.HOVER_GOLD);
            Renderer.drawBox2(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
            drawHover(spriteBatch, i, i2, z, z2);
        }
        spriteBatch.setColor(Color.WHITE);
    }

    public void drawHover(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        if (this.defenders) {
            int middleHeight = (InGame_Battle.getMiddleHeight() - 1) + (this.secondLine ? ImageManager.getImage(this.imageID).getHeight() + 2 : 0);
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.4f));
            int i3 = middleHeight - 1;
            Images.pix.draw(spriteBatch, getPosX() + (getWidth() / 2) + 1 + i, (getPosY() - middleHeight) + 1 + i2, 1, i3);
            Images.pix.draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - 1) + i, (getPosY() - middleHeight) + 1 + i2, 1, i3);
            Images.pix.draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (((ImageManager.getImage(this.imageID).getWidth() + 1) * this.attackRange) / 2)) + i, (getPosY() - middleHeight) + i2, this.attackRange * (ImageManager.getImage(this.imageID).getWidth() + 1), 1);
            Images.pix.draw(spriteBatch, (((getPosX() + (getWidth() / 2)) - 1) - (((ImageManager.getImage(this.imageID).getWidth() + 1) * this.attackRange) / 2)) + i, (((getPosY() - middleHeight) - CFG.PADDING) - 1) + i2, 1, CFG.PADDING + 2);
            Images.pix.draw(spriteBatch, ((((getPosX() + (getWidth() / 2)) + 1) + (((ImageManager.getImage(this.imageID).getWidth() + 1) * this.attackRange) / 2)) - 1) + i, (((getPosY() - middleHeight) - CFG.PADDING) - 1) + i2, 1, CFG.PADDING + 2);
            spriteBatch.setColor(Colors.HOVER_GOLD);
            Images.pix.draw(spriteBatch, getPosX() + (getWidth() / 2) + i, (getPosY() - middleHeight) + i2, 1, middleHeight);
            Images.pix.draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (((ImageManager.getImage(this.imageID).getWidth() + 1) * this.attackRange) / 2)) + i, ((getPosY() - middleHeight) - 1) + i2, this.attackRange * (ImageManager.getImage(this.imageID).getWidth() + 1), 1);
            Images.pix.draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (((ImageManager.getImage(this.imageID).getWidth() + 1) * this.attackRange) / 2)) + i, (((getPosY() - middleHeight) - CFG.PADDING) - 1) + i2, 1, CFG.PADDING);
            Images.pix.draw(spriteBatch, (((getPosX() + (getWidth() / 2)) + (((ImageManager.getImage(this.imageID).getWidth() + 1) * this.attackRange) / 2)) - 1) + i, (((getPosY() - middleHeight) - CFG.PADDING) - 1) + i2, 1, CFG.PADDING);
            return;
        }
        int middleHeight2 = (InGame_Battle.getMiddleHeight() - 1) + (this.secondLine ? ImageManager.getImage(this.imageID).getHeight() + 2 : 0);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.4f));
        int i4 = middleHeight2 - 1;
        Images.pix.draw(spriteBatch, getPosX() + (getWidth() / 2) + 1 + i, getPosY() + getHeight() + i2, 1, i4);
        Images.pix.draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - 1) + i, getPosY() + getHeight() + i2, 1, i4);
        Images.pix.draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (((ImageManager.getImage(this.imageID).getWidth() + 1) * this.attackRange) / 2)) + i, (((getPosY() + getHeight()) + middleHeight2) - 1) + i2, this.attackRange * (ImageManager.getImage(this.imageID).getWidth() + 1), 1);
        Images.pix.draw(spriteBatch, (((getPosX() + (getWidth() / 2)) - 1) - (((ImageManager.getImage(this.imageID).getWidth() + 1) * this.attackRange) / 2)) + i, (((getPosY() + getHeight()) + middleHeight2) - 1) + i2, 1, CFG.PADDING + 1);
        Images.pix.draw(spriteBatch, ((((getPosX() + (getWidth() / 2)) + 1) + (((ImageManager.getImage(this.imageID).getWidth() + 1) * this.attackRange) / 2)) - 1) + i, (((getPosY() + getHeight()) + middleHeight2) - 1) + i2, 1, CFG.PADDING + 1);
        spriteBatch.setColor(Colors.HOVER_GOLD);
        Images.pix.draw(spriteBatch, getPosX() + (getWidth() / 2) + i, getPosY() + getHeight() + i2, 1, middleHeight2);
        Images.pix.draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (((ImageManager.getImage(this.imageID).getWidth() + 1) * this.attackRange) / 2)) + i, getPosY() + getHeight() + middleHeight2 + i2, ((ImageManager.getImage(this.imageID).getWidth() + 1) * this.attackRange) - 1, 1);
        Images.pix.draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (((ImageManager.getImage(this.imageID).getWidth() + 1) * this.attackRange) / 2)) + i, getPosY() + getHeight() + middleHeight2 + i2, 1, CFG.PADDING);
        Images.pix.draw(spriteBatch, (((getPosX() + (getWidth() / 2)) + (((ImageManager.getImage(this.imageID).getWidth() + 1) * this.attackRange) / 2)) - 1) + i, getPosY() + getHeight() + middleHeight2 + i2, 1, CFG.PADDING);
    }

    public BattleRegiment getBattleRegiment(int i, int i2) {
        return Game.battleManager.getBattle(i).attackingArmy.firstLine.get(i2);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getCurrent() {
        return this.offsetY;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getPosY() {
        return super.getPosY() + this.offsetY;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setCurrent(int i) {
        this.offsetY = i;
    }
}
