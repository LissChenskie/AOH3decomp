package aoc.kingdoms.lukasz.map.map;

import aoc.kingdoms.lukasz.jakowski.AA_KeyManager;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.jakowski.Touch;
import aoc.kingdoms.lukasz.map.SiegeManager;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy;
import aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction;
import aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ;
import aoc.kingdoms.lukasz.menusInGame.InGame_CivBonuses;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceSiege;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMapContinents;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioAssign;
import aoc.kingdoms.lukasz.menusScenarioEditor.Wasteland.ScenarioWasteland;
import aoc.kingdoms.lukasz.menusScenarioEditor.YGiX.gpVDKipRURuzw;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MapTouchManager {
    protected static boolean reverseDirectionX = true;
    protected static boolean reverseDirectionY = true;
    public int iSelectBoxHeight;
    public int iSelectBoxWidth;
    public int iSelectBoxX;
    public int iSelectBoxY;
    public int iStartMovePosX;
    public int iStartMovePosY;
    public ReverseDirection mapMoveDirectionX;
    public ReverseDirection2 mapMoveDirectionX2;
    public ReverseDirection mapMoveDirectionY;
    public ReverseDirection2 mapMoveDirectionY2;
    public boolean updateStartMovePosX;
    public boolean updateStartMovePosY;
    public int actionDownPosX = 0;
    public int actionDownPosY = 0;
    private long lActionDownTime = 0;
    public boolean disableMovingMap = false;
    public boolean enableSelectMode = true;
    public boolean selectMode = false;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapTouchManager$1, reason: invalid class name */
    class AnonymousClass1 implements ReverseDirection {
        AnonymousClass1() {
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapTouchManager.ReverseDirection
        public int getStartMovePos(int i) {
            return Game.mapCoords.getPosX() - i;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapTouchManager$2, reason: invalid class name */
    class AnonymousClass2 implements ReverseDirection {
        AnonymousClass2() {
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapTouchManager.ReverseDirection
        public int getStartMovePos(int i) {
            return Game.mapCoords.getPosX() + i;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapTouchManager$3, reason: invalid class name */
    class AnonymousClass3 implements ReverseDirection {
        AnonymousClass3() {
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapTouchManager.ReverseDirection
        public int getStartMovePos(int i) {
            return Game.mapCoords.getPosY() - i;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapTouchManager$4, reason: invalid class name */
    class AnonymousClass4 implements ReverseDirection {
        AnonymousClass4() {
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapTouchManager.ReverseDirection
        public int getStartMovePos(int i) {
            return Game.mapCoords.getPosY() + i;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapTouchManager$5, reason: invalid class name */
    class AnonymousClass5 implements ReverseDirection2 {
        AnonymousClass5() {
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapTouchManager.ReverseDirection2
        public int getNewPos(int i, int i2) {
            return i + i2;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapTouchManager$6, reason: invalid class name */
    class AnonymousClass6 implements ReverseDirection2 {
        AnonymousClass6() {
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapTouchManager.ReverseDirection2
        public int getNewPos(int i, int i2) {
            return i - i2;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapTouchManager$7, reason: invalid class name */
    class AnonymousClass7 implements ReverseDirection2 {
        AnonymousClass7() {
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapTouchManager.ReverseDirection2
        public int getNewPos(int i, int i2) {
            return i + i2;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapTouchManager$8, reason: invalid class name */
    class AnonymousClass8 implements ReverseDirection2 {
        AnonymousClass8() {
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapTouchManager.ReverseDirection2
        public int getNewPos(int i, int i2) {
            return i - i2;
        }
    }

    public interface ReverseDirection {
        int getStartMovePos(int i);
    }

    public interface ReverseDirection2 {
        int getNewPos(int i, int i2);
    }

    public MapTouchManager() {
        buildReversePos();
    }

    public static final boolean actionUpSelectModeIsInBox(int i, int i2, int i3, int i4, int i5, int i6) {
        int i7;
        try {
            int armyPosX = ProvinceDrawArmy.getArmyPosX(i, i2);
            int armyPosY = ProvinceDrawArmy.getArmyPosY(i, i2);
            int armyWidth = ProvinceDrawArmy.getArmyWidth(Game.getProvince(i).getArmy(i2).iArmyWidth);
            int armyHeight = ProvinceDrawArmy.getArmyHeight();
            if ((armyPosX >= i5 || armyPosX <= i3) && ((i7 = armyPosX + armyWidth) >= i5 || i7 <= i3)) {
                return false;
            }
            if (armyPosY > i4 && armyPosY < i6) {
                return true;
            }
            int i8 = armyPosY + armyHeight;
            return i8 > i4 && i8 < i6;
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return false;
        }
    }

    public static final boolean actionUpSelectModeIsInBox_Center(int i, int i2, int i3, int i4, int i5) {
        int i6;
        int i7;
        try {
            int detailsPosX_2 = ProvinceDrawArmy.getDetailsPosX_2(i);
            int detailsPosY_2 = ProvinceDrawArmy.getDetailsPosY_2(i);
            if ((detailsPosX_2 >= i4 || detailsPosX_2 <= i2) && ((i6 = detailsPosX_2 + 1) >= i4 || i6 <= i2)) {
                return false;
            }
            return (detailsPosY_2 > i3 && detailsPosY_2 < i5) || ((i7 = detailsPosY_2 + 1) > i3 && i7 < i5);
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return false;
        }
    }

    public final void Scroll(int i) {
        Game.mapScale.scrollScale(i);
    }

    public final void actionDown(int i, int i2, int i3, int i4) {
        try {
            setActionDownPosXY(i, i2);
            if (this.enableSelectMode && i4 == Game.settingsManager.MAP_SELECT_ARMY_BUTTON) {
                this.iSelectBoxX = i;
                this.iSelectBoxY = i2;
                this.iSelectBoxWidth = 1;
                this.iSelectBoxHeight = 1;
                this.selectMode = true;
                Game.setCursorDrag();
                return;
            }
            this.selectMode = false;
            if (Game.mapScroll.getScrollingTheMap()) {
                Game.mapScroll.stopScrollingTheMap();
            }
            try {
                ProvinceTouchExtraAction.actionDown_ExtraAction.extraAction(i, i2, i3, i4);
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }

    public final void actionMove(int i, int i2, int i3) {
        try {
            if (CFG.brushTool && Touch.buttonTouch == 0) {
                this.actionDownPosX = i;
                this.actionDownPosY = i2;
                Game.gameActiveProvince.actionUp_setActiveProvinceID(i, i2, i3, 0);
            } else if (!this.selectMode) {
                actionMoveMap(i, i2, i3);
            } else {
                this.iSelectBoxWidth = i - this.iSelectBoxX;
                this.iSelectBoxHeight = i2 - this.iSelectBoxY;
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void actionMove(int i, int i2, int i3, int i4) {
        try {
            if (!Game.mapCoords.disableMovingMap && Game.mapScale.getEnableScaling()) {
                if (Game.mapScale.getStartScalePosY() <= 0) {
                    Game.mapScale.startScaleTheMap(i, i3, i2, i4);
                } else {
                    Game.mapScale.scaleTheMap(i, i3, i2, i4);
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    protected final void actionMoveMap(int i, int i2, int i3) {
        try {
            if (Game.mapTouchManager.disableMovingMap) {
                try {
                    ProvinceTouchExtraAction.actionMove_ExtraAction.extraAction(i, i2, i3, 0);
                    return;
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                    return;
                }
            }
            if (this.updateStartMovePosX || this.updateStartMovePosY) {
                updateStartMovePosXY(i, i2);
                this.updateStartMovePosX = false;
                this.updateStartMovePosY = false;
            }
            Game.mapCoords.setNewPosX(this.mapMoveDirectionX2.getNewPos(this.iStartMovePosX, (int) (i / Game.mapScale.getCurrentScale())));
            Game.mapCoords.setNewPosY(this.mapMoveDirectionY2.getNewPos(this.iStartMovePosY, (int) (i2 / Game.mapScale.getCurrentScale())));
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }

    public final void actionUp(int i, int i2, int i3, int i4) {
        try {
            boolean z = true;
            if (Game.mapScale.getEnableScaling() && (i4 == Game.settingsManager.MAP_MOVE || i4 == 1)) {
                Game.mapScale.resetScaleOfMap(CFG.currentTimeMillis);
            }
            if (this.selectMode && (i4 == Game.settingsManager.MAP_SELECT_ARMY_BUTTON || !CFG.isDesktop())) {
                this.selectMode = false;
                Game.setCursorDefault();
                actionUpSelectMode(i, i2);
                return;
            }
            if (Game.menuManager.getInGame() && !Game.chooseProvinceMode && Math.abs(i - this.actionDownPosX) < CFG.PADDING / 2) {
                if (i4 == 1) {
                    if (Game.activeArmySize > 0) {
                        Game.gameActiveProvince.setProvinceID_PPM(i, i2);
                        return;
                    }
                    if (Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_RECRUIT_ARMY && Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_BUILDING && Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_NEW_ARMY_CHOOSE_PROVINCE && Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_NUKE_CHOOSE_PROVINCE && Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_COLONIZE_CHOOSE_PROVINCE && Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_WARS && Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_MERCENARIES_CHOOSE_PROVINCE && Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_PEACE_VIEW) {
                        if (Game.iHoveredProvinceID >= 0) {
                            Game.setActiveProvinceID(Game.iHoveredProvinceID);
                            ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
                        }
                        if (!Game.menuManager.getVisibleInGame_Civ()) {
                            Game.menuManager.rebuildInGame_Civ();
                            Game.soundsManager.playSound(Game.soundsManager.getDiplomacy());
                            if (!Game.menuManager.getVisibleInGame_CivBonuses() || InGame_Civ.iActiveCivID == 0 || InGame_CivBonuses.iCivID == InGame_Civ.iActiveCivID) {
                                return;
                            }
                            InGame_CivBonuses.iCivID = InGame_Civ.iActiveCivID;
                            Game.menuManager.rebuildInGame_CivBonuses();
                            Game.menuManager.setVisibleInGame_CivBonuses(true);
                            InGame_CivBonuses.lTime = 0L;
                            return;
                        }
                        if (Game.iActiveProvince >= 0 && Game.getProvince(Game.iActiveProvince).getCivID() == InGame_Civ.iActiveCivID) {
                            Game.menuManager.setVisibleInGame_Civ(false);
                            Game.gameActiveProvince.resetLastActiveProvince();
                            Game.setActiveProvinceID(-1);
                            return;
                        }
                        Game.menuManager.rebuildInGame_Civ();
                        InGame_Civ.lTime = 0L;
                        Game.soundsManager.playSound(Game.soundsManager.getDiplomacy());
                        if (!Game.menuManager.getVisibleInGame_CivBonuses() || InGame_Civ.iActiveCivID == 0 || InGame_CivBonuses.iCivID == InGame_Civ.iActiveCivID) {
                            return;
                        }
                        InGame_CivBonuses.iCivID = InGame_Civ.iActiveCivID;
                        Game.menuManager.rebuildInGame_CivBonuses();
                        Game.menuManager.setVisibleInGame_CivBonuses(true);
                        InGame_CivBonuses.lTime = 0L;
                        return;
                    }
                } else if (Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_RECRUIT_ARMY && Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_NEW_ARMY_CHOOSE_PROVINCE && Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_NUKE_CHOOSE_PROVINCE && Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_COLONIZE_CHOOSE_PROVINCE && Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_MERCENARIES_CHOOSE_PROVINCE && Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_INVEST_IN_ECONOMY && Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_DEVELOP_INFRASTRUCTURE && Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_INCREASE_TAX_EFFICIENCY && Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_INCREASE_MANPOWER && Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_MOVE_CAPITAL && Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_INCREASE_GROWTH_RATE && Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_BUILDING && Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_CONVERT_RELIGION && Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_CORE && Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_PEACE_VIEW && Game.mapScale.getCurrentScale() >= Game.DRAW_ARMY_MIN_SCALE && Renderer.drawArmyInProvince) {
                    if (!CFG.isDesktop()) {
                        for (int i5 = 0; i5 < Game.battleManager.getBattleSize(); i5++) {
                            if (Touch.isMouseOverBattle(i, i2, i5)) {
                                InGame_Battle.iProvinceID = Game.battleManager.getBattle(i5).provinceID;
                                InGame_Battle.key = Game.battleManager.getBattle(i5).key;
                                if (Game.menuManager.getVisibleInGame_Siege()) {
                                    Game.menuManager.setVisibleInGame_Siege(false);
                                }
                                if (Game.menuManager.getVisibleInGame_War()) {
                                    Game.menuManager.setVisibleInGame_War(false);
                                }
                                Game.menuManager.showInGame_Battle_HideMenus();
                                Game.menuManager.rebuildInGame_Battle();
                                Game.gameActiveProvince.resetLastActiveProvince();
                                Game.setActiveProvinceID(-1);
                                Game.clearActiveArmy();
                                return;
                            }
                        }
                        for (int i6 = 0; i6 < SiegeManager.iProvincesSize; i6++) {
                            if (Touch.isMouseOverSiege(i, i2, SiegeManager.lProvinces.get(i6).intValue())) {
                                if (Game.menuManager.getVisibleInGame_Siege() && InGame_ProvinceSiege.iProvinceID == SiegeManager.lProvinces.get(i6).intValue()) {
                                    Game.menuManager.setVisibleInGame_Siege(false);
                                    return;
                                }
                                InGame_ProvinceSiege.iProvinceID = SiegeManager.lProvinces.get(i6).intValue();
                                if (Game.menuManager.getVisibleInGame_Battle()) {
                                    Game.menuManager.setVisibleInGame_Battle(false);
                                }
                                if (Game.menuManager.getVisibleInGame_War()) {
                                    Game.menuManager.setVisibleInGame_War(false);
                                }
                                Game.menuManager.showInGame_Battle_HideMenus();
                                Game.menuManager.rebuildInGame_Siege();
                                Game.soundsManager.playSound(SoundsManager.SIEGE);
                                Game.gameActiveProvince.resetLastActiveProvince();
                                Game.setActiveProvinceID(-1);
                                Game.clearActiveArmy();
                                return;
                            }
                        }
                        for (int i7 = 0; i7 < Game.NUM_OF_PROVINCES_IN_VIEW; i7++) {
                            if (Game.getProvince(Game.getProvinceInViewID(i7)).getFogDrawArmy()) {
                                for (int i8 = 0; i8 < Game.getProvince(Game.getProvinceInViewID(i7)).getArmySize(); i8++) {
                                    if (!Game.getProvince(Game.getProvinceInViewID(i7)).getArmy(i8).inBattle && Touch.isMouseOverArmy(i, i2, Game.getProvinceInViewID(i7), i8)) {
                                        Game.clearActiveArmy();
                                        Game.HoveredArmy hoveredArmy = new Game.HoveredArmy();
                                        hoveredArmy.key = Game.getProvince(Game.getProvinceInViewID(i7)).getArmy(i8).key;
                                        hoveredArmy.iCivID = Game.getProvince(Game.getProvinceInViewID(i7)).getArmy(i8).civID;
                                        hoveredArmy.iProvinceID = Game.getProvinceInViewID(i7);
                                        hoveredArmy.iArmyID = i8;
                                        Game.addActiveArmy(hoveredArmy);
                                        ProvinceTouchExtraAction.actionUp_SetActiveArmy();
                                        return;
                                    }
                                }
                            }
                        }
                        for (int i9 = 0; i9 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i9++) {
                            if (Game.getProvince(Game.getExtraProvinceInViewID(i9)).getFogDrawArmy()) {
                                for (int i10 = 0; i10 < Game.getProvince(Game.getExtraProvinceInViewID(i9)).getArmySize(); i10++) {
                                    if (!Game.getProvince(Game.getExtraProvinceInViewID(i9)).getArmy(i10).inBattle && Touch.isMouseOverArmy(i, i2, Game.getExtraProvinceInViewID(i9), i10)) {
                                        Game.clearActiveArmy();
                                        Game.HoveredArmy hoveredArmy2 = new Game.HoveredArmy();
                                        hoveredArmy2.key = Game.getProvince(Game.getExtraProvinceInViewID(i9)).getArmy(i10).key;
                                        hoveredArmy2.iCivID = Game.getProvince(Game.getExtraProvinceInViewID(i9)).getArmy(i10).civID;
                                        hoveredArmy2.iProvinceID = Game.getExtraProvinceInViewID(i9);
                                        hoveredArmy2.iArmyID = i10;
                                        Game.addActiveArmy(hoveredArmy2);
                                        ProvinceTouchExtraAction.actionUp_SetActiveArmy();
                                        return;
                                    }
                                }
                            }
                        }
                        for (int i11 = 0; i11 < Game.NUM_OF_SEA_PROVINCES_IN_VIEW; i11++) {
                            if (Game.getProvince(Game.getSeaProvinceInViewID(i11)).getFogDrawArmy()) {
                                for (int i12 = 0; i12 < Game.getProvince(Game.getSeaProvinceInViewID(i11)).getArmySize(); i12++) {
                                    if (!Game.getProvince(Game.getSeaProvinceInViewID(i11)).getArmy(i12).inBattle && Touch.isMouseOverArmy(i, i2, Game.getSeaProvinceInViewID(i11), i12)) {
                                        Game.clearActiveArmy();
                                        Game.HoveredArmy hoveredArmy3 = new Game.HoveredArmy();
                                        hoveredArmy3.key = Game.getProvince(Game.getSeaProvinceInViewID(i11)).getArmy(i12).key;
                                        hoveredArmy3.iCivID = Game.getProvince(Game.getSeaProvinceInViewID(i11)).getArmy(i12).civID;
                                        hoveredArmy3.iProvinceID = Game.getSeaProvinceInViewID(i11);
                                        hoveredArmy3.iArmyID = i12;
                                        Game.addActiveArmy(hoveredArmy3);
                                        ProvinceTouchExtraAction.actionUp_SetActiveArmy();
                                        return;
                                    }
                                }
                            }
                        }
                        for (int i13 = 0; i13 < Game.NUM_OF_WASTELAND_PROVINCES_IN_VIEW; i13++) {
                            if (Game.getProvince(Game.getWastelandProvinceInViewID(i13)).getFogDrawArmy()) {
                                for (int i14 = 0; i14 < Game.getProvince(Game.getWastelandProvinceInViewID(i13)).getArmySize(); i14++) {
                                    if (!Game.getProvince(Game.getWastelandProvinceInViewID(i13)).getArmy(i14).inBattle && Touch.isMouseOverArmy(i, i2, Game.getWastelandProvinceInViewID(i13), i14)) {
                                        Game.clearActiveArmy();
                                        Game.HoveredArmy hoveredArmy4 = new Game.HoveredArmy();
                                        hoveredArmy4.key = Game.getProvince(Game.getWastelandProvinceInViewID(i13)).getArmy(i14).key;
                                        hoveredArmy4.iCivID = Game.getProvince(Game.getWastelandProvinceInViewID(i13)).getArmy(i14).civID;
                                        hoveredArmy4.iProvinceID = Game.getWastelandProvinceInViewID(i13);
                                        hoveredArmy4.iArmyID = i14;
                                        Game.addActiveArmy(hoveredArmy4);
                                        ProvinceTouchExtraAction.actionUp_SetActiveArmy();
                                        return;
                                    }
                                }
                            }
                        }
                        for (int i15 = 0; i15 < Game.NUM_OF_PROVINCES_IN_VIEW; i15++) {
                            if (Game.getProvince(Game.getProvinceInViewID(i15)).isCapital && Game.getProvince(Game.getProvinceInViewID(i15)).getCitiesSize() > 0 && Touch.isMouseOverCapitalProvince_Flag(i, i2, Game.getProvinceInViewID(i15))) {
                                Game.gameActiveProvince.resetLastActiveProvince();
                                Game.iHoveredCapitalProvinceID = Game.getProvinceInViewID(i15);
                                Game.setActiveProvinceID(Game.iHoveredCapitalProvinceID);
                                ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
                                Game.animationHover.resetAnimationData();
                                if (!Game.menuManager.getVisibleInGame_Civ()) {
                                    Game.menuManager.rebuildInGame_Civ();
                                    if (Game.menuManager.getVisibleInGame_CivBonuses() && Game.getProvince(Game.iHoveredCapitalProvinceID).getCivID() != 0 && InGame_CivBonuses.iCivID != Game.getProvince(Game.iHoveredCapitalProvinceID).getCivID()) {
                                        InGame_CivBonuses.iCivID = Game.getProvince(Game.iHoveredCapitalProvinceID).getCivID();
                                        Game.menuManager.rebuildInGame_CivBonuses();
                                        Game.menuManager.setVisibleInGame_CivBonuses(true);
                                        InGame_CivBonuses.lTime = 0L;
                                    }
                                    Game.soundsManager.playSound(Game.soundsManager.getDiplomacy());
                                } else if (InGame_Civ.iActiveCivID != Game.getProvince(Game.iHoveredCapitalProvinceID).getCivID()) {
                                    Game.menuManager.rebuildInGame_Civ();
                                    InGame_Civ.lTime = 0L;
                                    if (Game.menuManager.getVisibleInGame_CivBonuses() && Game.getProvince(Game.iHoveredCapitalProvinceID).getCivID() != 0 && InGame_CivBonuses.iCivID != Game.getProvince(Game.iHoveredCapitalProvinceID).getCivID()) {
                                        InGame_CivBonuses.iCivID = Game.getProvince(Game.iHoveredCapitalProvinceID).getCivID();
                                        Game.menuManager.rebuildInGame_CivBonuses();
                                        Game.menuManager.setVisibleInGame_CivBonuses(true);
                                        InGame_CivBonuses.lTime = 0L;
                                    }
                                    Game.soundsManager.playSound(Game.soundsManager.getDiplomacy());
                                } else {
                                    Game.menuManager.setVisibleInGame_Civ(false);
                                    Game.soundsManager.playSound(SoundsManager.SOUND_CLICK_TOP);
                                }
                                Game.gameActiveProvince.resetLastActiveProvince();
                                Game.setActiveProvinceID(-1);
                                return;
                            }
                        }
                        for (int i16 = 0; i16 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i16++) {
                            if (Game.getProvince(Game.getExtraProvinceInViewID(i16)).isCapital && Game.getProvince(Game.getExtraProvinceInViewID(i16)).getCitiesSize() > 0 && Touch.isMouseOverCapitalProvince_Flag(i, i2, Game.getExtraProvinceInViewID(i16))) {
                                Game.gameActiveProvince.resetLastActiveProvince();
                                Game.iHoveredCapitalProvinceID = Game.getExtraProvinceInViewID(i16);
                                Game.setActiveProvinceID(Game.iHoveredCapitalProvinceID);
                                ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
                                Game.animationHover.resetAnimationData();
                                if (!Game.menuManager.getVisibleInGame_Civ()) {
                                    Game.menuManager.rebuildInGame_Civ();
                                    if (Game.menuManager.getVisibleInGame_CivBonuses() && Game.getProvince(Game.iHoveredCapitalProvinceID).getCivID() != 0 && InGame_CivBonuses.iCivID != Game.getProvince(Game.iHoveredCapitalProvinceID).getCivID()) {
                                        InGame_CivBonuses.iCivID = Game.getProvince(Game.iHoveredCapitalProvinceID).getCivID();
                                        Game.menuManager.rebuildInGame_CivBonuses();
                                        Game.menuManager.setVisibleInGame_CivBonuses(true);
                                        InGame_CivBonuses.lTime = 0L;
                                    }
                                    Game.soundsManager.playSound(Game.soundsManager.getDiplomacy());
                                } else if (InGame_Civ.iActiveCivID != Game.getProvince(Game.iHoveredCapitalProvinceID).getCivID()) {
                                    Game.menuManager.rebuildInGame_Civ();
                                    InGame_Civ.lTime = 0L;
                                    if (Game.menuManager.getVisibleInGame_CivBonuses() && Game.getProvince(Game.iHoveredCapitalProvinceID).getCivID() != 0 && InGame_CivBonuses.iCivID != Game.getProvince(Game.iHoveredCapitalProvinceID).getCivID()) {
                                        InGame_CivBonuses.iCivID = Game.getProvince(Game.iHoveredCapitalProvinceID).getCivID();
                                        Game.menuManager.rebuildInGame_CivBonuses();
                                        Game.menuManager.setVisibleInGame_CivBonuses(true);
                                        InGame_CivBonuses.lTime = 0L;
                                    }
                                    Game.soundsManager.playSound(Game.soundsManager.getDiplomacy());
                                } else {
                                    Game.menuManager.setVisibleInGame_Civ(false);
                                    Game.soundsManager.playSound(SoundsManager.SOUND_CLICK_TOP);
                                }
                                Game.gameActiveProvince.resetLastActiveProvince();
                                Game.setActiveProvinceID(-1);
                                return;
                            }
                        }
                    } else if (Game.hoveredBattle.iProvinceID >= 0) {
                        if (Touch.isMouseOverBattle(i, i2, Game.battleManager.getBattleID(Game.hoveredBattle.iProvinceID, Game.hoveredBattle.key))) {
                            InGame_Battle.iProvinceID = Game.hoveredBattle.iProvinceID;
                            InGame_Battle.key = Game.hoveredBattle.key;
                            if (Game.menuManager.getVisibleInGame_Siege()) {
                                Game.menuManager.setVisibleInGame_Siege(false);
                            }
                            if (Game.menuManager.getVisibleInGame_War()) {
                                Game.menuManager.setVisibleInGame_War(false);
                            }
                            Game.menuManager.showInGame_Battle_HideMenus();
                            Game.menuManager.rebuildInGame_Battle();
                            Game.gameActiveProvince.resetLastActiveProvince();
                            Game.setActiveProvinceID(-1);
                            Game.clearActiveArmy();
                            return;
                        }
                    } else if (Game.hoveredSiegeID >= 0) {
                        if (Touch.isMouseOverSiege(i, i2, Game.hoveredSiegeID)) {
                            if (Game.menuManager.getVisibleInGame_Siege() && InGame_ProvinceSiege.iProvinceID == Game.hoveredSiegeID) {
                                Game.menuManager.setVisibleInGame_Siege(false);
                                return;
                            }
                            InGame_ProvinceSiege.iProvinceID = Game.hoveredSiegeID;
                            if (Game.menuManager.getVisibleInGame_Battle()) {
                                Game.menuManager.setVisibleInGame_Battle(false);
                            }
                            if (Game.menuManager.getVisibleInGame_War()) {
                                Game.menuManager.setVisibleInGame_War(false);
                            }
                            Game.menuManager.showInGame_Battle_HideMenus();
                            Game.menuManager.rebuildInGame_Siege();
                            Game.soundsManager.playSound(SoundsManager.SIEGE);
                            Game.gameActiveProvince.resetLastActiveProvince();
                            Game.setActiveProvinceID(-1);
                            Game.clearActiveArmy();
                            return;
                        }
                    } else if (Game.hoveredArmy.iProvinceID >= 0) {
                        if (Touch.isMouseOverArmy(i, i2, Game.hoveredArmy.iProvinceID, Game.hoveredArmy.iArmyID)) {
                            if (Game.activeArmy.size() != 1 || Game.getProvince(Game.hoveredArmy.iProvinceID).getArmySize() <= 1 || !Game.activeArmy.get(0).key.equals(Game.getProvince(Game.hoveredArmy.iProvinceID).getArmy(Game.hoveredArmy.iArmyID).key)) {
                                z = false;
                            }
                            if (AA_KeyManager.CTRL_HOLD) {
                                Game.HoveredArmy hoveredArmy5 = new Game.HoveredArmy();
                                hoveredArmy5.key = Game.getProvince(Game.hoveredArmy.iProvinceID).getArmy(Game.hoveredArmy.iArmyID).key;
                                hoveredArmy5.iCivID = Game.getProvince(Game.hoveredArmy.iProvinceID).getArmy(Game.hoveredArmy.iArmyID).civID;
                                hoveredArmy5.iProvinceID = Game.hoveredArmy.iProvinceID;
                                hoveredArmy5.iArmyID = Game.hoveredArmy.iArmyID;
                                if (Game.isAlreadyActiveArmy(hoveredArmy5.key)) {
                                    Game.removeActiveArmy(hoveredArmy5.key);
                                } else {
                                    Game.addActiveArmy(hoveredArmy5);
                                }
                                ProvinceTouchExtraAction.actionUp_SetActiveArmy();
                            } else {
                                Game.clearActiveArmy();
                                if (z) {
                                    for (int i17 = 0; i17 < Game.getProvince(Game.hoveredArmy.iProvinceID).getArmySize(); i17++) {
                                        if (Game.getProvince(Game.hoveredArmy.iProvinceID).getArmy(i17).civID == Game.getProvince(Game.hoveredArmy.iProvinceID).getArmy(Game.hoveredArmy.iArmyID).civID) {
                                            Game.HoveredArmy hoveredArmy6 = new Game.HoveredArmy();
                                            hoveredArmy6.key = Game.getProvince(Game.hoveredArmy.iProvinceID).getArmy(i17).key;
                                            hoveredArmy6.iCivID = Game.getProvince(Game.hoveredArmy.iProvinceID).getArmy(i17).civID;
                                            hoveredArmy6.iProvinceID = Game.hoveredArmy.iProvinceID;
                                            hoveredArmy6.iArmyID = i17;
                                            Game.addActiveArmy(hoveredArmy6);
                                            ProvinceTouchExtraAction.actionUp_SetActiveArmy();
                                        }
                                    }
                                } else {
                                    Game.HoveredArmy hoveredArmy7 = new Game.HoveredArmy();
                                    hoveredArmy7.key = Game.getProvince(Game.hoveredArmy.iProvinceID).getArmy(Game.hoveredArmy.iArmyID).key;
                                    hoveredArmy7.iCivID = Game.getProvince(Game.hoveredArmy.iProvinceID).getArmy(Game.hoveredArmy.iArmyID).civID;
                                    hoveredArmy7.iProvinceID = Game.hoveredArmy.iProvinceID;
                                    hoveredArmy7.iArmyID = Game.hoveredArmy.iArmyID;
                                    Game.addActiveArmy(hoveredArmy7);
                                    ProvinceTouchExtraAction.actionUp_SetActiveArmy();
                                }
                            }
                            Game.gameActiveProvince.resetLastActiveProvince();
                            Game.setActiveProvinceID(-1);
                            Game.animationHover.resetAnimationData();
                            return;
                        }
                    } else if (Game.iHoveredCapitalProvinceID >= 0 && Touch.isMouseOverCapitalProvince_Flag(i, i2, Game.iHoveredCapitalProvinceID)) {
                        Game.gameActiveProvince.resetLastActiveProvince();
                        Game.setActiveProvinceID(Game.iHoveredCapitalProvinceID);
                        ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
                        Game.animationHover.resetAnimationData();
                        if (!Game.menuManager.getVisibleInGame_Civ()) {
                            Game.menuManager.rebuildInGame_Civ();
                            if (Game.menuManager.getVisibleInGame_CivBonuses() && Game.getProvince(Game.iHoveredCapitalProvinceID).getCivID() != 0 && InGame_CivBonuses.iCivID != Game.getProvince(Game.iHoveredCapitalProvinceID).getCivID()) {
                                InGame_CivBonuses.iCivID = Game.getProvince(Game.iHoveredCapitalProvinceID).getCivID();
                                Game.menuManager.rebuildInGame_CivBonuses();
                                Game.menuManager.setVisibleInGame_CivBonuses(true);
                                InGame_CivBonuses.lTime = 0L;
                            }
                            Game.soundsManager.playSound(Game.soundsManager.getDiplomacy());
                        } else if (InGame_Civ.iActiveCivID != Game.getProvince(Game.iHoveredCapitalProvinceID).getCivID()) {
                            Game.menuManager.rebuildInGame_Civ();
                            InGame_Civ.lTime = 0L;
                            if (Game.menuManager.getVisibleInGame_CivBonuses() && Game.getProvince(Game.iHoveredCapitalProvinceID).getCivID() != 0 && InGame_CivBonuses.iCivID != Game.getProvince(Game.iHoveredCapitalProvinceID).getCivID()) {
                                InGame_CivBonuses.iCivID = Game.getProvince(Game.iHoveredCapitalProvinceID).getCivID();
                                Game.menuManager.rebuildInGame_CivBonuses();
                                Game.menuManager.setVisibleInGame_CivBonuses(true);
                                InGame_CivBonuses.lTime = 0L;
                            }
                            Game.soundsManager.playSound(Game.soundsManager.getDiplomacy());
                        } else {
                            Game.menuManager.setVisibleInGame_Civ(false);
                            Game.soundsManager.playSound(SoundsManager.SOUND_CLICK_TOP);
                        }
                        Game.gameActiveProvince.resetLastActiveProvince();
                        Game.setActiveProvinceID(-1);
                        return;
                    }
                }
            }
            if (i4 == Game.settingsManager.MAP_MOVE || (i4 == 1 && enableRightClick())) {
                if (!Game.menuManager.getInGame() || Game.mapScale.getCurrentScale() >= Game.DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE || Game.iHoveredProvinceID < 0 || (Game.iHoveredProvinceID >= 0 && Game.getProvince(Game.iHoveredProvinceID).getCivID() == 0) || Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_DEFAULT) {
                    Game.gameActiveProvince.actionUp_setActiveProvinceID(i, i2, i3, i4);
                } else if (Math.abs(i - this.actionDownPosX) < CFG.PADDING / 2) {
                    if (Game.regroupArmyMode || Game.chooseProvinceMode || Game.invasionArmyMode) {
                        Game.gameActiveProvince.actionUp_setActiveProvinceID(i, i2, i3, i4);
                    } else {
                        Game.setActiveProvinceID(Game.iHoveredProvinceID);
                        ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
                        if (Game.menuManager.getVisibleInGame_Civ()) {
                            boolean z2 = InGame_Civ.enabledByScaleOut;
                            Game.menuManager.rebuildInGame_Civ();
                            InGame_Civ.lTime = 0L;
                            Game.soundsManager.playSound(Game.soundsManager.getDiplomacy());
                            InGame_Civ.enabledByScaleOut = z2;
                        } else {
                            Game.menuManager.rebuildInGame_Civ();
                            InGame_Civ.enabledByScaleOut = true;
                            Game.soundsManager.playSound(Game.soundsManager.getDiplomacy());
                        }
                        if (Game.menuManager.getVisibleInGame_CivBonuses() && Game.getProvince(Game.iActiveProvince).getCivID() != 0 && InGame_CivBonuses.iCivID != Game.getProvince(Game.iActiveProvince).getCivID()) {
                            InGame_CivBonuses.iCivID = Game.getProvince(Game.iActiveProvince).getCivID();
                            Game.menuManager.rebuildInGame_CivBonuses();
                            Game.menuManager.setVisibleInGame_CivBonuses(true);
                            InGame_CivBonuses.lTime = 0L;
                        }
                    }
                }
            }
            if (!Game.mapScale.getScaleMode() && !Game.mapCoords.disableMovingMap) {
                Game.mapScroll.startScrollingTheMap();
            }
            try {
                ProvinceTouchExtraAction.actionUp_ExtraAction.extraAction(i, i2, i3, i4);
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }

    public final void actionUpSelectMode(int i, int i2) {
        int i3;
        try {
            int i4 = this.iSelectBoxX;
            if (i4 != i && (i3 = this.iSelectBoxY) != i2) {
                if (i4 > i) {
                    this.iSelectBoxX = i;
                    i = i4;
                }
                if (i3 > i2) {
                    this.iSelectBoxY = i2;
                    i2 = i3;
                }
                int i5 = 0;
                if (!Game.menuManager.getInGame()) {
                    if (Game.menuManager.getInScenarioAssign()) {
                        int i6 = Game.iActiveProvince;
                        for (int i7 = 0; i7 < Game.NUM_OF_PROVINCES_IN_VIEW; i7++) {
                            if (actionUpSelectModeIsInBox_Center(Game.getProvinceInViewID(i7), this.iSelectBoxX, this.iSelectBoxY, i, i2)) {
                                Game.iActiveProvince = Game.getProvinceInViewID(i7);
                                ScenarioAssign.actionUpdateData(true);
                            }
                        }
                        while (i5 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW) {
                            if (actionUpSelectModeIsInBox_Center(Game.getExtraProvinceInViewID(i5), this.iSelectBoxX, this.iSelectBoxY, i, i2)) {
                                Game.iActiveProvince = Game.getExtraProvinceInViewID(i5);
                                ScenarioAssign.actionUpdateData(true);
                            }
                            i5++;
                        }
                        Game.iActiveProvince = i6;
                        return;
                    }
                    if (Game.menuManager.getInScenarioWasteland()) {
                        int i8 = Game.iActiveProvince;
                        for (int i9 = 0; i9 < Game.NUM_OF_PROVINCES_IN_VIEW; i9++) {
                            if (actionUpSelectModeIsInBox_Center(Game.getProvinceInViewID(i9), this.iSelectBoxX, this.iSelectBoxY, i, i2)) {
                                Game.iActiveProvince = Game.getProvinceInViewID(i9);
                                ScenarioWasteland.actionUpdateData(true);
                            }
                        }
                        while (i5 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW) {
                            if (actionUpSelectModeIsInBox_Center(Game.getExtraProvinceInViewID(i5), this.iSelectBoxX, this.iSelectBoxY, i, i2)) {
                                Game.iActiveProvince = Game.getExtraProvinceInViewID(i5);
                                ScenarioWasteland.actionUpdateData(true);
                            }
                            i5++;
                        }
                        Game.iActiveProvince = i8;
                        return;
                    }
                    if (Game.menuManager.getInMapEditorContinents()) {
                        int i10 = Game.iActiveProvince;
                        for (int i11 = 0; i11 < Game.NUM_OF_PROVINCES_IN_VIEW; i11++) {
                            if (actionUpSelectModeIsInBox_Center(Game.getProvinceInViewID(i11), this.iSelectBoxX, this.iSelectBoxY, i, i2)) {
                                Game.getProvince(Game.getProvinceInViewID(i11)).setContinent(EditorMapContinents.currentContinentID);
                            }
                        }
                        while (i5 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW) {
                            if (actionUpSelectModeIsInBox_Center(Game.getExtraProvinceInViewID(i5), this.iSelectBoxX, this.iSelectBoxY, i, i2)) {
                                Game.getProvince(Game.getExtraProvinceInViewID(i5)).setContinent(EditorMapContinents.currentContinentID);
                            }
                            i5++;
                        }
                        Game.iActiveProvince = i10;
                        return;
                    }
                    return;
                }
                int i12 = Game.mapModes.iActiveMapModeID;
                int i13 = Game.mapModes.MODE_INVEST_IN_ECONOMY;
                String str = gpVDKipRURuzw.LJqcVxZvhAFKUq;
                if (i12 == i13) {
                    for (int i14 = 0; i14 < Game.NUM_OF_PROVINCES_IN_VIEW; i14++) {
                        if (Game.getProvince(Game.getProvinceInViewID(i14)).getCivID() == Game.player.iCivID && actionUpSelectModeIsInBox_Center(Game.getProvinceInViewID(i14), this.iSelectBoxX, this.iSelectBoxY, i, i2)) {
                            if (Game.canInvestInEconomy(Game.getProvinceInViewID(i14))) {
                                Game.menuManager.addToastGold(Game.lang.get("IncreasePopulationGrowthRate"), Images.populationUp);
                                Game.menuManager.addToastInsufficient(Game.lang.get("MaximumEconomy") + str, CFG.getPrecision2(Game.getProvince(Game.getProvinceInViewID(i14)).getEconomyWithBonuses(), 10) + " / " + CFG.getPrecision2(Game.getMaxEconomy(Game.getProvinceInViewID(i14)), 10), Game_Calendar.IMG_ECONOMY);
                            } else if (Game.getCiv(Game.player.iCivID).fLegacy < Game.getInvestCost_Legacy(Game.getProvinceInViewID(i14))) {
                                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + str, CFG.getPrecision2(Game.getInvestCost_Legacy(Game.getProvinceInViewID(i14)), 100), Images.legacy);
                            } else if (Game.getProvince(Game.getProvinceInViewID(i14)).addInvestInProvince()) {
                                ProvinceDraw.addProvinceDot_Economy(Game.getProvinceInViewID(i14));
                            } else {
                                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + str, CFG.getPrecision2(Game.getInvestCost(Game.getProvinceInViewID(i14)), 100), Images.gold);
                            }
                        }
                    }
                    while (i5 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW) {
                        if (Game.getProvince(Game.getExtraProvinceInViewID(i5)).getCivID() == Game.player.iCivID && actionUpSelectModeIsInBox_Center(Game.getExtraProvinceInViewID(i5), this.iSelectBoxX, this.iSelectBoxY, i, i2)) {
                            if (Game.canInvestInEconomy(Game.getExtraProvinceInViewID(i5))) {
                                Game.menuManager.addToastGold(Game.lang.get("IncreasePopulationGrowthRate"), Images.populationUp);
                                Game.menuManager.addToastInsufficient(Game.lang.get("MaximumEconomy") + str, CFG.getPrecision2(Game.getProvince(Game.getExtraProvinceInViewID(i5)).getEconomyWithBonuses(), 10) + " / " + CFG.getPrecision2(Game.getMaxEconomy(Game.getExtraProvinceInViewID(i5)), 10), Game_Calendar.IMG_ECONOMY);
                            } else if (Game.getCiv(Game.player.iCivID).fLegacy < Game.getInvestCost_Legacy(Game.getExtraProvinceInViewID(i5))) {
                                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + str, CFG.getPrecision2(Game.getInvestCost_Legacy(Game.getExtraProvinceInViewID(i5)), 100), Images.legacy);
                            } else if (Game.getProvince(Game.getExtraProvinceInViewID(i5)).addInvestInProvince()) {
                                ProvinceDraw.addProvinceDot_Economy(Game.getExtraProvinceInViewID(i5));
                            } else {
                                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + str, CFG.getPrecision2(Game.getInvestCost(Game.getExtraProvinceInViewID(i5)), 100), Images.gold);
                            }
                        }
                        i5++;
                    }
                    return;
                }
                if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_PEACE_VIEW) {
                    for (int i15 = 0; i15 < Game.NUM_OF_PROVINCES_IN_VIEW; i15++) {
                        if (actionUpSelectModeIsInBox_Center(Game.getProvinceInViewID(i15), this.iSelectBoxX, this.iSelectBoxY, i, i2)) {
                            ProvinceTouchExtraAction.actionPeaceView(Game.getProvinceInViewID(i15), true);
                        }
                    }
                    while (i5 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW) {
                        if (actionUpSelectModeIsInBox_Center(Game.getExtraProvinceInViewID(i5), this.iSelectBoxX, this.iSelectBoxY, i, i2)) {
                            ProvinceTouchExtraAction.actionPeaceView(Game.getExtraProvinceInViewID(i5), true);
                        }
                        i5++;
                    }
                    return;
                }
                if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_RELEASE_VASSAL) {
                    for (int i16 = 0; i16 < Game.NUM_OF_PROVINCES_IN_VIEW; i16++) {
                        if (actionUpSelectModeIsInBox_Center(Game.getProvinceInViewID(i16), this.iSelectBoxX, this.iSelectBoxY, i, i2)) {
                            ProvinceTouchExtraAction.actionReleaseVassal(Game.getProvinceInViewID(i16), true);
                        }
                    }
                    while (i5 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW) {
                        if (actionUpSelectModeIsInBox_Center(Game.getExtraProvinceInViewID(i5), this.iSelectBoxX, this.iSelectBoxY, i, i2)) {
                            ProvinceTouchExtraAction.actionReleaseVassal(Game.getExtraProvinceInViewID(i5), true);
                        }
                        i5++;
                    }
                    Game.menuManager.rebuildInGame_ReleaseAVassal_SavePos();
                    return;
                }
                if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_BUILDING) {
                    for (int i17 = 0; i17 < Game.NUM_OF_PROVINCES_IN_VIEW; i17++) {
                        if (Game.getProvince(Game.getProvinceInViewID(i17)).getCivID() == Game.player.iCivID && actionUpSelectModeIsInBox_Center(Game.getProvinceInViewID(i17), this.iSelectBoxX, this.iSelectBoxY, i, i2)) {
                            ProvinceTouchExtraAction.actionBuilding(Game.getProvinceInViewID(i17));
                        }
                    }
                    while (i5 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW) {
                        if (Game.getProvince(Game.getExtraProvinceInViewID(i5)).getCivID() == Game.player.iCivID && actionUpSelectModeIsInBox_Center(Game.getExtraProvinceInViewID(i5), this.iSelectBoxX, this.iSelectBoxY, i, i2)) {
                            ProvinceTouchExtraAction.actionBuilding(Game.getExtraProvinceInViewID(i5));
                        }
                        i5++;
                    }
                    return;
                }
                if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_INCREASE_MANPOWER) {
                    for (int i18 = 0; i18 < Game.NUM_OF_PROVINCES_IN_VIEW; i18++) {
                        if (Game.getProvince(Game.getProvinceInViewID(i18)).getCivID() == Game.player.iCivID && actionUpSelectModeIsInBox_Center(Game.getProvinceInViewID(i18), this.iSelectBoxX, this.iSelectBoxY, i, i2)) {
                            if (Game.getCiv(Game.player.iCivID).fLegacy < Game.getIncreaseManpowerCostLegacy(Game.getProvinceInViewID(i18))) {
                                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + str, CFG.getPrecision2(Game.getIncreaseManpowerCostLegacy(Game.getProvinceInViewID(i18)), 100), Images.legacy);
                            } else if (Game.getProvince(Game.getProvinceInViewID(i18)).addIncreaseManpowerInProvince()) {
                                ProvinceDraw.addProvinceDot_Manpower(Game.getProvinceInViewID(i18));
                            } else {
                                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + str, CFG.getPrecision2(Game.getIncreaseManpowerCost(Game.getProvinceInViewID(i18)), 100), Images.gold);
                            }
                        }
                    }
                    while (i5 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW) {
                        if (Game.getProvince(Game.getExtraProvinceInViewID(i5)).getCivID() == Game.player.iCivID && actionUpSelectModeIsInBox_Center(Game.getExtraProvinceInViewID(i5), this.iSelectBoxX, this.iSelectBoxY, i, i2)) {
                            if (Game.getCiv(Game.player.iCivID).fLegacy < Game.getIncreaseManpowerCostLegacy(Game.getExtraProvinceInViewID(i5))) {
                                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + str, CFG.getPrecision2(Game.getIncreaseManpowerCostLegacy(Game.getExtraProvinceInViewID(i5)), 100), Images.legacy);
                            } else if (Game.getProvince(Game.getExtraProvinceInViewID(i5)).addIncreaseManpowerInProvince()) {
                                ProvinceDraw.addProvinceDot_Manpower(Game.getExtraProvinceInViewID(i5));
                            } else {
                                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + str, CFG.getPrecision2(Game.getIncreaseManpowerCost(Game.getExtraProvinceInViewID(i5)), 100), Images.gold);
                            }
                        }
                        i5++;
                    }
                    return;
                }
                if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_INCREASE_GROWTH_RATE) {
                    for (int i19 = 0; i19 < Game.NUM_OF_PROVINCES_IN_VIEW; i19++) {
                        if (Game.getProvince(Game.getProvinceInViewID(i19)).getCivID() == Game.player.iCivID && actionUpSelectModeIsInBox_Center(Game.getProvinceInViewID(i19), this.iSelectBoxX, this.iSelectBoxY, i, i2)) {
                            if (Game.getProvince(Game.getProvinceInViewID(i19)).addIncreaseGrowthRateInProvince()) {
                                ProvinceDraw.addProvinceDot_GrowthRate(Game.getProvinceInViewID(i19));
                            } else {
                                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + str, CFG.getPrecision2(Game.getIncreaseGrowthRateCost(Game.getProvinceInViewID(i19)), 100), Images.gold);
                            }
                        }
                    }
                    while (i5 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW) {
                        if (Game.getProvince(Game.getExtraProvinceInViewID(i5)).getCivID() == Game.player.iCivID && actionUpSelectModeIsInBox_Center(Game.getExtraProvinceInViewID(i5), this.iSelectBoxX, this.iSelectBoxY, i, i2)) {
                            if (Game.getProvince(Game.getExtraProvinceInViewID(i5)).addIncreaseGrowthRateInProvince()) {
                                ProvinceDraw.addProvinceDot_GrowthRate(Game.getExtraProvinceInViewID(i5));
                            } else {
                                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + str, CFG.getPrecision2(Game.getIncreaseGrowthRateCost(Game.getExtraProvinceInViewID(i5)), 100), Images.gold);
                            }
                        }
                        i5++;
                    }
                    return;
                }
                if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DEVELOP_INFRASTRUCTURE) {
                    for (int i20 = 0; i20 < Game.NUM_OF_PROVINCES_IN_VIEW; i20++) {
                        if (Game.getProvince(Game.getProvinceInViewID(i20)).getCivID() == Game.player.iCivID && actionUpSelectModeIsInBox_Center(Game.getProvinceInViewID(i20), this.iSelectBoxX, this.iSelectBoxY, i, i2) && InGame_ProvinceInfo.addDevelopInfrastructureCost(Game.getProvinceInViewID(i20))) {
                            ProvinceDraw.addProvinceDot_Infrastructure(Game.getProvinceInViewID(i20));
                        }
                    }
                    while (i5 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW) {
                        if (Game.getProvince(Game.getExtraProvinceInViewID(i5)).getCivID() == Game.player.iCivID && actionUpSelectModeIsInBox_Center(Game.getExtraProvinceInViewID(i5), this.iSelectBoxX, this.iSelectBoxY, i, i2) && InGame_ProvinceInfo.addDevelopInfrastructureCost(Game.getExtraProvinceInViewID(i5))) {
                            ProvinceDraw.addProvinceDot_Infrastructure(Game.getExtraProvinceInViewID(i5));
                        }
                        i5++;
                    }
                    return;
                }
                if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_INCREASE_TAX_EFFICIENCY) {
                    for (int i21 = 0; i21 < Game.NUM_OF_PROVINCES_IN_VIEW; i21++) {
                        if (Game.getProvince(Game.getProvinceInViewID(i21)).getCivID() == Game.player.iCivID && actionUpSelectModeIsInBox_Center(Game.getProvinceInViewID(i21), this.iSelectBoxX, this.iSelectBoxY, i, i2)) {
                            if (Game.getCiv(Game.player.iCivID).fLegacy < Game.getIncreaseTaxEfficiencyCostLegacy(Game.getProvinceInViewID(i21))) {
                                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + str, CFG.getPrecision2(Game.getIncreaseTaxEfficiencyCostLegacy(Game.getProvinceInViewID(i21)), 100), Images.legacy);
                            } else if (Game.getProvince(Game.getProvinceInViewID(i21)).addIncreaseTaxEfficiencyInProvince()) {
                                ProvinceDraw.addProvinceDot_TaxEfficiency(Game.getProvinceInViewID(i21));
                            } else {
                                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + str, CFG.getPrecision2(Game.getIncreaseTaxEfficiencyCost(Game.getProvinceInViewID(i21)), 100), Images.gold);
                            }
                        }
                    }
                    while (i5 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW) {
                        if (Game.getProvince(Game.getExtraProvinceInViewID(i5)).getCivID() == Game.player.iCivID && actionUpSelectModeIsInBox_Center(Game.getExtraProvinceInViewID(i5), this.iSelectBoxX, this.iSelectBoxY, i, i2)) {
                            if (Game.getCiv(Game.player.iCivID).fLegacy < Game.getIncreaseTaxEfficiencyCostLegacy(Game.getExtraProvinceInViewID(i5))) {
                                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + str, CFG.getPrecision2(Game.getIncreaseTaxEfficiencyCostLegacy(Game.getExtraProvinceInViewID(i5)), 100), Images.legacy);
                            } else if (Game.getProvince(Game.getExtraProvinceInViewID(i5)).addIncreaseTaxEfficiencyInProvince()) {
                                ProvinceDraw.addProvinceDot_TaxEfficiency(Game.getExtraProvinceInViewID(i5));
                            } else {
                                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + str, CFG.getPrecision2(Game.getIncreaseTaxEfficiencyCost(Game.getExtraProvinceInViewID(i5)), 100), Images.gold);
                            }
                        }
                        i5++;
                    }
                    return;
                }
                if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_CONVERT_RELIGION) {
                    for (int i22 = 0; i22 < Game.NUM_OF_PROVINCES_IN_VIEW; i22++) {
                        if (Game.getProvince(Game.getProvinceInViewID(i22)).getCivID() == Game.player.iCivID && actionUpSelectModeIsInBox_Center(Game.getProvinceInViewID(i22), this.iSelectBoxX, this.iSelectBoxY, i, i2) && Game.getProvince(Game.getProvinceInViewID(i22)).getReligion() != Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i22)).getCivID()).getReligionID() && !Game.getProvince(Game.getProvinceInViewID(i22)).addReligionConversion()) {
                            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + str, CFG.getPrecision2(Game.religionManager.getReligionConversionCost(Game.getProvinceInViewID(i22)), 100), Images.gold);
                        }
                    }
                    while (i5 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW) {
                        if (Game.getProvince(Game.getExtraProvinceInViewID(i5)).getCivID() == Game.player.iCivID && actionUpSelectModeIsInBox_Center(Game.getExtraProvinceInViewID(i5), this.iSelectBoxX, this.iSelectBoxY, i, i2) && Game.getProvince(Game.getExtraProvinceInViewID(i5)).getReligion() != Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i5)).getCivID()).getReligionID() && !Game.getProvince(Game.getExtraProvinceInViewID(i5)).addReligionConversion()) {
                            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + str, CFG.getPrecision2(Game.religionManager.getReligionConversionCost(Game.getExtraProvinceInViewID(i5)), 100), Images.gold);
                        }
                        i5++;
                    }
                    return;
                }
                if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_CORE) {
                    for (int i23 = 0; i23 < Game.NUM_OF_PROVINCES_IN_VIEW; i23++) {
                        if (Game.getProvince(Game.getProvinceInViewID(i23)).getCivID() == Game.player.iCivID && actionUpSelectModeIsInBox_Center(Game.getProvinceInViewID(i23), this.iSelectBoxX, this.iSelectBoxY, i, i2) && !Game.getProvince(Game.getProvinceInViewID(i23)).haveACore(Game.player.iCivID) && Game.getProvince(Game.getProvinceInViewID(i23)).coreCreation == null && !Game.getProvince(Game.getProvinceInViewID(i23)).addCoreCreation()) {
                            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + str, CFG.getPrecision2(Game.getCoreCreationCost(Game.getProvinceInViewID(i23)), 100), Images.gold);
                        }
                    }
                    while (i5 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW) {
                        if (Game.getProvince(Game.getExtraProvinceInViewID(i5)).getCivID() == Game.player.iCivID && actionUpSelectModeIsInBox_Center(Game.getExtraProvinceInViewID(i5), this.iSelectBoxX, this.iSelectBoxY, i, i2) && !Game.getProvince(Game.getExtraProvinceInViewID(i5)).haveACore(Game.player.iCivID) && Game.getProvince(Game.getExtraProvinceInViewID(i5)).coreCreation == null && !Game.getProvince(Game.getExtraProvinceInViewID(i5)).addCoreCreation()) {
                            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + str, CFG.getPrecision2(Game.getCoreCreationCost(Game.getExtraProvinceInViewID(i5)), 100), Images.gold);
                        }
                        i5++;
                    }
                    return;
                }
                if (Game.invasionArmyMode) {
                    if (!AA_KeyManager.CTRL_HOLD && !AA_KeyManager.SHIFT_HOLD) {
                        for (int i24 = 0; i24 < Game.NUM_OF_PROVINCES_IN_VIEW; i24++) {
                            if (actionUpSelectModeIsInBox_Center(Game.getProvinceInViewID(i24), this.iSelectBoxX, this.iSelectBoxY, i, i2)) {
                                Game.invasionArmy_AddProvince(Game.getProvinceInViewID(i24));
                            }
                        }
                        while (i5 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW) {
                            if (actionUpSelectModeIsInBox_Center(Game.getExtraProvinceInViewID(i5), this.iSelectBoxX, this.iSelectBoxY, i, i2)) {
                                Game.invasionArmy_AddProvince(Game.getExtraProvinceInViewID(i5));
                            }
                            i5++;
                        }
                        return;
                    }
                    for (int i25 = 0; i25 < Game.NUM_OF_PROVINCES_IN_VIEW; i25++) {
                        if (actionUpSelectModeIsInBox_Center(Game.getProvinceInViewID(i25), this.iSelectBoxX, this.iSelectBoxY, i, i2)) {
                            Game.invasionArmy_RemoveProvince(Game.getProvinceInViewID(i25));
                        }
                    }
                    while (i5 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW) {
                        if (actionUpSelectModeIsInBox_Center(Game.getExtraProvinceInViewID(i5), this.iSelectBoxX, this.iSelectBoxY, i, i2)) {
                            Game.invasionArmy_RemoveProvince(Game.getExtraProvinceInViewID(i5));
                        }
                        i5++;
                    }
                    return;
                }
                if (i - this.iSelectBoxX > CFG.BUTTON_HEIGHT2) {
                    Game.menuManager.hideInGameMenus();
                }
                if (!AA_KeyManager.SHIFT_HOLD) {
                    Game.clearActiveArmy();
                }
                for (int i26 = 0; i26 < Game.NUM_OF_PROVINCES_IN_VIEW; i26++) {
                    if (Game.getProvince(Game.getProvinceInViewID(i26)).getFogDrawArmy()) {
                        for (int i27 = 0; i27 < Game.getProvince(Game.getProvinceInViewID(i26)).getArmySize(); i27++) {
                            if (Game.getProvince(Game.getProvinceInViewID(i26)).getArmy(i27).civID == Game.player.iCivID) {
                                if (actionUpSelectModeIsInBox(Game.getProvinceInViewID(i26), i27, this.iSelectBoxX, this.iSelectBoxY, i, i2)) {
                                    Game.HoveredArmy hoveredArmy = new Game.HoveredArmy();
                                    hoveredArmy.key = Game.getProvince(Game.getProvinceInViewID(i26)).getArmy(i27).key;
                                    hoveredArmy.iCivID = Game.getProvince(Game.getProvinceInViewID(i26)).getArmy(i27).civID;
                                    hoveredArmy.iProvinceID = Game.getProvinceInViewID(i26);
                                    hoveredArmy.iArmyID = i27;
                                    Game.addActiveArmy(hoveredArmy);
                                    Game.animationHover.resetAnimationData();
                                }
                            }
                        }
                    }
                }
                for (int i28 = 0; i28 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i28++) {
                    if (Game.getProvince(Game.getExtraProvinceInViewID(i28)).getFogDrawArmy()) {
                        for (int i29 = 0; i29 < Game.getProvince(Game.getExtraProvinceInViewID(i28)).getArmySize(); i29++) {
                            if (Game.getProvince(Game.getExtraProvinceInViewID(i28)).getArmy(i29).civID == Game.player.iCivID) {
                                if (actionUpSelectModeIsInBox(Game.getExtraProvinceInViewID(i28), i29, this.iSelectBoxX, this.iSelectBoxY, i, i2)) {
                                    Game.HoveredArmy hoveredArmy2 = new Game.HoveredArmy();
                                    hoveredArmy2.key = Game.getProvince(Game.getExtraProvinceInViewID(i28)).getArmy(i29).key;
                                    hoveredArmy2.iCivID = Game.getProvince(Game.getExtraProvinceInViewID(i28)).getArmy(i29).civID;
                                    hoveredArmy2.iProvinceID = Game.getExtraProvinceInViewID(i28);
                                    hoveredArmy2.iArmyID = i29;
                                    Game.addActiveArmy(hoveredArmy2);
                                    Game.animationHover.resetAnimationData();
                                }
                            }
                        }
                    }
                }
                for (int i30 = 0; i30 < Game.NUM_OF_SEA_PROVINCES_IN_VIEW; i30++) {
                    if (Game.getProvince(Game.getSeaProvinceInViewID(i30)).getFogDrawArmy()) {
                        for (int i31 = 0; i31 < Game.getProvince(Game.getSeaProvinceInViewID(i30)).getArmySize(); i31++) {
                            if (Game.getProvince(Game.getSeaProvinceInViewID(i30)).getArmy(i31).civID == Game.player.iCivID) {
                                if (actionUpSelectModeIsInBox(Game.getSeaProvinceInViewID(i30), i31, this.iSelectBoxX, this.iSelectBoxY, i, i2)) {
                                    Game.HoveredArmy hoveredArmy3 = new Game.HoveredArmy();
                                    hoveredArmy3.key = Game.getProvince(Game.getSeaProvinceInViewID(i30)).getArmy(i31).key;
                                    hoveredArmy3.iCivID = Game.getProvince(Game.getSeaProvinceInViewID(i30)).getArmy(i31).civID;
                                    hoveredArmy3.iProvinceID = Game.getSeaProvinceInViewID(i30);
                                    hoveredArmy3.iArmyID = i31;
                                    Game.addActiveArmy(hoveredArmy3);
                                    Game.animationHover.resetAnimationData();
                                }
                            }
                        }
                    }
                }
                for (int i32 = 0; i32 < Game.NUM_OF_WASTELAND_PROVINCES_IN_VIEW; i32++) {
                    if (Game.getProvince(Game.getWastelandProvinceInViewID(i32)).getFogDrawArmy()) {
                        for (int i33 = 0; i33 < Game.getProvince(Game.getWastelandProvinceInViewID(i32)).getArmySize(); i33++) {
                            if (Game.getProvince(Game.getWastelandProvinceInViewID(i32)).getArmy(i33).civID == Game.player.iCivID) {
                                if (actionUpSelectModeIsInBox(Game.getWastelandProvinceInViewID(i32), i33, this.iSelectBoxX, this.iSelectBoxY, i, i2)) {
                                    Game.HoveredArmy hoveredArmy4 = new Game.HoveredArmy();
                                    hoveredArmy4.key = Game.getProvince(Game.getWastelandProvinceInViewID(i32)).getArmy(i33).key;
                                    hoveredArmy4.iCivID = Game.getProvince(Game.getWastelandProvinceInViewID(i32)).getArmy(i33).civID;
                                    hoveredArmy4.iProvinceID = Game.getWastelandProvinceInViewID(i32);
                                    hoveredArmy4.iArmyID = i33;
                                    Game.addActiveArmy(hoveredArmy4);
                                    Game.animationHover.resetAnimationData();
                                }
                            }
                        }
                    }
                }
                ProvinceTouchExtraAction.actionUp_SetActiveArmy();
                if (Game.activeArmySize > 0) {
                    Game.gameActiveProvince.resetLastActiveProvince();
                    Game.setActiveProvinceID(-1);
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void buildReversePos() {
        buildReversePosX();
        buildReversePosY();
        buildReversePosX2();
        buildReversePosY2();
    }

    protected final void buildReversePosX() {
        if (reverseDirectionX) {
            this.mapMoveDirectionX = new AnonymousClass1();
        } else {
            this.mapMoveDirectionX = new AnonymousClass2();
        }
    }

    protected final void buildReversePosX2() {
        if (reverseDirectionX) {
            this.mapMoveDirectionX2 = new AnonymousClass5();
        } else {
            this.mapMoveDirectionX2 = new AnonymousClass6();
        }
    }

    protected final void buildReversePosY() {
        if (reverseDirectionY) {
            this.mapMoveDirectionY = new AnonymousClass3();
        } else {
            this.mapMoveDirectionY = new AnonymousClass4();
        }
    }

    protected final void buildReversePosY2() {
        if (reverseDirectionY) {
            this.mapMoveDirectionY2 = new AnonymousClass7();
        } else {
            this.mapMoveDirectionY2 = new AnonymousClass8();
        }
    }

    public final void drawSelectMode(SpriteBatch spriteBatch) {
        if (this.selectMode) {
            try {
                int i = this.iSelectBoxX;
                int i2 = this.iSelectBoxWidth;
                if (i2 == 0) {
                    this.iSelectBoxWidth = 1;
                } else if (i2 < 0) {
                    i += i2;
                }
                int i3 = this.iSelectBoxY;
                int i4 = this.iSelectBoxHeight;
                if (i4 == 0) {
                    this.iSelectBoxHeight = 1;
                } else if (i4 < 0) {
                    i3 += i4;
                }
                spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.075f));
                Images.pix.draw(spriteBatch, i, i3, Math.abs(this.iSelectBoxWidth), Math.abs(this.iSelectBoxHeight));
                spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.275f));
                Renderer.drawBox2(spriteBatch, i, i3, Math.abs(this.iSelectBoxWidth), Math.abs(this.iSelectBoxHeight), 1.0f);
                spriteBatch.setColor(Color.WHITE);
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
    }

    public boolean enableRightClick() {
        return Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_RECRUIT_ARMY || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_BUILDING;
    }

    public final long getActionDownTime() {
        return this.lActionDownTime;
    }

    public final void setActionDownPosXY(int i, int i2) {
        try {
            updateStartMovePosXY(i, i2);
            this.actionDownPosX = i;
            this.actionDownPosY = i2;
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void setActionDownTime(long j) {
        this.lActionDownTime = j;
    }

    public final void setUpdateStartMovePosX(boolean z) {
        this.updateStartMovePosX = z;
    }

    public final void setUpdateStartMovePosY(boolean z) {
        this.updateStartMovePosY = z;
    }

    protected final void updateStartMovePosXY(int i, int i2) {
        this.iStartMovePosX = this.mapMoveDirectionX.getStartMovePos((int) (i / Game.mapScale.getCurrentScale()));
        this.iStartMovePosY = this.mapMoveDirectionY.getStartMovePos((int) (i2 / Game.mapScale.getCurrentScale()));
    }
}
