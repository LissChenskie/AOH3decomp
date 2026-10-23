package aoc.kingdoms.lukasz.jakowski.Stats;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.SaveLoad.LoadManager;
import aoc.kingdoms.lukasz.jakowski.SaveLoad.SaveManager;
import com.badlogic.gdx.assets.loaders.Wkvw.nEtnPpUF;
import com.badlogic.gdx.utils.Json;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class StatsManager {
    public Stats civStats = new Stats("neu");

    private final void saveStatsList() {
        String string;
        boolean z;
        String str = nEtnPpUF.qsomp;
        if (FileManager.loadFile(str).exists()) {
            string = FileManager.loadFile(str).readString();
            String[] strArrSplit = string.split(";");
            int length = strArrSplit.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z = true;
                    break;
                } else {
                    if (strArrSplit[i].equals(this.civStats.tg)) {
                        z = false;
                        break;
                    }
                    i++;
                }
            }
            if (z) {
                string = string + this.civStats.tg + ";";
            }
        } else {
            string = "" + this.civStats.tg + ";";
        }
        FileManager.getSaveType(str).writeString(string, false);
    }

    public final List<Stats> loadAllStats() {
        ArrayList arrayList = new ArrayList();
        if (FileManager.loadFile("statistics/AoH.txt").exists()) {
            String[] strArrSplit = FileManager.loadFile("statistics/AoH.txt").readString().split(";");
            int length = strArrSplit.length;
            for (int i = 0; i < length; i++) {
                if (FileManager.loadFile(CFG.FILE_STATS_PATH + strArrSplit[i] + ".json").exists()) {
                    try {
                        Stats stats = (Stats) new Json().fromJson(Stats.class, FileManager.loadFile(CFG.FILE_STATS_PATH + strArrSplit[i] + ".json"));
                        if (stats != null) {
                            arrayList.add(stats);
                        }
                    } catch (Exception e) {
                        CFG.exceptionStack(e);
                    }
                }
            }
        }
        return arrayList;
    }

    public void loadStats(String str, boolean z) {
        try {
            if (FileManager.loadFile(CFG.FILE_STATS_PATH + str + ".json").exists()) {
                try {
                    Stats stats = (Stats) new Json().fromJson(Stats.class, FileManager.loadFile(CFG.FILE_STATS_PATH + str + ".json"));
                    this.civStats = stats;
                    if (z) {
                        stats.ga++;
                        return;
                    }
                    return;
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                    this.civStats = new Stats(str);
                }
                CFG.exceptionStack(e);
            }
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
        this.civStats = new Stats(str);
    }

    public void saveStats() {
        if (Game.player.iCivID == 0 || Game.SPECTATOR_MODE || this.civStats.tg.equals("neu")) {
            return;
        }
        Stats stats = this.civStats;
        stats.li = Math.max(stats.li, (int) Game.getCiv(Game.player.iCivID).fTotalIncomePerMonth);
        Stats stats2 = this.civStats;
        stats2.lp = Math.max(stats2.lp, Game.getCiv(Game.player.iCivID).getNumOfProvinces());
        Json json = SaveManager.getJson();
        json.setElementType(LoadManager.ConfigJson.class, "Data", Stats.class);
        FileManager.getSaveType(CFG.FILE_STATS_PATH + this.civStats.tg + ".json").writeString(json.toJson(this.civStats), false);
        saveStatsList();
    }
}
