package aoc.kingdoms.lukasz.map.civilization;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.Matrix4;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class CivilizationRegionsManager {
    private static Renderer_CivRegionNames oRenderer_CivRegionNames;
    public static Matrix4 oldTransformMatrix;
    public static List<Boolean> isProvinceAssigned = new ArrayList();
    public static boolean updateRegionsInView = true;
    public static float civsRegionsAlpha = 1.0f;
    private static List<Integer> lRegions_Civs = new ArrayList();
    private static List<List<Integer>> lRegions_Civs_RegionsID = new ArrayList();
    public static int NUM_OF_REGIONS_IN_VIEW = 0;
    public static boolean drawHideAnimation = false;
    public static float CIVILIZATION_NAMES_ALPHA = 0.1f;
    public static long CIVILIZATIONS_NAMES_TIME = 0;
    public static long CIVILIZATIONS_NAMES_TIME_HIDE = 0;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.civilization.CivilizationRegionsManager$1, reason: invalid class name */
    class AnonymousClass1 extends Game.SimpleTask {
        AnonymousClass1(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            CivilizationRegionsManager.buildCivilizationsRegions_TextOver(this.id);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.civilization.CivilizationRegionsManager$2, reason: invalid class name */
    class AnonymousClass2 implements Renderer_CivRegionNames {
        AnonymousClass2() {
        }

        @Override // aoc.kingdoms.lukasz.map.civilization.CivilizationRegionsManager.Renderer_CivRegionNames
        public void draw(SpriteBatch spriteBatch) {
            CivilizationRegionsManager.drawCivRegions_Names2(spriteBatch);
        }

        @Override // aoc.kingdoms.lukasz.map.civilization.CivilizationRegionsManager.Renderer_CivRegionNames
        public void update() {
            CivilizationRegionsManager.updateRegionsInView2();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.civilization.CivilizationRegionsManager$3, reason: invalid class name */
    class AnonymousClass3 implements Renderer_CivRegionNames {
        AnonymousClass3() {
        }

        @Override // aoc.kingdoms.lukasz.map.civilization.CivilizationRegionsManager.Renderer_CivRegionNames
        public void draw(SpriteBatch spriteBatch) {
            CivilizationRegionsManager.drawCivRegions_Names2_Low(spriteBatch);
        }

        @Override // aoc.kingdoms.lukasz.map.civilization.CivilizationRegionsManager.Renderer_CivRegionNames
        public void update() {
            CivilizationRegionsManager.updateRegionsInView2();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.civilization.CivilizationRegionsManager$4, reason: invalid class name */
    class AnonymousClass4 implements Renderer_CivRegionNames {
        AnonymousClass4() {
        }

        @Override // aoc.kingdoms.lukasz.map.civilization.CivilizationRegionsManager.Renderer_CivRegionNames
        public void draw(SpriteBatch spriteBatch) {
        }

        @Override // aoc.kingdoms.lukasz.map.civilization.CivilizationRegionsManager.Renderer_CivRegionNames
        public void update() {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.civilization.CivilizationRegionsManager$5, reason: invalid class name */
    class AnonymousClass5 implements Renderer_CivRegionNames {
        AnonymousClass5() {
        }

        @Override // aoc.kingdoms.lukasz.map.civilization.CivilizationRegionsManager.Renderer_CivRegionNames
        public void draw(SpriteBatch spriteBatch) {
        }

        @Override // aoc.kingdoms.lukasz.map.civilization.CivilizationRegionsManager.Renderer_CivRegionNames
        public void update() {
        }
    }

    public interface Renderer_CivRegionNames {
        void draw(SpriteBatch spriteBatch);

        void update();
    }

    public static final void buildCivilizationsRegion(int i) {
        try {
            Game.getCiv(i).clearCivRegions_Just();
            isProvinceAssigned.clear();
            for (int i2 = 0; i2 < Game.getProvincesSize(); i2++) {
                isProvinceAssigned.add(false);
            }
            for (int i3 = 0; i3 < Game.getCiv(i).getNumOfProvinces(); i3++) {
                Game.getProvince(Game.getCiv(i).getProvinceID(i3)).setCivRegionID(-1);
            }
            for (int i4 = 0; i4 < Game.getCiv(i).getNumOfProvinces(); i4++) {
                if (!isProvinceAssigned.get(Game.getCiv(i).getProvinceID(i4)).booleanValue()) {
                    Game.getCiv(i).createCivilizationRegion(Game.getCiv(i).getProvinceID(i4));
                    updateIsProvinceAssigned(Game.getCiv(i).getProvinceID(i4), true);
                }
            }
            isProvinceAssigned.clear();
            Renderer.addSimpleTaskCivsNames(new AnonymousClass1("" + i, i));
        } catch (Exception unused) {
        }
    }

    public static final void buildCivilizationsRegions() {
        for (int i = 1; i < Game.getCivsSize(); i++) {
            Game.getCiv(i).clearCivRegions_Just();
        }
        isProvinceAssigned.clear();
        for (int i2 = 0; i2 < Game.getProvincesSize(); i2++) {
            Game.getProvince(i2).setCivRegionID(-1);
            isProvinceAssigned.add(false);
        }
        for (int i3 = 0; i3 < Game.getProvincesSize(); i3++) {
            if (Game.getProvince(i3).getCivID() != 0 && !isProvinceAssigned.get(i3).booleanValue()) {
                updateIsProvinceAssigned(i3, true);
                Game.getCiv(Game.getProvince(i3).getCivID()).createCivilizationRegion(i3);
            }
        }
        isProvinceAssigned.clear();
        buildCivilizationsRegions_TextOver();
    }

    public static final void buildCivilizationsRegions_TextOver() {
        for (int i = 1; i < Game.getCivsSize(); i++) {
            buildCivilizationsRegions_TextOver(i);
        }
    }

    public static final void buildCivilizationsRegions_TextOver(int i) {
        for (int i2 = 0; i2 < Game.getCiv(i).getCivRegionsSize(); i2++) {
            Game.getCiv(i).getCivRegion(i2).buildRegionPath_TriedToUse();
            Game.getCiv(i).getCivRegion(i2).buildRegionPath();
        }
    }

    public static final void drawCivNames(SpriteBatch spriteBatch) {
        if (Game.mapScale.getCurrentScale() < Game.DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE) {
            if (updateRegionsInView) {
                oRenderer_CivRegionNames.update();
                updateRegionsInView = false;
            }
            drawCivNames_Begin(spriteBatch);
            drawCivRegions_Names_UpdateTime();
            oRenderer_CivRegionNames.draw(spriteBatch);
            drawCivNames_End(spriteBatch);
            drawHideAnimation = true;
            CIVILIZATIONS_NAMES_TIME_HIDE = 0L;
        } else if (drawHideAnimation) {
            if (updateRegionsInView) {
                oRenderer_CivRegionNames.update();
                updateRegionsInView = false;
            }
            drawCivNames_Begin(spriteBatch);
            drawCivRegions_Names_UpdateTimeHide();
            oRenderer_CivRegionNames.draw(spriteBatch);
            drawCivNames_End(spriteBatch);
        } else {
            CIVILIZATIONS_NAMES_TIME = 0L;
        }
        spriteBatch.setColor(Color.WHITE);
    }

    public static final synchronized void drawCivNames_Begin(SpriteBatch spriteBatch) {
        civsRegionsAlpha = CIVILIZATION_NAMES_ALPHA * (((1.0f - Game.mapScale.getCurrentScale()) * 0.25f) + 1.0f);
        oldTransformMatrix = spriteBatch.getTransformMatrix().cpy();
        Renderer.fontBorder.get(0).setColor(new Color(1.0f, 1.0f, 1.0f, civsRegionsAlpha));
    }

    public static final void drawCivNames_End(SpriteBatch spriteBatch) {
        spriteBatch.setTransformMatrix(oldTransformMatrix);
    }

    protected static final void drawCivRegions_Names2(SpriteBatch spriteBatch) {
        for (int i = 0; i < lRegions_Civs_RegionsID.size(); i++) {
            try {
                try {
                    for (int size = lRegions_Civs_RegionsID.get(i).size() - 1; size >= 0; size--) {
                        try {
                            try {
                                Game.getCiv(lRegions_Civs.get(i).intValue()).getCivRegion(lRegions_Civs_RegionsID.get(i).get(size).intValue()).drawCivRegion(spriteBatch);
                            } catch (IndexOutOfBoundsException unused) {
                                updateRegionsInView2();
                            }
                        } catch (Exception e) {
                            CFG.exceptionStack(e);
                        }
                    }
                } catch (Exception e2) {
                    CFG.exceptionStack(e2);
                }
            } catch (Exception e3) {
                CFG.exceptionStack(e3);
                return;
            }
        }
    }

    protected static final void drawCivRegions_Names2_Low(SpriteBatch spriteBatch) {
        for (int i = 0; i < NUM_OF_REGIONS_IN_VIEW; i++) {
            try {
                try {
                    for (int size = lRegions_Civs_RegionsID.get(i).size() - 1; size >= 0; size--) {
                        try {
                            Game.getCiv(lRegions_Civs.get(i).intValue()).getCivRegion(lRegions_Civs_RegionsID.get(i).get(size).intValue()).drawCivRegion_Low(spriteBatch);
                        } catch (IndexOutOfBoundsException unused) {
                            updateRegionsInView2();
                        } catch (Exception e) {
                            CFG.exceptionStack(e);
                        }
                    }
                } catch (Exception e2) {
                    CFG.exceptionStack(e2);
                }
            } catch (Exception e3) {
                CFG.exceptionStack(e3);
                return;
            }
        }
    }

    public static final void drawCivRegions_Names_UpdateTime() {
        if (CIVILIZATIONS_NAMES_TIME == 0) {
            CIVILIZATIONS_NAMES_TIME = CFG.currentTimeMillis;
            CIVILIZATION_NAMES_ALPHA = 0.0f;
        } else if (CIVILIZATION_NAMES_ALPHA < Game.settingsManager.CIV_NAMES_TEXT_ALPHA) {
            float f = Game.settingsManager.CIV_NAMES_TEXT_ALPHA * ((CFG.currentTimeMillis - CIVILIZATIONS_NAMES_TIME) / Game.settingsManager.CIVILIZATIONS_NAMES_INTERVAL);
            CIVILIZATION_NAMES_ALPHA = f;
            if (f > Game.settingsManager.CIV_NAMES_TEXT_ALPHA) {
                CIVILIZATION_NAMES_ALPHA = Game.settingsManager.CIV_NAMES_TEXT_ALPHA;
            }
        }
    }

    public static final void drawCivRegions_Names_UpdateTimeHide() {
        if (CIVILIZATIONS_NAMES_TIME_HIDE == 0) {
            CIVILIZATIONS_NAMES_TIME_HIDE = CFG.currentTimeMillis;
            CIVILIZATION_NAMES_ALPHA = Game.settingsManager.CIV_NAMES_TEXT_ALPHA;
            return;
        }
        float f = Game.settingsManager.CIV_NAMES_TEXT_ALPHA - (Game.settingsManager.CIV_NAMES_TEXT_ALPHA * ((CFG.currentTimeMillis - CIVILIZATIONS_NAMES_TIME_HIDE) / (Game.settingsManager.CIVILIZATIONS_NAMES_INTERVAL / 2.0f)));
        CIVILIZATION_NAMES_ALPHA = f;
        if (f <= 0.0f) {
            CIVILIZATION_NAMES_ALPHA = 0.0f;
            drawHideAnimation = false;
        }
    }

    private static void processProvince(int i, int[] iArr) {
        if (Game.getProvince(i).getCivID() > 0) {
            int civID = Game.getProvince(i).getCivID();
            int i2 = iArr[civID];
            if (i2 > 0) {
                int i3 = i2 - 1;
                if (lRegions_Civs_RegionsID.get(i3).contains(Integer.valueOf(Game.getProvince(i).getCivRegionID()))) {
                    return;
                }
                lRegions_Civs_RegionsID.get(i3).add(Integer.valueOf(Game.getProvince(i).getCivRegionID()));
                return;
            }
            lRegions_Civs.add(Integer.valueOf(civID));
            int size = lRegions_Civs.size();
            iArr[civID] = size;
            lRegions_Civs_RegionsID.add(new ArrayList());
            if (Game.getProvince(i).getCivRegionID() >= 0) {
                lRegions_Civs_RegionsID.get(size - 1).add(Integer.valueOf(Game.getProvince(i).getCivRegionID()));
            }
        }
    }

    public static void updateIsProvinceAssigned(int i, boolean z) {
        try {
            isProvinceAssigned.set(i, Boolean.valueOf(z));
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateRegionsInView2() {
        lRegions_Civs.clear();
        lRegions_Civs_RegionsID.clear();
        try {
            int[] iArr = new int[Game.getCivsSize()];
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                processProvince(Game.getProvinceInViewID(i), iArr);
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                processProvince(Game.getExtraProvinceInViewID(i2), iArr);
            }
            NUM_OF_REGIONS_IN_VIEW = lRegions_Civs.size();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void updateRenderer_CivNames() {
        if (Game.menuManager.getInInitGameMenu() || Game.menuManager.getInInitGame_Menus() || Game.menuManager.getInMainMenu() || Game.menuManager.getInLoadGamesList() || Game.menuManager.getInScenarios_NewGame() || Game.menuManager.getInGameLegacies() || Game.menuManager.getInLoadScenario()) {
            oRenderer_CivRegionNames = new AnonymousClass5();
            return;
        }
        if (Game.settingsManager.SETTINGS_CIV_NAMES == 2) {
            oRenderer_CivRegionNames = new AnonymousClass2();
        } else if (Game.settingsManager.SETTINGS_CIV_NAMES == 1) {
            oRenderer_CivRegionNames = new AnonymousClass3();
        } else {
            oRenderer_CivRegionNames = new AnonymousClass4();
        }
    }
}
