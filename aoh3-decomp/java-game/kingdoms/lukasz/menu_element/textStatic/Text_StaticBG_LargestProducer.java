package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonusResource;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Empty;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Flag;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Resource;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menusInGame.DrawOver.SQ.XjthpFh;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Text_StaticBG_LargestProducer extends Text_StaticBG {
    public int iResourceID;

    public Text_StaticBG_LargestProducer(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        super(str, i2, i3, i4, i5, i6, i7);
        this.iResourceID = i;
    }

    public static MenuElement_Hover getHoverLargestProducers(int i, boolean z) {
        String str = XjthpFh.nkieHdVUuJnVY;
        try {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusResource(Game.lang.get("Resource") + str, ResourcesManager.getResourceName(i), i, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("LargestProducer") + str, CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(ResourcesManager.worldResources_LargestProducer_Amount.get(i).intValue() / 100.0f, 10), CFG.FONT_BOLD_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Resource(i, CFG.PADDING, 0));
            arrayList2.add(new MenuElement_HoverElement_Type_Flag(ResourcesManager.worldResources_LargestProducer.get(i).intValue(), CFG.PADDING, 0));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(" [" + CFG.getPrecision2((float) Math.min(100.0d, Math.floor((ResourcesManager.worldResources_LargestProducer_Amount.get(i).intValue() / ResourcesManager.worldResourcesProduced.get(i).intValue()) * 100.0f)), 10) + "%]", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("WorldProduction") + str, CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(ResourcesManager.worldResourcesProduced.get(i).intValue() / 100.0f, 10), CFG.FONT_BOLD_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Resource(i, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (ResourcesManager.worldResourcesProduced.get(i).intValue() > 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                ArrayList arrayList3 = new ArrayList();
                ArrayList arrayList4 = new ArrayList();
                for (int i2 = 0; i2 < Game.getCivsSize(); i2++) {
                    arrayList4.add(0);
                    arrayList3.add(Integer.valueOf(i2));
                }
                for (int i3 = 0; i3 < Game.getProvincesSize(); i3++) {
                    if (Game.getProvince(i3).getResourceID() == i && !Game.getProvince(i3).getSeaProvince() && Game.getProvince(i3).getCivID() > 0) {
                        arrayList4.set(Game.getProvince(i3).getCivID(), Integer.valueOf(((Integer) arrayList4.get(Game.getProvince(i3).getCivID())).intValue() + ((int) (ResourcesManager.getProducedGoods(i3) * 100.0f))));
                    }
                }
                ArrayList arrayList5 = arrayList4;
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusResource(Game.lang.get("Production") + str, ResourcesManager.getResourceName(i), i, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Empty());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                int i4 = 0;
                while (i4 < 10 && i4 < arrayList5.size()) {
                    int i5 = 0;
                    int i6 = 1;
                    while (i6 < arrayList5.size()) {
                        ArrayList arrayList6 = arrayList5;
                        if (((Integer) arrayList6.get(i5)).intValue() < ((Integer) arrayList6.get(i6)).intValue()) {
                            i5 = i6;
                        }
                        i6++;
                        arrayList5 = arrayList6;
                    }
                    ArrayList arrayList7 = arrayList5;
                    if (((Integer) arrayList7.get(i5)).intValue() == 0) {
                        break;
                    }
                    int i7 = i4 + 1;
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + i7 + ".", CFG.FONT_BOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Flag(((Integer) arrayList3.get(i5)).intValue(), CFG.PADDING, CFG.PADDING));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(((Integer) arrayList7.get(i5)).intValue() / 100.0f, 100), CFG.FONT_BOLD, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Resource(i, CFG.PADDING, CFG.PADDING));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2((float) Math.min(100.0d, Math.floor((((Integer) arrayList7.get(i5)).intValue() / ResourcesManager.worldResourcesProduced.get(i).intValue()) * 100.0f)), 10) + "%", CFG.FONT_REGULAR, Colors.HOVER_RIGHT2));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" " + Game.getCiv(((Integer) arrayList3.get(i5)).intValue()).getCivName(), CFG.FONT_REGULAR, Colors.HOVER_RIGHT3));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList7.remove(i5);
                    arrayList3.remove(i5);
                    arrayList5 = arrayList7;
                    i4 = i7;
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Empty());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("LargestGoodsProducers") + (z ? str + ResourcesManager.getResourceName(i) : ""), CFG.FONT_BOLD, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.goods, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            return new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return null;
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        this.menuElementHover = getHoverLargestProducers(getCurrent(), true);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static, aoc.kingdoms.lukasz.menu_element.MenuElement
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, this.sText, getPosX() + this.textPosition.getTextPosition() + i, getPosY() + ((getHeight() - CFG.TEXT_HEIGHT) / 2) + i2, getColor(z));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static, aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getCurrent() {
        return this.iResourceID;
    }
}
