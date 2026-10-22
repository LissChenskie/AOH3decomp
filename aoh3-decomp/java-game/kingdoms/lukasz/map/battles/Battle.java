package aoc.kingdoms.lukasz.map.battles;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.LanguageManager;
import aoc.kingdoms.lukasz.jakowski.Player.Notification.Notification;
import aoc.kingdoms.lukasz.jakowski.Player.Player;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.army.ArmyDivision;
import aoc.kingdoms.lukasz.map.army.ArmyManager;
import aoc.kingdoms.lukasz.map.province.Province;
import aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy;
import aoc.kingdoms.lukasz.map.technology.Bhs.fiRhHJntP;
import aoc.kingdoms.lukasz.map.war.WarManager;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Battle {
    public BattleLine attackingArmy;
    public int battleWidth;
    public BattleLine defendingArmy;
    public int iMaxBattleWidth;
    public String key;
    public int posX;
    public int posY;
    public int provinceID;
    public int roundID;

    public Battle() {
        this.posX = 0;
        this.posY = 0;
        this.battleWidth = 0;
        this.iMaxBattleWidth = 0;
    }

    public Battle(int i, List<ArmyDivision> list, List<ArmyDivision> list2) {
        this.posX = 0;
        this.posY = 0;
        this.battleWidth = 0;
        this.iMaxBattleWidth = 0;
        this.key = CFG.extraRandomTag();
        this.roundID = 0;
        this.provinceID = i;
        deployArmies(list, list2);
    }

    private static final void drawProvinceArmyFlag(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, boolean z) {
        ImageManager.getImage(i4).draw2(spriteBatch, i, i2, ImageManager.getImage(Images.armyFlag).getWidth() + 3 + 2, ImageManager.getImage(i4).getHeight(), z, false);
        if (i3 < 0) {
            ImageManager.getImage(Images.rebelsFlag).draw(spriteBatch, i + 3, i2 + 2, ImageManager.getImage(Images.armyFlag).getWidth(), ImageManager.getImage(Images.armyFlag).getHeight());
        } else {
            Game.getCiv(i3).getFlag().draw(spriteBatch, i + 3, i2 + 2, ImageManager.getImage(Images.armyFlag).getWidth(), ImageManager.getImage(Images.armyFlag).getHeight());
        }
        ImageManager.getImage(Images.armyFlag).draw(spriteBatch, i + 3, i2 + 2);
    }

    public static int getArmyInFirstLine(List<ArmyDivision> list) {
        int size = list.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            for (int i3 = 0; i3 < list.get(i2).iArmyRegimentSize; i3++) {
                if (ArmyManager.lUnitsTypes.get(list.get(i2).lArmyRegiment.get(i3).uID).Line < 2) {
                    i++;
                }
            }
        }
        return i;
    }

    public static final int getArmyPosX(int i) {
        return (int) ((Game.getProvince(i).iCenterShiftX + Game.getProvince(i).getTranslateProvincePosX()) * Game.mapScale.getCurrentScale());
    }

    public static final int getArmyPosY(int i) {
        return (int) (((((Game.getProvince(i).iCenterShiftY + Game.mapCoords.getPosY()) * Game.mapScale.getCurrentScale()) - ImageManager.getImage(Images.army).getHeight()) - (ImageManager.getImage(Images.army).getHeight() / 2)) - 2.0f);
    }

    public static int getDefendersProvinceBonuses(int i) {
        return Game.terrainManager.terrains.get(Game.getProvince(i).getTerrainID()).Defense + Game.getProvince(i).provBonuses.DefenseBonus;
    }

    public final void deployArmies(List<ArmyDivision> list, List<ArmyDivision> list2) {
        int iMin = GameValues.battle.BATTLE_MIN_BATTLE_WIDTH;
        for (int i = 0; i < list.size(); i++) {
            iMin = Math.min(GameValues.battle.BATTLE_MAX_BATTLE_WIDTH, BattleManager.getBattleWidth(list.get(i).civID));
            list.get(i).inBattle = true;
            if (list.get(i).inMovement) {
                if (list.get(i).civID < 0) {
                    Game.revolutionMoveUnits.updateMoveInBattle(list.get(i).key, list.get(i).inBattle);
                } else {
                    Game.getCiv(list.get(i).civID).updateMoveInBattle(list.get(i).key, list.get(i).inBattle);
                }
            }
        }
        for (int i2 = 0; i2 < list2.size(); i2++) {
            iMin = Math.min(GameValues.battle.BATTLE_MAX_BATTLE_WIDTH, BattleManager.getBattleWidth(list2.get(i2).civID));
            list2.get(i2).inBattle = true;
            if (list2.get(i2).inMovement) {
                if (list2.get(i2).civID < 0) {
                    Game.revolutionMoveUnits.updateMoveInBattle(list2.get(i2).key, list2.get(i2).inBattle);
                } else {
                    Game.getCiv(list2.get(i2).civID).updateMoveInBattle(list2.get(i2).key, list2.get(i2).inBattle);
                }
            }
        }
        this.iMaxBattleWidth = iMin;
        int iMin2 = Math.min(getArmyInFirstLine(list), getArmyInFirstLine(list2));
        this.attackingArmy = new BattleLine(list, iMin, iMin2, this.key);
        this.defendingArmy = new BattleLine(list2, iMin, iMin2, this.key);
        if (list.get(0).armyGeneral == null) {
            for (int i3 = 0; i3 < list.size(); i3++) {
                if (list.get(i3).armyGeneral != null) {
                    this.attackingArmy.armyGeneral = list.get(i3).armyGeneral;
                    break;
                }
            }
        } else {
            this.attackingArmy.armyGeneral = list.get(0).armyGeneral;
        }
        if (list2.get(0).armyGeneral == null) {
            for (int i4 = 0; i4 < list2.size(); i4++) {
                if (list2.get(i4).armyGeneral != null) {
                    this.defendingArmy.armyGeneral = list2.get(i4).armyGeneral;
                    break;
                }
            }
        } else {
            this.defendingArmy.armyGeneral = list2.get(0).armyGeneral;
        }
        this.attackingArmy.iCivID = list.get(0).civID;
        this.defendingArmy.iCivID = list2.get(0).civID;
        for (int i5 = 0; i5 < list.size(); i5++) {
            if (list.get(i5).armyGeneral != null) {
                list.get(i5).armyGeneral.addCombatExperience(GameValues.generals.COMBAT_EXPERIENCE_JOIN_BATTLE);
            }
        }
        for (int i6 = 0; i6 < list2.size(); i6++) {
            if (list2.get(i6).armyGeneral != null) {
                list2.get(i6).armyGeneral.addCombatExperience(GameValues.generals.COMBAT_EXPERIENCE_JOIN_BATTLE);
            }
        }
    }

    public final void drawBattle_Just(SpriteBatch spriteBatch, float f) {
        if (Game.getProvince(this.provinceID).getDrawProvince()) {
            this.battleWidth = getBattleWidth();
            this.posX = getArmyPosX(this.provinceID) - (this.battleWidth / 2);
            int armyPosY = getArmyPosY(this.provinceID);
            int height = ImageManager.getImage(Images.army).getHeight() + 2;
            Province province = Game.getProvince(this.provinceID);
            int i = province.iBattlesInProvince;
            province.iBattlesInProvince = i + 1;
            this.posY = armyPosY - (height * i);
            if (Game.hoveredBattle.iProvinceID == this.provinceID && Game.hoveredBattle.key.equals(this.key)) {
                spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, (Game.animationHover.getAlpha() / 255.0f) * f));
                ProvinceDrawArmy.drawProvinceArmyHover(spriteBatch, this.posX, this.posY, this.battleWidth);
                spriteBatch.setColor(Color.WHITE);
            }
            drawBattle_Just(spriteBatch, f, this.posX, this.posY);
        }
    }

    public final void drawBattle_Just(SpriteBatch spriteBatch, float f, int i, int i2) {
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f));
        drawProvinceArmyFlag(spriteBatch, i, i2, this.attackingArmy.iCivID, Images.armyLeft, false);
        int width = ImageManager.getImage(Images.armyFlag).getWidth() + 3 + 2;
        int i3 = i + width;
        ImageManager.getImage(Images.armyPlayer0).draw2(spriteBatch, i3, i2, this.attackingArmy.textW + 10 + (ImageManager.getImage(Images.battleIcon0).getWidth() / 2), ImageManager.getImage(Images.army).getHeight(), true, false);
        Renderer.drawText(spriteBatch, CFG.FONT_ARMY, this.attackingArmy.text, i3 + this.attackingArmy.armyExtraPosX + 5, (i2 + ((int) (ImageManager.getImage(Images.armyLeft).getHeight() / 2.0f))) - ((int) (ProvinceDrawArmy.ARMY_HEIGHT / 2.0f)), new Color(ProvinceDrawArmy.COLOR_ARMY.r, ProvinceDrawArmy.COLOR_ARMY.g, ProvinceDrawArmy.COLOR_ARMY.b, ProvinceDrawArmy.COLOR_ARMY.a * f));
        int width2 = width + this.attackingArmy.textW + 10 + (ImageManager.getImage(Images.battleIcon0).getWidth() / 2);
        ImageManager.getImage(Images.armyEnemy).draw2(spriteBatch, i + width2, i2, this.defendingArmy.textW + 10 + (ImageManager.getImage(Images.battleIcon0).getWidth() / 2), ImageManager.getImage(Images.army).getHeight(), false, false);
        int width3 = width2 + (ImageManager.getImage(Images.battleIcon0).getWidth() / 2);
        Renderer.drawText(spriteBatch, CFG.FONT_ARMY, this.defendingArmy.text, i + width3 + this.defendingArmy.armyExtraPosX + 5, (i2 + ((int) (ImageManager.getImage(Images.armyLeft).getHeight() / 2.0f))) - ((int) (ProvinceDrawArmy.ARMY_HEIGHT / 2.0f)), new Color(ProvinceDrawArmy.COLOR_ARMY.r, ProvinceDrawArmy.COLOR_ARMY.g, ProvinceDrawArmy.COLOR_ARMY.b, ProvinceDrawArmy.COLOR_ARMY.a * f));
        drawProvinceArmyFlag(spriteBatch, i + width3 + this.defendingArmy.textW + 10, i2, this.defendingArmy.iCivID, Images.armyLeft, true);
        ImageManager.getImage(BattleManager.BATTLE_IMG_ID).draw(spriteBatch, i + ImageManager.getImage(Images.armyFlag).getWidth() + 3 + 2 + this.attackingArmy.textW + 10, (i2 + (ImageManager.getImage(Images.army).getHeight() / 2)) - (ImageManager.getImage(BattleManager.BATTLE_IMG_ID).getHeight() / 2));
        spriteBatch.setColor(Color.WHITE);
    }

    public final boolean endOfBattle() {
        return this.attackingArmy.numOfUnits <= 0 || this.defendingArmy.numOfUnits <= 0;
    }

    public final boolean endOfBattle_NoAttacks() {
        return this.roundID - this.attackingArmy.iLastAttackRoundID > 7 || this.roundID - this.defendingArmy.iLastAttackRoundID > 7;
    }

    public int getBattleWidth() {
        return ((ImageManager.getImage(Images.armyFlag).getWidth() + 3 + 2) * 2) + this.attackingArmy.textW + 10 + ImageManager.getImage(Images.battleIcon0).getWidth() + this.defendingArmy.textW + 10;
    }

    public boolean isInBattle(String str) {
        return this.attackingArmy.isInBattleArmy(str) || this.defendingArmy.isInBattleArmy(str);
    }

    public final void updateBattle() {
        int i = this.roundID + 1;
        this.roundID = i;
        if (i > GameValues.battle.BATTLE_DEPLOYMENT_PHASE_TURNS) {
            this.attackingArmy.updateDefeated();
            this.defendingArmy.updateDefeated();
            this.attackingArmy.updateDiceRoll();
            this.defendingArmy.updateDiceRoll();
            this.attackingArmy.updateAttack(this.defendingArmy, this.roundID, 0);
            this.defendingArmy.updateAttack(this.attackingArmy, this.roundID, getDefendersProvinceBonuses(this.provinceID));
            this.attackingArmy.updateCasualties();
            this.defendingArmy.updateCasualties();
            this.attackingArmy.updateMoraleAndRetreat();
            this.defendingArmy.updateMoraleAndRetreat();
            if (this.roundID % 2 == 1) {
                updateNumOfUnits();
            }
            BattleLine battleLine = this.attackingArmy;
            String str = fiRhHJntP.iUDhttMK;
            battleLine.setText(str + CFG.getPrecision2(this.attackingArmy.numOfUnits / 1000.0f, 10));
            this.defendingArmy.setText(str + CFG.getPrecision2(this.defendingArmy.numOfUnits / 1000.0f, 10));
        }
    }

    public final void updateBattle_Summary(boolean z) {
        boolean z2 = this.attackingArmy.numOfUnits > this.defendingArmy.numOfUnits;
        updateBattle_SummaryCasualties(z2);
        this.attackingArmy.updateBattle_Summary(this.provinceID, !z2, this.roundID, z);
        this.defendingArmy.updateBattle_Summary(this.provinceID, z2, this.roundID, z);
        Game.getProvince(this.provinceID).updateArmyPosY();
    }

    public final void updateBattle_SummaryCasualties(boolean z) {
        float fAddWarScore_ValueToAdd;
        LanguageManager languageManager;
        String str;
        String warKey = WarManager.getWarKey(this.attackingArmy.lCivs.get(0).intValue(), this.defendingArmy.lCivs.get(0).intValue());
        if (warKey != null) {
            try {
                this.attackingArmy.buildCasualties();
                this.defendingArmy.buildCasualties();
                for (int size = this.attackingArmy.lCivs.size() - 1; size >= 0; size--) {
                    WarManager.lWars.get(warKey).addCasualties(this.attackingArmy.lCivs.get(size).intValue(), this.attackingArmy.lCasualties.get(size).intValue());
                }
                for (int size2 = this.defendingArmy.lCivs.size() - 1; size2 >= 0; size2--) {
                    WarManager.lWars.get(warKey).addCasualties(this.defendingArmy.lCivs.get(size2).intValue(), this.defendingArmy.lCasualties.get(size2).intValue());
                }
                if (z) {
                    fAddWarScore_ValueToAdd = WarManager.lWars.get(warKey).addWarScore_ValueToAdd(Math.min((this.defendingArmy.iCasualties * GameValues.battle.BATTLE_WAR_SCORE_CASUALTIES) / (this.defendingArmy.getCivsRegimentsLimit() * Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE), GameValues.battle.BATTLE_WAR_SCORE_MAX), this.attackingArmy.lCivs.get(0).intValue(), this.defendingArmy.lCivs.get(0).intValue());
                    if (WarManager.lWars.get(warKey).isAggressor(this.attackingArmy.lCivs.get(0).intValue())) {
                        WarManager.lWars.get(warKey).addWarScore_Just(fAddWarScore_ValueToAdd);
                        WarManager.lWars.get(warKey).warScoreFromBattles += fAddWarScore_ValueToAdd;
                    } else {
                        WarManager.lWars.get(warKey).addWarScore_Just(-fAddWarScore_ValueToAdd);
                        WarManager.lWars.get(warKey).warScoreFromBattles -= fAddWarScore_ValueToAdd;
                    }
                    Game.getCiv(this.defendingArmy.lCivs.get(0).intValue()).updateWarWeariness(GameValues.war.WAR_WAR_WEARINESS_BATTLE * fAddWarScore_ValueToAdd);
                    this.attackingArmy.updateMoraleEndOfBattle(GameValues.battle.BATTLE_MIN_MORALE_VICTORIOUS_ARMY);
                    this.defendingArmy.updateMoraleEndOfBattle(GameValues.battle.BATTLE_MIN_MORALE_DEFEATED_ARMY);
                } else {
                    fAddWarScore_ValueToAdd = WarManager.lWars.get(warKey).addWarScore_ValueToAdd(Math.min((this.attackingArmy.iCasualties * GameValues.battle.BATTLE_WAR_SCORE_CASUALTIES) / (this.attackingArmy.getCivsRegimentsLimit() * Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE), GameValues.battle.BATTLE_WAR_SCORE_MAX), this.attackingArmy.lCivs.get(0).intValue(), this.defendingArmy.lCivs.get(0).intValue());
                    if (WarManager.lWars.get(warKey).isAggressor(this.defendingArmy.lCivs.get(0).intValue())) {
                        WarManager.lWars.get(warKey).addWarScore_Just(fAddWarScore_ValueToAdd);
                        WarManager.lWars.get(warKey).warScoreFromBattles += fAddWarScore_ValueToAdd;
                    } else {
                        WarManager.lWars.get(warKey).addWarScore_Just(-fAddWarScore_ValueToAdd);
                        WarManager.lWars.get(warKey).warScoreFromBattles -= fAddWarScore_ValueToAdd;
                    }
                    Game.getCiv(this.attackingArmy.lCivs.get(0).intValue()).updateWarWeariness(GameValues.war.WAR_WAR_WEARINESS_BATTLE * fAddWarScore_ValueToAdd);
                    this.attackingArmy.updateMoraleEndOfBattle(GameValues.battle.BATTLE_MIN_MORALE_DEFEATED_ARMY);
                    this.defendingArmy.updateMoraleEndOfBattle(GameValues.battle.BATTLE_MIN_MORALE_VICTORIOUS_ARMY);
                }
                float f = fAddWarScore_ValueToAdd;
                if (this.attackingArmy.isInBattleCiv(Game.player.iCivID) || this.defendingArmy.isInBattleCiv(Game.player.iCivID)) {
                    boolean z2 = (z && this.attackingArmy.isInBattleCiv(Game.player.iCivID)) || (!z && this.defendingArmy.isInBattleCiv(Game.player.iCivID));
                    String strExtraRandomTag = CFG.extraRandomTag();
                    Player player = Game.player;
                    Notification.Notification_Type notification_Type = Notification.Notification_Type.BATTLE_REPORT;
                    StringBuilder sb = new StringBuilder();
                    if (z2) {
                        languageManager = Game.lang;
                        str = "BattleWon";
                    } else {
                        languageManager = Game.lang;
                        str = "BattleLost";
                    }
                    player.addNotification(new Notification(notification_Type, sb.append(languageManager.get(str)).append(": ").append(Game.getProvince(this.provinceID).getProvinceName()).toString(), Images.battle, Game_Calendar.TURN_ID, z2 ? Notification.Notification_BG.GREEN : Notification.Notification_BG.RED, strExtraRandomTag, this.provinceID));
                    Game.player.addBattleReport(new BattleReport(strExtraRandomTag, this.provinceID, f, z, z2, Game_Calendar.TURN_ID, new BattleReport.CivReport(this.attackingArmy.lCivs.get(0).intValue(), this.attackingArmy.numOfUnits + this.attackingArmy.iCasualties + this.attackingArmy.iRetreated, this.attackingArmy.iCasualties, this.attackingArmy.iRetreated), new BattleReport.CivReport(this.defendingArmy.lCivs.get(0).intValue(), this.defendingArmy.numOfUnits + this.defendingArmy.iCasualties + this.defendingArmy.iRetreated, this.defendingArmy.iCasualties, this.defendingArmy.iRetreated)));
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
    }

    public final void updateNumOfUnits() {
        this.attackingArmy.updateNumOfUnits();
        this.defendingArmy.updateNumOfUnits();
    }
}
