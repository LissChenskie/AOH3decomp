package aoc.kingdoms.lukasz.jakowski.Renderer;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FBO.FBOProvincesBG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.map.SiegeManager;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRegionsManager;
import aoc.kingdoms.lukasz.map.map.Ship.ShipManager;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy;
import aoc.kingdoms.lukasz.map.province.ProvinceNamesManager;
import aoc.kingdoms.lukasz.menus.Settings.Settings_Menu;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class RendererGame {
    public static List<RendererAnimationNuke> animationNukes = new ArrayList();
    public static int iAnimationNukesSize = 0;
    public static RendererGameINT rendererGame = new AnonymousClass1();

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame$1, reason: invalid class name */
    class AnonymousClass1 implements RendererGameINT {
        AnonymousClass1() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame.RendererGameINT
        public void drawCurrentScale(SpriteBatch spriteBatch) {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame.RendererGameINT
        public void drawCurrentScale_Provinces(SpriteBatch spriteBatch) {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame.RendererGameINT
        public void drawWithoutScale(SpriteBatch spriteBatch) {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame.RendererGameINT
        public void drawWithoutScale_Provinces(SpriteBatch spriteBatch) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame$2, reason: invalid class name */
    class AnonymousClass2 implements RendererGameINT {
        AnonymousClass2() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame.RendererGameINT
        public void drawCurrentScale(SpriteBatch spriteBatch) {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame.RendererGameINT
        public void drawCurrentScale_Provinces(SpriteBatch spriteBatch) {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame.RendererGameINT
        public void drawWithoutScale(SpriteBatch spriteBatch) {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame.RendererGameINT
        public void drawWithoutScale_Provinces(SpriteBatch spriteBatch) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame$3, reason: invalid class name */
    class AnonymousClass3 implements RendererGameINT {
        AnonymousClass3() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame.RendererGameINT
        public void drawCurrentScale(SpriteBatch spriteBatch) {
            try {
                if (Game.settingsManager.FBO_PROVINCES && Game.menuManager.getInGame() && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DEFAULT) {
                    ProvinceDraw.drawOccupiedProvinces(spriteBatch);
                }
                Game.drawActiveProvince(spriteBatch);
                if (Game.mapScale.getCurrentScale() < 1.0f && Game.mapScale.getCurrentScale() > Game.cloudsAnimation.cloudsSettings.drawCloudsMinScale) {
                    ShipManager.drawCurrentScale(spriteBatch);
                }
                ProvinceDraw.drawProvincesBorder(spriteBatch);
                CivilizationRegionsManager.drawCivNames(spriteBatch);
                Game.cloudsAnimation.cloudsInterface.drawCloudsInterface(spriteBatch);
                Game.map.drawMapBorder(spriteBatch);
                Game.animationManager.draw(spriteBatch);
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame.RendererGameINT
        public void drawCurrentScale_Provinces(SpriteBatch spriteBatch) {
            ProvinceDraw.drawProvinces(spriteBatch);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame.RendererGameINT
        public void drawWithoutScale(SpriteBatch spriteBatch) {
            try {
                Game.unionManagerFlags.generateFlag(spriteBatch);
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
            try {
                if (Game.mapScale.getCurrentScale() >= 1.0f) {
                    ShipManager.draw(spriteBatch);
                }
                ProvinceDrawArmy.updateDrawArmyAlpha();
                ProvinceNamesManager.drawProvNames(spriteBatch);
                ProvinceDraw.drawSiegeLines_Just(spriteBatch, Game.mapScale.getCurrentScale());
                ProvinceDraw.drawBiggestCitiesLines_Just(spriteBatch, Game.mapScale.getCurrentScale());
                if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DIPLOMACY || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_CIV_POPULATION_HOVER || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_CIV_ECONOMY_HOVER || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DIPLOMACY_IMPROVE_RELATIONS || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DIPLOMACY_DAMAGE_RELATIONS) {
                    Game.mapCities.drawCities(spriteBatch, Game.mapScale.getCurrentScale());
                } else {
                    Game.mapCities.citiesInGame.draw(spriteBatch, Game.mapScale.getCurrentScale());
                }
                ProvinceDraw.oDrawMoveUnits.drawMoveUnits(spriteBatch);
                Game.animationManager.drawScaled(spriteBatch);
                try {
                    ProvinceDraw.drawExtraDetails.draw(spriteBatch);
                } catch (Exception e2) {
                    CFG.exceptionStack(e2);
                }
                if (Renderer.drawArmyInProvince) {
                    ProvinceDrawArmy.drawProvincesArmy(spriteBatch);
                    SiegeManager.draw(spriteBatch);
                    Game.battleManager.draw(spriteBatch);
                } else {
                    ProvinceDrawArmy.drawMapModeDetails(spriteBatch);
                }
                Game.mapTouchManager.drawSelectMode(spriteBatch);
                RendererGame.drawNukeAnimation(spriteBatch);
            } catch (Exception e3) {
                CFG.exceptionStack(e3);
            }
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame.RendererGameINT
        public void drawWithoutScale_Provinces(SpriteBatch spriteBatch) {
            if (Game.settingsManager.FBO_PROVINCES && FBOProvincesBG.textureProvince_PBG != null && Game.menuManager.getInGame() && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DEFAULT) {
                FBOProvincesBG.drawPBG(spriteBatch, ProvinceDraw.getLandProvinces_Alpha());
            }
            ProvinceDraw.drawDiplomacyLines_Just(spriteBatch, Game.mapScale.getCurrentScale());
            ProvinceDraw.drawProvinceDots_Just(spriteBatch, Game.mapScale.getCurrentScale());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame$4, reason: invalid class name */
    class AnonymousClass4 implements RendererGameINT {
        AnonymousClass4() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame.RendererGameINT
        public void drawCurrentScale(SpriteBatch spriteBatch) {
            try {
                if (Game.settingsManager.FBO_PROVINCES && Game.menuManager.getInGame() && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DEFAULT) {
                    ProvinceDraw.drawOccupiedProvinces(spriteBatch);
                }
                Game.drawActiveProvince(spriteBatch);
                long jNanoTime = System.nanoTime();
                if (Game.mapScale.getCurrentScale() < 1.0f && Game.mapScale.getCurrentScale() > Game.cloudsAnimation.cloudsSettings.drawCloudsMinScale) {
                    ShipManager.drawCurrentScale(spriteBatch);
                }
                if (Settings_Menu.updateTimes) {
                    Settings_Menu.drawShips_Time = System.nanoTime() - jNanoTime;
                    jNanoTime = System.nanoTime();
                }
                ProvinceDraw.drawProvincesBorder(spriteBatch);
                if (Settings_Menu.updateTimes) {
                    Settings_Menu.drawProvincesBorder_Time = System.nanoTime() - jNanoTime;
                    jNanoTime = System.nanoTime();
                }
                CivilizationRegionsManager.drawCivNames(spriteBatch);
                if (Settings_Menu.updateTimes) {
                    Settings_Menu.drawCivsNames_Time = System.nanoTime() - jNanoTime;
                    jNanoTime = System.nanoTime();
                }
                Game.cloudsAnimation.cloudsInterface.drawCloudsInterface(spriteBatch);
                if (Settings_Menu.updateTimes) {
                    Settings_Menu.drawClouds_Time = System.nanoTime() - jNanoTime;
                    jNanoTime = System.nanoTime();
                }
                Game.map.drawMapBorder(spriteBatch);
                if (Settings_Menu.updateTimes) {
                    Settings_Menu.drawMapBorder_Time = System.nanoTime() - jNanoTime;
                    System.nanoTime();
                }
                Game.animationManager.draw(spriteBatch);
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame.RendererGameINT
        public void drawCurrentScale_Provinces(SpriteBatch spriteBatch) {
            if (CFG.currentTimeMillis - Settings_Menu.lastUpdateTime > GameValues.value.SETTINGS_MENU_UPDATE_TIME) {
                Settings_Menu.lastUpdateTime = CFG.currentTimeMillis;
                Settings_Menu.updateTimes = true;
            }
            ProvinceDraw.drawProvinces_Settings(spriteBatch);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame.RendererGameINT
        public void drawWithoutScale(SpriteBatch spriteBatch) {
            try {
                long jNanoTime = System.nanoTime();
                if (Game.mapScale.getCurrentScale() >= 1.0f) {
                    ShipManager.draw(spriteBatch);
                }
                if (Settings_Menu.updateTimes) {
                    Settings_Menu.drawShips2_Time = System.nanoTime() - jNanoTime;
                }
                ProvinceDrawArmy.updateDrawArmyAlpha();
                long jNanoTime2 = System.nanoTime();
                ProvinceNamesManager.drawProvNames(spriteBatch);
                if (Settings_Menu.updateTimes) {
                    Settings_Menu.drawProvincesNames_Time = System.nanoTime() - jNanoTime2;
                }
                ProvinceDraw.drawSiegeLines_Just(spriteBatch, Game.mapScale.getCurrentScale());
                ProvinceDraw.drawBiggestCitiesLines_Just(spriteBatch, Game.mapScale.getCurrentScale());
                long jNanoTime3 = System.nanoTime();
                if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DIPLOMACY || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_CIV_POPULATION_HOVER || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_CIV_ECONOMY_HOVER || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DIPLOMACY_IMPROVE_RELATIONS || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DIPLOMACY_DAMAGE_RELATIONS) {
                    Game.mapCities.drawCities(spriteBatch, Game.mapScale.getCurrentScale());
                } else {
                    Game.mapCities.citiesInGame.draw(spriteBatch, Game.mapScale.getCurrentScale());
                }
                if (Settings_Menu.updateTimes) {
                    Settings_Menu.drawCities_Time = System.nanoTime() - jNanoTime3;
                    jNanoTime3 = System.nanoTime();
                }
                ProvinceDraw.oDrawMoveUnits.drawMoveUnits(spriteBatch);
                if (Settings_Menu.updateTimes) {
                    Settings_Menu.drawMoveUnits_Time = System.nanoTime() - jNanoTime3;
                    Game.animationManager.drawScaled(spriteBatch);
                }
                try {
                    ProvinceDraw.drawExtraDetails.draw(spriteBatch);
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
                long jNanoTime4 = System.nanoTime();
                if (Renderer.drawArmyInProvince) {
                    ProvinceDrawArmy.drawProvincesArmy(spriteBatch);
                    SiegeManager.draw(spriteBatch);
                    Game.battleManager.draw(spriteBatch);
                } else {
                    ProvinceDrawArmy.drawMapModeDetails(spriteBatch);
                }
                if (Settings_Menu.updateTimes) {
                    Settings_Menu.drawArmies_Time = System.nanoTime() - jNanoTime4;
                }
                Game.mapTouchManager.drawSelectMode(spriteBatch);
                RendererGame.drawNukeAnimation(spriteBatch);
                Settings_Menu.updateTimes = false;
            } catch (Exception e2) {
                CFG.exceptionStack(e2);
            }
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame.RendererGameINT
        public void drawWithoutScale_Provinces(SpriteBatch spriteBatch) {
            long jNanoTime = System.nanoTime();
            if (Game.settingsManager.FBO_PROVINCES && FBOProvincesBG.textureProvince_PBG != null && Game.menuManager.getInGame() && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DEFAULT) {
                FBOProvincesBG.drawPBG(spriteBatch, ProvinceDraw.getLandProvinces_Alpha());
            }
            if (Settings_Menu.updateTimes) {
                Settings_Menu.drawProvincesFBO_Time = System.nanoTime() - jNanoTime;
            }
            ProvinceDraw.drawDiplomacyLines_Just(spriteBatch, Game.mapScale.getCurrentScale());
            ProvinceDraw.drawProvinceDots_Just(spriteBatch, Game.mapScale.getCurrentScale());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame$5, reason: invalid class name */
    class AnonymousClass5 implements RendererGameINT {
        AnonymousClass5() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame.RendererGameINT
        public void drawCurrentScale(SpriteBatch spriteBatch) {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame.RendererGameINT
        public void drawCurrentScale_Provinces(SpriteBatch spriteBatch) {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame.RendererGameINT
        public void drawWithoutScale(SpriteBatch spriteBatch) {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame.RendererGameINT
        public void drawWithoutScale_Provinces(SpriteBatch spriteBatch) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame$6, reason: invalid class name */
    class AnonymousClass6 implements RendererGameINT {
        AnonymousClass6() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame.RendererGameINT
        public void drawCurrentScale(SpriteBatch spriteBatch) {
            ProvinceDraw.drawProvinces(spriteBatch);
            Game.drawActiveProvince(spriteBatch);
            ProvinceDraw.drawProvincesBorder(spriteBatch);
            if (Game.iActiveProvince >= 0) {
                ProvinceNamesManager.drawProvNamePoints(spriteBatch, Game.iActiveProvince);
            }
            Game.map.drawMapBorder(spriteBatch);
            Game.animationManager.draw(spriteBatch);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame.RendererGameINT
        public void drawCurrentScale_Provinces(SpriteBatch spriteBatch) {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame.RendererGameINT
        public void drawWithoutScale(SpriteBatch spriteBatch) {
            RendererGame.defaultDrawWithoutScale(spriteBatch);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame.RendererGameINT
        public void drawWithoutScale_Provinces(SpriteBatch spriteBatch) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame$7, reason: invalid class name */
    class AnonymousClass7 implements RendererGameINT {
        AnonymousClass7() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame.RendererGameINT
        public void drawCurrentScale(SpriteBatch spriteBatch) {
            ProvinceDraw.drawProvinces(spriteBatch);
            Game.drawActiveProvince(spriteBatch);
            ProvinceDraw.drawProvincesBorder(spriteBatch);
            CivilizationRegionsManager.drawCivNames(spriteBatch);
            Game.cloudsAnimation.cloudsInterface.drawCloudsInterface(spriteBatch);
            Game.map.drawMapBorder(spriteBatch);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame.RendererGameINT
        public void drawCurrentScale_Provinces(SpriteBatch spriteBatch) {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame.RendererGameINT
        public void drawWithoutScale(SpriteBatch spriteBatch) {
            ProvinceDrawArmy.updateDrawArmyAlpha();
            ProvinceNamesManager.drawProvNames(spriteBatch);
            Game.mapCities.drawCities_HighAllTheTime(spriteBatch, Game.mapScale.getCurrentScale());
            Game.mapTouchManager.drawSelectMode(spriteBatch);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame.RendererGameINT
        public void drawWithoutScale_Provinces(SpriteBatch spriteBatch) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame$8, reason: invalid class name */
    class AnonymousClass8 implements RendererGameINT {
        AnonymousClass8() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame.RendererGameINT
        public void drawCurrentScale(SpriteBatch spriteBatch) {
            ProvinceDraw.drawProvinces(spriteBatch);
            Game.drawActiveProvince(spriteBatch);
            ProvinceDraw.drawProvincesBorder(spriteBatch);
            CivilizationRegionsManager.drawCivNames(spriteBatch);
            Game.cloudsAnimation.cloudsInterface.drawCloudsInterface(spriteBatch);
            Game.map.drawMapBorder(spriteBatch);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame.RendererGameINT
        public void drawCurrentScale_Provinces(SpriteBatch spriteBatch) {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame.RendererGameINT
        public void drawWithoutScale(SpriteBatch spriteBatch) {
            RendererGame.defaultDrawWithoutScale(spriteBatch);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame.RendererGameINT
        public void drawWithoutScale_Provinces(SpriteBatch spriteBatch) {
        }
    }

    interface RendererGameINT {
        void drawCurrentScale(SpriteBatch spriteBatch);

        void drawCurrentScale_Provinces(SpriteBatch spriteBatch);

        void drawWithoutScale(SpriteBatch spriteBatch);

        void drawWithoutScale_Provinces(SpriteBatch spriteBatch);
    }

    public static final void addNuke(int i) {
        animationNukes.add(new RendererAnimationNuke(i));
        iAnimationNukesSize = animationNukes.size();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void defaultDrawWithoutScale(SpriteBatch spriteBatch) {
        ProvinceDrawArmy.updateDrawArmyAlpha();
        ProvinceNamesManager.drawProvNames(spriteBatch);
        Game.mapCities.drawCities(spriteBatch, Game.mapScale.getCurrentScale());
        ProvinceDraw.oDrawMoveUnits.drawMoveUnits(spriteBatch);
        if (Renderer.drawArmyInProvince) {
            ProvinceDrawArmy.drawProvincesArmy(spriteBatch);
        } else {
            ProvinceDrawArmy.drawMapModeDetails(spriteBatch);
        }
        Game.mapTouchManager.drawSelectMode(spriteBatch);
    }

    private static final void drawCapitalFlag(SpriteBatch spriteBatch, int i, float f, float f2) {
        int drawPosX = getDrawPosX(i, f);
        int drawPosY = getDrawPosY(i, f);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.65f));
        int i2 = drawPosX - 1;
        int i3 = drawPosY - 1;
        ImageManager.getImage(Images.flagMask.get(0).intValue()).draw(spriteBatch, i2, i3, 70, 46);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setShader(Renderer.shaderAlpha);
        Game.getCiv(Game.getProvince(i).getCivID()).getFlag().getTexture().bind(1);
        Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
        ImageManager.getImage(Images.flagMask.get(0).intValue()).draw(spriteBatch, drawPosX, drawPosY, 68, 44);
        spriteBatch.flush();
        spriteBatch.setShader(Renderer.shaderDefault);
        ImageManager.getImage(Images.flagOver.get(0).intValue()).draw(spriteBatch, i2, i3, 70, 46);
    }

    public static final void drawCapitalFlags(SpriteBatch spriteBatch, float f) {
        for (int i = 1; i < Game.getCivsSize(); i++) {
            if (Game.getProvince(Game.getCiv(i).getCapitalProvinceID()).getDrawProvince()) {
                drawCapitalFlag(spriteBatch, Game.getCiv(i).getCapitalProvinceID(), f, 1.0f);
            }
        }
    }

    public static final void drawNukeAnimation(SpriteBatch spriteBatch) {
        try {
            for (int i = iAnimationNukesSize - 1; i >= 0; i--) {
                animationNukes.get(i).draw(spriteBatch);
                if (animationNukes.get(i).remove) {
                    animationNukes.remove(i);
                    iAnimationNukesSize = animationNukes.size();
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final int getDrawPosX(int i, float f) {
        return (int) ((Game.getProvince(i).iCenterShiftX + Game.getProvince(i).getTranslateProvincePosX()) * f);
    }

    public static final int getDrawPosY(int i, float f) {
        return (int) ((Game.getProvince(i).iCenterShiftY + Game.mapCoords.getPosY()) * f);
    }

    public static final void updateRenderer() {
        if (Game.menuManager.getInInitGameMenu() || Game.menuManager.getInLoadScenario() || Game.menuManager.getInInitGame_Menus()) {
            rendererGame = new AnonymousClass2();
            return;
        }
        if (Game.menuManager.getInGame()) {
            rendererGame = new AnonymousClass3();
            return;
        }
        if (Game.menuManager.getInSettingsMenu()) {
            rendererGame = new AnonymousClass4();
            return;
        }
        if (Game.menuManager.getInMainMenu() || Game.menuManager.getInScenarios_NewGame() || Game.menuManager.getInLoadGamesList() || Game.menuManager.getInGameLegacies() || Game.menuManager.getInNewGame_Scenarios() || Game.menuManager.getInNewGame_ScenariosCampaign()) {
            rendererGame = new AnonymousClass5();
            return;
        }
        if (Game.menuManager.getInMapEditorProvinceNamePoints()) {
            rendererGame = new AnonymousClass6();
        } else if (Game.menuManager.getInNewGame() || Game.menuManager.getInCloudsMenu() || Game.menuManager.getInGameLost()) {
            rendererGame = new AnonymousClass7();
        } else {
            rendererGame = new AnonymousClass8();
        }
    }
}
