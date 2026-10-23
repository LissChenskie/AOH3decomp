package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.MenuElement_Type;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonusFlag;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonFlag2_CivName extends Button {
    public int iCivID;

    public ButtonFlag2_CivName(int i, int i2, int i3, boolean z) {
        init(Game.getCiv(i).getCivName(), CFG.FONT_REGULAR_SMALL, -1, i2, i3, ImageManager.getImage(Images.flagOverDefault).getWidth(), ImageManager.getImage(Images.flagOverDefault).getHeight() + CFG.TEXT_HEIGHT + (CFG.PADDING * 2), z, true, false, false);
        this.typeOfElement = MenuElement_Type.BUTTON_FLAG;
        this.iCivID = i;
        int i4 = 0;
        while (true) {
            if (this.iTextWidth < (getWidth() - (this.iTextPositionX > 0 ? this.iTextPositionX : 0)) - CFG.PADDING || getText().length() <= 5 || (i4 = i4 + 1) >= 100) {
                return;
            } else {
                setText(getText().substring(0, Math.max(1, getText().length() - 3)) + ".");
            }
        }
    }

    public static final float getBoxAlpha(boolean z, boolean z2, boolean z3) {
        if (!z) {
            return 0.2f;
        }
        if (z3) {
            return 0.85f;
        }
        return z2 ? 0.7f : 0.5f;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void actionElementPPM() {
        if (getCurrent() <= 0 || Game.getCiv(getCurrent()).getCapitalProvinceID() < 0 || getCurrent() != Game.getProvince(Game.getCiv(getCurrent()).getCapitalProvinceID()).getCivID()) {
            return;
        }
        Game.mapCoords.centerToProvinceID(Game.getCiv(getCurrent()).getCapitalProvinceID());
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (getFlagCivID() < 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.rebelsFlag, 0, CFG.PADDING));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Rebels"), Colors.HOVER_GOLD));
        } else {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(getFlagCivID()).getCivName(), "", getFlagCivID(), CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD, Colors.HOVER_GOLD));
        }
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        this.menuElementHover = new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        if (!getIsHovered() && !z) {
            int posY = getPosY() + CFG.TEXT_HEIGHT + (CFG.PADDING * 2);
            int height = (getHeight() - CFG.TEXT_HEIGHT) - (CFG.PADDING * 2);
            spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, getBoxAlpha(getClickable(), getIsHovered(), z)));
            int i3 = posY + i2;
            Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, i3, getWidth(), height, 1.0f);
            spriteBatch.setColor(Color.WHITE);
            spriteBatch.setShader(Renderer.shaderAlpha);
            if (getFlagCivID() < 0) {
                ImageManager.getImage(Images.rebelsFlag).getTexture().bind(1);
            } else {
                Game.getCiv(getFlagCivID()).getFlag().getTexture().bind(1);
            }
            Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
            ImageManager.getImage(Images.flagMaskDefault).draw(spriteBatch, ((ImageManager.getImage(Images.flagOverDefault).getWidth() - ImageManager.getImage(Images.flagMaskDefault).getWidth()) / 2) + getPosX() + i, i3 + ((ImageManager.getImage(Images.flagOverDefault).getHeight() - ImageManager.getImage(Images.flagMaskDefault).getHeight()) / 2), ImageManager.getImage(Images.flagMaskDefault).getWidth(), ImageManager.getImage(Images.flagMaskDefault).getHeight());
            spriteBatch.flush();
            spriteBatch.setShader(Renderer.shaderDefault);
            ImageManager.getImage(Images.flagOverDefault).draw(spriteBatch, getPosX() + i, i3);
            return;
        }
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, getBoxAlpha(getClickable(), getIsHovered(), z)));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f));
        Images.gradientXY.draw(spriteBatch, getPosX() + i, (((getPosY() + getHeight()) - CFG.TEXT_HEIGHT) - (CFG.PADDING * 2)) + i2, getWidth(), (CFG.PADDING * 2) + CFG.TEXT_HEIGHT);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setShader(Renderer.shaderAlpha);
        if (getFlagCivID() < 0) {
            ImageManager.getImage(Images.rebelsFlag).getTexture().bind(1);
        } else {
            Game.getCiv(getFlagCivID()).getFlag().getTexture().bind(1);
        }
        Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
        ImageManager.getImage(Images.flagMaskDefault).draw(spriteBatch, ((ImageManager.getImage(Images.flagOverDefault).getWidth() - ImageManager.getImage(Images.flagMaskDefault).getWidth()) / 2) + getPosX() + i, ((ImageManager.getImage(Images.flagOverDefault).getHeight() - ImageManager.getImage(Images.flagMaskDefault).getHeight()) / 2) + getPosY() + i2, ImageManager.getImage(Images.flagMaskDefault).getWidth(), ImageManager.getImage(Images.flagMaskDefault).getHeight());
        spriteBatch.flush();
        spriteBatch.setShader(Renderer.shaderDefault);
        ImageManager.getImage(Images.flagOverDefault).draw(spriteBatch, getPosX() + i, getPosY() + i2);
        Renderer.drawText(spriteBatch, this.fontID, this.sText, getPosX() + this.textPosition.getTextPosition() + i, (((getPosY() + ImageManager.getImage(Images.flagOverDefault).getHeight()) + ((CFG.TEXT_HEIGHT + (CFG.PADDING * 2)) / 2)) - (getTextHeight() / 2)) + i2, getColor(z));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getCurrent() {
        return this.iCivID;
    }

    public int getFlagCivID() {
        return this.iCivID;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setIsHovered(boolean z) {
        int i;
        super.setIsHovered(z);
        if (!z || (i = this.iCivID) <= 0) {
            return;
        }
        ProvinceDraw.drawProvincesCiv_HoveredFlagID = i;
    }
}
