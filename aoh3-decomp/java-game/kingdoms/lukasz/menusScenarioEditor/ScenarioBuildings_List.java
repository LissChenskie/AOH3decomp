package aoc.kingdoms.lukasz.menusScenarioEditor;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.BuildingsManager;
import aoc.kingdoms.lukasz.map.province.ProvinceConstructedBuilding;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonBuilding;
import aoc.kingdoms.lukasz.menusMapEditor.EditorSelectProvinces;
import aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioDiplomacy;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ScenarioBuildings_List extends Menu {
    public int iProvinceID;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioBuildings_List$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonBuilding {
        AnonymousClass1(boolean z, int i, int i2, int i3, int i4, int i5, boolean z2, boolean z3) {
            super(z, i, i2, i3, i4, i5, z2, z3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (EditorSelectProvinces.selectedProvinces.size() <= 0) {
                if (ScenarioBuildings_List.this.iProvinceID >= 0) {
                    if (ScenarioDiplomacy.goBackTo == View.IN_GAME) {
                        if (Game.getProvince(ScenarioBuildings_List.this.iProvinceID).buildingBuilt(getValue1(), getValue2())) {
                            Game.getProvince(ScenarioBuildings_List.this.iProvinceID).destroyBuilding(getValue1(), getValue2());
                        } else {
                            Game.getProvince(ScenarioBuildings_List.this.iProvinceID).addNewBuilding_LoadScenario(new ProvinceConstructedBuilding(getValue1(), getValue2()));
                        }
                    } else if (Game.getProvince(ScenarioBuildings_List.this.iProvinceID).buildingBuilt(getValue1(), getValue2())) {
                        Game.getProvince(ScenarioBuildings_List.this.iProvinceID).destroyBuilding_ScenarioEditor(getValue1(), getValue2());
                    } else {
                        Game.getProvince(ScenarioBuildings_List.this.iProvinceID).addNewBuilding(new ProvinceConstructedBuilding(getValue1(), getValue2()));
                    }
                    this.built = Game.getProvince(ScenarioBuildings_List.this.iProvinceID).buildingBuilt(getValue1(), getValue2());
                    return;
                }
                return;
            }
            for (int i = 0; i < EditorSelectProvinces.selectedProvinces.size(); i++) {
                int iIntValue = EditorSelectProvinces.selectedProvinces.get(i).intValue();
                if (iIntValue >= 0) {
                    if (ScenarioDiplomacy.goBackTo == View.IN_GAME) {
                        if (Game.getProvince(iIntValue).buildingBuilt(getValue1(), getValue2())) {
                            Game.getProvince(iIntValue).destroyBuilding(getValue1(), getValue2());
                        } else {
                            Game.getProvince(iIntValue).addNewBuilding_LoadScenario(new ProvinceConstructedBuilding(getValue1(), getValue2()));
                        }
                    } else if (Game.getProvince(iIntValue).buildingBuilt(getValue1(), getValue2())) {
                        Game.getProvince(iIntValue).destroyBuilding_ScenarioEditor(getValue1(), getValue2());
                    } else {
                        Game.getProvince(iIntValue).addNewBuilding(new ProvinceConstructedBuilding(getValue1(), getValue2()));
                    }
                    this.built = Game.getProvince(iIntValue).buildingBuilt(getValue1(), getValue2());
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0124  */
    /* JADX WARN: Code duplicated, block: B:37:0x0127  */
    public ScenarioBuildings_List() {
        int i;
        boolean z;
        int i2 = 0;
        this.iProvinceID = 0;
        ArrayList arrayList = new ArrayList();
        int i3 = CFG.PADDING * 2;
        int i4 = CFG.BUTTON_HEIGHT;
        int i5 = CFG.PADDING * 4;
        int i6 = CFG.BUTTON_HEIGHT + (CFG.PADDING * 4) + Images.boxTitleBORDERWIDTH;
        int i7 = CFG.PADDING * 2;
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int i8 = CFG.PADDING;
        if (Game.iActiveProvince >= 0) {
            this.iProvinceID = Game.iActiveProvince;
        } else {
            this.iProvinceID = -1;
        }
        if (this.iProvinceID >= 0) {
            int i9 = 0;
            int i10 = i7;
            while (i9 < BuildingsManager.buildingsSize) {
                try {
                    int height = i10;
                    int i11 = i2;
                    while (i11 < BuildingsManager.buildingSize.get(i9).intValue()) {
                        try {
                            if (!BuildingsManager.buildings.get(i9).UniqueCapitalBuilding && (Game.getProvince(this.iProvinceID).buildingBuilt(i9, i11) || BuildingsManager.buildings.get(i9).RequiredTechID[i11] < 0 || Game.getCiv(Game.getProvince(this.iProvinceID).getCivID()).getTechResearched(BuildingsManager.buildings.get(i9).RequiredTechID[i11]))) {
                                arrayList.add(new AnonymousClass1(Game.getProvince(this.iProvinceID).buildingBuilt(i9, i11), i9, i11, i3, height, width - (i3 * 2), true, true));
                                height += arrayList.get(arrayList.size() - 1).getHeight() + i7;
                            }
                            i11++;
                            i9 = i9;
                        } catch (Exception e) {
                            e = e;
                            i7 = height;
                            CFG.exceptionStack(e);
                            i = i7;
                            MenuTitle menuTitle = new MenuTitle("", 1.0f, i4, true, true);
                            int i12 = i4 + i6;
                            int iMin = Math.min(i, (CFG.GAME_HEIGHT - i4) - (i6 * 2));
                            if (this.iProvinceID >= 0) {
                                z = true;
                            } else {
                                z = false;
                            }
                            initMenu(menuTitle, i5, i12, width, iMin, arrayList, z);
                        }
                    }
                    i9++;
                    i10 = height;
                    i2 = 0;
                } catch (Exception e2) {
                    e = e2;
                    i7 = i10;
                }
            }
            i = i10;
        } else {
            i = i7;
        }
        MenuTitle menuTitle2 = new MenuTitle("", 1.0f, i4, true, true);
        int i13 = i4 + i6;
        int iMin2 = Math.min(i, (CFG.GAME_HEIGHT - i4) - (i6 * 2));
        if (this.iProvinceID >= 0) {
            z = true;
        } else {
            z = false;
        }
        initMenu(menuTitle2, i5, i13, width, iMin2, arrayList, z);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        drawEditorMenuBG(spriteBatch, getPosX(), getPosY(), getWidth(), getHeight(), i, i2);
        super.beginClip(spriteBatch, i, i2, z);
        super.drawMenu(spriteBatch, i, i2, z);
        super.endClip(spriteBatch, i, i2, z, status);
    }

    public final void drawEditorMenuBG(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, int i5, int i6) {
        int i7 = i + i5;
        Renderer.drawBoxCorner(spriteBatch, i7, (i2 - getTitle().getHeight()) + i6, i3, getTitle().getHeight() + i4 + CFG.PADDING);
        Renderer.drawBox_EDGE_TOP_LR(spriteBatch, Images.mainBox, i7, i2 + i6, i3, i4 + CFG.PADDING, true);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void updateLanguage() {
        super.updateLanguage();
        getTitle().setText(Game.iActiveProvince >= 0 ? Game.getProvince(Game.iActiveProvince).getProvinceName() : Game.lang.get("None"));
    }
}
