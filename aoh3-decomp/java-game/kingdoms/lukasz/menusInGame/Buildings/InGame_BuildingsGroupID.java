package aoc.kingdoms.lukasz.menusInGame.Buildings;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.zOther.Point_XY;
import aoc.kingdoms.lukasz.map.BuildingsManager;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.Toast;
import aoc.kingdoms.lukasz.menu_element.button.ButtonBuilding2;
import aoc.kingdoms.lukasz.menu_element.button.ButtonBuilding2_NotAvailable;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceBonuses;
import aoc.kingdoms.lukasz.menusInGame.Technology.InGame_TechnologyTree;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.assets.loaders.Wkvw.nEtnPpUF;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_BuildingsGroupID extends Menu {
    public int groupID;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Buildings.InGame_BuildingsGroupID$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonBuilding2 {
        AnonymousClass1(int i, boolean z, int i2, int i3, int i4, int i5, int i6, boolean z2) {
            super(i, z, i2, i3, i4, i5, i6, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getProvince(InGame_BuildingsGroup.iProvinceID).getCivID() == Game.player.iCivID) {
                if (Game.getProvince(InGame_BuildingsGroup.iProvinceID).buildingBuilt(getValue1(), getValue2())) {
                    InGame_Destroy.iProvinceID = InGame_BuildingsGroup.iProvinceID;
                    InGame_Destroy.building = getValue1();
                    InGame_Destroy.buildingID = getValue2();
                    Game.menuManager.rebuildInGame_Destroy();
                    return;
                }
                if (Game.getProvince(InGame_BuildingsGroup.iProvinceID).getUsedBuildingsSlots() >= Game.getProvince(InGame_BuildingsGroup.iProvinceID).iBuildingsLimit) {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("BuildingSlots") + ": "));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(InGame_BuildingsGroup.iProvinceID).getUsedBuildingsSlots() + " / " + Game.getProvince(InGame_BuildingsGroup.iProvinceID).iBuildingsLimit, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.build, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("IncreaseEconomyInAProvinceToUnlockMoreBuildingSlots"), Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_ECONOMY, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    Game.menuManager.addToast(new Toast(arrayList, 0, Toast.TIME_INVIEW_VERY_LONG));
                    return;
                }
                if (Game.getProvince(InGame_BuildingsGroup.iProvinceID).isOccupied()) {
                    Game.menuManager.addToast_Error(Game.lang.get("OccupiedProvince"), Images.war);
                    return;
                }
                if (Game.getProvince(InGame_BuildingsGroup.iProvinceID).isUnderConstruction(getValue1(), getValue2())) {
                    Game.menuManager.addToastGold(Game.lang.get("UnderConstruction"), Images.build);
                    return;
                }
                if (BuildingsManager.buildings.get(getValue1()).RequiredReligionID >= 0 && BuildingsManager.buildings.get(getValue1()).RequiredReligionID != Game.getCiv(Game.getProvince(InGame_BuildingsGroup.iProvinceID).getCivID()).getReligionID()) {
                    Game.menuManager.addToastGold(Game.lang.get("Religion") + ": " + Game.religionManager.getReligion(BuildingsManager.buildings.get(getValue1()).RequiredReligionID).Name, Images.religion);
                    return;
                }
                if (BuildingsManager.buildings.get(getValue1()).RequiredGovernmentID >= 0 && BuildingsManager.buildings.get(getValue1()).RequiredGovernmentID != Game.getCiv(Game.getProvince(InGame_BuildingsGroup.iProvinceID).getCivID()).getIdeologyID()) {
                    Game.menuManager.addToastGold(Game.lang.get("Government") + ": " + Game.ideologiesManager.getIdeology(BuildingsManager.buildings.get(getValue1()).RequiredGovernmentID).Name, Images.government);
                    return;
                }
                if (!Game.getProvince(InGame_BuildingsGroup.iProvinceID).addBuildingConstruction(getValue1(), getValue2())) {
                    Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getBuildingConstructionCost(Game.player.iCivID, InGame_BuildingsGroup.iProvinceID, getValue1(), getValue2()), 100), Images.gold);
                    return;
                }
                if (Game.menuManager.getVisibleInGame_ProvinceInfo()) {
                    Game.menuManager.rebuildInGame_ProvinceInfo(false);
                    Game.menuManager.setOrderInGame_Buildings();
                    if (Game.menuManager.getVisibleInGame_ProvinceBonuses()) {
                        Game.menuManager.rebuildInGame_ProvinceBonuses();
                        Game.menuManager.setVisibleInGame_ProvinceBonuses(true, false);
                        InGame_ProvinceBonuses.lTime = 0L;
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Buildings.InGame_BuildingsGroupID$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonBuilding2 {
        AnonymousClass2(int i, boolean z, int i2, int i3, int i4, int i5, int i6, boolean z2) {
            super(i, z, i2, i3, i4, i5, i6, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getProvince(InGame_BuildingsGroup.iProvinceID).getCivID() == Game.player.iCivID) {
                if (Game.getProvince(InGame_BuildingsGroup.iProvinceID).buildingBuilt(getValue1(), getValue2())) {
                    InGame_Destroy.iProvinceID = InGame_BuildingsGroup.iProvinceID;
                    InGame_Destroy.building = getValue1();
                    InGame_Destroy.buildingID = getValue2();
                    Game.menuManager.rebuildInGame_Destroy();
                    return;
                }
                if (Game.getProvince(InGame_BuildingsGroup.iProvinceID).getUsedBuildingsSlots() >= Game.getProvince(InGame_BuildingsGroup.iProvinceID).iBuildingsLimit) {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("BuildingSlots") + ": "));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(InGame_BuildingsGroup.iProvinceID).getUsedBuildingsSlots() + " / " + Game.getProvince(InGame_BuildingsGroup.iProvinceID).iBuildingsLimit, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.build, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("IncreaseEconomyInAProvinceToUnlockMoreBuildingSlots"), Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_ECONOMY, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    Game.menuManager.addToast(new Toast(arrayList, 0, Toast.TIME_INVIEW_VERY_LONG));
                    return;
                }
                if (Game.getProvince(InGame_BuildingsGroup.iProvinceID).isOccupied()) {
                    Game.menuManager.addToast_Error(Game.lang.get("OccupiedProvince"), Images.war);
                    return;
                }
                if (Game.getProvince(InGame_BuildingsGroup.iProvinceID).isUnderConstruction(getValue1(), getValue2())) {
                    Game.menuManager.addToastGold(Game.lang.get("UnderConstruction"), Images.build);
                    return;
                }
                if (!Game.getProvince(InGame_BuildingsGroup.iProvinceID).addBuildingConstruction(getValue1(), getValue2())) {
                    Game.menuManager.addToastInsufficient(Game.lang.get(nEtnPpUF.SrCKzuIVlijOvo) + ": ", CFG.getPrecision2(Game.getBuildingConstructionCost(Game.player.iCivID, InGame_BuildingsGroup.iProvinceID, getValue1(), getValue2()), 100), Images.gold);
                    return;
                }
                if (Game.menuManager.getVisibleInGame_ProvinceInfo()) {
                    Game.menuManager.rebuildInGame_ProvinceInfo(false);
                    Game.menuManager.setOrderInGame_Buildings();
                    if (Game.menuManager.getVisibleInGame_ProvinceBonuses()) {
                        Game.menuManager.rebuildInGame_ProvinceBonuses();
                        Game.menuManager.setVisibleInGame_ProvinceBonuses(true, false);
                        InGame_ProvinceBonuses.lTime = 0L;
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Buildings.InGame_BuildingsGroupID$3, reason: invalid class name */
    class AnonymousClass3 extends Text_Title {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
        protected Color getColor(boolean z) {
            return Colors.getColorTopStats3(z, getIsHovered());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Buildings.InGame_BuildingsGroupID$4, reason: invalid class name */
    class AnonymousClass4 extends Text_Title {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
        protected Color getColor(boolean z) {
            return Colors.getColorTopStats3(z, getIsHovered());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Buildings.InGame_BuildingsGroupID$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonBuilding2_NotAvailable {
        AnonymousClass5(int i, boolean z, int i2, int i3, int i4, int i5, int i6, boolean z2, boolean z3, boolean z4, boolean z5) {
            super(i, z, i2, i3, i4, i5, i6, z2, z3, z4, z5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_TechnologyTree()) {
                Game.menuManager.setVisibleInGame_TechnologyTree(false);
                return;
            }
            Game.menuManager.setVisibleInGame_TechnologyChoose(false);
            InGame_TechnologyTree.centerToTechID = BuildingsManager.buildings.get(getValue1()).RequiredTechID[getValue2()];
            Game.menuManager.rebuildInGame_TechnologyTree(false, true);
        }
    }

    /* JADX WARN: Code duplicated, block: B:40:0x0237  */
    /* JADX WARN: Code duplicated, block: B:41:0x02a4  */
    /* JADX WARN: Code duplicated, block: B:77:0x0378  */
    public InGame_BuildingsGroupID(int i) {
        int i2;
        ArrayList arrayList;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        ArrayList arrayList2 = new ArrayList();
        this.groupID = i;
        int i8 = CFG.PADDING * 2;
        int i9 = CFG.PADDING * 2;
        int width = (ImageManager.getImage(Images.title928).getWidth() - (Images.boxTitleBORDERWIDTH * 2)) / 4;
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        int i10 = 0;
        if (Game.getProvince(InGame_BuildingsGroup.iProvinceID).getResourceID() < 0 || ResourcesManager.lResources.get(Game.getProvince(InGame_BuildingsGroup.iProvinceID).getResourceID()).uniqueBuildingID < 0 || BuildingsManager.buildings.get(ResourcesManager.lResources.get(Game.getProvince(InGame_BuildingsGroup.iProvinceID).getResourceID()).uniqueBuildingID).GroupID != i) {
            i2 = 0;
        } else {
            int height = i9;
            int i11 = 0;
            while (i11 < BuildingsManager.buildingSize.get(ResourcesManager.lResources.get(Game.getProvince(InGame_BuildingsGroup.iProvinceID).getResourceID()).uniqueBuildingID).intValue()) {
                if (Game.getCiv(Game.player.iCivID).isBuildingResearched(ResourcesManager.lResources.get(Game.getProvince(InGame_BuildingsGroup.iProvinceID).getResourceID()).uniqueBuildingID, i11)) {
                    if (i11 <= 0 || Game.getProvince(InGame_BuildingsGroup.iProvinceID).buildingBuilt(ResourcesManager.lResources.get(Game.getProvince(InGame_BuildingsGroup.iProvinceID).getResourceID()).uniqueBuildingID, i11 - 1)) {
                        i7 = ((!BuildingsManager.buildings.get(ResourcesManager.lResources.get(Game.getProvince(InGame_BuildingsGroup.iProvinceID).getResourceID()).uniqueBuildingID).SeaAccessRequired || Game.getProvince(InGame_BuildingsGroup.iProvinceID).getLevelOfPort() >= 0) && (BuildingsManager.buildings.get(ResourcesManager.lResources.get(Game.getProvince(InGame_BuildingsGroup.iProvinceID).getResourceID()).uniqueBuildingID).RequiredGovernmentID < 0 || BuildingsManager.buildings.get(ResourcesManager.lResources.get(Game.getProvince(InGame_BuildingsGroup.iProvinceID).getResourceID()).uniqueBuildingID).RequiredGovernmentID == Game.getCiv(Game.getProvince(InGame_BuildingsGroup.iProvinceID).getCivID()).getIdeologyID()) && (BuildingsManager.buildings.get(ResourcesManager.lResources.get(Game.getProvince(InGame_BuildingsGroup.iProvinceID).getResourceID()).uniqueBuildingID).RequiredReligionID < 0 || BuildingsManager.buildings.get(ResourcesManager.lResources.get(Game.getProvince(InGame_BuildingsGroup.iProvinceID).getResourceID()).uniqueBuildingID).RequiredReligionID == Game.getCiv(Game.getProvince(InGame_BuildingsGroup.iProvinceID).getCivID()).getReligionID())) ? 1 : i7;
                        if (i7 != 0) {
                            arrayList2.add(new AnonymousClass1(InGame_BuildingsGroup.iProvinceID, Game.getProvince(InGame_BuildingsGroup.iProvinceID).buildingBuilt(ResourcesManager.lResources.get(Game.getProvince(InGame_BuildingsGroup.iProvinceID).getResourceID()).uniqueBuildingID, i11), ResourcesManager.lResources.get(Game.getProvince(InGame_BuildingsGroup.iProvinceID).getResourceID()).uniqueBuildingID, i11, i8, height, width - (i8 * 2), true));
                            height += arrayList2.get(arrayList2.size() - 1).getHeight() + (CFG.PADDING * 2);
                        }
                        i11++;
                        i10 = i10;
                    } else if (BuildingsManager.buildings.get(ResourcesManager.lResources.get(Game.getProvince(InGame_BuildingsGroup.iProvinceID).getResourceID()).uniqueBuildingID).ShowUpgrades) {
                        arrayList3.add(new Point_XY(ResourcesManager.lResources.get(Game.getProvince(InGame_BuildingsGroup.iProvinceID).getResourceID()).uniqueBuildingID, i11));
                    }
                } else if (BuildingsManager.buildings.get(ResourcesManager.lResources.get(Game.getProvince(InGame_BuildingsGroup.iProvinceID).getResourceID()).uniqueBuildingID).ShowUpgrades) {
                    arrayList4.add(new Point_XY(ResourcesManager.lResources.get(Game.getProvince(InGame_BuildingsGroup.iProvinceID).getResourceID()).uniqueBuildingID, i11));
                }
                i7 = i10;
                if (i7 != 0) {
                    arrayList2.add(new AnonymousClass1(InGame_BuildingsGroup.iProvinceID, Game.getProvince(InGame_BuildingsGroup.iProvinceID).buildingBuilt(ResourcesManager.lResources.get(Game.getProvince(InGame_BuildingsGroup.iProvinceID).getResourceID()).uniqueBuildingID, i11), ResourcesManager.lResources.get(Game.getProvince(InGame_BuildingsGroup.iProvinceID).getResourceID()).uniqueBuildingID, i11, i8, height, width - (i8 * 2), true));
                    height += arrayList2.get(arrayList2.size() - 1).getHeight() + (CFG.PADDING * 2);
                }
                i11++;
                i10 = i10;
            }
            i2 = i10;
            i9 = height;
        }
        int i12 = i9;
        int i13 = i2;
        while (i13 < BuildingsManager.buildingsSize) {
            if (BuildingsManager.buildings.get(i13).GroupID == i) {
                int height2 = i12;
                int i14 = i2;
                while (i14 < BuildingsManager.buildingSize.get(i13).intValue()) {
                    if (!Game.getProvince(InGame_BuildingsGroup.iProvinceID).buildingBuilt(i13, i14)) {
                        if (Game.getCiv(Game.player.iCivID).isBuildingResearched(i13, i14)) {
                            i6 = ((!BuildingsManager.buildings.get(i13).SeaAccessRequired || Game.getProvince(InGame_BuildingsGroup.iProvinceID).getLevelOfPort() >= 0) && (BuildingsManager.buildings.get(i13).RequiredGovernmentID < 0 || BuildingsManager.buildings.get(i13).RequiredGovernmentID == Game.getCiv(Game.getProvince(InGame_BuildingsGroup.iProvinceID).getCivID()).getIdeologyID()) && (BuildingsManager.buildings.get(i13).RequiredReligionID < 0 || BuildingsManager.buildings.get(i13).RequiredReligionID == Game.getCiv(Game.getProvince(InGame_BuildingsGroup.iProvinceID).getCivID()).getReligionID())) ? 1 : i6;
                        } else if (BuildingsManager.buildings.get(i13).ShowUpgrades) {
                            arrayList4.add(new Point_XY(i13, i14));
                        }
                        i6 = i2;
                    }
                    if (i6 != 0) {
                        arrayList2.add(new AnonymousClass2(InGame_BuildingsGroup.iProvinceID, Game.getProvince(InGame_BuildingsGroup.iProvinceID).buildingBuilt(i13, i14), i13, i14, i8, height2, width - (i8 * 2), true));
                        height2 += arrayList2.get(arrayList2.size() - 1).getHeight() + (CFG.PADDING * 2);
                    }
                    i14++;
                    i13 = i13;
                    i2 = 0;
                }
                i5 = i13;
                i12 = height2;
            } else {
                i5 = i13;
            }
            i13 = i5 + 1;
            i2 = 0;
        }
        if (arrayList3.size() > 0) {
            arrayList2.add(new AnonymousClass3(Game.lang.get("NotAvailable"), -1, 0, i12, width, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_REGULAR_SMALL));
            int height3 = i12 + arrayList2.get(arrayList2.size() - 1).getHeight() + (CFG.PADDING * 2);
            int size = arrayList3.size();
            int height4 = height3;
            int i15 = 0;
            while (i15 < size) {
                arrayList2.add(new ButtonBuilding2_NotAvailable(InGame_BuildingsGroup.iProvinceID, false, ((Point_XY) arrayList3.get(i15)).getPosX(), ((Point_XY) arrayList3.get(i15)).getPosY(), i8, height4, width - (i8 * 2), true, false, false, false));
                height4 += arrayList2.get(arrayList2.size() - 1).getHeight() + (CFG.PADDING * 2);
                i15++;
                arrayList4 = arrayList4;
                arrayList3 = arrayList3;
                width = width;
            }
            arrayList = arrayList4;
            i3 = width;
            i12 = height4;
        } else {
            arrayList = arrayList4;
            i3 = width;
        }
        if (!GameValues.inGame.SHOW_TO_BE_RESEARCHED_BUILDINGS || arrayList.size() <= 0) {
            i4 = i3;
        } else {
            arrayList2.add(new AnonymousClass4(Game.lang.get("ToBeResearched"), -1, 0, i12, i3, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_REGULAR_SMALL));
            int height5 = i12 + arrayList2.get(arrayList2.size() - 1).getHeight() + (CFG.PADDING * 2);
            int size2 = arrayList.size();
            int height6 = height5;
            int i16 = 0;
            while (i16 < size2) {
                ArrayList arrayList5 = arrayList;
                int i17 = i3;
                arrayList = arrayList5;
                arrayList2.add(new AnonymousClass5(InGame_BuildingsGroup.iProvinceID, false, ((Point_XY) arrayList5.get(i16)).getPosX(), ((Point_XY) arrayList5.get(i16)).getPosY(), i8, height6, i17 - (i8 * 2), true, true, false, false));
                height6 += arrayList2.get(arrayList2.size() - 1).getHeight() + (CFG.PADDING * 2);
                i16++;
                i3 = i17;
            }
            i4 = i3;
            i12 = height6;
        }
        int i18 = i4;
        arrayList2.add(new Empty(0, 0, i18, Math.max(i12, InGame_BuildingsGroup.menuHeight)));
        initMenu(null, InGame_BuildingsGroup.menuX + (i18 * i), InGame_BuildingsGroup.menuY, i18, InGame_BuildingsGroup.menuHeight, arrayList2, false, false);
        this.drawScrollPositionAlways2 = false;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = InGame_BuildingsGroup.mTranslateX;
        if (this.groupID % 2 == 1) {
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.3f));
            Images.pix.draw(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight());
            spriteBatch.setColor(Color.WHITE);
        }
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.325f));
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + i3, getPosY() + i2, CFG.PADDING * 2, getHeight());
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, ((getPosX() + getWidth()) - (CFG.PADDING * 2)) + i3, getPosY() + i2, CFG.PADDING * 2, getHeight(), true, false);
        spriteBatch.setColor(Color.WHITE);
        super.draw(spriteBatch, i3, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void onHovered() {
        super.onHovered();
        Game.menuManager.setOrderOfMenu_InGameBuildings();
    }
}
