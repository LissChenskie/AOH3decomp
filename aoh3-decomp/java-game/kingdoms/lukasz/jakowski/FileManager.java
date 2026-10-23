package aoc.kingdoms.lukasz.jakowski;

import aoc.kingdoms.lukasz.jakowski.Steam.SteamManager;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class FileManager {
    public static boolean IS_MAC;
    public static LoadInterface loadInterface;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.FileManager$1, reason: invalid class name */
    class AnonymousClass1 implements LoadInterface {
        AnonymousClass1() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.FileManager.LoadInterface
        public FileHandle getSaveType(String str) {
            return Gdx.files.external(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.FileManager.LoadInterface
        public FileHandle loadFile(String str) {
            for (int i = 0; i < SteamManager.modsFoldersSize; i++) {
                if (Gdx.files.external(SteamManager.modsFolders.get(i) + str).exists()) {
                    return Gdx.files.external(SteamManager.modsFolders.get(i) + str);
                }
                if (Gdx.files.internal(SteamManager.modsFolders.get(i) + str).exists()) {
                    return Gdx.files.internal(SteamManager.modsFolders.get(i) + str);
                }
            }
            for (int i2 = 0; i2 < SteamManager.itemsInstalledSize; i2++) {
                if (Gdx.files.absolute(SteamManager.itemsInstalled.get(i2).getFolder() + "/" + str).exists()) {
                    return Gdx.files.absolute(SteamManager.itemsInstalled.get(i2).getFolder() + "/" + str);
                }
            }
            return Gdx.files.external(str).exists() ? Gdx.files.external(str) : Gdx.files.internal(str);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.FileManager$2, reason: invalid class name */
    class AnonymousClass2 implements LoadInterface {
        AnonymousClass2() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.FileManager.LoadInterface
        public FileHandle getSaveType(String str) {
            return Gdx.files.local(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.FileManager.LoadInterface
        public FileHandle loadFile(String str) {
            for (int i = 0; i < SteamManager.modsFoldersSize; i++) {
                if (Gdx.files.internal(SteamManager.modsFolders.get(i) + str).exists()) {
                    return Gdx.files.internal(SteamManager.modsFolders.get(i) + str);
                }
            }
            for (int i2 = 0; i2 < SteamManager.itemsInstalledSize; i2++) {
                if (Gdx.files.absolute(SteamManager.itemsInstalled.get(i2).getFolder() + "/" + str).exists()) {
                    return Gdx.files.absolute(SteamManager.itemsInstalled.get(i2).getFolder() + "/" + str);
                }
            }
            return Gdx.files.internal(str);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.FileManager$3, reason: invalid class name */
    class AnonymousClass3 implements LoadInterface {
        AnonymousClass3() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.FileManager.LoadInterface
        public FileHandle getSaveType(String str) {
            return Gdx.files.local(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.FileManager.LoadInterface
        public FileHandle loadFile(String str) {
            return Gdx.files.local(str).exists() ? Gdx.files.local(str) : Gdx.files.internal(str);
        }
    }

    public interface LoadInterface {
        FileHandle getSaveType(String str);

        FileHandle loadFile(String str);
    }

    public static FileHandle getSaveType(String str) {
        return loadInterface.getSaveType(str);
    }

    public static void initLoadInterface() {
        if (!CFG.isDesktop()) {
            loadInterface = new AnonymousClass3();
        } else if (IS_MAC) {
            loadInterface = new AnonymousClass1();
        } else {
            loadInterface = new AnonymousClass2();
        }
    }

    public static FileHandle loadFile(String str) {
        return loadInterface.loadFile(str);
    }
}
