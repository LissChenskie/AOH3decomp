package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.button.Button;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Flag;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class TextFlags extends Button {
    public int flagHeight;
    public int flagWidth;
    public int iCivsSize;
    public List<Integer> lCivID;

    public TextFlags(String str, List<Integer> list, int i, int i2, int i3, int i4) {
        this.lCivID = new ArrayList();
        this.iCivsSize = 0;
        init(str, CFG.FONT_REGULAR_SMALL, -1, i, i2, i3, i4, true, true, false, false);
        this.lCivID = list;
        this.iCivsSize = list.size();
        this.flagWidth = (int) (CFG.CIV_FLAG_WIDTH * getImageScale());
        this.flagHeight = (int) (CFG.CIV_FLAG_HEIGHT * getImageScale());
    }

    private final float getImageScale() {
        return CFG.TEXT_HEIGHT / CFG.CIV_FLAG_HEIGHT;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(getText(), Colors.HOVER_GOLD));
        for (int i = 0; i < this.lCivID.size(); i++) {
            if (this.lCivID.get(i).intValue() < 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.rebelsFlag, CFG.PADDING, 0));
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_Flag(this.lCivID.get(i).intValue(), CFG.PADDING, 0));
            }
        }
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        for (int i2 = 0; i2 < this.lCivID.size(); i2++) {
            if (this.lCivID.get(i2).intValue() < 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.rebelsFlag, 0, CFG.PADDING));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Rebels")));
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_Flag(this.lCivID.get(i2).intValue(), 0, CFG.PADDING));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(this.lCivID.get(i2).intValue()).getCivName()));
            }
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        this.menuElementHover = new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        Renderer.drawText(spriteBatch, this.fontID, getTextToDraw(), getPosX() + CFG.PADDING + i, ((getPosY() + (getHeight() / 2)) - (this.iTextHeight / 2)) + i2, getColor(z));
        for (int i3 = 0; i3 < this.iCivsSize; i3++) {
            if (getPosX() + ((this.flagWidth + CFG.PADDING) * i3) + (CFG.PADDING * 2) + getTextWidth() + this.flagWidth + 2 < getWidth()) {
                try {
                    if (this.lCivID.get(i3).intValue() >= 0) {
                        Game.getCiv(this.lCivID.get(i3).intValue()).getFlag().draw(spriteBatch, getPosX() + ((this.flagWidth + CFG.PADDING) * i3) + (CFG.PADDING * 2) + getTextWidth() + i, ((getPosY() + (getHeight() / 2)) - ((int) ((CFG.CIV_FLAG_HEIGHT * getImageScale()) / 2.0f))) + i2, this.flagWidth, this.flagHeight);
                    } else {
                        ImageManager.getImage(Images.rebelsFlag).draw(spriteBatch, getPosX() + ((this.flagWidth + CFG.PADDING) * i3) + (CFG.PADDING * 2) + getTextWidth() + i, ((getPosY() + (getHeight() / 2)) - ((int) ((CFG.CIV_FLAG_HEIGHT * getImageScale()) / 2.0f))) + i2, this.flagWidth, this.flagHeight);
                    }
                } catch (IndexOutOfBoundsException unused) {
                    ImageManager.getImage(Images.randomCivilizationFlag).draw(spriteBatch, getPosX() + ((this.flagWidth + CFG.PADDING) * i3) + (CFG.PADDING * 2) + getTextWidth() + i, ((getPosY() + (getHeight() / 2)) - ((int) ((CFG.CIV_FLAG_HEIGHT * getImageScale()) / 2.0f))) + i2, this.flagWidth, this.flagHeight);
                }
                ImageManager.getImage(Images.flag_rect).draw(spriteBatch, getPosX() + ((this.flagWidth + CFG.PADDING) * i3) + (CFG.PADDING * 2) + getTextWidth() + i, ((getPosY() + (getHeight() / 2)) - ((int) ((CFG.CIV_FLAG_HEIGHT * getImageScale()) / 2.0f))) + i2, this.flagWidth, this.flagHeight);
            }
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        return Colors.getColorTopStatsHover(z, getIsHovered());
    }
}
