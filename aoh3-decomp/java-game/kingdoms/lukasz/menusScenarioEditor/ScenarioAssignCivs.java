package aoc.kingdoms.lukasz.menusScenarioEditor;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.assets.loaders.Wkvw.nEtnPpUF;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ScenarioAssignCivs extends Menu {

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioAssignCivs$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonMain {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            CFG.iCreateScenario_AssignProvinces_Civ = getCurrent();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            if (!CFG.isDesktop()) {
                this.menuElementHover = null;
                return;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus("CTRL + " + Game.lang.get("ChooseAProvince"), "", Images.council, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return getCurrent() == CFG.iCreateScenario_AssignProvinces_Civ ? Colors.HOVER_GOLD : super.getColor(z);
        }
    }

    public ScenarioAssignCivs() {
        ArrayList arrayList = new ArrayList();
        int i = CFG.PADDING * 2;
        int i2 = CFG.BUTTON_HEIGHT;
        int i3 = CFG.PADDING * 4;
        int i4 = CFG.BUTTON_HEIGHT + (CFG.PADDING * 4) + Images.boxTitleBORDERWIDTH;
        int i5 = CFG.PADDING * 2;
        int i6 = (CFG.LEFT_MENU_WIDTH * 3) / 5;
        int i7 = CFG.PADDING;
        ArrayList arrayList2 = new ArrayList();
        for (int i8 = 0; i8 < Game.getCivsSize(); i8++) {
            arrayList2.add(Integer.valueOf(i8));
        }
        int height = i5;
        while (arrayList2.size() > 0) {
            int size = arrayList2.size();
            int i9 = 0;
            for (int i10 = 1; i10 < size; i10++) {
                for (int i11 = 0; i11 < Math.min(Game.getCiv(((Integer) arrayList2.get(i9)).intValue()).getCivName().length(), Game.getCiv(((Integer) arrayList2.get(i10)).intValue()).getCivName().length()); i11++) {
                    if (Game.getCiv(((Integer) arrayList2.get(i9)).intValue()).getCivName().charAt(i11) > Game.getCiv(((Integer) arrayList2.get(i10)).intValue()).getCivName().charAt(i11)) {
                        i9 = i10;
                        break;
                    } else {
                        if (Game.getCiv(((Integer) arrayList2.get(i9)).intValue()).getCivName().charAt(i11) < Game.getCiv(((Integer) arrayList2.get(i10)).intValue()).getCivName().charAt(i11)) {
                            break;
                        }
                    }
                }
            }
            int i12 = i6 - (i * 2);
            int i13 = i9;
            int i14 = i;
            ArrayList arrayList3 = arrayList2;
            arrayList.add(new AnonymousClass1(Game.getCiv(((Integer) arrayList2.get(i9)).intValue()).getCivName(), 1, (CFG.PADDING * 2) + CFG.CIV_FLAG_WIDTH, i, height, i12, true));
            arrayList.get(arrayList.size() - 1).setCurrent(((Integer) arrayList3.get(i13)).intValue());
            height += arrayList.get(arrayList.size() - 1).getHeight() + i5;
            arrayList3.remove(i13);
            arrayList2 = arrayList3;
            i = i14;
        }
        initMenu(new MenuTitle(nEtnPpUF.faRnAzIbCoufgP, 1.0f, i2, true, true), i3, i2 + i4, i6, Math.min(height, (CFG.GAME_HEIGHT - i2) - (i4 * 2)), arrayList, true);
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
        getTitle().setText(Game.lang.get("Civilizations"));
    }
}
