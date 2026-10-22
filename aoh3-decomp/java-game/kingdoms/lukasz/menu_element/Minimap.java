package aoc.kingdoms.lukasz.menu_element;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.Touch;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.scenes.scene2d.utils.ScissorStack;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Minimap extends MenuElement {
    public static int minimapBoxBorder;
    public final Color boxColor = new Color(0.0f, 0.0f, 0.0f, 1.0f);
    private int iWidnowHeight;
    private int iWindowPosX;
    private int iWindowPosY;

    public Minimap(int i, int i2) {
        this.typeOfElement = MenuElement_Type.MINIMAP;
        setPosX(i);
        setPosY(i2);
        setWidth(Game.mapBG.iMinimapWidth);
        setHeight(Game.mapBG.iMinimapHeight);
    }

    public static int getPadding() {
        return 0;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void actionElement() {
        super.actionElement();
        Game.mapCoords.centerToMinimapClick((Touch.getMousePosX() - getPosX()) - getPadding(), (Touch.getMousePosY() - getPosY()) - getPadding());
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public final void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        try {
            Game.mapBG.minimapOfCivilizations.draw(spriteBatch, getPosX() + getPadding() + i, getPosY() + getPadding() + i2, false, true);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        try {
            float width = 0.0f;
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.2f));
            if (Game.mapBG.fMinimapScaled_Scale != 1.0f) {
                Rectangle rectangle = new Rectangle(getPosX() + i, (CFG.GAME_HEIGHT - getPosY()) - i2, getWidth(), -getHeight());
                spriteBatch.flush();
                ScissorStack.pushScissors(rectangle);
                float minimapScaled_ScaleX = (-(Game.mapCoords.getPosX() + Game.mapBG.iMinimapScaled_PosX)) / Game.mapBG.getMinimapScaled_ScaleX();
                if (Game.mapBG.minimapBelowZero && (-Game.mapCoords.getPosX()) > Game.mapBG.getWidth() - (Game.mapBG.getWidth() / Game.mapBG.fMinimapScaled_Scale)) {
                    width = Game.mapBG.getWidth() / Game.mapBG.getMinimapScaled_ScaleX();
                }
                this.iWindowPosX = (int) (minimapScaled_ScaleX - width);
                int minimapScaled_ScaleY = (int) ((-(Game.mapCoords.getPosY() + Game.mapBG.iMinimapScaled_PosY)) / Game.mapBG.getMinimapScaled_ScaleY());
                this.iWindowPosY = minimapScaled_ScaleY;
                this.iWidnowHeight = (int) (((float) minimapScaled_ScaleY) + ((((float) CFG.GAME_HEIGHT) / Game.mapBG.getMinimapScaled_ScaleY()) / Game.mapScale.getCurrentScale()) > ((float) Game.mapBG.minimapOfCivilizations.getHeight()) ? Game.mapBG.minimapOfCivilizations.getHeight() - this.iWindowPosY : (CFG.GAME_HEIGHT / Game.mapBG.getMinimapScaled_ScaleY()) / Game.mapScale.getCurrentScale());
                Renderer.drawRect(spriteBatch, ((getPosX() + this.iWindowPosX) - 1) + i + getPadding(), (((getPosY() + 1) + this.iWindowPosY) - 1) + i2 + getPadding(), ((int) (((((float) CFG.GAME_WIDTH) / Game.mapBG.getMinimapScaled_ScaleX()) / Game.mapScale.getCurrentScale()) + ((float) this.iWindowPosX) > ((float) Game.mapBG.minimapOfCivilizations.getWidth()) ? Game.mapBG.minimapOfCivilizations.getWidth() - this.iWindowPosX : (CFG.GAME_WIDTH / Game.mapBG.getMinimapScaled_ScaleX()) / Game.mapScale.getCurrentScale())) + 2, this.iWidnowHeight + 2);
                spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.6f));
                Renderer.drawRect(spriteBatch, getPosX() + this.iWindowPosX + i + getPadding(), getPosY() + 1 + this.iWindowPosY + i2 + getPadding(), (int) (((((float) CFG.GAME_WIDTH) / Game.mapBG.getMinimapScaled_ScaleX()) / Game.mapScale.getCurrentScale()) + ((float) this.iWindowPosX) > ((float) Game.mapBG.minimapOfCivilizations.getWidth()) ? Game.mapBG.minimapOfCivilizations.getWidth() - this.iWindowPosX : (CFG.GAME_WIDTH / Game.mapBG.getMinimapScaled_ScaleX()) / Game.mapScale.getCurrentScale()), this.iWidnowHeight);
                try {
                    spriteBatch.flush();
                    ScissorStack.popScissors();
                } catch (Exception e2) {
                    CFG.exceptionStack(e2);
                }
            } else {
                this.iWindowPosX = (int) ((-Game.mapCoords.getPosX()) / Game.mapBG.fMinimapScaleX);
                int i3 = (int) (((float) (-Game.mapCoords.getPosY())) / Game.mapBG.fMinimapScaleY < 0.0f ? 0.0f : (-Game.mapCoords.getPosY()) / Game.mapBG.fMinimapScaleY);
                this.iWindowPosY = i3;
                this.iWidnowHeight = (int) (((float) i3) + ((((float) CFG.GAME_HEIGHT) / Game.mapBG.fMinimapScaleY) / Game.mapScale.getCurrentScale()) > ((float) Game.mapBG.minimapOfCivilizations.getHeight()) ? Game.mapBG.minimapOfCivilizations.getHeight() - this.iWindowPosY : (CFG.GAME_HEIGHT / Game.mapBG.fMinimapScaleY) / Game.mapScale.getCurrentScale());
                Renderer.drawRect(spriteBatch, ((getPosX() + this.iWindowPosX) - 1) + i + getPadding(), (((getPosY() + 1) + this.iWindowPosY) - 1) + i2 + getPadding(), ((int) (((((float) CFG.GAME_WIDTH) / Game.mapBG.fMinimapScaleX) / Game.mapScale.getCurrentScale()) + ((float) this.iWindowPosX) > ((float) Game.mapBG.minimapOfCivilizations.getWidth()) ? Game.mapBG.minimapOfCivilizations.getWidth() - this.iWindowPosX : (CFG.GAME_WIDTH / Game.mapBG.fMinimapScaleX) / Game.mapScale.getCurrentScale())) + 2, this.iWidnowHeight + 2);
                spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.6f));
                Renderer.drawRect(spriteBatch, getPosX() + this.iWindowPosX + i + getPadding(), getPosY() + 1 + this.iWindowPosY + i2 + getPadding(), (int) (((((float) CFG.GAME_WIDTH) / Game.mapBG.fMinimapScaleX) / Game.mapScale.getCurrentScale()) + ((float) this.iWindowPosX) > ((float) Game.mapBG.minimapOfCivilizations.getWidth()) ? Game.mapBG.minimapOfCivilizations.getWidth() - this.iWindowPosX : (CFG.GAME_WIDTH / Game.mapBG.fMinimapScaleX) / Game.mapScale.getCurrentScale()), this.iWidnowHeight);
                if (Game.mapCoords.getSecondSideOfMap()) {
                    spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.2f));
                    Renderer.drawRect(spriteBatch, getPosX() + i + getPadding(), getPosY() + 1 + this.iWindowPosY + i2 + getPadding(), (int) Math.abs(((CFG.GAME_WIDTH / Game.mapScale.getCurrentScale()) / Game.mapBG.fMinimapScaleX) - ((Game.mapBG.getWidth() + Game.mapCoords.getPosX()) / Game.mapBG.fMinimapScaleX)), this.iWidnowHeight);
                    spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.6f));
                    Renderer.drawRect(spriteBatch, getPosX() + i + getPadding(), getPosY() + 1 + this.iWindowPosY + i2 + getPadding(), (int) Math.abs(((CFG.GAME_WIDTH / Game.mapScale.getCurrentScale()) / Game.mapBG.fMinimapScaleX) - ((Game.mapBG.getWidth() + Game.mapCoords.getPosX()) / Game.mapBG.fMinimapScaleX)), this.iWidnowHeight);
                }
            }
            spriteBatch.setColor(Color.WHITE);
            Game.mapBG.minimapOver.draw(spriteBatch, getPosX() + getPadding() + i, getPosY() + getPadding() + i2);
        } catch (Exception e3) {
            CFG.exceptionStack(e3);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getHeight() {
        return Game.mapBG.iMinimapHeight + (getPadding() * 2);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getWidth() {
        return Game.mapBG.iMinimapWidth + (getPadding() * 2);
    }
}
