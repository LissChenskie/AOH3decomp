package aoc.kingdoms.lukasz.jakowski;

import androidx.core.text.util.pRCP.IwYCCQBuFGwl;
import aoc.kingdoms.lukasz.jakowski.Steam.SteamManager;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.g3d.model.data.xlbt.LBhZogys;
import com.badlogic.gdx.utils.I18NBundle;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class LanguageManager {
    public static boolean translationsKeysMode;
    private I18NBundle bundle;
    private I18NBundle bundleCivs;
    private I18NBundle bundleLoading;
    private KeyOutput keyOutput;
    public int iLoading_NumOfTexts = 0;
    public List<I18NBundle> modsBundles = new ArrayList();
    public int modsBundlesSize = 0;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.LanguageManager$1, reason: invalid class name */
    class AnonymousClass1 implements KeyOutput {
        AnonymousClass1() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.LanguageManager.KeyOutput
        public String get(String str) {
            return "[" + str + "]";
        }

        @Override // aoc.kingdoms.lukasz.jakowski.LanguageManager.KeyOutput
        public String get(String str, int i) {
            return "[" + str + "]";
        }

        @Override // aoc.kingdoms.lukasz.jakowski.LanguageManager.KeyOutput
        public String get(String str, String str2) {
            return "[" + str + "]";
        }

        @Override // aoc.kingdoms.lukasz.jakowski.LanguageManager.KeyOutput
        public String get(String str, String str2, String str3) {
            return LBhZogys.ZKoVcKQ + str + "]";
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.LanguageManager$2, reason: invalid class name */
    class AnonymousClass2 implements KeyOutput {
        AnonymousClass2() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.LanguageManager.KeyOutput
        public String get(String str) {
            for (int i = 0; i < LanguageManager.this.modsBundlesSize; i++) {
                try {
                    try {
                        return LanguageManager.this.modsBundles.get(i).get(str);
                    } catch (Exception unused) {
                    }
                } catch (Exception unused2) {
                    return str;
                }
            }
            return LanguageManager.this.bundle.get(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.LanguageManager.KeyOutput
        public String get(String str, int i) {
            for (int i2 = 0; i2 < LanguageManager.this.modsBundlesSize; i2++) {
                try {
                    try {
                        return LanguageManager.this.modsBundles.get(i2).format(str, Integer.valueOf(i));
                    } catch (Exception unused) {
                    }
                } catch (Exception unused2) {
                    return str;
                }
            }
            return LanguageManager.this.bundle.format(str, Integer.valueOf(i));
        }

        @Override // aoc.kingdoms.lukasz.jakowski.LanguageManager.KeyOutput
        public String get(String str, String str2) {
            for (int i = 0; i < LanguageManager.this.modsBundlesSize; i++) {
                try {
                    try {
                        return LanguageManager.this.modsBundles.get(i).format(str, str2);
                    } catch (Exception unused) {
                    }
                } catch (Exception unused2) {
                    return str;
                }
            }
            return LanguageManager.this.bundle.format(str, str2);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.LanguageManager.KeyOutput
        public String get(String str, String str2, String str3) {
            for (int i = 0; i < LanguageManager.this.modsBundlesSize; i++) {
                try {
                    try {
                        return LanguageManager.this.modsBundles.get(i).format(str, str2, str3);
                    } catch (Exception unused) {
                    }
                } catch (Exception unused2) {
                    return str;
                }
            }
            return LanguageManager.this.bundle.format(str, str2, str3);
        }
    }

    interface KeyOutput {
        String get(String str);

        String get(String str, int i);

        String get(String str, String str2);

        String get(String str, String str2, String str3);
    }

    public LanguageManager(String str) {
        str = str == null ? "" : str;
        this.bundle = I18NBundle.createBundle(FileManager.loadFile(CFG.FILE_LANGUAGES_PATH), new Locale(str));
        initCivsBundle(str);
        initLoadingBundle(str);
        updateKeyOutput();
    }

    public final void dispose() {
        this.bundle = null;
        this.bundleCivs = null;
        this.bundleLoading = null;
        this.iLoading_NumOfTexts = 0;
    }

    public String get(String str) {
        return this.keyOutput.get(str);
    }

    public String get(String str, int i) {
        return this.keyOutput.get(str, i);
    }

    public String get(String str, String str2) {
        return this.keyOutput.get(str, str2);
    }

    public String get(String str, String str2, String str3) {
        return this.keyOutput.get(str, str2, str3);
    }

    public String getCiv(String str) {
        if (str != null) {
            for (int i = 0; i < this.modsBundlesSize; i++) {
                try {
                    try {
                        return this.modsBundles.get(i).get(str);
                    } catch (Exception unused) {
                    }
                } catch (Exception unused2) {
                }
            }
            for (int i2 = 0; i2 < this.modsBundlesSize; i2++) {
                try {
                    if (str.indexOf(95) > 0) {
                        try {
                            str = this.modsBundles.get(i2).get(str);
                            return str;
                        } catch (Exception unused3) {
                            return this.modsBundles.get(i2).get(str.substring(0, str.indexOf(95)));
                        }
                    }
                    continue;
                } catch (Exception unused4) {
                }
            }
            if (str.indexOf(95) <= 0) {
                return this.bundleCivs.get(str);
            }
            try {
                str = this.bundleCivs.get(str);
                return str;
            } catch (Exception unused5) {
                return this.bundleCivs.get(str.substring(0, str.indexOf(95)));
            }
        }
        try {
            Game.LoadCivilizationData loadCivilizationDataLoadCivilization = Game.loadCivilization(str);
            return (loadCivilizationDataLoadCivilization.Name == null || loadCivilizationDataLoadCivilization.Name.length() <= 0) ? str : loadCivilizationDataLoadCivilization.Name;
        } catch (Exception unused6) {
            return str;
        }
    }

    public String getLoading(String str) {
        for (int i = 0; i < this.modsBundlesSize; i++) {
            try {
                try {
                    return this.modsBundles.get(i).format(str, new Object[0]);
                } catch (Exception unused) {
                }
            } catch (Exception unused2) {
                return "";
            }
        }
        return this.bundleLoading.format(str, new Object[0]);
    }

    public final void initCivsBundle(String str) {
        FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_LANGUAGES_CIVS_PATH);
        if (str == null || str.length() <= 0) {
            this.bundleCivs = I18NBundle.createBundle(fileHandleLoadFile, new Locale(str));
        } else if (FileManager.loadFile("game/languages/civilizations/Bundle_" + str + ".properties").exists()) {
            this.bundleCivs = I18NBundle.createBundle(fileHandleLoadFile, new Locale(str));
        } else {
            this.bundleCivs = I18NBundle.createBundle(fileHandleLoadFile, new Locale(""));
        }
    }

    public final void initLoadingBundle(String str) {
        this.bundleLoading = I18NBundle.createBundle(FileManager.loadFile(CFG.FILE_LANGUAGES_LOADING_PATH), new Locale(str));
        try {
            this.iLoading_NumOfTexts = Integer.parseInt(getLoading("NumOfTexts"));
        } catch (Exception unused) {
            this.iLoading_NumOfTexts = 0;
        }
    }

    public void loadModsLanguages(String str) {
        String str2 = IwYCCQBuFGwl.jcukTWjabDmBr;
        try {
            this.modsBundles.clear();
            for (int i = 0; i < SteamManager.modsFoldersSize; i++) {
                if (Gdx.files.external(SteamManager.modsFolders.get(i) + CFG.FILE_LANGUAGES_MOD_PATH + "_" + str + ".properties").exists()) {
                    this.modsBundles.add(I18NBundle.createBundle(Gdx.files.external(SteamManager.modsFolders.get(i) + CFG.FILE_LANGUAGES_MOD_PATH), new Locale(str)));
                } else if (Gdx.files.external(SteamManager.modsFolders.get(i) + CFG.FILE_LANGUAGES_MOD_PATH + ".properties").exists()) {
                    this.modsBundles.add(I18NBundle.createBundle(Gdx.files.external(SteamManager.modsFolders.get(i) + CFG.FILE_LANGUAGES_MOD_PATH), new Locale("")));
                } else if (Gdx.files.internal(SteamManager.modsFolders.get(i) + CFG.FILE_LANGUAGES_MOD_PATH + "_" + str + ".properties").exists()) {
                    this.modsBundles.add(I18NBundle.createBundle(Gdx.files.internal(SteamManager.modsFolders.get(i) + CFG.FILE_LANGUAGES_MOD_PATH), new Locale(str)));
                } else if (Gdx.files.internal(SteamManager.modsFolders.get(i) + CFG.FILE_LANGUAGES_MOD_PATH + ".properties").exists()) {
                    this.modsBundles.add(I18NBundle.createBundle(Gdx.files.internal(SteamManager.modsFolders.get(i) + CFG.FILE_LANGUAGES_MOD_PATH), new Locale("")));
                }
            }
            for (int i2 = 0; i2 < SteamManager.itemsInstalledSize; i2++) {
                if (Gdx.files.absolute(SteamManager.itemsInstalled.get(i2).getFolder() + str2 + CFG.FILE_LANGUAGES_MOD_PATH + "_" + str + ".properties").exists()) {
                    this.modsBundles.add(I18NBundle.createBundle(Gdx.files.absolute(SteamManager.itemsInstalled.get(i2).getFolder() + str2 + CFG.FILE_LANGUAGES_MOD_PATH), new Locale(str)));
                } else if (Gdx.files.absolute(SteamManager.itemsInstalled.get(i2).getFolder() + str2 + CFG.FILE_LANGUAGES_MOD_PATH + ".properties").exists()) {
                    this.modsBundles.add(I18NBundle.createBundle(Gdx.files.absolute(SteamManager.itemsInstalled.get(i2).getFolder() + str2 + CFG.FILE_LANGUAGES_MOD_PATH), new Locale("")));
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        this.modsBundlesSize = this.modsBundles.size();
    }

    public final void updateKeyOutput() {
        if (translationsKeysMode) {
            this.keyOutput = new AnonymousClass1();
        } else {
            this.keyOutput = new AnonymousClass2();
        }
    }
}
