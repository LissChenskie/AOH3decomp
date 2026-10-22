package aoc.kingdoms.lukasz.map.map;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SaveLoad.SaveManager;
import aoc.kingdoms.lukasz.map.RulersManager;
import aoc.kingdoms.lukasz.map.province.Province;
import aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.FQy.TGqtTWl;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MapCities {
    public static final int ACTIVE_CITIES_ANIMATION_TIME = 550;
    public static final int FONT_ID = 4;
    public static final int HOVERED_CITIES_ANIMATION_TIME = 2000;
    public static Color COLOR_CITY_NAME = new Color(0.9137255f, 0.9137255f, 0.9137255f, 0.65f);
    public static Color COLOR_CITY_CAPITAL_NAME = new Color(0.92156863f, 0.92156863f, 0.92156863f, 0.85f);
    public static float citiesScaleGrowthRate = 1.0f;
    public static long lTIME_ACTIVE_CITIES = 0;
    public static long lTIME_HOVERED_CITIES = 0;
    public List<Image> imageCity = new ArrayList();
    public List<Image> imageCityFort = new ArrayList();
    public CitiesSettings citiesSettings = new CitiesSettings();
    public CitiesInGame citiesInGame = new AnonymousClass1();
    public CapitalCityName capitalCityName = new AnonymousClass5();

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapCities$1, reason: invalid class name */
    class AnonymousClass1 implements CitiesInGame {
        AnonymousClass1() {
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapCities.CitiesInGame
        public void draw(SpriteBatch spriteBatch, float f) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapCities$2, reason: invalid class name */
    class AnonymousClass2 implements CitiesInGame {
        AnonymousClass2() {
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapCities.CitiesInGame
        public void draw(SpriteBatch spriteBatch, float f) {
            MapCities.this.drawCities_InGame_NamesLow(spriteBatch, f);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapCities$3, reason: invalid class name */
    class AnonymousClass3 implements CitiesInGame {
        AnonymousClass3() {
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapCities.CitiesInGame
        public void draw(SpriteBatch spriteBatch, float f) {
            MapCities.this.drawCities_InGame(spriteBatch, f);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapCities$4, reason: invalid class name */
    class AnonymousClass4 implements CitiesInGame {
        AnonymousClass4() {
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapCities.CitiesInGame
        public void draw(SpriteBatch spriteBatch, float f) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapCities$5, reason: invalid class name */
    class AnonymousClass5 implements CapitalCityName {
        AnonymousClass5() {
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapCities.CapitalCityName
        public void draw(SpriteBatch spriteBatch, int i, float f, int i2, int i3) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapCities$6, reason: invalid class name */
    class AnonymousClass6 implements CapitalCityName {
        AnonymousClass6() {
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapCities.CapitalCityName
        public void draw(SpriteBatch spriteBatch, int i, float f, int i2, int i3) {
            Color color;
            String str = "" + Game.getCiv(Game.getProvince(i).getCivID()).getCivName();
            int width = i2 + ImageManager.getImage(Images.capitalLeft).getWidth();
            int height = i3 + ((ImageManager.getImage(Images.capitalLeft).getHeight() - Game.getCiv(Game.getProvince(i).getCivID()).iCapitalNameHeight) / 2);
            if (Game.getCiv(Game.player.iCivID).diplomacy.isImprovingRelations(Game.getProvince(i).getCivID())) {
                color = new Color(Colors.HOVER_POSITIVE.r, Colors.HOVER_POSITIVE.g, Colors.HOVER_POSITIVE.b, MapCities.COLOR_CITY_CAPITAL_NAME.a * f);
            } else {
                color = Game.getCiv(Game.player.iCivID).diplomacy.isDamagingRelations(Game.getProvince(i).getCivID()) ? new Color(Colors.HOVER_NEGATIVE.r, Colors.HOVER_NEGATIVE.g, Colors.HOVER_NEGATIVE.b, Colors.HOVER_NEGATIVE.a * f) : new Color(MapCities.COLOR_CITY_CAPITAL_NAME.r, MapCities.COLOR_CITY_CAPITAL_NAME.g, MapCities.COLOR_CITY_CAPITAL_NAME.b, MapCities.COLOR_CITY_CAPITAL_NAME.a * f);
            }
            Renderer.drawText(spriteBatch, 4, str, width, height, color);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapCities$7, reason: invalid class name */
    class AnonymousClass7 implements CapitalCityName {
        AnonymousClass7() {
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapCities.CapitalCityName
        public void draw(SpriteBatch spriteBatch, int i, float f, int i2, int i3) {
            Renderer.drawText(spriteBatch, 4, "" + Game.getCiv(Game.getProvince(i).getCivID()).getCivName(), i2 + ImageManager.getImage(Images.capitalLeft).getWidth(), i3 + ((ImageManager.getImage(Images.capitalLeft).getHeight() - Game.getCiv(Game.getProvince(i).getCivID()).iCapitalNameHeight) / 2), new Color(MapCities.COLOR_CITY_CAPITAL_NAME.r, MapCities.COLOR_CITY_CAPITAL_NAME.g, MapCities.COLOR_CITY_CAPITAL_NAME.b, MapCities.COLOR_CITY_CAPITAL_NAME.a * f));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapCities$8, reason: invalid class name */
    class AnonymousClass8 extends Game.SimpleTask {
        AnonymousClass8(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.getProvince(this.id).getCity(0).setCityName(this.id, this.taskKey);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapCities$9, reason: invalid class name */
    class AnonymousClass9 extends Game.SimpleTask {
        AnonymousClass9(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            try {
                Game.getProvince(this.id).getCity(0).setCityNameOriginal(this.id);
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
    }

    public interface CapitalCityName {
        void draw(SpriteBatch spriteBatch, int i, float f, int i2, int i3);
    }

    public interface CitiesInGame {
        void draw(SpriteBatch spriteBatch, float f);
    }

    public static class CitiesSettings {
        public float[] citiesScale;
        public float[] citiesScale_CurrentScale;
        public int numOfCitiesImages;
    }

    protected static class Config {
        public List<GameCity> cities;
        public String name;

        protected Config() {
        }
    }

    public static class GameCity {
        public String Name;
        public int p;
        public int x;
        public int y;
    }

    public MapCities() {
        readSettings();
    }

    private final void drawCities_Just(SpriteBatch spriteBatch, float f, float f2) {
        float currentScale = (Game.mapScale.getCurrentScale() * f2) / 3.0f;
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f2));
        float fMin = Math.min(1.0f, Game.settingsManager.CITIES_FONT_SCALE * Game.mapScale.getCurrentScale());
        updateCitiesScale_CurrentScale();
        for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
            if (Game.getProvince(Game.getProvinceInViewID(i)).getDrawCities()) {
                Game.getProvince(Game.getProvinceInViewID(i)).drawCities(spriteBatch, f, f2, currentScale, fMin);
            }
        }
        for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
            if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getDrawCities()) {
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawCities(spriteBatch, f, f2, currentScale, fMin);
            }
        }
        if (Game.iActiveProvince >= 0) {
            long j = CFG.currentTimeMillis;
            if (lTIME_ACTIVE_CITIES > j - 550) {
                if (Game.getProvince(Game.iActiveProvince).getDrawProvince()) {
                    Province province = Game.getProvince(Game.iActiveProvince);
                    long j2 = lTIME_ACTIVE_CITIES;
                    province.drawCities(spriteBatch, f, ((j - j2) / 550.0f) * f2, f2 * ((j - j2) / 550.0f), fMin);
                }
            } else if (Game.getProvince(Game.iActiveProvince).getDrawProvince()) {
                Game.getProvince(Game.iActiveProvince).drawCities(spriteBatch, f, f2, f2, fMin);
            }
        }
        if (Game.iHoveredProvinceID >= 0 && Game.iHoveredProvinceID != Game.iActiveProvince) {
            long j3 = CFG.currentTimeMillis;
            if (lTIME_HOVERED_CITIES > j3 - 2000) {
                if (Game.getProvince(Game.iHoveredProvinceID).getDrawProvince()) {
                    Province province2 = Game.getProvince(Game.iHoveredProvinceID);
                    long j4 = lTIME_HOVERED_CITIES;
                    province2.drawCities(spriteBatch, f, ((j3 - j4) / 2000.0f) * f2, f2 * ((j3 - j4) / 2000.0f), fMin);
                }
            } else if (Game.getProvince(Game.iHoveredProvinceID).getDrawProvince()) {
                Game.getProvince(Game.iHoveredProvinceID).drawCities(spriteBatch, f, f2, f2, fMin);
            }
        }
        spriteBatch.setColor(Color.WHITE);
        Renderer.fontMain.get(4).getData().setScale(1.0f);
    }

    private final void drawCities_Just_InGame(SpriteBatch spriteBatch, float f, float f2) {
        float currentScale = (Game.mapScale.getCurrentScale() * f2) / 3.0f;
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f2));
        float fMin = Math.min(1.0f, Game.settingsManager.CITIES_FONT_SCALE * Game.mapScale.getCurrentScale());
        updateCitiesScale_CurrentScale();
        for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
            if (Game.getProvince(Game.getProvinceInViewID(i)).getDrawCities()) {
                Game.getProvince(Game.getProvinceInViewID(i)).drawCities_InGame(spriteBatch, f, f2, currentScale, fMin);
            }
        }
        for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
            if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getDrawCities()) {
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawCities_InGame(spriteBatch, f, f2, currentScale, fMin);
            }
        }
        if (Game.iActiveProvince >= 0) {
            long j = CFG.currentTimeMillis;
            if (lTIME_ACTIVE_CITIES > j - 550) {
                if (Game.getProvince(Game.iActiveProvince).getDrawProvince()) {
                    Province province = Game.getProvince(Game.iActiveProvince);
                    long j2 = lTIME_ACTIVE_CITIES;
                    province.drawCities_InGame(spriteBatch, f, ((j - j2) / 550.0f) * f2, f2 * ((j - j2) / 550.0f), fMin);
                }
            } else if (Game.getProvince(Game.iActiveProvince).getDrawProvince()) {
                Game.getProvince(Game.iActiveProvince).drawCities_InGame(spriteBatch, f, f2, f2, fMin);
            }
        }
        if (Game.iHoveredProvinceID >= 0 && Game.iHoveredProvinceID != Game.iActiveProvince) {
            long j3 = CFG.currentTimeMillis;
            if (lTIME_HOVERED_CITIES > j3 - 2000) {
                if (Game.getProvince(Game.iHoveredProvinceID).getDrawProvince()) {
                    Province province2 = Game.getProvince(Game.iHoveredProvinceID);
                    long j4 = lTIME_HOVERED_CITIES;
                    province2.drawCities_InGame(spriteBatch, f, ((j3 - j4) / 2000.0f) * f2, f2 * ((j3 - j4) / 2000.0f), fMin);
                }
            } else if (Game.getProvince(Game.iHoveredProvinceID).getDrawProvince()) {
                Game.getProvince(Game.iHoveredProvinceID).drawCities_InGame(spriteBatch, f, f2, f2, fMin);
            }
        }
        spriteBatch.setColor(Color.WHITE);
        Renderer.fontMain.get(4).getData().setScale(1.0f);
    }

    private final void drawCities_Just_InGame_NamesLow(SpriteBatch spriteBatch, float f, float f2) {
        float currentScale = (Game.mapScale.getCurrentScale() * f2) / 2.0f;
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f2));
        float fMin = Math.min(1.0f, Game.settingsManager.CITIES_FONT_SCALE * Game.mapScale.getCurrentScale());
        updateCitiesScale_CurrentScale();
        for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
            if (Game.getProvince(Game.getProvinceInViewID(i)).getDrawCities()) {
                Game.getProvince(Game.getProvinceInViewID(i)).drawCities_InGame_NamesLow_OnlyName(spriteBatch, f, f2, currentScale, fMin);
            }
        }
        for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
            if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getDrawCities()) {
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawCities_InGame_NamesLow_OnlyName(spriteBatch, f, f2, currentScale, fMin);
            }
        }
        if (Game.iActiveProvince >= 0) {
            long j = CFG.currentTimeMillis;
            if (lTIME_ACTIVE_CITIES > j - 550) {
                if (Game.getProvince(Game.iActiveProvince).getDrawProvince()) {
                    Province province = Game.getProvince(Game.iActiveProvince);
                    long j2 = lTIME_ACTIVE_CITIES;
                    province.drawCities_InGame_NamesLow_OnlyName(spriteBatch, f, ((j - j2) / 550.0f) * f2, f2 * ((j - j2) / 550.0f), fMin);
                }
            } else if (Game.getProvince(Game.iActiveProvince).getDrawProvince()) {
                Game.getProvince(Game.iActiveProvince).drawCities_InGame_NamesLow_OnlyName(spriteBatch, f, f2, f2, fMin);
            }
        }
        if (Game.iHoveredProvinceID >= 0 && Game.iHoveredProvinceID != Game.iActiveProvince) {
            long j3 = CFG.currentTimeMillis;
            if (lTIME_HOVERED_CITIES > j3 - 2000) {
                if (Game.getProvince(Game.iHoveredProvinceID).getDrawProvince()) {
                    Province province2 = Game.getProvince(Game.iHoveredProvinceID);
                    long j4 = lTIME_HOVERED_CITIES;
                    province2.drawCities_InGame_NamesLow_OnlyName(spriteBatch, f, ((j3 - j4) / 2000.0f) * f2, f2 * ((j3 - j4) / 2000.0f), fMin);
                }
            } else if (Game.getProvince(Game.iHoveredProvinceID).getDrawProvince()) {
                Game.getProvince(Game.iHoveredProvinceID).drawCities_InGame_NamesLow_OnlyName(spriteBatch, f, f2, f2, fMin);
            }
        }
        spriteBatch.setColor(Color.WHITE);
        Renderer.fontMain.get(4).getData().setScale(1.0f);
    }

    private final Config readCities(String str) {
        Json json = new Json();
        json.setElementType(Config.class, "cities", GameCity.class);
        return (Config) json.fromJson(Config.class, FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + "cities/" + str).reader("UTF8"));
    }

    public final void buildCities() {
        try {
            ArrayList arrayList = new ArrayList();
            try {
                Iterator<GameCity> it = readCities(CFG.FILE_MAP_CITIES_0_JSON).cities.iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next());
                }
            } catch (GdxRuntimeException e) {
                CFG.exceptionStack(e);
            }
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                for (int i2 = 0; i2 < Game.getProvincesSize(); i2++) {
                    if (Game.getProvince(i2).getMinX() <= ((GameCity) arrayList.get(i)).x * Game.mapBG.iMapScale && Game.getProvince(i2).getMaxX() >= ((GameCity) arrayList.get(i)).x * Game.mapBG.iMapScale && Game.getProvince(i2).getMinY() <= ((GameCity) arrayList.get(i)).y * Game.mapBG.iMapScale && Game.getProvince(i2).getMaxY() >= ((GameCity) arrayList.get(i)).y * Game.mapBG.iMapScale && Game.pathContains(i2, ((GameCity) arrayList.get(i)).x * Game.mapBG.iMapScale, ((GameCity) arrayList.get(i)).y * Game.mapBG.iMapScale)) {
                        ((GameCity) arrayList.get(i)).p = i2;
                        break;
                    }
                }
            }
            Json json = SaveManager.getJson();
            json.setElementType(Config.class, "cities", GameCity.class);
            FileManager.getSaveType("map/" + Game.map.getFile_ActiveMap_Path() + "cities/" + CFG.FILE_MAP_CITIES_0_JSON).writeString(json.prettyPrint(arrayList), false);
            Game.menuManager.addToastGold("Cities Generated!", Images.technology2);
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
            Game.menuManager.addToastGold("Cities Generation Error!", Images.technology2);
        }
    }

    public final void buildProvinceNames() {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            if (Game.getProvince(i).getCitiesSize() > 0) {
                Game.getProvince(i).setProvinceName(Game.getProvince(i).getCity(0).sCityName);
            }
        }
    }

    public final void drawCities(SpriteBatch spriteBatch, float f) {
        if (Game.mapScale.getCurrentScale() >= Game.DRAW_CITIES_MIN_SCALE || ProvinceDrawArmy.drawCitiesHideAnimation) {
            drawCities_Just(spriteBatch, f, ProvinceDrawArmy.DRAW_CITIES_ALPHA);
        }
        if (Game.settingsManager.SETTINGS_PROVINCE_FLAGS > 0) {
            if (Game.settingsManager.SETTINGS_PROVINCE_FLAGS == 1) {
                if (Game.mapScale.getCurrentScale() >= Game.DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE) {
                    drawCities_Just_InGame_CivFlag(spriteBatch, f, ProvinceDrawArmy.DRAW_PROVINCE_NAMES_ALPHA);
                    return;
                } else {
                    if (ProvinceDrawArmy.drawProvinceNamesHideAnimation) {
                        drawCities_Just_InGame_CivFlag(spriteBatch, f, ProvinceDrawArmy.DRAW_PROVINCE_NAMES_ALPHA);
                        return;
                    }
                    return;
                }
            }
            if (Game.mapScale.getCurrentScale() >= Game.DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE) {
                drawCities_Just_InGame_CivFlagName(spriteBatch, f, ProvinceDrawArmy.DRAW_PROVINCE_NAMES_ALPHA);
            } else if (ProvinceDrawArmy.drawProvinceNamesHideAnimation) {
                drawCities_Just_InGame_CivFlagName(spriteBatch, f, ProvinceDrawArmy.DRAW_PROVINCE_NAMES_ALPHA);
            }
        }
    }

    public final void drawCities_HighAllTheTime(SpriteBatch spriteBatch, float f) {
        if (Game.mapScale.getCurrentScale() >= Game.DRAW_CITIES_MIN_SCALE || ProvinceDrawArmy.drawCitiesHideAnimation) {
            drawCities_Just(spriteBatch, f, ProvinceDrawArmy.DRAW_CITIES_ALPHA);
        }
        if (Game.mapScale.getCurrentScale() >= Game.DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE) {
            drawCities_Just_InGame_CivFlagName(spriteBatch, f, ProvinceDrawArmy.DRAW_PROVINCE_NAMES_ALPHA);
        } else if (ProvinceDrawArmy.drawProvinceNamesHideAnimation) {
            drawCities_Just_InGame_CivFlagName(spriteBatch, f, ProvinceDrawArmy.DRAW_PROVINCE_NAMES_ALPHA);
        }
    }

    public final void drawCities_InGame(SpriteBatch spriteBatch, float f) {
        if (Game.mapScale.getCurrentScale() >= Game.DRAW_CITIES_MIN_SCALE || ProvinceDrawArmy.drawCitiesHideAnimation) {
            drawCities_Just_InGame(spriteBatch, f, ProvinceDrawArmy.DRAW_CITIES_ALPHA);
        }
        if (Game.mapScale.getCurrentScale() >= Game.DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE) {
            drawCities_Just_InGame_CivFlag(spriteBatch, f, ProvinceDrawArmy.DRAW_PROVINCE_NAMES_ALPHA);
        } else if (ProvinceDrawArmy.drawProvinceNamesHideAnimation) {
            drawCities_Just_InGame_CivFlag(spriteBatch, f, ProvinceDrawArmy.DRAW_PROVINCE_NAMES_ALPHA);
        }
    }

    public final void drawCities_InGame_NamesLow(SpriteBatch spriteBatch, float f) {
        if (Game.mapScale.getCurrentScale() >= Game.DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE || ProvinceDrawArmy.drawCitiesHideAnimation) {
            drawCities_Just_InGame_NamesLow(spriteBatch, f, ProvinceDrawArmy.DRAW_PROVINCE_NAMES_ALPHA);
        }
        if (Game.mapScale.getCurrentScale() >= Game.DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE) {
            drawCities_Just_InGame_CivFlag(spriteBatch, f, ProvinceDrawArmy.DRAW_PROVINCE_NAMES_ALPHA);
        } else if (ProvinceDrawArmy.drawProvinceNamesHideAnimation) {
            drawCities_Just_InGame_CivFlag(spriteBatch, f, ProvinceDrawArmy.DRAW_PROVINCE_NAMES_ALPHA);
        }
    }

    public final void drawCities_Just_InGame_CivFlag(SpriteBatch spriteBatch, float f, float f2) {
        if (Game.settingsManager.SETTINGS_PROVINCE_FLAGS > 0) {
            for (int i = 0; i < Game.getCiv(Game.player.iCivID).diplomacy.iAtWarSize; i++) {
                int capitalProvinceID = Game.getCiv(Game.getCiv(Game.player.iCivID).diplomacy.atWar.get(i).intValue()).getCapitalProvinceID();
                if (capitalProvinceID >= 0 && Game.getProvince(capitalProvinceID).getDrawProvince()) {
                    Game.getProvince(capitalProvinceID).drawCities_InGame_CivFlagWar(spriteBatch, f, f2);
                }
            }
            for (int i2 = 0; i2 < Game.NUM_OF_PROVINCES_IN_VIEW; i2++) {
                if (Game.getProvince(Game.getProvinceInViewID(i2)).isCapital) {
                    Game.getProvince(Game.getProvinceInViewID(i2)).drawCities_InGame_CivFlag(spriteBatch, f, f2);
                }
            }
            for (int i3 = 0; i3 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i3++) {
                if (Game.getProvince(Game.getExtraProvinceInViewID(i3)).isCapital) {
                    Game.getProvince(Game.getExtraProvinceInViewID(i3)).drawCities_InGame_CivFlag(spriteBatch, f, f2);
                }
            }
            spriteBatch.setColor(Color.WHITE);
        }
    }

    public final void drawCities_Just_InGame_CivFlagName(SpriteBatch spriteBatch, float f, float f2) {
        for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
            if (Game.getProvince(Game.getProvinceInViewID(i)).getDrawCities()) {
                Game.getProvince(Game.getProvinceInViewID(i)).drawCities_InGame_CivFlagName(spriteBatch, f, f2);
            }
        }
        for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
            if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getDrawCities()) {
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawCities_InGame_CivFlagName(spriteBatch, f, f2);
            }
        }
        spriteBatch.setColor(Color.WHITE);
    }

    public final String getProvinceCityTitle(int i) {
        if (Game.getProvince(i).getCivID() == 0) {
            return "";
        }
        if (Game.getProvince(i).isCapital) {
            return Game.lang.get("CapitalCity");
        }
        if (Game.getProvince(i).getGrowthRateWithBonuses() >= GameValues.growthRate.GROWTH_RATE_MAJOR_CITY) {
            return Game.lang.get("MajorCity");
        }
        if (Game.getProvince(i).getGrowthRateWithBonuses() >= GameValues.growthRate.GROWTH_RATE_CITY) {
            return Game.lang.get("City");
        }
        if (Game.getProvince(i).getGrowthRateWithBonuses() >= GameValues.growthRate.GROWTH_RATE_TOWN) {
            return Game.lang.get("Town");
        }
        return Game.getProvince(i).getGrowthRateWithBonuses() >= ((float) GameValues.growthRate.GROWTH_RATE_VILLAGE) ? Game.lang.get("Village") : Game.lang.get("SmallVillage");
    }

    public final void loadCities() {
        boolean z;
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + "cities/cities.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                GameCity gameCity = (GameCity) json.readValue(GameCity.class, (JsonValue) it.next());
                if (gameCity.p >= 0 && gameCity.p < Game.getProvincesSize()) {
                    Game.getProvince(gameCity.p).addCity(new City(gameCity.Name, gameCity.x * Game.mapBG.iMapScale, gameCity.y * Game.mapBG.iMapScale, 0));
                }
            }
            arrayList.clear();
            z = false;
        } catch (Exception e) {
            CFG.exceptionStack(e);
            z = true;
        }
        try {
            String[] strArrSplit = FileManager.loadFile("game/random/RandomProvinceNames.txt").readString().split("\n");
            for (int i = 0; i < Game.getProvincesSize(); i++) {
                if (Game.getProvince(i).getCitiesSize() == 0) {
                    Game.getProvince(i).setProvinceName(strArrSplit[i % strArrSplit.length]);
                }
            }
        } catch (GdxRuntimeException e2) {
            CFG.exceptionStack(e2);
        }
        try {
            if (z || Boolean.parseBoolean(FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + "cities/" + CFG.FILE_MAP_CITIES_GENERATE).readString())) {
                buildCities();
            }
        } catch (Exception e3) {
            CFG.exceptionStack(e3);
        }
    }

    public final void loadCitiesImages() {
        if (!CFG.isDesktop() && GameValues.value.MOBILE_LOAD_CITIES_2) {
            this.imageCity.add(ImageManager.loadImage("gfx/cities/0.png"));
            this.imageCityFort.add(ImageManager.loadImage("gfx/cities/fort/0.png"));
            return;
        }
        for (int i = 0; i < this.citiesSettings.numOfCitiesImages; i++) {
            this.imageCity.add(ImageManager.loadImage("gfx/cities/" + i + ".png"));
        }
        for (int i2 = 0; i2 < this.citiesSettings.numOfCitiesImages; i2++) {
            this.imageCityFort.add(ImageManager.loadImage("gfx/cities/fort/" + i2 + ".png"));
        }
    }

    public final void readSettings() {
        CitiesSettings citiesSettings = (CitiesSettings) new Json().fromJson(CitiesSettings.class, FileManager.loadFile("gfx/cities/".concat(Game.highTextureSettings ? CFG.FILE_CONFIG : CFG.FILE_CONFIG_LOW)));
        this.citiesSettings = citiesSettings;
        citiesSettings.citiesScale_CurrentScale = new float[citiesSettings.citiesScale.length];
    }

    public final void updateCapitalCityName() {
        if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DIPLOMACY_IMPROVE_RELATIONS || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DIPLOMACY_DAMAGE_RELATIONS) {
            this.capitalCityName = new AnonymousClass6();
        } else {
            this.capitalCityName = new AnonymousClass7();
        }
    }

    public final void updateCities() {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            Game.getProvince(i).setDrawCities(false);
        }
        for (int i2 = 1; i2 < Game.getCivsSize(); i2++) {
            updateCities(i2);
        }
    }

    public final void updateCities(int i) {
        try {
            int iCeil = (int) Math.ceil(Game.getCiv(i).getNumOfProvinces() * Game.settingsManager.PERCENTAGE_OF_CITIES_ON_MAP);
            ArrayList arrayList = new ArrayList();
            int populationTotal = 1;
            for (int i2 = 0; i2 < Game.getCiv(i).getNumOfProvinces(); i2++) {
                arrayList.add(Integer.valueOf(Game.getCiv(i).getProvinceID(i2)));
                Game.getProvince(Game.getCiv(i).getProvinceID(i2)).setDrawCities(false);
                if (!Game.getProvince(Game.getCiv(i).getProvinceID(i2)).isOccupied() && populationTotal < Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getPopulationTotal()) {
                    populationTotal = Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getPopulationTotal();
                }
            }
            for (int i3 = 0; i3 < iCeil && arrayList.size() > 0; i3++) {
                int populationTotal2 = Game.getProvince(((Integer) arrayList.get(0)).intValue()).getPopulationTotal();
                int size = arrayList.size();
                int i4 = 0;
                for (int i5 = 1; i5 < size; i5++) {
                    if (populationTotal2 < Game.getProvince(((Integer) arrayList.get(i5)).intValue()).getPopulationTotal()) {
                        populationTotal2 = Game.getProvince(((Integer) arrayList.get(i5)).intValue()).getPopulationTotal();
                        i4 = i5;
                    }
                }
                Game.getProvince(((Integer) arrayList.get(i4)).intValue()).setDrawCities(true);
                arrayList.remove(i4);
            }
            if (Game.getCiv(i).getCapitalProvinceID() >= 0) {
                Game.getProvince(Game.getCiv(i).getCapitalProvinceID()).setDrawCities(true);
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateCitiesInGame() {
        if (!Game.settingsManager.SETTINGS_CITIES) {
            this.citiesInGame = new AnonymousClass4();
        } else if (Game.settingsManager.SETTINGS_PROVINCE_NAMES == 1) {
            this.citiesInGame = new AnonymousClass2();
        } else {
            this.citiesInGame = new AnonymousClass3();
        }
    }

    public final void updateCitiesScale_CurrentScale() {
        for (int length = this.citiesSettings.citiesScale_CurrentScale.length - 1; length >= 0; length--) {
            this.citiesSettings.citiesScale_CurrentScale[length] = Game.mapCities.citiesSettings.citiesScale[length] * Game.mapScale.getCurrentScale();
        }
    }

    public final void updateNameToNewTrueOwner(int i, boolean z) {
    }

    /* JADX WARN: Code duplicated, block: B:36:0x01c1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:41:0x01e4 A[Catch: Exception -> 0x0215, TRY_LEAVE, TryCatch #1 {Exception -> 0x0215, blocks: (B:4:0x000a, B:7:0x0016, B:9:0x0042, B:18:0x0120, B:21:0x0128, B:23:0x0132, B:25:0x0144, B:27:0x016d, B:29:0x019a, B:30:0x019e, B:32:0x01a8, B:34:0x01ae, B:41:0x01e4, B:40:0x01e0, B:10:0x006b, B:12:0x008c, B:13:0x00ac, B:15:0x00cd, B:17:0x0107, B:37:0x01c3), top: B:48:0x000a, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x01c3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public final void updateNameToNewTrueOwner_Civ(int i, boolean z) {
        if (i != 0) {
            try {
                if (Game.getCiv(i).getNumOfProvinces() == 0) {
                    return;
                }
                String string = TGqtTWl.TVSIwprfgzoBXL;
                if (FileManager.loadFile("game/cities/" + RulersManager.groups.get(Game.getCiv(i).iGroupID) + ".txt").exists()) {
                    string = FileManager.loadFile("game/cities/" + RulersManager.groups.get(Game.getCiv(i).iGroupID) + ".txt").readString();
                } else if (FileManager.loadFile("game/cities/" + Game.getCiv(i).realTag + ".txt").exists()) {
                    string = FileManager.loadFile("game/cities/" + Game.getCiv(i).realTag + ".txt").readString();
                } else if (FileManager.loadFile("game/rulersRandom/link/" + Game.getCiv(i).realTag + ".txt").exists()) {
                    String string2 = FileManager.loadFile("game/rulersRandom/link/" + Game.getCiv(i).realTag + ".txt").readString();
                    if (FileManager.loadFile("game/cities/" + string2 + ".txt").exists()) {
                        string = FileManager.loadFile("game/cities/" + string2 + ".txt").readString();
                    }
                }
                if (string.length() > 0) {
                    for (int i2 = 0; i2 < Game.getCiv(i).getNumOfProvinces(); i2++) {
                        if (Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getCitiesSize() > 0) {
                            if (string.indexOf(Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getCity(0).sCityName + "=") >= 0) {
                                String strSubstring = string.substring(string.indexOf(Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getCity(0).sCityName));
                                int iIndexOf = strSubstring.indexOf(10, strSubstring.indexOf("=") + 1);
                                int iIndexOf2 = strSubstring.indexOf("=") + 1;
                                if (iIndexOf < 0) {
                                    iIndexOf = strSubstring.length();
                                }
                                String strSubstring2 = strSubstring.substring(iIndexOf2, iIndexOf);
                                if (strSubstring2.length() > 1 && strSubstring2.indexOf("=") < 0) {
                                    Game.gameThreadUpdate.addSimpleTask_First(new AnonymousClass8(strSubstring2, Game.getCiv(i).getProvinceID(i2)));
                                } else if (z) {
                                    try {
                                        Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getCity(0).setCityNameOriginal(Game.getCiv(i).getProvinceID(i2));
                                    } catch (Exception e) {
                                        CFG.exceptionStack(e);
                                    }
                                } else {
                                    Game.gameThreadUpdate.addSimpleTask_First(new AnonymousClass9("updateCityName" + Game.getCiv(i).getProvinceID(i2), Game.getCiv(i).getProvinceID(i2)));
                                }
                            } else if (z) {
                                Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getCity(0).setCityNameOriginal(Game.getCiv(i).getProvinceID(i2));
                            } else {
                                Game.gameThreadUpdate.addSimpleTask_First(new AnonymousClass9("updateCityName" + Game.getCiv(i).getProvinceID(i2), Game.getCiv(i).getProvinceID(i2)));
                            }
                        }
                    }
                }
            } catch (Exception e2) {
                CFG.exceptionStack(e2);
            }
        }
    }
}
