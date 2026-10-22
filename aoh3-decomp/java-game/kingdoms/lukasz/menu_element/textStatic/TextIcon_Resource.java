package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.BuildingsManager;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.button.Button;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Empty;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Resource;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ResourceTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class TextIcon_Resource extends Button {
    public int iconHeight;
    public int iconWidth;
    public int resourceID;

    public TextIcon_Resource(String str, int i, int i2, int i3, int i4, int i5) {
        init(str, CFG.FONT_REGULAR_SMALL, 0, i2, i3, i4, i5, true, true, false, false);
        this.resourceID = i;
        if (i >= 0) {
            float fMin = Math.min(1.0f, ((getHeight() - getTextH()) - (CFG.PADDING * 2)) / ResourcesManager.resourceImages.get(i).getHeight());
            this.iconWidth = (int) (ResourcesManager.resourceImages.get(i).getWidth() * fMin);
            this.iconHeight = (int) (ResourcesManager.resourceImages.get(i).getHeight() * fMin);
        } else {
            float fMin2 = Math.min(1.0f, ((getHeight() - getTextH()) - (CFG.PADDING * 2)) / ImageManager.getImage(Images.resourceNone).getHeight());
            this.iconWidth = (int) (ImageManager.getImage(Images.resourceNone).getWidth() * fMin2);
            this.iconHeight = (int) (ImageManager.getImage(Images.resourceNone).getHeight() * fMin2);
        }
        int i6 = 0;
        while (this.iTextWidth > getWidth() - (CFG.PADDING * 2) && getText().length() > 5 && (i6 = i6 + 1) < 100) {
            setText(getText().substring(0, Math.max(1, getText().length() - 3)) + ".");
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Resource") + ": ", CFG.FONT_BOLD));
        if (this.resourceID >= 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(ResourcesManager.lResources.get(this.resourceID).Name, CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ResourceTitle(this.resourceID, CFG.PADDING, 0));
        } else {
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("None"), CFG.FONT_BOLD, Colors.HOVER_RIGHT));
        }
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (this.resourceID >= 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Price") + ": ", CFG.FONT_BOLD_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(ResourcesManager.getPrice(this.resourceID), 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (ResourcesManager.lResources.get(this.resourceID).uniqueBuildingID >= 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("UniqueBuilding") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + BuildingsManager.buildings.get(ResourcesManager.lResources.get(this.resourceID).uniqueBuildingID).Name[0], CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                arrayList2.add(new MenuElement_HoverElement_Type_Resource(this.resourceID, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Text(ResourcesManager.getResourceGroupName(ResourcesManager.lResources.get(this.resourceID).GroupID), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (!Game.menuManager.getVisibleInGame_Goods()) {
            this.menuElementHover = new MenuElement_Hover(arrayList);
            return;
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Empty());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Provinces") + ": " + ResourcesManager.lResources.get(this.resourceID).Name, CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.goods, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, (getIsHovered() || z) ? 0.6f : 0.5f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.3f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, ((getPosY() + getHeight()) - getTextH()) + i2, getWidth(), getTextH(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(TextIcon2.getColor_gradientXY());
        Images.gradientXY.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - getTextH()) + i2, getWidth(), getTextH());
        spriteBatch.setColor(TextIcon2.getColor_gradientFull());
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - getTextH()) + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 1) + i2, getWidth(), 1);
        spriteBatch.setColor(Color.WHITE);
        if (getIsHovered() || z) {
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 1.0f));
            Renderer.drawBox(spriteBatch, Images.statsRectBGBorder, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
            spriteBatch.setColor(Color.WHITE);
        }
        if (this.resourceID >= 0) {
            Image image = ResourcesManager.resourceImages.get(this.resourceID);
            int posX = ((getPosX() + (getWidth() / 2)) - (this.iconWidth / 2)) + i;
            int posY = getPosY() + ((getHeight() - getTextH()) / 2);
            int i3 = this.iconHeight;
            image.draw(spriteBatch, posX, (posY - (i3 / 2)) + i2, this.iconWidth, i3);
        } else {
            Image image2 = ImageManager.getImage(Images.resourceNone);
            int posX2 = ((getPosX() + (getWidth() / 2)) - (this.iconWidth / 2)) + i;
            int posY2 = getPosY() + ((getHeight() - getTextH()) / 2);
            int i4 = this.iconHeight;
            image2.draw(spriteBatch, posX2, (posY2 - (i4 / 2)) + i2, this.iconWidth, i4);
        }
        Renderer.drawText(spriteBatch, this.fontID, getTextToDraw(), ((getPosX() + (getWidth() / 2)) - (getTextWidth() / 2)) + i, (((getPosY() + getHeight()) - CFG.PADDING) - getTextHeight()) + i2, getColor(z));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        return Colors.getColorButtonHover(z, getIsHovered());
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getCurrent() {
        return this.resourceID;
    }

    public int getTextH() {
        return CFG.TEXT_HEIGHT + (CFG.PADDING * 2);
    }
}
