package aoc.kingdoms.lukasz.menusEditor;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Keyboard;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.RulersManager;
import aoc.kingdoms.lukasz.menu.ColorPicker;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menusInGame.Court.zHJ.lOow;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonWriter;
import com.badlogic.gdx.utils.compression.spWT.QefTqRjwAJmEDy;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class CreateCiv extends Menu {
    private String sCivName;
    private final String sCivTAG = "Civilization TAG";
    public static Game.LoadCivilizationData nCiv = new Game.LoadCivilizationData();
    public static View goBackTo = View.EDITOR;
    public static boolean saveFlag = false;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusEditor.CreateCiv$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonMain {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.CREATE_CIV_EDIT, CreateCiv.nCiv.Tag);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus("CIV_TAG: ", CreateCiv.nCiv.Tag, Images.council, CFG.FONT_REGULAR, CFG.FONT_REGULAR, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text("Must be unique! No spaces and special characters!", CFG.FONT_REGULAR, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonMain
        public int getButtonBG() {
            Keyboard keyboard = Game.keyboard;
            return (Keyboard.keyboardMode && Keyboard.keyboardActionType == Keyboard.KeyboardActionType.CREATE_CIV_EDIT) ? super.getButtonBG_Active() : super.getButtonBG();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonMain
        public int getButtonBG_Active() {
            Keyboard keyboard = Game.keyboard;
            return (Keyboard.keyboardMode && Keyboard.keyboardActionType == Keyboard.KeyboardActionType.CREATE_CIV_EDIT) ? super.getButtonBG() : super.getButtonBG_Active();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return "Civilization TAG: " + CreateCiv.nCiv.Tag + (Keyboard.keyboardActionType == Keyboard.KeyboardActionType.CREATE_CIV_EDIT ? Keyboard.getKeyboardVerticalLine() : QefTqRjwAJmEDy.Bul);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusEditor.CreateCiv$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonMain {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.CREATE_CIV_EDIT_NAME, CreateCiv.nCiv.Name);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonMain
        public int getButtonBG() {
            Keyboard keyboard = Game.keyboard;
            return (Keyboard.keyboardMode && Keyboard.keyboardActionType == Keyboard.KeyboardActionType.CREATE_CIV_EDIT_NAME) ? super.getButtonBG_Active() : super.getButtonBG();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonMain
        public int getButtonBG_Active() {
            Keyboard keyboard = Game.keyboard;
            return (Keyboard.keyboardMode && Keyboard.keyboardActionType == Keyboard.KeyboardActionType.CREATE_CIV_EDIT_NAME) ? super.getButtonBG() : super.getButtonBG_Active();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return CreateCiv.this.sCivName + ": " + CreateCiv.nCiv.Name + (Keyboard.keyboardActionType == Keyboard.KeyboardActionType.CREATE_CIV_EDIT_NAME ? Keyboard.getKeyboardVerticalLine() : "");
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusEditor.CreateCiv$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonMain {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.createCivFlag().getVisible()) {
                Game.menuManager.createCivFlag().setVisible(false);
                return;
            }
            Game.menuManager.createCivReligion().setVisible(false);
            Game.menuManager.createCivGroup().setVisible(false);
            Game.menuManager.createCivFlag().setVisible(false);
            Game.menuManager.rebuildCreateCivFlag();
            Game.menuManager.createCivFlag().setPosX(CreateCiv.this.getPosX() + CreateCiv.this.getWidth() + (CFG.PADDING * 4));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusEditor.CreateCiv$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonMain {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getColorPicker().getVisible()) {
                Game.menuManager.getColorPicker().hideColorPicker();
                return;
            }
            Game.menuManager.getColorPicker().setActiveRGBColor(CreateCiv.nCiv.iR / 255.0f, CreateCiv.nCiv.iG / 255.0f, CreateCiv.nCiv.iB / 255.0f);
            Game.menuManager.getColorPicker().setVisible(true, ColorPicker.PickerAction.CREATE_CIV_EDIT);
            Game.menuManager.getColorPicker().setPosX(CreateCiv.this.getPosX() + CreateCiv.this.getWidth() + (CFG.PADDING * 4));
            Game.menuManager.getColorPicker().setPosY(getPosY());
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button
        protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            spriteBatch.setColor(new Color(CreateCiv.nCiv.iR / 255.0f, CreateCiv.nCiv.iG / 255.0f, CreateCiv.nCiv.iB / 255.0f, 1.0f));
            Images.pix.draw(spriteBatch, (((getPosX() + i) + getWidth()) - CFG.CIV_FLAG_WIDTH) - (CFG.PADDING * 2), ((getPosY() + i2) + (getHeight() / 2)) - (CFG.CIV_FLAG_HEIGHT / 2), CFG.CIV_FLAG_WIDTH, CFG.CIV_FLAG_HEIGHT);
            spriteBatch.setColor(Color.WHITE);
            super.drawText(spriteBatch, i, i2, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("CivilizationColor"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusEditor.CreateCiv$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonMain {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.createCivReligion().getVisible()) {
                Game.menuManager.createCivReligion().setVisible(false);
                return;
            }
            Game.menuManager.createCivGroup().setVisible(false);
            Game.menuManager.createCivFlag().setVisible(false);
            Game.menuManager.createCivReligion().setVisible(!Game.menuManager.createCivReligion().getVisible());
            Game.menuManager.createCivReligion().setPosX(CreateCiv.this.getPosX() + CreateCiv.this.getWidth() + (CFG.PADDING * 4));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return super.getTextToDraw() + Game.religionManager.getReligion(CreateCiv.nCiv.ReligionID).Name;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Religion") + ": ");
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusEditor.CreateCiv$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonMain {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.createCivGroup().getVisible()) {
                Game.menuManager.createCivGroup().setVisible(false);
                return;
            }
            Game.menuManager.createCivReligion().setVisible(false);
            Game.menuManager.createCivFlag().setVisible(false);
            Game.menuManager.createCivGroup().setVisible(!Game.menuManager.createCivGroup().getVisible());
            Game.menuManager.createCivGroup().setPosX(CreateCiv.this.getPosX() + CreateCiv.this.getWidth() + (CFG.PADDING * 4));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return super.getTextToDraw() + RulersManager.groups.get(CreateCiv.nCiv.GroupID);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Group") + ": ");
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusEditor.CreateCiv$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonMain {
        AnonymousClass7(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            CreateCiv.this.save();
            CreateCiv.saveFlag = true;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getClickable() {
            return CreateCiv.nCiv.Name.length() > 0 && super.getClickable();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Save"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusEditor.CreateCiv$8, reason: invalid class name */
    class AnonymousClass8 extends ButtonMain {
        AnonymousClass8(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setViewID(CreateCiv.goBackTo);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Back"));
        }
    }

    public CreateCiv() {
        this.sCivName = "";
        ArrayList arrayList = new ArrayList();
        int i = CFG.PADDING * 2;
        int i2 = CFG.BUTTON_HEIGHT;
        int i3 = CFG.GAME_WIDTH / 10;
        int i4 = CFG.GAME_HEIGHT / 10;
        int i5 = CFG.PADDING * 2;
        int i6 = CFG.PADDING * 4;
        this.sCivName = Game.lang.get("Name");
        if (nCiv.Name == null) {
            nCiv.Name = "";
        }
        if (nCiv.Tag == null) {
            nCiv.Tag = "" + CFG.extraRandomTag2();
        }
        nCiv.iR = Game.oR.nextInt(255);
        nCiv.iG = Game.oR.nextInt(255);
        nCiv.iB = Game.oR.nextInt(255);
        int i7 = i5 + i5 + 44;
        int i8 = i * 2;
        arrayList.add(new AnonymousClass1(nCiv.Tag, 1, i6, i, i7, CFG.LEFT_MENU_WIDTH - i8, true));
        int height = i7 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass2(nCiv.Name, 1, i6, i, height, CFG.LEFT_MENU_WIDTH - i8, true));
        int height2 = height + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass3(Game.lang.get("CustomizeFlag"), 1, i6, i, height2, CFG.LEFT_MENU_WIDTH - i8, true));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass4(null, 1, i6, i, height3, CFG.LEFT_MENU_WIDTH - i8, true));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass5(null, 1, i6, i, height4, CFG.LEFT_MENU_WIDTH - i8, true));
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass6(null, 1, i6, i, height5, CFG.LEFT_MENU_WIDTH - i8, true));
        int height6 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass7(null, 1, -1, i, height6, CFG.LEFT_MENU_WIDTH - i8, true));
        arrayList.add(new AnonymousClass8(null, 1, -1, i, height6 + arrayList.get(arrayList.size() - 1).getHeight() + i5, CFG.LEFT_MENU_WIDTH - i8, true));
        arrayList.get(arrayList.size() - 1).getHeight();
        initMenu(new MenuTitle("", 1.0f, i2, true, true), i3, i2 + i4, CFG.LEFT_MENU_WIDTH, ((CFG.GAME_HEIGHT - i2) - i4) - (CFG.PADDING * 2), arrayList, true);
    }

    private final void saveCivsList() {
        boolean z;
        try {
            String string = ((FileManager.IS_MAC && Gdx.files.external("game/Civilizations.txt").exists()) ? Gdx.files.external("game/Civilizations.txt") : Gdx.files.internal("game/Civilizations.txt")).readString();
            if (string.indexOf(nCiv.Tag) < 0) {
                FileManager.getSaveType("game/Civilizations.txt").writeString(string + nCiv.Tag + ";", false);
                return;
            }
            String[] strArrSplit = string.split(";");
            int length = strArrSplit.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z = true;
                    break;
                } else {
                    if (strArrSplit[i].equals(nCiv.Tag)) {
                        z = false;
                        break;
                    }
                    i++;
                }
            }
            if (z) {
                FileManager.getSaveType("game/Civilizations.txt").writeString(string + nCiv.Tag + ";", false);
            } else {
                onBackPressed();
            }
        } catch (GdxRuntimeException unused) {
            FileManager.getSaveType("game/Civilizations.txt").writeString(nCiv.Tag + ";", false);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void actionElement(int i) {
        if (Game.menuManager.getColorPicker().getVisible() && i != 1) {
            Game.menuManager.getColorPicker().hideColorPicker();
        }
        if (Game.menuManager.createCivReligion().getVisible() && i != 2) {
            Game.menuManager.createCivReligion().setVisible(false);
        }
        if (Game.menuManager.createCivGroup().getVisible() && i != 3) {
            Game.menuManager.createCivGroup().setVisible(false);
        }
        super.actionElement(i);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawEditorMenuBG(spriteBatch, getPosX(), getPosY(), getWidth(), CFG.PADDING + getHeight(), i, i2);
        super.draw(spriteBatch, i, i2, z, status);
        Game.flagManager.drawFlag(spriteBatch, ((getPosX() + (getWidth() / 2)) - 34) + i, getPosY() + (CFG.PADDING * 2) + i2);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void drawTitle(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        if (!saveFlag) {
            super.drawTitle(spriteBatch, i, i2, z, status);
        } else {
            Game.flagManager.saveFlagTexture(spriteBatch);
            Game.menuManager.setViewIDWithoutAnimation(goBackTo);
        }
    }

    public final void save() {
        Json json = new Json();
        json.setTypeName(null);
        json.setUsePrototypes(false);
        json.setIgnoreUnknownFields(true);
        json.setOutputType(JsonWriter.OutputType.json);
        boolean zIsDesktop = CFG.isDesktop();
        String str = lOow.OtnpTKhAsWcpBZk;
        if (zIsDesktop) {
            FileManager.getSaveType("mods/GameCivs/game/civilizations/" + nCiv.Tag + str).writeString(json.prettyPrint(nCiv), false);
        } else {
            Gdx.files.local("game/civilizations/" + nCiv.Tag + str).writeString(json.prettyPrint(nCiv), false);
        }
        saveCivsList();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void updateLanguage() {
        super.updateLanguage();
        getTitle().setText(Game.lang.get("CreateNewCivilization"));
    }
}
