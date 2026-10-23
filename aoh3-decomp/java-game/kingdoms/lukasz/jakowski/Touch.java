package aoc.kingdoms.lukasz.jakowski;

import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.SiegeManager;
import aoc.kingdoms.lukasz.map.map.Ship.ShipManager;
import aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy;
import aoc.kingdoms.lukasz.map.province.ProvinceHover;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Touch {
    public static final int CAPITAL_FLAG_L = 4;
    public static final int CAPITAL_FLAG_M = 1;
    public static int buttonTouch;
    public static int mousePosX;
    public static int mousePosY;
    public static boolean selectArmiesMode;

    public static final int getMousePosX() {
        return mousePosX;
    }

    public static final int getMousePosY() {
        return mousePosY;
    }

    public static final boolean isMouseOverArmy(int i, int i2, int i3, int i4) {
        try {
            int armyPosX = ProvinceDrawArmy.getArmyPosX(i3, i4);
            int armyPosY = ProvinceDrawArmy.getArmyPosY(i3, i4);
            return i >= armyPosX && i <= armyPosX + ProvinceDrawArmy.getArmyWidth(Game.getProvince(i3).getArmy(i4).iArmyWidth) && i2 >= armyPosY && i2 <= armyPosY + ProvinceDrawArmy.getArmyHeight();
        } catch (Exception unused) {
            return false;
        }
    }

    public static final boolean isMouseOverBattle(int i, int i2, int i3) {
        try {
            return i >= Game.battleManager.getBattle(i3).posX && i <= Game.battleManager.getBattle(i3).posX + Game.battleManager.getBattle(i3).battleWidth && i2 >= Game.battleManager.getBattle(i3).posY && i2 <= Game.battleManager.getBattle(i3).posY + ImageManager.getImage(Images.army).getHeight();
        } catch (Exception unused) {
            return false;
        }
    }

    public static final boolean isMouseOverCapitalProvince_Flag(int i, int i2, int i3) {
        try {
            if (!Game.menuManager.getInGame() || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DIPLOMACY) {
                int drawPosX = Game.getProvince(i3).getCity(0).getDrawPosX(i3, Game.mapScale.getCurrentScale()) - (Game.getProvince(i3).getCity(0).getDrawWidth() / 2);
                int drawPosY = Game.getProvince(i3).getCity(0).getDrawPosY(i3, Game.mapScale.getCurrentScale());
                return i >= drawPosX && i <= drawPosX + ImageManager.getImage(Images.capitalLeft).getWidth() && i2 >= drawPosY && i2 <= drawPosY + ImageManager.getImage(Images.capitalLeft).getHeight();
            }
            if (Game.getCiv(Game.getProvince(i3).getCivID()).iCivRankID == 4) {
                int drawPosX2 = Game.getProvince(i3).getCity(0).getDrawPosX(i3, Game.mapScale.getCurrentScale()) - (ImageManager.getImage(Images.flagCapitalOver_l).getWidth() / 2);
                int drawPosY2 = Game.getProvince(i3).getCity(0).getDrawPosY(i3, Game.mapScale.getCurrentScale());
                return i >= drawPosX2 && i <= drawPosX2 + ImageManager.getImage(Images.flagCapitalOver_l).getWidth() && i2 >= drawPosY2 && i2 <= drawPosY2 + ImageManager.getImage(Images.flagCapitalOver_l).getHeight();
            }
            if (Game.getCiv(Game.getProvince(i3).getCivID()).iCivRankID > 1) {
                int drawPosX3 = Game.getProvince(i3).getCity(0).getDrawPosX(i3, Game.mapScale.getCurrentScale()) - (ImageManager.getImage(Images.flagCapitalOver).getWidth() / 2);
                int drawPosY3 = Game.getProvince(i3).getCity(0).getDrawPosY(i3, Game.mapScale.getCurrentScale());
                return i >= drawPosX3 && i <= drawPosX3 + ImageManager.getImage(Images.flagCapitalOver).getWidth() && i2 >= drawPosY3 && i2 <= drawPosY3 + ImageManager.getImage(Images.flagCapitalOver).getHeight();
            }
            int drawPosX4 = Game.getProvince(i3).getCity(0).getDrawPosX(i3, Game.mapScale.getCurrentScale()) - (ImageManager.getImage(Images.flagCapitalOver_s).getWidth() / 2);
            int drawPosY4 = Game.getProvince(i3).getCity(0).getDrawPosY(i3, Game.mapScale.getCurrentScale());
            return i >= drawPosX4 && i <= drawPosX4 + ImageManager.getImage(Images.flagCapitalOver_s).getWidth() && i2 >= drawPosY4 && i2 <= drawPosY4 + ImageManager.getImage(Images.flagCapitalOver_s).getHeight();
        } catch (Exception unused) {
            return false;
        }
    }

    public static final boolean isMouseOverShip(int i, int i2, int i3) {
        try {
            int posX = ((int) ((ShipManager.ships.get(i3).posX + Game.mapCoords.getPosX()) * Game.mapScale.getCurrentScale())) - (ShipManager.shipImg.get(0).get(0).getWidth() / 2);
            int posY = ((int) ((ShipManager.ships.get(i3).posY + Game.mapCoords.getPosY()) * Game.mapScale.getCurrentScale())) - (ShipManager.shipImg.get(0).get(0).getHeight() / 2);
            return i >= posX && i <= posX + ShipManager.shipImg.get(0).get(0).getWidth() && i2 >= posY && i2 <= posY + ShipManager.shipImg.get(0).get(0).getHeight();
        } catch (Exception unused) {
            return false;
        }
    }

    public static final boolean isMouseOverSiege(int i, int i2, int i3) {
        try {
            return i >= SiegeManager.getArmyPosX(i3) - (SiegeManager.getWidth() / 2) && i <= SiegeManager.getArmyPosX(i3) + (SiegeManager.getWidth() / 2) && i2 >= SiegeManager.getArmyPosY(i3) - SiegeManager.getHeight() && i2 <= SiegeManager.getArmyPosY(i3);
        } catch (Exception unused) {
            return false;
        }
    }

    public static final void resetAllModes() {
        Game.menuManager.setActiveSliderMenuID(-1);
        Game.menuManager.setActiveMenuElementID(-1);
        Game.menuManager.setCloseMenuMode(false);
        Game.menuManager.setMenu_MoveByTitleMode(false);
        Game.menuManager.setMenu_ResizeMode(false);
        Game.menuManager.setMenu_MoveInnerElements(false);
        Game.menuManager.setPieChartMode(false);
        Game.menuManager.setTextScrollableMode(false);
        Game.menuManager.setColorPickerMode(false);
        Game.menuManager.graphVertical_ScrollMode_X = false;
        Game.menuManager.graphVertical_ScrollMode_Y = false;
        Game.mapScale.resetScaleInfo();
        Game.mapScroll.resetScrollInfo();
        Game.mapTouchManager.selectMode = false;
    }

    protected static final void setMousePosXY(int i, int i2) {
        mousePosX = i;
        mousePosY = i2;
    }

    protected final void actionDown(int i, int i2, int i3, int i4) {
        if (i3 != 0 || Game.menuManager.actionDown(i, i2)) {
            return;
        }
        if (!selectArmiesMode) {
            Game.mapTouchManager.actionDown(i, i2, i3, i4);
            return;
        }
        Game.mapTouchManager.iSelectBoxX = i;
        Game.mapTouchManager.iSelectBoxY = i2;
        Game.mapTouchManager.iSelectBoxWidth = 1;
        Game.mapTouchManager.iSelectBoxHeight = 1;
        Game.mapTouchManager.selectMode = true;
        selectArmiesMode = false;
    }

    protected final void actionMove(int i, int i2, int i3) {
        if (i3 != 0 || Game.menuManager.actionMove(i, i2)) {
            return;
        }
        Game.mapTouchManager.actionMove(i, i2, i3);
    }

    protected final void actionMove(int i, int i2, int i3, int i4) {
        Game.mapTouchManager.actionMove(i, i2, i3, i4);
    }

    protected final void actionMove_Hover(int i, int i2) {
        if (Game.menuManager.getFromViewID() < 0) {
            Game.hoverManager.actionMove_Hover(i, i2, false);
            if (Game.hoverManager.hoverActiveMenuElementID >= 0 || Game.hoverManager.hoverActiveSliderMenuID >= 0 || Game.hoverManager.hoverActiveMenuTitleID >= 0) {
                Game.hoveredArmy.iProvinceID = -1;
                Game.hoveredBattle.iProvinceID = -1;
                Game.hoveredSiegeID = -1;
                Game.hoveredShipID = -1;
                Game.provinceHover_Informations = null;
                Game.iHoveredProvinceID = -1;
            } else if (!Renderer.drawArmyInProvince) {
                Game.updateHoveredProvince_HoverInMapMode(i, i2);
            } else if (Game.mapScale.getCurrentScale() < Game.DRAW_ARMY_MIN_SCALE) {
                Game.updateHoveredProvince_Hover(i, i2);
            } else if (Game.menuManager.getInGame()) {
                if (updateHoveredArmy(i, i2)) {
                    Game.iHoveredProvinceID = -1;
                    Game.hoveredBattle.iProvinceID = -1;
                    Game.hoveredSiegeID = -1;
                    Game.hoveredShipID = -1;
                } else if (updateHoveredBattle(i, i2)) {
                    Game.iHoveredProvinceID = -1;
                    Game.hoveredArmy.iProvinceID = -1;
                    Game.hoveredSiegeID = -1;
                    Game.hoveredShipID = -1;
                } else if (updateHoveredSiege(i, i2)) {
                    Game.iHoveredProvinceID = -1;
                    Game.hoveredArmy.iProvinceID = -1;
                    Game.hoveredBattle.iProvinceID = -1;
                    Game.hoveredShipID = -1;
                } else if (updateHoveredCapitalProvince_Flag(i, i2)) {
                    Game.iHoveredProvinceID = -1;
                    Game.hoveredBattle.iProvinceID = -1;
                    Game.hoveredSiegeID = -1;
                    Game.hoveredShipID = -1;
                } else if (updateHoveredShip(i, i2)) {
                    Game.iHoveredProvinceID = -1;
                    Game.hoveredArmy.iProvinceID = -1;
                    Game.hoveredBattle.iProvinceID = -1;
                    Game.hoveredSiegeID = -1;
                } else {
                    Game.updateHoveredProvince_Hover(i, i2);
                }
            } else if ((Game.menuManager.getInNewGame() || Game.menuManager.getInGameLost()) && updateHoveredCapitalProvince_Flag(i, i2)) {
                Game.iHoveredProvinceID = -1;
                Game.hoveredBattle.iProvinceID = -1;
                Game.hoveredSiegeID = -1;
                Game.hoveredShipID = -1;
            } else {
                Game.updateHoveredProvince_Hover(i, i2);
            }
            Game.hoverManager.updateHoveredMenuElement_Hover(i, i2);
        }
    }

    protected final void actionUp(int i, int i2, int i3, int i4) {
        if (i3 == 0) {
            if (!Game.menuManager.actionUp(i, i2, i3, i4)) {
                Game.mapTouchManager.actionUp(i, i2, i3, i4);
            }
            resetAllModes();
        } else if (Game.mapScale.getScaleMode()) {
            resetAllModes();
        }
        if (CFG.isDesktop()) {
            return;
        }
        Game.hoverManager.resetHoverActive_Menu();
    }

    public final boolean updateHoveredArmy(int i, int i2) {
        try {
            if (Game.hoveredArmy.iProvinceID >= 0) {
                if (Game.getProvince(Game.hoveredArmy.iProvinceID).getFogDrawArmy() && Game.hoveredArmy.iArmyID < Game.getProvince(Game.hoveredArmy.iProvinceID).getArmySize() && !Game.getProvince(Game.hoveredArmy.iProvinceID).getArmy(Game.hoveredArmy.iArmyID).inBattle && isMouseOverArmy(i, i2, Game.hoveredArmy.iProvinceID, Game.hoveredArmy.iArmyID)) {
                    return true;
                }
                Game.hoveredArmy.iProvinceID = -1;
                Game.hoveredArmy.iArmyID = 0;
            }
            for (int i3 = 0; i3 < Game.NUM_OF_PROVINCES_IN_VIEW; i3++) {
                if (Game.getProvince(Game.getProvinceInViewID(i3)).getFogDrawArmy()) {
                    for (int i4 = 0; i4 < Game.getProvince(Game.getProvinceInViewID(i3)).getArmySize(); i4++) {
                        if (!Game.getProvince(Game.getProvinceInViewID(i3)).getArmy(i4).inBattle && isMouseOverArmy(i, i2, Game.getProvinceInViewID(i3), i4)) {
                            Game.hoveredArmy.iProvinceID = Game.getProvinceInViewID(i3);
                            Game.hoveredArmy.iArmyID = i4;
                            Game.hoveredArmy.key = Game.getProvince(Game.getProvinceInViewID(i3)).getArmy(i4).key;
                            Game.hoveredArmy.iCivID = Game.getProvince(Game.getProvinceInViewID(i3)).getArmy(i4).civID;
                            ProvinceHover.updateProvinceHoverArmy();
                            Game.animationHover.resetAnimationData();
                            return true;
                        }
                    }
                }
            }
            for (int i5 = 0; i5 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i5++) {
                if (Game.getProvince(Game.getExtraProvinceInViewID(i5)).getFogDrawArmy()) {
                    for (int i6 = 0; i6 < Game.getProvince(Game.getExtraProvinceInViewID(i5)).getArmySize(); i6++) {
                        if (!Game.getProvince(Game.getExtraProvinceInViewID(i5)).getArmy(i6).inBattle && isMouseOverArmy(i, i2, Game.getExtraProvinceInViewID(i5), i6)) {
                            Game.hoveredArmy.iProvinceID = Game.getExtraProvinceInViewID(i5);
                            Game.hoveredArmy.iArmyID = i6;
                            Game.hoveredArmy.key = Game.getProvince(Game.getExtraProvinceInViewID(i5)).getArmy(i6).key;
                            Game.hoveredArmy.iCivID = Game.getProvince(Game.getExtraProvinceInViewID(i5)).getArmy(i6).civID;
                            ProvinceHover.updateProvinceHoverArmy();
                            Game.animationHover.resetAnimationData();
                            return true;
                        }
                    }
                }
            }
            for (int i7 = 0; i7 < Game.NUM_OF_SEA_PROVINCES_IN_VIEW; i7++) {
                if (Game.getProvince(Game.getSeaProvinceInViewID(i7)).getFogDrawArmy()) {
                    for (int i8 = 0; i8 < Game.getProvince(Game.getSeaProvinceInViewID(i7)).getArmySize(); i8++) {
                        if (!Game.getProvince(Game.getSeaProvinceInViewID(i7)).getArmy(i8).inBattle && isMouseOverArmy(i, i2, Game.getSeaProvinceInViewID(i7), i8)) {
                            Game.hoveredArmy.iProvinceID = Game.getSeaProvinceInViewID(i7);
                            Game.hoveredArmy.iArmyID = i8;
                            Game.hoveredArmy.key = Game.getProvince(Game.getSeaProvinceInViewID(i7)).getArmy(i8).key;
                            Game.hoveredArmy.iCivID = Game.getProvince(Game.getSeaProvinceInViewID(i7)).getArmy(i8).civID;
                            ProvinceHover.updateProvinceHoverArmy();
                            Game.animationHover.resetAnimationData();
                            return true;
                        }
                    }
                }
            }
            for (int i9 = 0; i9 < Game.NUM_OF_WASTELAND_PROVINCES_IN_VIEW; i9++) {
                if (Game.getProvince(Game.getWastelandProvinceInViewID(i9)).getFogDrawArmy()) {
                    for (int i10 = 0; i10 < Game.getProvince(Game.getWastelandProvinceInViewID(i9)).getArmySize(); i10++) {
                        if (!Game.getProvince(Game.getWastelandProvinceInViewID(i9)).getArmy(i10).inBattle && isMouseOverArmy(i, i2, Game.getWastelandProvinceInViewID(i9), i10)) {
                            Game.hoveredArmy.iProvinceID = Game.getWastelandProvinceInViewID(i9);
                            Game.hoveredArmy.iArmyID = i10;
                            Game.hoveredArmy.key = Game.getProvince(Game.getWastelandProvinceInViewID(i9)).getArmy(i10).key;
                            Game.hoveredArmy.iCivID = Game.getProvince(Game.getWastelandProvinceInViewID(i9)).getArmy(i10).civID;
                            ProvinceHover.updateProvinceHoverArmy();
                            Game.animationHover.resetAnimationData();
                            return true;
                        }
                    }
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public final boolean updateHoveredBattle(int i, int i2) {
        try {
            if (Game.hoveredBattle.iProvinceID >= 0) {
                for (int i3 = 0; i3 < Game.battleManager.getBattleSize(); i3++) {
                    if (Game.battleManager.getBattle(i3).provinceID == Game.hoveredBattle.iProvinceID && Game.battleManager.getBattle(i3).key.equals(Game.hoveredBattle.key)) {
                        if (!isMouseOverBattle(i, i2, i3)) {
                            Game.hoveredBattle.iProvinceID = -1;
                            break;
                        }
                        return true;
                    }
                }
            }
            for (int i4 = 0; i4 < Game.battleManager.getBattleSize(); i4++) {
                if (isMouseOverBattle(i, i2, i4)) {
                    Game.hoveredBattle.iProvinceID = Game.battleManager.getBattle(i4).provinceID;
                    Game.hoveredBattle.key = Game.battleManager.getBattle(i4).key;
                    ProvinceHover.updateProvinceHoverBattle();
                    Game.animationHover.resetAnimationData();
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public final boolean updateHoveredCapitalProvince_Flag(int i, int i2) {
        if (Game.iHoveredCapitalProvinceID >= 0) {
            if (isMouseOverCapitalProvince_Flag(i, i2, Game.iHoveredCapitalProvinceID)) {
                return true;
            }
            Game.iHoveredCapitalProvinceID = -1;
        }
        for (int i3 = 0; i3 < Game.NUM_OF_PROVINCES_IN_VIEW; i3++) {
            if (Game.getProvince(Game.getProvinceInViewID(i3)).isCapital && Game.getProvince(Game.getProvinceInViewID(i3)).getCitiesSize() > 0 && isMouseOverCapitalProvince_Flag(i, i2, Game.getProvinceInViewID(i3))) {
                Game.iHoveredCapitalProvinceID = Game.getProvinceInViewID(i3);
                ProvinceHover.updateProvinceHoverCapitalFlag();
                return true;
            }
        }
        for (int i4 = 0; i4 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i4++) {
            if (Game.getProvince(Game.getExtraProvinceInViewID(i4)).isCapital && Game.getProvince(Game.getExtraProvinceInViewID(i4)).getCitiesSize() > 0 && isMouseOverCapitalProvince_Flag(i, i2, Game.getExtraProvinceInViewID(i4))) {
                Game.iHoveredCapitalProvinceID = Game.getExtraProvinceInViewID(i4);
                ProvinceHover.updateProvinceHoverCapitalFlag();
                return true;
            }
        }
        return false;
    }

    public final boolean updateHoveredShip(int i, int i2) {
        if (Game.hoveredShipID >= 0) {
            if (isMouseOverShip(i, i2, Game.hoveredShipID)) {
                return true;
            }
            Game.hoveredShipID = -1;
        }
        for (int i3 = 0; i3 < ShipManager.shipLinesSize; i3++) {
            if (isMouseOverShip(i, i2, i3)) {
                Game.hoveredShipID = i3;
                ProvinceHover.updateShipHovered();
                return true;
            }
        }
        return false;
    }

    public final boolean updateHoveredSiege(int i, int i2) {
        try {
            if (Game.hoveredSiegeID >= 0) {
                if (Game.getProvinceData4(Game.hoveredSiegeID).isUnderSiege() && isMouseOverSiege(i, i2, Game.hoveredSiegeID)) {
                    return true;
                }
                Game.hoveredSiegeID = -1;
            }
            for (int i3 = 0; i3 < SiegeManager.iProvincesSize; i3++) {
                if (isMouseOverSiege(i, i2, SiegeManager.lProvinces.get(i3).intValue())) {
                    Game.hoveredSiegeID = SiegeManager.lProvinces.get(i3).intValue();
                    ProvinceHover.updateProvinceHoverSiege();
                    Game.animationHover.resetAnimationData();
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }
}
