package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.map.MapScale;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Center;
import aoc.kingdoms.lukasz.menus.LoadSave.Menu_LoadScenario;
import aoc.kingdoms.lukasz.menus.MainMenu;
import aoc.kingdoms.lukasz.menus.NewGame.NewGame;
import aoc.kingdoms.lukasz.menusInGame.Court.zHJ.lOow;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Button_Preview extends Button {
    public String sYear;
    public int scenarioID;

    public Button_Preview(int i, int i2, int i3) {
        this.scenarioID = i3;
        if (Game.mapScenarios.details.get(i3).Name.indexOf("" + Game.mapScenarios.details.get(i3).Year) >= 0) {
            this.sYear = "";
        } else {
            this.sYear = Game.gameAges.getYear(Game.mapScenarios.details.get(i3).Year);
        }
        init(Game.lang.get(Game.mapScenarios.details.get(i3).Name), CFG.FONT_REGULAR, -1, i, i2, Game.mapBG.scenarioOver.getWidth(), getButtonHeight(), true, true, false, false);
    }

    public static int getButtonHeight() {
        return Game.mapBG.scenarioMask.getHeight();
    }

    public static int getButtonWidth() {
        return Game.mapBG.scenarioMask.getHeight();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void actionElement() {
        if (Game.scenarioID != this.scenarioID || Game_Calendar.TURN_ID != 1 || Game.reloadScenario || MainMenu.canContinue) {
            Game.scenarioID = this.scenarioID;
            Game.reloadScenario = false;
            Menu_LoadScenario.editorMode = false;
            Menu_LoadScenario.goToMenu = View.CLOUDS_MENU;
            Game.menuManager.setViewIDWithoutAnimation(View.LOAD_SCENARIO);
            return;
        }
        Game.mapScale.definedScale = MapScale.defScales.definedScale_Default;
        Game.mapScale.setCurrentScale(1.0f);
        NewGame.setRandomCiv();
        Game.menuManager.setViewIDWithoutAnimation(View.CLOUDS_MENU);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus("", "" + Game.mapScenarios.details.get(this.scenarioID).Day + " " + Game_Calendar.getMonthName(Game.mapScenarios.details.get(this.scenarioID).Month) + " " + Game.gameAges.getYear(Game.mapScenarios.details.get(this.scenarioID).Year), Images.time, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_LEFT));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus("", "" + Game.gameAges.lAges.get(Game.gameAges.getAgeOfYear(Game.mapScenarios.details.get(this.scenarioID).Year)).Name, Images.time, CFG.FONT_REGULAR_SMALL, CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT, Colors.HOVER_LEFT));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        StringBuilder sbAppend = new StringBuilder().append(Game.lang.get("Civilizations"));
        String str = lOow.CChvjKhkaSntU;
        arrayList2.add(new MenuElement_HoverElement_Type_Text(sbAppend.append(str).toString(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getNumberWithSpaces("" + Game.mapScenarios.details.get(this.scenarioID).Civs), CFG.FONT_BOLD_SMALL, Colors.HOVER_RIGHT));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Author") + str, CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.mapScenarios.details.get(this.scenarioID).Author, CFG.FONT_BOLD_SMALL, Colors.HOVER_RIGHT));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        this.menuElementHover = new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setShader(Renderer.shaderAlpha);
        if (!getIsHovered()) {
            try {
                Game.mapScenarios.lScenarios_Preview.get(this.scenarioID).getTexture().bind(1);
                Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
                Game.mapBG.scenarioMask.draw(spriteBatch, getPosX() + i, getPosY() + i2, Game.mapBG.scenarioMask.getWidth(), Game.mapBG.scenarioMask.getHeight(), false, false);
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
            spriteBatch.flush();
            spriteBatch.setShader(Renderer.shaderDefault);
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.9f));
            Images.gradientXY.draw(spriteBatch, getPosX() + i, (((getPosY() + getHeight()) - (CFG.PADDING * 6)) - CFG.TEXT_HEIGHT) + i2, getWidth(), (CFG.PADDING * 6) + CFG.TEXT_HEIGHT);
            Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), (CFG.PADDING * 6) + CFG.TEXT_HEIGHT, false, true);
            spriteBatch.setColor(Color.WHITE);
            Game.mapBG.scenarioOver.draw(spriteBatch, getPosX() + i, getPosY() + i2);
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, this.sYear, getPosX() + (CFG.PADDING * 2) + i, getPosY() + (CFG.PADDING * 2) + i2, Colors.HOVER_RIGHT);
            Renderer.drawTextWithShadow(spriteBatch, this.fontID, getTextToDraw(), getPosX() + this.textPosition.getTextPosition() + i, (((getPosY() + getHeight()) - (CFG.PADDING * 2)) - this.iTextHeight) + i2, getColor(z));
            return;
        }
        try {
            Game.mapScenarios.lScenarios_Preview.get(this.scenarioID).getTexture().bind(1);
            Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
            Game.mapBG.scenarioMask.draw(spriteBatch, (getPosX() - getPaddingHover()) + i, (getPosY() - getPaddingHover()) + i2, Game.mapBG.scenarioMask.getWidth() + (getPaddingHover() * 2), Game.mapBG.scenarioMask.getHeight() + (getPaddingHover() * 2), false, false);
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
        spriteBatch.flush();
        spriteBatch.setShader(Renderer.shaderDefault);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.35f));
        Images.gradientXY.draw(spriteBatch, getPosX() + i, ((((getPosY() + (getPaddingHover() * 2)) + getHeight()) - (CFG.PADDING * 6)) - CFG.TEXT_HEIGHT) + i2, getWidth(), (CFG.PADDING * 6) + CFG.TEXT_HEIGHT);
        Images.gradientXY.draw(spriteBatch, getPosX() + i, (getPosY() - getPaddingHover()) + i2, getWidth(), (CFG.PADDING * 6) + CFG.TEXT_HEIGHT, false, true);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(new Color(Colors.HOVER_GOLD.r, Colors.HOVER_GOLD.g, Colors.HOVER_GOLD.b, 0.25f));
        Images.gradientXY.draw(spriteBatch, getPosX() + i, ((((getPosY() + getHeight()) - (CFG.PADDING * 6)) - CFG.TEXT_HEIGHT) - 2) + i2, getWidth(), (CFG.PADDING * 6) + CFG.TEXT_HEIGHT + getPaddingHover());
        spriteBatch.setColor(Color.WHITE);
        Game.mapBG.scenarioOver.draw(spriteBatch, (getPosX() - getPaddingHover()) + i, (getPosY() - getPaddingHover()) + i2, Game.mapBG.scenarioOver.getWidth() + (getPaddingHover() * 2), Game.mapBG.scenarioOver.getHeight() + (getPaddingHover() * 2));
        Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, this.sYear, getPosX() + i, getPosY() + i2, Colors.HOVER_RIGHT);
        Renderer.drawText(spriteBatch, this.fontID, getTextToDraw(), getPosX() + this.textPosition.getTextPosition() + i, ((((getPosY() + getHeight()) + getPaddingHover()) - (CFG.PADDING * 2)) - this.iTextHeight) + i2, getColor(z));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        return this.scenarioID == Game.scenarioID ? Colors.HOVER_GOLD : Colors.getColorTopStats3(getIsHovered(), z);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getCurrent() {
        return this.scenarioID;
    }

    public int getPaddingHover() {
        return CFG.PADDING * 2;
    }
}
