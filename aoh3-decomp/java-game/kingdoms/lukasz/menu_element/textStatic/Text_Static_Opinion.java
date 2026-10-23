package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.MenuElement_Type;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Text_Static_Opinion extends Text_Static {
    public float lastValue;
    public boolean textMode;

    public Text_Static_Opinion(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
        this.lastValue = -945878.5f;
        this.textMode = false;
        this.typeOfElement = MenuElement_Type.TEXT;
        this.textMode = z;
        this.fontID = i;
        this.iCurrent = i7;
        this.lastValue = Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.getRelation(Game.player.iCivID);
        this.iTextPositionX = i2;
        setPosX(i3);
        setPosY(i4);
        setWidth(i5);
        setHeight(i6);
        setText(str);
        this.iCurrent = i7;
        updateTextPosition();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static, aoc.kingdoms.lukasz.menu_element.MenuElement
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.3f));
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), false, true);
        spriteBatch.setColor(Color.WHITE);
        Renderer.drawText(spriteBatch, this.fontID, getTextToDraw(), getPosX() + this.textPosition.getTextPosition() + i, getPosY() + ((getHeight() - CFG.TEXT_HEIGHT) / 2) + i2, getColor(z));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
    protected Color getColor(boolean z) {
        if (this.iCurrent >= GameValues.diplomacy.DIPLOMACY_RELATION_NEUTRAL) {
            if (z) {
                return Colors.COLOR_TEXT_MODIFIER_POSITIVE_ACTIVE;
            }
            return z ? Colors.COLOR_TEXT_MODIFIER_POSITIVE_HOVER : Colors.COLOR_TEXT_MODIFIER_POSITIVE;
        }
        if (this.iCurrent >= GameValues.diplomacy.DIPLOMACY_RELATION_DETACHED) {
            return super.getColor(z);
        }
        if (z) {
            return Colors.COLOR_TEXT_MODIFIER_NEGATIVE_ACTIVE;
        }
        return z ? Colors.COLOR_TEXT_MODIFIER_NEGATIVE_HOVER : Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public String getTextToDraw() {
        try {
            if (this.lastValue != Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.getRelation(Game.player.iCivID)) {
                float relation = Game.getCiv(InGame_Civ.iActiveCivID).diplomacy.getRelation(Game.player.iCivID);
                this.lastValue = relation;
                this.iCurrent = (int) relation;
                if (this.textMode) {
                    setText(DiplomacyManager.getOpinion_String(this.iCurrent));
                } else {
                    setText((this.iCurrent > 0 ? "+" : "") + CFG.getPrecision2(this.lastValue, 1));
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        return this.sText;
    }
}
