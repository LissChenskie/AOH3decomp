package aoc.kingdoms.lukasz.map.province;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.setting.SettingsProvince;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ProvinceBorderManager {
    public static long lTimeLine;
    public static List<PBData> lProvinces = new ArrayList();
    public static List<PBData> lProvincesLandBySea = new ArrayList();
    public static List<PBData> lProvincesSeaBySea = new ArrayList();
    public static int iLineOffset = 0;
    public static int iLineOffsetInterval = 75;
    public static boolean drawInnerBorder = true;
    public static boolean drawBorder = true;
    public static long WAR_COLOR_TIME = 0;
    public static int WAR_COLOR_STEP = 1;
    public static boolean warColorMovingBack = false;
    public static Action action = new AnonymousClass1();

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceBorderManager$1, reason: invalid class name */
    class AnonymousClass1 implements Action {
        AnonymousClass1() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorderManager.Action
        public void resetProvinceID() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorderManager.Action
        public void setProvinceID(int i) {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorderManager.Action
        public void update() {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceBorderManager$2, reason: invalid class name */
    class AnonymousClass2 implements Action {
        AnonymousClass2() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorderManager.Action
        public void resetProvinceID() {
            if (Game.menuManager.getVisibleInGame_Civ()) {
                return;
            }
            ProvinceBorderManager.clearProvinceBorder();
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorderManager.Action
        public void setProvinceID(int i) {
            if (i >= 0) {
                try {
                    if (!Game.menuManager.getVisibleInGame_Civ() && Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_PEACE_VIEW) {
                        ProvinceBorderManager.clearProvinceBorder();
                        for (int i2 = 0; i2 < Game.getProvince(i).getNeighboringProvincesSize(); i2++) {
                            if (Game.getProvince(i).getSeaProvince() && Game.getProvince(Game.getProvince(i).getNeighboringProvinces(i2)).getSeaProvince()) {
                                if (i < Game.getProvince(i).getNeighboringProvinces(i2)) {
                                    Game.getProvince(i).getProvinceBordersSeaBySea(Game.getProvince(i).getNeighboringProvinces(i2)).updateDrawProvinceBorder_ActiveProvince();
                                    ProvinceBorderManager.lProvincesSeaBySea.add(new PBData(i, Game.getProvince(i).getNeighboringProvinces(i2)));
                                } else {
                                    Game.getProvince(Game.getProvince(i).getNeighboringProvinces(i2)).getProvinceBordersSeaBySea(i).updateDrawProvinceBorder_ActiveProvince();
                                    ProvinceBorderManager.lProvincesSeaBySea.add(new PBData(Game.getProvince(i).getNeighboringProvinces(i2), i));
                                }
                            } else if (Game.getProvince(i).getSeaProvince() || Game.getProvince(Game.getProvince(i).getNeighboringProvinces(i2)).getSeaProvince()) {
                                if (i < Game.getProvince(i).getNeighboringProvinces(i2)) {
                                    Game.getProvince(i).getProvinceBordersLandBySea(Game.getProvince(i).getNeighboringProvinces(i2)).updateDrawProvinceBorder_ActiveProvince();
                                    ProvinceBorderManager.lProvincesLandBySea.add(new PBData(i, Game.getProvince(i).getNeighboringProvinces(i2)));
                                } else {
                                    Game.getProvince(Game.getProvince(i).getNeighboringProvinces(i2)).getProvinceBordersLandBySea(i).updateDrawProvinceBorder_ActiveProvince();
                                    ProvinceBorderManager.lProvincesLandBySea.add(new PBData(Game.getProvince(i).getNeighboringProvinces(i2), i));
                                }
                            } else if (i < Game.getProvince(i).getNeighboringProvinces(i2)) {
                                Game.getProvince(i).getProvinceBordersLandByLand(Game.getProvince(i).getNeighboringProvinces(i2)).updateDrawProvinceBorder_ActiveProvince();
                                ProvinceBorderManager.lProvinces.add(new PBData(i, Game.getProvince(i).getNeighboringProvinces(i2)));
                            } else {
                                Game.getProvince(Game.getProvince(i).getNeighboringProvinces(i2)).getProvinceBordersLandByLand(i).updateDrawProvinceBorder_ActiveProvince();
                                ProvinceBorderManager.lProvinces.add(new PBData(Game.getProvince(i).getNeighboringProvinces(i2), i));
                            }
                        }
                        for (int i3 = 0; i3 < Game.getProvince(i).getNeighboringSeaProvincesSize(); i3++) {
                            if (i < Game.getProvince(i).getNeighboringSeaProvinces(i3)) {
                                Game.getProvince(i).getProvinceBordersLandBySea(Game.getProvince(i).getNeighboringSeaProvinces(i3)).updateDrawProvinceBorder_ActiveProvince();
                                ProvinceBorderManager.lProvincesLandBySea.add(new PBData(i, Game.getProvince(i).getNeighboringSeaProvinces(i3)));
                            } else {
                                Game.getProvince(Game.getProvince(i).getNeighboringSeaProvinces(i3)).getProvinceBordersLandBySea(i).updateDrawProvinceBorder_ActiveProvince();
                                ProvinceBorderManager.lProvincesLandBySea.add(new PBData(Game.getProvince(i).getNeighboringSeaProvinces(i3), i));
                            }
                        }
                    }
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorderManager.Action
        public void update() {
            if (ProvinceBorderManager.lTimeLine < CFG.currentTimeMillis - ((long) ProvinceBorderManager.iLineOffsetInterval)) {
                ProvinceBorderManager.iLineOffset++;
                ProvinceBorderManager.lTimeLine = CFG.currentTimeMillis;
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceBorderManager$3, reason: invalid class name */
    class AnonymousClass3 implements Action {
        AnonymousClass3() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorderManager.Action
        public void resetProvinceID() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorderManager.Action
        public void setProvinceID(int i) {
            ProvinceBorderManager.updateDrawProvinceBorder_SelectCiv_ByProvinceID(i);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorderManager.Action
        public void update() {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceBorderManager$4, reason: invalid class name */
    class AnonymousClass4 implements Action {
        AnonymousClass4() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorderManager.Action
        public void resetProvinceID() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorderManager.Action
        public void setProvinceID(int i) {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorderManager.Action
        public void update() {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceBorderManager$5, reason: invalid class name */
    class AnonymousClass5 implements Action {
        AnonymousClass5() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorderManager.Action
        public void resetProvinceID() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorderManager.Action
        public void setProvinceID(int i) {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorderManager.Action
        public void update() {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceBorderManager$6, reason: invalid class name */
    class AnonymousClass6 implements Action {
        AnonymousClass6() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorderManager.Action
        public void resetProvinceID() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorderManager.Action
        public void setProvinceID(int i) {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceBorderManager.Action
        public void update() {
        }
    }

    public interface Action {
        void resetProvinceID();

        void setProvinceID(int i);

        void update();
    }

    public static class PBData {
        public int iProvinceID;
        public int iWithProvinceID;

        public PBData(int i, int i2) {
            this.iProvinceID = i;
            this.iWithProvinceID = i2;
        }
    }

    public static final void clearProvinceBorder() {
        int size = lProvinces.size();
        for (int i = 0; i < size; i++) {
            Game.getProvince(lProvinces.get(i).iProvinceID).getProvinceBordersLandByLand(lProvinces.get(i).iWithProvinceID).isLocked = false;
            Game.getProvince(lProvinces.get(i).iProvinceID).getProvinceBordersLandByLand(lProvinces.get(i).iWithProvinceID).updateDrawProvinceBorder(lProvinces.get(i).iProvinceID);
        }
        lProvinces.clear();
        int size2 = lProvincesLandBySea.size();
        for (int i2 = 0; i2 < size2; i2++) {
            Game.getProvince(lProvincesLandBySea.get(i2).iProvinceID).getProvinceBordersLandBySea(lProvincesLandBySea.get(i2).iWithProvinceID).isLocked = false;
            Game.getProvince(lProvincesLandBySea.get(i2).iProvinceID).getProvinceBordersLandBySea(lProvincesLandBySea.get(i2).iWithProvinceID).updateDrawProvinceBorder(lProvincesLandBySea.get(i2).iProvinceID);
        }
        lProvincesLandBySea.clear();
        int size3 = lProvincesSeaBySea.size();
        for (int i3 = 0; i3 < size3; i3++) {
            Game.getProvince(lProvincesSeaBySea.get(i3).iProvinceID).getProvinceBordersSeaBySea(lProvincesSeaBySea.get(i3).iWithProvinceID).isLocked = false;
            Game.getProvince(lProvincesSeaBySea.get(i3).iProvinceID).getProvinceBordersSeaBySea(lProvincesSeaBySea.get(i3).iWithProvinceID).updateDrawProvinceBorder(lProvincesSeaBySea.get(i3).iProvinceID);
        }
        lProvincesSeaBySea.clear();
    }

    public static final void update() {
        updateWarColor();
        if (Game.mapScale.getCurrentScale() >= Game.DRAW_INNER_BORDERS && !drawInnerBorder) {
            updateProvinceBorder();
            drawInnerBorder = true;
            return;
        }
        if (Game.mapScale.getCurrentScale() < Game.DRAW_INNER_BORDERS && drawInnerBorder) {
            updateProvinceBorder();
            drawInnerBorder = false;
        } else if (Game.mapScale.getCurrentScale() > SettingsProvince.value.DRAW_BORDERS && !drawBorder) {
            updateProvinceBorder();
            drawBorder = true;
        } else {
            if (Game.mapScale.getCurrentScale() > SettingsProvince.value.DRAW_BORDERS || !drawBorder) {
                return;
            }
            updateProvinceBorder();
            drawBorder = false;
        }
    }

    public static final void updateAction() {
        if (Game.menuManager.getInGame()) {
            action = new AnonymousClass2();
            return;
        }
        if (Game.menuManager.getInNewGame()) {
            action = new AnonymousClass3();
            return;
        }
        if (Game.menuManager.getInGameLost()) {
            action = new AnonymousClass4();
        } else if (Game.menuManager.getInInitGameMenu() || Game.menuManager.getInInitGame_Menus() || Game.menuManager.getInLoadScenario()) {
            action = new AnonymousClass5();
        } else {
            action = new AnonymousClass6();
        }
    }

    public static final void updateDrawProvinceBorder_ImprovingRelations() {
        clearProvinceBorder();
        int i = Game.getCiv(Game.player.iCivID).diplomacy.iImprovingRelationsSize;
        while (true) {
            i--;
            if (i < 0) {
                break;
            }
            int i2 = Game.getCiv(Game.player.iCivID).diplomacy.improvingRelations.get(i).iCivID;
            if (i2 > 0 && Game.getCiv(i2).getNumOfProvinces() > 0) {
                for (int i3 = 0; i3 < Game.getCiv(i2).getNumOfProvinces(); i3++) {
                    for (int i4 = 0; i4 < Game.getProvince(Game.getCiv(i2).getProvinceID(i3)).getNeighboringProvincesSize(); i4++) {
                        if (Game.getProvince(Game.getCiv(i2).getProvinceID(i3)).getCivID() != Game.getProvince(Game.getProvince(Game.getCiv(i2).getProvinceID(i3)).getNeighboringProvinces(i4)).getCivID()) {
                            if (Game.getCiv(i2).getProvinceID(i3) < Game.getProvince(Game.getCiv(i2).getProvinceID(i3)).getNeighboringProvinces(i4)) {
                                Game.getProvince(Game.getCiv(i2).getProvinceID(i3)).getProvinceBordersLandByLand(Game.getProvince(Game.getCiv(i2).getProvinceID(i3)).getNeighboringProvinces(i4)).updateDrawProvinceBorder_RelationUp();
                                lProvinces.add(new PBData(Game.getCiv(i2).getProvinceID(i3), Game.getProvince(Game.getCiv(i2).getProvinceID(i3)).getNeighboringProvinces(i4)));
                            } else {
                                Game.getProvince(Game.getProvince(Game.getCiv(i2).getProvinceID(i3)).getNeighboringProvinces(i4)).getProvinceBordersLandByLand(Game.getCiv(i2).getProvinceID(i3)).updateDrawProvinceBorder_RelationUp();
                                lProvinces.add(new PBData(Game.getProvince(Game.getCiv(i2).getProvinceID(i3)).getNeighboringProvinces(i4), Game.getCiv(i2).getProvinceID(i3)));
                            }
                        }
                    }
                }
            }
        }
        int i5 = Game.player.iCivID;
        if (i5 <= 0 || Game.getCiv(i5).getNumOfProvinces() <= 0) {
            return;
        }
        for (int i6 = 0; i6 < Game.getCiv(i5).getNumOfProvinces(); i6++) {
            for (int i7 = 0; i7 < Game.getProvince(Game.getCiv(i5).getProvinceID(i6)).getNeighboringProvincesSize(); i7++) {
                if (Game.getProvince(Game.getCiv(i5).getProvinceID(i6)).getCivID() != Game.getProvince(Game.getProvince(Game.getCiv(i5).getProvinceID(i6)).getNeighboringProvinces(i7)).getCivID()) {
                    if (Game.getCiv(i5).getProvinceID(i6) < Game.getProvince(Game.getCiv(i5).getProvinceID(i6)).getNeighboringProvinces(i7)) {
                        Game.getProvince(Game.getCiv(i5).getProvinceID(i6)).getProvinceBordersLandByLand(Game.getProvince(Game.getCiv(i5).getProvinceID(i6)).getNeighboringProvinces(i7)).updateDrawProvinceBorder_ActiveCivilizationBorder();
                        lProvinces.add(new PBData(Game.getCiv(i5).getProvinceID(i6), Game.getProvince(Game.getCiv(i5).getProvinceID(i6)).getNeighboringProvinces(i7)));
                    } else {
                        Game.getProvince(Game.getProvince(Game.getCiv(i5).getProvinceID(i6)).getNeighboringProvinces(i7)).getProvinceBordersLandByLand(Game.getCiv(i5).getProvinceID(i6)).updateDrawProvinceBorder_ActiveCivilizationBorder();
                        lProvinces.add(new PBData(Game.getProvince(Game.getCiv(i5).getProvinceID(i6)).getNeighboringProvinces(i7), Game.getCiv(i5).getProvinceID(i6)));
                    }
                }
            }
        }
    }

    public static final void updateDrawProvinceBorder_SelectCiv_ByCivID(int i) {
        clearProvinceBorder();
        if (i <= 0 || Game.getCiv(i).getNumOfProvinces() <= 0) {
            return;
        }
        for (int i2 = 0; i2 < Game.getCiv(i).getNumOfProvinces(); i2++) {
            for (int i3 = 0; i3 < Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getNeighboringProvincesSize(); i3++) {
                if (Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getCivID() != Game.getProvince(Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getNeighboringProvinces(i3)).getCivID()) {
                    if (Game.getCiv(i).getProvinceID(i2) < Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getNeighboringProvinces(i3)) {
                        Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getProvinceBordersLandByLand(Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getNeighboringProvinces(i3)).updateDrawProvinceBorder_ActiveCivilizationBorder();
                        lProvinces.add(new PBData(Game.getCiv(i).getProvinceID(i2), Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getNeighboringProvinces(i3)));
                    } else {
                        Game.getProvince(Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getNeighboringProvinces(i3)).getProvinceBordersLandByLand(Game.getCiv(i).getProvinceID(i2)).updateDrawProvinceBorder_ActiveCivilizationBorder();
                        lProvinces.add(new PBData(Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getNeighboringProvinces(i3), Game.getCiv(i).getProvinceID(i2)));
                    }
                }
            }
        }
    }

    public static final void updateDrawProvinceBorder_SelectCiv_ByProvinceID(int i) {
        clearProvinceBorder();
        if (Game.getProvince(i).getCivID() <= 0 || Game.getCiv(Game.getProvince(i).getCivID()).getNumOfProvinces() <= 0) {
            return;
        }
        for (int i2 = 0; i2 < Game.getCiv(Game.getProvince(i).getCivID()).getNumOfProvinces(); i2++) {
            for (int i3 = 0; i3 < Game.getProvince(Game.getCiv(Game.getProvince(i).getCivID()).getProvinceID(i2)).getNeighboringProvincesSize(); i3++) {
                if (Game.getProvince(Game.getCiv(Game.getProvince(i).getCivID()).getProvinceID(i2)).getCivID() != Game.getProvince(Game.getProvince(Game.getCiv(Game.getProvince(i).getCivID()).getProvinceID(i2)).getNeighboringProvinces(i3)).getCivID()) {
                    if (Game.getCiv(Game.getProvince(i).getCivID()).getProvinceID(i2) < Game.getProvince(Game.getCiv(Game.getProvince(i).getCivID()).getProvinceID(i2)).getNeighboringProvinces(i3)) {
                        Game.getProvince(Game.getCiv(Game.getProvince(i).getCivID()).getProvinceID(i2)).getProvinceBordersLandByLand(Game.getProvince(Game.getCiv(Game.getProvince(i).getCivID()).getProvinceID(i2)).getNeighboringProvinces(i3)).updateDrawProvinceBorder_ActiveCivilizationBorder();
                        lProvinces.add(new PBData(Game.getCiv(Game.getProvince(i).getCivID()).getProvinceID(i2), Game.getProvince(Game.getCiv(Game.getProvince(i).getCivID()).getProvinceID(i2)).getNeighboringProvinces(i3)));
                    } else {
                        Game.getProvince(Game.getProvince(Game.getCiv(Game.getProvince(i).getCivID()).getProvinceID(i2)).getNeighboringProvinces(i3)).getProvinceBordersLandByLand(Game.getCiv(Game.getProvince(i).getCivID()).getProvinceID(i2)).updateDrawProvinceBorder_ActiveCivilizationBorder();
                        lProvinces.add(new PBData(Game.getProvince(Game.getCiv(Game.getProvince(i).getCivID()).getProvinceID(i2)).getNeighboringProvinces(i3), Game.getCiv(Game.getProvince(i).getCivID()).getProvinceID(i2)));
                    }
                }
            }
        }
    }

    public static final void updateProvinceBorder() {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            for (int i2 = 0; i2 < Game.getProvince(i).getNeighboringProvincesSize(); i2++) {
                if (i < Game.getProvince(i).getNeighboringProvinces(i2)) {
                    if (Game.getProvince(i).getSeaProvince() && Game.getProvince(Game.getProvince(i).getNeighboringProvinces(i2)).getSeaProvince()) {
                        Game.getProvince(i).getProvinceBordersSeaBySea(Game.getProvince(i).getNeighboringProvinces(i2)).updateDrawProvinceBorder(i);
                    } else if (Game.getProvince(i).getSeaProvince() || Game.getProvince(Game.getProvince(i).getNeighboringProvinces(i2)).getSeaProvince()) {
                        Game.getProvince(i).getProvinceBordersLandBySea(Game.getProvince(i).getNeighboringProvinces(i2)).updateDrawProvinceBorder(i);
                    } else {
                        Game.getProvince(i).getProvinceBordersLandByLand(Game.getProvince(i).getNeighboringProvinces(i2)).updateDrawProvinceBorder(i);
                    }
                } else if (Game.getProvince(i).getSeaProvince() && Game.getProvince(Game.getProvince(i).getNeighboringProvinces(i2)).getSeaProvince()) {
                    Game.getProvince(Game.getProvince(i).getNeighboringProvinces(i2)).getProvinceBordersSeaBySea(i2).updateDrawProvinceBorder(Game.getProvince(i).getNeighboringProvinces(i2));
                } else if (Game.getProvince(i).getSeaProvince() || Game.getProvince(Game.getProvince(i).getNeighboringProvinces(i2)).getSeaProvince()) {
                    Game.getProvince(Game.getProvince(i).getNeighboringProvinces(i2)).getProvinceBordersLandBySea(i2).updateDrawProvinceBorder(Game.getProvince(i).getNeighboringProvinces(i2));
                } else {
                    Game.getProvince(Game.getProvince(i).getNeighboringProvinces(i2)).getProvinceBordersLandByLand(i2).updateDrawProvinceBorder(Game.getProvince(i).getNeighboringProvinces(i2));
                }
            }
        }
    }

    public static final void updateProvinceBorder(int i) {
        for (int i2 = 0; i2 < Game.getProvince(i).getNeighboringProvincesSize(); i2++) {
            if (i < Game.getProvince(i).getNeighboringProvinces(i2)) {
                if (Game.getProvince(i).getSeaProvince() && Game.getProvince(Game.getProvince(i).getNeighboringProvinces(i2)).getSeaProvince()) {
                    Game.getProvince(i).getProvinceBordersSeaBySea(Game.getProvince(i).getNeighboringProvinces(i2)).updateDrawProvinceBorder(i);
                } else if (Game.getProvince(i).getSeaProvince() || Game.getProvince(Game.getProvince(i).getNeighboringProvinces(i2)).getSeaProvince()) {
                    Game.getProvince(i).getProvinceBordersLandBySea(Game.getProvince(i).getNeighboringProvinces(i2)).updateDrawProvinceBorder(i);
                } else {
                    Game.getProvince(i).getProvinceBordersLandByLand(Game.getProvince(i).getNeighboringProvinces(i2)).updateDrawProvinceBorder(i);
                }
            } else if (Game.getProvince(i).getSeaProvince() && Game.getProvince(Game.getProvince(i).getNeighboringProvinces(i2)).getSeaProvince()) {
                Game.getProvince(Game.getProvince(i).getNeighboringProvinces(i2)).getProvinceBordersSeaBySea(i2).updateDrawProvinceBorder(Game.getProvince(i).getNeighboringProvinces(i2));
            } else if (Game.getProvince(i).getSeaProvince() || Game.getProvince(Game.getProvince(i).getNeighboringProvinces(i2)).getSeaProvince()) {
                Game.getProvince(Game.getProvince(i).getNeighboringProvinces(i2)).getProvinceBordersLandBySea(i2).updateDrawProvinceBorder(Game.getProvince(i).getNeighboringProvinces(i2));
            } else {
                Game.getProvince(Game.getProvince(i).getNeighboringProvinces(i2)).getProvinceBordersLandByLand(i2).updateDrawProvinceBorder(Game.getProvince(i).getNeighboringProvinces(i2));
            }
        }
    }

    public static final void updateWarColor() {
        if (GameValues.provinceBorderWar.ENABLE_WAR_BORDER) {
            if (warColorMovingBack) {
                int iMin = (int) (((long) WAR_COLOR_STEP) + Math.min(100L, CFG.currentTimeMillis - WAR_COLOR_TIME));
                WAR_COLOR_STEP = iMin;
                if (iMin < 0) {
                    CFG.COLOR_PROVINCE_STRAIGHT_WAR_ACTIVE = CFG.COLOR_PROVINCE_STRAIGHT_WAR;
                    WAR_COLOR_TIME = CFG.currentTimeMillis;
                    return;
                }
                CFG.COLOR_PROVINCE_STRAIGHT_WAR_ACTIVE = CFG.getColorStep(CFG.COLOR_PROVINCE_STRAIGHT_WAR, CFG.COLOR_PROVINCE_STRAIGHT_WAR2, WAR_COLOR_STEP, GameValues.provinceBorderWar.WAR_COLOR_TIME_ANIMATION, 1.0f);
                WAR_COLOR_TIME = CFG.currentTimeMillis;
                if (WAR_COLOR_STEP >= GameValues.provinceBorderWar.WAR_COLOR_TIME_ANIMATION) {
                    WAR_COLOR_STEP = -GameValues.provinceBorderWar.WAR_COLOR_TIME_PAUSE2;
                    warColorMovingBack = false;
                    return;
                }
                return;
            }
            int iMin2 = (int) (((long) WAR_COLOR_STEP) + Math.min(100L, CFG.currentTimeMillis - WAR_COLOR_TIME));
            WAR_COLOR_STEP = iMin2;
            if (iMin2 < 0) {
                CFG.COLOR_PROVINCE_STRAIGHT_WAR_ACTIVE = CFG.COLOR_PROVINCE_STRAIGHT_WAR2;
                WAR_COLOR_TIME = CFG.currentTimeMillis;
                return;
            }
            CFG.COLOR_PROVINCE_STRAIGHT_WAR_ACTIVE = CFG.getColorStep(CFG.COLOR_PROVINCE_STRAIGHT_WAR2, CFG.COLOR_PROVINCE_STRAIGHT_WAR, WAR_COLOR_STEP, GameValues.provinceBorderWar.WAR_COLOR_TIME_ANIMATION, 1.0f);
            WAR_COLOR_TIME = CFG.currentTimeMillis;
            if (WAR_COLOR_STEP >= GameValues.provinceBorderWar.WAR_COLOR_TIME_ANIMATION) {
                WAR_COLOR_STEP = -GameValues.provinceBorderWar.WAR_COLOR_TIME_PAUSE;
                warColorMovingBack = true;
            }
        }
    }
}
