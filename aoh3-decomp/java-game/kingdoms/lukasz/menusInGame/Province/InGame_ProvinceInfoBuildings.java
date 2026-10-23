package aoc.kingdoms.lukasz.menusInGame.Province;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.BuildingsManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonBuild;
import aoc.kingdoms.lukasz.menu_element.button.ButtonBuildingProvince;
import aoc.kingdoms.lukasz.menu_element.button.ButtonRecruitingArmy;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Clear;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextBGBot;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_VerticalBuildings;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static;
import aoc.kingdoms.lukasz.menusInGame.Buildings.InGame_BuildingsGroup;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_ProvinceInfoBuildings extends Menu {
    public static int mPosX;
    public static int mPosY;
    public static int mWidth;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfoBuildings$1, reason: invalid class name */
    class AnonymousClass1 extends TextIcon_VerticalBuildings {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("BuildingSlots") + ": ", "" + Game.getProvince(InGame_ProvinceInfo.iProvinceID).getUsedBuildingsSlots() + " / " + Game.getProvince(InGame_ProvinceInfo.iProvinceID).iBuildingsLimit, Images.build, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(" = " + GameValues.buildings.BUILDINGS_LIMIT_DEFAULT + " + " + Game.lang.get("Economy") + " / " + CFG.getPrecision2(GameValues.buildings.BUILDINGS_SLOT_PER_ECONOMY, 10) + " + " + Game.lang.get("Infrastructure") + (GameValues.infrastructure.INFRASTRUCTURE_BUILDINGS_SLOT_PER_LVL != 1 ? " * " + GameValues.infrastructure.INFRASTRUCTURE_BUILDINGS_SLOT_PER_LVL : ""), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Capital") + ": +" + GameValues.buildings.BUILDINGS_LIMIT_CAPITAL, CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfoBuildings$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonBuild {
        AnonymousClass2(int i, int i2, boolean z) {
            super(i, i2, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_Buildings() && Game.iActiveProvince == InGame_ProvinceInfo.iProvinceID) {
                Game.menuManager.setVisibleInGame_Buildings(false, false);
            } else if (Game.iActiveProvince >= 0) {
                InGame_ProvinceInfo.iProvinceID = Game.iActiveProvince;
                InGame_BuildingsGroup.iProvinceID = Game.iActiveProvince;
                Game.menuManager.rebuildInGame_Buildings(true);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonBuild, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ConstructNewBuilding") + ": ", CFG.FONT_BOLD_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.getProvince(InGame_ProvinceInfo.iProvinceID).getProvinceName(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.build, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("BuildingSlots") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getProvince(InGame_ProvinceInfo.iProvinceID).getUsedBuildingsSlots() + " / " + Game.getProvince(InGame_ProvinceInfo.iProvinceID).iBuildingsLimit, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.build, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(" = " + GameValues.buildings.BUILDINGS_LIMIT_DEFAULT + " + " + Game.lang.get("Economy") + " / " + CFG.getPrecision2(GameValues.buildings.BUILDINGS_SLOT_PER_ECONOMY, 10) + " + " + Game.lang.get("Infrastructure") + (GameValues.infrastructure.INFRASTRUCTURE_BUILDINGS_SLOT_PER_LVL != 1 ? " * " + GameValues.infrastructure.INFRASTRUCTURE_BUILDINGS_SLOT_PER_LVL : ""), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Capital") + ": +" + GameValues.buildings.BUILDINGS_LIMIT_CAPITAL, CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfoBuildings$3, reason: invalid class name */
    class AnonymousClass3 extends TextBGBot {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_Buildings() && Game.iActiveProvince == InGame_ProvinceInfo.iProvinceID) {
                Game.menuManager.setVisibleInGame_Buildings(false, false);
            } else if (Game.iActiveProvince >= 0) {
                InGame_ProvinceInfo.iProvinceID = Game.iActiveProvince;
                InGame_BuildingsGroup.iProvinceID = Game.iActiveProvince;
                Game.menuManager.rebuildInGame_Buildings(true);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ConstructNewBuilding") + ": ", CFG.FONT_BOLD_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.getProvince(InGame_ProvinceInfo.iProvinceID).getProvinceName(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.build, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("BuildingSlots") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getProvince(InGame_ProvinceInfo.iProvinceID).getUsedBuildingsSlots() + " / " + Game.getProvince(InGame_ProvinceInfo.iProvinceID).iBuildingsLimit, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.build, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfoBuildings$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonBuildingProvince {
        AnonymousClass4(int i, int i2, int i3, int i4, boolean z) {
            super(i, i2, i3, i4, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonBuildingProvince, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_Buildings() && Game.iActiveProvince == InGame_ProvinceInfo.iProvinceID) {
                Game.menuManager.setVisibleInGame_Buildings(false, false);
            } else if (Game.iActiveProvince >= 0) {
                InGame_ProvinceInfo.iProvinceID = Game.iActiveProvince;
                InGame_BuildingsGroup.iProvinceID = Game.iActiveProvince;
                Game.menuManager.rebuildInGame_Buildings(true);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonBuildingProvince, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = ButtonBuildingProvince.getHoverBuilding(this.building, this.buildingID, this.underConstruction, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfoBuildings$5, reason: invalid class name */
    class AnonymousClass5 extends Text_Static {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
        protected Color getColor(boolean z) {
            if (z) {
                return Colors.BUTTON_TEXT_ACTIVE;
            }
            if (getIsHovered()) {
                return Colors.BUTTON_TEXT_HOVERED;
            }
            return getClickable() ? Colors.BUTTON_TEXT : Colors.BUTTON_TEXT_DISABLED;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public InGame_ProvinceInfoBuildings() {
        int i;
        ArrayList arrayList = new ArrayList();
        int i2 = CFG.PADDING;
        int i3 = CFG.PADDING;
        int i4 = 0;
        if (InGame_ProvinceInfo.iProvinceID >= 0) {
            int width = CFG.PADDING;
            if (Game.getProvince(InGame_ProvinceInfo.iProvinceID).getCivID() == Game.player.iCivID) {
                arrayList.add(new AnonymousClass1("" + Game.getProvince(InGame_ProvinceInfo.iProvinceID).getUsedBuildingsSlots() + " / " + Game.getProvince(InGame_ProvinceInfo.iProvinceID).iBuildingsLimit, Images.build, i2, i3, CFG.TEXT_HEIGHT_SMALL + (CFG.PADDING * 2), ImageManager.getImage(Images.buildingsFrameSmall).getHeight() + CFG.TEXT_HEIGHT + (CFG.PADDING * 2)));
                int width2 = width + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                arrayList.add(new AnonymousClass2(width2, i3, true));
                arrayList.add(new AnonymousClass3(Game.lang.get("Build"), -1, width2, i3 + ImageManager.getImage(Images.buildButton).getHeight(), ImageManager.getImage(Images.buildButton).getWidth(), CFG.TEXT_HEIGHT + (CFG.PADDING * 2)));
                width = width2 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            }
            int width3 = width;
            try {
                int recruitArmyInProvinceID = Game.getCiv(Game.player.iCivID).getRecruitArmyInProvinceID(InGame_ProvinceInfo.iProvinceID);
                if (recruitArmyInProvinceID >= 0) {
                    try {
                        arrayList.add(new ButtonRecruitingArmy(width3, i3, Game.getCiv(Game.player.iCivID).lArmyRecruit.get(recruitArmyInProvinceID).get(0).unitID, Game.getCiv(Game.player.iCivID).lArmyRecruit.get(recruitArmyInProvinceID).get(0).armyID, Game.player.iCivID));
                        i4 = 0;
                        try {
                            arrayList.add(new TextBGBot(Game.lang.get("Army"), -1, width3, i3 + ImageManager.getImage(Images.buildingsFrameSmall).getHeight(), ImageManager.getImage(Images.buildingsFrameSmall).getWidth(), CFG.TEXT_HEIGHT + (CFG.PADDING * 2)));
                            width3 += arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                        } catch (Exception e) {
                            e = e;
                            CFG.exceptionStack(e);
                        }
                    } catch (Exception e2) {
                        e = e2;
                        i4 = 0;
                    }
                }
            } catch (Exception e3) {
                e = e3;
            }
            int width4 = width3;
            if (Game.getProvince(InGame_ProvinceInfo.iProvinceID).iBuildingsSize > 0 || Game.getProvince(InGame_ProvinceInfo.iProvinceID).iBuildingsConstructionSize > 0) {
                int i5 = i4;
                while (i5 < Game.getProvince(InGame_ProvinceInfo.iProvinceID).iBuildingsConstructionSize) {
                    arrayList.add(new ButtonBuildingProvince(width4, i3, Game.getProvince(InGame_ProvinceInfo.iProvinceID).getBuildingsConstruction(i5).getBuilding(), Game.getProvince(InGame_ProvinceInfo.iProvinceID).getBuildingsConstruction(i5).getBuildingID(), true));
                    arrayList.add(new TextBGBot(BuildingsManager.buildings.get(Game.getProvince(InGame_ProvinceInfo.iProvinceID).getBuildingsConstruction(i5).getBuilding()).Name[Game.getProvince(InGame_ProvinceInfo.iProvinceID).getBuildingsConstruction(i5).getBuildingID()], -1, width4, i3 + ImageManager.getImage(Images.buildingsFrameSmall).getHeight(), ImageManager.getImage(Images.buildingsFrameSmall).getWidth(), CFG.TEXT_HEIGHT + (CFG.PADDING * 2)));
                    width4 += arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                    i5++;
                    i4 = i4;
                }
                i = i4;
                int width5 = width4;
                while (i4 < Game.getProvince(InGame_ProvinceInfo.iProvinceID).iBuildingsSize) {
                    arrayList.add(new AnonymousClass4(width5, i3, Game.getProvince(InGame_ProvinceInfo.iProvinceID).getBuildings(i4).getBuilding(), Game.getProvince(InGame_ProvinceInfo.iProvinceID).getBuildings(i4).getBuildingID(), false));
                    arrayList.add(new TextBGBot(BuildingsManager.buildings.get(Game.getProvince(InGame_ProvinceInfo.iProvinceID).getBuildings(i4).getBuilding()).Name[Game.getProvince(InGame_ProvinceInfo.iProvinceID).getBuildings(i4).getBuildingID()], -1, width5, i3 + ImageManager.getImage(Images.buildingsFrameSmall).getHeight(), ImageManager.getImage(Images.buildingsFrameSmall).getWidth(), CFG.TEXT_HEIGHT + (CFG.PADDING * 2)));
                    width5 += arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                    i4++;
                }
            } else {
                if (Game.getProvince(InGame_ProvinceInfo.iProvinceID).getUsedBuildingsSlots() == 0) {
                    arrayList.add(new AnonymousClass5(Game.lang.get("NoBuildingsConstructed") + ".", CFG.FONT_REGULAR_SMALL, -1, width4, i3, (mWidth - width4) - CFG.PADDING, ImageManager.getImage(Images.buildingsFrameSmall).getHeight() + CFG.TEXT_HEIGHT + (CFG.PADDING * 2)));
                }
                i = i4;
            }
        } else {
            i = i4;
        }
        initMenu(null, mPosX, mPosY, mWidth, ImageManager.getImage(Images.buildingsFrameSmall).getHeight() + CFG.TEXT_HEIGHT + (CFG.PADDING * 4), arrayList, false);
        this.drawScrollPositionAlways = i;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        super.draw(spriteBatch, i, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public int getMenuPosX() {
        return super.getMenuPosX() + InGame_ProvinceInfo.nTranslateX;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public int getMenuPosY() {
        return super.getMenuPosY() + InGame_ProvinceInfo.nTranslateY;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public int getPosX() {
        return super.getPosX() + InGame_ProvinceInfo.nTranslateX;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public int getPosY() {
        return super.getPosY() + InGame_ProvinceInfo.nTranslateY;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public boolean getVisible() {
        return super.getVisible() && Game.mapBG.getHideMenuZoomOut();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void onHovered() {
        super.onHovered();
        Game.menuManager.setOrderOfMenu_InGameProvinceInfo();
    }
}
