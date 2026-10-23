package aoc.kingdoms.lukasz.jakowski.Steam;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class SteamPublishThread extends Thread {
    public static String key;

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        SteamManager.createItem(key);
    }
}
