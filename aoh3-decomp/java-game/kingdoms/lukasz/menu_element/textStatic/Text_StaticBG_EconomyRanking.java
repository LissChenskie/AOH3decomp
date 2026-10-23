package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonusResource;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagCiv_Title;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Text_StaticBG_EconomyRanking extends Text_StaticBG {
    public static int activeID;
    public static int resourceID;
    public int id;

    public Text_StaticBG_EconomyRanking(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        super(str, i, i2, i3, i4, i5, i6);
        this.id = i7;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(this.id, Game.lang.get("ProducedGoods")));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        ArrayList arrayList3 = new ArrayList();
        for (int i = 0; i < ResourcesManager.iResourcesSize; i++) {
            arrayList3.add(Float.valueOf(0.0f));
        }
        int resourceID2 = -1;
        for (int i2 = 0; i2 < Game.getCiv(this.id).getNumOfProvinces(); i2++) {
            if (Game.getProvince(Game.getCiv(this.id).getProvinceID(i2)).getResourceID() >= 0) {
                arrayList3.set(Game.getProvince(Game.getCiv(this.id).getProvinceID(i2)).getResourceID(), Float.valueOf(((Float) arrayList3.get(Game.getProvince(Game.getCiv(this.id).getProvinceID(i2)).getResourceID())).floatValue() + ResourcesManager.getProducedGoods(Game.getCiv(this.id).getProvinceID(i2))));
                resourceID2 = Game.getProvince(Game.getCiv(this.id).getProvinceID(i2)).getResourceID();
            }
        }
        if (resourceID2 >= 0) {
            int i3 = 0;
            while (true) {
                int i4 = i3 + 1;
                if (i3 >= 6) {
                    break;
                }
                for (int i5 = 0; i5 < ResourcesManager.iResourcesSize; i5++) {
                    if (((Float) arrayList3.get(resourceID2)).floatValue() < ((Float) arrayList3.get(i5)).floatValue()) {
                        resourceID2 = i5;
                    }
                }
                if (((Float) arrayList3.get(resourceID2)).floatValue() <= 0.0f) {
                    break;
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusResource(ResourcesManager.getResourceName(resourceID2) + ": ", CFG.getPrecision2(((Float) arrayList3.get(resourceID2)).floatValue(), 10), resourceID2, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList3.set(resourceID2, Float.valueOf(0.0f));
                i3 = i4;
            }
        } else {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("None"), "", Images.resourceNone, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        arrayList3.clear();
        this.menuElementHover = new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static, aoc.kingdoms.lukasz.menu_element.MenuElement
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        if (!getIsHovered()) {
            Renderer.drawTextWithShadow(spriteBatch, this.fontID, this.sText, getPosX() + this.textPosition.getTextPosition() + i, getPosY() + ((getHeight() - CFG.TEXT_HEIGHT) / 2) + i2, getColor(z));
            return;
        }
        int i3 = activeID;
        int i4 = this.id;
        if (i3 != i4) {
            activeID = i4;
            resourceID = ResourcesManager.getLargestGoodsProducedByCiv(i4);
        }
        if (resourceID < 0) {
            Renderer.drawTextWithShadow(spriteBatch, this.fontID, this.sText, getPosX() + this.textPosition.getTextPosition() + i, getPosY() + ((getHeight() - CFG.TEXT_HEIGHT) / 2) + i2, getColor(z));
            return;
        }
        float height = (CFG.TEXT_HEIGHT + (CFG.PADDING * 2)) / ResourcesManager.resourceImages.get(resourceID).getHeight();
        int width = (int) (ResourcesManager.resourceImages.get(resourceID).getWidth() * height);
        int height2 = (int) (ResourcesManager.resourceImages.get(resourceID).getHeight() * height);
        ResourcesManager.resourceImages.get(resourceID).draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (width / 2)) + i, ((getPosY() + (getHeight() / 2)) - (height2 / 2)) + i2, width, height2);
    }
}
