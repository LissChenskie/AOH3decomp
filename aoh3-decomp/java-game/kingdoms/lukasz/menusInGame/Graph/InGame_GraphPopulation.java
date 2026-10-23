package aoc.kingdoms.lukasz.menusInGame.Graph;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_DoubleText;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonIcon;
import aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical;
import aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical_Data_Type;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_GraphPopulation extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int activeModeID;
    public static long lTime;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Graph.InGame_GraphPopulation$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonIcon {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_GraphPopulation.activeModeID = 0;
            Game.menuManager.rebuildInGame_GraphPopulation();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Population"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.population, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonIcon
        public boolean isActive() {
            return InGame_GraphPopulation.activeModeID == 0;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Graph.InGame_GraphPopulation$10, reason: invalid class name */
    class AnonymousClass10 extends Graph_Vertical {
        AnonymousClass10(Graph_Vertical_Data_Type graph_Vertical_Data_Type, String str, String str2, int i, int i2, int i3, int i4, boolean z) {
            super(graph_Vertical_Data_Type, str, str2, i, i2, i3, i4, z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Graph.InGame_GraphPopulation$11, reason: invalid class name */
    class AnonymousClass11 extends Graph_Vertical {
        AnonymousClass11(Graph_Vertical_Data_Type graph_Vertical_Data_Type, String str, String str2, int i, int i2, int i3, int i4, boolean z) {
            super(graph_Vertical_Data_Type, str, str2, i, i2, i3, i4, z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Graph.InGame_GraphPopulation$12, reason: invalid class name */
    class AnonymousClass12 extends Graph_Vertical {
        AnonymousClass12(Graph_Vertical_Data_Type graph_Vertical_Data_Type, String str, String str2, int i, int i2, int i3, int i4, boolean z) {
            super(graph_Vertical_Data_Type, str, str2, i, i2, i3, i4, z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Graph.InGame_GraphPopulation$13, reason: invalid class name */
    class AnonymousClass13 extends Graph_Vertical {
        AnonymousClass13(Graph_Vertical_Data_Type graph_Vertical_Data_Type, String str, String str2, int i, int i2, int i3, int i4, boolean z) {
            super(graph_Vertical_Data_Type, str, str2, i, i2, i3, i4, z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Graph.InGame_GraphPopulation$14, reason: invalid class name */
    class AnonymousClass14 extends Graph_Vertical {
        AnonymousClass14(Graph_Vertical_Data_Type graph_Vertical_Data_Type, String str, String str2, int i, int i2, int i3, int i4, boolean z) {
            super(graph_Vertical_Data_Type, str, str2, i, i2, i3, i4, z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Graph.InGame_GraphPopulation$15, reason: invalid class name */
    class AnonymousClass15 extends MenuTitleIMG_DoubleText {
        AnonymousClass15(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_GraphPopulation.lTime;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Graph.InGame_GraphPopulation$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonIcon {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_GraphPopulation.activeModeID = 1;
            Game.menuManager.rebuildInGame_GraphPopulation();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Economy"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_ECONOMY, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonIcon
        public boolean isActive() {
            return InGame_GraphPopulation.activeModeID == 1;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Graph.InGame_GraphPopulation$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonIcon {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_GraphPopulation.activeModeID = 2;
            Game.menuManager.rebuildInGame_GraphPopulation();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ConstructedBuildings"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.buildings, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonIcon
        public boolean isActive() {
            return InGame_GraphPopulation.activeModeID == 2;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Graph.InGame_GraphPopulation$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonIcon {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_GraphPopulation.activeModeID = 3;
            Game.menuManager.rebuildInGame_GraphPopulation();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Infrastructure"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.infrastructure, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonIcon
        public boolean isActive() {
            return InGame_GraphPopulation.activeModeID == 3;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Graph.InGame_GraphPopulation$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonIcon {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_GraphPopulation.activeModeID = 4;
            Game.menuManager.rebuildInGame_GraphPopulation();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Provinces"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonIcon
        public boolean isActive() {
            return InGame_GraphPopulation.activeModeID == 4;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Graph.InGame_GraphPopulation$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonIcon {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_GraphPopulation.activeModeID = 5;
            Game.menuManager.rebuildInGame_GraphPopulation();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("UnlockedTechnologies"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonIcon
        public boolean isActive() {
            return InGame_GraphPopulation.activeModeID == 5;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Graph.InGame_GraphPopulation$7, reason: invalid class name */
    class AnonymousClass7 extends Graph_Vertical {
        AnonymousClass7(Graph_Vertical_Data_Type graph_Vertical_Data_Type, String str, String str2, int i, int i2, int i3, int i4, boolean z) {
            super(graph_Vertical_Data_Type, str, str2, i, i2, i3, i4, z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Graph.InGame_GraphPopulation$8, reason: invalid class name */
    class AnonymousClass8 extends Graph_Vertical {
        AnonymousClass8(Graph_Vertical_Data_Type graph_Vertical_Data_Type, String str, String str2, int i, int i2, int i3, int i4, boolean z) {
            super(graph_Vertical_Data_Type, str, str2, i, i2, i3, i4, z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Graph.InGame_GraphPopulation$9, reason: invalid class name */
    class AnonymousClass9 extends Graph_Vertical {
        AnonymousClass9(Graph_Vertical_Data_Type graph_Vertical_Data_Type, String str, String str2, int i, int i2, int i3, int i4, boolean z) {
            super(graph_Vertical_Data_Type, str, str2, i, i2, i3, i4, z);
        }
    }

    public InGame_GraphPopulation() {
        int i;
        int i2;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        ArrayList arrayList = new ArrayList();
        int i3 = Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2);
        int width = ImageManager.getImage(Images.title928).getWidth();
        InGame_CourtOptions2.getOtherMenuPosX_2();
        int height = ImageManager.getImage(Images.title1Red).getHeight() + ImageManager.getImage(Images.topStats).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i4 = CFG.PADDING * 2;
        int i5 = Images.boxTitleBORDERWIDTH;
        int iMin = Math.min(CFG.GAME_HEIGHT - (height * 2), width);
        InGame_Goods.inGoodsView = false;
        int height2 = ImageManager.getImage(Images.provinces).getHeight() + (CFG.PADDING * 4);
        int i6 = width - (i3 * 2);
        int i7 = (i6 - (CFG.PADDING * 5)) / 6;
        arrayList.add(new AnonymousClass1("", Images.population, i3, i4, i7, height2));
        int width2 = i3 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
        arrayList.add(new AnonymousClass2("", Game_Calendar.IMG_ECONOMY, width2, i4, i7, height2));
        int width3 = width2 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
        arrayList.add(new AnonymousClass3("", Images.buildings, width3, i4, i7, height2));
        int width4 = width3 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
        arrayList.add(new AnonymousClass4("", Images.infrastructure, width4, i4, i7, height2));
        int width5 = width4 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
        arrayList.add(new AnonymousClass5("", Images.provinces, width5, i4, i7, height2));
        arrayList.add(new AnonymousClass6("", Game_Calendar.IMG_TECHNOLOGY, width5 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, i4, i7, height2));
        int height3 = arrayList.get(arrayList.size() - 1).getHeight() + i4 + i4;
        int i8 = activeModeID;
        if (i8 == 0) {
            i = height;
            i2 = width;
            str = "Economy";
            arrayList.add(new AnonymousClass7(Graph_Vertical_Data_Type.CIVS_POPULATION, Game.lang.get("Civilizations"), Game.lang.get("Population"), i3, height3, i6, (iMin - height3) - i4, true));
            str4 = "Population";
            str3 = "ConstructedBuildings";
            str5 = "Provinces";
        } else {
            i = height;
            i2 = width;
            String str6 = "Population";
            str = "Economy";
            if (i8 == 1) {
                str2 = "ConstructedBuildings";
                arrayList.add(new AnonymousClass8(Graph_Vertical_Data_Type.CIVS_ECONOMY, Game.lang.get("Civilizations"), Game.lang.get(str), i3, height3, i6, (iMin - height3) - i4, true));
            } else {
                str2 = "ConstructedBuildings";
                if (i8 == 2) {
                    arrayList.add(new AnonymousClass9(Graph_Vertical_Data_Type.CIVS_CONSTRUCTED_BUILDINGS, Game.lang.get("Civilizations"), Game.lang.get(str2), i3, height3, i6, (iMin - height3) - i4, true));
                } else if (i8 == 3) {
                    str6 = str6;
                    arrayList.add(new AnonymousClass10(Graph_Vertical_Data_Type.CIVS_INFRASTRUCTURE, Game.lang.get("Civilizations"), Game.lang.get(str6), i3, height3, i6, (iMin - height3) - i4, true));
                } else if (i8 == 4) {
                    str5 = "Provinces";
                    str3 = str2;
                    str4 = str6;
                    arrayList.add(new AnonymousClass11(Graph_Vertical_Data_Type.NUM_OF_PROVINCES_BY_CONTINENT, Game.lang.get("Civilizations"), Game.lang.get("Provinces"), i3, height3, i6, (iMin - height3) - i4, true));
                } else {
                    str3 = str2;
                    str4 = str6;
                    str5 = "Provinces";
                    if (i8 == 5) {
                        arrayList.add(new AnonymousClass12(Graph_Vertical_Data_Type.CIVS_UNLOCKED_TECHS, Game.lang.get("Civilizations"), Game.lang.get("Civilizations"), i3, height3, i6, (iMin - height3) - i4, true));
                    } else if (i8 == 6) {
                        arrayList.add(new AnonymousClass13(Graph_Vertical_Data_Type.CIVS_PRESTIGE, Game.lang.get("Civilizations"), Game.lang.get("Civilizations"), i3, height3, i6, (iMin - height3) - i4, true));
                    } else if (i8 == 7) {
                        arrayList.add(new AnonymousClass14(Graph_Vertical_Data_Type.CIVS_REGIMENTS_LIMIT, Game.lang.get("Civilizations"), Game.lang.get("Civilizations"), i3, height3, i6, (iMin - height3) - i4, true));
                    }
                }
            }
            str5 = "Provinces";
            String str7 = str6;
            str3 = str2;
            str4 = str7;
        }
        int i9 = i2;
        arrayList.add(new Empty(0, 0, i9, Math.max(height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING, iMin)));
        int i10 = activeModeID;
        initMenu(new AnonymousClass15(i10 == 0 ? Game.lang.get(str4) : i10 == 1 ? Game.lang.get(str) : i10 == 2 ? Game.lang.get(str3) : i10 == 3 ? Game.lang.get("Infrastructure") : i10 == 4 ? Game.lang.get(str5) : i10 == 5 ? Game.lang.get("UnlockedTechnologies") : i10 == 6 ? Game.lang.get("Prestige") : Game.lang.get("RegimentsLimit"), Game.lang.get("Year") + ": " + Game_Calendar.currentYear, false, false, Images.title928), (CFG.GAME_WIDTH / 2) - (i9 / 2), i, i9, iMin, arrayList, false, true);
        this.drawScrollPositionAlways = false;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void actionCloseMenu() {
        super.actionCloseMenu();
        Game.menuManager.setVisibleInGame_Goods(false);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG.r, Colors.COLOR_GRADIENT_BG.g, Colors.COLOR_GRADIENT_BG.b, 0.2f));
        Images.pix.draw2(spriteBatch, i, i2, CFG.GAME_WIDTH, CFG.GAME_HEIGHT);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG.r, Colors.COLOR_GRADIENT_BG.g, Colors.COLOR_GRADIENT_BG.b, 0.65f));
        Images.gradientFull.draw(spriteBatch, i, i2, CFG.GAME_WIDTH, CFG.GAME_HEIGHT);
        spriteBatch.setColor(Color.WHITE);
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), CFG.PADDING + getHeight(), false, Images.insideTop928, Images.insideBot928);
        spriteBatch.setColor(Colors.COLOR_GRADIENT);
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), false, true);
        spriteBatch.setColor(Color.WHITE);
        super.draw(spriteBatch, i, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void onHovered() {
        super.onHovered();
        Game.menuManager.setOrderOfMenu_InGameGoods();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
    }
}
