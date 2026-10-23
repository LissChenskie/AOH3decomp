package aoc.kingdoms.lukasz.map;

import aoc.kingdoms.lukasz.jakowski.AI.Army.AI_SiegeStart;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Player.Notification.Notification;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class SiegeManager {
    public static List<Integer> lProvinces = Collections.synchronizedList(new ArrayList());
    public static int iProvincesSize = 0;
    public static Color progressBarBG = new Color(0.23529412f, 0.15686275f, 0.15686275f, 1.0f);
    public static Color progressBar = new Color(0.15686275f, 0.5882353f, 0.84313726f, 1.0f);

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.SiegeManager$1, reason: invalid class name */
    class AnonymousClass1 extends Notification {
        AnonymousClass1(Notification.Notification_Type notification_Type, String str, int i, int i2, Notification.Notification_BG notification_BG, int i3) {
            super(notification_Type, str, i, i2, notification_BG, i3);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Player.Notification.Notification
        public void onAction() {
            Game.mapCoords.centerToProvinceID(this.id);
        }
    }

    public static final void addProvinceSiege(int i) {
        for (int i2 = 0; i2 < iProvincesSize; i2++) {
            if (lProvinces.get(i2).intValue() == i) {
                return;
            }
        }
        lProvinces.add(Integer.valueOf(i));
        iProvincesSize = lProvinces.size();
    }

    public static void buildProvinceUnderSiege_Load() {
        lProvinces.clear();
        iProvincesSize = 0;
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            if (!Game.getProvince(i).getSeaProvince() && Game.getProvinceData4(i).isUnderSiege()) {
                lProvinces.add(Integer.valueOf(i));
            }
        }
        iProvincesSize = lProvinces.size();
    }

    public static final void checkForSiege(int i) {
        try {
            if (Game.getProvince(i).getSeaProvince()) {
                return;
            }
            int i2 = 0;
            if (Game.getProvince(i).isOccupied()) {
                if (Game.getProvinceData4(i).isUnderSiege()) {
                    addProvinceSiege(i);
                    return;
                }
                int i3 = 0;
                while (i2 < Game.getProvince(i).getArmySize()) {
                    if (!Game.getProvince(i).getArmy(i2).inBattle && !Game.getProvince(i).getArmy(i2).inRetreat && !Game.getProvince(i).getArmy(i2).inMovement && Game.getProvince(i).getArmy(i2).fMorale >= GameValues.siege.SIEGE_MIN_MORALE) {
                        if (DiplomacyManager.isAtWar(Game.getProvinceData(i).getOccupiedByCivID(), Game.getProvince(i).getArmy(i2).civID)) {
                            i3 += Game.getProvince(i).getArmy(i2).iArmyRegimentSize;
                            if (i3 >= GameValues.siege.SIEGE_REGIMENTS_MIN) {
                                Game.getProvinceData4(i).setIsUnderSiege(i, true);
                                Game.getProvinceData4(i).setSiegeProgress(0.0f);
                                addProvinceSiege(i);
                                AI_SiegeStart.siegeStarted_Attacker(i);
                                AI_SiegeStart.siegeStarted_Defend(i);
                                return;
                            }
                        } else if (Game.getProvince(i).getCivID() == Game.getProvince(i).getArmy(i2).civID) {
                            Game.getProvince(i).retakeOccupiedProvince_Peace();
                        }
                    }
                    i2++;
                }
                return;
            }
            if (Game.getProvinceData4(i).isUnderSiege()) {
                addProvinceSiege(i);
                return;
            }
            int i4 = 0;
            while (i2 < Game.getProvince(i).getArmySize()) {
                if (!Game.getProvince(i).getArmy(i2).inBattle && !Game.getProvince(i).getArmy(i2).inMovement && !Game.getProvince(i).getArmy(i2).inRetreat && Game.getProvince(i).getArmy(i2).fMorale >= GameValues.siege.SIEGE_MIN_MORALE && DiplomacyManager.isAtWar(Game.getProvince(i).getCivID(), Game.getProvince(i).getArmy(i2).civID) && (i4 = i4 + Game.getProvince(i).getArmy(i2).iArmyRegimentSize) >= GameValues.siege.SIEGE_REGIMENTS_MIN) {
                    Game.getProvinceData4(i).setIsUnderSiege(i, true);
                    Game.getProvinceData4(i).setSiegeProgress(0.0f);
                    addProvinceSiege(i);
                    AI_SiegeStart.siegeStarted_Attacker(i);
                    AI_SiegeStart.siegeStarted_Defend(i);
                    if (Game.getProvince(i).getCivID() == Game.player.iCivID) {
                        Game.player.addNotification(new AnonymousClass1(Notification.Notification_Type.SIEGE, Game.getProvince(i).getProvinceName() + ": " + Game.lang.get("UnderSiege"), Images.siege, Game_Calendar.TURN_ID, Notification.Notification_BG.NEUTRAL_BG, i));
                        return;
                    }
                    return;
                }
                i2++;
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static void clearData() {
        try {
            for (int size = lProvinces.size() - 1; size >= 0; size--) {
                Game.getProvinceData4(lProvinces.get(size).intValue()).setIsUnderSiege_Just(false);
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        lProvinces.clear();
        iProvincesSize = 0;
    }

    public static void draw(SpriteBatch spriteBatch) {
        if (Game.mapScale.getCurrentScale() >= Game.DRAW_ARMY_MIN_SCALE) {
            drawSieges(spriteBatch, ProvinceDrawArmy.DRAW_ARMY_ALPHA);
            return;
        }
        if (Game.mapTouchManager.selectMode) {
            drawSieges(spriteBatch, 1.0f);
        } else {
            if (!ProvinceDrawArmy.drawHideAnimation || Game.mapScale.getCurrentScale() < ProvinceDrawArmy.DRAW_ARMY_MIN_SCALE_ANIMATION) {
                return;
            }
            drawSieges(spriteBatch, ProvinceDrawArmy.DRAW_ARMY_ALPHA);
        }
    }

    private static final void drawProvinceArmyFlag(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, boolean z) {
        ImageManager.getImage(i4).draw2(spriteBatch, i, i2, ImageManager.getImage(Images.armyFlag).getWidth() + 3 + 2, ImageManager.getImage(i4).getHeight(), z, false);
        int i5 = i + 3;
        int i6 = i2 + 2;
        Game.getCiv(i3).getFlag().draw(spriteBatch, i5, i6, ImageManager.getImage(Images.armyFlag).getWidth(), ImageManager.getImage(Images.armyFlag).getHeight());
        ImageManager.getImage(Images.armyFlag).draw(spriteBatch, i5, i6);
    }

    private static final void drawSiege(SpriteBatch spriteBatch, float f, int i) {
        try {
            int armyPosX = getArmyPosX(i);
            int armyPosY = getArmyPosY(i);
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f));
            int width = (ImageManager.getImage(Images.progressBarFrame).getWidth() - ImageManager.getImage(Images.progressBarFrameMask).getWidth()) / 2;
            int height = (ImageManager.getImage(Images.progressBarFrame).getHeight() - ImageManager.getImage(Images.progressBarFrameMask).getHeight()) / 2;
            ImageManager.getImage(Game_Calendar.IMG_FORT_DEFENSE).draw(spriteBatch, armyPosX - (ImageManager.getImage(Game_Calendar.IMG_FORT_DEFENSE).getWidth() / 2), (armyPosY - ImageManager.getImage(Game_Calendar.IMG_FORT_DEFENSE).getHeight()) - (ImageManager.getImage(Images.progressBarFrame).getHeight() / 2));
            int width2 = armyPosX - (ImageManager.getImage(Images.progressBarFrame).getWidth() / 2);
            int height2 = armyPosY - ImageManager.getImage(Images.progressBarFrame).getHeight();
            spriteBatch.setColor(new Color(progressBarBG.r, progressBarBG.g, progressBarBG.b, f));
            int i2 = width2 + width;
            int i3 = height2 + height;
            ImageManager.getImage(Images.progressBarFrameMask).draw(spriteBatch, i2, i3);
            if (Game.hoveredSiegeID == i) {
                spriteBatch.setColor(new Color(Colors.HOVER_GOLD.r, Colors.HOVER_GOLD.g, Colors.HOVER_GOLD.b, f));
            } else {
                spriteBatch.setColor(new Color(progressBar.r, progressBar.g, progressBar.b, f));
            }
            ImageManager.getImage(Images.progressBarFrameMask).draw(spriteBatch, i2, i3, (int) (ImageManager.getImage(Images.progressBarFrameMask).getWidth() * Game.getProvince(i).getSiegeProgress()), ImageManager.getImage(Images.progressBarFrameMask).getHeight());
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f));
            ImageManager.getImage(Images.progressBarFrame).draw(spriteBatch, width2, height2);
            spriteBatch.setColor(Color.WHITE);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    private static final void drawSieges(SpriteBatch spriteBatch, float f) {
        try {
            if (!Game.FOG_OF_WAR) {
                for (int i = iProvincesSize - 1; i >= 0; i--) {
                    if (Game.getProvince(lProvinces.get(i).intValue()).getDrawProvince()) {
                        drawSiege(spriteBatch, f, lProvinces.get(i).intValue());
                    }
                }
                return;
            }
            for (int i2 = iProvincesSize - 1; i2 >= 0; i2--) {
                if (Game.getProvince(lProvinces.get(i2).intValue()).getDrawProvince() && Game.getProvince(lProvinces.get(i2).intValue()).getFogDrawArmy()) {
                    drawSiege(spriteBatch, f, lProvinces.get(i2).intValue());
                }
            }
        } catch (Exception unused) {
        }
    }

    public static final int getArmyPosX(int i) {
        return (int) ((Game.getProvince(i).iCenterShiftX + Game.getProvince(i).getTranslateProvincePosX()) * Game.mapScale.getCurrentScale());
    }

    public static final int getArmyPosY(int i) {
        return (int) ((((Game.getProvince(i).iCenterShiftY + Game.mapCoords.getPosY()) * Game.mapScale.getCurrentScale()) - 4.0f) - ImageManager.getImage(Images.progressBarFrame).getHeight());
    }

    public static final float getDailySiegeProgress(int i) {
        int i2 = 0;
        float siegeProgressPerDay = 0.0f;
        if (Game.getProvince(i).isOccupied()) {
            while (i2 < Game.getProvince(i).getArmySize()) {
                if (!Game.getProvince(i).getArmy(i2).inBattle && !Game.getProvince(i).getArmy(i2).inMovement && DiplomacyManager.isAtWar(Game.getProvinceData(i).getOccupiedByCivID(), Game.getProvince(i).getArmy(i2).civID)) {
                    siegeProgressPerDay += Game.getProvince(i).getArmy(i2).getSiegeProgressPerDay() * Math.min(Game.getProvince(i).getArmy(i2).fMorale, 1.0f);
                }
                i2++;
            }
        } else {
            while (i2 < Game.getProvince(i).getArmySize()) {
                if (!Game.getProvince(i).getArmy(i2).inBattle && !Game.getProvince(i).getArmy(i2).inMovement && DiplomacyManager.isAtWar(Game.getProvince(i).getCivID(), Game.getProvince(i).getArmy(i2).civID)) {
                    siegeProgressPerDay += Game.getProvince(i).getArmy(i2).getSiegeProgressPerDay() * Math.min(Game.getProvince(i).getArmy(i2).fMorale, 1.0f);
                }
                i2++;
            }
        }
        return Math.min(GameValues.siege.SIEGE_MAX_PROGRESS, siegeProgressPerDay);
    }

    public static final int getHeight() {
        return ImageManager.getImage(Game_Calendar.IMG_FORT_DEFENSE).getHeight() + (ImageManager.getImage(Images.progressBarFrame).getHeight() / 2);
    }

    public static int getSiegeDaysLeft(int i) {
        return (int) (Math.ceil(Game.getProvince(i).getFortDefense() - Game.getProvinceData4(i).getSiegeProgress()) / ((double) getDailySiegeProgress(i)));
    }

    public static final int getWidth() {
        return ImageManager.getImage(Images.progressBarFrameMask).getWidth();
    }

    public static final boolean isProvinceUnderSiege(int i) {
        for (int i2 = 0; i2 < iProvincesSize; i2++) {
            if (lProvinces.get(i2).intValue() == i) {
                return true;
            }
        }
        return false;
    }

    public static boolean isStillUnderSiege(int i) {
        try {
            if (Game.getProvince(i).isOccupied()) {
                for (int i2 = 0; i2 < Game.getProvince(i).getArmySize(); i2++) {
                    if (DiplomacyManager.isAtWar(Game.getProvinceData(i).getOccupiedByCivID(), Game.getProvince(i).getArmy(i2).civID)) {
                        return true;
                    }
                }
            } else {
                for (int i3 = 0; i3 < Game.getProvince(i).getArmySize(); i3++) {
                    if (DiplomacyManager.isAtWar(Game.getProvince(i).getCivID(), Game.getProvince(i).getArmy(i3).civID)) {
                        return true;
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        return false;
    }

    public static final void removeProvinceSiege(int i) {
        for (int i2 = 0; i2 < iProvincesSize; i2++) {
            if (lProvinces.get(i2).intValue() == i) {
                lProvinces.remove(i2);
                iProvincesSize = lProvinces.size();
                Game.getProvinceData4(i).setIsUnderSiege_Just(false);
                return;
            }
        }
    }

    public static final void updateSieges() {
        for (int i = 0; i < iProvincesSize; i++) {
            try {
                int iIntValue = lProvinces.get(i).intValue();
                if (Game.getProvinceData4(iIntValue).isUnderSiege() && isStillUnderSiege(iIntValue)) {
                    Game.getProvinceData4(iIntValue).setSiegeProgress(Math.min(Game.getProvinceData4(iIntValue).getSiegeProgress() + getDailySiegeProgress(iIntValue), Game.getProvince(iIntValue).getFortDefense()));
                    if (Game.getProvinceData4(iIntValue).getSiegeProgress() >= Game.getProvince(iIntValue).getFortDefense()) {
                        if (Game.getProvince(iIntValue).isOccupied()) {
                            Game.getProvince(iIntValue).retakeOccupiedProvince();
                        } else {
                            Game.getProvince(iIntValue).occupyProvince();
                        }
                        Game.getProvinceData4(iIntValue).setIsUnderSiege_Just(false);
                        removeProvinceSiege(iIntValue);
                    }
                } else {
                    lProvinces.remove(i);
                    iProvincesSize = lProvinces.size();
                    Game.getProvinceData4(iIntValue).setIsUnderSiege_Just(false);
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
    }
}
