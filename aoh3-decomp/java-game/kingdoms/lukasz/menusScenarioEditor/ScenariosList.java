package aoc.kingdoms.lukasz.menusScenarioEditor;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SaveLoad.ExportScenarioAsMod;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame_Style_Value;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;
import aoc.kingdoms.lukasz.menu_element.button.Button_PreviewSmall;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ScenarioPreview;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.menus.LoadSave.Menu_LoadScenario;
import aoc.kingdoms.lukasz.menusInGame.DrawOver.SQ.XjthpFh;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ScenariosList extends Menu {

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenariosList$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonMain {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setViewID(View.EDITOR);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Back"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenariosList$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonMain {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.mapScenarios.createScenario();
            Game.mapBG.requestToDisposeMinimap = true;
            CFG.iCreateScenario_AssignProvinces_Civ = 0;
            Game.mapScenarios.loadReligions_JustBuild(true);
            Game.mapScenarios.scenarioEditor_isCampaign = false;
            Game.menuManager.setViewID(View.SCENARIO_WASTELAND_CONTINENTS);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("CreateNewScenario"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenariosList$3, reason: invalid class name */
    class AnonymousClass3 extends Button_PreviewSmall {
        AnonymousClass3(String str, String str2, int i, int i2, int i3, int i4, int i5) {
            super(str, str2, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button_PreviewSmall, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            ScenarioSettings.sAuthor = Game.mapScenarios.details.get(getCurrent()).Author;
            ScenarioSettings.sTag = Game.mapScenarios.lScenarios_TagsList.get(getCurrent());
            ScenarioSettings.sName = Game.mapScenarios.details.get(getCurrent()).Name;
            Game.scenarioID = getCurrent();
            CFG.iCreateScenario_AssignProvinces_Civ = 0;
            Menu_LoadScenario.editorMode = true;
            Menu_LoadScenario.goToMenu = View.SCENARIO_CIVILIZATIONS;
            Game.menuManager.setViewIDWithoutAnimation(View.LOAD_SCENARIO);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenariosList$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonGame_Style_Value {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z, int i7) {
            super(str, i, i2, i3, i4, i5, i6, z, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            ExportScenarioAsMod.exportScenario(Game.mapScenarios.lScenarios_TagsList.get(getCurrent()));
            Game.menuManager.setViewID(View.WORKSHOP);
            Game.menuManager.addToastGold(Game.lang.get("Done") + ": Now share the mod scenario to the Steam Workshop", Images.v);
            Game.menuManager.addToastGold(Game.lang.get("Done") + ": Now share the mod scenario to the Steam Workshop", Images.v);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG("Export the scenario as a mod to the Steam Workshop", Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc("The scenario will be automatically generated as a mod in the mods/ folder", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc("Exported mod won't include custom-made Civilizations if they are in the scenario!", CFG.FONT_REGULAR_SMALL, Colors.HOVER_IMPORTANT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (!getClickable()) {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc("You cannot export official, unchanged game scenarios made by the Author of the game.", CFG.FONT_REGULAR_SMALL, Colors.HOVER_NEGATIVE));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc("To export data as a mod, the author's name of the scenario must not be 'Łukasz Jakowski'.", CFG.FONT_REGULAR_SMALL, Colors.HOVER_NEGATIVE));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc("Change the author name of the scenario.", CFG.FONT_REGULAR_SMALL, Colors.HOVER_NEGATIVE));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_ScenarioPreview(getCurrent()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.mapScenarios.details.get(getCurrent()).Day + " " + Game_Calendar.getMonthName(Game.mapScenarios.details.get(getCurrent()).Month) + " " + Game.mapScenarios.details.get(getCurrent()).Year, CFG.FONT_REGULAR_SMALL, Colors.HOVER_TITLE_2));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.gameAges.lAges.get(Game.mapScenarios.details.get(getCurrent()).Age).Name, CFG.FONT_REGULAR_SMALL));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            StringBuilder sbAppend = new StringBuilder().append(Game.lang.get("Civilizations"));
            String str = XjthpFh.KnOjHCJql;
            arrayList2.add(new MenuElement_HoverElement_Type_Text(sbAppend.append(str).toString(), CFG.FONT_REGULAR_SMALL));
            String str2 = XjthpFh.MNFJQz;
            arrayList2.add(new MenuElement_HoverElement_Type_Text(str2 + Game.mapScenarios.details.get(getCurrent()).Civs, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Author") + str, CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(str2 + Game.mapScenarios.details.get(getCurrent()).Author, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Tag") + str, CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(str2 + Game.mapScenarios.lScenarios_TagsList.get(getCurrent()), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    public ScenariosList() {
        int i;
        boolean z;
        ArrayList arrayList = new ArrayList();
        int i2 = CFG.PADDING * 2;
        int i3 = CFG.BUTTON_HEIGHT + (CFG.BUTTON_HEIGHT / 2);
        int i4 = CFG.GAME_WIDTH / 10;
        int i5 = CFG.GAME_HEIGHT / 10;
        int i6 = CFG.PADDING * 2;
        int i7 = CFG.PADDING;
        int i8 = i2 * 2;
        arrayList.add(new AnonymousClass1(null, 1, -1, i2, i6, CFG.LEFT_MENU_WIDTH2 - i8, true));
        int height = arrayList.get(arrayList.size() - 1).getHeight() + i6 + i6;
        arrayList.add(new AnonymousClass2(null, 1, -1, i2, height, CFG.LEFT_MENU_WIDTH2 - i8, true));
        int height2 = height + arrayList.get(arrayList.size() - 1).getHeight() + i6;
        int i9 = (int) (((CFG.LEFT_MENU_WIDTH2 - i8) - CFG.PADDING) * 0.65f);
        int i10 = ((CFG.LEFT_MENU_WIDTH2 - i8) - CFG.PADDING) - i9;
        int i11 = 0;
        while (i11 < Game.mapScenarios.SCENARIOS_SIZE) {
            int i12 = i5;
            int i13 = i11;
            arrayList.add(new AnonymousClass3(Game.lang.get(Game.mapScenarios.details.get(i11).Name), "" + Game.mapScenarios.details.get(i11).Day + " " + Game_Calendar.getMonthName(Game.mapScenarios.details.get(i11).Month) + " " + Game.gameAges.getYear(Game.mapScenarios.details.get(i11).Year), i2, height2, i9, CFG.BUTTON_HEIGHT, i11));
            String str = Game.lang.get("Generate") + ": " + Game.lang.get("Mod");
            int i14 = CFG.FONT_REGULAR_SMALL;
            int i15 = i2 + i9 + CFG.PADDING;
            int i16 = CFG.BUTTON_HEIGHT;
            if (CFG.isDesktop()) {
                i = i13;
                if (!Game.mapScenarios.details.get(i).Author.equals("Łukasz Jakowski") && !Game.mapScenarios.details.get(i).Author.equals("Lukasz Jakowski")) {
                    z = true;
                }
                arrayList.add(new AnonymousClass4(str, i14, -1, i15, height2, i10, i16, z, i));
                height2 += arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
                i11 = i + 1;
                i5 = i12;
            } else {
                i = i13;
            }
            z = false;
            arrayList.add(new AnonymousClass4(str, i14, -1, i15, height2, i10, i16, z, i));
            height2 += arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
            i11 = i + 1;
            i5 = i12;
        }
        int i17 = i5;
        initMenu(new MenuTitle("", 1.0f, i3, true, true), i4, i3 + i17, CFG.LEFT_MENU_WIDTH2, ((CFG.GAME_HEIGHT - i3) - i17) - (CFG.PADDING * 2), arrayList, true, false);
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
        getTitle().setText(Game.lang.get("ScenarioEditor"));
    }
}
