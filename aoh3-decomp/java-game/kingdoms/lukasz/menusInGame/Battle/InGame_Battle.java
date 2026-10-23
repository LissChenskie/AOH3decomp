package aoc.kingdoms.lukasz.menusInGame.Battle;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.map.army.ArmyManager;
import aoc.kingdoms.lukasz.map.battles.Battle;
import aoc.kingdoms.lukasz.map.battles.BattleManager;
import aoc.kingdoms.lukasz.map.battles.BattleRegiment;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_Terrain;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonArmyGeneral2;
import aoc.kingdoms.lukasz.menu_element.button.ButtonArmyNoGeneral2;
import aoc.kingdoms.lukasz.menu_element.button.ButtonBattleRegiment;
import aoc.kingdoms.lukasz.menu_element.button.ButtonBattleRegimentDefeated;
import aoc.kingdoms.lukasz.menu_element.button.ButtonBattleRegimentEmpty;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag2;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Flag;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextFlags;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextFlagsCasualties;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIconScaled;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.assets.loaders.Wkvw.PZBvyl;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Battle extends Menu {
    public static final int ANIMATION_TIME = 60;
    public static int HOVER_POSX = 0;
    public static int HOVER_POSY = 0;
    public static boolean enableAnimation = true;
    public static int iDayWidth = 0;
    public static int iProvinceID = 0;
    public static String key = "";
    public static long lTime;
    public static int nTranslateX;
    public static int nTranslateY;
    public int bottomY;
    public int regimentElementID;
    public int topY;
    public static List<Integer> battlePosY = new ArrayList();
    public static List<Integer> offsetDefY = new ArrayList();
    public static List<Integer> offsetAttY = new ArrayList();
    public static int battleID = -1;
    public static int TURN_ID = 0;
    public static String sDay = "";

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonFlag2 {
        AnonymousClass1(int i, int i2, int i3, boolean z) {
            super(i, i2, i3, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag2, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            if (getFlagCivID() < 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.rebelsFlag, 0, CFG.PADDING));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Rebels"), Colors.HOVER_GOLD));
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_Flag(getFlagCivID(), 0, CFG.PADDING));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(getFlagCivID()).getCivName(), Colors.HOVER_GOLD));
            }
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("BattleWidth") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + BattleManager.getBattleWidth(getFlagCivID()), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.battleWidth, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle$10, reason: invalid class name */
    class AnonymousClass10 extends ButtonBattleRegiment {
        AnonymousClass10(int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, boolean z2) {
            super(i, i2, i3, i4, i5, i6, i7, z, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Battle.this.updateAnimationStatus();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle$11, reason: invalid class name */
    class AnonymousClass11 extends ButtonBattleRegimentDefeated {
        AnonymousClass11(int i, int i2, int i3, int i4, int i5, int i6) {
            super(i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Battle.this.updateAnimationStatus();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle$12, reason: invalid class name */
    class AnonymousClass12 extends ButtonBattleRegiment {
        AnonymousClass12(int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, boolean z2) {
            super(i, i2, i3, i4, i5, i6, i7, z, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Battle.this.updateAnimationStatus();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonBattleRegiment
        public BattleRegiment getBattleRegiment(int i, int i2) {
            return Game.battleManager.getBattle(i).defendingArmy.firstLine.get(i2);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle$13, reason: invalid class name */
    class AnonymousClass13 extends ButtonBattleRegimentDefeated {
        AnonymousClass13(int i, int i2, int i3, int i4, int i5, int i6) {
            super(i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Battle.this.updateAnimationStatus();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonBattleRegiment
        public BattleRegiment getBattleRegiment(int i, int i2) {
            return Game.battleManager.getBattle(i).defendingArmy.firstLine.get(i2);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle$14, reason: invalid class name */
    class AnonymousClass14 extends ButtonBattleRegiment {
        AnonymousClass14(int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, boolean z2) {
            super(i, i2, i3, i4, i5, i6, i7, z, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Battle.this.updateAnimationStatus();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonBattleRegiment
        public BattleRegiment getBattleRegiment(int i, int i2) {
            return Game.battleManager.getBattle(i).defendingArmy.secondLine.get(i2);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle$15, reason: invalid class name */
    class AnonymousClass15 extends ButtonBattleRegimentEmpty {
        AnonymousClass15(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Battle.this.updateAnimationStatus();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle$16, reason: invalid class name */
    class AnonymousClass16 extends TextFlags {
        AnonymousClass16(String str, List list, int i, int i2, int i3, int i4) {
            super(str, list, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setWidth(int i) {
            super.setWidth(Math.max(ImageManager.getImage(Images.unitsFrameBattle).getWidth() + ImageManager.getImage(Images.generalFrameBattle).getWidth() + (CFG.PADDING * 2) + ImageManager.getImage(Images.flagOverDefault).getWidth(), i));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle$17, reason: invalid class name */
    class AnonymousClass17 extends ButtonFlag2 {
        AnonymousClass17(int i, int i2, int i3, boolean z) {
            super(i, i2, i3, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag2, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            if (getFlagCivID() < 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.rebelsFlag, 0, CFG.PADDING));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Rebels"), Colors.HOVER_GOLD));
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_Flag(getFlagCivID(), 0, CFG.PADDING));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(getFlagCivID()).getCivName(), Colors.HOVER_GOLD));
            }
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("BattleWidth") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + BattleManager.getBattleWidth(getFlagCivID()), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.battleWidth, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle$18, reason: invalid class name */
    class AnonymousClass18 extends TextIconScaled {
        AnonymousClass18(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("NumberOfUnits") + ": ", CFG.FONT_BOLD_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(getText(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle$19, reason: invalid class name */
    class AnonymousClass19 extends ButtonArmyNoGeneral2 {
        AnonymousClass19(String str, int i, int i2, int i3, boolean z) {
            super(str, i, i2, i3, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Battle.this.battleFull();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle$2, reason: invalid class name */
    class AnonymousClass2 extends TextIconScaled {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("NumberOfUnits") + ": ", CFG.FONT_BOLD_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(getText(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle$20, reason: invalid class name */
    class AnonymousClass20 extends ButtonArmyGeneral2 {
        AnonymousClass20(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, String str2, int i10) {
            super(str, i, i2, i3, i4, i5, i6, i7, i8, i9, str2, i10);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Battle.this.battleFull();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonArmyGeneral, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            buildElementHover2();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle$21, reason: invalid class name */
    class AnonymousClass21 extends TextIconScaled {
        AnonymousClass21(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DiceRoll") + ": ", CFG.FONT_BOLD_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(getText(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(" / " + GameValues.battle.BATTLE_MAX_DICE_ROLL, CFG.FONT_BOLD_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.dice, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle$22, reason: invalid class name */
    class AnonymousClass22 extends TextIconScaled {
        AnonymousClass22(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ArmyMoraleOnTheBattlefield") + ": ", CFG.FONT_BOLD_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(getText(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.morale, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle$23, reason: invalid class name */
    class AnonymousClass23 extends Game.SimpleTask {
        AnonymousClass23(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_ProvinceArmy();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle$24, reason: invalid class name */
    class AnonymousClass24 extends MenuTitleIMG_Terrain {
        AnonymousClass24(String str, String str2, boolean z, boolean z2, int i, int i2, int i3) {
            super(str, str2, z, z2, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public void action() {
            Game.menuManager.setOrderOfMenu_InGameBattle();
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_Terrain, aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG, aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public void draw(SpriteBatch spriteBatch, int i, int i2, int i3, Status status) {
            super.draw(spriteBatch, i, i2, i3 + Images.boxTitleBORDERWIDTH, status);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Battle.lTime;
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public void onHovered() {
            Game.menuManager.setOrderOfMenu_InGameBattle();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle$25, reason: invalid class name */
    class AnonymousClass25 extends Game.SimpleTask {
        AnonymousClass25(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            if (Game.menuManager.getInGame() && Game.menuManager.getVisibleInGame_Battle()) {
                Game.menuManager.rebuildInGame_Battle();
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonArmyNoGeneral2 {
        AnonymousClass3(String str, int i, int i2, int i3, boolean z) {
            super(str, i, i2, i3, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Battle.this.battleFull();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonArmyGeneral2 {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, String str2, int i10) {
            super(str, i, i2, i3, i4, i5, i6, i7, i8, i9, str2, i10);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Battle.this.battleFull();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonArmyGeneral, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            buildElementHover2();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle$5, reason: invalid class name */
    class AnonymousClass5 extends TextIconScaled {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DiceRoll") + ": ", CFG.FONT_BOLD_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(getText(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(" / " + GameValues.battle.BATTLE_MAX_DICE_ROLL, CFG.FONT_BOLD_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.dice, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle$6, reason: invalid class name */
    class AnonymousClass6 extends TextIconScaled {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ArmyMoraleOnTheBattlefield") + ": ", CFG.FONT_BOLD_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(getText(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.morale, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle$7, reason: invalid class name */
    class AnonymousClass7 extends TextFlags {
        AnonymousClass7(String str, List list, int i, int i2, int i3, int i4) {
            super(str, list, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setWidth(int i) {
            super.setWidth(Math.max(ImageManager.getImage(Images.unitsFrameBattle).getWidth() + ImageManager.getImage(Images.generalFrameBattle).getWidth() + (CFG.PADDING * 2) + ImageManager.getImage(Images.flagOverDefault).getWidth(), i));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle$8, reason: invalid class name */
    class AnonymousClass8 extends ButtonBattleRegiment {
        AnonymousClass8(int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, boolean z2) {
            super(i, i2, i3, i4, i5, i6, i7, z, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Battle.this.updateAnimationStatus();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonBattleRegiment
        public BattleRegiment getBattleRegiment(int i, int i2) {
            return Game.battleManager.getBattle(i).attackingArmy.secondLine.get(i2);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle$9, reason: invalid class name */
    class AnonymousClass9 extends ButtonBattleRegimentEmpty {
        AnonymousClass9(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Battle.this.updateAnimationStatus();
        }
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0e38  */
    /* JADX WARN: Code duplicated, block: B:104:0x0e52  */
    /* JADX WARN: Code duplicated, block: B:108:0x0eb4  */
    /* JADX WARN: Code duplicated, block: B:109:0x0eda  */
    /* JADX WARN: Code duplicated, block: B:135:0x0e6a A[SYNTHETIC] */
    public InGame_Battle() {
        int i;
        ArrayList arrayList;
        int size;
        int i2;
        int posY;
        String str;
        int i3;
        InGame_Battle inGame_Battle;
        int i4;
        this.regimentElementID = 0;
        this.topY = 0;
        this.bottomY = 0;
        ArrayList arrayList2 = new ArrayList();
        int i5 = CFG.PADDING;
        ImageManager.getImage(Images.title630).getHeight();
        int width = ImageManager.getImage(Images.title630).getWidth() - Images.boxTitleBORDERWIDTH;
        int height = ImageManager.getImage(Images.battleOver).getHeight();
        int i6 = CFG.GAME_HEIGHT;
        int i7 = CFG.PADDING * 2;
        int i8 = CFG.PADDING * 3;
        battleID = Game.battleManager.getBattleID(key);
        TURN_ID = Game_Calendar.TURN_ID;
        if (battleID < 0) {
            height = height;
            i = width;
            arrayList = arrayList2;
            if (Game.activeArmySize > 0) {
                Game.addSimpleTask(new AnonymousClass23("rebuildInGame_ProvinceArmy"));
            }
            size = arrayList.size();
            posY = 0;
            for (i2 = 0; i2 < size; i2++) {
                if (posY < arrayList.get(i2).getPosY() + arrayList.get(i2).getHeight() + CFG.PADDING) {
                    posY = arrayList.get(i2).getPosY() + arrayList.get(i2).getHeight() + CFG.PADDING;
                }
            }
            int iMax = Math.max(height, posY);
            int i9 = CFG.GAME_HEIGHT - iMax;
            InGame_BattleArmy.mPosY += i9;
            InGame_BattleArmyDefenders.mPosY += i9;
            HOVER_POSX = 0 + i + Images.boxTitleBORDERWIDTH + CFG.PADDING;
            HOVER_POSY = i9;
            int i10 = i;
            arrayList.add(new Empty(0, 0, i10, iMax));
            String str2 = Game.lang.get("BattleOf", Game.getProvince(iProvinceID).getProvinceName());
            if (Battle.getDefendersProvinceBonuses(iProvinceID) != 0) {
                str = Game.lang.get("Defense") + ": +" + Battle.getDefendersProvinceBonuses(iProvinceID);
            } else {
                str = Game.terrainManager.terrains.get(Game.getProvince(iProvinceID).getTerrainID()).Name;
            }
            initMenu(new AnonymousClass24(str2, str, false, false, Images.title630, Game.getProvince(iProvinceID).getTerrainID(), iProvinceID), 0, i9, i10, iMax, arrayList, false, true);
        }
        sDay = Game_Calendar.getNumOfDates_ByTurnID((Game_Calendar.TURN_ID - Game.battleManager.getBattle(battleID).roundID) - 1) + (Game.battleManager.getBattle(battleID).roundID == 0 ? PZBvyl.XOKKeYSKmRheXRa + Game.lang.get("ArmyDeployment") : "");
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), sDay);
        iDayWidth = (int) Renderer.glyphLayout.width;
        if (offsetDefY.size() == 0) {
            for (int i11 = 0; i11 < GameValues.battle.BATTLE_MAX_BATTLE_WIDTH; i11++) {
                offsetDefY.add(0);
                offsetAttY.add(0);
            }
        }
        battlePosY.clear();
        for (int i12 = 0; i12 < GameValues.battle.BATTLE_MAX_BATTLE_WIDTH; i12++) {
            if (Game.battleManager.getBattle(battleID).attackingArmy.firstLine.get(i12) == null || Game.battleManager.getBattle(battleID).defendingArmy.firstLine.get(i12) == null) {
                battlePosY.add(Integer.valueOf((int) (getMiddleHeight() * 0.5f)));
            } else if (Game.battleManager.getBattle(battleID).attackingArmy.firstLine.get(i12).aR.num > Game.battleManager.getBattle(battleID).defendingArmy.firstLine.get(i12).aR.num) {
                battlePosY.add(Integer.valueOf((int) ((getMiddleHeight() / 2.0f) + ((getMiddleHeight() / 2.0f) * (1.0f - (Game.battleManager.getBattle(battleID).defendingArmy.firstLine.get(i12).aR.num / Game.battleManager.getBattle(battleID).attackingArmy.firstLine.get(i12).aR.num))))));
            } else {
                battlePosY.add(Integer.valueOf((int) ((getMiddleHeight() / 2) + ((getMiddleHeight() / 2.0f) * (-(1.0f - (Game.battleManager.getBattle(battleID).attackingArmy.firstLine.get(i12).aR.num / Game.battleManager.getBattle(battleID).defendingArmy.firstLine.get(i12).aR.num)))))));
            }
        }
        arrayList2.add(new AnonymousClass1(Game.battleManager.getBattle(battleID).attackingArmy.iCivID, i8, i7, true));
        arrayList2.add(new AnonymousClass2(CFG.getNumberWithSpaces("" + Game.battleManager.getBattle(battleID).attackingArmy.numOfUnits), Game_Calendar.IMG_MANPOWER, i8, i7 + CFG.PADDING + ImageManager.getImage(Images.flagOverDefault).getHeight(), ImageManager.getImage(Images.flagOverDefault).getWidth(), ((ImageManager.getImage(Images.generalFrameBattle).getHeight() + ButtonArmyGeneral2.getStatsHeight()) - ImageManager.getImage(Images.flagOverDefault).getHeight()) - CFG.PADDING));
        int width2 = i8 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
        if (Game.battleManager.getBattle(battleID).attackingArmy.armyGeneral == null) {
            arrayList2.add(new AnonymousClass3(Game.lang.get("NoGeneral"), Game.battleManager.getBattle(battleID).attackingArmy.iCivID, width2, i7, false));
            i = width;
            arrayList = arrayList2;
        } else {
            i = width;
            arrayList = arrayList2;
            arrayList.add(new AnonymousClass4(Game.battleManager.getBattle(battleID).attackingArmy.armyGeneral.n, Game.battleManager.getBattle(battleID).attackingArmy.iCivID, Game.battleManager.getBattle(battleID).attackingArmy.armyGeneral.getAttack(), Game.battleManager.getBattle(battleID).attackingArmy.armyGeneral.getDefense(), width2, i7, Game.battleManager.getBattle(battleID).attackingArmy.armyGeneral.g, Game.battleManager.getBattle(battleID).attackingArmy.armyGeneral.d, Game.battleManager.getBattle(battleID).attackingArmy.armyGeneral.m, Game.battleManager.getBattle(battleID).attackingArmy.armyGeneral.y, Game.battleManager.getBattle(battleID).attackingArmy.armyGeneral.sI, Game.battleManager.getBattle(battleID).attackingArmy.armyGeneral.getCombatExperience()));
        }
        int width3 = width2 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
        String str3 = "";
        arrayList.add(new AnonymousClass5(str3 + Game.battleManager.getBattle(battleID).attackingArmy.diceRollGeneral, Images.dice, width3, i7, ImageManager.getImage(Images.unitsFrameBattle).getWidth(), ((ImageManager.getImage(Images.generalFrameBattle).getHeight() + ButtonArmyGeneral2.getStatsHeight()) - CFG.PADDING) / 2));
        String str4 = "%";
        arrayList.add(new AnonymousClass6(CFG.getPrecision2(Game.battleManager.getBattle(battleID).attackingArmy.fMorale * 100.0f, 1) + "%", Images.morale, width3, i7 + CFG.PADDING + (((ImageManager.getImage(Images.generalFrameBattle).getHeight() + ButtonArmyGeneral2.getStatsHeight()) - CFG.PADDING) / 2), ImageManager.getImage(Images.unitsFrameBattle).getWidth(), ((ImageManager.getImage(Images.generalFrameBattle).getHeight() + ButtonArmyGeneral2.getStatsHeight()) - CFG.PADDING) / 2));
        int posY2 = arrayList.get(arrayList.size() - 1).getPosY() + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        ArrayList arrayList3 = new ArrayList();
        int size2 = Game.battleManager.getBattle(battleID).attackingArmy.lCivs.size();
        for (int i13 = 0; i13 < size2; i13++) {
            arrayList3.add(Game.battleManager.getBattle(battleID).attackingArmy.lCivs.get(i13));
        }
        arrayList.add(new AnonymousClass7(Game.lang.get("Attackers") + ":", arrayList3, i8, posY2, 50, CFG.TEXT_HEIGHT + (CFG.PADDING * 2)));
        int width4 = arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
        int i14 = i - (i8 * 2);
        arrayList.add(new TextFlagsCasualties(CFG.getNumberWithSpaces(str3 + Game.battleManager.getBattle(battleID).attackingArmy.numOfUnitsOnBattlefield), CFG.getNumberWithSpaces(str3 + Game.battleManager.getBattle(battleID).attackingArmy.inReserve), CFG.getNumberWithSpaces(str3 + (Game.battleManager.getBattle(battleID).attackingArmy.iCasualties + Game.battleManager.getBattle(battleID).attackingArmy.iRetreated)), i8 + width4, posY2, i14 - width4, CFG.TEXT_HEIGHT + (CFG.PADDING * 2), false));
        InGame_Battle inGame_Battle2 = this;
        inGame_Battle2.topY = arrayList.get(arrayList.size() - 1).getHeight() + posY2 + CFG.PADDING;
        int height2 = posY2 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 3);
        int i15 = i / 2;
        int width5 = (i15 - (((GameValues.battle.BATTLE_MAX_BATTLE_WIDTH * ImageManager.getImage(Images.battleArmy0).getWidth()) + ((GameValues.battle.BATTLE_MAX_BATTLE_WIDTH + 1) * 1)) / 2)) + 1;
        int i16 = 0;
        while (i16 < Game.battleManager.getBattle(battleID).attackingArmy.secondLine.size()) {
            if (Game.battleManager.getBattle(battleID).attackingArmy.secondLine.get(i16) != null) {
                inGame_Battle = inGame_Battle2;
                arrayList.add(new AnonymousClass8(Game.battleManager.getBattle(battleID).attackingArmy.secondLine.get(i16).c, getImageRegimentID(ArmyManager.lUnitsTypes.get(Game.battleManager.getBattle(battleID).attackingArmy.secondLine.get(i16).aR.uID).Line), width5, height2, i16, 0, ArmyManager.lArmy.get(Game.battleManager.getBattle(battleID).attackingArmy.secondLine.get(i16).aR.uID).get(Game.battleManager.getBattle(battleID).attackingArmy.secondLine.get(i16).aR.aID).AttackRange, true, false));
                i4 = width5;
            } else {
                inGame_Battle = inGame_Battle2;
                i4 = width5;
                arrayList.add(inGame_Battle.new AnonymousClass9(Images.battleArmy2, i4, height2));
            }
            width5 = i4 + ImageManager.getImage(Images.battleArmy0).getWidth() + 1;
            i16++;
            inGame_Battle2 = inGame_Battle;
            str4 = str4;
        }
        String str5 = str4;
        int width6 = (i15 - (((GameValues.battle.BATTLE_MAX_BATTLE_WIDTH * ImageManager.getImage(Images.battleArmy0).getWidth()) + ((GameValues.battle.BATTLE_MAX_BATTLE_WIDTH + 1) * 1)) / 2)) + 1;
        int height3 = height2 + ImageManager.getImage(Images.battleArmy0).getHeight() + 2;
        inGame_Battle2.regimentElementID = arrayList.size();
        int width7 = width6;
        int i17 = 0;
        while (i17 < Game.battleManager.getBattle(battleID).attackingArmy.firstLine.size()) {
            if (Game.battleManager.getBattle(battleID).attackingArmy.firstLine.get(i17) == null) {
                i3 = i17;
                arrayList.add(new ButtonBattleRegimentEmpty(Images.battleArmy0, width7, height3));
            } else if (Game.battleManager.getBattle(battleID).attackingArmy.firstLine.get(i17).aR.num > 0) {
                i3 = i17;
                arrayList.add(new AnonymousClass10(Game.battleManager.getBattle(battleID).attackingArmy.firstLine.get(i17).c, getImageRegimentID(ArmyManager.lUnitsTypes.get(Game.battleManager.getBattle(battleID).attackingArmy.firstLine.get(i17).aR.uID).Line), width7, height3, i17, enableAnimation ? offsetAttY.get(i17).intValue() : 0, ArmyManager.lArmy.get(Game.battleManager.getBattle(battleID).attackingArmy.firstLine.get(i17).aR.uID).get(Game.battleManager.getBattle(battleID).attackingArmy.firstLine.get(i17).aR.aID).AttackRange, false, false));
            } else {
                i3 = i17;
                arrayList.add(new AnonymousClass11(Game.battleManager.getBattle(battleID).attackingArmy.firstLine.get(i3).c, getImageRegimentID(ArmyManager.lUnitsTypes.get(Game.battleManager.getBattle(battleID).attackingArmy.firstLine.get(i3).aR.uID).Line), width7, height3, i3, enableAnimation ? offsetAttY.get(i3).intValue() : 0));
            }
            width7 += ImageManager.getImage(Images.battleArmy0).getWidth() + 1;
            i17 = i3 + 1;
            str3 = str3;
        }
        String str6 = str3;
        int width8 = (i15 - (((GameValues.battle.BATTLE_MAX_BATTLE_WIDTH * ImageManager.getImage(Images.battleArmy0).getWidth()) + ((GameValues.battle.BATTLE_MAX_BATTLE_WIDTH + 1) * 1)) / 2)) + 1;
        int middleHeight = height3 + getMiddleHeight() + ImageManager.getImage(Images.battleArmy0).getHeight() + 1;
        int width9 = width8;
        for (int i18 = 0; i18 < Game.battleManager.getBattle(battleID).defendingArmy.firstLine.size(); i18++) {
            if (Game.battleManager.getBattle(battleID).defendingArmy.firstLine.get(i18) == null) {
                arrayList.add(new ButtonBattleRegimentEmpty(Images.battleArmy0, width9, middleHeight));
            } else if (Game.battleManager.getBattle(battleID).defendingArmy.firstLine.get(i18).aR.num > 0) {
                arrayList.add(new AnonymousClass12(Game.battleManager.getBattle(battleID).defendingArmy.firstLine.get(i18).c, getImageRegimentID(ArmyManager.lUnitsTypes.get(Game.battleManager.getBattle(battleID).defendingArmy.firstLine.get(i18).aR.uID).Line), width9, middleHeight, i18, enableAnimation ? offsetDefY.get(i18).intValue() : 0, ArmyManager.lArmy.get(Game.battleManager.getBattle(battleID).defendingArmy.firstLine.get(i18).aR.uID).get(Game.battleManager.getBattle(battleID).defendingArmy.firstLine.get(i18).aR.aID).AttackRange, false, true));
            } else {
                arrayList.add(new AnonymousClass13(Game.battleManager.getBattle(battleID).defendingArmy.firstLine.get(i18).c, getImageRegimentID(ArmyManager.lUnitsTypes.get(Game.battleManager.getBattle(battleID).defendingArmy.firstLine.get(i18).aR.uID).Line), width9, middleHeight, i18, enableAnimation ? offsetDefY.get(i18).intValue() : 0));
            }
            width9 += ImageManager.getImage(Images.battleArmy0).getWidth() + 1;
        }
        int width10 = (i15 - (((GameValues.battle.BATTLE_MAX_BATTLE_WIDTH * ImageManager.getImage(Images.battleArmy0).getWidth()) + ((GameValues.battle.BATTLE_MAX_BATTLE_WIDTH + 1) * 1)) / 2)) + 1;
        int height4 = middleHeight + ImageManager.getImage(Images.battleArmy0).getHeight() + 2;
        int width11 = width10;
        for (int i19 = 0; i19 < Game.battleManager.getBattle(battleID).defendingArmy.secondLine.size(); i19++) {
            if (Game.battleManager.getBattle(battleID).defendingArmy.secondLine.get(i19) != null) {
                arrayList.add(new AnonymousClass14(Game.battleManager.getBattle(battleID).defendingArmy.secondLine.get(i19).c, getImageRegimentID(ArmyManager.lUnitsTypes.get(Game.battleManager.getBattle(battleID).defendingArmy.secondLine.get(i19).aR.uID).Line), width11, height4, i19, 0, ArmyManager.lArmy.get(Game.battleManager.getBattle(battleID).defendingArmy.secondLine.get(i19).aR.uID).get(Game.battleManager.getBattle(battleID).defendingArmy.secondLine.get(i19).aR.aID).AttackRange, true, true));
            } else {
                arrayList.add(new AnonymousClass15(Images.battleArmy2, width11, height4));
            }
            width11 += ImageManager.getImage(Images.battleArmy0).getWidth() + 1;
        }
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 3);
        ArrayList arrayList4 = new ArrayList();
        int size3 = Game.battleManager.getBattle(battleID).defendingArmy.lCivs.size();
        for (int i20 = 0; i20 < size3; i20++) {
            arrayList4.add(Game.battleManager.getBattle(battleID).defendingArmy.lCivs.get(i20));
        }
        arrayList.add(new AnonymousClass16(Game.lang.get("Defenders") + ":", arrayList4, i8, height5, 50, CFG.TEXT_HEIGHT + (CFG.PADDING * 2)));
        int width12 = arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
        arrayList.add(new TextFlagsCasualties(CFG.getNumberWithSpaces(str6 + Game.battleManager.getBattle(battleID).defendingArmy.numOfUnitsOnBattlefield), CFG.getNumberWithSpaces(str6 + Game.battleManager.getBattle(battleID).defendingArmy.inReserve), CFG.getNumberWithSpaces(str6 + (Game.battleManager.getBattle(battleID).defendingArmy.iCasualties + Game.battleManager.getBattle(battleID).defendingArmy.iRetreated)), i8 + width12, height5, i14 - width12, CFG.TEXT_HEIGHT + (CFG.PADDING * 2), true));
        this.bottomY = height5 - CFG.PADDING;
        int height6 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass17(Game.battleManager.getBattle(battleID).defendingArmy.iCivID, i8, height6, true));
        arrayList.add(new AnonymousClass18(CFG.getNumberWithSpaces(str6 + Game.battleManager.getBattle(battleID).defendingArmy.numOfUnits), Game_Calendar.IMG_MANPOWER, i8, height6 + CFG.PADDING + ImageManager.getImage(Images.flagOverDefault).getHeight(), ImageManager.getImage(Images.flagOverDefault).getWidth(), ((ImageManager.getImage(Images.generalFrameBattle).getHeight() + ButtonArmyGeneral2.getStatsHeight()) - ImageManager.getImage(Images.flagOverDefault).getHeight()) - CFG.PADDING));
        int width13 = i8 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
        if (Game.battleManager.getBattle(battleID).defendingArmy.armyGeneral == null) {
            arrayList.add(new AnonymousClass19(Game.lang.get("NoGeneral"), Game.battleManager.getBattle(battleID).defendingArmy.iCivID, width13, height6, false));
        } else {
            arrayList.add(new AnonymousClass20(Game.battleManager.getBattle(battleID).defendingArmy.armyGeneral.n, Game.battleManager.getBattle(battleID).defendingArmy.iCivID, Game.battleManager.getBattle(battleID).defendingArmy.armyGeneral.getAttack(), Game.battleManager.getBattle(battleID).defendingArmy.armyGeneral.getDefense(), width13, height6, Game.battleManager.getBattle(battleID).defendingArmy.armyGeneral.g, Game.battleManager.getBattle(battleID).defendingArmy.armyGeneral.d, Game.battleManager.getBattle(battleID).defendingArmy.armyGeneral.m, Game.battleManager.getBattle(battleID).defendingArmy.armyGeneral.y, Game.battleManager.getBattle(battleID).defendingArmy.armyGeneral.sI, Game.battleManager.getBattle(battleID).defendingArmy.armyGeneral.getCombatExperience()));
        }
        int width14 = width13 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
        arrayList.add(new AnonymousClass21(str6 + Game.battleManager.getBattle(battleID).defendingArmy.diceRollGeneral, Images.dice, width14, height6, ImageManager.getImage(Images.unitsFrameBattle).getWidth(), ((ImageManager.getImage(Images.generalFrameBattle).getHeight() + ButtonArmyGeneral2.getStatsHeight()) - CFG.PADDING) / 2));
        arrayList.add(new AnonymousClass22(CFG.getPrecision2(Game.battleManager.getBattle(battleID).defendingArmy.fMorale * 100.0f, 1) + str5, Images.morale, width14, height6 + CFG.PADDING + (((ImageManager.getImage(Images.generalFrameBattle).getHeight() + ButtonArmyGeneral2.getStatsHeight()) - CFG.PADDING) / 2), ImageManager.getImage(Images.unitsFrameBattle).getWidth(), ((ImageManager.getImage(Images.generalFrameBattle).getHeight() + ButtonArmyGeneral2.getStatsHeight()) - CFG.PADDING) / 2));
        int width15 = width14 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
        InGame_BattleArmy.mPosX = width15;
        InGame_BattleArmy.mPosY = height6;
        int i21 = (i - width15) - i8;
        InGame_BattleArmy.mWidth = i21;
        InGame_BattleArmyDefenders.mPosX = width15;
        InGame_BattleArmyDefenders.mPosY = CFG.PADDING;
        InGame_BattleArmyDefenders.mWidth = i21;
        size = arrayList.size();
        posY = 0;
        while (i2 < size) {
            if (posY < arrayList.get(i2).getPosY() + arrayList.get(i2).getHeight() + CFG.PADDING) {
                posY = arrayList.get(i2).getPosY() + arrayList.get(i2).getHeight() + CFG.PADDING;
            }
        }
        int iMax2 = Math.max(height, posY);
        int i22 = CFG.GAME_HEIGHT - iMax2;
        InGame_BattleArmy.mPosY += i22;
        InGame_BattleArmyDefenders.mPosY += i22;
        HOVER_POSX = 0 + i + Images.boxTitleBORDERWIDTH + CFG.PADDING;
        HOVER_POSY = i22;
        int i110 = i;
        arrayList.add(new Empty(0, 0, i110, iMax2));
        String str7 = Game.lang.get("BattleOf", Game.getProvince(iProvinceID).getProvinceName());
        if (Battle.getDefendersProvinceBonuses(iProvinceID) != 0) {
            str = Game.lang.get("Defense") + ": +" + Battle.getDefendersProvinceBonuses(iProvinceID);
        } else {
            str = Game.terrainManager.terrains.get(Game.getProvince(iProvinceID).getTerrainID()).Name;
        }
        initMenu(new AnonymousClass24(str7, str, false, false, Images.title630, Game.getProvince(iProvinceID).getTerrainID(), iProvinceID), 0, i22, i110, iMax2, arrayList, false, true);
    }

    public static int getImageRegimentID(int i) {
        if (i != 1) {
            return i != 2 ? Images.battleArmy0 : Images.battleArmy2;
        }
        return Images.battleArmy1;
    }

    public static int getMiddleHeight() {
        return ImageManager.getImage(Images.battleArmy0).getHeight();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void actionCloseMenu() {
        super.actionCloseMenu();
        Game.menuManager.setVisibleInGame_Battle(false);
    }

    public void battleFull() {
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3;
        int i4;
        if (lTime + 60 >= CFG.currentTimeMillis) {
            int i5 = (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - lTime) / 60.0f)));
            int i6 = i2 + ((int) ((CFG.BUTTON_HEIGHT / 2.0f) - ((CFG.BUTTON_HEIGHT / 2) * ((CFG.currentTimeMillis - lTime) / 60.0f))));
            if (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).BATTLE_SOUND_2) {
                Game.soundsManager.playSound(SoundsManager.SOUND_BATTLE2, Game.soundsManager.getSoundsVolumeMaster());
            } else {
                Game.soundsManager.playSound(SoundsManager.SOUND_BATTLE, Game.soundsManager.getSoundsVolumeMaster());
            }
            i3 = i5;
            i4 = i6;
        } else {
            i3 = i;
            i4 = i2;
        }
        nTranslateX = i3;
        nTranslateY = i4;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - getTitle().getHeight()) + i4, getWidth() + Images.boxTitleBORDERWIDTH, getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i4, getWidth() + Images.boxTitleBORDERWIDTH, getHeight() + CFG.PADDING, false, Images.insideTop630, Images.insideBot630);
        ImageManager.getImage(Game.terrainManager.getBattleTerrain(Game.getProvince(iProvinceID).getTerrainID())).draw(spriteBatch, getPosX() + i3, ((getPosY() + (getHeight() / 2)) - (ImageManager.getImage(Images.battleOver).getHeight() / 2)) + i4);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.35f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + i3, getPosY() + i4, getWidth(), this.topY, false, true);
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + i3, getPosY() + this.bottomY + i4, getWidth(), getHeight() - this.bottomY);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.5f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + i3, ((getPosY() + this.topY) - (CFG.PADDING * 2)) + i4, getWidth(), CFG.PADDING * 2, false, true);
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + i3, getPosY() + this.bottomY + i4, getWidth(), CFG.PADDING * 2);
        spriteBatch.setColor(Color.WHITE);
        Renderer.drawLine(spriteBatch, getPosX() + i3, getPosY() + this.bottomY + i4, getWidth());
        Renderer.drawLine(spriteBatch, getPosX() + i3, ((getPosY() + this.topY) - 2) + i4, getWidth());
        if (enableAnimation) {
            drawAnimation();
        }
        super.draw(spriteBatch, i3, i4, z, status);
        if (TURN_ID != Game_Calendar.TURN_ID) {
            TURN_ID = Game_Calendar.TURN_ID;
            Game.addSimpleTask(new AnonymousClass25("rebuildBattleView"));
        }
    }

    public final void drawAnimation() {
        for (int i = 0; i < GameValues.battle.BATTLE_MAX_BATTLE_WIDTH; i++) {
            List<Integer> list = offsetAttY;
            list.set(i, Integer.valueOf(list.get(i).intValue() + (offsetAttY.get(i).intValue() > battlePosY.get(i).intValue() ? -1 : 1)));
            List<Integer> list2 = offsetDefY;
            list2.set(i, Integer.valueOf(list2.get(i).intValue() + (Math.abs(offsetDefY.get(i).intValue()) > getMiddleHeight() - battlePosY.get(i).intValue() ? 1 : -1)));
            if (getMenuElement(this.regimentElementID + i).getCurrent() != battlePosY.get(i).intValue()) {
                getMenuElement(this.regimentElementID + i).setCurrent(offsetAttY.get(i).intValue());
            }
            if (Math.abs(getMenuElement(this.regimentElementID + GameValues.battle.BATTLE_MAX_BATTLE_WIDTH + i).getCurrent()) != getMiddleHeight() - battlePosY.get(i).intValue()) {
                getMenuElement(this.regimentElementID + GameValues.battle.BATTLE_MAX_BATTLE_WIDTH + i).setCurrent(offsetDefY.get(i).intValue());
            }
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void onHovered() {
        super.onHovered();
        Game.menuManager.setOrderOfMenu_InGameBattle();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        if (!getVisible()) {
            lTime = CFG.currentTimeMillis;
        }
        super.setVisible(z);
    }

    public void updateAnimationStatus() {
        boolean z = !enableAnimation;
        enableAnimation = z;
        if (z) {
            for (int i = 0; i < GameValues.battle.BATTLE_MAX_BATTLE_WIDTH; i++) {
                offsetDefY.set(i, 0);
                offsetAttY.set(i, 0);
            }
            return;
        }
        for (int i2 = 0; i2 < GameValues.battle.BATTLE_MAX_BATTLE_WIDTH; i2++) {
            getMenuElement(this.regimentElementID + i2).setCurrent(0);
            getMenuElement(this.regimentElementID + GameValues.battle.BATTLE_MAX_BATTLE_WIDTH + i2).setCurrent(0);
        }
    }
}
