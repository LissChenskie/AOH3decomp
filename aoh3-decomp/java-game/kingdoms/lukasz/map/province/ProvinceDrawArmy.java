package aoc.kingdoms.lukasz.map.province;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GlyphLayout_Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.zOther.Point_XY;
import aoc.kingdoms.lukasz.map.army.ArmyDivision;
import aoc.kingdoms.lukasz.map.army.ArmyManager;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ProvinceDrawArmy {
    public static final int ARMY_PADDING_X = 5;
    public static final float DRAW_ARMY_DEFAULT_ALPHA = 1.0f;
    public static final int FLAG_PADDING_X = 3;
    public static final int FLAG_PADDING_X_RIGHT = 2;
    public static final int FLAG_PADDING_X_SUM = 5;
    public static final int FLAG_PADDING_Y = 2;
    public static final int HOVER_PADDING = 4;
    public static int armyFlagPosHeight;
    public static int armyFlagPosWidth;
    public static int armyFlagPosX;
    public static int armyFlagPosY;
    public static final Color COLOR_ARMY = new Color(0.9019608f, 0.88235295f, 0.84313726f, 1.0f);
    public static final Color COLOR_ARMY2 = new Color(1.0f, 0.9607843f, 0.92156863f, 1.0f);
    public static final Color COLOR_ARMY_OLD = new Color(0.8627451f, 0.78431374f, 0.27450982f, 1.0f);
    public static int ARMY_HEIGHT = 1;
    public static boolean drawHideAnimation = false;
    public static float DRAW_ARMY_ALPHA = 0.1f;
    public static long DRAW_ARMY_TIME = 0;
    public static long DRAW_ARMY_TIME_HIDE = 0;
    public static float DRAW_ARMY_MIN_SCALE_ANIMATION = 0.3f;
    public static boolean drawCitiesHideAnimation = false;
    public static float DRAW_CITIES_ALPHA = 0.1f;
    public static long DRAW_CITIES_TIME = 0;
    public static long DRAW_CITIES_TIME_HIDE = 0;
    public static boolean drawProvinceNamesHideAnimation = false;
    public static float DRAW_PROVINCE_NAMES_ALPHA = 0.1f;
    public static long DRAW_PROVINCE_NAMES_TIME = 0;
    public static long DRAW_PROVINCE_NAMES_TIME_HIDE = 0;
    public static boolean drawOccupiedHideAnimation = false;
    public static float DRAW_OCCUPIED_ALPHA = 0.1f;
    public static long DRAW_OCCUPIED_TIME = 0;
    public static long DRAW_OCCUPIED_TIME_HIDE = 0;
    public static Color moraleBG = new Color(0.0627451f, 0.0627451f, 0.101960786f, 1.0f);
    public static Color moraleGreen = new Color(0.11764706f, 0.50980395f, 0.101960786f, 1.0f);
    public static Color drawProvinceArmyColorAlpha = Color.WHITE;
    public static Color drawProvinceArmyTextColor = Color.WHITE;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy$1, reason: invalid class name */
    class AnonymousClass1 implements ProvinceDrawArmyINT {
        AnonymousClass1() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawArmyINT
        public void drawArmy(SpriteBatch spriteBatch, int i, int i2) {
            if (Game.getProvince(i).getArmy(i2).inBattle) {
                return;
            }
            ProvinceDrawArmy.drawProvinceArmyWithFlag(spriteBatch, i, i2);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy$2, reason: invalid class name */
    class AnonymousClass2 implements ProvinceDrawArmyINT {
        AnonymousClass2() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawArmyINT
        public void drawArmy(SpriteBatch spriteBatch, int i, int i2) {
        }
    }

    public interface ProvinceDrawArmyINT {
        void drawArmy(SpriteBatch spriteBatch, int i, int i2);
    }

    public static class ProvinceDrawDetailsINT {
        public String sText = "";
        public int iTextWidth = 0;
        public int iShiftX = 0;
        public int iShiftY = 0;
        public int iWidth = 0;
        public int iHeight = 0;

        public MenuElement_Hover buildHover(int i) {
            return null;
        }

        public void drawDetails(SpriteBatch spriteBatch, int i) {
        }

        public void drawDetailsSea(SpriteBatch spriteBatch, int i) {
        }
    }

    public static final void drawMapModeDetails(SpriteBatch spriteBatch) {
        if (Game.mapScale.getCurrentScale() >= Game.DRAW_ARMY_MIN_SCALE) {
            for (int i = 0; i < Game.NUM_OF_SEA_PROVINCES_IN_VIEW; i++) {
                Game.getProvince(Game.getSeaProvinceInViewID(i)).drawDetails(spriteBatch);
            }
            for (int i2 = 0; i2 < Game.NUM_OF_SEA_PROVINCES_IN_VIEW; i2++) {
                Game.getProvince(Game.getSeaProvinceInViewID(i2)).drawDetailsSea(spriteBatch);
            }
            for (int i3 = 0; i3 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i3++) {
                Game.getProvince(Game.getExtraProvinceInViewID(i3)).drawDetails(spriteBatch);
            }
            for (int i4 = 0; i4 < Game.NUM_OF_PROVINCES_IN_VIEW; i4++) {
                Game.getProvince(Game.getProvinceInViewID(i4)).drawDetails(spriteBatch);
            }
        }
    }

    private static final void drawProvinceArmy(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, boolean z) {
        ImageManager.getImage(i4).draw2(spriteBatch, i, i2, i3, ImageManager.getImage(i4).getHeight(), true, false);
        if (z) {
            ImageManager.getImage(Images.armyRetreat).draw(spriteBatch, i + i3, (i2 + (ImageManager.getImage(Images.armyLeft).getHeight() / 2)) - (ImageManager.getImage(Images.armyRetreat).getHeight() / 2));
        }
    }

    public static final void drawProvinceArmyActive(SpriteBatch spriteBatch, int i, int i2, float f) {
        if (i2 >= 0) {
            try {
                if (i2 < Game.getProvince(i).getArmySize()) {
                    spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, (Game.animationHover.getAlpha() / 255.0f) * f));
                    drawProvinceArmyActive(spriteBatch, getArmyPosX(i, i2), getArmyPosY(i, i2), getArmyWidth(Game.getProvince(i).getArmy(i2).iArmyWidth));
                    spriteBatch.setColor(Color.WHITE);
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
    }

    private static final void drawProvinceArmyActive(SpriteBatch spriteBatch, int i, int i2, int i3) {
        int i4 = i2 - 4;
        ImageManager.getImage(Images.armyActive).draw2(spriteBatch, i - 4, i4, (i3 + 8) - ImageManager.getImage(Images.armyActive).getWidth(), ImageManager.getImage(Images.armyActive).getHeight());
        ImageManager.getImage(Images.armyActive).draw2(spriteBatch, ((i + i3) + 4) - ImageManager.getImage(Images.armyActive).getWidth(), i4, ImageManager.getImage(Images.armyActive).getWidth(), ImageManager.getImage(Images.armyActive).getHeight(), true, false);
    }

    private static final void drawProvinceArmyFlag(SpriteBatch spriteBatch, int i, int i2, int i3, int i4) {
        ImageManager.getImage(i4).draw2(spriteBatch, i, i2, ImageManager.getImage(Images.armyFlag).getWidth() + 5, ImageManager.getImage(i4).getHeight());
        if (i3 < 0) {
            ImageManager.getImage(Images.rebelsFlag).draw(spriteBatch, i + 3, i2 + 2, ImageManager.getImage(Images.armyFlag).getWidth(), ImageManager.getImage(Images.armyFlag).getHeight());
        } else {
            Game.getCiv(i3).getFlag().draw(spriteBatch, i + 3, i2 + 2, ImageManager.getImage(Images.armyFlag).getWidth(), ImageManager.getImage(Images.armyFlag).getHeight());
        }
        ImageManager.getImage(Images.armyFlag).draw(spriteBatch, i + 3, i2 + 2);
    }

    private static final void drawProvinceArmyFlag_2(SpriteBatch spriteBatch, int i, int i2, int i3) {
        if (i3 < 0) {
            ImageManager.getImage(Images.rebelsFlag).draw(spriteBatch, i + armyFlagPosX, i2 + armyFlagPosY, armyFlagPosWidth, armyFlagPosHeight);
        } else {
            Game.getCiv(i3).getFlag().draw(spriteBatch, i + armyFlagPosX, i2 + armyFlagPosY, armyFlagPosWidth, armyFlagPosHeight);
        }
    }

    public static final void drawProvinceArmyHover(SpriteBatch spriteBatch, int i, int i2, float f) {
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, (Game.animationHover.getAlpha() / 255.0f) * f));
        drawProvinceArmyHover(spriteBatch, getArmyPosX(i, i2), getArmyPosY(i, i2), getArmyWidth(Game.getProvince(i).getArmy(i2).iArmyWidth));
        spriteBatch.setColor(Color.WHITE);
    }

    public static final void drawProvinceArmyHover(SpriteBatch spriteBatch, int i, int i2, int i3) {
        int i4 = i2 - 4;
        ImageManager.getImage(Images.armyHover).draw2(spriteBatch, i - 4, i4, (i3 + 8) - ImageManager.getImage(Images.armyHover).getWidth(), ImageManager.getImage(Images.armyHover).getHeight());
        ImageManager.getImage(Images.armyHover).draw2(spriteBatch, ((i + i3) + 4) - ImageManager.getImage(Images.armyHover).getWidth(), i4, ImageManager.getImage(Images.armyHover).getWidth(), ImageManager.getImage(Images.armyHover).getHeight(), true, false);
    }

    public static final void drawProvinceArmyHover_Units(SpriteBatch spriteBatch, int i, int i2, int i3) {
        int i4 = i2 - 4;
        ImageManager.getImage(Images.armyHover).draw2(spriteBatch, i - 4, i4, (i3 + 8) - ImageManager.getImage(Images.armyHoverRight).getWidth(), ImageManager.getImage(Images.armyHover).getHeight());
        ImageManager.getImage(Images.armyHoverRight).draw2(spriteBatch, ((i + i3) + 4) - ImageManager.getImage(Images.armyHoverRight).getWidth(), i4, ImageManager.getImage(Images.armyHoverRight).getWidth(), ImageManager.getImage(Images.armyHoverRight).getHeight());
    }

    public static final void drawProvinceArmyHover_WithUnitsImages(SpriteBatch spriteBatch, int i, int i2, float f) {
        boolean z;
        int armyPosX = getArmyPosX(i, i2);
        int armyPosY = getArmyPosY(i, i2);
        ArrayList arrayList = new ArrayList();
        for (int i3 = 0; i3 < Game.getProvince(i).getArmy(i2).iArmyRegimentSize; i3++) {
            int i4 = 0;
            while (true) {
                if (i4 >= arrayList.size()) {
                    z = true;
                    break;
                } else {
                    if (((Point_XY) arrayList.get(i4)).getPosX() == Game.getProvince(i).getArmy(i2).lArmyRegiment.get(i3).uID && ((Point_XY) arrayList.get(i4)).getPosY() == Game.getProvince(i).getArmy(i2).lArmyRegiment.get(i3).aID) {
                        z = false;
                        break;
                    }
                    i4++;
                }
            }
            if (z) {
                arrayList.add(new Point_XY(Game.getProvince(i).getArmy(i2).lArmyRegiment.get(i3).uID, Game.getProvince(i).getArmy(i2).lArmyRegiment.get(i3).aID));
            }
        }
        int armyWidth = getArmyWidth(Game.getProvince(i).getArmy(i2).iArmyWidth);
        int width = ImageManager.getImage(Images.armyUnitsFrame).getWidth() * arrayList.size();
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, (Game.animationHover.getAlpha() / 255.0f) * f));
        drawProvinceArmyHover_Units(spriteBatch, armyPosX, armyPosY, width + armyWidth);
        spriteBatch.setColor(Color.WHITE);
        drawProvinceArmy(spriteBatch, (armyPosX - 5) + armyWidth, armyPosY, ImageManager.getImage(Images.armyUnitsFrame).getWidth(), Images.armyAlly, Game.getProvince(i).getArmy(i2).inRetreat);
        for (int i5 = 0; i5 < arrayList.size(); i5++) {
            int i6 = armyPosX + armyWidth;
            Renderer.clipView_Start(spriteBatch, (ImageManager.getImage(Images.armyUnitsFrame).getWidth() * i5) + i6, CFG.GAME_HEIGHT - armyPosY, ImageManager.getImage(Images.armyUnitsFrame).getWidth(), -ImageManager.getImage(Images.armyUnitsFrame).getHeight());
            int width2 = (int) (ArmyManager.armyImages.get(ArmyManager.lArmy.get(((Point_XY) arrayList.get(i5)).getPosX()).get(((Point_XY) arrayList.get(i5)).getPosY()).ImageID).getWidth() * (ImageManager.getImage(Images.armyUnitsFrame).getHeight() / ArmyManager.armyImages.get(ArmyManager.lArmy.get(((Point_XY) arrayList.get(i5)).getPosX()).get(((Point_XY) arrayList.get(i5)).getPosY()).ImageID).getHeight()));
            ArmyManager.armyImages.get(ArmyManager.lArmy.get(((Point_XY) arrayList.get(i5)).getPosX()).get(((Point_XY) arrayList.get(i5)).getPosY()).ImageID).draw(spriteBatch, (((ImageManager.getImage(Images.armyUnitsFrame).getWidth() / 2) + armyPosX) - (width2 / 2)) + armyWidth + (ImageManager.getImage(Images.armyUnitsFrame).getWidth() * i5), armyPosY, width2, ImageManager.getImage(Images.armyUnitsFrame).getHeight());
            Renderer.clipView_End(spriteBatch);
            ImageManager.getImage(Images.armyUnitsFrame).draw(spriteBatch, i6 + (ImageManager.getImage(Images.armyUnitsFrame).getWidth() * i5), armyPosY);
        }
    }

    public static final void drawProvinceArmyWithFlag(SpriteBatch spriteBatch, int i, int i2) {
        int armyPosX = getArmyPosX(i, i2);
        int armyPosY = getArmyPosY(i, i2);
        ArmyDivision army = Game.getProvince(i).getArmy(i2);
        drawProvinceArmyFlag_2(spriteBatch, armyPosX, armyPosY, army.civID);
        Images.armyLeft3.get(army.fMoraleDraw).draw(spriteBatch, armyPosX, armyPosY);
        int i3 = armyPosX + Images.armyLeft3_Width;
        drawProvinceArmy(spriteBatch, i3, armyPosY, army.iArmyWidth + 10, Game.getCiv(army.civID).iArmyImgID, army.inRetreat);
        Renderer.drawText(spriteBatch, CFG.FONT_ARMY, army.sArmy, i3 + army.iArmyExtraPosX + 5, (armyPosY + ((int) (ImageManager.getImage(Images.armyLeft).getHeight() / 2.0f))) - ((int) (ARMY_HEIGHT / 2.0f)), drawProvinceArmyTextColor);
    }

    public static final void drawProvinceArmyWithFlag_Shadow(SpriteBatch spriteBatch, int i, Color color, float f, String str, int i2, int i3) {
        try {
            int armyPosX_Shadow = getArmyPosX_Shadow(i) - (((((ImageManager.getImage(Images.armyMorale).getWidth() + ImageManager.getImage(Images.armyFlag).getWidth()) + 5) + i2) + 10) / 2);
            int armyPosY_Shadow = getArmyPosY_Shadow(i) + ((getArmyHeight() + 2) * i3);
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f));
            drawProvinceArmyFlag(spriteBatch, armyPosX_Shadow, armyPosY_Shadow, Game.player.iCivID, Images.armyLeft);
            spriteBatch.setColor(new Color(moraleBG.r, moraleBG.g, moraleBG.b, f));
            Images.pix.draw2(spriteBatch, ImageManager.getImage(Images.armyFlag).getWidth() + armyPosX_Shadow + 5, armyPosY_Shadow, ImageManager.getImage(Images.armyMorale).getWidth(), ImageManager.getImage(Images.armyMorale).getHeight());
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f));
            drawProvinceArmy(spriteBatch, ImageManager.getImage(Images.armyMorale).getWidth() + armyPosX_Shadow + ImageManager.getImage(Images.armyFlag).getWidth() + 5, armyPosY_Shadow, i2 + 10, Images.army, false);
            Renderer.drawText(spriteBatch, CFG.FONT_ARMY, str, armyPosX_Shadow + ImageManager.getImage(Images.armyMorale).getWidth() + ImageManager.getImage(Images.armyFlag).getWidth() + 5 + 5, (armyPosY_Shadow + ((int) (ImageManager.getImage(Images.armyLeft).getHeight() / 2.0f))) - ((int) (ARMY_HEIGHT / 2.0f)), new Color(color.r, color.g, color.b, color.a * f));
            spriteBatch.setColor(Color.WHITE);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void drawProvinceArmy_Units(SpriteBatch spriteBatch, int i, int i2, Color color, float f) {
        try {
            int armyPosX = getArmyPosX(i, i2);
            int armyPosY = getArmyPosY(i, i2);
            Province province = Game.getProvince(i);
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f));
            int i3 = province.getArmy(i2).lArmyRegiment.get(0).uID;
            int i4 = province.getArmy(i2).lArmyRegiment.get(0).aID;
            int i5 = province.getArmy(i2).lArmyRegiment.get(0).num;
            for (int i6 = 1; i6 < province.getArmy(i2).iArmyRegimentSize; i6++) {
                if (i3 == province.getArmy(i2).lArmyRegiment.get(i6).uID && i4 == province.getArmy(i2).lArmyRegiment.get(i6).aID) {
                    int i7 = province.getArmy(i2).lArmyRegiment.get(i6).num;
                } else {
                    try {
                        Renderer.clipView_Start(spriteBatch, armyPosX, armyPosY, ImageManager.getImage(Images.unitsFrameBattle).getWidth(), -ImageManager.getImage(Images.unitsFrameBattle).getHeight());
                        ArmyManager.armyImages.get(ArmyManager.lArmy.get(i3).get(i4).ImageID).draw(spriteBatch, armyPosX, armyPosY, ImageManager.getImage(Images.unitsFrameBattle).getHeight());
                        Renderer.clipView_End(spriteBatch);
                    } catch (Exception e) {
                        CFG.exceptionStack(e);
                    }
                    ImageManager.getImage(Images.unitsFrameBattle).draw(spriteBatch, armyPosX, armyPosY);
                    armyPosX += ImageManager.getImage(Images.unitsFrameBattle).getWidth() + (CFG.PADDING / 2);
                    i3 = province.getArmy(i2).lArmyRegiment.get(i6).uID;
                    i4 = province.getArmy(i2).lArmyRegiment.get(i6).aID;
                    int i8 = province.getArmy(i2).lArmyRegiment.get(i6).num;
                }
            }
            spriteBatch.setColor(Color.WHITE);
        } catch (Exception unused) {
        }
    }

    public static final void drawProvincesArmy(SpriteBatch spriteBatch) {
        if (Game.mapScale.getCurrentScale() >= Game.DRAW_ARMY_MIN_SCALE) {
            drawProvincesArmy_Just(spriteBatch, DRAW_ARMY_ALPHA);
            return;
        }
        if (Game.mapTouchManager.selectMode && Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_PEACE_VIEW && Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_INVEST_IN_ECONOMY && Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_INCREASE_TAX_EFFICIENCY && Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_DEVELOP_INFRASTRUCTURE && Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_INCREASE_GROWTH_RATE && Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_INCREASE_MANPOWER && Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_CONVERT_RELIGION && Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_CORE && Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_BUILDING) {
            drawProvincesArmy_Just(spriteBatch, 1.0f);
        } else {
            if (!drawHideAnimation || Game.mapScale.getCurrentScale() < DRAW_ARMY_MIN_SCALE_ANIMATION) {
                return;
            }
            drawProvincesArmy_Just(spriteBatch, DRAW_ARMY_ALPHA);
        }
    }

    private static final void drawProvincesArmy_Just(SpriteBatch spriteBatch, float f) {
        for (int i = 0; i < Game.activeArmySize; i++) {
            try {
                if (Game.getProvince(Game.activeArmy.get(i).iProvinceID).getDrawProvince()) {
                    Game.activeArmy.get(i).iArmyID = Game.getProvince(Game.activeArmy.get(i).iProvinceID).getArmyKeyID(Game.activeArmy.get(i).key);
                    if (Game.activeArmy.get(i).iArmyID < 0) {
                        Game.removeActiveArmy(i);
                    } else if (!Game.getProvince(Game.activeArmy.get(i).iProvinceID).getArmy(Game.activeArmy.get(i).iArmyID).inBattle) {
                        drawProvinceArmyActive(spriteBatch, Game.activeArmy.get(i).iProvinceID, Game.activeArmy.get(i).iArmyID, f);
                    }
                }
            } catch (Exception unused) {
            }
        }
        try {
            if (Game.hoveredArmy.iProvinceID >= 0) {
                Game.checkHoveredArmy_Fog();
                if (Game.getProvince(Game.hoveredArmy.iProvinceID).getDrawProvince()) {
                    Game.hoveredArmy.iArmyID = Game.getProvince(Game.hoveredArmy.iProvinceID).getArmyKeyID(Game.hoveredArmy.key);
                    if (!Game.getProvince(Game.hoveredArmy.iProvinceID).getArmy(Game.hoveredArmy.iArmyID).inBattle && Game.hoveredArmy.iProvinceID >= 0 && Game.hoveredArmy.iArmyID >= 0) {
                        drawProvinceArmyHover(spriteBatch, Game.hoveredArmy.iProvinceID, Game.hoveredArmy.iArmyID, f);
                    }
                }
            }
        } catch (Exception unused2) {
        }
        try {
            drawProvinceArmyColorAlpha = new Color(1.0f, 1.0f, 1.0f, f);
            Color color = COLOR_ARMY;
            drawProvinceArmyTextColor = new Color(color.r, color.g, color.b, f);
            spriteBatch.setColor(drawProvinceArmyColorAlpha);
            for (int i2 = 0; i2 < Game.NUM_OF_WASTELAND_PROVINCES_IN_VIEW; i2++) {
                try {
                    Game.getProvince(Game.getWastelandProvinceInViewID(i2)).drawArmy(spriteBatch, f);
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
            for (int i3 = 0; i3 < Game.NUM_OF_SEA_PROVINCES_IN_VIEW; i3++) {
                Game.getProvince(Game.getSeaProvinceInViewID(i3)).drawArmy(spriteBatch, f);
            }
            for (int i4 = 0; i4 < Game.NUM_OF_PROVINCES_IN_VIEW; i4++) {
                Game.getProvince(Game.getProvinceInViewID(i4)).drawArmy(spriteBatch, f);
            }
            for (int i5 = 0; i5 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i5++) {
                Game.getProvince(Game.getExtraProvinceInViewID(i5)).drawArmy(spriteBatch, f);
            }
            spriteBatch.setColor(Color.WHITE);
            try {
                if (Game.regroupArmyShadows.size() > 0) {
                    for (int i6 = 0; i6 < Game.regroupArmyShadows.size(); i6++) {
                        drawProvinceArmyWithFlag_Shadow(spriteBatch, Game.regroupArmyShadows.get(i6).iProvinceID, Color.WHITE, 0.5f, Game.regroupArmyShadows.get(i6).sArmy, Game.regroupArmyShadows.get(i6).iArmyWidth, Game.regroupArmyShadows.get(i6).extraY);
                    }
                }
            } catch (Exception e2) {
                CFG.exceptionStack(e2);
            }
        } catch (Exception e3) {
            CFG.exceptionStack(e3);
        }
        spriteBatch.setColor(Color.WHITE);
    }

    public static final int getArmyHeight() {
        return ImageManager.getImage(Images.armyLeft).getHeight();
    }

    public static final int getArmyPosX(int i, int i2) {
        return ((int) ((Game.getProvince(i).iCenterShiftX + Game.getProvince(i).getTranslateProvincePosX() + Game.getProvince(i).getArmy(i2).iShiftX_Scaled) * Game.mapScale.getCurrentScale())) + Game.getProvince(i).getArmy(i2).iShiftX;
    }

    public static final int getArmyPosX_Shadow(int i) {
        return (int) ((Game.getProvince(i).iCenterShiftX + Game.getProvince(i).getTranslateProvincePosX()) * Game.mapScale.getCurrentScale());
    }

    public static final int getArmyPosY(int i, int i2) {
        return ((int) ((Game.getProvince(i).iCenterShiftY + Game.mapCoords.getPosY() + Game.getProvince(i).getArmy(i2).iShiftY_Scaled) * Game.mapScale.getCurrentScale())) + Game.getProvince(i).getArmy(i2).iShiftY;
    }

    public static final int getArmyPosY_Shadow(int i) {
        return (int) ((Game.getProvince(i).iCenterShiftY + Game.mapCoords.getPosY()) * Game.mapScale.getCurrentScale());
    }

    public static final int getArmyWidth(int i) {
        return Images.armyLeft3_Width + i + 10;
    }

    public static final int getDetailsPosX(int i) {
        return ((int) ((Game.getProvince(i).iCenterShiftX + Game.getProvince(i).getTranslateProvincePosX()) * Game.mapScale.getCurrentScale())) + Game.getProvince(i).drawDetails.iShiftX;
    }

    public static final int getDetailsPosX_2(int i) {
        return (int) ((Game.getProvince(i).iCenterShiftX + Game.getProvince(i).getTranslateProvincePosX()) * Game.mapScale.getCurrentScale());
    }

    public static final int getDetailsPosY(int i) {
        return ((int) ((Game.getProvince(i).iCenterShiftY + Game.mapCoords.getPosY()) * Game.mapScale.getCurrentScale())) + Game.getProvince(i).drawDetails.iShiftY;
    }

    public static final int getDetailsPosY_2(int i) {
        return (int) ((Game.getProvince(i).iCenterShiftY + Game.mapCoords.getPosY()) * Game.mapScale.getCurrentScale());
    }

    public static final void updateArmyHeight() {
        GlyphLayout_Game glyphLayout_Game = new GlyphLayout_Game();
        glyphLayout_Game.setText(Renderer.fontMain.get(CFG.FONT_ARMY), "0123456789");
        ARMY_HEIGHT = (int) glyphLayout_Game.height;
    }

    public static final void updateArmyImgID() {
        for (int i = 0; i < Game.getCivsSize(); i++) {
            Game.getCiv(i).updateArmyImgID();
        }
    }

    public static final void updateCitiesTime() {
        if (DRAW_CITIES_TIME == 0) {
            DRAW_CITIES_TIME = CFG.currentTimeMillis;
            DRAW_CITIES_ALPHA = 0.0f;
        } else if (DRAW_CITIES_ALPHA < 1.0f) {
            float f = ((CFG.currentTimeMillis - DRAW_CITIES_TIME) / Game.settingsManager.CIVILIZATIONS_NAMES_INTERVAL) * 1.0f;
            DRAW_CITIES_ALPHA = f;
            if (f > 1.0f) {
                DRAW_CITIES_ALPHA = 1.0f;
            }
        }
    }

    public static final void updateCitiesTimeHide() {
        if (DRAW_CITIES_TIME_HIDE == 0) {
            DRAW_CITIES_TIME_HIDE = CFG.currentTimeMillis;
            DRAW_CITIES_ALPHA = 1.0f;
            return;
        }
        float f = 1.0f - (((CFG.currentTimeMillis - DRAW_CITIES_TIME_HIDE) / (Game.settingsManager.CIVILIZATIONS_NAMES_INTERVAL / 2.0f)) * 1.0f);
        DRAW_CITIES_ALPHA = f;
        if (f <= 0.0f) {
            DRAW_CITIES_ALPHA = 0.0f;
            drawCitiesHideAnimation = false;
        }
    }

    public static final ProvinceDrawArmyINT updateDrawArmy(int i) {
        return Game.getProvince(i).getFogDrawArmy() ? new AnonymousClass1() : new AnonymousClass2();
    }

    public static final void updateDrawArmyAlpha() {
        if (Game.mapScale.getCurrentScale() >= Game.DRAW_ARMY_MIN_SCALE) {
            updateTime();
            drawHideAnimation = true;
            DRAW_ARMY_TIME_HIDE = 0L;
        } else if (drawHideAnimation) {
            updateTimeHide();
        } else {
            DRAW_ARMY_TIME = 0L;
        }
        if (Game.mapScale.getCurrentScale() >= Game.DRAW_CITIES_MIN_SCALE) {
            updateCitiesTime();
            drawCitiesHideAnimation = true;
            DRAW_CITIES_TIME_HIDE = 0L;
        } else if (drawCitiesHideAnimation) {
            updateCitiesTimeHide();
        } else {
            DRAW_CITIES_TIME = 0L;
        }
        if (Game.mapScale.getCurrentScale() >= Game.DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE) {
            updateProvinceNamesTime();
            drawProvinceNamesHideAnimation = true;
            DRAW_PROVINCE_NAMES_TIME_HIDE = 0L;
        } else if (drawProvinceNamesHideAnimation) {
            updateProvinceNamesTimeHide();
        } else {
            DRAW_PROVINCE_NAMES_TIME = 0L;
        }
        if (Game.mapScale.getCurrentScale() >= Game.DRAW_OCCUPIED_PROVINCES_MIN_SCALE) {
            updateOccupiedTime();
            drawOccupiedHideAnimation = true;
            DRAW_OCCUPIED_TIME_HIDE = 0L;
        } else if (drawOccupiedHideAnimation) {
            updateOccupiedTimeHide();
        } else {
            DRAW_OCCUPIED_TIME = 0L;
        }
    }

    public static final void updateOccupiedTime() {
        if (DRAW_OCCUPIED_TIME == 0) {
            DRAW_OCCUPIED_TIME = CFG.currentTimeMillis;
            DRAW_OCCUPIED_ALPHA = 0.0f;
        } else if (DRAW_OCCUPIED_ALPHA < 1.0f) {
            float f = ((CFG.currentTimeMillis - DRAW_OCCUPIED_TIME) / Game.settingsManager.CIVILIZATIONS_NAMES_INTERVAL) * 1.0f;
            DRAW_OCCUPIED_ALPHA = f;
            if (f > 1.0f) {
                DRAW_OCCUPIED_ALPHA = 1.0f;
            }
        }
    }

    public static final void updateOccupiedTimeHide() {
        if (DRAW_OCCUPIED_TIME_HIDE == 0) {
            DRAW_OCCUPIED_TIME_HIDE = CFG.currentTimeMillis;
            DRAW_OCCUPIED_ALPHA = 1.0f;
            return;
        }
        float f = 1.0f - (((CFG.currentTimeMillis - DRAW_OCCUPIED_TIME_HIDE) / (Game.settingsManager.CIVILIZATIONS_NAMES_INTERVAL / 2.0f)) * 1.0f);
        DRAW_OCCUPIED_ALPHA = f;
        if (f <= 0.0f) {
            DRAW_OCCUPIED_ALPHA = 0.0f;
            drawOccupiedHideAnimation = false;
        }
    }

    public static final void updateProvinceNamesTime() {
        if (DRAW_PROVINCE_NAMES_TIME == 0) {
            DRAW_PROVINCE_NAMES_TIME = CFG.currentTimeMillis;
            DRAW_PROVINCE_NAMES_ALPHA = 0.0f;
        } else if (DRAW_PROVINCE_NAMES_ALPHA < 1.0f) {
            float f = ((CFG.currentTimeMillis - DRAW_PROVINCE_NAMES_TIME) / Game.settingsManager.CIVILIZATIONS_NAMES_INTERVAL) * 1.0f;
            DRAW_PROVINCE_NAMES_ALPHA = f;
            if (f > 1.0f) {
                DRAW_PROVINCE_NAMES_ALPHA = 1.0f;
            }
        }
    }

    public static final void updateProvinceNamesTimeHide() {
        if (DRAW_PROVINCE_NAMES_TIME_HIDE == 0) {
            DRAW_PROVINCE_NAMES_TIME_HIDE = CFG.currentTimeMillis;
            DRAW_PROVINCE_NAMES_ALPHA = 1.0f;
            return;
        }
        float f = 1.0f - (((CFG.currentTimeMillis - DRAW_PROVINCE_NAMES_TIME_HIDE) / (Game.settingsManager.CIVILIZATIONS_NAMES_INTERVAL / 2.0f)) * 1.0f);
        DRAW_PROVINCE_NAMES_ALPHA = f;
        if (f <= 0.0f) {
            DRAW_PROVINCE_NAMES_ALPHA = 0.0f;
            drawProvinceNamesHideAnimation = false;
        }
    }

    public static final void updateTime() {
        if (DRAW_ARMY_TIME == 0) {
            DRAW_ARMY_TIME = CFG.currentTimeMillis;
            DRAW_ARMY_ALPHA = 0.0f;
        } else if (DRAW_ARMY_ALPHA < 1.0f) {
            float f = ((CFG.currentTimeMillis - DRAW_ARMY_TIME) / Game.settingsManager.CIVILIZATIONS_NAMES_INTERVAL) * 1.0f;
            DRAW_ARMY_ALPHA = f;
            if (f > 1.0f) {
                DRAW_ARMY_ALPHA = 1.0f;
            }
        }
    }

    public static final void updateTimeHide() {
        if (DRAW_ARMY_TIME_HIDE == 0) {
            DRAW_ARMY_TIME_HIDE = CFG.currentTimeMillis;
            DRAW_ARMY_ALPHA = 1.0f;
            return;
        }
        float f = 1.0f - (((CFG.currentTimeMillis - DRAW_ARMY_TIME_HIDE) / (Game.settingsManager.CIVILIZATIONS_NAMES_INTERVAL / 2.0f)) * 1.0f);
        DRAW_ARMY_ALPHA = f;
        if (f <= 0.0f) {
            DRAW_ARMY_ALPHA = 0.0f;
            drawHideAnimation = false;
        }
    }
}
