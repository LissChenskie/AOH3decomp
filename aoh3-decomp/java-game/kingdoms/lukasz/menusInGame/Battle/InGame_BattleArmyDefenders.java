package aoc.kingdoms.lukasz.menusInGame.Battle;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.army.ArmyManager;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu_element.button.ButtonArmyBattle;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_BattleArmyDefenders extends Menu {
    public static int mPosX;
    public static int mPosY;
    public static int mWidth;
    private List<BattleStatsRegiments> tRegiments = new ArrayList();

    public class BattleStatsRegiments {
        int armyID;
        int iCivID;
        int numOfRegiments = 1;
        int numOfUnits;
        int unitTypeID;

        public BattleStatsRegiments(int i, int i2, int i3, int i4) {
            this.unitTypeID = i;
            this.armyID = i2;
            this.numOfUnits = i3;
            this.iCivID = i4;
        }
    }

    public InGame_BattleArmyDefenders() {
        ArrayList arrayList = new ArrayList();
        int width = CFG.PADDING;
        if (InGame_Battle.battleID >= 0) {
            int size = Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.firstLine.size();
            for (int i = 0; i < size; i++) {
                if (Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.firstLine.get(i) != null) {
                    addRegiment(Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.firstLine.get(i).aR.uID, Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.firstLine.get(i).aR.aID, Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.firstLine.get(i).aR.num, Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.firstLine.get(i).c);
                }
            }
            int size2 = Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.secondLine.size();
            for (int i2 = 0; i2 < size2; i2++) {
                if (Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.secondLine.get(i2) != null) {
                    addRegiment(Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.secondLine.get(i2).aR.uID, Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.secondLine.get(i2).aR.aID, Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.secondLine.get(i2).aR.num, Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.secondLine.get(i2).c);
                }
            }
            int size3 = Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.reserveFirstLine.size();
            for (int i3 = 0; i3 < size3; i3++) {
                addRegiment(Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.reserveFirstLine.get(i3).aR.uID, Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.reserveFirstLine.get(i3).aR.aID, Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.reserveFirstLine.get(i3).aR.num, Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.reserveFirstLine.get(i3).c);
            }
            int size4 = Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.reserveSecondLine.size();
            for (int i4 = 0; i4 < size4; i4++) {
                addRegiment(Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.reserveSecondLine.get(i4).aR.uID, Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.reserveSecondLine.get(i4).aR.aID, Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.reserveSecondLine.get(i4).aR.num, Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.reserveSecondLine.get(i4).c);
            }
            int size5 = Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.defeated.size();
            for (int i5 = 0; i5 < size5; i5++) {
                addRegiment(Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.defeated.get(i5).aR.uID, Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.defeated.get(i5).aR.aID, Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.defeated.get(i5).aR.num, Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.defeated.get(i5).c);
            }
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            int size6 = this.tRegiments.size();
            for (int i6 = 0; i6 < size6; i6++) {
                arrayList3.add(Integer.valueOf(i6));
            }
            while (arrayList3.size() > 0) {
                int size7 = arrayList3.size();
                int i7 = 0;
                for (int i8 = 1; i8 < size7; i8++) {
                    if (this.tRegiments.get(((Integer) arrayList3.get(i7)).intValue()).unitTypeID > this.tRegiments.get(((Integer) arrayList3.get(i8)).intValue()).unitTypeID || (this.tRegiments.get(((Integer) arrayList3.get(i7)).intValue()).unitTypeID == this.tRegiments.get(((Integer) arrayList3.get(i8)).intValue()).unitTypeID && this.tRegiments.get(((Integer) arrayList3.get(i7)).intValue()).armyID > this.tRegiments.get(((Integer) arrayList3.get(i8)).intValue()).armyID)) {
                        i7 = i8;
                    }
                }
                arrayList2.add((Integer) arrayList3.get(i7));
                arrayList3.remove(i7);
            }
            for (int i9 = 0; i9 < 3; i9++) {
                int size8 = this.tRegiments.size();
                for (int i10 = 0; i10 < size8; i10++) {
                    if (ArmyManager.lUnitsTypes.get(this.tRegiments.get(((Integer) arrayList2.get(i10)).intValue()).unitTypeID).Line == i9) {
                        arrayList.add(new ButtonArmyBattle("" + this.tRegiments.get(((Integer) arrayList2.get(i10)).intValue()).numOfUnits, this.tRegiments.get(((Integer) arrayList2.get(i10)).intValue()).numOfRegiments, this.tRegiments.get(((Integer) arrayList2.get(i10)).intValue()).iCivID, width, 0, this.tRegiments.get(((Integer) arrayList2.get(i10)).intValue()).unitTypeID, this.tRegiments.get(((Integer) arrayList2.get(i10)).intValue()).armyID, true));
                        width += arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                    }
                }
            }
        }
        initMenu(null, mPosX, mPosY, mWidth, 1 + ImageManager.getImage(Images.unitsFrameBattle).getHeight() + ButtonArmyBattle.getStatsHeight(), arrayList, false);
        this.drawScrollPositionAlways = false;
    }

    public void addRegiment(int i, int i2, int i3, int i4) {
        int size = this.tRegiments.size();
        for (int i5 = 0; i5 < size; i5++) {
            if (this.tRegiments.get(i5).unitTypeID == i && this.tRegiments.get(i5).armyID == i2) {
                this.tRegiments.get(i5).numOfUnits += i3;
                this.tRegiments.get(i5).numOfRegiments++;
                return;
            }
        }
        this.tRegiments.add(new BattleStatsRegiments(i, i2, i3, i4));
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public int getMenuPosX() {
        return super.getMenuPosX() + InGame_Battle.nTranslateX;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public int getMenuPosY() {
        return super.getMenuPosY() + InGame_Battle.nTranslateY;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public int getPosX() {
        return super.getPosX() + InGame_Battle.nTranslateX;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public int getPosY() {
        return super.getPosY() + InGame_Battle.nTranslateY;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void onHovered() {
        super.onHovered();
        Game.menuManager.setOrderOfMenu_InGameBattle();
    }
}
