package aoc.kingdoms.lukasz.menusEditor;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.ColorPicker;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.FQy.TGqtTWl;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.utils.compression.spWT.QefTqRjwAJmEDy;
import com.pairip.licensecheck.CohD.CaiJWNfqszJNZ;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class CreateCiv_Flag extends Menu {

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusEditor.CreateCiv_Flag$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonMain {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.createCivFlag().setVisible(false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusEditor.CreateCiv_Flag$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonGame {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getColorPicker().getVisible()) {
                Game.menuManager.getColorPicker().hideColorPicker();
            }
            Game.flagManager.updateDivision(false);
            Game.menuManager.rebuildCreateCivFlag();
            Game.menuManager.addToastGold("ID: [" + Game.flagManager.flagEdit.iDivisionID + "/" + (Game.flagManager.lDivisions.size() - 1) + "]", Images.brush);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusEditor.CreateCiv_Flag$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonGame {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getColorPicker().getVisible() && Game.flagManager.activeColorID == 0) {
                Game.menuManager.getColorPicker().hideColorPicker();
                return;
            }
            Game.flagManager.activeColorID = 0;
            Game.menuManager.getColorPicker().setActiveRGBColor(Game.flagManager.flagEdit.lDivisionColors.get(Game.flagManager.activeColorID).r, Game.flagManager.flagEdit.lDivisionColors.get(Game.flagManager.activeColorID).g, Game.flagManager.flagEdit.lDivisionColors.get(Game.flagManager.activeColorID).b);
            Game.menuManager.getColorPicker().setVisible(true, ColorPicker.PickerAction.CREATE_CIV_DIVISION);
            Game.menuManager.getColorPicker().setPosX(CreateCiv_Flag.this.getPosX() + CreateCiv_Flag.this.getWidth() + (CFG.PADDING * 4));
            Game.menuManager.getColorPicker().setPosY(getPosY());
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus("", "" + Game.lang.get(TGqtTWl.okYoPpdSCbqY), Images.pickerIcon, CFG.FONT_REGULAR, CFG.FONT_REGULAR, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button
        protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            Game.flagManager.drawDivision_FlagFrameSize(spriteBatch, ((getPosX() + (getWidth() / 2)) - 34) + i, ((getPosY() + (getHeight() / 2)) - 22) + i2);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusEditor.CreateCiv_Flag$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonGame {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getColorPicker().getVisible()) {
                Game.menuManager.getColorPicker().hideColorPicker();
            }
            Game.flagManager.updateDivision(true);
            Game.menuManager.rebuildCreateCivFlag();
            Game.menuManager.addToastGold("ID: [" + Game.flagManager.flagEdit.iDivisionID + CaiJWNfqszJNZ.aQFvqesvnB + (Game.flagManager.lDivisions.size() - 1) + "]", Images.brush);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusEditor.CreateCiv_Flag$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonGame {
        int iCurrent;

        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getColorPicker().getVisible() && Game.flagManager.activeColorID == getCurrent()) {
                Game.menuManager.getColorPicker().hideColorPicker();
                return;
            }
            Game.flagManager.activeColorID = getCurrent();
            Game.menuManager.getColorPicker().setActiveRGBColor(Game.flagManager.flagEdit.lDivisionColors.get(Game.flagManager.activeColorID).r, Game.flagManager.flagEdit.lDivisionColors.get(Game.flagManager.activeColorID).g, Game.flagManager.flagEdit.lDivisionColors.get(Game.flagManager.activeColorID).b);
            Game.menuManager.getColorPicker().setVisible(true, ColorPicker.PickerAction.CREATE_CIV_DIVISION);
            Game.menuManager.getColorPicker().setPosX(CreateCiv_Flag.this.getPosX() + CreateCiv_Flag.this.getWidth() + (CFG.PADDING * 4));
            Game.menuManager.getColorPicker().setPosY(getPosY());
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus("", "" + Game.lang.get("PickColor"), Images.pickerIcon, CFG.FONT_REGULAR, CFG.FONT_REGULAR, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button
        protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            Game.flagManager.drawDivision_FlagFrameSize(spriteBatch, ((getPosX() + (getWidth() / 2)) - 34) + i, ((getPosY() + (getHeight() / 2)) - 22) + i2, this.iCurrent);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonGame, aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getCurrent() {
            return this.iCurrent;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonGame, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setCurrent(int i) {
            this.iCurrent = i;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusEditor.CreateCiv_Flag$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonGame {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildCreateCivFlag();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus("", "" + Game.lang.get("PickColor"), Images.pickerIcon, CFG.FONT_REGULAR, CFG.FONT_REGULAR, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button
        protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            ImageManager.getImage(Images.pickerIcon).draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.pickerIcon).getWidth() / 2)) + i, ((getPosY() + (getHeight() / 2)) - (ImageManager.getImage(Images.pickerIcon).getHeight() / 2)) + i2);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusEditor.CreateCiv_Flag$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonGame {
        AnonymousClass7(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button
        protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            Game.flagManager.drawDivision_FlagFrameSize(spriteBatch, ((getPosX() + (getWidth() / 2)) - 34) + i, ((getPosY() + (getHeight() / 2)) - 22) + i2);
            Game.flagManager.drawOverlay_FlagFrameSize(spriteBatch, ((getPosX() + (getWidth() / 2)) - 34) + i, ((getPosY() + (getHeight() / 2)) - 22) + i2, this.iCurrent);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusEditor.CreateCiv_Flag$8, reason: invalid class name */
    class AnonymousClass8 extends ButtonGame {
        int iCurrent;

        AnonymousClass8(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.flagManager.moveOverlayUp(getCurrent());
            Game.menuManager.rebuildCreateCivFlag();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus("", "" + Game.lang.get("Up"), Images.upgrade, CFG.FONT_REGULAR, CFG.FONT_REGULAR, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonGame, aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getCurrent() {
            return this.iCurrent;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonGame, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setCurrent(int i) {
            this.iCurrent = i;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusEditor.CreateCiv_Flag$9, reason: invalid class name */
    class AnonymousClass9 extends ButtonGame {
        int iCurrent;

        AnonymousClass9(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.flagManager.removeOverlay(getCurrent());
            Game.menuManager.rebuildCreateCivFlag();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus("", "" + Game.lang.get("Remove"), Images.x, CFG.FONT_REGULAR, CFG.FONT_REGULAR, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonGame, aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getCurrent() {
            return this.iCurrent;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonGame, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setCurrent(int i) {
            this.iCurrent = i;
        }
    }

    public CreateCiv_Flag() {
        ArrayList arrayList = new ArrayList();
        int i = CFG.PADDING * 2;
        int i2 = CFG.BUTTON_HEIGHT;
        int i3 = CFG.GAME_WIDTH / 10;
        int i4 = CFG.GAME_HEIGHT / 10;
        int i5 = CFG.LEFT_MENU_WIDTH;
        int i6 = CFG.PADDING * 2;
        int i7 = CFG.PADDING * 4;
        int i8 = (CFG.PADDING * 2) + 44;
        int i9 = i5 - (i * 2);
        arrayList.add(new AnonymousClass1(Game.lang.get("Back"), 1, -1, i, i6, i9, true));
        int height = arrayList.get(arrayList.size() - 1).getHeight() + i6 + i6;
        arrayList.add(new AnonymousClass2("<<", 1, -1, i, height, CFG.BUTTON_WIDTH, i8, true));
        arrayList.add(new AnonymousClass3(QefTqRjwAJmEDy.SayIv, 1, i7, i + CFG.BUTTON_WIDTH, height, i9 - (CFG.BUTTON_WIDTH * 2), i8, true));
        int i10 = i5 - i;
        arrayList.add(new AnonymousClass4(">>", 1, -1, i10 - CFG.BUTTON_WIDTH, height, CFG.BUTTON_WIDTH, i8, true));
        int height2 = height + arrayList.get(arrayList.size() - 1).getHeight() + i6;
        int i11 = 1;
        while (i11 < Game.flagManager.lDivisions.get(Game.flagManager.flagEdit.iDivisionID).iLayers) {
            int i12 = i11;
            arrayList.add(new AnonymousClass5("", 1, i7, i, height2, i9, i8, true));
            height2 += arrayList.get(arrayList.size() - 1).getHeight() + i6;
            arrayList.get(arrayList.size() - 1).setCurrent(i12);
            i11 = i12 + 1;
        }
        int i13 = 0;
        while (i13 < Game.flagManager.flagEdit.lOverlays.size()) {
            int i14 = i13;
            arrayList.add(new AnonymousClass6("", 1, i7, i, height2, CFG.BUTTON_WIDTH, i8, true));
            int i15 = height2;
            arrayList.add(new AnonymousClass7("", 1, i7, i + CFG.BUTTON_WIDTH, i15, i9 - (CFG.BUTTON_WIDTH * 3), i8, true));
            arrayList.add(new AnonymousClass8("UP", 1, i7, i10 - (CFG.BUTTON_WIDTH * 2), i15, CFG.BUTTON_WIDTH, i8, true));
            arrayList.get(arrayList.size() - 1).setCurrent(i14);
            arrayList.add(new AnonymousClass9("X", 1, i7, i10 - CFG.BUTTON_WIDTH, i15, CFG.BUTTON_WIDTH, i8, true));
            arrayList.get(arrayList.size() - 1).setCurrent(i14);
            height2 += arrayList.get(arrayList.size() - 1).getHeight() + i6;
            i13 = i14 + 1;
        }
        initMenu(new MenuTitle(Game.lang.get("CustomizeFlag"), 1.0f, i2, true, true), i3, i2 + i4, CFG.LEFT_MENU_WIDTH, (CFG.GAME_HEIGHT - i2) - (i4 * 2), arrayList, false);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawEditorMenuBG(spriteBatch, getPosX(), getPosY(), getWidth(), getHeight() + CFG.PADDING, i, i2);
        super.draw(spriteBatch, i, i2, z, status);
    }
}
