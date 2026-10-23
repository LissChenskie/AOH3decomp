package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Flag;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagCiv_Title_AllianceSpecial;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonFlag_AllianceSpecial extends Button {
    private int flagImgID = 0;
    public int iAllianceID;

    public ButtonFlag_AllianceSpecial(int i, int i2, int i3) {
        init("", this.fontID, this.iTextPositionX, i2, i3, getButtonWidth(), getButtonHeight(), true, true, false, false);
        this.iAllianceID = i;
        updateLanguage();
    }

    public static int getButtonHeight() {
        return ImageManager.getImage(Images.flagOver.get(0).intValue()).getHeight();
    }

    public static int getButtonWidth() {
        return ImageManager.getImage(Images.flagOver.get(0).intValue()).getWidth();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void actionElementPPM() {
        try {
            if (this.iAllianceID < 0 || Game.alliancesSpecial.get(this.iAllianceID).iLeaderCivID < 0 || Game.getCiv(Game.alliancesSpecial.get(this.iAllianceID).iLeaderCivID).getCapitalProvinceID() < 0 || Game.alliancesSpecial.get(this.iAllianceID).iLeaderCivID != Game.getProvince(Game.getCiv(Game.alliancesSpecial.get(this.iAllianceID).iLeaderCivID).getCapitalProvinceID()).getCivID()) {
                return;
            }
            Game.mapCoords.centerToProvinceID(Game.getCiv(Game.alliancesSpecial.get(this.iAllianceID).iLeaderCivID).getCapitalProvinceID());
        } catch (Exception unused) {
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title_AllianceSpecial(this.iAllianceID, Game.lang.get("Civilizations") + ": " + Game.getAllianceSpecialNumOfCivs(this.iAllianceID)));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        try {
            if (Game.alliancesSpecial.get(this.iAllianceID).iLeaderCivID >= 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(Game.alliancesSpecial.get(this.iAllianceID).Name_Leader) + ": ", CFG.FONT_BOLD, Colors.HOVER_LEFT));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(Game.alliancesSpecial.get(this.iAllianceID).iLeaderCivID).getCivName(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.alliancesSpecial.get(this.iAllianceID).iLeaderCivID, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        this.menuElementHover = new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        drawFlag(spriteBatch, i, i2, z);
    }

    protected void drawFlag(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        if (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).FLAG_BELOW) {
            ImageManager.getImage(Images.flagBelow).draw(spriteBatch, getPosX() + ((ImageManager.getImage(Images.flagOver.get(this.flagImgID).intValue()).getWidth() - ImageManager.getImage(Images.flagBelow).getWidth()) / 2) + i, getPosY() + i2);
        }
        spriteBatch.setShader(Renderer.shaderAlpha);
        try {
            Game.alliancesSpecial_Flag.get(this.iAllianceID).getTexture().bind(1);
            Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
            ImageManager.getImage(Images.flagMask.get(this.flagImgID).intValue()).draw(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.flagMask.get(this.flagImgID).intValue()).getWidth(), ImageManager.getImage(Images.flagMask.get(this.flagImgID).intValue()).getHeight());
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        spriteBatch.flush();
        spriteBatch.setShader(Renderer.shaderDefault);
        ImageManager.getImage(Images.flagOver.get(this.flagImgID).intValue()).draw(spriteBatch, getPosX() + ((ImageManager.getImage(Images.flagMask.get(this.flagImgID).intValue()).getWidth() - ImageManager.getImage(Images.flagOver.get(this.flagImgID).intValue()).getWidth()) / 2) + i, getPosY() + i2);
        if (getIsHovered() || z) {
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.3f));
            ImageManager.getImage(Images.flagOver.get(this.flagImgID).intValue()).draw(spriteBatch, getPosX() + ((ImageManager.getImage(Images.flagMask.get(this.flagImgID).intValue()).getWidth() - ImageManager.getImage(Images.flagOver.get(this.flagImgID).intValue()).getWidth()) / 2) + i, getPosY() + i2);
        }
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getCurrent() {
        return this.iAllianceID;
    }

    public int getFlagCivID() {
        return this.iAllianceID;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void updateLanguage() {
        this.flagImgID = Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).FLAG_GROUP[0] + (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).FLAG_GROUP[1] - Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).FLAG_GROUP[0] > 0 ? (ButtonFlag.EXTRA_RANDOM + getFlagCivID()) % (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).FLAG_GROUP[1] - Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).FLAG_GROUP[0]) : 0);
    }
}
