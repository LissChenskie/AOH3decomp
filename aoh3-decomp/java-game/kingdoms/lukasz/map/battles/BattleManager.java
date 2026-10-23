package aoc.kingdoms.lukasz.map.battles;

import aoc.kingdoms.lukasz.jakowski.AI.Army.AI_BattleStart;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.army.ArmyDivision;
import aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy;
import aoc.kingdoms.lukasz.map.war.WarManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class BattleManager {
    private static long ANIMATION_TIME = 0;
    private static final long ANIMATION_TIMER = 110;
    public static int BATTLE_IMG_ID = 0;
    public static final int BUTTON_PADDING = 1;
    public static int[] FILL_ORDER;
    private static int imgStepID;
    private static boolean reversedAnimation;
    public List<Battle> lBattle = Collections.synchronizedList(new ArrayList());
    public int iBattleSize = 0;

    public BattleManager() {
        int i = 0;
        FILL_ORDER = new int[GameValues.battle.BATTLE_MAX_BATTLE_WIDTH];
        int i2 = 0;
        while (i < GameValues.battle.BATTLE_MAX_BATTLE_WIDTH) {
            FILL_ORDER[i] = (GameValues.battle.BATTLE_MAX_BATTLE_WIDTH / 2) + i2;
            i += 2;
            i2++;
        }
        int i3 = 1;
        int i4 = 1;
        while (i3 < GameValues.battle.BATTLE_MAX_BATTLE_WIDTH) {
            FILL_ORDER[i3] = (GameValues.battle.BATTLE_MAX_BATTLE_WIDTH / 2) - i4;
            i3 += 2;
            i4++;
        }
    }

    private final void drawBattles(SpriteBatch spriteBatch, float f) {
        updateBattleIcon();
        int i = 0;
        for (int i2 = 0; i2 < this.iBattleSize; i2++) {
            try {
                Game.getProvince(getBattle(i2).provinceID).iBattlesInProvince = 0;
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        try {
            if (!Game.FOG_OF_WAR) {
                while (i < this.iBattleSize) {
                    getBattle(i).drawBattle_Just(spriteBatch, f);
                    i++;
                }
            } else {
                while (i < this.iBattleSize) {
                    if (Game.getProvince(getBattle(i).provinceID).getFogDrawArmy()) {
                        getBattle(i).drawBattle_Just(spriteBatch, f);
                    }
                    i++;
                }
            }
        } catch (Exception unused) {
        }
    }

    public static int getBattleWidth(int i) {
        return Math.min(GameValues.battle.BATTLE_MAX_BATTLE_WIDTH, GameValues.battle.BATTLE_MIN_BATTLE_WIDTH + Game.getCiv(i).civBonuses.BattleWidth);
    }

    private final void updateBattleIcon() {
        if (CFG.currentTimeMillis - ANIMATION_TIMER > ANIMATION_TIME) {
            ANIMATION_TIME = CFG.currentTimeMillis;
            if (reversedAnimation) {
                int i = imgStepID - 1;
                imgStepID = i;
                if (i <= 0) {
                    imgStepID = 0;
                    reversedAnimation = false;
                }
            } else {
                int i2 = imgStepID + 1;
                imgStepID = i2;
                if (i2 >= 7) {
                    imgStepID = 7;
                    reversedAnimation = true;
                }
            }
            int i3 = imgStepID % 8;
            if (i3 == 0) {
                BATTLE_IMG_ID = Images.battleIcon5;
                return;
            }
            if (i3 == 1) {
                BATTLE_IMG_ID = Images.battleIcon4;
                return;
            }
            if (i3 == 2) {
                BATTLE_IMG_ID = Images.battleIcon3;
                return;
            }
            if (i3 == 3) {
                BATTLE_IMG_ID = Images.battleIcon2;
            } else if (i3 != 4) {
                BATTLE_IMG_ID = Images.battleIcon0;
            } else {
                BATTLE_IMG_ID = Images.battleIcon1;
            }
        }
    }

    public final void addBattle(Battle battle) {
        try {
            this.lBattle.add(battle);
            this.iBattleSize = this.lBattle.size();
            int iNextInt = Game.oR.nextInt(Math.max(1, Game.aiValuesArmies.BATTLE_START_MIN_REGIMENTS_RANDOM));
            int iMin = Math.min(Game.battleManager.getBattle(this.iBattleSize - 1).defendingArmy.numOfUnits, Game.battleManager.getBattle(this.iBattleSize - 1).attackingArmy.numOfUnits);
            if (iMin <= Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE * (Game.aiValuesArmies.BATTLE_START_MIN_REGIMENTS + iNextInt)) {
                AI_BattleStart.battleStarted_1(this.iBattleSize - 1, battle.provinceID);
            } else if (iMin <= Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE * (Game.aiValuesArmies.BATTLE_START_MIN_REGIMENTS_2 + iNextInt)) {
                AI_BattleStart.battleStarted_2(this.iBattleSize - 1, battle.provinceID);
            } else if (Game.oR.nextInt(100) < Game.aiValuesArmies.BATTLE_START_MOVE_ARMIES_RANDOM_CHANCE) {
                AI_BattleStart.battleStarted(this.iBattleSize - 1, battle.provinceID, Game.oR.nextInt(5) + 2);
            } else if (iMin <= Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE * (Game.aiValuesArmies.BATTLE_START_MIN_REGIMENTS_3 + iNextInt)) {
                AI_BattleStart.battleStarted(this.iBattleSize - 1, battle.provinceID, 3);
            } else if (iMin <= Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE * (Game.aiValuesArmies.BATTLE_START_MIN_REGIMENTS_4 + iNextInt)) {
                AI_BattleStart.battleStarted(this.iBattleSize - 1, battle.provinceID, 4);
            } else if (iMin <= Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE * (iNextInt + Game.aiValuesArmies.BATTLE_START_MIN_REGIMENTS_5)) {
                AI_BattleStart.battleStarted(this.iBattleSize - 1, battle.provinceID, 5);
            } else {
                AI_BattleStart.battleStarted(this.iBattleSize - 1, battle.provinceID, 6);
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public void clearData() {
        this.lBattle.clear();
        this.iBattleSize = 0;
    }

    public void draw(SpriteBatch spriteBatch) {
        if (Game.mapScale.getCurrentScale() >= Game.DRAW_ARMY_MIN_SCALE) {
            drawBattles(spriteBatch, ProvinceDrawArmy.DRAW_ARMY_ALPHA);
            return;
        }
        if (Game.mapTouchManager.selectMode) {
            drawBattles(spriteBatch, 1.0f);
        } else {
            if (!ProvinceDrawArmy.drawHideAnimation || Game.mapScale.getCurrentScale() < ProvinceDrawArmy.DRAW_ARMY_MIN_SCALE_ANIMATION) {
                return;
            }
            drawBattles(spriteBatch, ProvinceDrawArmy.DRAW_ARMY_ALPHA);
        }
    }

    public String getArmyBattleKey(int i, String str) {
        try {
            for (int i2 = this.iBattleSize - 1; i2 >= 0; i2--) {
                if (getBattle(i2).provinceID == i && getBattle(i2).isInBattle(str)) {
                    return getBattle(i2).key;
                }
            }
            return "";
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return "";
        }
    }

    public Battle getBattle(int i) {
        return this.lBattle.get(i);
    }

    public Battle getBattle(String str) {
        for (int i = 0; i < this.iBattleSize; i++) {
            if (this.lBattle.get(i).key.equals(str)) {
                return this.lBattle.get(i);
            }
        }
        return null;
    }

    public int getBattleID(int i, String str) {
        for (int i2 = 0; i2 < this.iBattleSize; i2++) {
            if (this.lBattle.get(i2).provinceID == i && this.lBattle.get(i2).key.equals(str)) {
                return i2;
            }
        }
        return -1;
    }

    public int getBattleID(String str) {
        for (int i = 0; i < this.iBattleSize; i++) {
            if (this.lBattle.get(i).key.equals(str)) {
                return i;
            }
        }
        return -1;
    }

    public int getBattleSize() {
        return this.iBattleSize;
    }

    public final void getJakowskiLine() {
    }

    public boolean isArmyInBattle(int i, String str) {
        try {
            for (int i2 = this.iBattleSize - 1; i2 >= 0; i2--) {
                if (getBattle(i2).provinceID == i && getBattle(i2).isInBattle(str)) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return false;
        }
    }

    public boolean isBattleInProvince(int i) {
        try {
            for (int i2 = this.iBattleSize - 1; i2 >= 0; i2--) {
                if (getBattle(i2).provinceID == i) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return false;
        }
    }

    public final void joinBattle(int i, ArmyDivision armyDivision, int i2) {
        for (int i3 = 0; i3 < this.iBattleSize; i3++) {
            try {
                if (this.lBattle.get(i3).provinceID == i) {
                    if (this.lBattle.get(i3).defendingArmy.isInBattleCiv(i2)) {
                        this.lBattle.get(i3).attackingArmy.joinBattle(armyDivision, this.lBattle.get(i3).iMaxBattleWidth, this.lBattle.get(i3).key);
                    } else if (this.lBattle.get(i3).attackingArmy.isInBattleCiv(i2)) {
                        this.lBattle.get(i3).defendingArmy.joinBattle(armyDivision, this.lBattle.get(i3).iMaxBattleWidth, this.lBattle.get(i3).key);
                    } else if (this.lBattle.get(i3).defendingArmy.isInBattleCiv(armyDivision.civID)) {
                        this.lBattle.get(i3).defendingArmy.joinBattle(armyDivision, this.lBattle.get(i3).iMaxBattleWidth, this.lBattle.get(i3).key);
                    } else if (this.lBattle.get(i3).attackingArmy.isInBattleCiv(armyDivision.civID)) {
                        this.lBattle.get(i3).attackingArmy.joinBattle(armyDivision, this.lBattle.get(i3).iMaxBattleWidth, this.lBattle.get(i3).key);
                    }
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
    }

    public final void removeBattle(int i) {
        try {
            this.lBattle.get(i).defendingArmy.updateAllArmiesNotInBattle(this.lBattle.get(i).provinceID);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        try {
            this.lBattle.get(i).attackingArmy.updateAllArmiesNotInBattle(this.lBattle.get(i).provinceID);
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
        try {
            this.lBattle.get(i).defendingArmy.removeCivsInBattle(this.lBattle.get(i).key);
        } catch (Exception e3) {
            CFG.exceptionStack(e3);
        }
        try {
            this.lBattle.get(i).attackingArmy.removeCivsInBattle(this.lBattle.get(i).key);
        } catch (Exception e4) {
            CFG.exceptionStack(e4);
        }
        try {
            this.lBattle.remove(i);
            this.iBattleSize = this.lBattle.size();
        } catch (Exception e5) {
            CFG.exceptionStack(e5);
        }
    }

    public void stopAllBattles_PeaceTreaty(String str) {
        try {
            for (int i = this.iBattleSize - 1; i >= 0; i--) {
                try {
                    if (WarManager.getWarKey(this.lBattle.get(i).attackingArmy.lCivs.get(0).intValue(), this.lBattle.get(i).defendingArmy.lCivs.get(0).intValue()).equals(str)) {
                        this.lBattle.get(i).updateBattle_Summary(false);
                        this.lBattle.remove(i);
                        this.iBattleSize = this.lBattle.size();
                    }
                } catch (Exception unused) {
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
