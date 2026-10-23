package aoc.kingdoms.lukasz.jakowski.setting;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.LanguageManager;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRegionsManager;
import aoc.kingdoms.lukasz.map.map.Map;
import aoc.kingdoms.lukasz.map.province.ProvinceBorder;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.map.province.ProvinceNamesManager;
import aoc.kingdoms.lukasz.menu.FQy.TGqtTWl;
import aoc.kingdoms.lukasz.menusInGame.Province.iOYW.ALZmnpZHj;
import com.badlogic.gdx.utils.Json;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class SettingsProvince {
    public static final int CIV_NAMES_DEFAULT = 2;
    public static final float CIV_NAMES_TEXT_ALPHA_DEFAULT = 0.5f;
    public static final boolean CLOUDS_DEFAULT = true;
    public static final boolean DOUBLE_BORDER_DEFAULT = true;
    public static final int MAX = 5;
    public static final int MIN = 0;
    public static final float PROVINCE_ALPHA_DEFAULT = 0.3137255f;
    public static final float PROVINCE_ALPHA_WASTELAND_DEFAULT = 0.3f;
    public static final int PROVINCE_BORDER_DEFAULT = 4;
    public static final boolean PROVINCE_CITIES_DEFAULT = true;
    public static final int PROVINCE_FLAGS_DEFAULT = 2;
    public static final float PROVINCE_NAMES_ALPHA_DEFAULT = 0.45f;
    public static final int PROVINCE_NAMES_DEFAULT = 2;
    public static final int PROVINCE_NAMES_LOW = 1;
    public static final float PROVINCE_OCCUPIED_ALPHA_EXTRA_DEFAULT = 0.25f;
    public static ValuesProvinceBorder value = new ValuesProvinceBorder();

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.setting.SettingsProvince$1, reason: invalid class name */
    class AnonymousClass1 extends Game.SimpleTask {
        AnonymousClass1(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            SettingsProvince.init(Game.settingsManager.SETTINGS_PROVINCE_BORDER);
            if (Game.settingsManager.SETTINGS_PROVINCE_BORDER == 1 || this.id == 1) {
                ProvinceBorderManager.updateProvinceBorder();
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.setting.SettingsProvince$2, reason: invalid class name */
    class AnonymousClass2 extends Game.SimpleTask {
        AnonymousClass2(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            ProvinceNamesManager.updateDrawProvinceNames();
            Game.mapCities.updateCitiesInGame();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.setting.SettingsProvince$3, reason: invalid class name */
    class AnonymousClass3 extends Game.SimpleTask {
        AnonymousClass3(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            CivilizationRegionsManager.updateRenderer_CivNames();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.setting.SettingsProvince$4, reason: invalid class name */
    class AnonymousClass4 extends Game.SimpleTask {
        AnonymousClass4(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            ProvinceBorder.updateDrawCivBorder();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.setting.SettingsProvince$5, reason: invalid class name */
    class AnonymousClass5 extends Game.SimpleTask {
        AnonymousClass5(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.mapCities.updateCitiesInGame();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.setting.SettingsProvince$6, reason: invalid class name */
    class AnonymousClass6 extends Game.SimpleTask {
        AnonymousClass6(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.cloudsAnimation.updateCloudsInterface();
        }
    }

    public static class ValuesProvinceBorder {
        public float BORDER_WIDTH_DIVIDE;
        public float DRAW_BORDERS;
        public boolean ENABLE_DOUBLE_BORDER;
        public float MAX_BORDER_WIDTH;
        public float MIN_BORDER_WIDTH;
        public float SCALE_NONE_NONE;
        public float SCALE_NONE_POINTY;
        public float SCALE_POINTY_POINTY;
        public float SCALE_POINTY_SMOOTH;
    }

    private static String getFile(int i) {
        if (i == 0 || i == 1 || i == 2) {
            return "game//settings/ProvinceBorder_Low.json";
        }
        if (i != 4) {
            return i != 5 ? "game//settings/ProvinceBorder_Medium.json" : "game//settings/ProvinceBorder_VeryHigh.json";
        }
        return "game//settings/ProvinceBorder_High.json";
    }

    public static String getSettingsText() {
        String str = Game.lang.get("ProvinceBorder") + ": ";
        int i = Game.settingsManager.SETTINGS_PROVINCE_BORDER;
        if (i == 0) {
            return str + Game.lang.get("Off");
        }
        if (i == 1) {
            return str + Game.lang.get("VeryLow");
        }
        if (i == 2) {
            return str + Game.lang.get("Low");
        }
        if (i == 3) {
            return str + Game.lang.get("Medium");
        }
        if (i != 4) {
            return i != 5 ? str : str + Game.lang.get("VeryHigh");
        }
        return str + Game.lang.get("High");
    }

    public static String getSettingsText_Cities() {
        LanguageManager languageManager;
        String str;
        StringBuilder sbAppend = new StringBuilder().append(Game.lang.get("Cities")).append(": ");
        if (Game.settingsManager.SETTINGS_CITIES) {
            languageManager = Game.lang;
            str = ALZmnpZHj.RKZCmkCr;
        } else {
            languageManager = Game.lang;
            str = "Off";
        }
        return sbAppend.append(languageManager.get(str)).toString();
    }

    public static String getSettingsText_CivNames() {
        String str = Game.lang.get("CivilizationsNames") + ": ";
        int i = Game.settingsManager.SETTINGS_CIV_NAMES;
        if (i == 0) {
            return str + Game.lang.get("Off");
        }
        if (i != 1) {
            return i != 2 ? str : str + Game.lang.get("High");
        }
        return str + Game.lang.get("Low");
    }

    public static String getSettingsText_Clouds() {
        LanguageManager languageManager;
        String str;
        StringBuilder sbAppend = new StringBuilder().append(Game.lang.get("Clouds")).append(": ");
        if (Game.settingsManager.CLOUDS) {
            languageManager = Game.lang;
            str = "On";
        } else {
            languageManager = Game.lang;
            str = "Off";
        }
        return sbAppend.append(languageManager.get(str)).toString();
    }

    public static String getSettingsText_Double() {
        LanguageManager languageManager;
        String str;
        StringBuilder sbAppend = new StringBuilder().append(Game.lang.get("DoubleBorder")).append(": ");
        if (Game.settingsManager.DOUBLE_BORDER) {
            languageManager = Game.lang;
            str = "On";
        } else {
            languageManager = Game.lang;
            str = "Off";
        }
        return sbAppend.append(languageManager.get(str)).toString();
    }

    public static String getSettingsText_FBO() {
        LanguageManager languageManager;
        String str;
        StringBuilder sbAppend = new StringBuilder("FBO, ").append(Game.lang.get("ProvinceNames")).append(": ");
        if (Game.settingsManager.FBO_PROVINCE_NAMES) {
            languageManager = Game.lang;
            str = "On";
        } else {
            languageManager = Game.lang;
            str = "Off";
        }
        return sbAppend.append(languageManager.get(str)).toString();
    }

    public static String getSettingsText_FBO_Provinces() {
        LanguageManager languageManager;
        String str;
        StringBuilder sbAppend = new StringBuilder("FBO, ").append(Game.lang.get("Provinces")).append(": ");
        if (Game.settingsManager.FBO_PROVINCES) {
            languageManager = Game.lang;
            str = "On";
        } else {
            languageManager = Game.lang;
            str = "Off";
        }
        return sbAppend.append(languageManager.get(str)).toString();
    }

    public static String getSettingsText_InGamePaddingLeft() {
        return "Menu Left Padding: " + Game.settingsManager.IN_GAME_LEFT_PADDING_EXTRA + " px";
    }

    public static String getSettingsText_Names() {
        String str = Game.lang.get("ProvinceNames") + ": ";
        int i = Game.settingsManager.SETTINGS_PROVINCE_NAMES;
        if (i == 0) {
            return str + Game.lang.get("Off");
        }
        if (i != 1) {
            return i != 2 ? str + Game.lang.get("High") : str + Game.lang.get("Medium");
        }
        return str + Game.lang.get("Low");
    }

    public static String getSettingsText_ProvinceFlags() {
        String str = Game.lang.get("Provinces") + ", " + Game.lang.get("Flags") + ": ";
        int i = Game.settingsManager.SETTINGS_PROVINCE_FLAGS;
        if (i == 0) {
            return str + Game.lang.get("Off");
        }
        if (i != 1) {
            return i != 2 ? str : str + Game.lang.get("High");
        }
        return str + Game.lang.get("Medium");
    }

    public static String getSettingsText_ProvincesBorderExtra() {
        return (Game.lang.get("ProvinceBorder") + ", " + Game.lang.get("Extra") + ": ") + CFG.getPrecision2(Game.settingsManager.BORDER_EXTRA_WIDTH, 100);
    }

    public static String getSettingsText_Ships() {
        return Game.lang.get("Ships") + ": " + (Game.settingsManager.SHIPS_ON_MAP > 0 ? Game.settingsManager.SHIPS_ON_MAP + "%" : Game.lang.get("Off"));
    }

    public static final void init(int i) {
        value = (ValuesProvinceBorder) new Json().fromJson(ValuesProvinceBorder.class, FileManager.loadFile(getFile(i)));
        ProvinceBorder.updateDrawCivBorder();
    }

    public static final void updateSettingsCivNames(int i) {
        Game.settingsManager.SETTINGS_CIV_NAMES = Math.max(0, Math.min(2, Game.settingsManager.SETTINGS_CIV_NAMES + i));
        Game.addSimpleTask(new AnonymousClass3("updateDrawProvinceNames"));
    }

    public static final void updateSettingsProvinceBorder(int i) {
        int i2 = Game.settingsManager.SETTINGS_PROVINCE_BORDER != 1 ? 0 : 1;
        Game.settingsManager.SETTINGS_PROVINCE_BORDER = Math.max(0, Math.min(5, Game.settingsManager.SETTINGS_PROVINCE_BORDER + i));
        Game.addSimpleTask(new AnonymousClass1("SettingsProvinceBorder", i2));
    }

    public static final void updateSettingsProvinceNames(int i) {
        Game.settingsManager.SETTINGS_PROVINCE_NAMES = Math.max(0, Math.min(3, Game.settingsManager.SETTINGS_PROVINCE_NAMES + i));
        Game.addSimpleTask(new AnonymousClass2("updateDrawProvinceNames"));
    }

    public static final void updateSettingsProvinceNames_Scale(int i) {
        Game.settingsManager.PROVINCE_NAMES_SCALE = Math.max(0.0f, Math.min(3.0f, Game.settingsManager.PROVINCE_NAMES_SCALE + (i * 0.025f)));
    }

    public static final void updateSettings_Cities() {
        Game.settingsManager.SETTINGS_CITIES = !Game.settingsManager.SETTINGS_CITIES;
        Game.addSimpleTask(new AnonymousClass5("updateCitiesInGame"));
    }

    public static final void updateSettings_Clouds() {
        Game.settingsManager.CLOUDS = !Game.settingsManager.CLOUDS;
        Game.addSimpleTask(new AnonymousClass6(TGqtTWl.PCuIZpipLFPuj));
    }

    public static final void updateSettings_Double() {
        Game.settingsManager.DOUBLE_BORDER = !Game.settingsManager.DOUBLE_BORDER;
        Game.addSimpleTask(new AnonymousClass4("SettingsProvinceBorder_Double"));
    }

    public static final void updateSettings_FBO() {
        Game.settingsManager.FBO_PROVINCE_NAMES = !Game.settingsManager.FBO_PROVINCE_NAMES;
    }

    public static final void updateSettings_FBO_Provinces() {
        Game.settingsManager.FBO_PROVINCES = !Game.settingsManager.FBO_PROVINCES;
    }

    public static final void updateSettings_ProvinceFlags(int i) {
        Game.settingsManager.SETTINGS_PROVINCE_FLAGS = Math.max(0, Math.min(2, Game.settingsManager.SETTINGS_PROVINCE_FLAGS + i));
        Map.updateDrawProvincesFlags();
    }
}
