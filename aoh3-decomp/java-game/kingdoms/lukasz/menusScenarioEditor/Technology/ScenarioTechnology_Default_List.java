package aoc.kingdoms.lukasz.menusScenarioEditor.Technology;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.map.MapScenarios;
import aoc.kingdoms.lukasz.map.technology.TechnologyTree;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;
import aoc.kingdoms.lukasz.menu_element.button.ButtonTechnology;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2Center;
import aoc.kingdoms.lukasz.menusScenarioEditor.YGiX.gpVDKipRURuzw;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ScenarioTechnology_Default_List extends Menu {

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.Technology.ScenarioTechnology_Default_List$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonMain {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            MapScenarios.scenarioEditorDetails.CivDefault_Technology = -1;
            ScenarioTechnology_Default_List.this.updateLanguage();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Technology") + ": " + Game.lang.get("None"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.Technology.ScenarioTechnology_Default_List$2, reason: invalid class name */
    class AnonymousClass2 extends TextIcon2 {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("ResearchCost") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), CFG.FONT_BOLD, Colors.COLOR_TEXT_RESEARCH));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2
        public int getTextH() {
            return CFG.TEXT_HEIGHT + (CFG.PADDING * 4);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.Technology.ScenarioTechnology_Default_List$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonTechnology {
        AnonymousClass3(int i, int i2, int i3, int i4, boolean z, int i5) {
            super(i, i2, i3, i4, z, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonTechnology, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            MapScenarios.scenarioEditorDetails.CivDefault_Technology = getCurrent();
            ScenarioTechnology_Default_List.this.updateLanguage();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonTechnology, aoc.kingdoms.lukasz.menu_element.button.Button
        protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            if (getCurrent() == MapScenarios.scenarioEditorDetails.CivDefault_Technology) {
                this.btnIMG = Images.techResearched;
            } else {
                this.btnIMG = Images.techGray;
            }
            super.drawButtonBG(spriteBatch, i, i2, z);
        }
    }

    public ScenarioTechnology_Default_List() {
        ArrayList arrayList = new ArrayList();
        int i = Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2);
        ImageManager.getImage(Images.title2).getHeight();
        int width = ImageManager.getImage(Images.insideTop).getWidth();
        int i2 = CFG.PADDING * 2;
        int height = ImageManager.getImage(Images.title1Red).getHeight() + CFG.BUTTON_HEIGHT + (CFG.PADDING * 4);
        int i3 = CFG.PADDING;
        if (CFG.isDesktop()) {
            int i4 = CFG.BUTTON_HEIGHT2;
        } else {
            int i5 = CFG.BUTTON_HEIGHT;
        }
        arrayList.add(new Text_Title_v2Center(Game.lang.get("Technologies"), -1, CFG.FONT_BOLD, Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height2 = arrayList.get(arrayList.size() - 1).getHeight() + i3 + 0;
        int i6 = width - (i * 2);
        int width2 = (i6 - CFG.PADDING) - ImageManager.getImage(Images.techGray).getWidth();
        arrayList.add(new AnonymousClass1(null, 1, -1, i, height2, i6, true));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + i3;
        for (int i7 = 0; i7 < TechnologyTree.iTechnologySize; i7++) {
            int i8 = height3;
            arrayList.add(new AnonymousClass2("" + CFG.getPrecision2(TechnologyTree.getResearchCost(i7, Game.player.iCivID), 10), Game_Calendar.IMG_TECHNOLOGY, i, i8, width2, ImageManager.getImage(Images.techGray).getHeight()));
            arrayList.add(new AnonymousClass3(Images.techGray, i7, i + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, i8, false, i7 - 1));
            height3 += arrayList.get(arrayList.size() - 1).getHeight() + i3;
        }
        int iMin = Math.min(height3, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, 0, width, Math.max(height3, iMin)));
        initMenu(new MenuTitleIMG("", false, false, Images.title1Red), i2, height, width, iMin, arrayList, true, true);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight() + CFG.PADDING, false);
        ImageManager.getImage(Images.recruitArmyOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.recruitArmyOver).getWidth() / 2)) + i, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.recruitArmyOver).getHeight()));
        super.draw(spriteBatch, i, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void updateLanguage() {
        super.updateLanguage();
        getTitle().setText(Game.lang.get("Default") + ": " + Game.lang.get(gpVDKipRURuzw.UARdaqZrN) + ": " + (MapScenarios.scenarioEditorDetails.CivDefault_Technology < 0 ? Game.lang.get("None") : TechnologyTree.lTechnology.get(MapScenarios.scenarioEditorDetails.CivDefault_Technology).Name) + " [" + MapScenarios.scenarioEditorDetails.CivDefault_Technology + "]");
    }
}
