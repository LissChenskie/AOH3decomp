package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.Renderer.SparksAnimation;
import aoc.kingdoms.lukasz.map.battles.Battle;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.map.terrain.exjB.uiwPYaNhJS;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.MenuElement_Type;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Flag;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Button_OutlinerBattle extends Button_Outliner {
    public String battleKey;
    public int civIDLeft;
    public int civIDRight;
    public int lastTurnID;
    public int leftIconMaxW;
    public SparksAnimation sparksAnimation;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.button.Button_OutlinerBattle$1, reason: invalid class name */
    class AnonymousClass1 extends Game.SimpleTask {
        AnonymousClass1(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_Right();
        }
    }

    public Button_OutlinerBattle(String str, int i, int i2, int i3, int i4) {
        super("", i, i2, i3, i4, 0);
        this.sparksAnimation = new SparksAnimation();
        this.lastTurnID = -999645;
        this.typeOfElement = MenuElement_Type.BUTTON_FLAG;
        this.battleKey = str;
        this.leftIconMaxW = Math.max(ImageManager.getImage(Images.relationsUp).getWidth(), ImageManager.getImage(Images.battle).getWidth());
        updateBattle();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void actionElement() {
        if (Game.menuManager.getVisibleInGame_Battle() && InGame_Battle.key.equals(this.battleKey)) {
            Game.menuManager.setVisibleInGame_Battle(false);
        } else {
            InGame_Battle.key = this.battleKey;
            Game.menuManager.rebuildInGame_Battle();
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void actionElementPPM() {
        Battle battle = Game.battleManager.getBattle(this.battleKey);
        if (battle != null) {
            Game.mapCoords.centerToProvinceID(battle.provinceID);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        try {
            Battle battle = Game.battleManager.getBattle(this.battleKey);
            if (battle == null) {
                this.menuElementHover = null;
                return;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(uiwPYaNhJS.VFcuzmvwU, Game.getProvince(battle.provinceID).getProvinceName()), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.battle, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Soldiers") + ":", CFG.FONT_REGULAR_SMALL));
            if (battle.attackingArmy.iCivID < 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.rebelsFlag, CFG.PADDING, CFG.PADDING));
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_Flag(battle.attackingArmy.iCivID, CFG.PADDING, CFG.PADDING));
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getNumberWithSpaces("" + battle.attackingArmy.numOfUnits) + GameValues.battle.RIGHT_BATTLE_TEXT + CFG.getNumberWithSpaces("" + battle.defendingArmy.numOfUnits), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            if (battle.defendingArmy.iCivID < 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.rebelsFlag, CFG.PADDING, 0));
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_Flag(battle.defendingArmy.iCivID, CFG.PADDING, 0));
            }
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        } catch (Exception unused) {
            this.menuElementHover = null;
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button_Outliner, aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        updateBattle();
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.5f));
        this.sparksAnimation.draw2(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        spriteBatch.setColor(Color.WHITE);
        ImageManager.getImage(Images.battle).draw(spriteBatch, getPosX() + (CFG.PADDING * 2) + ((this.leftIconMaxW - ImageManager.getImage(Images.battle).getWidth()) / 2) + i, ((getPosY() + (getHeight() / 2)) - (ImageManager.getImage(Images.battle).getHeight() / 2)) + i2);
        spriteBatch.setShader(Renderer.shaderAlpha);
        int i3 = this.civIDLeft;
        if (i3 >= 0) {
            Game.getCiv(i3).getFlag().getTexture().bind(1);
        } else {
            ImageManager.getImage(Images.rebelsFlag).getTexture().bind(1);
        }
        Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
        ImageManager.getImage(Images.flagRect2Mask).draw(spriteBatch, getPosX() + (CFG.PADDING * 4) + this.leftIconMaxW + i, ((getPosY() + (getHeight() / 2)) - (ImageManager.getImage(Images.flagRect2).getHeight() / 2)) + i2, ImageManager.getImage(Images.flagRect2).getWidth(), ImageManager.getImage(Images.flagRect2).getHeight());
        spriteBatch.flush();
        spriteBatch.setShader(Renderer.shaderDefault);
        ImageManager.getImage(Images.flagRect2).draw(spriteBatch, getPosX() + (CFG.PADDING * 4) + this.leftIconMaxW + i, ((getPosY() + (getHeight() / 2)) - (ImageManager.getImage(Images.flagRect2).getHeight() / 2)) + i2, ImageManager.getImage(Images.flagRect2).getWidth(), ImageManager.getImage(Images.flagRect2).getHeight());
        spriteBatch.setShader(Renderer.shaderAlpha);
        int i4 = this.civIDRight;
        if (i4 >= 0) {
            Game.getCiv(i4).getFlag().getTexture().bind(1);
        } else {
            ImageManager.getImage(Images.rebelsFlag).getTexture().bind(1);
        }
        Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
        ImageManager.getImage(Images.flagRect2Mask).draw(spriteBatch, (((getPosX() + getWidth()) - (CFG.PADDING * 2)) - ImageManager.getImage(Images.flagRect2).getWidth()) + i, ((getPosY() + (getHeight() / 2)) - (ImageManager.getImage(Images.flagRect2).getHeight() / 2)) + i2, ImageManager.getImage(Images.flagRect2).getWidth(), ImageManager.getImage(Images.flagRect2).getHeight());
        spriteBatch.flush();
        spriteBatch.setShader(Renderer.shaderDefault);
        ImageManager.getImage(Images.flagRect2).draw(spriteBatch, (((getPosX() + getWidth()) - (CFG.PADDING * 2)) - ImageManager.getImage(Images.flagRect2).getWidth()) + i, ((getPosY() + (getHeight() / 2)) - (ImageManager.getImage(Images.flagRect2).getHeight() / 2)) + i2, ImageManager.getImage(Images.flagRect2).getWidth(), ImageManager.getImage(Images.flagRect2).getHeight());
        Renderer.drawText(spriteBatch, this.fontID, getTextToDraw(), (((((getPosX() + this.leftIconMaxW) + ImageManager.getImage(Images.flagRect2).getWidth()) + (CFG.PADDING * 4)) + ((getWidth() - ((this.leftIconMaxW + (ImageManager.getImage(Images.flagRect2).getWidth() * 2)) + (CFG.PADDING * 6))) / 2)) - (getTextWidth() / 2)) + i, ((getPosY() + (getHeight() / 2)) - (getTextHeight() / 2)) + i2, getColor(z));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setIsHovered(boolean z) {
        super.setIsHovered(z);
        if (z) {
            ProvinceDraw.drawProvincesCiv_HoveredFlagID = this.iCurrent;
        }
    }

    public final void updateBattle() {
        try {
            if (this.lastTurnID != Game_Calendar.TURN_ID) {
                this.lastTurnID = Game_Calendar.TURN_ID;
                Battle battle = Game.battleManager.getBattle(this.battleKey);
                if (battle == null) {
                    Game.addSimpleTask(new AnonymousClass1("rebuildInGame_Right"));
                    return;
                }
                this.civIDLeft = battle.attackingArmy.iCivID;
                this.civIDRight = battle.defendingArmy.iCivID;
                setText(CFG.getNumberWithSpaces("" + battle.attackingArmy.numOfUnits) + " vs " + CFG.getNumberWithSpaces("" + battle.defendingArmy.numOfUnits));
                this.iCurrent = this.civIDLeft == Game.player.iCivID ? this.civIDRight : this.civIDLeft;
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
