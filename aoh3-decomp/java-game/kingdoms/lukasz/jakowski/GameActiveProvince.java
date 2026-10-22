package aoc.kingdoms.lukasz.jakowski;

import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmy;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class GameActiveProvince {
    private final void actionUp_setActiveProvinceID2(int i, int i2, int i3, int i4) {
        int currentScale = (int) (i / Game.mapScale.getCurrentScale());
        int currentScale2 = (int) (i2 / Game.mapScale.getCurrentScale());
        int i5 = 0;
        if (Game.regroupArmyMode) {
            for (int i6 = 0; i6 < Game.getProvincesSize(); i6++) {
                int iAbs = (int) Math.abs(Game.checkPosOfClickX(Game.mapCoords.getPosX() - currentScale));
                if (Game.getProvince(i6).getMinX() <= iAbs && Game.getProvince(i6).getMaxX() >= iAbs && Game.getProvince(i6).getMinY() <= (-Game.mapCoords.getPosY()) + currentScale2 && Game.getProvince(i6).getMaxY() >= (-Game.mapCoords.getPosY()) + currentScale2 && Game.pathContains(i6, iAbs, (-Game.mapCoords.getPosY()) + currentScale2)) {
                    Game.regroupArmy_AddProvince(i6);
                    return;
                }
            }
            if (Math.abs(Game.checkPosOfClickX(Game.mapCoords.getPosX() - currentScale)) + (((-Game.MAX_BELOW_ZERO_POINT_X) * Game.mapBG.iMapScale) / Game.mapScale.getCurrentScale()) > Game.mapBG.getWidth()) {
                while (i5 < Game.getProvincesSize()) {
                    if (Game.getProvince(i5).getBelowZero()) {
                        int iAbs2 = (int) Math.abs(Game.checkPosOfClickX(Game.mapCoords.getPosX() - currentScale));
                        if (Game.getProvince(i5).getMinX() <= iAbs2 - Game.mapBG.getWidth() && Game.getProvince(i5).getMaxX() >= iAbs2 - Game.mapBG.getWidth() && Game.getProvince(i5).getMinY() <= (-Game.mapCoords.getPosY()) + currentScale2 && Game.getProvince(i5).getMaxY() >= (-Game.mapCoords.getPosY()) + currentScale2 && Game.pathContains(i5, iAbs2 - Game.mapBG.getWidth(), (-Game.mapCoords.getPosY()) + currentScale2)) {
                            Game.regroupArmy_AddProvince(i5);
                            return;
                        }
                    }
                    i5++;
                }
                return;
            }
            return;
        }
        if (Game.invasionArmyMode) {
            for (int i7 = 0; i7 < Game.getProvincesSize(); i7++) {
                int iAbs3 = (int) Math.abs(Game.checkPosOfClickX(Game.mapCoords.getPosX() - currentScale));
                if (Game.getProvince(i7).getMinX() <= iAbs3 && Game.getProvince(i7).getMaxX() >= iAbs3 && Game.getProvince(i7).getMinY() <= (-Game.mapCoords.getPosY()) + currentScale2 && Game.getProvince(i7).getMaxY() >= (-Game.mapCoords.getPosY()) + currentScale2 && Game.pathContains(i7, iAbs3, (-Game.mapCoords.getPosY()) + currentScale2)) {
                    Game.invasionArmy_AddProvince(i7);
                    return;
                }
            }
            if (Math.abs(Game.checkPosOfClickX(Game.mapCoords.getPosX() - currentScale)) + (((-Game.MAX_BELOW_ZERO_POINT_X) * Game.mapBG.iMapScale) / Game.mapScale.getCurrentScale()) > Game.mapBG.getWidth()) {
                while (i5 < Game.getProvincesSize()) {
                    if (Game.getProvince(i5).getBelowZero()) {
                        int iAbs4 = (int) Math.abs(Game.checkPosOfClickX(Game.mapCoords.getPosX() - currentScale));
                        if (Game.getProvince(i5).getMinX() <= iAbs4 - Game.mapBG.getWidth() && Game.getProvince(i5).getMaxX() >= iAbs4 - Game.mapBG.getWidth() && Game.getProvince(i5).getMinY() <= (-Game.mapCoords.getPosY()) + currentScale2 && Game.getProvince(i5).getMaxY() >= (-Game.mapCoords.getPosY()) + currentScale2 && Game.pathContains(i5, iAbs4 - Game.mapBG.getWidth(), (-Game.mapCoords.getPosY()) + currentScale2)) {
                            Game.invasionArmy_AddProvince(i5);
                            return;
                        }
                    }
                    i5++;
                }
                return;
            }
            return;
        }
        if (Game.chooseProvinceMode) {
            Game.chooseProvinceMode = false;
            InGame_ProvinceArmy.chooseProvinceExtraY = 0;
            for (int i8 = 0; i8 < Game.getProvincesSize(); i8++) {
                int iAbs5 = (int) Math.abs(Game.checkPosOfClickX(Game.mapCoords.getPosX() - currentScale));
                if (Game.getProvince(i8).getMinX() <= iAbs5 && Game.getProvince(i8).getMaxX() >= iAbs5 && Game.getProvince(i8).getMinY() <= (-Game.mapCoords.getPosY()) + currentScale2 && Game.getProvince(i8).getMaxY() >= (-Game.mapCoords.getPosY()) + currentScale2 && Game.pathContains(i8, iAbs5, (-Game.mapCoords.getPosY()) + currentScale2)) {
                    moveActiveArmiesToProvinceID(i8);
                    return;
                }
            }
            if (Math.abs(Game.checkPosOfClickX(Game.mapCoords.getPosX() - currentScale)) + (((-Game.MAX_BELOW_ZERO_POINT_X) * Game.mapBG.iMapScale) / Game.mapScale.getCurrentScale()) > Game.mapBG.getWidth()) {
                while (i5 < Game.getProvincesSize()) {
                    if (Game.getProvince(i5).getBelowZero()) {
                        int iAbs6 = (int) Math.abs(Game.checkPosOfClickX(Game.mapCoords.getPosX() - currentScale));
                        if (Game.getProvince(i5).getMinX() <= iAbs6 - Game.mapBG.getWidth() && Game.getProvince(i5).getMaxX() >= iAbs6 - Game.mapBG.getWidth() && Game.getProvince(i5).getMinY() <= (-Game.mapCoords.getPosY()) + currentScale2 && Game.getProvince(i5).getMaxY() >= (-Game.mapCoords.getPosY()) + currentScale2 && Game.pathContains(i5, iAbs6 - Game.mapBG.getWidth(), (-Game.mapCoords.getPosY()) + currentScale2)) {
                            moveActiveArmiesToProvinceID(i5);
                            return;
                        }
                    }
                    i5++;
                }
                return;
            }
            return;
        }
        for (int i9 = 0; i9 < Game.getProvincesSize(); i9++) {
            int iAbs7 = (int) Math.abs(Game.checkPosOfClickX(Game.mapCoords.getPosX() - currentScale));
            if (Game.getProvince(i9).getMinX() <= iAbs7 && Game.getProvince(i9).getMaxX() >= iAbs7 && Game.getProvince(i9).getMinY() <= (-Game.mapCoords.getPosY()) + currentScale2 && Game.getProvince(i9).getMaxY() >= (-Game.mapCoords.getPosY()) + currentScale2 && Game.pathContains(i9, iAbs7, (-Game.mapCoords.getPosY()) + currentScale2)) {
                if (i9 == Game.iActiveProvince) {
                    Game.iOldActiveProvinceID = Game.iActiveProvince;
                    return;
                } else {
                    resetLastActiveProvince();
                    setActiveProvinceID(i9);
                    return;
                }
            }
        }
        if (Math.abs(Game.checkPosOfClickX(Game.mapCoords.getPosX() - currentScale)) + (((-Game.MAX_BELOW_ZERO_POINT_X) * Game.mapBG.iMapScale) / Game.mapScale.getCurrentScale()) > Game.mapBG.getWidth()) {
            while (i5 < Game.getProvincesSize()) {
                if (Game.getProvince(i5).getBelowZero()) {
                    int iAbs8 = (int) Math.abs(Game.checkPosOfClickX(Game.mapCoords.getPosX() - currentScale));
                    if (Game.getProvince(i5).getMinX() <= iAbs8 - Game.mapBG.getWidth() && Game.getProvince(i5).getMaxX() >= iAbs8 - Game.mapBG.getWidth() && Game.getProvince(i5).getMinY() <= (-Game.mapCoords.getPosY()) + currentScale2 && Game.getProvince(i5).getMaxY() >= (-Game.mapCoords.getPosY()) + currentScale2 && Game.pathContains(i5, iAbs8 - Game.mapBG.getWidth(), (-Game.mapCoords.getPosY()) + currentScale2)) {
                        if (i5 == Game.iActiveProvince) {
                            Game.iOldActiveProvinceID = Game.iActiveProvince;
                            return;
                        } else {
                            resetLastActiveProvince();
                            setActiveProvinceID(i5);
                            return;
                        }
                    }
                }
                i5++;
            }
        }
    }

    public final void actionUp_setActiveProvinceID(int i, int i2, int i3, int i4) {
        if (Game.mapScale.getScaleMode()) {
            return;
        }
        float f = i;
        if (Game.mapTouchManager.actionDownPosX + (CFG.PADDING * CFG.DENSITY) <= f || Game.mapTouchManager.actionDownPosX - (CFG.PADDING * CFG.DENSITY) >= f) {
            return;
        }
        float f2 = i2;
        if (Game.mapTouchManager.actionDownPosY + (CFG.PADDING * CFG.DENSITY) <= f2 || Game.mapTouchManager.actionDownPosY - (CFG.PADDING * CFG.DENSITY) >= f2) {
            return;
        }
        actionUp_setActiveProvinceID2(i, i2, i3, i4);
        if (!CFG.brushTool) {
            Game.mapModes.lMapModes.get(Game.mapModes.iActiveMapModeID).playSFX_ProvinceClick();
        }
        try {
            ProvinceTouchExtraAction.actionUp_SetActiveProvinceID_ExtraAction.extraAction(i, i2, i3, i4);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final int mouseOverProvinceID(int i, int i2) {
        int currentScale = (int) (i / Game.mapScale.getCurrentScale());
        int currentScale2 = (int) (i2 / Game.mapScale.getCurrentScale());
        for (int i3 = 0; i3 < Game.getProvincesSize(); i3++) {
            int iAbs = (int) Math.abs(Game.checkPosOfClickX(Game.mapCoords.getPosX() - currentScale));
            if (Game.getProvince(i3).getMinX() <= iAbs && Game.getProvince(i3).getMaxX() >= iAbs && Game.getProvince(i3).getMinY() <= (-Game.mapCoords.getPosY()) + currentScale2 && Game.getProvince(i3).getMaxY() >= (-Game.mapCoords.getPosY()) + currentScale2 && Game.pathContains(i3, iAbs, (-Game.mapCoords.getPosY()) + currentScale2)) {
                return i3;
            }
        }
        if (Math.abs(Game.checkPosOfClickX(Game.mapCoords.getPosX() - currentScale)) + (((-Game.MAX_BELOW_ZERO_POINT_X) * Game.mapBG.iMapScale) / Game.mapScale.getCurrentScale()) <= Game.mapBG.getWidth()) {
            return -1;
        }
        for (int i4 = 0; i4 < Game.getProvincesSize(); i4++) {
            if (Game.getProvince(i4).getBelowZero()) {
                int iAbs2 = (int) Math.abs(Game.checkPosOfClickX(Game.mapCoords.getPosX() - currentScale));
                if (Game.getProvince(i4).getMinX() <= iAbs2 - Game.mapBG.getWidth() && Game.getProvince(i4).getMaxX() >= iAbs2 - Game.mapBG.getWidth() && Game.getProvince(i4).getMinY() <= (-Game.mapCoords.getPosY()) + currentScale2 && Game.getProvince(i4).getMaxY() >= (-Game.mapCoords.getPosY()) + currentScale2 && Game.pathContains(i4, iAbs2 - Game.mapBG.getWidth(), (-Game.mapCoords.getPosY()) + currentScale2)) {
                    return i4;
                }
            }
        }
        return -1;
    }

    public final void moveActiveArmiesToProvinceID(int i) {
        for (int i2 = 0; i2 < Game.activeArmySize; i2++) {
            if (i != Game.activeArmy.get(i2).iProvinceID) {
                int i3 = 0;
                for (int i4 = 0; i4 < i2; i4++) {
                    if (Game.activeArmy.get(i4).iProvinceID == Game.activeArmy.get(i2).iProvinceID) {
                        i3++;
                    }
                }
                Game.player.playerData.invasion.removeInvasion(Game.activeArmy.get(i2).key);
                if (GameValues.move.PLAYER_CAN_MOVE_ALL_ARMIES || (Game.SPECTATOR_MODE && Game.SANDBOX)) {
                    if (Game.activeArmy.get(i2).iCivID < 0) {
                        Game.revolutionMoveUnits.newMove(Game.activeArmy.get(i2).iProvinceID, i, Game.activeArmy.get(i2).key, i3, false);
                    } else {
                        Game.getCiv(Game.activeArmy.get(i2).iCivID).newMove(Game.activeArmy.get(i2).iProvinceID, i, Game.activeArmy.get(i2).key, i3, false);
                    }
                } else if (Game.activeArmy.get(i2).iCivID == Game.player.iCivID || (GameValues.move.PLAYER_CAN_MOVE_VASSALS_ARMIES && Game.getCiv(Game.activeArmy.get(i2).iCivID).getPuppetOfCivID() == Game.player.iCivID)) {
                    Game.getCiv(Game.activeArmy.get(i2).iCivID).newMove(Game.activeArmy.get(i2).iProvinceID, i, Game.activeArmy.get(i2).key, i3, false);
                }
                Game.soundsManager.playMove();
                if (Game.menuManager.getVisibleInGame_ProvinceArmy()) {
                    Game.menuManager.rebuildInGame_ProvinceArmy(true, true);
                }
            } else {
                Game.player.playerData.invasion.removeInvasion(Game.activeArmy.get(i2).key);
                Game.getCiv(Game.activeArmy.get(i2).iCivID).cancelMove(Game.activeArmy.get(i2).key);
                if (Game.menuManager.getVisibleInGame_ProvinceArmy()) {
                    Game.menuManager.rebuildInGame_ProvinceArmy(true, true);
                }
            }
        }
    }

    public final void resetLastActiveProvince() {
        ProvinceBorderManager.action.resetProvinceID();
    }

    public final void setActiveProvinceID(int i) {
        try {
            Game.iOldActiveProvinceID = Game.iActiveProvince;
            Game.setActiveProvinceID(i);
            Game.activeProvince_Animation_Data.resetAnimationData();
            Game.clearActiveArmy();
            if (i >= 0 && Game.getProvince(i).getSeaProvince()) {
                for (int i2 = 0; i2 < Game.getProvince(i).getArmySize(); i2++) {
                    if (Game.getProvince(i).getArmy(i2).civID == Game.player.iCivID) {
                        Game.HoveredArmy hoveredArmy = new Game.HoveredArmy();
                        hoveredArmy.iProvinceID = i;
                        hoveredArmy.key = Game.getProvince(i).getArmy(i2).key;
                        hoveredArmy.iArmyID = i2;
                        hoveredArmy.iCivID = Game.getProvince(i).getArmy(i2).civID;
                        Game.addActiveArmy(hoveredArmy);
                    }
                }
                if (Game.activeArmySize > 0) {
                    Game.setActiveProvinceID(-1);
                    Game.menuManager.rebuildInGame_ProvinceArmy();
                    return;
                }
            }
            ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
        } catch (NullPointerException e) {
            CFG.exceptionStack(e);
        }
    }

    public final void setProvinceID_PPM(int i, int i2) {
        Game.animationManager.clickAnimation(i, i2);
        int provinceID_HoverAProvince = Game.setProvinceID_HoverAProvince((int) (i / Game.mapScale.getCurrentScale()), (int) (i2 / Game.mapScale.getCurrentScale()));
        if (provinceID_HoverAProvince >= 0) {
            if (Game.regroupArmyMode) {
                Game.regroupArmy_RemoveProvince(provinceID_HoverAProvince);
                return;
            }
            if (Game.invasionArmyMode) {
                Game.invasionArmy_RemoveProvince(provinceID_HoverAProvince);
                return;
            }
            for (int i3 = 0; i3 < Game.activeArmySize; i3++) {
                if (provinceID_HoverAProvince != Game.activeArmy.get(i3).iProvinceID) {
                    int i4 = 0;
                    for (int i5 = 0; i5 < i3; i5++) {
                        if (Game.activeArmy.get(i5).iProvinceID == Game.activeArmy.get(i3).iProvinceID) {
                            i4++;
                        }
                    }
                    Game.player.playerData.invasion.removeInvasion(Game.activeArmy.get(i3).key);
                    if (GameValues.move.PLAYER_CAN_MOVE_ALL_ARMIES || (Game.SPECTATOR_MODE && Game.SANDBOX)) {
                        if (Game.activeArmy.get(i3).iCivID < 0) {
                            Game.revolutionMoveUnits.newMove(Game.activeArmy.get(i3).iProvinceID, provinceID_HoverAProvince, Game.activeArmy.get(i3).key, i4, false);
                        } else {
                            Game.getCiv(Game.activeArmy.get(i3).iCivID).newMove(Game.activeArmy.get(i3).iProvinceID, provinceID_HoverAProvince, Game.activeArmy.get(i3).key, i4, false);
                        }
                    } else if (Game.activeArmy.get(i3).iCivID == Game.player.iCivID || (GameValues.move.PLAYER_CAN_MOVE_VASSALS_ARMIES && Game.getCiv(Game.activeArmy.get(i3).iCivID).getPuppetOfCivID() == Game.player.iCivID)) {
                        Game.getCiv(Game.activeArmy.get(i3).iCivID).newMove(Game.activeArmy.get(i3).iProvinceID, provinceID_HoverAProvince, Game.activeArmy.get(i3).key, i4, false);
                    }
                    Game.soundsManager.playMove();
                    if (Game.menuManager.getVisibleInGame_ProvinceArmy()) {
                        Game.menuManager.rebuildInGame_ProvinceArmy(true, true);
                    }
                } else {
                    Game.player.playerData.invasion.removeInvasion(Game.activeArmy.get(i3).key);
                    Game.getCiv(Game.activeArmy.get(i3).iCivID).cancelMove(Game.activeArmy.get(i3).key);
                    if (Game.menuManager.getVisibleInGame_ProvinceArmy()) {
                        Game.menuManager.rebuildInGame_ProvinceArmy(true, true);
                    }
                }
            }
        }
    }
}
