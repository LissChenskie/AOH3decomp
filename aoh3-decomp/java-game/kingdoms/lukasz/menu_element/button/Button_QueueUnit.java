package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.LanguageManager;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.army.ArmyManager;
import aoc.kingdoms.lukasz.map.army.ArmyRecruit;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Flag;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Center;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Button_QueueUnit extends Button {
    public ArmyRecruit armyRecruit;

    public Button_QueueUnit(int i, int i2, ArmyRecruit armyRecruit) {
        init(null, CFG.FONT_BOLD_SMALL, -1, i, i2, ImageManager.getImage(Images.unitsFrameMap).getWidth(), ImageManager.getImage(Images.unitsFrameMap).getHeight(), true, true, false, false);
        this.armyRecruit = armyRecruit;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void actionElement() {
        Game.mapCoords.centerToProvinceID(this.armyRecruit.provinceID);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void actionElementPPM() {
        Game.getCiv(Game.player.iCivID).cancelRecruitArmy(this.armyRecruit.provinceID);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        LanguageManager languageManager;
        String str;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center(ArmyManager.lArmy.get(this.armyRecruit.unitID).get(this.armyRecruit.armyID).Name, CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Attack") + ": ", "" + ArmyManager.lArmy.get(this.armyRecruit.unitID).get(this.armyRecruit.armyID).getAttack(Game.player.iCivID), Images.attack, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Defense") + ": ", "" + ArmyManager.lArmy.get(this.armyRecruit.unitID).get(this.armyRecruit.armyID).getDefense(Game.player.iCivID), Images.defense, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MovementSpeed") + ": ", "" + ArmyManager.lArmy.get(this.armyRecruit.unitID).get(this.armyRecruit.armyID).MovementSpeed, Images.movementSpeed, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("AttackRange") + ": ", "" + ArmyManager.lArmy.get(this.armyRecruit.unitID).get(this.armyRecruit.armyID).AttackRange, Images.attack, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("SiegeAbility") + ": ", "" + CFG.getPrecision2(ArmyManager.lArmy.get(this.armyRecruit.unitID).get(this.armyRecruit.armyID).SiegeProgress, 100), Images.siege, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("BattlePosition") + ": ", CFG.FONT_REGULAR_SMALL));
        StringBuilder sb = new StringBuilder("");
        if (ArmyManager.lUnitsTypes.get(this.armyRecruit.unitID).Line == 0 || ArmyManager.lUnitsTypes.get(this.armyRecruit.unitID).Line == 1) {
            languageManager = Game.lang;
            str = "FirstLine";
        } else if (ArmyManager.lUnitsTypes.get(this.armyRecruit.unitID).Line == 2) {
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
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(this.armyRecruit.provinceID).getProvinceName(), Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(this.armyRecruit.provinceID).getCivID(), CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        this.menuElementHover = new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Image image = ImageManager.getImage(Images.progressBarFrame);
        Image image2 = ImageManager.getImage(Images.progressBarFrameMask);
        Image image3 = ImageManager.getImage(Images.unitsFrameMap);
        spriteBatch.setShader(Renderer.shaderAlpha);
        ArmyManager.armyImages.get(ArmyManager.lArmy.get(this.armyRecruit.unitID).get(this.armyRecruit.armyID).ImageID).getTexture().bind(1);
        Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
        ImageManager.getImage(Images.unitsFrameMapMask).draw(spriteBatch, getPosX() + i, getPosY() + i2);
        spriteBatch.flush();
        spriteBatch.setShader(Renderer.shaderDefault);
        image3.draw(spriteBatch, getPosX() + i, getPosY() + i2);
        int width = (image.getWidth() - image2.getWidth()) / 2;
        int height = (image.getHeight() - image2.getHeight()) / 2;
        spriteBatch.setColor(new Color(ProvinceDraw.progressBarBG));
        image2.draw(spriteBatch, getPosX() + i + width, (((getPosY() + i2) + image3.getHeight()) - image.getHeight()) + height);
        spriteBatch.setColor(ProvinceDraw.progressBar);
        image2.draw(spriteBatch, getPosX() + i + width, (((getPosY() + i2) + image3.getHeight()) - image.getHeight()) + height, (int) Math.max(1.0f, image2.getWidth() * ((ArmyManager.lArmy.get(this.armyRecruit.unitID).get(this.armyRecruit.armyID).RecruitmentTime - this.armyRecruit.timeLeft) / ArmyManager.lArmy.get(this.armyRecruit.unitID).get(this.armyRecruit.armyID).RecruitmentTime)), image2.getHeight());
        spriteBatch.setColor(Color.WHITE);
        image.draw(spriteBatch, ((getPosX() + i) + (image3.getWidth() / 2)) - (image.getWidth() / 2), ((getPosY() + i2) + image3.getHeight()) - image.getHeight());
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
    }
}
