package aoc.kingdoms.lukasz.menusScenarioEditor;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.backends.android.surfaceview.JuyF.CvuNnwgYwe;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ScenarioGovernment_List extends Menu {
    public int iCivID;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioGovernment_List$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonMain {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return super.getTextToDraw() + ": " + Game.getCiv(ScenarioGovernment_List.this.iCivID).scenarioEditorData.CCL;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioGovernment_List$10, reason: invalid class name */
    class AnonymousClass10 extends ButtonMain {
        AnonymousClass10(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return super.getTextToDraw() + ": " + Game.getCiv(ScenarioGovernment_List.this.iCivID).scenarioEditorData.SCL;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioGovernment_List$11, reason: invalid class name */
    class AnonymousClass11 extends ButtonMain {
        AnonymousClass11(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getCiv(ScenarioGovernment_List.this.iCivID).scenarioEditorData.SCL++;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioGovernment_List$12, reason: invalid class name */
    class AnonymousClass12 extends ButtonMain {
        AnonymousClass12(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getCiv(ScenarioGovernment_List.this.iCivID).scenarioEditorData.SCL = Math.max(0, Game.getCiv(ScenarioGovernment_List.this.iCivID).scenarioEditorData.SCL - 1);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioGovernment_List$13, reason: invalid class name */
    class AnonymousClass13 extends ButtonMain {
        AnonymousClass13(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return super.getTextToDraw() + ": " + Game.getCiv(ScenarioGovernment_List.this.iCivID).scenarioEditorData.NRL;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioGovernment_List$14, reason: invalid class name */
    class AnonymousClass14 extends ButtonMain {
        AnonymousClass14(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getCiv(ScenarioGovernment_List.this.iCivID).scenarioEditorData.NRL++;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioGovernment_List$15, reason: invalid class name */
    class AnonymousClass15 extends ButtonMain {
        AnonymousClass15(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getCiv(ScenarioGovernment_List.this.iCivID).scenarioEditorData.NRL = Math.max(0, Game.getCiv(ScenarioGovernment_List.this.iCivID).scenarioEditorData.NRL - 1);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioGovernment_List$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonMain {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getCiv(ScenarioGovernment_List.this.iCivID).scenarioEditorData.CCL++;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioGovernment_List$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonMain {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getCiv(ScenarioGovernment_List.this.iCivID).scenarioEditorData.CCL = Math.max(0, Game.getCiv(ScenarioGovernment_List.this.iCivID).scenarioEditorData.CCL - 1);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioGovernment_List$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonMain {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return super.getTextToDraw() + ": " + Game.getCiv(ScenarioGovernment_List.this.iCivID).scenarioEditorData.MAL;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioGovernment_List$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonMain {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getCiv(ScenarioGovernment_List.this.iCivID).scenarioEditorData.MAL++;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioGovernment_List$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonMain {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getCiv(ScenarioGovernment_List.this.iCivID).scenarioEditorData.MAL = Math.max(0, Game.getCiv(ScenarioGovernment_List.this.iCivID).scenarioEditorData.MAL - 1);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioGovernment_List$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonMain {
        AnonymousClass7(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return super.getTextToDraw() + ": " + Game.getCiv(ScenarioGovernment_List.this.iCivID).scenarioEditorData.MAGL;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioGovernment_List$8, reason: invalid class name */
    class AnonymousClass8 extends ButtonMain {
        AnonymousClass8(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getCiv(ScenarioGovernment_List.this.iCivID).scenarioEditorData.MAGL++;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioGovernment_List$9, reason: invalid class name */
    class AnonymousClass9 extends ButtonMain {
        AnonymousClass9(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getCiv(ScenarioGovernment_List.this.iCivID).scenarioEditorData.MAGL = Math.max(0, Game.getCiv(ScenarioGovernment_List.this.iCivID).scenarioEditorData.MAGL - 1);
        }
    }

    public ScenarioGovernment_List() {
        this.iCivID = 0;
        ArrayList arrayList = new ArrayList();
        int i = CFG.PADDING * 2;
        int i2 = CFG.BUTTON_HEIGHT;
        int i3 = CFG.PADDING * 4;
        int i4 = CFG.BUTTON_HEIGHT + (CFG.PADDING * 4) + Images.boxTitleBORDERWIDTH;
        int i5 = CFG.PADDING * 2;
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int i6 = CFG.PADDING;
        if (Game.iActiveProvince >= 0) {
            this.iCivID = Game.getProvince(Game.iActiveProvince).getCivID();
        } else {
            this.iCivID = 0;
        }
        int i7 = width - (i * 2);
        arrayList.add(new AnonymousClass1(Game.lang.get("CapitalCity"), 1, (CFG.PADDING * 2) + CFG.CIV_FLAG_WIDTH, i, i5, i7, true));
        int height = i5 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        int i8 = i7 / 2;
        int i9 = i + i8;
        arrayList.add(new AnonymousClass2("+", 1, -1, i9, height, i8, true));
        arrayList.add(new AnonymousClass3("-", 1, -1, i, height, i8, true));
        int i10 = i5 * 2;
        int height2 = height + arrayList.get(arrayList.size() - 1).getHeight() + i10;
        arrayList.add(new AnonymousClass4(Game.lang.get("MilitaryAcademy"), 1, (CFG.PADDING * 2) + CFG.CIV_FLAG_WIDTH, i, height2, i7, true));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass5(CvuNnwgYwe.YIyXQGsmVM, 1, -1, i9, height3, i8, true));
        arrayList.add(new AnonymousClass6("-", 1, -1, i, height3, i8, true));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + i10;
        arrayList.add(new AnonymousClass7(Game.lang.get("MilitaryAcademyForGenerals"), 1, (CFG.PADDING * 2) + CFG.CIV_FLAG_WIDTH, i, height4, i7, true));
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass8("+", 1, -1, i9, height5, i8, true));
        arrayList.add(new AnonymousClass9("-", 1, -1, i, height5, i8, true));
        int height6 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + i10;
        arrayList.add(new AnonymousClass10(Game.lang.get("SupremeCourt"), 1, (CFG.PADDING * 2) + CFG.CIV_FLAG_WIDTH, i, height6, i7, true));
        int height7 = height6 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass11("+", 1, -1, i9, height7, i8, true));
        arrayList.add(new AnonymousClass12("-", 1, -1, i, height7, i8, true));
        int height8 = height7 + arrayList.get(arrayList.size() - 1).getHeight() + i10;
        arrayList.add(new AnonymousClass13(Game.lang.get("NuclearReactor"), 1, (CFG.PADDING * 2) + CFG.CIV_FLAG_WIDTH, i, height8, i7, true));
        int height9 = height8 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass14("+", 1, -1, i9, height9, i8, true));
        arrayList.add(new AnonymousClass15("-", 1, -1, i, height9, i8, true));
        initMenu(new MenuTitle("", 1.0f, i2, true, true), i3, i2 + i4, width, Math.min(height9 + arrayList.get(arrayList.size() - 1).getHeight() + i10, (CFG.GAME_HEIGHT - i2) - (i4 * 2)), arrayList, this.iCivID > 0);
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
        getTitle().setText(Game.iActiveProvince >= 0 ? Game.getCiv(Game.getProvince(Game.iActiveProvince).getCivID()).getCivName() : Game.lang.get("None"));
    }
}
