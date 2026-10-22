package aoc.kingdoms.lukasz.map;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.civilization.CivilizationGeneralsPool;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class GeneralManager {
    public Image noGeneral;
    public List<Integer> generalsImagesSize = new ArrayList();
    private ArrayList<List<String>> generalNames = new ArrayList<>();
    private ArrayList<List<String>> generalSurnames = new ArrayList<>();

    public static String getGeneralsImgPath() {
        if (Game_Calendar.currentYear >= GameValues.generals.MODERN_WORLD_GENERALS_SINCE_YEAR) {
            return CFG.FILE_GENERALS_3_PATH;
        }
        return (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).ENABLE_NON_KINGS_IMG || Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).FORCE_NON_KINGS_IMG) ? CFG.FILE_GENERALS_2_PATH : "generals/";
    }

    public static String getGeneralsImgPath(int i) {
        if (Game_Calendar.currentYear >= GameValues.generals.MODERN_WORLD_GENERALS_SINCE_YEAR) {
            return CFG.FILE_GENERALS_3_PATH;
        }
        return ((Game.ideologiesManager.getIdeology(Game.getCiv(i).getIdeologyID()).KingsImages || !Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).ENABLE_NON_KINGS_IMG) && !Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).FORCE_NON_KINGS_IMG) ? "generals/" : CFG.FILE_GENERALS_2_PATH;
    }

    public static int getRecruitGoldCost(int i) {
        return (int) (GameValues.generals.RECRUIT_GENERAL_GOLD_COST * Math.max(0.0f, Game.getCiv(i).civBonuses.GeneralCost + 1.0f + GameValues.civRank.CIV_RANK_GENERAL_COST[Game.getCiv(i).iCivRankID]));
    }

    public static int getRecruitLegacyCost(int i) {
        return (int) (GameValues.generals.RECRUIT_GENERAL_LEGACY_COST * Math.max(0.0f, Game.getCiv(i).civBonuses.GeneralCost + 1.0f + GameValues.civRank.CIV_RANK_GENERAL_COST[Game.getCiv(i).iCivRankID]));
    }

    public static boolean recruitGeneral_AI(int i, int i2, int i3) {
        try {
            if (Game.getCiv(i).fGold < getRecruitGoldCost(i) || Game.getCiv(i).fLegacy < getRecruitLegacyCost(i) || Game.getProvince(i2).getArmy(i3).civID != i || Game.getProvince(i2).getArmy(i3).armyGeneral != null) {
                return false;
            }
            Game.getProvince(i2).getArmy(i3).setArmyGeneral(CivilizationGeneralsPool.getGeneral_Random(i));
            Game.getCiv(i).fGold -= getRecruitGoldCost(i);
            Game.getCiv(i).fLegacy -= getRecruitLegacyCost(i);
            return true;
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return true;
        }
    }

    public String getGeneralRandomName(int i) {
        String str = Game.getCiv(i).realTag;
        if (FileManager.loadFile("game/randomNames/names/" + str + ".txt").exists()) {
            String[] strArrSplit = FileManager.loadFile("game/randomNames/names/" + str + ".txt").readString().split(";");
            if (strArrSplit.length > 0) {
                return strArrSplit[Game.oR.nextInt(strArrSplit.length)];
            }
        } else if (FileManager.loadFile("game/rulersRandom/link/" + str + ".txt").exists()) {
            String string = FileManager.loadFile("game/rulersRandom/link/" + str + ".txt").readString();
            if (FileManager.loadFile("game/randomNames/names/" + string + ".txt").exists()) {
                String[] strArrSplit2 = FileManager.loadFile("game/randomNames/names/" + string + ".txt").readString().split(";");
                if (strArrSplit2.length > 0) {
                    return strArrSplit2[Game.oR.nextInt(strArrSplit2.length)];
                }
            }
        }
        try {
            return this.generalNames.get(Game.getCiv(i).iGroupID).get(Game.oR.nextInt(this.generalNames.get(Game.getCiv(i).iGroupID).size()));
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return this.generalNames.get(0).get(Game.oR.nextInt(this.generalNames.get(0).size()));
        }
    }

    public String getGeneralRandomSurname(int i) {
        String str = Game.getCiv(i).realTag;
        if (FileManager.loadFile("game/randomNames/surnames/" + str + ".txt").exists()) {
            String[] strArrSplit = FileManager.loadFile("game/randomNames/surnames/" + str + ".txt").readString().split(";");
            return strArrSplit.length > 0 ? strArrSplit[Game.oR.nextInt(strArrSplit.length)] : "";
        }
        if (FileManager.loadFile("game/rulersRandom/link/" + str + ".txt").exists()) {
            String string = FileManager.loadFile("game/rulersRandom/link/" + str + ".txt").readString();
            if (FileManager.loadFile("game/randomNames/surnames/" + string + ".txt").exists()) {
                String[] strArrSplit2 = FileManager.loadFile("game/randomNames/surnames/" + string + ".txt").readString().split(";");
                if (strArrSplit2.length > 0) {
                    return strArrSplit2[Game.oR.nextInt(strArrSplit2.length)];
                }
            }
        }
        try {
            return this.generalSurnames.get(Game.getCiv(i).iGroupID).get(Game.oR.nextInt(this.generalSurnames.get(Game.getCiv(i).iGroupID).size()));
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return this.generalSurnames.get(0).get(Game.oR.nextInt(this.generalSurnames.get(0).size()));
        }
    }

    public final void loadGenerals() {
        int i;
        this.noGeneral = new Image(ImageManager.loadTexture_RGB888("game/generals/generals/" + CFG.getRescouresPath_Short() + "noGeneral.png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        for (int i2 = 0; i2 < RulersManager.iGroupsSize; i2++) {
            try {
                i = Integer.parseInt(FileManager.loadFile("game/generals/generals/" + CFG.getRescouresPath_Short() + i2 + "/numOfGenerals.txt").readString());
            } catch (GdxRuntimeException e) {
                CFG.exceptionStack(e);
                i = 0;
            }
            this.generalsImagesSize.add(Integer.valueOf(i));
        }
        for (int i3 = 0; i3 < RulersManager.iGroupsSize; i3++) {
            String[] strArrSplit = FileManager.loadFile("game/randomNames/names/" + RulersManager.groups.get(i3) + ".txt").readString().split(";");
            ArrayList arrayList = new ArrayList();
            for (String str : strArrSplit) {
                arrayList.add(str);
            }
            this.generalNames.add(arrayList);
        }
        for (int i4 = 0; i4 < RulersManager.iGroupsSize; i4++) {
            String[] strArrSplit2 = FileManager.loadFile("game/randomNames/surnames/" + RulersManager.groups.get(i4) + ".txt").readString().split(";");
            ArrayList arrayList2 = new ArrayList();
            for (String str2 : strArrSplit2) {
                arrayList2.add(str2);
            }
            this.generalSurnames.add(arrayList2);
        }
    }
}
