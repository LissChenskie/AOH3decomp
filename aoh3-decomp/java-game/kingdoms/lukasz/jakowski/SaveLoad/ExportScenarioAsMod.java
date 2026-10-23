package aoc.kingdoms.lukasz.jakowski.SaveLoad;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.technology.Bhs.fiRhHJntP;
import aoc.kingdoms.lukasz.menusInGame.Province.iOYW.ALZmnpZHj;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ExportScenarioAsMod {
    public static void exportScenario(String str) {
        String str2;
        String str3;
        String str4 = ALZmnpZHj.cuLH;
        String str5 = fiRhHJntP.hZwiApQimJvEAp;
        try {
            str2 = "/Characters.json";
            try {
                FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + "/Details.json").copyTo(FileManager.getSaveType(CFG.FILE_MODS_PATH + str + "/map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + "/Details.json"));
            } catch (Exception unused) {
            }
        } catch (Exception unused2) {
            str2 = "/Characters.json";
        }
        try {
            FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + "/Data.json").copyTo(FileManager.getSaveType(CFG.FILE_MODS_PATH + str + "/map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + "/Data.json"));
        } catch (Exception unused3) {
        }
        try {
            FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + "/DataProvinces.json").copyTo(FileManager.getSaveType(CFG.FILE_MODS_PATH + str + "/map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + "/DataProvinces.json"));
        } catch (Exception unused4) {
        }
        try {
            FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + "/DataProvinces.json").copyTo(FileManager.getSaveType(CFG.FILE_MODS_PATH + str + "/map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + "/DataProvinces.json"));
        } catch (Exception unused5) {
        }
        try {
            FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + "/Cores.json").copyTo(FileManager.getSaveType(CFG.FILE_MODS_PATH + str + "/map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + "/Cores.json"));
        } catch (Exception unused6) {
        }
        try {
            FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + "/Religions.json").copyTo(FileManager.getSaveType(CFG.FILE_MODS_PATH + str + "/map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + "/Religions.json"));
        } catch (Exception unused7) {
        }
        try {
            FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + str2).copyTo(FileManager.getSaveType(CFG.FILE_MODS_PATH + str + "/map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + "/Characters.json"));
        } catch (Exception unused8) {
        }
        try {
            FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + "/Armies.json").copyTo(FileManager.getSaveType(CFG.FILE_MODS_PATH + str + "/map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + "/Armies.json"));
        } catch (Exception unused9) {
        }
        try {
            FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + str5).copyTo(FileManager.getSaveType(CFG.FILE_MODS_PATH + str + "/map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + str5));
        } catch (Exception unused10) {
        }
        try {
            FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + "/Wasteland.txt").copyTo(FileManager.getSaveType(CFG.FILE_MODS_PATH + str + "/map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + "/Wasteland.txt"));
        } catch (Exception unused11) {
        }
        try {
            str3 = "/preview.png";
            try {
                FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + str3).copyTo(FileManager.getSaveType(CFG.FILE_MODS_PATH + str + "/map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + str3));
            } catch (Exception unused12) {
            }
        } catch (Exception unused13) {
            str3 = "/preview.png";
        }
        try {
            FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + str3).copyTo(FileManager.getSaveType(CFG.FILE_MODS_PATH + str + "/logo.png"));
        } catch (Exception unused14) {
        }
        try {
            FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + "/previewSpecial.png").copyTo(FileManager.getSaveType(CFG.FILE_MODS_PATH + str + "/map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + "/previewSpecial.png"));
        } catch (Exception unused15) {
        }
        try {
            FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + "/Desc.txt").copyTo(FileManager.getSaveType(CFG.FILE_MODS_PATH + str + "/map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + "/Desc.txt"));
        } catch (Exception unused16) {
        }
        try {
            FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + "/Relations.json").copyTo(FileManager.getSaveType(CFG.FILE_MODS_PATH + str + "/map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + "/Relations.json"));
        } catch (Exception unused17) {
        }
        try {
            FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + "/Alliances.json").copyTo(FileManager.getSaveType(CFG.FILE_MODS_PATH + str + "/map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + "/Alliances.json"));
        } catch (Exception unused18) {
        }
        try {
            FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + "/Defensive.json").copyTo(FileManager.getSaveType(CFG.FILE_MODS_PATH + str + "/map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + "/Defensive.json"));
        } catch (Exception unused19) {
        }
        try {
            FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + "/Truces.json").copyTo(FileManager.getSaveType(CFG.FILE_MODS_PATH + str + "/map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + "/Truces.json"));
        } catch (Exception unused20) {
        }
        try {
            FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + "/NonAggression.json").copyTo(FileManager.getSaveType(CFG.FILE_MODS_PATH + str + "/map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + "/NonAggression.json"));
        } catch (Exception unused21) {
        }
        try {
            FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + "/MilitaryAccess.json").copyTo(FileManager.getSaveType(CFG.FILE_MODS_PATH + str + "/map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + "/MilitaryAccess.json"));
        } catch (Exception unused22) {
        }
        try {
            FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + "/Guarantee.json").copyTo(FileManager.getSaveType(CFG.FILE_MODS_PATH + str + "/map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + "/Guarantee.json"));
        } catch (Exception unused23) {
        }
        try {
            FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + str4).copyTo(FileManager.getSaveType(CFG.FILE_MODS_PATH + str + "/map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + str4));
        } catch (Exception unused24) {
        }
        try {
            FileManager.loadFile("modsExamples/mod.txt").copyTo(FileManager.getSaveType(CFG.FILE_MODS_PATH + str + "/mod.txt"));
        } catch (Exception unused25) {
        }
        try {
            FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + "/descriptions/").copyTo(FileManager.getSaveType(CFG.FILE_MODS_PATH + str + "/map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + "/descriptions/"));
        } catch (Exception unused26) {
        }
        try {
            FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + "/events/").copyTo(FileManager.getSaveType(CFG.FILE_MODS_PATH + str + "/map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + "/events/"));
        } catch (Exception unused27) {
        }
        try {
            FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + "/missions/").copyTo(FileManager.getSaveType(CFG.FILE_MODS_PATH + str + "/map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + str + "/missions/"));
        } catch (Exception unused28) {
        }
    }
}
