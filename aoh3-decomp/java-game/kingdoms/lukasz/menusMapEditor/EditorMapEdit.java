package aoc.kingdoms.lukasz.menusMapEditor;

import androidx.lifecycle.livedata.core.jzw.jkEBdieJhbh;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FBO.idYW.HjHDSSkYG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails;
import aoc.kingdoms.lukasz.map.technology.Bhs.fiRhHJntP;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EditorMapEdit extends Menu {

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapEdit$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonMain {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            CFG.brushTool = false;
            Game.menuManager.setViewID(View.EDITOR_MAPS);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Back"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapEdit$10, reason: invalid class name */
    class AnonymousClass10 extends ButtonMain {
        AnonymousClass10(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Renderer.drawArmyInProvince = false;
            ProvinceDrawDetails.updateDrawProvinceDetails_Continent();
            Game.menuManager.setViewID(View.EDITOR_MAPS_EDIT_CONTINENTS);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("ContinentsEditor"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapEdit$11, reason: invalid class name */
    class AnonymousClass11 extends ButtonMain {
        AnonymousClass11(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Renderer.drawArmyInProvince = false;
            ProvinceDrawDetails.updateDrawProvinceDetails_GeoRegion();
            Game.menuManager.setViewID(View.EDITOR_MAPS_EDIT_GEO_REGION);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("RegionsEditor"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapEdit$12, reason: invalid class name */
    class AnonymousClass12 extends ButtonMain {
        AnonymousClass12(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Renderer.drawArmyInProvince = false;
            ProvinceDrawDetails.updateDrawProvinceDetails_ProvinceID();
            Game.menuManager.setViewID(View.EDITOR_MAPS_EDIT_ARMY_POSITION);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("ArmyPositionEditor"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapEdit$13, reason: invalid class name */
    class AnonymousClass13 extends ButtonMain {
        AnonymousClass13(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setViewID(View.EDITOR_MAPS_EDIT_PROVINCE_NAMES);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("ProvinceName"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapEdit$14, reason: invalid class name */
    class AnonymousClass14 extends ButtonMain {
        AnonymousClass14(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Renderer.drawArmyInProvince = false;
            ProvinceDrawDetails.updateDrawProvinceDetails_OptimizationRegions();
            Game.menuManager.setViewID(View.EDITOR_MAPS_EDIT_OPTIMIZATION_REGIONS);
            EditorMapOptimizationRegions.lColors.clear();
            for (int i = 0; i < Game.regions.iRegionsSize; i++) {
                EditorMapOptimizationRegions.lColors.add(CFG.getRandomColor());
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("OptimizationRegionsEditor"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapEdit$15, reason: invalid class name */
    class AnonymousClass15 extends ButtonMain {
        AnonymousClass15(String str, int i, int i2, int i3, int i4, int i5, boolean z, boolean z2) {
            super(str, i, i2, i3, i4, i5, z, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setViewID(View.EDITOR_MAPS_EDIT_SUGGESTED_CIVILIZATIONS);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("GenerateSuggestedCivilizations"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapEdit$16, reason: invalid class name */
    class AnonymousClass16 extends ButtonMain {
        AnonymousClass16(String str, int i, int i2, int i3, int i4, int i5, boolean z, boolean z2) {
            super(str, i, i2, i3, i4, i5, z, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("GenerateSeaRoutes"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapEdit$17, reason: invalid class name */
    class AnonymousClass17 extends ButtonMain {
        AnonymousClass17(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setViewID(View.EDITOR_MAPS_EDIT_LINES);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Lines"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapEdit$18, reason: invalid class name */
    class AnonymousClass18 extends ButtonMain {
        AnonymousClass18(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setViewID(View.EDITOR_MAPS_EDIT_WAVES);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Waves"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapEdit$19, reason: invalid class name */
    class AnonymousClass19 extends ButtonMain {
        AnonymousClass19(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            EditorMap_PrintMap.goBack = View.EDITOR_MAPS_EDIT;
            CFG.brushTool = false;
            EditorMap_PrintMap.scale = 12.5f;
            Game.menuManager.setViewIDWithoutAnimation(View.PRINT_A_MAP);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText("Print Map - Scale 0.1");
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapEdit$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonMain {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button
        protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            super.drawText(spriteBatch, Game.map.lMaps.get(Game.map.getActiveMapID()).Icon.getWidth() + i, i2, z);
            Game.map.lMaps.get(Game.map.getActiveMapID()).Icon.draw(spriteBatch, i + getPosX() + (CFG.PADDING * 2), ((i2 + getPosY()) + (getHeight() / 2)) - (Game.map.lMaps.get(Game.map.getActiveMapID()).Icon.getHeight() / 2));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.map.lMaps.get(Game.map.getActiveMapID()).mapData.Name + " | " + Game.map.lMaps.get(Game.map.getActiveMapID()).mapData.NumOfProvinces + " - " + Game.lang.get("Scale") + ": " + Game.map.lMaps.get(Game.map.getActiveMapID()).mapData.DefaultMapScale);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapEdit$20, reason: invalid class name */
    class AnonymousClass20 extends ButtonMain {
        AnonymousClass20(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            EditorMap_PrintMap.goBack = View.EDITOR_MAPS_EDIT;
            CFG.brushTool = false;
            EditorMap_PrintMap.scale = 4.166667f;
            Game.menuManager.setViewIDWithoutAnimation(View.PRINT_A_MAP);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(jkEBdieJhbh.FktwwSGOfRfUuk);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapEdit$21, reason: invalid class name */
    class AnonymousClass21 extends ButtonMain {
        AnonymousClass21(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            EditorMap_PrintMap.goBack = View.EDITOR_MAPS_EDIT;
            CFG.brushTool = false;
            EditorMap_PrintMap.scale = 2.272727f;
            Game.menuManager.setViewIDWithoutAnimation(View.PRINT_A_MAP);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText("Print Map - Scale 0.5");
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapEdit$22, reason: invalid class name */
    class AnonymousClass22 extends ButtonMain {
        AnonymousClass22(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            EditorMap_PrintMap.goBack = View.EDITOR_MAPS_EDIT;
            CFG.brushTool = false;
            EditorMap_PrintMap.scale = 1.0f;
            Game.menuManager.setViewIDWithoutAnimation(View.PRINT_A_MAP);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText("Print Map - Scale 1");
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapEdit$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonMain {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Renderer.drawArmyInProvince = false;
            Game.menuManager.setViewID(View.EDITOR_MAPS_EDIT_FORMABLE_CIVS);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("FormableCivilizations"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapEdit$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonMain {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Renderer.drawArmyInProvince = false;
            ProvinceDrawDetails.updateDrawProvinceDetails_ProvinceID();
            Game.menuManager.setViewID(View.EDITOR_MAPS_EDIT_PROVINCE_CONNECTIONS);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get(fiRhHJntP.fInsXfb));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapEdit$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonMain {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Renderer.drawArmyInProvince = false;
            ProvinceDrawDetails.updateDrawProvinceDetails_SeaProvinces();
            Game.menuManager.setViewID(View.EDITOR_MAPS_EDIT_SEA_PROVINCES);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("EditSeaProvinces"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapEdit$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonMain {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setViewID(View.EDITOR_MAPS_EDIT_TERRAIN);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("EditTerrainTypes"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapEdit$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonMain {
        AnonymousClass7(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Renderer.drawArmyInProvince = false;
            ProvinceDrawDetails.updateDrawProvinceDetails_Resource();
            Game.menuManager.setViewID(View.EDITOR_MAPS_EDIT_RESOURCE);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Resources"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapEdit$8, reason: invalid class name */
    class AnonymousClass8 extends ButtonMain {
        AnonymousClass8(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            CFG.brushTool = false;
            Renderer.drawArmyInProvince = false;
            ProvinceDrawDetails.updateDrawProvinceDetails_GrowthRate();
            Game.menuManager.setViewID(View.EDITOR_MAPS_EDIT_GROWTH_RATE);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("GrowthRateEditor"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapEdit$9, reason: invalid class name */
    class AnonymousClass9 extends ButtonMain {
        AnonymousClass9(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            CFG.brushTool = false;
            Renderer.drawArmyInProvince = false;
            ProvinceDrawDetails.updateDrawProvinceDetails_Economy();
            Game.menuManager.setViewID(View.EDITOR_MAPS_EDIT_ECONOMY);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("BaseDevelopmentLevel"));
        }
    }

    public EditorMapEdit() {
        ArrayList arrayList = new ArrayList();
        int i = CFG.PADDING * 2;
        int i2 = CFG.BUTTON_HEIGHT + (CFG.BUTTON_HEIGHT / 2);
        int i3 = CFG.GAME_WIDTH / 10;
        int i4 = CFG.GAME_HEIGHT / 10;
        int i5 = CFG.PADDING * 2;
        int i6 = CFG.PADDING * 4;
        int i7 = i * 2;
        arrayList.add(new AnonymousClass1(null, 1, -1, i, i5, CFG.LEFT_MENU_WIDTH - i7, true));
        int height = arrayList.get(arrayList.size() - 1).getHeight() + i5 + i5;
        arrayList.add(new AnonymousClass2("", 1, i6, i, height, CFG.LEFT_MENU_WIDTH - i7, true));
        int height2 = height + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass3("", 1, i6, i, height2, CFG.LEFT_MENU_WIDTH - i7, true));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass4("", 1, i6, i, height3, CFG.LEFT_MENU_WIDTH - i7, true));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass5("", 1, i6, i, height4, CFG.LEFT_MENU_WIDTH - i7, true));
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass6("", 1, i6, i, height5, CFG.LEFT_MENU_WIDTH - i7, true));
        int height6 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass7("", 1, i6, i, height6, CFG.LEFT_MENU_WIDTH - i7, true));
        int height7 = height6 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass8("", 1, i6, i, height7, CFG.LEFT_MENU_WIDTH - i7, true));
        int height8 = height7 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass9("", 1, i6, i, height8, CFG.LEFT_MENU_WIDTH - i7, true));
        int height9 = height8 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass10(HjHDSSkYG.kMxsagzPB, 1, i6, i, height9, CFG.LEFT_MENU_WIDTH - i7, true));
        int height10 = height9 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass11("", 1, i6, i, height10, CFG.LEFT_MENU_WIDTH - i7, true));
        int height11 = height10 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass12("", 1, i6, i, height11, CFG.LEFT_MENU_WIDTH - i7, true));
        int height12 = height11 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass13("", 1, i6, i, height12, CFG.LEFT_MENU_WIDTH - i7, true));
        int height13 = height12 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass14("", 1, i6, i, height13, CFG.LEFT_MENU_WIDTH - i7, true));
        int height14 = height13 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass15("", 1, i6, i, height14, CFG.LEFT_MENU_WIDTH - i7, true, true));
        int height15 = height14 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass16("", 1, i6, i, height15, CFG.LEFT_MENU_WIDTH - i7, false, true));
        int height16 = height15 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass17("", 1, i6, i, height16, CFG.LEFT_MENU_WIDTH - i7, true));
        int height17 = height16 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass18("", 1, i6, i, height17, CFG.LEFT_MENU_WIDTH - i7, false));
        int height18 = height17 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass19(null, 1, -1, i, height18, CFG.LEFT_MENU_WIDTH - i7, CFG.isDesktop()));
        int height19 = height18 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass20(null, 1, -1, i, height19, CFG.LEFT_MENU_WIDTH - i7, CFG.isDesktop()));
        int height20 = height19 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass21(null, 1, -1, i, height20, CFG.LEFT_MENU_WIDTH - i7, CFG.isDesktop()));
        int height21 = height20 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass22(null, 1, -1, i, height21, CFG.LEFT_MENU_WIDTH - i7, CFG.isDesktop()));
        initMenu(new MenuTitle("", 1.0f, i2, true, true), i3, i2 + i4, CFG.LEFT_MENU_WIDTH, Math.min(height21 + arrayList.get(arrayList.size() - 1).getHeight() + i5, ((CFG.GAME_HEIGHT - i2) - i4) - (CFG.PADDING * 2)), arrayList, true);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawEditorMenuBG(spriteBatch, getPosX(), getPosY(), getWidth(), getHeight() + CFG.PADDING, i, i2);
        super.draw(spriteBatch, i, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void updateLanguage() {
        super.updateLanguage();
        getTitle().setText(Game.lang.get("EditMap") + ": " + Game.map.lMaps.get(Game.map.getActiveMapID()).mapData.Name);
    }
}
