package aoc.kingdoms.lukasz.menusScenarioEditor;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Keyboard;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ScenarioPopulation_List extends Menu {
    public static int iCivID = -1;
    public static String sPopulation = "";
    public String sDefault;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioPopulation_List$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonMain {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            ScenarioPopulation_List.iCivID = getCurrent();
            ScenarioPopulation_List.sPopulation = "" + Game.getCiv(getCurrent()).scenarioEditorData.Population;
            Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.SCENARIO_CIV_POPULATION, ScenarioPopulation_List.sPopulation);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getIsHovered() {
            return super.getIsHovered() || ScenarioPopulation_List.iCivID == getCurrent();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return super.getTextToDraw() + ": " + (Game.getCiv(getCurrent()).scenarioEditorData.Population == 0 ? ScenarioPopulation_List.this.sDefault : Integer.valueOf(Game.getCiv(getCurrent()).scenarioEditorData.Population));
        }
    }

    public ScenarioPopulation_List() {
        ArrayList arrayList = new ArrayList();
        int i = CFG.PADDING * 2;
        int i2 = CFG.BUTTON_HEIGHT;
        int i3 = CFG.PADDING * 4;
        int i4 = CFG.BUTTON_HEIGHT + (CFG.PADDING * 4) + Images.boxTitleBORDERWIDTH;
        int i5 = CFG.PADDING * 2;
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int i6 = CFG.PADDING;
        iCivID = -1;
        this.sDefault = Game.lang.get("Default");
        ArrayList arrayList2 = new ArrayList();
        for (int i7 = 0; i7 < Game.getCivsSize(); i7++) {
            arrayList2.add(Integer.valueOf(i7));
        }
        int height = i5;
        while (arrayList2.size() > 0) {
            int size = arrayList2.size();
            int i8 = 0;
            for (int i9 = 1; i9 < size; i9++) {
                for (int i10 = 0; i10 < Math.min(Game.getCiv(((Integer) arrayList2.get(i8)).intValue()).getCivName().length(), Game.getCiv(((Integer) arrayList2.get(i9)).intValue()).getCivName().length()); i10++) {
                    if (Game.getCiv(((Integer) arrayList2.get(i8)).intValue()).getCivName().charAt(i10) > Game.getCiv(((Integer) arrayList2.get(i9)).intValue()).getCivName().charAt(i10)) {
                        i8 = i9;
                        break;
                    } else {
                        if (Game.getCiv(((Integer) arrayList2.get(i8)).intValue()).getCivName().charAt(i10) < Game.getCiv(((Integer) arrayList2.get(i9)).intValue()).getCivName().charAt(i10)) {
                            break;
                        }
                    }
                }
            }
            int i11 = height;
            int i12 = i8;
            ArrayList arrayList3 = arrayList2;
            arrayList.add(new AnonymousClass1(Game.getCiv(((Integer) arrayList2.get(i8)).intValue()).getCivName(), 1, (CFG.PADDING * 2) + CFG.CIV_FLAG_WIDTH, i, i11, width - (i * 2), true));
            arrayList.get(arrayList.size() - 1).setCurrent(((Integer) arrayList3.get(i12)).intValue());
            height = i11 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
            arrayList3.remove(i12);
            arrayList2 = arrayList3;
        }
        initMenu(new MenuTitle("", 1.0f, i2, true, true), i3, i2 + i4, width, Math.min(height, (CFG.GAME_HEIGHT - i2) - (i4 * 2)), arrayList, true);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        drawEditorMenuBG(spriteBatch, getPosX(), getPosY(), getWidth(), getHeight(), i, i2);
        super.beginClip(spriteBatch, i, i2, z);
        super.drawMenu(spriteBatch, i, i2, z);
        for (int i3 = 0; i3 < getMenuElementsSize(); i3++) {
            try {
                if (getMenuElement(i3).getIsInView()) {
                    Game.getCiv(getMenuElement(i3).getCurrent()).getFlag().draw(spriteBatch, getPosX() + getMenuElement(i3).getPosX() + CFG.PADDING + i, (((getMenuElement(i3).getPosY() + getMenuPosY()) + (getMenuElement(i3).getHeight() / 2)) - (CFG.CIV_FLAG_HEIGHT / 2)) + i2, CFG.CIV_FLAG_WIDTH, CFG.CIV_FLAG_HEIGHT);
                    ImageManager.getImage(Images.flag_rect).draw(spriteBatch, (((getPosX() + getMenuElement(i3).getPosX()) + (getMenuElement(i3).getTextPos() / 2)) - (CFG.CIV_FLAG_WIDTH / 2)) + i, (((getMenuElement(i3).getPosY() + getMenuPosY()) + (getMenuElement(i3).getHeight() / 2)) - (CFG.CIV_FLAG_HEIGHT / 2)) + i2);
                }
            } catch (IndexOutOfBoundsException | NullPointerException unused) {
            }
        }
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
        getTitle().setText(Game.lang.get("Default") + ": 0");
    }
}
