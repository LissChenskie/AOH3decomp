package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.map.advisors.VjN.hQfu;
import aoc.kingdoms.lukasz.map.army.ArmyManager;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonRecruitingArmy extends Button {
    public int armyID;
    public int iCivID;
    public int unitTypeID;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.button.ButtonRecruitingArmy$1, reason: invalid class name */
    class AnonymousClass1 extends Game.SimpleTask {
        AnonymousClass1(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            if (Game.menuManager.getVisibleInGame_ProvinceInfo()) {
                Game.menuManager.rebuildInGame_ProvinceInfo(false);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.button.ButtonRecruitingArmy$2, reason: invalid class name */
    class AnonymousClass2 extends MenuElement_Hover {
        AnonymousClass2(List list) {
            super(list);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover, aoc.kingdoms.lukasz.menu.Hover
        public void draw(SpriteBatch spriteBatch, int i, int i2) {
            super.draw(spriteBatch, i, (InGame_ProvinceInfo.HOVER_POSY + ((CFG.GAME_HEIGHT - InGame_ProvinceInfo.HOVER_POSY) / 2)) - (this.iHeight / 2));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover
        public int getMinPosX() {
            return InGame_ProvinceInfo.HOVER_POSX;
        }
    }

    public ButtonRecruitingArmy(int i, int i2, int i3, int i4, int i5) {
        this.unitTypeID = i3;
        this.armyID = i4;
        this.iCivID = i5;
        init(null, CFG.FONT_REGULAR_SMALL, this.iTextPositionX, i, i2, getButtonWidth(), getButtonHeight(), true, true, false, false);
    }

    public static int getButtonHeight() {
        return ImageManager.getImage(Images.buildingsFrameSmall).getHeight();
    }

    public static int getButtonWidth() {
        return ImageManager.getImage(Images.buildingsFrameSmall).getWidth();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void actionElement() {
        if (this.iCivID == Game.player.iCivID) {
            Game.getCiv(Game.player.iCivID).cancelRecruitArmy(InGame_ProvinceInfo.iProvinceID);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int recruitArmyInProvinceID = Game.getCiv(this.iCivID).getRecruitArmyInProvinceID(InGame_ProvinceInfo.iProvinceID);
        if (this.iCivID == Game.player.iCivID) {
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ClickToCancel"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("TheArmyWillBeDeployedToThisLocation") + ": "));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game_Calendar.getDate_ByTurnID(Game_Calendar.TURN_ID + Game.getCiv(this.iCivID).lArmyRecruit.get(recruitArmyInProvinceID).get(0).timeLeft), CFG.FONT_BOLD_SMALL, Colors.HOVER_RIGHT));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        this.menuElementHover = new AnonymousClass2(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        float f;
        try {
            int recruitArmyInProvinceID = Game.getCiv(this.iCivID).getRecruitArmyInProvinceID(InGame_ProvinceInfo.iProvinceID);
            if (recruitArmyInProvinceID >= 0) {
                this.unitTypeID = Game.getCiv(this.iCivID).lArmyRecruit.get(recruitArmyInProvinceID).get(0).unitID;
                this.armyID = Game.getCiv(this.iCivID).lArmyRecruit.get(recruitArmyInProvinceID).get(0).armyID;
                f = Game.getCiv(this.iCivID).lArmyRecruit.get(recruitArmyInProvinceID).get(0).timeLeft / ArmyManager.lArmy.get(Game.getCiv(this.iCivID).lArmyRecruit.get(recruitArmyInProvinceID).get(0).unitID).get(Game.getCiv(this.iCivID).lArmyRecruit.get(recruitArmyInProvinceID).get(0).armyID).RecruitmentTime;
            } else {
                Game.addSimpleTask(new AnonymousClass1(hQfu.GnVn));
                f = 0.0f;
            }
            ArmyManager.armyImages.get(ArmyManager.lArmy.get(this.unitTypeID).get(this.armyID).ImageID).draw(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.buildingsFrameSmall).getWidth(), ImageManager.getImage(Images.buildingsFrameSmall).getHeight());
            ImageManager.getImage(Images.buildingsFrameSmall).draw(spriteBatch, getPosX() + i, getPosY() + i2);
            spriteBatch.setColor(new Color(ProvinceDraw.progressBarBG));
            ImageManager.getImage(Images.progressBarFrameMask).draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.progressBarFrameMask).getWidth() / 2)) + i, ((((getPosY() - CFG.PADDING) + getHeight()) - (ImageManager.getImage(Images.progressBarFrame).getHeight() / 2)) - (ImageManager.getImage(Images.progressBarFrameMask).getHeight() / 2)) + i2);
            spriteBatch.setColor(new Color(ProvinceDraw.progressBar));
            ImageManager.getImage(Images.progressBarFrameMask).draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.progressBarFrameMask).getWidth() / 2)) + i, ((((getPosY() - CFG.PADDING) + getHeight()) - (ImageManager.getImage(Images.progressBarFrame).getHeight() / 2)) - (ImageManager.getImage(Images.progressBarFrameMask).getHeight() / 2)) + i2, (int) (ImageManager.getImage(Images.progressBarFrameMask).getWidth() * (1.0f - f)), ImageManager.getImage(Images.progressBarFrameMask).getHeight());
            spriteBatch.setColor(Color.WHITE);
            ImageManager.getImage(Images.progressBarFrame).draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.progressBarFrame).getWidth() / 2)) + i, (((getPosY() - CFG.PADDING) + getHeight()) - ImageManager.getImage(Images.progressBarFrame).getHeight()) + i2);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getSFX() {
        return this.iCivID == Game.player.iCivID ? SoundsManager.SOUND_RECRUIT_CANCEL : super.getSFX();
    }
}
