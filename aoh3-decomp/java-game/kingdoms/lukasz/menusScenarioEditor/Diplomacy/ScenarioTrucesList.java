package aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.diplomacy.Diplomacy;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.war.WarManager;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2Center;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.google.android.gms.internal.tasks.Vhe.SwmJtrccN;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ScenarioTrucesList extends Menu {
    public static int activeCivID;
    public static int activeCivID2;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioTrucesList$1, reason: invalid class name */
    class AnonymousClass1 extends Text_StaticBG_ID_FlagCiv {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getCivID() <= 0) {
                return;
            }
            ScenarioTrucesList.activeCivID = Game.getProvince(Game.iActiveProvince).getCivID();
            Game.menuManager.rebuildInGame_ScenarioEditorTruces();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioTrucesList$2, reason: invalid class name */
    class AnonymousClass2 extends Text_StaticBG_ID_FlagCiv {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getCivID() <= 0) {
                return;
            }
            ScenarioTrucesList.activeCivID2 = Game.getProvince(Game.iActiveProvince).getCivID();
            Game.menuManager.rebuildInGame_ScenarioEditorTruces();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioTrucesList$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonGame {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioTrucesList$3$1, reason: invalid class name */
        class AnonymousClass1 extends Game.SimpleTask {
            AnonymousClass1(String str) {
                super(str);
            }

            @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
            public void update() {
                Game.menuManager.rebuildInGame_Wars();
            }
        }

        AnonymousClass3(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            String warKey;
            if (ScenarioTrucesList.activeCivID <= 0 || ScenarioTrucesList.activeCivID2 <= 0 || ScenarioTrucesList.activeCivID == ScenarioTrucesList.activeCivID2) {
                Game.menuManager.addToast_Error(Game.lang.get("SelectCivilization"));
                return;
            }
            if (ScenarioDiplomacy.goBackTo == View.IN_GAME && DiplomacyManager.isAtWar(ScenarioTrucesList.activeCivID, ScenarioTrucesList.activeCivID2) && (warKey = WarManager.getWarKey(ScenarioTrucesList.activeCivID, ScenarioTrucesList.activeCivID2)) != null && DiplomacyManager.whitePeace(warKey)) {
                Game.addSimpleTask(new AnonymousClass1("rebuildInGame_Wars"));
            }
            DiplomacyManager.addTruce(ScenarioTrucesList.activeCivID, ScenarioTrucesList.activeCivID2);
            ScenarioTrucesList.activeCivID2 = 0;
            Game.menuManager.rebuildInGame_ScenarioEditorTruces();
            Game.menuManager.addToastGold(Game.lang.get("Added"), Images.v);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioTrucesList$4, reason: invalid class name */
    class AnonymousClass4 extends Text_StaticBG_ID_FlagCiv {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            DiplomacyManager.removeTruce(ScenarioTrucesList.activeCivID, getCurrent());
            Game.menuManager.rebuildInGame_ScenarioEditorTruces();
            Game.menuManager.addToastGold(Game.lang.get("Removed"), Images.v);
        }
    }

    public ScenarioTrucesList() {
        int height;
        ArrayList arrayList = new ArrayList();
        int i = CFG.PADDING * 2;
        int i2 = CFG.BUTTON_HEIGHT;
        int i3 = CFG.PADDING * 4;
        int i4 = CFG.BUTTON_HEIGHT + (CFG.PADDING * 4) + Images.boxTitleBORDERWIDTH;
        int i5 = CFG.PADDING;
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        arrayList.add(new Text_Title_v2Center(Game.lang.get("TruceWith"), -1, Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height2 = arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING + 0;
        int i6 = activeCivID;
        int i7 = width - (i * 2);
        arrayList.add(new AnonymousClass1(i6 == 0 ? Game.lang.get("SelectCivilization") : Game.getCiv(i6).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i, height2, i7, CFG.BUTTON_HEIGHT4, activeCivID));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i8 = activeCivID2;
        arrayList.add(new AnonymousClass2(i8 == 0 ? Game.lang.get("SelectCivilization") : Game.getCiv(i8).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i, height3, i7, CFG.BUTTON_HEIGHT4, activeCivID2));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass3(Game.lang.get("Confirm"), i, height4, i7, CFG.BUTTON_HEIGHT));
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new Text_Title_v2Center(Game.lang.get("Truces") + ": " + Game.getCiv(activeCivID).getCivName(), -1, Images.boxTitleBORDERWIDTH, height5, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height6 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        if (Game.getCiv(activeCivID).diplomacy.truce.size() == 0) {
            arrayList.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i, height6, i7, CFG.BUTTON_HEIGHT2));
            height = height6 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        } else {
            arrayList.add(new Text_StaticBG(Game.lang.get("Remove"), CFG.FONT_REGULAR, -1, i, height6, i7, CFG.BUTTON_HEIGHT3));
            height = height6 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            for (Diplomacy.DiplomacyData diplomacyData : Game.getCiv(activeCivID).diplomacy.truce.values()) {
                arrayList.add(new AnonymousClass4(Game.getCiv(diplomacyData.iCivID).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i, height, i7, CFG.BUTTON_HEIGHT4, diplomacyData.iCivID));
                height += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                i = i;
            }
        }
        initMenu(new MenuTitle("", 1.0f, i2, true, true), i3, i2 + i4, width, Math.min(height, (CFG.GAME_HEIGHT - i2) - (i4 * 2)), arrayList, true);
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
        getTitle().setText(Game.lang.get(SwmJtrccN.jWkbTugqSsZK));
    }
}
