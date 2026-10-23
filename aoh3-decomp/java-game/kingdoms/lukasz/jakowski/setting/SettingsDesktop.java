package aoc.kingdoms.lukasz.jakowski.setting;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class SettingsDesktop {
    public static boolean fullscreen = true;
    public static int iHeight = -1;
    public static int iWidth = -1;
    public static boolean vSync = true;

    public static final void readConfig() {
        try {
            if (Gdx.files.local("settings/Config.txt").exists()) {
                for (String str : Gdx.files.local("settings/Config.txt").readString().replace("\n", "").split(";")) {
                    String[] strArrSplit = str.split("=");
                    try {
                        if (strArrSplit[0].equals("FULLSCREEN")) {
                            fullscreen = Boolean.parseBoolean(strArrSplit[1]);
                        } else if (strArrSplit[0].equals("WIDTH")) {
                            iWidth = Integer.parseInt(strArrSplit[1]);
                        } else if (strArrSplit[0].equals("HEIGHT")) {
                            iHeight = Integer.parseInt(strArrSplit[1]);
                        } else if (strArrSplit[0].equals("VSYNC")) {
                            vSync = Boolean.parseBoolean(strArrSplit[1]);
                        }
                    } catch (IllegalArgumentException unused) {
                        iWidth = -1;
                        iHeight = -1;
                        fullscreen = true;
                        return;
                    } catch (IndexOutOfBoundsException unused2) {
                        iWidth = -1;
                        iHeight = -1;
                        fullscreen = true;
                        return;
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void saveConfig() {
        FileHandle saveType = FileManager.getSaveType("settings/Config.txt");
        saveType.writeString("FULLSCREEN=" + fullscreen + ";\n", false);
        saveType.writeString("WIDTH=" + iWidth + ";\n", true);
        saveType.writeString("HEIGHT=" + iHeight + ";\n", true);
        saveType.writeString("VSYNC=" + vSync + ";", true);
    }
}
