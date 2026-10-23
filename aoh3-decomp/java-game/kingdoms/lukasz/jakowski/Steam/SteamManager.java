package aoc.kingdoms.lukasz.jakowski.Steam;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.menus.LoadSave.Menu_Load_Workshop;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.assets.loaders.Wkvw.PZBvyl;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.Json;
import com.codedisaster.steamworks.SteamAPI;
import com.codedisaster.steamworks.SteamAPICall;
import com.codedisaster.steamworks.SteamException;
import com.codedisaster.steamworks.SteamID;
import com.codedisaster.steamworks.SteamLeaderboardEntriesHandle;
import com.codedisaster.steamworks.SteamLeaderboardHandle;
import com.codedisaster.steamworks.SteamPublishedFileID;
import com.codedisaster.steamworks.SteamRemoteStorage;
import com.codedisaster.steamworks.SteamRemoteStorageCallback;
import com.codedisaster.steamworks.SteamResult;
import com.codedisaster.steamworks.SteamUGC;
import com.codedisaster.steamworks.SteamUGCCallback;
import com.codedisaster.steamworks.SteamUGCDetails;
import com.codedisaster.steamworks.SteamUGCHandle;
import com.codedisaster.steamworks.SteamUGCQuery;
import com.codedisaster.steamworks.SteamUGCUpdateHandle;
import com.codedisaster.steamworks.SteamUserStats;
import com.codedisaster.steamworks.SteamUserStatsCallback;
import com.codedisaster.steamworks.SteamUtils;
import com.codedisaster.steamworks.SteamUtilsCallback;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class SteamManager {
    public static final int APP_ID = 2772750;
    public static boolean initSteam = true;
    public static List<String> modsFolders = new ArrayList();
    public static int modsFoldersSize = 0;
    public static List<SteamUGC.ItemInstallInfo> itemsInstalled = new ArrayList();
    public static int itemsInstalledSize = 0;
    public static List<String> modsFoldersAll = new ArrayList();
    public static List<String> modsFoldersAll_ModName = new ArrayList();
    public static List<SteamUGC.ItemInstallInfo> itemsInstalledAll = new ArrayList();
    public static List<String> modsTurnedOff = new ArrayList();
    public static SteamPublishedFileID createItem_steamPublishedFileID = null;
    public static SteamRemoteStorage steamRemoteStorage = null;
    public static SteamUGC steamUGC = null;
    public static SteamUGCCallback steamUGCCallback = null;
    public static SteamUtils steamUtils = null;
    public static SteamUserStats userStats = null;
    public static boolean DONE = false;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Steam.SteamManager$1, reason: invalid class name */
    class AnonymousClass1 implements SteamRemoteStorageCallback {
        AnonymousClass1() {
        }

        @Override // com.codedisaster.steamworks.SteamRemoteStorageCallback
        public void onDownloadUGCResult(SteamUGCHandle steamUGCHandle, SteamResult steamResult) {
            Gdx.app.log("SteamRemoteStorage", "onDownloadUGCResult");
        }

        @Override // com.codedisaster.steamworks.SteamRemoteStorageCallback
        public void onFileReadAsyncComplete(SteamAPICall steamAPICall, SteamResult steamResult, int i, int i2) {
            Gdx.app.log("SteamRemoteStorage", "onFileReadAsyncComplete");
        }

        @Override // com.codedisaster.steamworks.SteamRemoteStorageCallback
        public void onFileShareResult(SteamUGCHandle steamUGCHandle, String str, SteamResult steamResult) {
            Gdx.app.log("SteamRemoteStorage", "onFileShareResult");
        }

        @Override // com.codedisaster.steamworks.SteamRemoteStorageCallback
        public void onFileWriteAsyncComplete(SteamResult steamResult) {
            Gdx.app.log("SteamRemoteStorage", "onFileWriteAsyncComplete");
        }

        @Override // com.codedisaster.steamworks.SteamRemoteStorageCallback
        public void onPublishFileResult(SteamPublishedFileID steamPublishedFileID, boolean z, SteamResult steamResult) {
            Gdx.app.log("SteamRemoteStorage", PZBvyl.Oqy);
        }

        @Override // com.codedisaster.steamworks.SteamRemoteStorageCallback
        public void onPublishedFileDeleted(SteamPublishedFileID steamPublishedFileID, int i) {
            Gdx.app.log("SteamRemoteStorage", "onPublishedFileDeleted");
        }

        @Override // com.codedisaster.steamworks.SteamRemoteStorageCallback
        public void onPublishedFileSubscribed(SteamPublishedFileID steamPublishedFileID, int i) {
            Gdx.app.log("SteamRemoteStorage", "onPublishedFileSubscribed");
        }

        @Override // com.codedisaster.steamworks.SteamRemoteStorageCallback
        public void onPublishedFileUnsubscribed(SteamPublishedFileID steamPublishedFileID, int i) {
            Gdx.app.log("SteamRemoteStorage", "onPublishedFileUnsubscribed");
        }

        @Override // com.codedisaster.steamworks.SteamRemoteStorageCallback
        public void onUpdatePublishedFileResult(SteamPublishedFileID steamPublishedFileID, boolean z, SteamResult steamResult) {
            Gdx.app.log("SteamRemoteStorage", "onUpdatePublishedFileResult");
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Steam.SteamManager$2, reason: invalid class name */
    class AnonymousClass2 implements SteamUGCCallback {
        AnonymousClass2() {
        }

        @Override // com.codedisaster.steamworks.SteamUGCCallback
        public void onCreateItem(SteamPublishedFileID steamPublishedFileID, boolean z, SteamResult steamResult) {
            Gdx.app.log("SteamUGC", "onCreateItem");
            SteamManager.createItem_steamPublishedFileID = steamPublishedFileID;
            if (steamResult == SteamResult.OK) {
                Game.menuManager.addToastGold(Game.lang.get("UploadedSuccessfully"), Images.technology2, 60000);
            } else {
                Game.menuManager.addToastGold("Create: " + Game.lang.get("Error"), Images.technology2, 60000);
            }
            SteamManager.DONE = true;
        }

        @Override // com.codedisaster.steamworks.SteamUGCCallback
        public void onDeleteItem(SteamPublishedFileID steamPublishedFileID, SteamResult steamResult) {
            Gdx.app.log("SteamUGC", "onDeleteItem");
        }

        @Override // com.codedisaster.steamworks.SteamUGCCallback
        public void onDownloadItemResult(int i, SteamPublishedFileID steamPublishedFileID, SteamResult steamResult) {
            Gdx.app.log("SteamUGC", "onDownloadItemResult");
        }

        @Override // com.codedisaster.steamworks.SteamUGCCallback
        public void onGetUserItemVote(SteamPublishedFileID steamPublishedFileID, boolean z, boolean z2, boolean z3, SteamResult steamResult) {
            Gdx.app.log("SteamUGC", "onGetUserItemVote");
        }

        @Override // com.codedisaster.steamworks.SteamUGCCallback
        public void onRequestUGCDetails(SteamUGCDetails steamUGCDetails, SteamResult steamResult) {
            Gdx.app.log("SteamUGC", "onRequestUGCDetails");
        }

        @Override // com.codedisaster.steamworks.SteamUGCCallback
        public void onSetUserItemVote(SteamPublishedFileID steamPublishedFileID, boolean z, SteamResult steamResult) {
            Gdx.app.log("SteamUGC", "onSetUserItemVote");
        }

        @Override // com.codedisaster.steamworks.SteamUGCCallback
        public void onStartPlaytimeTracking(SteamResult steamResult) {
            Gdx.app.log("SteamUGC", "onStartPlaytimeTracking");
        }

        @Override // com.codedisaster.steamworks.SteamUGCCallback
        public void onStopPlaytimeTracking(SteamResult steamResult) {
            Gdx.app.log("SteamUGC", "onStopPlaytimeTracking");
        }

        @Override // com.codedisaster.steamworks.SteamUGCCallback
        public void onStopPlaytimeTrackingForAllItems(SteamResult steamResult) {
            Gdx.app.log("SteamUGC", "onStopPlaytimeTrackingForAllItems");
        }

        @Override // com.codedisaster.steamworks.SteamUGCCallback
        public void onSubmitItemUpdate(SteamPublishedFileID steamPublishedFileID, boolean z, SteamResult steamResult) {
            Gdx.app.log("SteamUGC", "onSubmitItemUpdate");
            if (steamResult == SteamResult.OK) {
                Game.menuManager.addToastGold(Game.lang.get("UploadedSuccessfully"), Images.technology2, 60000);
            } else {
                Game.menuManager.addToastGold("Update" + Game.lang.get("Error") + ": " + steamResult.name(), Images.technology2, 60000);
            }
            SteamManager.DONE = true;
            Menu_Load_Workshop.uploaded = true;
        }

        @Override // com.codedisaster.steamworks.SteamUGCCallback
        public void onSubscribeItem(SteamPublishedFileID steamPublishedFileID, SteamResult steamResult) {
            Gdx.app.log("SteamUGC", "onSubscribeItem");
        }

        @Override // com.codedisaster.steamworks.SteamUGCCallback
        public void onUGCQueryCompleted(SteamUGCQuery steamUGCQuery, int i, int i2, boolean z, SteamResult steamResult) {
            Gdx.app.log("onUGCQueryCompleted", "onUGCQueryCompleted");
        }

        @Override // com.codedisaster.steamworks.SteamUGCCallback
        public void onUnsubscribeItem(SteamPublishedFileID steamPublishedFileID, SteamResult steamResult) {
            Gdx.app.log("SteamUGC", "onUnsubscribeItem");
        }

        @Override // com.codedisaster.steamworks.SteamUGCCallback
        public void onUserFavoriteItemsListChanged(SteamPublishedFileID steamPublishedFileID, boolean z, SteamResult steamResult) {
            Gdx.app.log("SteamUGC", "onUserFavoriteItemsListChanged");
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Steam.SteamManager$3, reason: invalid class name */
    class AnonymousClass3 implements SteamUtilsCallback {
        AnonymousClass3() {
        }

        @Override // com.codedisaster.steamworks.SteamUtilsCallback
        public void onSteamShutdown() {
            Gdx.app.log("SteamUtils", "onSteamShutdown");
            SteamAPI.shutdown();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Steam.SteamManager$4, reason: invalid class name */
    class AnonymousClass4 implements SteamUserStatsCallback {
        AnonymousClass4() {
        }

        @Override // com.codedisaster.steamworks.SteamUserStatsCallback
        public void onGlobalStatsReceived(long j, SteamResult steamResult) {
        }

        @Override // com.codedisaster.steamworks.SteamUserStatsCallback
        public void onLeaderboardFindResult(SteamLeaderboardHandle steamLeaderboardHandle, boolean z) {
        }

        @Override // com.codedisaster.steamworks.SteamUserStatsCallback
        public void onLeaderboardScoreUploaded(boolean z, SteamLeaderboardHandle steamLeaderboardHandle, int i, boolean z2, int i2, int i3) {
        }

        @Override // com.codedisaster.steamworks.SteamUserStatsCallback
        public void onLeaderboardScoresDownloaded(SteamLeaderboardHandle steamLeaderboardHandle, SteamLeaderboardEntriesHandle steamLeaderboardEntriesHandle, int i) {
        }

        @Override // com.codedisaster.steamworks.SteamUserStatsCallback
        public void onNumberOfCurrentPlayersReceived(boolean z, int i) {
        }

        @Override // com.codedisaster.steamworks.SteamUserStatsCallback
        public void onUserAchievementStored(long j, boolean z, String str, int i, int i2) {
        }

        @Override // com.codedisaster.steamworks.SteamUserStatsCallback
        public void onUserStatsReceived(long j, SteamID steamID, SteamResult steamResult) {
        }

        @Override // com.codedisaster.steamworks.SteamUserStatsCallback
        public void onUserStatsStored(long j, SteamResult steamResult) {
        }

        @Override // com.codedisaster.steamworks.SteamUserStatsCallback
        public void onUserStatsUnloaded(SteamID steamID) {
        }
    }

    public static class ModData {
        public String ChangeNote;
        public String Description;
        public String Name;
        public String[] Tags;
    }

    public static void addModsTurnedOff(String str) {
        if (str == null || str.length() <= 0) {
            return;
        }
        if (modsTurnedOff.contains(str)) {
            removeModsTurnedOff(str);
        } else {
            modsTurnedOff.add(str);
        }
        saveModsTurnedOff();
    }

    public static void createItem(String str) {
        try {
            DONE = false;
            CFG.LOG(CFG.FILE_MODS_PATH + str + "/id.txt");
            if (FileManager.IS_MAC && Gdx.files.external(CFG.FILE_MODS_PATH + str + "/id.txt").exists()) {
                createItem_steamPublishedFileID = new SteamPublishedFileID(Long.parseLong(Gdx.files.external(CFG.FILE_MODS_PATH + str + "/id.txt").readString()));
            } else if (Gdx.files.internal(CFG.FILE_MODS_PATH + str + "/id.txt").exists()) {
                createItem_steamPublishedFileID = new SteamPublishedFileID(Long.parseLong(Gdx.files.internal(CFG.FILE_MODS_PATH + str + "/id.txt").readString()));
            } else {
                CFG.LOG("createItem", "steamAPICall.isValid: " + steamUGC.createItem(APP_ID, SteamRemoteStorage.WorkshopFileType.Community).isValid());
                while (!DONE) {
                    SteamAPI.runCallbacks();
                    try {
                        Thread.sleep(250L);
                    } catch (InterruptedException e) {
                        throw new SteamException(e);
                    }
                }
                try {
                    FileManager.getSaveType(CFG.FILE_MODS_PATH + str + "/id.txt").writeString("" + Long.parseLong(createItem_steamPublishedFileID.toString(), 16), false);
                } catch (Exception e2) {
                    CFG.exceptionStack(e2);
                }
            }
            ModData modData = (ModData) new Json().fromJson(ModData.class, FileManager.IS_MAC ? Gdx.files.external(CFG.FILE_MODS_PATH + str + "/mod.txt") : Gdx.files.internal(CFG.FILE_MODS_PATH + str + "/mod.txt"));
            SteamUGCUpdateHandle steamUGCUpdateHandleStartItemUpdate = steamUGC.startItemUpdate(APP_ID, createItem_steamPublishedFileID);
            String absolutePath = new FileHandle(CFG.FILE_MODS_PATH + str + "/").file().getAbsolutePath();
            Gdx.app.log("nPath", "nPath: " + absolutePath);
            steamUGC.setItemContent(steamUGCUpdateHandleStartItemUpdate, absolutePath);
            CFG.LOG("modData.Name: " + modData.Name);
            steamUGC.setItemTitle(steamUGCUpdateHandleStartItemUpdate, modData.Name);
            steamUGC.setItemTags(steamUGCUpdateHandleStartItemUpdate, modData.Tags);
            steamUGC.setItemDescription(steamUGCUpdateHandleStartItemUpdate, modData.Description);
            CFG.LOG(new FileHandle(CFG.FILE_MODS_PATH + str + "/logo.png").file().getAbsolutePath());
            steamUGC.setItemPreview(steamUGCUpdateHandleStartItemUpdate, new FileHandle(CFG.FILE_MODS_PATH + str + "/logo.png").file().getAbsolutePath());
            steamUGC.setItemVisibility(steamUGCUpdateHandleStartItemUpdate, SteamRemoteStorage.PublishedFileVisibility.Public);
            steamUGC.submitItemUpdate(steamUGCUpdateHandleStartItemUpdate, modData.ChangeNote);
            SteamUGC.ItemUpdateInfo itemUpdateInfo = new SteamUGC.ItemUpdateInfo();
            steamUGC.getItemUpdateProgress(steamUGCUpdateHandleStartItemUpdate, itemUpdateInfo);
            DONE = false;
            while (!DONE) {
                SteamAPI.runCallbacks();
                steamUGC.getItemUpdateProgress(steamUGCUpdateHandleStartItemUpdate, itemUpdateInfo);
                Gdx.app.log("Progress", "Progress: " + itemUpdateInfo.getBytesProcessed() + "/" + itemUpdateInfo.getBytesTotal());
                try {
                    Thread.sleep(250L);
                } catch (InterruptedException e3) {
                    throw new SteamException(e3);
                }
            }
        } catch (Exception e4) {
            CFG.exceptionStack(e4);
        }
    }

    public static final void init() {
        if (initSteam && CFG.isDesktop() && steamUGC == null) {
            try {
                SteamAPI.loadLibraries();
                if (!SteamAPI.init()) {
                    SteamAPI.restartAppIfNecessary(APP_ID);
                }
            } catch (SteamException e) {
                e.printStackTrace();
            }
            steamRemoteStorage = new SteamRemoteStorage(new AnonymousClass1());
            steamUGCCallback = new AnonymousClass2();
            steamUGC = new SteamUGC(steamUGCCallback);
            steamUtils = new SteamUtils(new AnonymousClass3());
            userStats = new SteamUserStats(new AnonymousClass4());
        }
    }

    public static boolean isTurnedOn(String str) {
        if (str != null && str.length() > 0) {
            for (int size = modsTurnedOff.size() - 1; size >= 0; size--) {
                if (modsTurnedOff.get(size).equals(str)) {
                    return false;
                }
            }
        }
        return true;
    }

    public static void loadSubscribedItems() {
        try {
            if (initSteam && CFG.isDesktop()) {
                int numSubscribedItems = steamUGC.getNumSubscribedItems();
                SteamPublishedFileID[] steamPublishedFileIDArr = new SteamPublishedFileID[numSubscribedItems];
                steamUGC.getSubscribedItems(steamPublishedFileIDArr);
                for (int i = 0; i < numSubscribedItems; i++) {
                    SteamUGC.ItemInstallInfo itemInstallInfo = new SteamUGC.ItemInstallInfo();
                    steamUGC.getItemInstallInfo(steamPublishedFileIDArr[i], itemInstallInfo);
                    itemsInstalled.add(itemInstallInfo);
                }
                itemsInstalledSize = itemsInstalled.size();
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        try {
            for (FileHandle fileHandle : FileManager.IS_MAC ? Gdx.files.external(CFG.FILE_MODS_PATH).list() : Gdx.files.local(CFG.FILE_MODS_PATH).list()) {
                modsFolders.add(CFG.FILE_MODS_PATH + fileHandle.name() + "/");
            }
            modsFoldersSize = modsFolders.size();
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
        readModsTurnedOff();
    }

    public static void readModsTurnedOff() {
        for (int i = 0; i < modsFolders.size(); i++) {
            modsFoldersAll.add(modsFolders.get(i));
        }
        for (int i2 = 0; i2 < itemsInstalled.size(); i2++) {
            itemsInstalledAll.add(itemsInstalled.get(i2));
            try {
                if (Gdx.files.absolute(itemsInstalled.get(i2).getFolder() + "/mod.txt").exists()) {
                    Matcher matcher = Pattern.compile("Name:\\s*\"(.*?)\"").matcher(Gdx.files.absolute(itemsInstalled.get(i2).getFolder() + "/mod.txt").readString());
                    if (matcher.find()) {
                        modsFoldersAll_ModName.add(matcher.group(1));
                    } else {
                        modsFoldersAll_ModName.add(itemsInstalled.get(i2).getFolder());
                    }
                }
            } catch (Exception unused) {
                modsFoldersAll_ModName.add(itemsInstalled.get(i2).getFolder());
            }
        }
        try {
            if (Gdx.files.internal("settings/ModsOff.txt").exists() || (FileManager.IS_MAC && Gdx.files.external("settings/ModsOff.txt").exists())) {
                String string = (FileManager.IS_MAC ? Gdx.files.external("settings/ModsOff.txt") : Gdx.files.internal("settings/ModsOff.txt")).readString();
                modsTurnedOff.clear();
                for (String str : string.split(";")) {
                    modsTurnedOff.add(str);
                }
                for (int i3 = 0; i3 < modsTurnedOff.size(); i3++) {
                    for (int size = modsFolders.size() - 1; size >= 0; size--) {
                        if (modsTurnedOff.get(i3).equals(modsFolders.get(size))) {
                            modsFolders.remove(size);
                            break;
                        }
                    }
                    for (int size2 = itemsInstalled.size() - 1; size2 >= 0; size2--) {
                        if (modsTurnedOff.get(i3).equals(itemsInstalled.get(size2).getFolder())) {
                            itemsInstalled.remove(size2);
                            break;
                        }
                    }
                }
                modsFoldersSize = modsFolders.size();
                itemsInstalledSize = itemsInstalled.size();
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static void removeModsTurnedOff(String str) {
        if (str.length() > 0) {
            for (int size = modsTurnedOff.size() - 1; size >= 0; size--) {
                if (modsTurnedOff.get(size).equals(str)) {
                    modsTurnedOff.remove(size);
                    saveModsTurnedOff();
                    return;
                }
            }
        }
    }

    public static void saveModsTurnedOff() {
        FileHandle saveType = FileManager.getSaveType("settings/ModsOff.txt");
        if (modsTurnedOff.isEmpty()) {
            if (FileManager.getSaveType("settings/ModsOff.txt").exists()) {
                FileManager.getSaveType("settings/ModsOff.txt").delete();
            }
        } else {
            int i = 0;
            while (i < modsTurnedOff.size()) {
                saveType.writeString(modsTurnedOff.get(i) + ";", i != 0);
                i++;
            }
        }
    }

    public static final void updateSteam_runCallbacks() {
        if (SteamAPI.isSteamRunning()) {
            SteamAPI.runCallbacks();
        }
    }
}
