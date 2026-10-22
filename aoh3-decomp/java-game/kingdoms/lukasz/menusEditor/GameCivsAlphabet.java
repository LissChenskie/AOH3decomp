package aoc.kingdoms.lukasz.menusEditor;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Keyboard;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMainReverse;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class GameCivsAlphabet extends Menu {
    private List<Character> lCharacters = new ArrayList();
    private String nSearch = "";

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusEditor.GameCivsAlphabet$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonMain {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("AddCivilization"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusEditor.GameCivsAlphabet$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonMainReverse {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return super.getTextToDraw() + Keyboard.getKeyboardVerticalLine();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            if (GameCivs.sSearch.length() > 0) {
                setText(Game.lang.get("Search") + ": " + GameCivs.sSearch);
            } else {
                setText(Game.lang.get("Search"));
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusEditor.GameCivsAlphabet$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonMain {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            if (GameCivs.sSearch.length() > 0) {
                setText(Game.lang.get("Search") + ": " + GameCivs.sSearch);
            } else {
                setText(Game.lang.get("Search"));
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusEditor.GameCivsAlphabet$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonMainReverse {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("AllCivilizations"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusEditor.GameCivsAlphabet$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonMain {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("AllCivilizations"));
        }
    }

    public GameCivsAlphabet() {
        int width;
        boolean z;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new AnonymousClass1("", 1, -1, 0, 0, CFG.BUTTON_WIDTH * 2, true));
        int width2 = arrayList.get(arrayList.size() - 1).getWidth() + 0;
        Keyboard keyboard = Game.keyboard;
        if (Keyboard.keyboardMode) {
            arrayList.add(new AnonymousClass2("", 1, -1, width2, 0, CFG.BUTTON_WIDTH * 2, true));
        } else {
            arrayList.add(new AnonymousClass3("", 1, -1, width2, 0, CFG.BUTTON_WIDTH * 2, true));
        }
        int width3 = width2 + arrayList.get(arrayList.size() - 1).getWidth();
        Keyboard keyboard2 = Game.keyboard;
        if (Keyboard.keyboardMode || GameCivs.chosen_AlphabetCharachter.length() != 0) {
            arrayList.add(new AnonymousClass5("", 1, -1, width3, 0, CFG.BUTTON_WIDTH * 2, true));
        } else {
            arrayList.add(new AnonymousClass4("", 0, -1, width3, 0, CFG.BUTTON_WIDTH * 2, true));
        }
        int width4 = width3 + arrayList.get(arrayList.size() - 1).getWidth();
        String[] strArrSplit = FileManager.loadFile("game/Civilizations.txt").readString().split(";");
        int length = strArrSplit.length;
        for (int i = 0; i < length; i++) {
            int i2 = 0;
            while (true) {
                if (i2 >= this.lCharacters.size()) {
                    z = true;
                    break;
                } else {
                    if (this.lCharacters.get(i2).charValue() == Game.lang.getCiv(strArrSplit[i]).charAt(0)) {
                        z = false;
                        break;
                    }
                    i2++;
                }
            }
            if (z) {
                this.lCharacters.add(Character.valueOf(Game.lang.getCiv(strArrSplit[i]).charAt(0)));
            }
        }
        int i3 = 0;
        while (i3 < this.lCharacters.size() - 1) {
            int i4 = i3 + 1;
            for (int i5 = i4; i5 < this.lCharacters.size(); i5++) {
                if (this.lCharacters.get(i3).charValue() > this.lCharacters.get(i5).charValue()) {
                    char cCharValue = this.lCharacters.get(i3).charValue();
                    List<Character> list = this.lCharacters;
                    list.set(i3, list.get(i5));
                    this.lCharacters.set(i5, Character.valueOf(cCharValue));
                }
            }
            i3 = i4;
        }
        for (int i6 = 0; i6 < this.lCharacters.size(); i6++) {
            if (GameCivs.chosen_AlphabetCharachter.length() <= 0 || this.lCharacters.get(i6).charValue() != GameCivs.chosen_AlphabetCharachter.charAt(0)) {
                arrayList.add(new ButtonMain("[" + this.lCharacters.get(i6) + "]", 1, -1, width4, 0, CFG.BUTTON_HEIGHT, true));
                width = arrayList.get(arrayList.size() - 1).getWidth();
            } else {
                arrayList.add(new ButtonMainReverse("[" + this.lCharacters.get(i6) + "]", 0, -1, width4, 0, CFG.BUTTON_HEIGHT, true));
                width = arrayList.get(arrayList.size() - 1).getWidth();
            }
            width4 += width;
        }
        initMenu(null, 0, 0, CFG.GAME_WIDTH, (CFG.PADDING * 2) + CFG.BUTTON_HEIGHT, arrayList, true);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void actionElement(int i) {
        if (i == 0) {
            GameCivsEdit.nCiv = new Game.LoadCivilizationData();
            GameCivsEdit.nCiv.Tag = "";
            GameCivsEdit.nCiv.iR = Game.oR.nextInt(255);
            GameCivsEdit.nCiv.iG = Game.oR.nextInt(255);
            GameCivsEdit.nCiv.iB = Game.oR.nextInt(255);
            GameCivsEdit.nCiv.Wiki = "";
            GameCivsEdit.goBackTo = View.EDITOR_GAMECIVS;
            Game.menuManager.setViewID(View.EDITOR_GAMECIVS_EDIT);
            return;
        }
        if (i == 1) {
            Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.SEARCH_GAMECIVS, GameCivs.sSearch);
            Game.menuManager.rebuildEditorGameCivs();
            return;
        }
        if (i != 2) {
            if (GameCivs.chosen_AlphabetCharachter.length() == 0 || GameCivs.sSearch.length() > 0 || (GameCivs.chosen_AlphabetCharachter.length() > 0 && GameCivs.chosen_AlphabetCharachter.charAt(0) != this.lCharacters.get(i - 3).charValue())) {
                GameCivs.chosen_AlphabetCharachter = "" + this.lCharacters.get(i - 3);
                GameCivs.sSearch = "";
                Game.menuManager.setViewID(View.EDITOR_GAMECIVS);
                return;
            }
            return;
        }
        if (GameCivs.chosen_AlphabetCharachter.length() <= 0 && GameCivs.sSearch.length() <= 0) {
            Keyboard keyboard = Game.keyboard;
            if (!Keyboard.keyboardMode) {
                return;
            }
        }
        GameCivs.chosen_AlphabetCharachter = "";
        GameCivs.sSearch = "";
        Game.menuManager.setViewID(View.EDITOR_GAMECIVS);
    }
}
