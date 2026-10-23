package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ScenarioPreview;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonMainScenario extends ButtonMain {
    private int iScenarioID;
    private String sDate;
    private String sDesc;

    public ButtonMainScenario(int i, String str, String str2, String str3, int i2, int i3, int i4, int i5, int i6, boolean z) {
        super(str, i2, i3, i4, i5, i6, z);
        this.iScenarioID = i;
        this.sDate = str2;
        this.sDesc = str3;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_ScenarioPreview(getCurrent()));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.mapScenarios.details.get(getCurrent()).Day + " " + Game_Calendar.getMonthName(Game.mapScenarios.details.get(getCurrent()).Month) + " " + Game.mapScenarios.details.get(getCurrent()).Year, CFG.FONT_REGULAR_SMALL, Colors.HOVER_TITLE_2));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.gameAges.lAges.get(Game.mapScenarios.details.get(getCurrent()).Age).Name, CFG.FONT_REGULAR_SMALL));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Civilizations") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.mapScenarios.details.get(getCurrent()).Civs, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Author") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.mapScenarios.details.get(getCurrent()).Author, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Tag") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.mapScenarios.lScenarios_TagsList.get(getCurrent()), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        this.menuElementHover = new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Renderer.fontMain.get(this.fontID).getData().setScale(0.9f);
        Renderer.drawText(spriteBatch, this.fontID, getText(), getPosX() + getTextPos() + i, ((getPosY() + (getHeight() / 2)) - ((int) ((CFG.TEXT_HEIGHT * 0.9f) / 2.0f))) + i2, getColor(z));
        Renderer.fontMain.get(this.fontID).getData().setScale(0.7f);
        Renderer.drawText(spriteBatch, this.fontID, this.sDate, getPosX() + getTextPos() + ((int) (getTextWidth() * 0.9f)) + (CFG.PADDING * 4) + i, ((getPosY() + (getHeight() / 2)) - (((int) ((CFG.TEXT_HEIGHT + CFG.PADDING) + (CFG.TEXT_HEIGHT * 0.7f))) / 2)) + ((int) (CFG.TEXT_HEIGHT - (CFG.TEXT_HEIGHT * 0.7f))) + i2, new Color(0.67f, 0.67f, 0.67f, 1.0f));
        Renderer.drawText(spriteBatch, this.fontID, this.sDesc, getPosX() + getTextPos() + ((int) (getTextWidth() * 0.9f)) + (CFG.PADDING * 4) + i, ((getPosY() + (getHeight() / 2)) - (((int) ((CFG.TEXT_HEIGHT + CFG.PADDING) + (CFG.TEXT_HEIGHT * 0.7f))) / 2)) + CFG.PADDING + (CFG.PADDING / 2) + CFG.TEXT_HEIGHT + i2, new Color(0.48f, 0.48f, 0.48f, 1.0f));
        Renderer.fontMain.get(this.fontID).getData().setScale(1.0f);
        spriteBatch.setColor(new Color(0.15686275f, 0.15686275f, 0.27450982f, 0.275f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + i, getPosY() + i2, (CFG.PADDING * 2) + getTextPos() + ((int) (getTextWidth() * 0.9f)), getHeight());
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, ((((getPosX() + getTextPos()) + ((int) (getTextWidth() * 0.9f))) + (CFG.PADDING * 2)) - 1) + i, getPosY() + i2, 1, getHeight());
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        if (z) {
            return Colors.BUTTON_TEXT_ACTIVE2;
        }
        if (getIsHovered()) {
            return Colors.BUTTON_TEXT_HOVERED2;
        }
        return getClickable() ? Colors.BUTTON_TEXT2 : Colors.BUTTON_TEXT_DISABLED;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getCurrent() {
        return this.iScenarioID;
    }
}
