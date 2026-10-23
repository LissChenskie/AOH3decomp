package aoc.kingdoms.lukasz.map.province;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FBO.FBOProvincesBG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.setting.SettingsProvince;
import aoc.kingdoms.lukasz.map.BuildingsManager;
import aoc.kingdoms.lukasz.map.FormableCivManager;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.map.WondersManager;
import aoc.kingdoms.lukasz.map.army.ArmyManager;
import aoc.kingdoms.lukasz.map.army.ArmyRecruit;
import aoc.kingdoms.lukasz.map.civilization.Civilization;
import aoc.kingdoms.lukasz.map.diplomacy.Diplomacy;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.map.MapModeManager;
import aoc.kingdoms.lukasz.map.map.MapScale;
import aoc.kingdoms.lukasz.map.map.MapScenarios;
import aoc.kingdoms.lukasz.map.moveUnits.other.MoveUnits_BiggestCities;
import aoc.kingdoms.lukasz.map.moveUnits.other.MoveUnits_BiggestCities_Diplomacy;
import aoc.kingdoms.lukasz.map.moveUnits.other.MoveUnits_BiggestCities_Siege;
import aoc.kingdoms.lukasz.map.province.animation.ProvinceAnimationDot;
import aoc.kingdoms.lukasz.map.technology.TechnologyTree;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menus.Settings.Settings_Menu;
import aoc.kingdoms.lukasz.menusEditor.CreateCiv;
import aoc.kingdoms.lukasz.menusEditor.GameCivsEdit;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_DeclareWar;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_FormCiv;
import aoc.kingdoms.lukasz.menusInGame.InGame;
import aoc.kingdoms.lukasz.menusInGame.InGame_ReleaseAVassal;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMapOptimizationRegions;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMap_FormableCiv;
import aoc.kingdoms.lukasz.menusMapEditor.EditorSelectProvinces;
import aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioRelationsList;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCreateAllianceList;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.glutils.FrameBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import space.earlygrey.shapedrawer.JoinType;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ProvinceDraw {
    public static final float PROVINCE_ALPHA_TERRAIN = 0.55f;
    public static DrawProvinces drawProvinces;
    public static DrawExtraDetails drawExtraDetails = new DrawExtraDetails();
    public static Color progressBarBG = new Color(0.09803922f, 0.09803922f, 0.15686275f, 1.0f);
    public static Color progressBar = new Color(0.29411766f, 0.49019608f, 0.64705884f, 1.0f);
    public static Color progressBar2 = new Color(0.3529412f, 0.64705884f, 0.8039216f, 1.0f);
    public static int drawProvincesCiv_HoveredFlagID = 0;
    public static Color PROVINCE_DIPLOMACY_NEUTRAL = new Color(0.8235294f, 0.8235294f, 0.78431374f, 1.0f);
    public static Color PROVINCE_DIPLOMACY_NEUTRAL_GREEN = new Color(0.9019608f, 0.9019608f, 0.8235294f, 1.0f);
    public static Color PROVINCE_DIPLOMACY_RED = new Color(0.92941177f, 0.627451f, 0.5882353f, 1.0f);
    public static Color PROVINCE_DIPLOMACY_RED2 = new Color(0.627451f, 0.19607843f, 0.19607843f, 1.0f);
    public static Color PROVINCE_DIPLOMACY_GREEN = new Color(0.5176471f, 0.74509805f, 0.43137255f, 1.0f);
    public static Color PROVINCE_DIPLOMACY_GREEN2 = new Color(0.0f, 0.4f, 0.0f, 1.0f);
    public static Color PROVINCE_DIPLOMACY_ALLIANCE = new Color(0.0f, 0.627451f, 0.92156863f, 1.0f);
    public static Color PROVINCE_DIPLOMACY_AT_WAR = new Color(0.8039216f, 0.0f, 0.0f, 1.0f);
    public static Color PROVINCE_DIPLOMACY_VASSAL = new Color(0.21568628f, 0.9529412f, 0.8745098f, 1.0f);
    public static Color PROVINCE_DIPLOMACY_PACT = new Color(0.8f, 0.8f, 0.0f, 1.0f);
    public static Color PROVINCE_DIPLOMACY_INDEPENDENCE = new Color(0.74509805f, 0.23529412f, 0.627451f, 1.0f);
    public static Color PROVINCE_DIPLOMACY_INDEPENDENCE2 = new Color(0.5882353f, 0.15686275f, 0.47058824f, 1.0f);
    public static Color PROVINCE_DIPLOMACY_MILITARY_ACCESS = new Color(0.08627451f, 0.08627451f, 0.5411765f, 1.0f);
    public static Color PROVINCE_DIPLOMACY_DEFENSIVE_PACT = new Color(0.5019608f, 0.23921569f, 0.7490196f, 1.0f);
    public static Color PROVINCE_DIPLOMACY_TRUCE = new Color(0.92156863f, 0.92156863f, 0.92156863f, 1.0f);
    public static JoinType joinType = JoinType.POINTY;
    public static JoinType joinType_Shadow = JoinType.SMOOTH;
    public static float lineWidth = 1.0f;
    public static DrawMoveUnits oDrawMoveUnits = new AnonymousClass34();
    public static int FRAME_ID = 0;
    public static List<MoveUnits_BiggestCities_Siege> siegeLines = new ArrayList();
    public static int iSiegeLinesSize = 0;
    public static List<MoveUnits_BiggestCities> biggestCitiesLines = new ArrayList();
    public static int iBiggestCitiesLinesSize = 0;
    public static List<MoveUnits_BiggestCities> diplomacyLines = new ArrayList();
    public static int iDiplomacyLinesSize = 0;
    public static List<ProvinceAnimationDot> provinceDots = new ArrayList();
    public static int iProvinceDotsSize = 0;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDraw$1, reason: invalid class name */
    class AnonymousClass1 extends DrawExtraDetails {
        AnonymousClass1() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawExtraDetails
        public void draw(SpriteBatch spriteBatch) {
            try {
                if (Game.mapScale.getCurrentScale() >= Game.DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE) {
                    for (int i = 0; i < Game.getCiv(Game.player.iCivID).getArmyRecruitSize(); i++) {
                        for (int i2 = 0; i2 < Game.getCiv(Game.player.iCivID).lArmyRecruit.get(i).size(); i2++) {
                            if (Game.getProvince(Game.getCiv(Game.player.iCivID).lArmyRecruit.get(i).get(i2).provinceID).getDrawProvince()) {
                                spriteBatch.setShader(Renderer.shaderAlpha);
                                ArmyManager.armyImages.get(ArmyManager.lArmy.get(Game.getCiv(Game.player.iCivID).lArmyRecruit.get(i).get(i2).unitID).get(Game.getCiv(Game.player.iCivID).lArmyRecruit.get(i).get(i2).armyID).ImageID).getTexture().bind(1);
                                Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
                                int i3 = i2 + 1;
                                float f = i3 * 1;
                                ImageManager.getImage(Images.unitsFrameMapMask).draw(spriteBatch, (int) (((Game.getProvince(Game.getCiv(Game.player.iCivID).lArmyRecruit.get(i).get(i2).provinceID).getTranslateProvincePosX() + Game.getProvince(Game.getCiv(Game.player.iCivID).lArmyRecruit.get(i).get(i2).provinceID).iCenterShiftX) * Game.mapScale.getCurrentScale()) - (ImageManager.getImage(Images.unitsFrameMap).getWidth() / 2)), (int) (((((Game.mapCoords.getPosY() + Game.getProvince(Game.getCiv(Game.player.iCivID).lArmyRecruit.get(i).get(i2).provinceID).iCenterShiftY) * Game.mapScale.getCurrentScale()) - (ProvinceDrawArmy.getArmyHeight() / 2)) - (ImageManager.getImage(Images.unitsFrameMap).getHeight() * i3)) - f));
                                spriteBatch.flush();
                                spriteBatch.setShader(Renderer.shaderDefault);
                                ImageManager.getImage(Images.unitsFrameMap).draw(spriteBatch, (int) (((Game.getProvince(Game.getCiv(Game.player.iCivID).lArmyRecruit.get(i).get(i2).provinceID).getTranslateProvincePosX() + Game.getProvince(Game.getCiv(Game.player.iCivID).lArmyRecruit.get(i).get(i2).provinceID).iCenterShiftX) * Game.mapScale.getCurrentScale()) - (ImageManager.getImage(Images.unitsFrameMap).getWidth() / 2)), (int) (((((Game.mapCoords.getPosY() + Game.getProvince(Game.getCiv(Game.player.iCivID).lArmyRecruit.get(i).get(i2).provinceID).iCenterShiftY) * Game.mapScale.getCurrentScale()) - (ProvinceDrawArmy.getArmyHeight() / 2)) - (ImageManager.getImage(Images.unitsFrameMap).getHeight() * i3)) - f));
                                int width = (ImageManager.getImage(Images.progressBarFrame).getWidth() - ImageManager.getImage(Images.progressBarFrameMask).getWidth()) / 2;
                                int height = (ImageManager.getImage(Images.progressBarFrame).getHeight() - ImageManager.getImage(Images.progressBarFrameMask).getHeight()) / 2;
                                spriteBatch.setColor(ProvinceDraw.progressBarBG);
                                ImageManager.getImage(Images.progressBarFrameMask).draw(spriteBatch, ((int) (((Game.getProvince(Game.getCiv(Game.player.iCivID).lArmyRecruit.get(i).get(i2).provinceID).getTranslateProvincePosX() + Game.getProvince(Game.getCiv(Game.player.iCivID).lArmyRecruit.get(i).get(i2).provinceID).iCenterShiftX) * Game.mapScale.getCurrentScale()) - (ImageManager.getImage(Images.unitsFrameMap).getWidth() / 2))) + width, ((int) (((((((Game.mapCoords.getPosY() + Game.getProvince(Game.getCiv(Game.player.iCivID).lArmyRecruit.get(i).get(i2).provinceID).iCenterShiftY) * Game.mapScale.getCurrentScale()) - (ProvinceDrawArmy.getArmyHeight() / 2)) - (ImageManager.getImage(Images.unitsFrameMap).getHeight() * i3)) - f) + ImageManager.getImage(Images.unitsFrameMap).getHeight()) - ImageManager.getImage(Images.progressBarFrame).getHeight())) + height);
                                spriteBatch.setColor(ProvinceDraw.progressBar);
                                ImageManager.getImage(Images.progressBarFrameMask).draw(spriteBatch, width + ((int) (((Game.getProvince(Game.getCiv(Game.player.iCivID).lArmyRecruit.get(i).get(i2).provinceID).getTranslateProvincePosX() + Game.getProvince(Game.getCiv(Game.player.iCivID).lArmyRecruit.get(i).get(i2).provinceID).iCenterShiftX) * Game.mapScale.getCurrentScale()) - (ImageManager.getImage(Images.unitsFrameMap).getWidth() / 2))), height + ((int) (((((((Game.mapCoords.getPosY() + Game.getProvince(Game.getCiv(Game.player.iCivID).lArmyRecruit.get(i).get(i2).provinceID).iCenterShiftY) * Game.mapScale.getCurrentScale()) - (ProvinceDrawArmy.getArmyHeight() / 2)) - (ImageManager.getImage(Images.unitsFrameMap).getHeight() * i3)) - f) + ImageManager.getImage(Images.unitsFrameMap).getHeight()) - ImageManager.getImage(Images.progressBarFrame).getHeight())), (int) (ImageManager.getImage(Images.progressBarFrameMask).getWidth() * ((ArmyManager.lArmy.get(Game.getCiv(Game.player.iCivID).lArmyRecruit.get(i).get(i2).unitID).get(Game.getCiv(Game.player.iCivID).lArmyRecruit.get(i).get(i2).armyID).RecruitmentTime - Game.getCiv(Game.player.iCivID).lArmyRecruit.get(i).get(i2).timeLeft) / ArmyManager.lArmy.get(Game.getCiv(Game.player.iCivID).lArmyRecruit.get(i).get(i2).unitID).get(Game.getCiv(Game.player.iCivID).lArmyRecruit.get(i).get(i2).armyID).RecruitmentTime)), ImageManager.getImage(Images.progressBarFrameMask).getHeight());
                                spriteBatch.setColor(Color.WHITE);
                                ImageManager.getImage(Images.progressBarFrame).draw(spriteBatch, (int) (((Game.getProvince(Game.getCiv(Game.player.iCivID).lArmyRecruit.get(i).get(i2).provinceID).getTranslateProvincePosX() + Game.getProvince(Game.getCiv(Game.player.iCivID).lArmyRecruit.get(i).get(i2).provinceID).iCenterShiftX) * Game.mapScale.getCurrentScale()) - (ImageManager.getImage(Images.unitsFrameMap).getWidth() / 2)), (int) (((((((Game.mapCoords.getPosY() + Game.getProvince(Game.getCiv(Game.player.iCivID).lArmyRecruit.get(i).get(i2).provinceID).iCenterShiftY) * Game.mapScale.getCurrentScale()) - (ProvinceDrawArmy.getArmyHeight() / 2)) - (ImageManager.getImage(Images.unitsFrameMap).getHeight() * i3)) - f) + ImageManager.getImage(Images.unitsFrameMap).getHeight()) - ImageManager.getImage(Images.progressBarFrame).getHeight()));
                            }
                        }
                    }
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDraw$10, reason: invalid class name */
    class AnonymousClass10 implements DrawProvinces {
        AnonymousClass10() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            if (MenuManager.mapEditorDrawProvinces) {
                for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                    spriteBatch.setColor(CFG.getGrowthRateColor((int) Game.getProvince(Game.getProvinceInViewID(i)).BaseDevelopment, 0.75f));
                    Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
                }
                for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                    spriteBatch.setColor(CFG.getGrowthRateColor((int) Game.getProvince(Game.getExtraProvinceInViewID(i2)).BaseDevelopment, 0.75f));
                    Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDraw$11, reason: invalid class name */
    class AnonymousClass11 implements DrawProvinces {
        AnonymousClass11() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            ProvinceDraw.updateDrawProvinces_Standard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDraw$12, reason: invalid class name */
    class AnonymousClass12 implements DrawProvinces {
        AnonymousClass12() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() != 0) {
                    if (Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).diplomacy.alliance.size() > 0) {
                        Game.getProvince(Game.getProvinceInViewID(i)).setProvinceColor(spriteBatch, 1.0f);
                    } else {
                        Game.getProvince(Game.getProvinceInViewID(i)).setProvinceColor(spriteBatch, Game.settingsManager.PROVINCE_ALPHA);
                    }
                    Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
                }
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() != 0) {
                    if (Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).diplomacy.alliance.size() > 0) {
                        Game.getProvince(Game.getExtraProvinceInViewID(i2)).setProvinceColor(spriteBatch, 1.0f);
                    } else {
                        Game.getProvince(Game.getExtraProvinceInViewID(i2)).setProvinceColor(spriteBatch, Game.settingsManager.PROVINCE_ALPHA);
                    }
                    Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDraw$13, reason: invalid class name */
    class AnonymousClass13 implements DrawProvinces {
        AnonymousClass13() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() != 0) {
                    if (Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).diplomacy.lVassals.size() > 0) {
                        Game.getProvince(Game.getProvinceInViewID(i)).setProvinceColor(spriteBatch, 1.0f);
                    } else {
                        Game.getProvince(Game.getProvinceInViewID(i)).setProvinceColor(spriteBatch, Game.settingsManager.PROVINCE_ALPHA);
                    }
                    Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
                }
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() != 0) {
                    if (Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).diplomacy.lVassals.size() > 0) {
                        Game.getProvince(Game.getExtraProvinceInViewID(i2)).setProvinceColor(spriteBatch, 1.0f);
                    } else {
                        Game.getProvince(Game.getExtraProvinceInViewID(i2)).setProvinceColor(spriteBatch, Game.settingsManager.PROVINCE_ALPHA);
                    }
                    Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDraw$14, reason: invalid class name */
    class AnonymousClass14 implements DrawProvinces {
        AnonymousClass14() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() != 0) {
                    if (Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).diplomacy.truce.size() > 0) {
                        Game.getProvince(Game.getProvinceInViewID(i)).setProvinceColor(spriteBatch, 1.0f);
                    } else {
                        Game.getProvince(Game.getProvinceInViewID(i)).setProvinceColor(spriteBatch, Game.settingsManager.PROVINCE_ALPHA);
                    }
                    Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
                }
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() != 0) {
                    if (Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).diplomacy.truce.size() > 0) {
                        Game.getProvince(Game.getExtraProvinceInViewID(i2)).setProvinceColor(spriteBatch, 1.0f);
                    } else {
                        Game.getProvince(Game.getExtraProvinceInViewID(i2)).setProvinceColor(spriteBatch, Game.settingsManager.PROVINCE_ALPHA);
                    }
                    Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDraw$15, reason: invalid class name */
    class AnonymousClass15 implements DrawProvinces {
        AnonymousClass15() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() != 0) {
                    if (Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).diplomacy.guarantee.size() > 0) {
                        Game.getProvince(Game.getProvinceInViewID(i)).setProvinceColor(spriteBatch, 1.0f);
                    } else {
                        Game.getProvince(Game.getProvinceInViewID(i)).setProvinceColor(spriteBatch, Game.settingsManager.PROVINCE_ALPHA);
                    }
                    Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
                }
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() != 0) {
                    if (Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).diplomacy.guarantee.size() > 0) {
                        Game.getProvince(Game.getExtraProvinceInViewID(i2)).setProvinceColor(spriteBatch, 1.0f);
                    } else {
                        Game.getProvince(Game.getExtraProvinceInViewID(i2)).setProvinceColor(spriteBatch, Game.settingsManager.PROVINCE_ALPHA);
                    }
                    Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDraw$16, reason: invalid class name */
    class AnonymousClass16 implements DrawProvinces {
        AnonymousClass16() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() != 0) {
                    if (Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).diplomacy.militaryAccess.size() > 0) {
                        Game.getProvince(Game.getProvinceInViewID(i)).setProvinceColor(spriteBatch, 1.0f);
                    } else {
                        Game.getProvince(Game.getProvinceInViewID(i)).setProvinceColor(spriteBatch, Game.settingsManager.PROVINCE_ALPHA);
                    }
                    Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
                }
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() != 0) {
                    if (Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).diplomacy.militaryAccess.size() > 0) {
                        Game.getProvince(Game.getExtraProvinceInViewID(i2)).setProvinceColor(spriteBatch, 1.0f);
                    } else {
                        Game.getProvince(Game.getExtraProvinceInViewID(i2)).setProvinceColor(spriteBatch, Game.settingsManager.PROVINCE_ALPHA);
                    }
                    Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDraw$17, reason: invalid class name */
    class AnonymousClass17 implements DrawProvinces {
        AnonymousClass17() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() != 0) {
                    if (Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).diplomacy.nonAggressionPact.size() > 0) {
                        Game.getProvince(Game.getProvinceInViewID(i)).setProvinceColor(spriteBatch, 1.0f);
                    } else {
                        Game.getProvince(Game.getProvinceInViewID(i)).setProvinceColor(spriteBatch, Game.settingsManager.PROVINCE_ALPHA);
                    }
                    Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
                }
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() != 0) {
                    if (Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).diplomacy.nonAggressionPact.size() > 0) {
                        Game.getProvince(Game.getExtraProvinceInViewID(i2)).setProvinceColor(spriteBatch, 1.0f);
                    } else {
                        Game.getProvince(Game.getExtraProvinceInViewID(i2)).setProvinceColor(spriteBatch, Game.settingsManager.PROVINCE_ALPHA);
                    }
                    Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDraw$18, reason: invalid class name */
    class AnonymousClass18 implements DrawProvinces {
        AnonymousClass18() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() != 0) {
                    if (Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).diplomacy.defensivePact.size() > 0) {
                        Game.getProvince(Game.getProvinceInViewID(i)).setProvinceColor(spriteBatch, 1.0f);
                    } else {
                        Game.getProvince(Game.getProvinceInViewID(i)).setProvinceColor(spriteBatch, Game.settingsManager.PROVINCE_ALPHA);
                    }
                    Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
                }
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() != 0) {
                    if (Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).diplomacy.defensivePact.size() > 0) {
                        Game.getProvince(Game.getExtraProvinceInViewID(i2)).setProvinceColor(spriteBatch, 1.0f);
                    } else {
                        Game.getProvince(Game.getExtraProvinceInViewID(i2)).setProvinceColor(spriteBatch, Game.settingsManager.PROVINCE_ALPHA);
                    }
                    Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDraw$19, reason: invalid class name */
    class AnonymousClass19 implements DrawProvinces {
        AnonymousClass19() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            int i = 0;
            if (ScenarioRelationsList.activeCivID == 0) {
                for (int i2 = 0; i2 < Game.NUM_OF_PROVINCES_IN_VIEW; i2++) {
                    if (Game.getProvince(Game.getProvinceInViewID(i2)).getCivID() != 0) {
                        Game.getProvince(Game.getProvinceInViewID(i2)).setProvinceColor(spriteBatch, Game.settingsManager.PROVINCE_ALPHA);
                        Game.getProvince(Game.getProvinceInViewID(i2)).drawLandProvince(spriteBatch);
                    }
                }
                while (i < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW) {
                    if (Game.getProvince(Game.getExtraProvinceInViewID(i)).getCivID() != 0) {
                        Game.getProvince(Game.getExtraProvinceInViewID(i)).setProvinceColor(spriteBatch, Game.settingsManager.PROVINCE_ALPHA);
                        Game.getProvince(Game.getExtraProvinceInViewID(i)).drawLandProvinceExtra(spriteBatch);
                    }
                    i++;
                }
                return;
            }
            for (int i3 = 0; i3 < Game.NUM_OF_PROVINCES_IN_VIEW; i3++) {
                if (Game.getProvince(Game.getProvinceInViewID(i3)).getCivID() != 0) {
                    if (Game.getProvince(Game.getProvinceInViewID(i3)).getCivID() == ScenarioRelationsList.activeCivID) {
                        spriteBatch.setColor(new Color(Colors.HOVER_GOLD.r, Colors.HOVER_GOLD.g, Colors.HOVER_GOLD.b, Game.settingsManager.PROVINCE_ALPHA));
                    } else {
                        int relation = (int) Game.getCiv(ScenarioRelationsList.activeCivID).diplomacy.getRelation(Game.getProvince(Game.getProvinceInViewID(i3)).getCivID());
                        if (relation == 0) {
                            spriteBatch.setColor(new Color(ProvinceDraw.PROVINCE_DIPLOMACY_NEUTRAL_GREEN.r, ProvinceDraw.PROVINCE_DIPLOMACY_NEUTRAL_GREEN.g, ProvinceDraw.PROVINCE_DIPLOMACY_NEUTRAL_GREEN.b, Game.settingsManager.PROVINCE_ALPHA));
                        } else if (relation > 0) {
                            spriteBatch.setColor(CFG.getColorStep(ProvinceDraw.PROVINCE_DIPLOMACY_GREEN, ProvinceDraw.PROVINCE_DIPLOMACY_GREEN2, relation, (int) GameValues.diplomacy.DIPLOMACY_RELATIONS_MAX, Game.settingsManager.PROVINCE_ALPHA));
                        } else {
                            spriteBatch.setColor(CFG.getColorStep(ProvinceDraw.PROVINCE_DIPLOMACY_RED, ProvinceDraw.PROVINCE_DIPLOMACY_RED2, -relation, (int) (-GameValues.diplomacy.DIPLOMACY_RELATIONS_MIN), Game.settingsManager.PROVINCE_ALPHA));
                        }
                    }
                    Game.getProvince(Game.getProvinceInViewID(i3)).drawLandProvince(spriteBatch);
                }
            }
            while (i < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW) {
                if (Game.getProvince(Game.getExtraProvinceInViewID(i)).getCivID() == 0) {
                    if (Game.getProvince(Game.getExtraProvinceInViewID(i)).getCivID() != ScenarioRelationsList.activeCivID) {
                        spriteBatch.setColor(new Color(Colors.HOVER_GOLD.r, Colors.HOVER_GOLD.g, Colors.HOVER_GOLD.b, Game.settingsManager.PROVINCE_ALPHA));
                    } else {
                        int relation2 = (int) Game.getCiv(ScenarioRelationsList.activeCivID).diplomacy.getRelation(Game.getProvince(Game.getExtraProvinceInViewID(i)).getCivID());
                        if (relation2 == 0) {
                            spriteBatch.setColor(new Color(ProvinceDraw.PROVINCE_DIPLOMACY_NEUTRAL_GREEN.r, ProvinceDraw.PROVINCE_DIPLOMACY_NEUTRAL_GREEN.g, ProvinceDraw.PROVINCE_DIPLOMACY_NEUTRAL_GREEN.b, Game.settingsManager.PROVINCE_ALPHA));
                        } else if (relation2 > 0) {
                            spriteBatch.setColor(CFG.getColorStep(ProvinceDraw.PROVINCE_DIPLOMACY_GREEN, ProvinceDraw.PROVINCE_DIPLOMACY_GREEN2, relation2, (int) GameValues.diplomacy.DIPLOMACY_RELATIONS_MAX, Game.settingsManager.PROVINCE_ALPHA));
                        } else {
                            spriteBatch.setColor(CFG.getColorStep(ProvinceDraw.PROVINCE_DIPLOMACY_RED, ProvinceDraw.PROVINCE_DIPLOMACY_RED2, -relation2, (int) (-GameValues.diplomacy.DIPLOMACY_RELATIONS_MIN), Game.settingsManager.PROVINCE_ALPHA));
                        }
                    }
                    Game.getProvince(Game.getExtraProvinceInViewID(i)).drawLandProvince(spriteBatch);
                }
                i++;
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDraw$2, reason: invalid class name */
    class AnonymousClass2 extends DrawExtraDetails {
        AnonymousClass2() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawExtraDetails
        public void draw(SpriteBatch spriteBatch) {
            if (Game.mapScale.getCurrentScale() >= Game.DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE) {
                if (Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_DEFAULT) {
                    ProvinceDraw.drawBuildingsInConstruction(spriteBatch);
                    return;
                }
                ProvinceDraw.drawWondersConstruction(spriteBatch);
                ProvinceDraw.drawBuildingsInConstruction(spriteBatch);
                ProvinceDraw.drawRecruitingArmyPlayer(spriteBatch);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDraw$20, reason: invalid class name */
    class AnonymousClass20 implements DrawProvinces {
        AnonymousClass20() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            if (MenuManager.mapEditorDrawProvinces) {
                for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                    spriteBatch.setColor(new Color(Game.terrainManager.terrains.get(Game.getProvince(Game.getProvinceInViewID(i)).getTerrainID()).Color[0], Game.terrainManager.terrains.get(Game.getProvince(Game.getProvinceInViewID(i)).getTerrainID()).Color[1], Game.terrainManager.terrains.get(Game.getProvince(Game.getProvinceInViewID(i)).getTerrainID()).Color[2], 0.55f));
                    Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
                }
                for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                    spriteBatch.setColor(new Color(Game.terrainManager.terrains.get(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getTerrainID()).Color[0], Game.terrainManager.terrains.get(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getTerrainID()).Color[1], Game.terrainManager.terrains.get(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getTerrainID()).Color[2], 0.55f));
                    Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDraw$21, reason: invalid class name */
    class AnonymousClass21 implements DrawProvinces {
        AnonymousClass21() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() > 0) {
                    if (Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).scenarioEditorData.TechnologyID == MapScenarios.DEFAULT_VALUE) {
                        spriteBatch.setColor(Colors.getWhiteBlackColor((int) ((Math.max(Math.max(0, MapScenarios.scenarioEditorDetails.CivDefault_Technology), Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).scenarioEditorData.TechnologyID) / TechnologyTree.iTechnologySize) * 100.0f), Game.settingsManager.PROVINCE_ALPHA));
                    } else {
                        spriteBatch.setColor(Colors.getWhiteBlackColor((int) ((Math.max(0, Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).scenarioEditorData.TechnologyID) / TechnologyTree.iTechnologySize) * 100.0f), Game.settingsManager.PROVINCE_ALPHA));
                    }
                    Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
                }
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                if (Game.getProvince(Game.getProvinceInViewID(i2)).getCivID() > 0) {
                    if (Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i2)).getCivID()).scenarioEditorData.TechnologyID == MapScenarios.DEFAULT_VALUE) {
                        spriteBatch.setColor(Colors.getWhiteBlackColor((int) ((Math.max(Math.max(0, MapScenarios.scenarioEditorDetails.CivDefault_Technology), Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).scenarioEditorData.TechnologyID) / TechnologyTree.iTechnologySize) * 100.0f), Game.settingsManager.PROVINCE_ALPHA));
                    } else {
                        spriteBatch.setColor(Colors.getWhiteBlackColor((int) ((Math.max(0, Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).scenarioEditorData.TechnologyID) / TechnologyTree.iTechnologySize) * 100.0f), Game.settingsManager.PROVINCE_ALPHA));
                    }
                    Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDraw$22, reason: invalid class name */
    class AnonymousClass22 implements DrawProvinces {
        AnonymousClass22() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            if (EditorMap_FormableCiv.drawMap) {
                ProvinceDraw.drawProvinces_Standard(spriteBatch);
            }
            spriteBatch.setShader(Renderer.shaderDefaultProvince);
            for (int i = 0; i < FormableCivManager.activeFormableCiv.Provinces.size(); i++) {
                try {
                    if (Game.getProvince(FormableCivManager.activeFormableCiv.Provinces.get(i).intValue()).getDrawProvince()) {
                        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, Game.settingsManager.PROVINCE_ALPHA));
                        Game.getProvince(FormableCivManager.activeFormableCiv.Provinces.get(i).intValue()).drawLandProvince(spriteBatch);
                    }
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
            spriteBatch.setShader(Renderer.shaderDefault);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDraw$23, reason: invalid class name */
    class AnonymousClass23 implements DrawProvinces {
        AnonymousClass23() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            if (MenuManager.mapEditorDrawProvinces) {
                ProvinceDraw.drawProvinces_Standard(spriteBatch);
            }
            for (int i = 0; i < EditorSelectProvinces.selectedProvinces.size(); i++) {
                try {
                    if (Game.getProvince(EditorSelectProvinces.selectedProvinces.get(i).intValue()).getDrawProvince()) {
                        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, Game.settingsManager.PROVINCE_ALPHA));
                        Game.getProvince(EditorSelectProvinces.selectedProvinces.get(i).intValue()).drawLandProvince(spriteBatch);
                    }
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                    return;
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDraw$24, reason: invalid class name */
    class AnonymousClass24 implements DrawProvinces {
        AnonymousClass24() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            if (MenuManager.mapEditorDrawProvinces) {
                ProvinceDraw.drawProvinces_Standard(spriteBatch);
            }
            for (int i = 0; i < EditorSelectProvinces.selectedProvinces.size(); i++) {
                try {
                    if (Game.getProvince(EditorSelectProvinces.selectedProvinces.get(i).intValue()).getDrawProvince()) {
                        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, Game.settingsManager.PROVINCE_ALPHA));
                        Game.getProvince(EditorSelectProvinces.selectedProvinces.get(i).intValue()).drawLandProvince(spriteBatch);
                    }
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                    return;
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDraw$25, reason: invalid class name */
    class AnonymousClass25 implements DrawProvinces {
        AnonymousClass25() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            if (MenuManager.mapEditorDrawProvinces) {
                ProvinceDraw.drawProvinces_Standard(spriteBatch);
            }
            for (int i = 0; i < EditorSelectProvinces.selectedProvinces.size(); i++) {
                try {
                    if (Game.getProvince(EditorSelectProvinces.selectedProvinces.get(i).intValue()).getDrawProvince()) {
                        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, Game.settingsManager.PROVINCE_ALPHA));
                        Game.getProvince(EditorSelectProvinces.selectedProvinces.get(i).intValue()).drawLandProvince(spriteBatch);
                    }
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                    return;
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDraw$26, reason: invalid class name */
    class AnonymousClass26 implements DrawProvinces {
        AnonymousClass26() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            int i = 0;
            while (true) {
                if (i >= Game.NUM_OF_PROVINCES_IN_VIEW) {
                    break;
                }
                if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() != 0) {
                    Game.getProvince(Game.getProvinceInViewID(i)).setProvinceColor(spriteBatch, Game.getProvince(Game.getProvinceInViewID(i)).iBuildingsSize <= 0 ? Game.settingsManager.PROVINCE_ALPHA : 1.0f);
                    Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
                }
                i++;
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() != 0) {
                    Game.getProvince(Game.getExtraProvinceInViewID(i2)).setProvinceColor(spriteBatch, Game.getProvince(Game.getProvinceInViewID(i2)).iBuildingsSize > 0 ? 1.0f : Game.settingsManager.PROVINCE_ALPHA);
                    Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
                }
            }
            for (int i3 = 0; i3 < EditorSelectProvinces.selectedProvinces.size(); i3++) {
                try {
                    if (Game.getProvince(EditorSelectProvinces.selectedProvinces.get(i3).intValue()).getDrawProvince()) {
                        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, Game.settingsManager.PROVINCE_ALPHA));
                        Game.getProvince(EditorSelectProvinces.selectedProvinces.get(i3).intValue()).drawLandProvince(spriteBatch);
                    }
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                    return;
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDraw$27, reason: invalid class name */
    class AnonymousClass27 implements DrawProvinces {
        AnonymousClass27() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            if (MenuManager.mapEditorDrawProvinces) {
                for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                    if (Game.getProvince(Game.getProvinceInViewID(i)).getResourceID() >= 0) {
                        spriteBatch.setColor(new Color(ResourcesManager.lResources.get(Game.getProvince(Game.getProvinceInViewID(i)).getResourceID()).Color[0], ResourcesManager.lResources.get(Game.getProvince(Game.getProvinceInViewID(i)).getResourceID()).Color[1], ResourcesManager.lResources.get(Game.getProvince(Game.getProvinceInViewID(i)).getResourceID()).Color[2], 0.55f));
                        Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
                    }
                }
                for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                    if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getResourceID() >= 0) {
                        spriteBatch.setColor(new Color(ResourcesManager.lResources.get(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getResourceID()).Color[0], ResourcesManager.lResources.get(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getResourceID()).Color[1], ResourcesManager.lResources.get(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getResourceID()).Color[2], 0.55f));
                        Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDraw$28, reason: invalid class name */
    class AnonymousClass28 implements DrawProvinces {
        AnonymousClass28() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                spriteBatch.setColor(new Color(Game.continents.lContinents.get(Game.getProvince(Game.getProvinceInViewID(i)).getContinent()).iR / 255.0f, Game.continents.lContinents.get(Game.getProvince(Game.getProvinceInViewID(i)).getContinent()).iG / 255.0f, Game.continents.lContinents.get(Game.getProvince(Game.getProvinceInViewID(i)).getContinent()).iB / 255.0f, 0.55f));
                Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                spriteBatch.setColor(new Color(Game.continents.lContinents.get(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getContinent()).iR / 255.0f, Game.continents.lContinents.get(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getContinent()).iG / 255.0f, Game.continents.lContinents.get(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getContinent()).iB / 255.0f, 0.55f));
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDraw$29, reason: invalid class name */
    class AnonymousClass29 implements DrawProvinces {
        AnonymousClass29() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                spriteBatch.setColor(new Color(Game.geographicalRegions.lGeographicalRegions.get(Game.getProvince(Game.getProvinceInViewID(i)).getGeoRegion()).iR / 255.0f, Game.geographicalRegions.lGeographicalRegions.get(Game.getProvince(Game.getProvinceInViewID(i)).getGeoRegion()).iG / 255.0f, Game.geographicalRegions.lGeographicalRegions.get(Game.getProvince(Game.getProvinceInViewID(i)).getGeoRegion()).iB / 255.0f, 0.55f));
                Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                spriteBatch.setColor(new Color(Game.geographicalRegions.lGeographicalRegions.get(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getGeoRegion()).iR / 255.0f, Game.geographicalRegions.lGeographicalRegions.get(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getGeoRegion()).iG / 255.0f, Game.geographicalRegions.lGeographicalRegions.get(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getGeoRegion()).iB / 255.0f, 0.55f));
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDraw$3, reason: invalid class name */
    class AnonymousClass3 implements DrawProvinces {
        AnonymousClass3() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDraw$30, reason: invalid class name */
    class AnonymousClass30 implements DrawProvinces {
        AnonymousClass30() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                spriteBatch.setColor(new Color(EditorMapOptimizationRegions.lColors.get(Game.regions.getRegionID(Game.getProvinceInViewID(i))).r, EditorMapOptimizationRegions.lColors.get(Game.regions.getRegionID(Game.getProvinceInViewID(i))).g, EditorMapOptimizationRegions.lColors.get(Game.regions.getRegionID(Game.getProvinceInViewID(i))).b, 0.55f));
                Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                spriteBatch.setColor(new Color(EditorMapOptimizationRegions.lColors.get(Game.regions.getRegionID(Game.getExtraProvinceInViewID(i2))).r, EditorMapOptimizationRegions.lColors.get(Game.regions.getRegionID(Game.getExtraProvinceInViewID(i2))).g, EditorMapOptimizationRegions.lColors.get(Game.regions.getRegionID(Game.getExtraProvinceInViewID(i2))).b, 0.55f));
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
            }
            if (Game.iActiveProvince >= 0) {
                spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.2f));
                Images.pix.draw(spriteBatch, Game.regions.lRegions.get(Game.regions.getRegionID(Game.iActiveProvince)).getMinX() + Game.mapCoords.getPosX(), Game.regions.lRegions.get(Game.regions.getRegionID(Game.iActiveProvince)).getMinY() + Game.mapCoords.getPosY(), Game.regions.lRegions.get(Game.regions.getRegionID(Game.iActiveProvince)).getMaxX() - Game.regions.lRegions.get(Game.regions.getRegionID(Game.iActiveProvince)).getMinX(), Game.regions.lRegions.get(Game.regions.getRegionID(Game.iActiveProvince)).getMaxY() - Game.regions.lRegions.get(Game.regions.getRegionID(Game.iActiveProvince)).getMinY());
                spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.6f));
                Renderer.drawRect(spriteBatch, Game.regions.lRegions.get(Game.regions.getRegionID(Game.iActiveProvince)).getMinX() + Game.mapCoords.getPosX(), Game.regions.lRegions.get(Game.regions.getRegionID(Game.iActiveProvince)).getMinY() + Game.mapCoords.getPosY(), Game.regions.lRegions.get(Game.regions.getRegionID(Game.iActiveProvince)).getMaxX() - Game.regions.lRegions.get(Game.regions.getRegionID(Game.iActiveProvince)).getMinX(), Game.regions.lRegions.get(Game.regions.getRegionID(Game.iActiveProvince)).getMaxY() - Game.regions.lRegions.get(Game.regions.getRegionID(Game.iActiveProvince)).getMinY());
                if (Game.map.getMapWorldMap(Game.map.getActiveMapID())) {
                    spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.2f));
                    Images.pix.draw(spriteBatch, Game.regions.lRegions.get(Game.regions.getRegionID(Game.iActiveProvince)).getMinX() + Game.mapCoords.getPosX() + Game.mapBG.getWidth(), Game.regions.lRegions.get(Game.regions.getRegionID(Game.iActiveProvince)).getMinY() + Game.mapCoords.getPosY(), Game.regions.lRegions.get(Game.regions.getRegionID(Game.iActiveProvince)).getMaxX() - Game.regions.lRegions.get(Game.regions.getRegionID(Game.iActiveProvince)).getMinX(), Game.regions.lRegions.get(Game.regions.getRegionID(Game.iActiveProvince)).getMaxY() - Game.regions.lRegions.get(Game.regions.getRegionID(Game.iActiveProvince)).getMinY());
                    spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.6f));
                    Renderer.drawRect(spriteBatch, Game.regions.lRegions.get(Game.regions.getRegionID(Game.iActiveProvince)).getMinX() + Game.mapCoords.getPosX() + Game.mapBG.getWidth(), Game.regions.lRegions.get(Game.regions.getRegionID(Game.iActiveProvince)).getMinY() + Game.mapCoords.getPosY(), Game.regions.lRegions.get(Game.regions.getRegionID(Game.iActiveProvince)).getMaxX() - Game.regions.lRegions.get(Game.regions.getRegionID(Game.iActiveProvince)).getMinX(), Game.regions.lRegions.get(Game.regions.getRegionID(Game.iActiveProvince)).getMaxY() - Game.regions.lRegions.get(Game.regions.getRegionID(Game.iActiveProvince)).getMinY());
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDraw$31, reason: invalid class name */
    class AnonymousClass31 implements DrawProvinces {
        AnonymousClass31() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                try {
                    if (Game.getProvince(Game.getProvinceInViewID(i)).getLevelOfPort() >= -1) {
                        spriteBatch.setColor(new Color(0.1254902f, 0.2901961f, 0.043137256f, 0.6f));
                        Game.getProvince(Game.getProvinceInViewID(i)).drawProvince_ActiveProvince(spriteBatch);
                    } else if (Game.getProvince(Game.getProvinceInViewID(i)).getLevelOfPort() == -1) {
                        spriteBatch.setColor(new Color(0.02745098f, 0.12941177f, 0.18431373f, 0.6f));
                        Game.getProvince(Game.getProvinceInViewID(i)).drawProvince_ActiveProvince(spriteBatch);
                    } else {
                        spriteBatch.setColor(new Color(0.007843138f, 0.09411765f, 0.13725491f, 0.6f));
                        Game.getProvince(Game.getProvinceInViewID(i)).drawProvince_ActiveProvince(spriteBatch);
                    }
                    Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
                } catch (Exception unused) {
                    return;
                }
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getLevelOfPort() >= -1) {
                    spriteBatch.setColor(new Color(0.1254902f, 0.2901961f, 0.043137256f, 0.6f));
                    Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawProvince_ActiveProvince(spriteBatch);
                } else if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getLevelOfPort() == -1) {
                    spriteBatch.setColor(new Color(0.02745098f, 0.12941177f, 0.18431373f, 0.6f));
                    Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawProvince_ActiveProvince(spriteBatch);
                } else {
                    spriteBatch.setColor(new Color(0.007843138f, 0.09411765f, 0.13725491f, 0.6f));
                    Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawProvince_ActiveProvince(spriteBatch);
                }
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDraw$32, reason: invalid class name */
    class AnonymousClass32 implements DrawProvinces {
        AnonymousClass32() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            ProvinceDraw.updateDrawProvinces_Standard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDraw$33, reason: invalid class name */
    class AnonymousClass33 implements DrawProvinces {
        AnonymousClass33() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            ProvinceDraw.drawProvinces_Standard(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDraw$34, reason: invalid class name */
    class AnonymousClass34 implements DrawMoveUnits {
        AnonymousClass34() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawMoveUnits
        public void drawMoveUnits(SpriteBatch spriteBatch) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDraw$35, reason: invalid class name */
    class AnonymousClass35 implements DrawMoveUnits {
        AnonymousClass35() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawMoveUnits
        public void drawMoveUnits(SpriteBatch spriteBatch) {
            if (Game.mapScale.getCurrentScale() >= Game.DRAW_ARMY_MIN_SCALE) {
                ProvinceDraw.drawMoveUnits_Just(spriteBatch, Game.mapScale.getCurrentScale());
                try {
                    if (Game.regroupArmyLine != null) {
                        Game.regroupArmyLine.draw(spriteBatch, Game.mapScale.getCurrentScale());
                        try {
                            Renderer.oSBBorder.end();
                            Renderer.oSBBorder.begin();
                        } catch (Exception e) {
                            CFG.exceptionStack(e);
                        }
                    }
                } catch (Exception e2) {
                    CFG.exceptionStack(e2);
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDraw$36, reason: invalid class name */
    class AnonymousClass36 implements DrawMoveUnits {
        AnonymousClass36() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawMoveUnits
        public void drawMoveUnits(SpriteBatch spriteBatch) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDraw$37, reason: invalid class name */
    class AnonymousClass37 extends Game.SimpleTask {
        final /* synthetic */ List val$lCiv;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass37(String str, List list) {
            super(str);
            this.val$lCiv = list;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            ProvinceDraw.buildBiggestCitiesLines((List<Integer>) this.val$lCiv);
            if (Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_DIPLOMACY) {
                ProvinceDraw.clearBiggestCities();
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDraw$38, reason: invalid class name */
    class AnonymousClass38 extends MoveUnits_BiggestCities_Diplomacy {
        AnonymousClass38(int i, int i2, int i3, Color color) {
            super(i, i2, i3, color);
        }

        @Override // aoc.kingdoms.lukasz.map.moveUnits.other.MoveUnits_BiggestCities
        public boolean canBeUsedInPath(int i, int i2, boolean z, int i3) {
            return Game.getProvince(i2).getWasteland() < 0;
        }

        @Override // aoc.kingdoms.lukasz.map.moveUnits.other.MoveUnits_BiggestCities
        public boolean isFriendlyProvince(int i, int i2) {
            return true;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDraw$4, reason: invalid class name */
    class AnonymousClass4 implements DrawProvinces {
        AnonymousClass4() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            ProvinceDraw.drawProvincesInMapEditor_Connections(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDraw$5, reason: invalid class name */
    class AnonymousClass5 implements DrawProvinces {
        AnonymousClass5() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            float provinceAlpha = ProvinceDraw.getProvinceAlpha();
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                spriteBatch.setColor(new Color(GameCivsEdit.nCiv.iR / 255.0f, GameCivsEdit.nCiv.iG / 255.0f, GameCivsEdit.nCiv.iB / 255.0f, provinceAlpha));
                Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                spriteBatch.setColor(new Color(GameCivsEdit.nCiv.iR / 255.0f, GameCivsEdit.nCiv.iG / 255.0f, GameCivsEdit.nCiv.iB / 255.0f, provinceAlpha));
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDraw$6, reason: invalid class name */
    class AnonymousClass6 implements DrawProvinces {
        AnonymousClass6() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            float provinceAlpha = ProvinceDraw.getProvinceAlpha();
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                spriteBatch.setColor(new Color(CreateCiv.nCiv.iR / 255.0f, CreateCiv.nCiv.iG / 255.0f, CreateCiv.nCiv.iB / 255.0f, provinceAlpha));
                Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                spriteBatch.setColor(new Color(CreateCiv.nCiv.iR / 255.0f, CreateCiv.nCiv.iG / 255.0f, CreateCiv.nCiv.iB / 255.0f, provinceAlpha));
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDraw$7, reason: invalid class name */
    class AnonymousClass7 implements DrawProvinces {
        AnonymousClass7() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            if (MenuManager.mapEditorDrawProvinces) {
                for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                    spriteBatch.setColor(CFG.getGrowthRateColor((int) Game.getProvince(Game.getProvinceInViewID(i)).getGrowthRate(), 0.75f));
                    Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
                }
                for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                    spriteBatch.setColor(CFG.getGrowthRateColor((int) Game.getProvince(Game.getExtraProvinceInViewID(i2)).getGrowthRate(), 0.75f));
                    Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDraw$8, reason: invalid class name */
    class AnonymousClass8 implements DrawProvinces {
        AnonymousClass8() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() > 0) {
                    if (ScenarioCreateAllianceList.editAlliance.isInAlliance(Game.getProvince(Game.getProvinceInViewID(i)).getCivID())) {
                        Game.getProvince(Game.getProvinceInViewID(i)).setProvinceColor(spriteBatch, Game.settingsManager.PROVINCE_ALPHA * 1.75f);
                    } else {
                        Game.getProvince(Game.getProvinceInViewID(i)).setProvinceColor(spriteBatch, Game.settingsManager.PROVINCE_ALPHA / 3.0f);
                    }
                    Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
                }
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() > 0) {
                    if (ScenarioCreateAllianceList.editAlliance.isInAlliance(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID())) {
                        Game.getProvince(Game.getExtraProvinceInViewID(i2)).setProvinceColor(spriteBatch, Game.settingsManager.PROVINCE_ALPHA * 1.75f);
                    } else {
                        Game.getProvince(Game.getExtraProvinceInViewID(i2)).setProvinceColor(spriteBatch, Game.settingsManager.PROVINCE_ALPHA / 3.0f);
                    }
                    Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDraw$9, reason: invalid class name */
    class AnonymousClass9 implements DrawProvinces {
        AnonymousClass9() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            ProvinceDraw.updateDrawProvinces_Standard();
        }
    }

    public static class DrawExtraDetails {
        public void draw(SpriteBatch spriteBatch) {
        }
    }

    public interface DrawMoveUnits {
        void drawMoveUnits(SpriteBatch spriteBatch);
    }

    public interface DrawProvinces {
        void draw(SpriteBatch spriteBatch);
    }

    public static final void addDiplomacyLines(int i, int i2, Color color) {
        if (i < 0 || i2 < 0) {
            return;
        }
        try {
            if ((Game.getProvince(i).getDrawProvince() || Game.getProvince(i2).getDrawProvince()) && Game.mapScale.getCurrentScale() > Game.DRAW_INNER_BORDERS) {
                for (int size = diplomacyLines.size() - 1; size >= 0; size--) {
                    if (diplomacyLines.get(size).getFromProvinceID() == i && diplomacyLines.get(size).getToProvinceLastID() == i2) {
                        return;
                    }
                }
                AnonymousClass38 anonymousClass38 = new AnonymousClass38(Game.getProvince(i).getCivID(), i, i2, color);
                if (anonymousClass38.iRouteSize > 0) {
                    diplomacyLines.add(anonymousClass38);
                }
                iDiplomacyLinesSize = diplomacyLines.size();
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void addProvinceDot(int i, Color color) {
        try {
            for (int size = provinceDots.size() - 1; size >= 0; size--) {
                if (provinceDots.get(size).iProvinceID == i && provinceDots.get(size).fPerc > 0.9f) {
                    return;
                }
            }
            provinceDots.add(new ProvinceAnimationDot(i, color));
            iProvinceDotsSize = provinceDots.size();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void addProvinceDot_Economy(int i) {
        addProvinceDot(i, Colors.COLOR_TEXT_ECONOMY);
    }

    public static final void addProvinceDot_GrowthRate(int i) {
        addProvinceDot(i, Colors.COLOR_POPULATION);
    }

    public static final void addProvinceDot_Infrastructure(int i) {
        addProvinceDot(i, Colors.HOVER_LEFT);
    }

    public static final void addProvinceDot_Manpower(int i) {
        addProvinceDot(i, Game.getCiv(Game.getProvince(i).getCivID()).getColor(1.0f));
    }

    public static final void addProvinceDot_TaxEfficiency(int i) {
        addProvinceDot(i, Colors.HOVER_YELLOW);
    }

    public static final void buildBiggestCitiesLines(int i) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(i));
        Game.gameThreadUpdate.addSimpleTask(new AnonymousClass37("buildBiggestCitiesLines" + i, arrayList));
    }

    public static final void buildBiggestCitiesLines(List<Integer> list) {
        biggestCitiesLines.clear();
        iBiggestCitiesLinesSize = 0;
    }

    public static final void buildBiggestCitiesLines_Province(int i, int i2) {
        biggestCitiesLines.clear();
        iBiggestCitiesLinesSize = 0;
    }

    public static final void buildSiegeLines(int i) {
        clearSiegeLines();
        Province province = Game.getProvince(i);
        for (int i2 = 0; i2 < province.getNeighboringProvincesSize(); i2++) {
            if (province.getCivID() == Game.getProvince(province.getNeighboringProvinces(i2)).getCivID() && Game.getProvince(province.getNeighboringProvinces(i2)).getFortLevel() == 0) {
                siegeLines.add(new MoveUnits_BiggestCities_Siege(province.getCivID(), i, province.getNeighboringProvinces(i2)));
            }
        }
        iSiegeLinesSize = siegeLines.size();
    }

    public static final void clearBiggestCities() {
        biggestCitiesLines.clear();
        iBiggestCitiesLinesSize = 0;
    }

    public static final void clearDiplomacyLines() {
        diplomacyLines.clear();
        iDiplomacyLinesSize = 0;
    }

    public static final void clearProvinceDots() {
        provinceDots.clear();
        iProvinceDotsSize = 0;
    }

    public static final void clearSiegeLines() {
        siegeLines.clear();
        iSiegeLinesSize = 0;
    }

    public static final void drawBiggestCitiesLines_Just(SpriteBatch spriteBatch, float f) {
        if (iBiggestCitiesLinesSize <= 0 || Game.mapScale.getCurrentScale() <= Game.DRAW_INNER_BORDERS) {
            return;
        }
        try {
            spriteBatch.setColor(Color.WHITE);
            for (int i = 0; i < iBiggestCitiesLinesSize; i++) {
                try {
                    biggestCitiesLines.get(i).update();
                } catch (Exception unused) {
                }
            }
            for (int i2 = 0; i2 < iBiggestCitiesLinesSize; i2++) {
                try {
                    biggestCitiesLines.get(i2).draw(spriteBatch, f);
                } catch (Exception unused2) {
                }
            }
        } catch (Exception unused3) {
        }
        try {
            Renderer.oSBBorder.end();
            Renderer.oSBBorder.begin();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void drawBuildingsInConstruction(SpriteBatch spriteBatch) {
        try {
            if (Game.FOG_OF_WAR) {
                for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                    try {
                        Province province = Game.getProvince(Game.getProvinceInViewID(i));
                        if (province.getCivID() == Game.player.iCivID && province.iBuildingsConstructionSize > 0) {
                            int i2 = province.wonderConstruction != null ? 1 : 0;
                            Image image = ImageManager.getImage(Images.unitsFrameMap);
                            Image image2 = ImageManager.getImage(Images.progressBarFrame);
                            Image image3 = ImageManager.getImage(Images.progressBarFrameMask);
                            spriteBatch.setShader(Renderer.shaderAlpha);
                            BuildingsManager.buildingImages.get(BuildingsManager.buildings.get(province.getBuildingsConstruction(0).getBuilding()).ImageID[province.getBuildingsConstruction(0).getBuildingID()]).getTexture().bind(1);
                            Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
                            ImageManager.getImage(Images.unitsFrameMapMask).draw(spriteBatch, (int) (((province.getTranslateProvincePosX() + province.iCenterShiftX) * Game.mapScale.getCurrentScale()) - (image.getWidth() / 2)), (int) (((((Game.mapCoords.getPosY() + province.iCenterShiftY) * Game.mapScale.getCurrentScale()) - (ProvinceDrawArmy.getArmyHeight() / 2)) - image.getHeight()) - (image.getHeight() * i2)));
                            spriteBatch.flush();
                            spriteBatch.setShader(Renderer.shaderDefault);
                            image.draw(spriteBatch, (int) (((province.getTranslateProvincePosX() + province.iCenterShiftX) * Game.mapScale.getCurrentScale()) - (image.getWidth() / 2)), (int) (((((Game.mapCoords.getPosY() + province.iCenterShiftY) * Game.mapScale.getCurrentScale()) - (ProvinceDrawArmy.getArmyHeight() / 2)) - image.getHeight()) - (image.getHeight() * i2)));
                            int width = (image2.getWidth() - image3.getWidth()) / 2;
                            int height = (image2.getHeight() - image3.getHeight()) / 2;
                            spriteBatch.setColor(new Color(progressBarBG));
                            image3.draw(spriteBatch, ((int) (((province.getTranslateProvincePosX() + province.iCenterShiftX) * Game.mapScale.getCurrentScale()) - (image.getWidth() / 2))) + width, ((int) (((((((Game.mapCoords.getPosY() + province.iCenterShiftY) * Game.mapScale.getCurrentScale()) - (ProvinceDrawArmy.getArmyHeight() / 2)) - image.getHeight()) + image.getHeight()) - image2.getHeight()) - (image.getHeight() * i2))) + height);
                            spriteBatch.setColor(progressBar);
                            image3.draw(spriteBatch, ((int) (((province.getTranslateProvincePosX() + province.iCenterShiftX) * Game.mapScale.getCurrentScale()) - (image.getWidth() / 2))) + width, height + ((int) (((((((Game.mapCoords.getPosY() + province.iCenterShiftY) * Game.mapScale.getCurrentScale()) - (ProvinceDrawArmy.getArmyHeight() / 2)) - image.getHeight()) + image.getHeight()) - image2.getHeight()) - (image.getHeight() * i2))), (int) (image3.getWidth() * (1.0f - (province.getBuildingsConstruction(0).getConstructionTimeLeft() / province.getBuildingsConstruction(0).getConstructionTime()))), image3.getHeight());
                            spriteBatch.setColor(Color.WHITE);
                            image2.draw(spriteBatch, (int) (((province.getTranslateProvincePosX() + province.iCenterShiftX) * Game.mapScale.getCurrentScale()) - (image.getWidth() / 2)), (int) (((((((Game.mapCoords.getPosY() + province.iCenterShiftY) * Game.mapScale.getCurrentScale()) - (ProvinceDrawArmy.getArmyHeight() / 2)) - image.getHeight()) + image.getHeight()) - image2.getHeight()) - (image.getHeight() * i2)));
                        }
                    } catch (Exception unused) {
                    }
                }
            } else {
                for (int i3 = 0; i3 < Game.NUM_OF_PROVINCES_IN_VIEW; i3++) {
                    try {
                        Province province2 = Game.getProvince(Game.getProvinceInViewID(i3));
                        if (province2.iBuildingsConstructionSize > 0) {
                            int i4 = province2.wonderConstruction != null ? 1 : 0;
                            Image image4 = ImageManager.getImage(Images.unitsFrameMap);
                            Image image5 = ImageManager.getImage(Images.progressBarFrame);
                            Image image6 = ImageManager.getImage(Images.progressBarFrameMask);
                            spriteBatch.setShader(Renderer.shaderAlpha);
                            BuildingsManager.buildingImages.get(BuildingsManager.buildings.get(province2.getBuildingsConstruction(0).getBuilding()).ImageID[province2.getBuildingsConstruction(0).getBuildingID()]).getTexture().bind(1);
                            Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
                            ImageManager.getImage(Images.unitsFrameMapMask).draw(spriteBatch, (int) (((province2.getTranslateProvincePosX() + province2.iCenterShiftX) * Game.mapScale.getCurrentScale()) - (image4.getWidth() / 2)), (int) (((((Game.mapCoords.getPosY() + province2.iCenterShiftY) * Game.mapScale.getCurrentScale()) - (ProvinceDrawArmy.getArmyHeight() / 2)) - image4.getHeight()) - (image4.getHeight() * i4)));
                            spriteBatch.flush();
                            spriteBatch.setShader(Renderer.shaderDefault);
                            image4.draw(spriteBatch, (int) (((province2.getTranslateProvincePosX() + province2.iCenterShiftX) * Game.mapScale.getCurrentScale()) - (image4.getWidth() / 2)), (int) (((((Game.mapCoords.getPosY() + province2.iCenterShiftY) * Game.mapScale.getCurrentScale()) - (ProvinceDrawArmy.getArmyHeight() / 2)) - image4.getHeight()) - (image4.getHeight() * i4)));
                            int width2 = (image5.getWidth() - image6.getWidth()) / 2;
                            int height2 = (image5.getHeight() - image6.getHeight()) / 2;
                            spriteBatch.setColor(new Color(progressBarBG));
                            image6.draw(spriteBatch, ((int) (((province2.getTranslateProvincePosX() + province2.iCenterShiftX) * Game.mapScale.getCurrentScale()) - (image4.getWidth() / 2))) + width2, ((int) (((((((Game.mapCoords.getPosY() + province2.iCenterShiftY) * Game.mapScale.getCurrentScale()) - (ProvinceDrawArmy.getArmyHeight() / 2)) - image4.getHeight()) + image4.getHeight()) - image5.getHeight()) - (image4.getHeight() * i4))) + height2);
                            spriteBatch.setColor(progressBar);
                            image6.draw(spriteBatch, ((int) (((province2.getTranslateProvincePosX() + province2.iCenterShiftX) * Game.mapScale.getCurrentScale()) - (image4.getWidth() / 2))) + width2, height2 + ((int) (((((((Game.mapCoords.getPosY() + province2.iCenterShiftY) * Game.mapScale.getCurrentScale()) - (ProvinceDrawArmy.getArmyHeight() / 2)) - image4.getHeight()) + image4.getHeight()) - image5.getHeight()) - (image4.getHeight() * i4))), (int) (image6.getWidth() * (1.0f - (province2.getBuildingsConstruction(0).getConstructionTimeLeft() / province2.getBuildingsConstruction(0).getConstructionTime()))), image6.getHeight());
                            spriteBatch.setColor(Color.WHITE);
                            image5.draw(spriteBatch, (int) (((province2.getTranslateProvincePosX() + province2.iCenterShiftX) * Game.mapScale.getCurrentScale()) - (image4.getWidth() / 2)), (int) (((((((Game.mapCoords.getPosY() + province2.iCenterShiftY) * Game.mapScale.getCurrentScale()) - (ProvinceDrawArmy.getArmyHeight() / 2)) - image4.getHeight()) + image4.getHeight()) - image5.getHeight()) - (image4.getHeight() * i4)));
                        }
                    } catch (Exception unused2) {
                    }
                }
            }
        } catch (Exception unused3) {
        }
    }

    public static final void drawDiplomacyLines_Just(SpriteBatch spriteBatch, float f) {
        if (iDiplomacyLinesSize > 0) {
            try {
                spriteBatch.setColor(Color.WHITE);
                Renderer.oSBBorder.begin();
                for (int i = iDiplomacyLinesSize - 1; i >= 0; i--) {
                    try {
                        diplomacyLines.get(i).update();
                    } catch (Exception e) {
                        diplomacyLines.remove(i);
                        CFG.exceptionStack(e);
                    }
                }
                try {
                    for (int i2 = iDiplomacyLinesSize - 1; i2 >= 0; i2--) {
                        try {
                            if (diplomacyLines.get(i2).draw2(spriteBatch, f)) {
                                diplomacyLines.remove(i2);
                            }
                        } catch (Exception e2) {
                            diplomacyLines.remove(i2);
                            CFG.exceptionStack(e2);
                        }
                    }
                    iDiplomacyLinesSize = diplomacyLines.size();
                } catch (Exception e3) {
                    CFG.exceptionStack(e3);
                }
            } catch (Exception e4) {
                CFG.exceptionStack(e4);
            }
            try {
                Renderer.oSBBorder.end();
            } catch (Exception e5) {
                CFG.exceptionStack(e5);
            }
        }
    }

    public static final void drawMoveUnits_Just(SpriteBatch spriteBatch, float f) {
        spriteBatch.setColor(Color.WHITE);
        int i = 0;
        try {
            int i2 = FRAME_ID + 1;
            FRAME_ID = i2;
            if (i2 >= 14400) {
                FRAME_ID = 0;
                drawMoveUnits_Just_CheckArmies();
            }
            for (int i3 = 1; i3 < Game.getCivsSize(); i3++) {
                if (Game.getCiv(i3).getMoveUnitsSize() > 0) {
                    for (int i4 = 0; i4 < Game.getCiv(i3).getMoveUnitsSize(); i4++) {
                        try {
                            Game.getCiv(i3).getMoveUnits(i4).update();
                        } catch (Exception unused) {
                        }
                    }
                }
            }
            for (int i5 = 0; i5 < Game.revolutionMoveUnits.iMoveUnitsSize; i5++) {
                try {
                    Game.revolutionMoveUnits.lMoveUnits.get(i5).update();
                } catch (Exception unused2) {
                }
            }
            Iterator<Map.Entry<Integer, Diplomacy.DiplomacyData>> it = Game.getCiv(Game.player.iCivID).diplomacy.alliance.entrySet().iterator();
            int i6 = 0;
            while (it.hasNext()) {
                try {
                    int iIntValue = it.next().getKey().intValue();
                    if (Game.getCiv(iIntValue).getPuppetOfCivID() != Game.player.iCivID) {
                        for (int i7 = 0; i7 < Game.getCiv(iIntValue).getMoveUnitsSize(); i7++) {
                            try {
                                Game.getCiv(iIntValue).getMoveUnits(i7).draw_Ally(spriteBatch, f);
                                i6 = 1;
                            } catch (Exception unused3) {
                            }
                        }
                    }
                } catch (Exception unused4) {
                }
            }
            for (int i8 = 0; i8 < Game.getCiv(Game.player.iCivID).diplomacy.iVassalsSize; i8++) {
                int i9 = Game.getCiv(Game.player.iCivID).diplomacy.lVassals.get(i8).c;
                for (int i10 = 0; i10 < Game.getCiv(i9).getMoveUnitsSize(); i10++) {
                    try {
                        Game.getCiv(i9).getMoveUnits(i10).draw_Ally(spriteBatch, f);
                        i6 = 1;
                    } catch (Exception unused5) {
                    }
                }
            }
            while (i < Game.getCiv(Game.player.iCivID).getMoveUnitsSize()) {
                try {
                    Game.getCiv(Game.player.iCivID).getMoveUnits(i).draw(spriteBatch, f);
                    i6 = 1;
                } catch (Exception unused6) {
                }
                i++;
            }
            i = i6;
        } catch (Exception unused7) {
        }
        if (i != 0) {
            try {
                Renderer.oSBBorder.end();
                Renderer.oSBBorder.begin();
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
    }

    public static final void drawMoveUnits_Just_CheckArmies() {
        try {
            Iterator<Map.Entry<Integer, Diplomacy.DiplomacyData>> it = Game.getCiv(Game.player.iCivID).diplomacy.alliance.entrySet().iterator();
            while (it.hasNext()) {
                int iIntValue = it.next().getKey().intValue();
                if (Game.getCiv(iIntValue).getPuppetOfCivID() != Game.player.iCivID) {
                    for (int moveUnitsSize = Game.getCiv(iIntValue).getMoveUnitsSize() - 1; moveUnitsSize >= 0; moveUnitsSize--) {
                        if (Game.getProvince(Game.getCiv(iIntValue).getMoveUnits(moveUnitsSize).getFromProvinceID()).getArmy(Game.getCiv(iIntValue).getMoveUnits(moveUnitsSize).key) == null) {
                            Game.getCiv(iIntValue).removeMove(moveUnitsSize);
                        }
                    }
                }
            }
            for (int i = 0; i < Game.getCiv(Game.player.iCivID).diplomacy.iVassalsSize; i++) {
                int i2 = Game.getCiv(Game.player.iCivID).diplomacy.lVassals.get(i).c;
                for (int moveUnitsSize2 = Game.getCiv(i2).getMoveUnitsSize() - 1; moveUnitsSize2 >= 0; moveUnitsSize2--) {
                    if (Game.getProvince(Game.getCiv(i2).getMoveUnits(moveUnitsSize2).getFromProvinceID()).getArmy(Game.getCiv(i2).getMoveUnits(moveUnitsSize2).key) == null) {
                        Game.getCiv(i2).removeMove(moveUnitsSize2);
                    }
                }
            }
            for (int moveUnitsSize3 = Game.getCiv(Game.player.iCivID).getMoveUnitsSize() - 1; moveUnitsSize3 >= 0; moveUnitsSize3--) {
                if (Game.getProvince(Game.getCiv(Game.player.iCivID).getMoveUnits(moveUnitsSize3).getFromProvinceID()).getArmy(Game.getCiv(Game.player.iCivID).getMoveUnits(moveUnitsSize3).key) == null) {
                    Game.getCiv(Game.player.iCivID).removeMove(moveUnitsSize3);
                    CFG.LOG("REMOVED");
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void drawOccupiedProvinces(SpriteBatch spriteBatch) {
        if (CFG.isDesktop() && drawProvincesCiv_HoveredFlagID > 0) {
            spriteBatch.setShader(Renderer.shaderDefaultProvince);
            float provinceAlpha = getProvinceAlpha() * MapModeManager.fAlphaAnimation;
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() == drawProvincesCiv_HoveredFlagID) {
                    Game.getProvince(Game.getProvinceInViewID(i)).setProvinceColor(spriteBatch, provinceAlpha);
                    Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
                }
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() == drawProvincesCiv_HoveredFlagID) {
                    Game.getProvince(Game.getExtraProvinceInViewID(i2)).setProvinceColor(spriteBatch, provinceAlpha);
                    Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
                }
            }
            spriteBatch.setShader(Renderer.shaderDefault);
        }
        if (Game.mapScale.getCurrentScale() >= Game.DRAW_OCCUPIED_PROVINCES_MIN_SCALE) {
            drawOccupiedProvinces_Just(spriteBatch);
        } else if (ProvinceDrawArmy.drawOccupiedHideAnimation) {
            drawOccupiedProvinces_Just(spriteBatch);
        }
    }

    private static final void drawOccupiedProvinces_Just(SpriteBatch spriteBatch) {
        float provinceAlpha = getProvinceAlpha() * (Game.settingsManager.PROVINCE_OCCUPIED_ALPHA_EXTRA + 1.0f) * ProvinceDrawArmy.DRAW_OCCUPIED_ALPHA;
        if (provinceAlpha > 0.001f) {
            spriteBatch.setShader(Renderer.shaderAlpha_Pattern);
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                if (Game.getProvince(Game.getProvinceInViewID(i)).isOccupied()) {
                    Game.getProvince(Game.getProvinceInViewID(i)).drawOccupiedProvince(spriteBatch, provinceAlpha);
                }
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).isOccupied()) {
                    Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawOccupiedProvince(spriteBatch, provinceAlpha);
                }
            }
            spriteBatch.setShader(Renderer.shaderDefault);
        }
    }

    public static final void drawProvinceDots_Just(SpriteBatch spriteBatch, float f) {
        if (iProvinceDotsSize <= 0 || Game.mapScale.getCurrentScale() <= Game.DRAW_INNER_BORDERS) {
            return;
        }
        try {
            spriteBatch.setColor(Color.WHITE);
            Renderer.oSBBorder.begin();
            try {
                for (int i = iProvinceDotsSize - 1; i >= 0; i--) {
                    try {
                        if (provinceDots.get(i).draw(spriteBatch, f)) {
                            provinceDots.remove(i);
                        }
                    } catch (Exception e) {
                        CFG.exceptionStack(e);
                    }
                }
                iProvinceDotsSize = provinceDots.size();
            } catch (Exception e2) {
                CFG.exceptionStack(e2);
            }
        } catch (Exception e3) {
            CFG.exceptionStack(e3);
        }
        try {
            Renderer.oSBBorder.end();
        } catch (Exception e4) {
            CFG.exceptionStack(e4);
        }
    }

    public static final void drawProvinces(SpriteBatch spriteBatch) {
        try {
            Game.updateProvincesInView();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        spriteBatch.setShader(Renderer.shaderDefaultProvince);
        try {
            MapModeManager mapModeManager = Game.mapModes;
            MapModeManager.updateAlpha();
            drawProvinces.draw(spriteBatch);
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
        spriteBatch.setShader(Renderer.shaderDefault);
        spriteBatch.setColor(Color.WHITE);
    }

    public static final void drawProvinces(SpriteBatch spriteBatch, int i, int i2, float f, int i3) {
        for (int i4 = 0; i4 < Game.getProvincesSize(); i4++) {
            if (Game.getProvince(i4).getCivID() != 0) {
                Game.getProvince(i4).draw(spriteBatch, i, i2, f, i3);
            } else if (Game.getProvince(i4).getWasteland() >= 0) {
                Game.getProvince(i4).drawWasteland(spriteBatch, i, i2, f, i3);
            }
        }
        spriteBatch.setColor(Color.WHITE);
    }

    public static final void drawProvincesBorder(SpriteBatch spriteBatch) {
        if (Game.settingsManager.SETTINGS_PROVINCE_BORDER <= 0 || Game.mapScale.getCurrentScale() <= SettingsProvince.value.DRAW_BORDERS) {
            return;
        }
        Renderer.oSBBorder.begin();
        drawProvincesBorder_Prepare();
        for (int i = 0; i < Game.NUM_OF_WASTELAND_PROVINCES_IN_VIEW; i++) {
            try {
                Game.getProvince(Game.getWastelandProvinceInViewID(i)).drawProvinceBorder(spriteBatch, lineWidth, joinType);
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        for (int i2 = 0; i2 < Game.NUM_OF_SEA_PROVINCES_IN_VIEW; i2++) {
            Game.getProvince(Game.getSeaProvinceInViewID(i2)).drawProvinceBorder(spriteBatch, lineWidth, joinType);
        }
        for (int i3 = 0; i3 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i3++) {
            Game.getProvince(Game.getExtraProvinceInViewID(i3)).drawProvinceBorder(spriteBatch, lineWidth, joinType);
        }
        for (int i4 = 0; i4 < Game.NUM_OF_PROVINCES_IN_VIEW; i4++) {
            Game.getProvince(Game.getProvinceInViewID(i4)).drawProvinceBorder(spriteBatch, lineWidth, joinType);
        }
        Renderer.oSBBorder.end();
        spriteBatch.setColor(Color.WHITE);
    }

    public static final void drawProvincesBorder_Prepare() {
        lineWidth = 1.5f;
        if (Game.mapScale.getCurrentScale() < 1.0f) {
            lineWidth = Math.min(6.0f, lineWidth / Game.mapScale.getCurrentScale());
        }
        lineWidth += Game.settingsManager.BORDER_EXTRA_WIDTH;
        ProvinceBorder.mapCordsPosY = -Game.mapCoords.getPosY();
        ProvinceBorder.pathProvinceBorderExtraWidth = Math.min(SettingsProvince.value.MAX_BORDER_WIDTH, Math.max(SettingsProvince.value.MIN_BORDER_WIDTH, SettingsProvince.value.MAX_BORDER_WIDTH / Game.mapScale.getCurrentScale())) + Game.settingsManager.BORDER_EXTRA_WIDTH;
        ProvinceBorder.pathProvinceBorderExtraWidth2 = Math.max(1.0f, ProvinceBorder.pathProvinceBorderExtraWidth / SettingsProvince.value.BORDER_WIDTH_DIVIDE) + Game.settingsManager.BORDER_EXTRA_WIDTH;
        if (Game.mapScale.getCurrentScale() < SettingsProvince.value.SCALE_NONE_NONE) {
            joinType = JoinType.NONE;
            joinType_Shadow = JoinType.NONE;
            return;
        }
        if (Game.mapScale.getCurrentScale() < SettingsProvince.value.SCALE_NONE_POINTY) {
            joinType = JoinType.NONE;
            joinType_Shadow = JoinType.POINTY;
        } else if (Game.mapScale.getCurrentScale() < SettingsProvince.value.SCALE_POINTY_POINTY) {
            joinType = JoinType.POINTY;
            joinType_Shadow = JoinType.POINTY;
        } else if (Game.mapScale.getCurrentScale() < SettingsProvince.value.SCALE_POINTY_SMOOTH) {
            joinType = JoinType.POINTY;
            joinType_Shadow = JoinType.SMOOTH;
        } else {
            joinType = JoinType.SMOOTH;
            joinType_Shadow = JoinType.SMOOTH;
        }
    }

    protected static final void drawProvincesInMapEditor_Connections(SpriteBatch spriteBatch) {
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.1f));
        for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
            Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
        }
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.4f));
        for (int i2 = 0; i2 < Game.NUM_OF_PROVINCES_IN_VIEW; i2++) {
            for (int i3 = 0; i3 < Game.getProvince(Game.getProvinceInViewID(i2)).getProvinceBordersLandByLandSize(); i3++) {
                drawProvincesInMapEditor_Connections_Line(spriteBatch, Images.pix2, Game.getProvinceInViewID(i2), Game.getProvince(Game.getProvinceInViewID(i2)).getProvinceBordersLandByLand().get(i3).getWithProvinceID());
            }
            for (int i4 = 0; i4 < Game.getProvince(Game.getProvinceInViewID(i2)).getProvinceBordersLandBySeaSize(); i4++) {
                drawProvincesInMapEditor_Connections_Line(spriteBatch, Images.line_33, Game.getProvinceInViewID(i2), Game.getProvince(Game.getProvinceInViewID(i2)).getProvinceBordersLandBySea().get(i4).getWithProvinceID());
            }
        }
        for (int i5 = 0; i5 < Game.NUM_OF_SEA_PROVINCES_IN_VIEW; i5++) {
            for (int i6 = 0; i6 < Game.getProvince(Game.getSeaProvinceInViewID(i5)).getProvinceBordersLandBySeaSize(); i6++) {
                drawProvincesInMapEditor_Connections_Line(spriteBatch, Images.line_33, Game.getSeaProvinceInViewID(i5), Game.getProvince(Game.getSeaProvinceInViewID(i5)).getProvinceBordersLandBySea().get(i6).getWithProvinceID());
            }
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.25f));
            for (int i7 = 0; i7 < Game.getProvince(Game.getSeaProvinceInViewID(i5)).getProvinceBordersSeaBySeaSize(); i7++) {
                drawProvincesInMapEditor_Connections_Line(spriteBatch, Images.line_33, Game.getSeaProvinceInViewID(i5), Game.getProvince(Game.getSeaProvinceInViewID(i5)).getProvinceBordersSeaBySea().get(i7).getWithProvinceID());
            }
        }
    }

    private static final void drawProvincesInMapEditor_Connections_Line(SpriteBatch spriteBatch, int i, int i2, int i3) {
        if (Game.getProvince(i3).getDrawProvince()) {
            ImageManager.getImage(i).draw(spriteBatch, Game.getProvince(i2).iCenterShiftX + Game.getProvince(i2).getTranslateProvincePosX(), Game.getProvince(i2).iCenterShiftY + Game.mapCoords.getPosY(), (int) Math.ceil(Math.sqrt((((Game.getProvince(i3).iCenterShiftX + Game.getProvince(i3).getTranslateProvincePosX()) - (Game.getProvince(i2).iCenterShiftX + Game.getProvince(i2).getTranslateProvincePosX())) * ((Game.getProvince(i3).iCenterShiftX + Game.getProvince(i3).getTranslateProvincePosX()) - (Game.getProvince(i2).iCenterShiftX + Game.getProvince(i2).getTranslateProvincePosX()))) + ((Game.getProvince(i2).iCenterShiftY - Game.getProvince(i3).iCenterShiftY) * (Game.getProvince(i2).iCenterShiftY - Game.getProvince(i3).iCenterShiftY)))), ImageManager.getImage(i).getHeight(), (float) ((Math.atan2(Game.getProvince(i2).iCenterShiftY - Game.getProvince(i3).iCenterShiftY, (-(Game.getProvince(i2).iCenterShiftX + Game.getProvince(i2).getTranslateProvincePosX())) + (Game.getProvince(i3).iCenterShiftX + Game.getProvince(i3).getTranslateProvincePosX())) * 180.0d) / 3.141592653589793d), 0);
        }
    }

    public static final void drawProvinces_Alliances(SpriteBatch spriteBatch) {
        float provinceAlpha = getProvinceAlpha() * MapModeManager.fAlphaAnimation;
        float provinceAlpha2 = getProvinceAlpha() * MapModeManager.fAlphaAnimation * 0.4f;
        drawWastelandProvinces(spriteBatch);
        for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
            if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() > 0) {
                if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() == Game.player.iCivID) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_BLUE2.r, MapModeManager.PROVINCE_BLUE2.g, MapModeManager.PROVINCE_BLUE2.b, provinceAlpha));
                } else if (Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).diplomacy.alliance.isEmpty()) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha2));
                } else {
                    spriteBatch.setColor(new Color(DiplomacyManager.COLOR_ALLIANCE.r, DiplomacyManager.COLOR_ALLIANCE.g, DiplomacyManager.COLOR_ALLIANCE.b, provinceAlpha));
                }
                Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
            }
        }
        for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
            if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() > 0) {
                if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() == Game.player.iCivID) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_BLUE2.r, MapModeManager.PROVINCE_BLUE2.g, MapModeManager.PROVINCE_BLUE2.b, provinceAlpha));
                } else if (Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).diplomacy.alliance.isEmpty()) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha2));
                } else {
                    spriteBatch.setColor(new Color(DiplomacyManager.COLOR_ALLIANCE.r, DiplomacyManager.COLOR_ALLIANCE.g, DiplomacyManager.COLOR_ALLIANCE.b, provinceAlpha));
                }
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
            }
        }
        drawOccupiedProvinces(spriteBatch);
    }

    public static final void drawProvinces_Colonize(SpriteBatch spriteBatch) {
        float provinceAlpha = getProvinceAlpha() * MapModeManager.fAlphaAnimation;
        float provinceAlpha2 = getProvinceAlpha() * MapModeManager.fAlphaAnimation * 0.4f;
        drawWastelandProvinces(spriteBatch);
        int i = 0;
        if (Game.getCiv(Game.player.iCivID).fGold < GameValues.colonization.ALLOW_COLONIZATION_BY_SPENDING_GOLD_COST) {
            for (int i2 = 0; i2 < Game.NUM_OF_PROVINCES_IN_VIEW; i2++) {
                if (Game.getProvince(Game.getProvinceInViewID(i2)).getWasteland() < 0) {
                    if (Game.getProvince(Game.getProvinceInViewID(i2)).getCivID() > 0) {
                        spriteBatch.setColor(Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i2)).getCivID()).getColor(provinceAlpha));
                    } else {
                        spriteBatch.setColor(new Color(MapModeManager.PROVINCE_RED2.r, MapModeManager.PROVINCE_RED2.g, MapModeManager.PROVINCE_RED2.b, provinceAlpha2));
                    }
                    Game.getProvince(Game.getProvinceInViewID(i2)).drawLandProvince(spriteBatch);
                }
            }
            while (i < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW) {
                if (Game.getProvince(Game.getExtraProvinceInViewID(i)).getWasteland() < 0) {
                    if (Game.getProvince(Game.getExtraProvinceInViewID(i)).getCivID() > 0) {
                        spriteBatch.setColor(Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i)).getCivID()).getColor(provinceAlpha));
                    } else {
                        spriteBatch.setColor(new Color(MapModeManager.PROVINCE_RED2.r, MapModeManager.PROVINCE_RED2.g, MapModeManager.PROVINCE_RED2.b, provinceAlpha2));
                    }
                    Game.getProvince(Game.getExtraProvinceInViewID(i)).drawLandProvinceExtra(spriteBatch);
                }
                i++;
            }
        } else {
            for (int i3 = 0; i3 < Game.NUM_OF_PROVINCES_IN_VIEW; i3++) {
                if (Game.getProvince(Game.getProvinceInViewID(i3)).getWasteland() < 0) {
                    if (Game.getProvince(Game.getProvinceInViewID(i3)).getCivID() > 0) {
                        spriteBatch.setColor(Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i3)).getCivID()).getColor(provinceAlpha));
                    } else {
                        spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GREEN.r, MapModeManager.PROVINCE_GREEN.g, MapModeManager.PROVINCE_GREEN.b, provinceAlpha2));
                    }
                    Game.getProvince(Game.getProvinceInViewID(i3)).drawLandProvince(spriteBatch);
                }
            }
            while (i < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW) {
                if (Game.getProvince(Game.getExtraProvinceInViewID(i)).getWasteland() < 0) {
                    if (Game.getProvince(Game.getExtraProvinceInViewID(i)).getCivID() > 0) {
                        spriteBatch.setColor(Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i)).getCivID()).getColor(provinceAlpha));
                    } else {
                        spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GREEN.r, MapModeManager.PROVINCE_GREEN.g, MapModeManager.PROVINCE_GREEN.b, provinceAlpha2));
                    }
                    Game.getProvince(Game.getExtraProvinceInViewID(i)).drawLandProvinceExtra(spriteBatch);
                }
                i++;
            }
        }
        drawOccupiedProvinces(spriteBatch);
    }

    public static final void drawProvinces_CurrentWars(SpriteBatch spriteBatch) {
        float provinceAlpha = getProvinceAlpha() * MapModeManager.fAlphaAnimation;
        float provinceAlpha2 = getProvinceAlpha() * MapModeManager.fAlphaAnimation * 0.4f;
        drawWastelandProvinces(spriteBatch);
        for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
            if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() > 0) {
                if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() == Game.player.iCivID) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_BLUE2.r, MapModeManager.PROVINCE_BLUE2.g, MapModeManager.PROVINCE_BLUE2.b, provinceAlpha));
                } else if (Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).diplomacy.isAtWar()) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_RED2.r, MapModeManager.PROVINCE_RED2.g, MapModeManager.PROVINCE_RED2.b, provinceAlpha));
                } else {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha2));
                }
                Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
            }
        }
        for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
            if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() > 0) {
                if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() == Game.player.iCivID) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_BLUE2.r, MapModeManager.PROVINCE_BLUE2.g, MapModeManager.PROVINCE_BLUE2.b, provinceAlpha));
                } else if (Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).diplomacy.isAtWar()) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_RED2.r, MapModeManager.PROVINCE_RED2.g, MapModeManager.PROVINCE_RED2.b, provinceAlpha));
                } else {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha2));
                }
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
            }
        }
        drawOccupiedProvinces(spriteBatch);
    }

    public static final void drawProvinces_DeclareWar(SpriteBatch spriteBatch) {
        float provinceAlpha = getProvinceAlpha() * MapModeManager.fAlphaAnimation;
        float provinceAlpha2 = getProvinceAlpha() * MapModeManager.fAlphaAnimation * 0.4f;
        drawWastelandProvinces(spriteBatch);
        for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
            if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() > 0) {
                if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() == Game.player.iCivID) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_BLUE2.r, MapModeManager.PROVINCE_BLUE2.g, MapModeManager.PROVINCE_BLUE2.b, provinceAlpha));
                } else if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() == InGame_DeclareWar.iCivID) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_RED2.r, MapModeManager.PROVINCE_RED2.g, MapModeManager.PROVINCE_RED2.b, provinceAlpha));
                } else if (Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).warView_IsAggressor) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_BLUE2_ALLY.r, MapModeManager.PROVINCE_BLUE2_ALLY.g, MapModeManager.PROVINCE_BLUE2_ALLY.b, provinceAlpha));
                } else if (Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).warView_ParticipatesInWar) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_RED2_ALLY.r, MapModeManager.PROVINCE_RED2_ALLY.g, MapModeManager.PROVINCE_RED2_ALLY.b, provinceAlpha));
                } else {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha2));
                }
                Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
            }
        }
        for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
            if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() > 0) {
                if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() == Game.player.iCivID) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_BLUE2.r, MapModeManager.PROVINCE_BLUE2.g, MapModeManager.PROVINCE_BLUE2.b, provinceAlpha));
                } else if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() == InGame_DeclareWar.iCivID) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_RED2.r, MapModeManager.PROVINCE_RED2.g, MapModeManager.PROVINCE_RED2.b, provinceAlpha));
                } else if (Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).warView_IsAggressor) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_BLUE2_ALLY.r, MapModeManager.PROVINCE_BLUE2_ALLY.g, MapModeManager.PROVINCE_BLUE2_ALLY.b, provinceAlpha));
                } else if (Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).warView_ParticipatesInWar) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_RED2_ALLY.r, MapModeManager.PROVINCE_RED2_ALLY.g, MapModeManager.PROVINCE_RED2_ALLY.b, provinceAlpha));
                } else {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha2));
                }
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
            }
        }
        drawOccupiedProvinces(spriteBatch);
    }

    public static final void drawProvinces_DefensivePacts(SpriteBatch spriteBatch) {
        float provinceAlpha = getProvinceAlpha() * MapModeManager.fAlphaAnimation;
        float provinceAlpha2 = getProvinceAlpha() * MapModeManager.fAlphaAnimation * 0.4f;
        drawWastelandProvinces(spriteBatch);
        for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
            if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() > 0) {
                if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() == Game.player.iCivID) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_BLUE2.r, MapModeManager.PROVINCE_BLUE2.g, MapModeManager.PROVINCE_BLUE2.b, provinceAlpha));
                } else if (Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).diplomacy.defensivePact.isEmpty()) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha2));
                } else {
                    spriteBatch.setColor(new Color(DiplomacyManager.COLOR_DEFENSIVE_PACT.r, DiplomacyManager.COLOR_DEFENSIVE_PACT.g, DiplomacyManager.COLOR_DEFENSIVE_PACT.b, provinceAlpha));
                }
                Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
            }
        }
        for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
            if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() > 0) {
                if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() == Game.player.iCivID) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_BLUE2.r, MapModeManager.PROVINCE_BLUE2.g, MapModeManager.PROVINCE_BLUE2.b, provinceAlpha));
                } else if (Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).diplomacy.defensivePact.isEmpty()) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha2));
                } else {
                    spriteBatch.setColor(new Color(DiplomacyManager.COLOR_DEFENSIVE_PACT.r, DiplomacyManager.COLOR_DEFENSIVE_PACT.g, DiplomacyManager.COLOR_DEFENSIVE_PACT.b, provinceAlpha));
                }
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
            }
        }
        drawOccupiedProvinces(spriteBatch);
    }

    public static final void drawProvinces_Diplomacy(SpriteBatch spriteBatch) {
        float provinceAlpha = getProvinceAlpha() * MapModeManager.fAlphaAnimation;
        int i = 0;
        if (InGame.ONLY_MAP_MODE) {
            for (int i2 = 0; i2 < Game.NUM_OF_PROVINCES_IN_VIEW; i2++) {
                if (Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i2)).getCivID()).getPuppetOfCivID() == MapModeManager.diplomacyActiveCivID) {
                    Game.getProvince(Game.getProvinceInViewID(i2)).drawLandProvince(spriteBatch, provinceAlpha);
                }
            }
            while (i < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW) {
                if (Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i)).getCivID()).getPuppetOfCivID() == MapModeManager.diplomacyActiveCivID) {
                    Game.getProvince(Game.getExtraProvinceInViewID(i)).drawLandProvince(spriteBatch, provinceAlpha);
                }
                i++;
            }
            return;
        }
        drawWastelandProvinces(spriteBatch);
        for (int i3 = 0; i3 < Game.NUM_OF_PROVINCES_IN_VIEW; i3++) {
            if (Game.getProvince(Game.getProvinceInViewID(i3)).getCivID() > 0) {
                spriteBatch.setColor(new Color(Game.getProvince(Game.getProvinceInViewID(i3)).provinceColor.r, Game.getProvince(Game.getProvinceInViewID(i3)).provinceColor.g, Game.getProvince(Game.getProvinceInViewID(i3)).provinceColor.b, Game.getProvince(Game.getProvinceInViewID(i3)).provinceColor.a * provinceAlpha));
                Game.getProvince(Game.getProvinceInViewID(i3)).drawLandProvince(spriteBatch);
            }
        }
        while (i < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW) {
            if (Game.getProvince(Game.getExtraProvinceInViewID(i)).getCivID() > 0) {
                spriteBatch.setColor(new Color(Game.getProvince(Game.getExtraProvinceInViewID(i)).provinceColor.r, Game.getProvince(Game.getExtraProvinceInViewID(i)).provinceColor.g, Game.getProvince(Game.getExtraProvinceInViewID(i)).provinceColor.b, Game.getProvince(Game.getExtraProvinceInViewID(i)).provinceColor.a * provinceAlpha));
                Game.getProvince(Game.getExtraProvinceInViewID(i)).drawLandProvince(spriteBatch);
            }
            i++;
        }
        drawOccupiedProvinces(spriteBatch);
    }

    public static final void drawProvinces_DiplomacyRelations(SpriteBatch spriteBatch) {
        float provinceAlpha = getProvinceAlpha() * MapModeManager.fAlphaAnimation;
        float provinceAlpha2 = getProvinceAlpha() * MapModeManager.fAlphaAnimation;
        drawWastelandProvinces(spriteBatch);
        int i = InGame_Civ.iActiveCivID;
        for (int i2 = 0; i2 < Game.NUM_OF_PROVINCES_IN_VIEW; i2++) {
            if (Game.getProvince(Game.getProvinceInViewID(i2)).getCivID() > 0) {
                if (Game.getProvince(Game.getProvinceInViewID(i2)).getCivID() == i) {
                    spriteBatch.setColor(Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i2)).getCivID()).getColor(provinceAlpha));
                } else if (DiplomacyManager.isAtWar(i, Game.getProvince(Game.getProvinceInViewID(i2)).getCivID())) {
                    spriteBatch.setColor(new Color(PROVINCE_DIPLOMACY_AT_WAR.r, PROVINCE_DIPLOMACY_AT_WAR.g, PROVINCE_DIPLOMACY_AT_WAR.b, provinceAlpha));
                } else {
                    int relation = (int) Game.getCiv(i).diplomacy.getRelation(Game.getProvince(Game.getProvinceInViewID(i2)).getCivID());
                    if (relation == 0) {
                        spriteBatch.setColor(new Color(PROVINCE_DIPLOMACY_NEUTRAL_GREEN.r, PROVINCE_DIPLOMACY_NEUTRAL_GREEN.g, PROVINCE_DIPLOMACY_NEUTRAL_GREEN.b, provinceAlpha2 / 3.0f));
                    } else if (relation > 0) {
                        spriteBatch.setColor(CFG.getColorStep(PROVINCE_DIPLOMACY_GREEN, PROVINCE_DIPLOMACY_GREEN2, relation, (int) GameValues.diplomacy.DIPLOMACY_RELATIONS_MAX, provinceAlpha2));
                    } else {
                        spriteBatch.setColor(CFG.getColorStep(PROVINCE_DIPLOMACY_RED, PROVINCE_DIPLOMACY_RED2, -relation, (int) (-GameValues.diplomacy.DIPLOMACY_RELATIONS_MIN), provinceAlpha2));
                    }
                }
                Game.getProvince(Game.getProvinceInViewID(i2)).drawLandProvince(spriteBatch);
            }
        }
        for (int i3 = 0; i3 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i3++) {
            if (Game.getProvince(Game.getExtraProvinceInViewID(i3)).getCivID() > 0) {
                if (Game.getProvince(Game.getExtraProvinceInViewID(i3)).getCivID() == i) {
                    spriteBatch.setColor(Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i3)).getCivID()).getColor(provinceAlpha));
                } else if (DiplomacyManager.isAtWar(i, Game.getProvince(Game.getExtraProvinceInViewID(i3)).getCivID())) {
                    spriteBatch.setColor(new Color(PROVINCE_DIPLOMACY_AT_WAR.r, PROVINCE_DIPLOMACY_AT_WAR.g, PROVINCE_DIPLOMACY_AT_WAR.b, provinceAlpha));
                } else {
                    int relation2 = (int) Game.getCiv(i).diplomacy.getRelation(Game.getProvince(Game.getExtraProvinceInViewID(i3)).getCivID());
                    if (relation2 == 0) {
                        spriteBatch.setColor(new Color(PROVINCE_DIPLOMACY_NEUTRAL_GREEN.r, PROVINCE_DIPLOMACY_NEUTRAL_GREEN.g, PROVINCE_DIPLOMACY_NEUTRAL_GREEN.b, provinceAlpha2 / 3.0f));
                    } else if (relation2 > 0) {
                        spriteBatch.setColor(CFG.getColorStep(PROVINCE_DIPLOMACY_GREEN, PROVINCE_DIPLOMACY_GREEN2, relation2, (int) GameValues.diplomacy.DIPLOMACY_RELATIONS_MAX, provinceAlpha2));
                    } else {
                        spriteBatch.setColor(CFG.getColorStep(PROVINCE_DIPLOMACY_RED, PROVINCE_DIPLOMACY_RED2, -relation2, (int) (-GameValues.diplomacy.DIPLOMACY_RELATIONS_MIN), provinceAlpha2));
                    }
                }
                Game.getProvince(Game.getExtraProvinceInViewID(i3)).drawLandProvince(spriteBatch);
            }
        }
        drawOccupiedProvinces(spriteBatch);
    }

    public static final void drawProvinces_Diplomacy_Hover(SpriteBatch spriteBatch) {
        float provinceAlpha = getProvinceAlpha(Colors.PROVINCE_ALPHA_POPULATION) * MapModeManager.fAlphaAnimation;
        float provinceAlpha2 = getProvinceAlpha() * MapModeManager.fAlphaAnimation;
        drawWastelandProvinces(spriteBatch);
        for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
            if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() > 0) {
                if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() == MapModeManager.diplomacyActiveCivID) {
                    spriteBatch.setColor(new Color(Game.getProvince(Game.getProvinceInViewID(i)).provinceColor.r, Game.getProvince(Game.getProvinceInViewID(i)).provinceColor.g, Game.getProvince(Game.getProvinceInViewID(i)).provinceColor.b, provinceAlpha));
                } else {
                    spriteBatch.setColor(new Color(Game.getProvince(Game.getProvinceInViewID(i)).provinceColor.r, Game.getProvince(Game.getProvinceInViewID(i)).provinceColor.g, Game.getProvince(Game.getProvinceInViewID(i)).provinceColor.b, Game.getProvince(Game.getProvinceInViewID(i)).provinceColor.a * provinceAlpha2));
                }
                Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
            }
        }
        for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
            if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() > 0) {
                if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() == MapModeManager.diplomacyActiveCivID) {
                    spriteBatch.setColor(new Color(Game.getProvince(Game.getExtraProvinceInViewID(i2)).provinceColor.r, Game.getProvince(Game.getExtraProvinceInViewID(i2)).provinceColor.g, Game.getProvince(Game.getExtraProvinceInViewID(i2)).provinceColor.b, provinceAlpha));
                } else {
                    spriteBatch.setColor(new Color(Game.getProvince(Game.getExtraProvinceInViewID(i2)).provinceColor.r, Game.getProvince(Game.getExtraProvinceInViewID(i2)).provinceColor.g, Game.getProvince(Game.getExtraProvinceInViewID(i2)).provinceColor.b, Game.getProvince(Game.getExtraProvinceInViewID(i2)).provinceColor.a * provinceAlpha2));
                }
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvince(spriteBatch);
            }
        }
        drawOccupiedProvinces(spriteBatch);
    }

    public static final void drawProvinces_FogOfWarDiscovery(SpriteBatch spriteBatch, int i, int i2, float f, int i3) {
        for (int i4 = 0; i4 < Game.getProvincesSize(); i4++) {
            if (Game.getProvince(i4).getCivID() != 0) {
                Game.getProvince(i4).draw_FogOfWarDiscovery(spriteBatch, i, i2, f, i3);
            } else if (Game.getProvince(i4).getWasteland() >= 0 && CFG.getMetProvince(i4)) {
                Game.getProvince(i4).drawWasteland(spriteBatch, i, i2, f, i3);
            }
        }
        spriteBatch.setColor(Color.WHITE);
    }

    public static final void drawProvinces_FormCiv(SpriteBatch spriteBatch) {
        float provinceAlpha = getProvinceAlpha() * MapModeManager.fAlphaAnimation;
        float provinceAlpha2 = getProvinceAlpha() * MapModeManager.fAlphaAnimation * 0.6f;
        drawWastelandProvinces(spriteBatch);
        try {
            if (InGame_FormCiv.formCivID >= 0 && Game.player.formableCivs.size() > InGame_FormCiv.formCivID) {
                for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                    if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() > 0) {
                        if (Game.getProvince(Game.getProvinceInViewID(i)).drawInMapMode) {
                            if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() == Game.player.iCivID) {
                                Game.getProvince(Game.getProvinceInViewID(i)).setProvinceColor(spriteBatch, provinceAlpha);
                            } else {
                                spriteBatch.setColor(new Color(MapModeManager.PROVINCE_RED2.r, MapModeManager.PROVINCE_RED2.g, MapModeManager.PROVINCE_RED2.b, provinceAlpha2));
                            }
                        } else if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() == Game.player.iCivID) {
                            Game.getProvince(Game.getProvinceInViewID(i)).setProvinceColor(spriteBatch, provinceAlpha2);
                        } else {
                            spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha2));
                        }
                        Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
                    }
                }
                for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                    if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() > 0) {
                        if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawInMapMode) {
                            if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() == Game.player.iCivID) {
                                Game.getProvince(Game.getExtraProvinceInViewID(i2)).setProvinceColor(spriteBatch, provinceAlpha);
                            } else {
                                spriteBatch.setColor(new Color(MapModeManager.PROVINCE_RED2.r, MapModeManager.PROVINCE_RED2.g, MapModeManager.PROVINCE_RED2.b, provinceAlpha2));
                            }
                        } else if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() == Game.player.iCivID) {
                            Game.getProvince(Game.getExtraProvinceInViewID(i2)).setProvinceColor(spriteBatch, provinceAlpha2);
                        } else {
                            spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha2));
                        }
                        Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvince(spriteBatch);
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        drawOccupiedProvinces(spriteBatch);
    }

    public static final void drawProvinces_Minimap(SpriteBatch spriteBatch, int i, int i2, float f, int i3) {
        for (int i4 = 0; i4 < Game.getProvincesSize(); i4++) {
            if (Game.getProvince(i4).getCivID() != 0) {
                Game.getProvince(i4).draw(spriteBatch, i, i2, f, i3);
            }
        }
        spriteBatch.setColor(Color.WHITE);
    }

    public static final void drawProvinces_NonAggressionPacts(SpriteBatch spriteBatch) {
        float provinceAlpha = getProvinceAlpha() * MapModeManager.fAlphaAnimation;
        float provinceAlpha2 = getProvinceAlpha() * MapModeManager.fAlphaAnimation * 0.4f;
        drawWastelandProvinces(spriteBatch);
        for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
            if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() > 0) {
                if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() == Game.player.iCivID) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_BLUE2.r, MapModeManager.PROVINCE_BLUE2.g, MapModeManager.PROVINCE_BLUE2.b, provinceAlpha));
                } else if (Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).diplomacy.nonAggressionPact.isEmpty()) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha2));
                } else {
                    spriteBatch.setColor(new Color(DiplomacyManager.COLOR_NON_AGGRESSION_PACT.r, DiplomacyManager.COLOR_NON_AGGRESSION_PACT.g, DiplomacyManager.COLOR_NON_AGGRESSION_PACT.b, provinceAlpha));
                }
                Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
            }
        }
        for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
            if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() > 0) {
                if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() == Game.player.iCivID) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_BLUE2.r, MapModeManager.PROVINCE_BLUE2.g, MapModeManager.PROVINCE_BLUE2.b, provinceAlpha));
                } else if (Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).diplomacy.nonAggressionPact.isEmpty()) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha2));
                } else {
                    spriteBatch.setColor(new Color(DiplomacyManager.COLOR_NON_AGGRESSION_PACT.r, DiplomacyManager.COLOR_NON_AGGRESSION_PACT.g, DiplomacyManager.COLOR_NON_AGGRESSION_PACT.b, provinceAlpha));
                }
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
            }
        }
        drawOccupiedProvinces(spriteBatch);
    }

    public static final void drawProvinces_Nuke(SpriteBatch spriteBatch) {
        float provinceAlpha = getProvinceAlpha() * MapModeManager.fAlphaAnimation;
        float provinceAlpha2 = getProvinceAlpha() * MapModeManager.fAlphaAnimation * 0.4f;
        drawWastelandProvinces(spriteBatch);
        for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
            if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() > 0) {
                if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() == Game.player.iCivID) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_BLUE2.r, MapModeManager.PROVINCE_BLUE2.g, MapModeManager.PROVINCE_BLUE2.b, provinceAlpha));
                } else if (DiplomacyManager.isAtWar(Game.player.iCivID, Game.getProvince(Game.getProvinceInViewID(i)).getCivID())) {
                    spriteBatch.setColor(Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).getColor(provinceAlpha));
                } else {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha2));
                }
                Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
            }
        }
        for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
            if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() > 0) {
                if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() == Game.player.iCivID) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_BLUE2.r, MapModeManager.PROVINCE_BLUE2.g, MapModeManager.PROVINCE_BLUE2.b, provinceAlpha));
                } else if (DiplomacyManager.isAtWar(Game.player.iCivID, Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID())) {
                    spriteBatch.setColor(Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).getColor(provinceAlpha));
                } else {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha2));
                }
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
            }
        }
        drawOccupiedProvinces(spriteBatch);
    }

    public static final void drawProvinces_Peace(SpriteBatch spriteBatch) {
        float provinceAlpha = getProvinceAlpha() * MapModeManager.fAlphaAnimation;
        float provinceAlpha2 = getProvinceAlpha() * MapModeManager.fAlphaAnimation * 0.4f;
        drawWastelandProvinces(spriteBatch);
        int i = 0;
        int i2 = 0;
        while (i2 < Game.NUM_OF_PROVINCES_IN_VIEW) {
            if (Game.getProvince(Game.getProvinceInViewID(i2)).getCivID() > 0) {
                if (!Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i2)).getCivID()).warView_ParticipatesInWar) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha2));
                } else if (!Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i2)).getCivID()).warView_IsAggressor && Game.getProvince(Game.getProvinceInViewID(i2)).peaceTreatyIsTaken) {
                    spriteBatch.setColor(Game.getCiv(Game.player.iCivID).getColor(provinceAlpha));
                } else {
                    spriteBatch.setColor(Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i2)).getCivID()).getColor(provinceAlpha));
                }
                Game.getProvince(Game.getProvinceInViewID(i2)).drawLandProvince(spriteBatch);
            }
            i2++;
        }
        while (i < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW) {
            if (Game.getProvince(Game.getExtraProvinceInViewID(i)).getCivID() > 0) {
                if (!Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i)).getCivID()).warView_ParticipatesInWar) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha2));
                } else if (!Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i)).getCivID()).warView_IsAggressor && Game.getProvince(Game.getExtraProvinceInViewID(i)).peaceTreatyIsTaken) {
                    spriteBatch.setColor(Game.getCiv(Game.player.iCivID).getColor(provinceAlpha));
                } else {
                    spriteBatch.setColor(Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i)).getCivID()).getColor(provinceAlpha));
                }
                Game.getProvince(Game.getExtraProvinceInViewID(i)).drawLandProvince(spriteBatch);
            }
            i++;
        }
        try {
            for (int size = Game.player.peaceTreaty.lProvinces_Liberate.size() - 1; size >= 0; size--) {
                if (Game.getProvince(Game.player.peaceTreaty.lProvinces_Liberate.get(size).intValue()).getDrawProvince()) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha2));
                    Game.getProvince(Game.player.peaceTreaty.lProvinces_Liberate.get(size).intValue()).drawLandProvince(spriteBatch);
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void drawProvinces_ReleaseVassal(SpriteBatch spriteBatch) {
        float provinceAlpha = getProvinceAlpha() * MapModeManager.fAlphaAnimation;
        float provinceAlpha2 = getProvinceAlpha() * MapModeManager.fAlphaAnimation * 0.4f;
        drawWastelandProvinces(spriteBatch);
        for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
            if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() > 0) {
                if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() != Game.player.iCivID) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha2));
                } else if (Game.getProvince(Game.getProvinceInViewID(i)).peaceTreatyIsTaken) {
                    spriteBatch.setColor(Game.getCiv(InGame_ReleaseAVassal.releaseVassalData.iCivID).getColor(provinceAlpha));
                } else {
                    spriteBatch.setColor(Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).getColor(provinceAlpha));
                }
                Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
            }
        }
        for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
            if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() > 0) {
                if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() != Game.player.iCivID) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha2));
                } else if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).peaceTreatyIsTaken) {
                    spriteBatch.setColor(Game.getCiv(InGame_ReleaseAVassal.releaseVassalData.iCivID).getColor(provinceAlpha));
                } else {
                    spriteBatch.setColor(Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).getColor(provinceAlpha));
                }
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvince(spriteBatch);
            }
        }
    }

    public static final void drawProvinces_Settings(SpriteBatch spriteBatch) {
        long jNanoTime = System.nanoTime();
        try {
            Game.updateProvincesInView();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        if (Settings_Menu.updateTimes) {
            Settings_Menu.provinceInView_Time = System.nanoTime() - jNanoTime;
            jNanoTime = System.nanoTime();
        }
        spriteBatch.setShader(Renderer.shaderDefaultProvince);
        try {
            MapModeManager mapModeManager = Game.mapModes;
            MapModeManager.updateAlpha();
            drawProvinces.draw(spriteBatch);
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
        spriteBatch.setShader(Renderer.shaderDefault);
        if (Settings_Menu.updateTimes) {
            Settings_Menu.drawProvinces_Time = System.nanoTime() - jNanoTime;
        }
        spriteBatch.setColor(Color.WHITE);
    }

    public static final void drawProvinces_SpecialAlliance_View(SpriteBatch spriteBatch) {
        float provinceAlpha = getProvinceAlpha() * MapModeManager.fAlphaAnimation;
        float provinceAlpha2 = getProvinceAlpha() * MapModeManager.fAlphaAnimation * 0.4f;
        drawWastelandProvinces(spriteBatch);
        for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
            if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() > 0) {
                if (!Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).warView_ParticipatesInWar) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha2));
                } else if (Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).warView_IsAggressor) {
                    spriteBatch.setColor(new Color(Colors.HOVER_YELLOW.r, Colors.HOVER_YELLOW.g, Colors.HOVER_YELLOW.b, provinceAlpha));
                } else {
                    spriteBatch.setColor(new Color(Colors.HOVER_GOLD.r, Colors.HOVER_GOLD.g, Colors.HOVER_GOLD.b, provinceAlpha));
                }
                Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
            }
        }
        for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
            if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() > 0) {
                if (!Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).warView_ParticipatesInWar) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha2));
                } else if (Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).warView_IsAggressor) {
                    spriteBatch.setColor(new Color(Colors.HOVER_YELLOW.r, Colors.HOVER_YELLOW.g, Colors.HOVER_YELLOW.b, provinceAlpha));
                } else {
                    spriteBatch.setColor(new Color(Colors.HOVER_GOLD.r, Colors.HOVER_GOLD.g, Colors.HOVER_GOLD.b, provinceAlpha));
                }
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
            }
        }
        drawOccupiedProvinces(spriteBatch);
    }

    public static final void drawProvinces_Standard(SpriteBatch spriteBatch) {
        drawProvinces_Standard_InvasionArmy(spriteBatch);
        try {
            drawWastelandProvinces(spriteBatch);
            drawProvinces_Standard_LandProvinces(spriteBatch, getLandProvinces_Alpha());
            drawOccupiedProvinces(spriteBatch);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        drawProvinces_Standard_RegroupArmy(spriteBatch);
    }

    public static final void drawProvinces_StandardFog2(SpriteBatch spriteBatch) {
        float landProvinces_Alpha = getLandProvinces_Alpha();
        for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
            if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() != 0) {
                Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince_Fog(spriteBatch, landProvinces_Alpha);
            }
        }
        for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
            if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() != 0) {
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvince_Fog(spriteBatch, landProvinces_Alpha);
            }
        }
    }

    public static final void drawProvinces_Standard_FBO(SpriteBatch spriteBatch) {
        drawProvinces_Standard_InvasionArmy(spriteBatch);
        try {
            drawWastelandProvinces(spriteBatch);
            drawProvinces_Standard_LandProvinces_FBO(spriteBatch);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        drawProvinces_Standard_RegroupArmy(spriteBatch);
    }

    public static final void drawProvinces_Standard_FBO_InGame(SpriteBatch spriteBatch) {
        drawProvinces_Standard_InvasionArmy(spriteBatch);
        try {
            drawWastelandProvinces(spriteBatch);
            drawProvinces_Standard_LandProvinces_FBO(spriteBatch);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        drawProvinces_Standard_RegroupArmy(spriteBatch);
    }

    public static final void drawProvinces_Standard_InGame(SpriteBatch spriteBatch) {
        drawProvinces_Standard_InvasionArmy(spriteBatch);
        try {
            drawWastelandProvinces(spriteBatch);
            drawProvinces_Standard_LandProvinces_InGame(spriteBatch, getLandProvinces_Alpha());
            drawOccupiedProvinces(spriteBatch);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        drawProvinces_Standard_RegroupArmy(spriteBatch);
    }

    public static final void drawProvinces_Standard_InvasionArmy(SpriteBatch spriteBatch) {
        if (Game.invasionArmyMode) {
            try {
                if (Game.player.playerData.invasion.invasionsSize > 0) {
                    spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, (Game.settingsManager.PROVINCE_ALPHA / 2.0f) + (Game.selectedProvinces_Animation_Data.fAlpha / 255.0f)));
                    for (int i = 0; i < Game.player.playerData.invasion.invasionsSize; i++) {
                        int size = Game.player.playerData.invasion.invasions.get(i).lProvinces.size();
                        for (int i2 = 0; i2 < size; i2++) {
                            if (Game.getProvince(Game.player.playerData.invasion.invasions.get(i).lProvinces.get(i2).intValue()).getDrawProvince()) {
                                Game.getProvince(Game.player.playerData.invasion.invasions.get(i).lProvinces.get(i2).intValue()).drawLandProvince(spriteBatch);
                            }
                        }
                    }
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
            try {
                spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, Game.settingsManager.PROVINCE_ALPHA + (Game.selectedProvinces_Animation_Data.fAlpha / 255.0f)));
                for (int i3 = 0; i3 < Game.invasionArmyProvincesSize; i3++) {
                    if (Game.getProvince(Game.invasionArmyProvinces.get(i3).intValue()).getDrawProvince()) {
                        Game.getProvince(Game.invasionArmyProvinces.get(i3).intValue()).drawLandProvince(spriteBatch);
                    }
                }
            } catch (Exception e2) {
                CFG.exceptionStack(e2);
            }
        }
    }

    public static final void drawProvinces_Standard_LandProvinces(SpriteBatch spriteBatch, float f) {
        for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
            if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() != 0) {
                Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch, f);
            }
        }
        for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
            if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() != 0) {
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvince(spriteBatch, f);
            }
        }
    }

    public static final void drawProvinces_Standard_LandProvinces_FBO(SpriteBatch spriteBatch) {
        try {
            if (FBOProvincesBG.textureProvince_PBG == null) {
                FBOProvincesBG.updateFBO();
                if (FBOProvincesBG.fboNumToGenerate_PB >= GameValues.value.FBO_NUM_TO_GENERATE_PB) {
                    FBOProvincesBG.fboNumToGenerate_PB = 0;
                    spriteBatch.end();
                    FBOProvincesBG.disposeProvincesFBO();
                    FBOProvincesBG.disposeProvincesTexture();
                    FBOProvincesBG.fboProvince_PBG = new FrameBuffer(Pixmap.Format.RGBA8888, CFG.GAME_WIDTH, CFG.GAME_HEIGHT, false);
                    FBOProvincesBG.textureProvince_PBG = new Texture(CFG.GAME_WIDTH, CFG.GAME_HEIGHT, Pixmap.Format.RGBA8888);
                    FBOProvincesBG.fboProvince_PBG.begin();
                    spriteBatch.begin();
                    drawProvinces_Standard_LandProvinces_InGame(spriteBatch, 1.0f);
                    spriteBatch.end();
                    FBOProvincesBG.fboProvince_PBG.end();
                    FBOProvincesBG.textureProvince_PBG = FBOProvincesBG.fboProvince_PBG.getColorBufferTexture();
                    FBOProvincesBG.fboPosX = Game.mapCoords.getPosX();
                    FBOProvincesBG.fboPosY = Game.mapCoords.getPosY();
                    spriteBatch.begin();
                    Texture texture = FBOProvincesBG.textureProvince_PBG;
                } else {
                    drawProvinces_Standard_LandProvinces_InGame(spriteBatch, getLandProvinces_Alpha());
                }
            } else if (FBOProvincesBG.lastPosX != Game.mapCoords.getPosX() || FBOProvincesBG.lastPosY != Game.mapCoords.getPosY()) {
                FBOProvincesBG.disposeProvincesTexture();
                FBOProvincesBG.disposeProvincesFBO();
                drawProvinces_Standard_LandProvinces_InGame(spriteBatch, getLandProvinces_Alpha());
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void drawProvinces_Standard_LandProvinces_InGame(SpriteBatch spriteBatch, float f) {
        if (Game.mapScale.getCurrentScale() < Game.DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE) {
            drawProvinces_Standard_LandProvinces(spriteBatch, f);
            return;
        }
        for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
            if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() != 0) {
                Game.getProvince(Game.getProvinceInViewID(i)).fog_drawLandProvince.drawLandProvinceFog(spriteBatch, f);
            }
        }
        for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
            if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() != 0) {
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).fog_drawLandProvince.drawLandProvinceFog(spriteBatch, f);
            }
        }
    }

    public static final void drawProvinces_Standard_RegroupArmy(SpriteBatch spriteBatch) {
        try {
            if (Game.regroupArmyMode) {
                spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, Game.selectedProvinces_Animation_Data.fAlpha / 255.0f));
                for (int i = 0; i < Game.iRegroupArmyProvincesSize; i++) {
                    if (Game.getProvince(Game.regroupArmyProvinces.get(i).intValue()).getDrawProvince()) {
                        Game.getProvince(Game.regroupArmyProvinces.get(i).intValue()).drawLandProvince(spriteBatch);
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void drawProvinces_WarView(SpriteBatch spriteBatch) {
        float provinceAlpha = getProvinceAlpha() * MapModeManager.fAlphaAnimation;
        float provinceAlpha2 = getProvinceAlpha() * MapModeManager.fAlphaAnimation * 0.4f;
        drawWastelandProvinces(spriteBatch);
        for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
            if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() > 0) {
                if (!Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).warView_ParticipatesInWar) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha2));
                } else if (Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).warView_IsAggressor) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_BLUE2.r, MapModeManager.PROVINCE_BLUE2.g, MapModeManager.PROVINCE_BLUE2.b, provinceAlpha));
                } else {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_RED2.r, MapModeManager.PROVINCE_RED2.g, MapModeManager.PROVINCE_RED2.b, provinceAlpha));
                }
                Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
            }
        }
        for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
            if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() > 0) {
                if (!Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).warView_ParticipatesInWar) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha2));
                } else if (Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).warView_IsAggressor) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_BLUE2.r, MapModeManager.PROVINCE_BLUE2.g, MapModeManager.PROVINCE_BLUE2.b, provinceAlpha));
                } else {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_RED2.r, MapModeManager.PROVINCE_RED2.g, MapModeManager.PROVINCE_RED2.b, provinceAlpha));
                }
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
            }
        }
        drawOccupiedProvinces(spriteBatch);
    }

    public static final void drawRecruitingArmyPlayer(SpriteBatch spriteBatch) {
        Civilization civ = Game.getCiv(Game.player.iCivID);
        Image image = ImageManager.getImage(Images.progressBarFrame);
        Image image2 = ImageManager.getImage(Images.progressBarFrameMask);
        Image image3 = ImageManager.getImage(Images.unitsFrameMap);
        for (int i = 0; i < civ.getArmyRecruitSize(); i++) {
            for (int i2 = 0; i2 < civ.lArmyRecruit.get(i).size() && i2 < 1; i2++) {
                ArmyRecruit armyRecruit = civ.lArmyRecruit.get(i).get(i2);
                Province province = Game.getProvince(armyRecruit.provinceID);
                if (province.getDrawProvince()) {
                    int i3 = province.iBuildingsConstructionSize > 0 ? 1 : 0;
                    if (province.wonderConstruction != null) {
                        i3++;
                    }
                    spriteBatch.setShader(Renderer.shaderAlpha);
                    ArmyManager.armyImages.get(ArmyManager.lArmy.get(armyRecruit.unitID).get(armyRecruit.armyID).ImageID).getTexture().bind(1);
                    Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
                    int i4 = i3 + i2 + 1;
                    float f = i2 * 1;
                    ImageManager.getImage(Images.unitsFrameMapMask).draw(spriteBatch, (int) (((province.getTranslateProvincePosX() + province.iCenterShiftX) * Game.mapScale.getCurrentScale()) - (image3.getWidth() / 2)), (int) (((((Game.mapCoords.getPosY() + province.iCenterShiftY) * Game.mapScale.getCurrentScale()) - (ProvinceDrawArmy.getArmyHeight() / 2)) - (image3.getHeight() * i4)) - f));
                    spriteBatch.flush();
                    spriteBatch.setShader(Renderer.shaderDefault);
                    image3.draw(spriteBatch, (int) (((province.getTranslateProvincePosX() + province.iCenterShiftX) * Game.mapScale.getCurrentScale()) - (image3.getWidth() / 2)), (int) (((((Game.mapCoords.getPosY() + province.iCenterShiftY) * Game.mapScale.getCurrentScale()) - (ProvinceDrawArmy.getArmyHeight() / 2)) - (image3.getHeight() * i4)) - f));
                    int width = (image.getWidth() - image2.getWidth()) / 2;
                    int height = (image.getHeight() - image2.getHeight()) / 2;
                    spriteBatch.setColor(new Color(progressBarBG));
                    image2.draw(spriteBatch, ((int) (((province.getTranslateProvincePosX() + province.iCenterShiftX) * Game.mapScale.getCurrentScale()) - (image3.getWidth() / 2))) + width, ((int) (((((((Game.mapCoords.getPosY() + province.iCenterShiftY) * Game.mapScale.getCurrentScale()) - (ProvinceDrawArmy.getArmyHeight() / 2)) - (image3.getHeight() * i4)) - f) + image3.getHeight()) - image.getHeight())) + height);
                    spriteBatch.setColor(progressBar);
                    image2.draw(spriteBatch, ((int) (((province.getTranslateProvincePosX() + province.iCenterShiftX) * Game.mapScale.getCurrentScale()) - (image3.getWidth() / 2))) + width, height + ((int) (((((((Game.mapCoords.getPosY() + province.iCenterShiftY) * Game.mapScale.getCurrentScale()) - (ProvinceDrawArmy.getArmyHeight() / 2)) - (image3.getHeight() * i4)) - f) + image3.getHeight()) - image.getHeight())), (int) Math.max(1.0f, image2.getWidth() * ((ArmyManager.lArmy.get(armyRecruit.unitID).get(armyRecruit.armyID).RecruitmentTime - armyRecruit.timeLeft) / ArmyManager.lArmy.get(armyRecruit.unitID).get(armyRecruit.armyID).RecruitmentTime)), image2.getHeight());
                    spriteBatch.setColor(Color.WHITE);
                    image.draw(spriteBatch, (int) (((province.getTranslateProvincePosX() + province.iCenterShiftX) * Game.mapScale.getCurrentScale()) - (image3.getWidth() / 2)), (int) (((((((Game.mapCoords.getPosY() + province.iCenterShiftY) * Game.mapScale.getCurrentScale()) - (ProvinceDrawArmy.getArmyHeight() / 2)) - (image3.getHeight() * i4)) - f) + image3.getHeight()) - image.getHeight()));
                }
            }
        }
    }

    public static void drawReligionConversion(SpriteBatch spriteBatch) {
        if (Game.mapScale.getCurrentScale() >= Game.DRAW_ARMY_MIN_SCALE) {
            drawReligionConversion(spriteBatch, ProvinceDrawArmy.DRAW_ARMY_ALPHA);
            return;
        }
        if (Game.mapTouchManager.selectMode) {
            drawReligionConversion(spriteBatch, 1.0f);
        } else {
            if (!ProvinceDrawArmy.drawHideAnimation || Game.mapScale.getCurrentScale() < ProvinceDrawArmy.DRAW_ARMY_MIN_SCALE_ANIMATION) {
                return;
            }
            drawReligionConversion(spriteBatch, ProvinceDrawArmy.DRAW_ARMY_ALPHA);
        }
    }

    public static final void drawReligionConversion(SpriteBatch spriteBatch, float f) {
        try {
            if (Game.getCiv(Game.player.iCivID).convertReligion.provincesSize > 0) {
                int width = Game.religionManager.religionImages.get(Game.getCiv(Game.player.iCivID).getReligionID()).getWidth();
                int height = Game.religionManager.religionImages.get(Game.getCiv(Game.player.iCivID).getReligionID()).getHeight();
                spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f));
                for (int i = 0; i < Game.getCiv(Game.player.iCivID).convertReligion.provincesSize; i++) {
                    if (Game.getProvince(Game.getCiv(Game.player.iCivID).convertReligion.provinces.get(i).intValue()).getDrawProvince()) {
                        drawReligionConversion(spriteBatch, f, Game.getCiv(Game.player.iCivID).convertReligion.provinces.get(i).intValue(), width, height);
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        spriteBatch.setColor(Color.WHITE);
    }

    private static final void drawReligionConversion(SpriteBatch spriteBatch, float f, int i, int i2, int i3) {
        try {
            Game.religionManager.religionImages.get(Game.getCiv(Game.player.iCivID).getReligionID()).draw(spriteBatch, ((int) (((Game.getProvince(i).getCitiesSize() > 0 ? Game.getProvince(i).getCity(0).getPosX() : Game.getProvince(i).iCenterShiftX) + Game.getProvince(i).getTranslateProvincePosX()) * Game.mapScale.getCurrentScale())) - (i2 / 2), (int) ((((Game.getProvince(i).getCitiesSize() > 0 ? Game.getProvince(i).getCity(0).getPosY() : Game.getProvince(i).iCenterShiftY) + Game.mapCoords.getPosY()) * Game.mapScale.getCurrentScale()) - (i3 / 2)), i2, i3);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void drawSiegeLines_Just(SpriteBatch spriteBatch, float f) {
        if (iSiegeLinesSize <= 0 || Game.mapScale.getCurrentScale() <= Game.DRAW_INNER_BORDERS) {
            return;
        }
        try {
            spriteBatch.setColor(Color.WHITE);
            for (int i = 0; i < iSiegeLinesSize; i++) {
                try {
                    siegeLines.get(i).update();
                } catch (Exception unused) {
                }
            }
            for (int i2 = 0; i2 < iSiegeLinesSize; i2++) {
                try {
                    siegeLines.get(i2).draw(spriteBatch, f);
                } catch (Exception unused2) {
                }
            }
        } catch (Exception unused3) {
        }
        try {
            Renderer.oSBBorder.end();
            Renderer.oSBBorder.begin();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void drawWastelandProvinces(SpriteBatch spriteBatch) {
        for (int i = 0; i < Game.NUM_OF_WASTELAND_PROVINCES_IN_VIEW; i++) {
            spriteBatch.setColor(getWastelandColor(Game.getProvince(Game.getWastelandProvinceInViewID(i)).getWasteland(), Game.settingsManager.PROVINCE_ALPHA_WASTELAND));
            Game.getProvince(Game.getWastelandProvinceInViewID(i)).drawLandProvince(spriteBatch);
        }
    }

    public static final void drawWondersConstruction(SpriteBatch spriteBatch) {
        for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
            try {
                if (Game.getProvince(Game.getProvinceInViewID(i)).wonderConstruction != null) {
                    spriteBatch.setShader(Renderer.shaderAlpha);
                    WondersManager.wonderImages.get(WondersManager.wonders.get(Game.getProvince(Game.getProvinceInViewID(i)).wonderID).ImageID).getTexture().bind(1);
                    Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
                    ImageManager.getImage(Images.unitsFrameMapMask).draw(spriteBatch, (int) (((Game.getProvince(Game.getProvinceInViewID(i)).getTranslateProvincePosX() + Game.getProvince(Game.getProvinceInViewID(i)).iCenterShiftX) * Game.mapScale.getCurrentScale()) - (ImageManager.getImage(Images.unitsFrameMap).getWidth() / 2)), (int) ((((Game.mapCoords.getPosY() + Game.getProvince(Game.getProvinceInViewID(i)).iCenterShiftY) * Game.mapScale.getCurrentScale()) - (ProvinceDrawArmy.getArmyHeight() / 2)) - ImageManager.getImage(Images.unitsFrameMap).getHeight()));
                    spriteBatch.flush();
                    spriteBatch.setShader(Renderer.shaderDefault);
                    ImageManager.getImage(Images.unitsFrameMap).draw(spriteBatch, (int) (((Game.getProvince(Game.getProvinceInViewID(i)).getTranslateProvincePosX() + Game.getProvince(Game.getProvinceInViewID(i)).iCenterShiftX) * Game.mapScale.getCurrentScale()) - (ImageManager.getImage(Images.unitsFrameMap).getWidth() / 2)), (int) ((((Game.mapCoords.getPosY() + Game.getProvince(Game.getProvinceInViewID(i)).iCenterShiftY) * Game.mapScale.getCurrentScale()) - (ProvinceDrawArmy.getArmyHeight() / 2)) - ImageManager.getImage(Images.unitsFrameMap).getHeight()));
                    int width = (ImageManager.getImage(Images.progressBarFrame).getWidth() - ImageManager.getImage(Images.progressBarFrameMask).getWidth()) / 2;
                    int height = (ImageManager.getImage(Images.progressBarFrame).getHeight() - ImageManager.getImage(Images.progressBarFrameMask).getHeight()) / 2;
                    spriteBatch.setColor(new Color(progressBarBG));
                    ImageManager.getImage(Images.progressBarFrameMask).draw(spriteBatch, ((int) (((Game.getProvince(Game.getProvinceInViewID(i)).getTranslateProvincePosX() + Game.getProvince(Game.getProvinceInViewID(i)).iCenterShiftX) * Game.mapScale.getCurrentScale()) - (ImageManager.getImage(Images.unitsFrameMap).getWidth() / 2))) + width, ((int) ((((((Game.mapCoords.getPosY() + Game.getProvince(Game.getProvinceInViewID(i)).iCenterShiftY) * Game.mapScale.getCurrentScale()) - (ProvinceDrawArmy.getArmyHeight() / 2)) - ImageManager.getImage(Images.unitsFrameMap).getHeight()) + ImageManager.getImage(Images.unitsFrameMap).getHeight()) - ImageManager.getImage(Images.progressBarFrame).getHeight())) + height);
                    spriteBatch.setColor(progressBar);
                    ImageManager.getImage(Images.progressBarFrameMask).draw(spriteBatch, width + ((int) (((Game.getProvince(Game.getProvinceInViewID(i)).getTranslateProvincePosX() + Game.getProvince(Game.getProvinceInViewID(i)).iCenterShiftX) * Game.mapScale.getCurrentScale()) - (ImageManager.getImage(Images.unitsFrameMap).getWidth() / 2))), height + ((int) ((((((Game.mapCoords.getPosY() + Game.getProvince(Game.getProvinceInViewID(i)).iCenterShiftY) * Game.mapScale.getCurrentScale()) - (ProvinceDrawArmy.getArmyHeight() / 2)) - ImageManager.getImage(Images.unitsFrameMap).getHeight()) + ImageManager.getImage(Images.unitsFrameMap).getHeight()) - ImageManager.getImage(Images.progressBarFrame).getHeight())), (int) (ImageManager.getImage(Images.progressBarFrameMask).getWidth() * (1.0f - (Game.getProvince(Game.getProvinceInViewID(i)).wonderConstruction.daysLeft / Game.getProvince(Game.getProvinceInViewID(i)).wonderConstruction.investTime))), ImageManager.getImage(Images.progressBarFrameMask).getHeight());
                    spriteBatch.setColor(Color.WHITE);
                    ImageManager.getImage(Images.progressBarFrame).draw(spriteBatch, (int) (((Game.getProvince(Game.getProvinceInViewID(i)).getTranslateProvincePosX() + Game.getProvince(Game.getProvinceInViewID(i)).iCenterShiftX) * Game.mapScale.getCurrentScale()) - (ImageManager.getImage(Images.unitsFrameMap).getWidth() / 2)), (int) ((((((Game.mapCoords.getPosY() + Game.getProvince(Game.getProvinceInViewID(i)).iCenterShiftY) * Game.mapScale.getCurrentScale()) - (ProvinceDrawArmy.getArmyHeight() / 2)) - ImageManager.getImage(Images.unitsFrameMap).getHeight()) + ImageManager.getImage(Images.unitsFrameMap).getHeight()) - ImageManager.getImage(Images.progressBarFrame).getHeight()));
                }
            } catch (Exception unused) {
                return;
            }
        }
    }

    public static final float getLandProvinces_Alpha() {
        return getProvinceAlpha() * MapModeManager.fAlphaAnimation;
    }

    public static final float getProvinceAlpha() {
        if (Game.mapScale.getCurrentScale() <= 1.0f) {
            if (Game.mapScale.getCurrentScale() == 1.0f) {
                return Game.settingsManager.PROVINCE_ALPHA;
            }
            return Game.mapScale.getCurrentScale() < Game.map.getActiveMap_MapData().mapData.BackgroundZoomOut_Scale ? Math.min(1.0f, Game.settingsManager.PROVINCE_ALPHA + ((1.0f - Game.settingsManager.PROVINCE_ALPHA) * GameValues.zoom.PROVINCE_ALPHA_ZOOM_OUT * 1.5f * (1.0f - Game.mapScale.getCurrentScale()))) : Math.min(1.0f, Game.settingsManager.PROVINCE_ALPHA + ((1.0f - Game.settingsManager.PROVINCE_ALPHA) * GameValues.zoom.PROVINCE_ALPHA_ZOOM_OUT * (1.0f - Game.mapScale.getCurrentScale())));
        }
        float f = Game.settingsManager.PROVINCE_ALPHA;
        float currentScale = GameValues.zoom.PROVINCE_ALPHA_ZOOM_IN * Game.mapScale.getCurrentScale();
        MapScale mapScale = Game.mapScale;
        return Math.max(0.0f, f * (1.0f - (currentScale / MapScale.defScales.definedScales[0])));
    }

    public static final float getProvinceAlpha(float f) {
        if (Game.mapScale.getCurrentScale() <= 1.0f) {
            return Game.mapScale.getCurrentScale() == 1.0f ? f : Math.min(1.0f, f + ((1.0f - f) * GameValues.zoom.PROVINCE_ALPHA_ZOOM_OUT * (1.0f - Game.mapScale.getCurrentScale())));
        }
        float currentScale = GameValues.zoom.PROVINCE_ALPHA_ZOOM_IN * Game.mapScale.getCurrentScale();
        MapScale mapScale = Game.mapScale;
        return Math.max(0.0f, f * (1.0f - (currentScale / MapScale.defScales.definedScales[0])));
    }

    public static final Color getWastelandColor(int i, float f) {
        float f2 = i;
        return new Color(Game.map.lMaps.get(Game.map.getActiveMapID()).mapData.WastelandColor[0] - (0.0209f * f2), Game.map.lMaps.get(Game.map.getActiveMapID()).mapData.WastelandColor[1] - (0.0176f * f2), Game.map.lMaps.get(Game.map.getActiveMapID()).mapData.WastelandColor[2] - (f2 * 0.0148f), f);
    }

    public static void updateDrawExtraDetails() {
        if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_RECRUIT_ARMY) {
            drawExtraDetails = new AnonymousClass1();
        } else {
            drawExtraDetails = new AnonymousClass2();
        }
    }

    public static final void updateDrawMoveUnits() {
        if (Game.menuManager.getInGame()) {
            oDrawMoveUnits = new AnonymousClass35();
        } else {
            oDrawMoveUnits = new AnonymousClass36();
        }
    }

    public static final void updateDrawProvinces() {
        if (Game.menuManager.getInInitGameMenu() || Game.menuManager.getInInitGame_Menus() || Game.menuManager.getInLoadScenario()) {
            drawProvinces = new AnonymousClass3();
            return;
        }
        if (Game.menuManager.getInGame()) {
            drawProvinces = Game.mapModes.lMapModes.get(Game.mapModes.iActiveMapModeID).drawProvinces;
            return;
        }
        if (Game.menuManager.getInMapEditorProvinceConnections()) {
            drawProvinces = new AnonymousClass4();
            return;
        }
        if (Game.menuManager.getInEditorGameCivsEdit()) {
            drawProvinces = new AnonymousClass5();
            return;
        }
        if (Game.menuManager.getInEditorCreateCiv()) {
            drawProvinces = new AnonymousClass6();
            return;
        }
        if (Game.menuManager.getInMapEditorGrowthRate()) {
            drawProvinces = new AnonymousClass7();
            return;
        }
        if (Game.menuManager.getInScenarioEditor_CreateAllianceEdit()) {
            drawProvinces = new AnonymousClass8();
            return;
        }
        if (Game.menuManager.getInPrintMap()) {
            drawProvinces = new AnonymousClass9();
            return;
        }
        if (Game.menuManager.getInMapEditorEconomy()) {
            drawProvinces = new AnonymousClass10();
            return;
        }
        if (Game.menuManager.getInMapEditorLines() || Game.menuManager.getInMapEditorWaves()) {
            drawProvinces = new AnonymousClass11();
            return;
        }
        if (Game.menuManager.getInScenarioEditorAlliances()) {
            drawProvinces = new AnonymousClass12();
            return;
        }
        if (Game.menuManager.getInScenarioEditorVassals()) {
            drawProvinces = new AnonymousClass13();
            return;
        }
        if (Game.menuManager.getInScenarioEditorTruces()) {
            drawProvinces = new AnonymousClass14();
            return;
        }
        if (Game.menuManager.getInScenarioEditorGuarantee()) {
            drawProvinces = new AnonymousClass15();
            return;
        }
        if (Game.menuManager.getInScenarioEditorMilitaryAccess()) {
            drawProvinces = new AnonymousClass16();
            return;
        }
        if (Game.menuManager.getInScenarioEditorNonAggression()) {
            drawProvinces = new AnonymousClass17();
            return;
        }
        if (Game.menuManager.getInScenarioEditorDefensive()) {
            drawProvinces = new AnonymousClass18();
            return;
        }
        if (Game.menuManager.getInScenarioEditorRelations()) {
            drawProvinces = new AnonymousClass19();
            return;
        }
        if (Game.menuManager.getInMapEditorTerrain()) {
            drawProvinces = new AnonymousClass20();
            return;
        }
        if (Game.menuManager.getInScenarioEditorTechnologiesCivs()) {
            drawProvinces = new AnonymousClass21();
            return;
        }
        if (Game.menuManager.getInEditorFormableCiv()) {
            drawProvinces = new AnonymousClass22();
            return;
        }
        if (Game.menuManager.getInEditorSelectProvinces()) {
            drawProvinces = new AnonymousClass23();
            return;
        }
        if (Game.menuManager.getInScenarioCores()) {
            drawProvinces = new AnonymousClass24();
            return;
        }
        if (Game.menuManager.getInScenarioReligion()) {
            drawProvinces = new AnonymousClass25();
            return;
        }
        if (Game.menuManager.getInScenarioEditorBuildings()) {
            drawProvinces = new AnonymousClass26();
            return;
        }
        if (Game.menuManager.getInMapEditorResource()) {
            drawProvinces = new AnonymousClass27();
            return;
        }
        if (Game.menuManager.getInMapEditorContinents()) {
            drawProvinces = new AnonymousClass28();
            return;
        }
        if (Game.menuManager.getInMapEditorGeoRegions()) {
            drawProvinces = new AnonymousClass29();
            return;
        }
        if (Game.menuManager.getInMapEditorOptimizationRegions()) {
            drawProvinces = new AnonymousClass30();
        } else if (Game.menuManager.getInMapEditorSeaProvinces()) {
            drawProvinces = new AnonymousClass31();
        } else {
            drawProvinces = new AnonymousClass32();
        }
    }

    public static final void updateDrawProvinces_Standard() {
        drawProvinces = new AnonymousClass33();
    }
}
