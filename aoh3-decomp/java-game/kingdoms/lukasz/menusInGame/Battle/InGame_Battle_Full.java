package aoc.kingdoms.lukasz.menusInGame.Battle;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.army.ArmyManager;
import aoc.kingdoms.lukasz.map.battles.BattleRegiment;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleTechTree;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonBattleRegiment;
import aoc.kingdoms.lukasz.menu_element.button.ButtonBattleRegimentDefeated;
import aoc.kingdoms.lukasz.menu_element.button.ButtonBattleRegimentEmpty;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Battle_Full extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int TURN_ID = 0;
    public static int battleID = -1;
    public static int iDayWidth = 0;
    public static int iProvinceID = 0;
    public static String key = "";
    public static long lTime = 0;
    public static String sDay = "";

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle_Full$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonBattleRegiment {
        AnonymousClass1(int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, boolean z2) {
            super(i, i2, i3, i4, i5, i6, i7, z, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonBattleRegiment
        public BattleRegiment getBattleRegiment(int i, int i2) {
            return Game.battleManager.getBattle(i).attackingArmy.secondLine.get(i2);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle_Full$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonBattleRegimentEmpty {
        AnonymousClass2(int i, int i2, int i3) {
            super(i, i2, i3);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle_Full$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonBattleRegiment {
        AnonymousClass3(int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, boolean z2) {
            super(i, i2, i3, i4, i5, i6, i7, z, z2);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle_Full$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonBattleRegimentDefeated {
        AnonymousClass4(int i, int i2, int i3, int i4, int i5, int i6) {
            super(i, i2, i3, i4, i5, i6);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle_Full$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonBattleRegiment {
        AnonymousClass5(int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, boolean z2) {
            super(i, i2, i3, i4, i5, i6, i7, z, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonBattleRegiment
        public BattleRegiment getBattleRegiment(int i, int i2) {
            return Game.battleManager.getBattle(i).defendingArmy.firstLine.get(i2);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle_Full$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonBattleRegimentDefeated {
        AnonymousClass6(int i, int i2, int i3, int i4, int i5, int i6) {
            super(i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonBattleRegiment
        public BattleRegiment getBattleRegiment(int i, int i2) {
            return Game.battleManager.getBattle(i).defendingArmy.firstLine.get(i2);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle_Full$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonBattleRegiment {
        AnonymousClass7(int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, boolean z2) {
            super(i, i2, i3, i4, i5, i6, i7, z, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonBattleRegiment
        public BattleRegiment getBattleRegiment(int i, int i2) {
            return Game.battleManager.getBattle(i).defendingArmy.secondLine.get(i2);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle_Full$8, reason: invalid class name */
    class AnonymousClass8 extends ButtonBattleRegimentEmpty {
        AnonymousClass8(int i, int i2, int i3) {
            super(i, i2, i3);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle_Full$9, reason: invalid class name */
    class AnonymousClass9 extends MenuTitleTechTree {
        AnonymousClass9(String str, int i, boolean z, boolean z2) {
            super(str, i, z, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Battle_Full.lTime;
        }
    }

    public InGame_Battle_Full() {
        int i;
        int i2;
        int i3;
        int i4;
        ArrayList arrayList = new ArrayList();
        int i5 = CFG.PADDING;
        int i6 = CFG.PADDING * 4;
        int height = ImageManager.getImage(Images.titleTechTree).getHeight();
        int i7 = CFG.GAME_WIDTH;
        int i8 = CFG.BUTTON_WIDTH;
        int i9 = Renderer.boxBGExtraY;
        int i10 = CFG.PADDING;
        int height2 = ImageManager.getImage(Images.topStats).getHeight() + (CFG.PADDING * 2) + ImageManager.getImage(Images.title928).getHeight();
        int i11 = i7 / 2;
        int i12 = 0;
        int width = (i11 - (((GameValues.battle.BATTLE_MAX_BATTLE_WIDTH * ImageManager.getImage(Images.battleArmy0).getWidth()) + ((GameValues.battle.BATTLE_MAX_BATTLE_WIDTH + 1) * 1)) / 2)) + 1;
        int i13 = 0;
        while (i13 < Game.battleManager.getBattle(battleID).attackingArmy.secondLine.size()) {
            if (Game.battleManager.getBattle(battleID).attackingArmy.secondLine.get(i13) != null) {
                arrayList.add(new AnonymousClass1(Game.battleManager.getBattle(battleID).attackingArmy.secondLine.get(i13).c, getImageRegimentID(ArmyManager.lUnitsTypes.get(Game.battleManager.getBattle(battleID).attackingArmy.secondLine.get(i13).aR.uID).Line), width, i6, i13, 0, ArmyManager.lArmy.get(Game.battleManager.getBattle(battleID).attackingArmy.secondLine.get(i13).aR.uID).get(Game.battleManager.getBattle(battleID).attackingArmy.secondLine.get(i13).aR.aID).AttackRange, true, false));
                i4 = width;
            } else {
                i4 = width;
                arrayList.add(new AnonymousClass2(Images.battleArmy2, i4, i6));
            }
            width = i4 + ImageManager.getImage(Images.battleArmy0).getWidth() + 1;
            i13++;
            i12 = i12;
            i7 = i7;
        }
        int i14 = i7;
        int i15 = i12;
        int width2 = (i11 - (((GameValues.battle.BATTLE_MAX_BATTLE_WIDTH * ImageManager.getImage(Images.battleArmy0).getWidth()) + ((GameValues.battle.BATTLE_MAX_BATTLE_WIDTH + 1) * 1)) / 2)) + 1;
        int height3 = i6 + ImageManager.getImage(Images.battleArmy0).getHeight() + 2;
        int width3 = width2;
        int i16 = i15;
        while (i16 < Game.battleManager.getBattle(battleID).attackingArmy.firstLine.size()) {
            if (Game.battleManager.getBattle(battleID).attackingArmy.firstLine.get(i16) == null) {
                i2 = i16;
                i3 = width3;
                arrayList.add(new ButtonBattleRegimentEmpty(Images.battleArmy0, i3, height3));
            } else if (Game.battleManager.getBattle(battleID).attackingArmy.firstLine.get(i16).aR.num > 0) {
                arrayList.add(new AnonymousClass3(Game.battleManager.getBattle(battleID).attackingArmy.firstLine.get(i16).c, getImageRegimentID(ArmyManager.lUnitsTypes.get(Game.battleManager.getBattle(battleID).attackingArmy.firstLine.get(i16).aR.uID).Line), width3, height3, i16, 0, ArmyManager.lArmy.get(Game.battleManager.getBattle(battleID).attackingArmy.firstLine.get(i16).aR.uID).get(Game.battleManager.getBattle(battleID).attackingArmy.firstLine.get(i16).aR.aID).AttackRange, false, false));
                i3 = width3;
                i2 = i16;
            } else {
                int i17 = width3;
                i2 = i16;
                arrayList.add(new AnonymousClass4(Game.battleManager.getBattle(battleID).attackingArmy.firstLine.get(i2).c, getImageRegimentID(ArmyManager.lUnitsTypes.get(Game.battleManager.getBattle(battleID).attackingArmy.firstLine.get(i2).aR.uID).Line), i17, height3, i2, 0));
                i3 = i17;
            }
            width3 = i3 + ImageManager.getImage(Images.battleArmy0).getWidth() + 1;
            i16 = i2 + 1;
        }
        int width4 = (i11 - (((GameValues.battle.BATTLE_MAX_BATTLE_WIDTH * ImageManager.getImage(Images.battleArmy0).getWidth()) + ((GameValues.battle.BATTLE_MAX_BATTLE_WIDTH + 1) * 1)) / 2)) + 1;
        int middleHeight = height3 + getMiddleHeight() + ImageManager.getImage(Images.battleArmy0).getHeight() + 1;
        int width5 = width4;
        int i18 = 0;
        while (i18 < Game.battleManager.getBattle(battleID).defendingArmy.firstLine.size()) {
            if (Game.battleManager.getBattle(battleID).defendingArmy.firstLine.get(i18) == null) {
                i = i18;
                arrayList.add(new ButtonBattleRegimentEmpty(Images.battleArmy0, width5, middleHeight));
            } else if (Game.battleManager.getBattle(battleID).defendingArmy.firstLine.get(i18).aR.num > 0) {
                i = i18;
                arrayList.add(new AnonymousClass5(Game.battleManager.getBattle(battleID).defendingArmy.firstLine.get(i18).c, getImageRegimentID(ArmyManager.lUnitsTypes.get(Game.battleManager.getBattle(battleID).defendingArmy.firstLine.get(i18).aR.uID).Line), width5, middleHeight, i18, 0, ArmyManager.lArmy.get(Game.battleManager.getBattle(battleID).defendingArmy.firstLine.get(i18).aR.uID).get(Game.battleManager.getBattle(battleID).defendingArmy.firstLine.get(i18).aR.aID).AttackRange, false, true));
            } else {
                i = i18;
                arrayList.add(new AnonymousClass6(Game.battleManager.getBattle(battleID).defendingArmy.firstLine.get(i).c, getImageRegimentID(ArmyManager.lUnitsTypes.get(Game.battleManager.getBattle(battleID).defendingArmy.firstLine.get(i).aR.uID).Line), width5, middleHeight, i, 0));
            }
            width5 += ImageManager.getImage(Images.battleArmy0).getWidth() + 1;
            i18 = i + 1;
            height = height;
        }
        int i19 = height;
        int width6 = (i11 - (((GameValues.battle.BATTLE_MAX_BATTLE_WIDTH * ImageManager.getImage(Images.battleArmy0).getWidth()) + ((GameValues.battle.BATTLE_MAX_BATTLE_WIDTH + 1) * 1)) / 2)) + 1;
        int height4 = middleHeight + ImageManager.getImage(Images.battleArmy0).getHeight() + 2;
        int width7 = width6;
        for (int i20 = 0; i20 < Game.battleManager.getBattle(battleID).defendingArmy.secondLine.size(); i20++) {
            if (Game.battleManager.getBattle(battleID).defendingArmy.secondLine.get(i20) != null) {
                arrayList.add(new AnonymousClass7(Game.battleManager.getBattle(battleID).defendingArmy.secondLine.get(i20).c, getImageRegimentID(ArmyManager.lUnitsTypes.get(Game.battleManager.getBattle(battleID).defendingArmy.secondLine.get(i20).aR.uID).Line), width7, height4, i20, 0, ArmyManager.lArmy.get(Game.battleManager.getBattle(battleID).defendingArmy.secondLine.get(i20).aR.uID).get(Game.battleManager.getBattle(battleID).defendingArmy.secondLine.get(i20).aR.aID).AttackRange, true, true));
            } else {
                arrayList.add(new AnonymousClass8(Images.battleArmy2, width7, height4));
            }
            width7 += ImageManager.getImage(Images.battleArmy0).getWidth() + 1;
        }
        arrayList.get(arrayList.size() - 1).getHeight();
        int i21 = CFG.PADDING;
        int size = arrayList.size();
        int posY = 0;
        for (int i22 = 0; i22 < size; i22++) {
            if (posY < arrayList.get(i22).getPosY() + arrayList.get(i22).getHeight() + CFG.PADDING) {
                posY = arrayList.get(i22).getPosY() + arrayList.get(i22).getHeight() + CFG.PADDING;
            }
        }
        int iMin = Math.min(posY, (CFG.GAME_HEIGHT - height2) - (CFG.PADDING * 2));
        int size2 = arrayList.size();
        int posX = 0;
        for (int i23 = 0; i23 < size2; i23++) {
            if (arrayList.get(i23).getPosX() + arrayList.get(i23).getWidth() > posX) {
                posX = arrayList.get(i23).getPosX() + arrayList.get(i23).getWidth();
            }
        }
        arrayList.add(new Empty(0, 0, posX + 100, Math.max(posY, iMin)));
        initMenu(new AnonymousClass9(Game.lang.get("Battle"), i19, false, false), 0, (CFG.GAME_HEIGHT / 2) - (iMin / 2), i14, iMin, arrayList, false, true);
    }

    public static int getMiddleHeight() {
        return ImageManager.getImage(Images.battleArmy0).getHeight();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void actionCloseMenu() {
        super.actionCloseMenu();
        Game.menuManager.setVisibleInGame_BattleFull(false);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i2 - CFG.BUTTON_HEIGHT) + ((int) (CFG.BUTTON_HEIGHT * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i2;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i3, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        ImageManager.getImage(Images.insideTechTree).draw2(spriteBatch, getPosX() + i, getPosY() + i3, getWidth(), getHeight() + CFG.PADDING, false, true);
        super.draw(spriteBatch, i, i3, z, status);
    }

    public int getImageRegimentID(int i) {
        if (i != 1) {
            return i != 2 ? Images.battleArmy0 : Images.battleArmy2;
        }
        return Images.battleArmy1;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void onHovered() {
        super.onHovered();
        Game.menuManager.setOrderOfMenu_BattleFull();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
    }
}
