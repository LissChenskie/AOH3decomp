package aoc.kingdoms.lukasz.menusScenarioEditor;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.allianceHRE.Alliance;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame_Style_Value;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g3d.model.data.xlbt.LBhZogys;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ScenarioCreateAlliance_AlliancesList extends Menu {

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCreateAlliance_AlliancesList$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonGame {
        AnonymousClass1(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            ScenarioCreateAllianceList.editAlliance = new Alliance();
            Game.menuManager.setViewID(View.SCENARIO_CREATE_ALLIANCE_EDIT);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCreateAlliance_AlliancesList$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonGame_Style_Value {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            ScenarioCreateAllianceList.editAlliance = Game.alliancesSpecial.get(getCurrent());
            Game.menuManager.setViewID(View.SCENARIO_CREATE_ALLIANCE_EDIT);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCreateAlliance_AlliancesList$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonGame_Style_Value {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.removeAllianceSpecial(getCurrent());
            Game.menuManager.setViewID(View.SCENARIO_CREATE_ALLIANCE);
        }
    }

    public ScenarioCreateAlliance_AlliancesList() {
        ArrayList arrayList = new ArrayList();
        int i = CFG.PADDING * 2;
        int i2 = CFG.BUTTON_HEIGHT;
        int i3 = CFG.PADDING * 4;
        int i4 = CFG.BUTTON_HEIGHT + (CFG.PADDING * 4) + Images.boxTitleBORDERWIDTH;
        int i5 = CFG.PADDING;
        int i6 = CFG.PADDING;
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int i7 = width - (i * 2);
        arrayList.add(new AnonymousClass1(Game.lang.get("CreateAlliance"), i, i6, i7, CFG.BUTTON_HEIGHT));
        int height = i6 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i8 = 0;
        while (i8 < Game.alliancesSpecial.size()) {
            int i9 = i8;
            arrayList.add(new AnonymousClass2(Game.alliancesSpecial.get(i8).Name_Alliance, CFG.FONT_REGULAR, CFG.PADDING * 4, i, height, (i7 - CFG.BUTTON_WIDTH) - CFG.PADDING, true, i9));
            arrayList.add(new AnonymousClass3(Game.lang.get("Remove"), CFG.FONT_REGULAR, -1, ((i7 - CFG.BUTTON_WIDTH) - CFG.PADDING) + i + CFG.PADDING, height, CFG.BUTTON_WIDTH, true, i9));
            height += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            i8 = i9 + 1;
            width = width;
        }
        initMenu(new MenuTitle(LBhZogys.eufrh, 1.0f, i2, true, true), i3, i2 + i4, width, Math.min(height, (CFG.GAME_HEIGHT - i2) - (i4 * 2)), arrayList, true);
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
        getTitle().setText(Game.lang.get("Alliances"));
    }
}
