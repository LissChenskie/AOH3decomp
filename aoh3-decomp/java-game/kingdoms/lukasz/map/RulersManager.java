package aoc.kingdoms.lukasz.map;

import androidx.core.text.util.pRCP.IwYCCQBuFGwl;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Player.Notification.Notification;
import aoc.kingdoms.lukasz.jakowski.RomanNumber;
import aoc.kingdoms.lukasz.menu_element.Toast;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.backends.android.Zrdz.PxHJ;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.Json;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class RulersManager {
    public static Image rulerIMG;
    public static Image rulerIMG_DiplomacyLeft;
    public static Image rulerIMG_DiplomacyRight;
    public static List<List<String>> defaultRandomNames = new ArrayList();
    public static List<Integer> NUM_OF_RANDOM_RULERS = new ArrayList();
    public static List<Integer> nextRulerIMG = new ArrayList();
    public static List<Integer> NUM_OF_RANDOM_RULERS_2 = new ArrayList();
    public static List<Integer> nextRulerIMG_2 = new ArrayList();
    public static List<String> groups = new ArrayList();
    public static int iGroupsSize = 0;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.RulersManager$1, reason: invalid class name */
    class AnonymousClass1 extends Game.SimpleTask {
        AnonymousClass1(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            if (Game.menuManager.getVisibleInGame_Court() && InGame_CourtOptions.iActiveID == InGame_CourtOptions2.idCourt) {
                Game.menuManager.rebuildInGame_CourtSavePos();
                Game.menuManager.setVisibleInGame_Court(true);
                InGame_Court.lTime = 0L;
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.RulersManager$2, reason: invalid class name */
    class AnonymousClass2 extends Game.SimpleTask {
        AnonymousClass2(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.getCiv(this.id).ruler.updateCivBonuses(this.id, -1);
            RulersManager.loadRuler(this.id, Game.getCiv(this.id).getCivTag(), true);
        }
    }

    public static class ConfigRulersData {
        public String Age_of_History;
        public ArrayList Rulers;
    }

    public static class Rulers {
        public int BornDay;
        public int BornMonth;
        public int BornYear;
        public String ImageID;
        public String Name;
        public int ReignYear;
    }

    public static final boolean characterDies(int i, int i2) {
        int iMax = Math.max(0, Math.min(10, ((((Game_Calendar.currentYear - i2) - Game.getCiv(i).civBonuses.AllCharactersLifeExpectancy) - Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).CHARACTERS_EXTRA_LIFE_EXPECTANCY) / 10) / Game.gameAges.getAge_TurnDays(Game_Calendar.CURRENT_AGEID)));
        return ((float) Game.oR.nextInt(Toast.TIME_INVIEW_VERY_VERY_LONG)) < ((float) GameValues.advisors.CHANCE_OF_DEATH[iMax]) + (((float) (GameValues.advisors.CHANCE_OF_DEATH[iMax + 1] - GameValues.advisors.CHANCE_OF_DEATH[iMax])) * (((float) ((Game_Calendar.currentYear - i2) % 10)) / 10.0f));
    }

    public static final void deathOfRuler(int i) {
        if (i == Game.player.iCivID) {
            Game.player.addNotification(new Notification(Notification.Notification_Type.LEADER_DIED, Game.lang.get("DeathOfALeader") + ": " + Game.getCiv(i).ruler.Name, Images.council, Game_Calendar.TURN_ID, Notification.Notification_BG.RED, Game.player.iCivID));
            InGame_Info.iCivID = Game.player.iCivID;
            InGame_Info.iCivID2 = 0;
            Game.menuManager.rebuildInGame_Info(Game.lang.get("DeathOfALeader"), Game.getCiv(i).ruler.Name);
            InGame_Info.imgID = Images.infoCrown;
            Game.addSimpleTask(new AnonymousClass1("rebuildCourt"));
        }
        for (int i2 = 0; i2 < Game.getCiv(i).inAllianceSize; i2++) {
            if (Game.alliancesSpecial.get(Game.getCiv(i).inAlliance.get(i2).intValue()).iLeaderCivID == i && Game.alliancesSpecial.get(Game.getCiv(i).inAlliance.get(i2).intValue()).typeOfAlliance == 0) {
                Game.alliancesSpecial.get(Game.getCiv(i).inAlliance.get(i2).intValue()).elections();
            }
        }
        Game.addSimpleTask(new AnonymousClass2("deathOfRuler" + i, i));
    }

    public static String getRulerRandomName(int i, String str) {
        String str2 = Game.getCiv(i).realTag;
        if (!Game.ideologiesManager.getIdeology(Game.getCiv(i).getIdeologyID()).RulerRoman) {
            return Game.generalManager.getGeneralRandomName(i) + " " + Game.generalManager.getGeneralRandomSurname(i);
        }
        String str3 = PxHJ.lteRo;
        if (FileManager.loadFile(str3 + str2 + ".txt").exists()) {
            String[] strArrSplit = FileManager.loadFile(str3 + str2 + ".txt").readString().split(";");
            if (strArrSplit.length > 0) {
                return strArrSplit[Game.oR.nextInt(strArrSplit.length)] + " " + RomanNumber.getRoman(Game.oR.nextInt(Math.max(1, GameValues.court.RULER_ROMAN_NUMBER_MAX_RANDOM)) + 1);
            }
        } else if (FileManager.loadFile("game/rulersRandom/link/" + str2 + ".txt").exists()) {
            String string = FileManager.loadFile("game/rulersRandom/link/" + str2 + ".txt").readString();
            if (FileManager.loadFile(str3 + string + ".txt").exists()) {
                String[] strArrSplit2 = FileManager.loadFile(str3 + string + ".txt").readString().split(";");
                if (strArrSplit2.length > 0) {
                    return strArrSplit2[Game.oR.nextInt(strArrSplit2.length)] + " " + RomanNumber.getRoman(Game.oR.nextInt(Math.max(1, GameValues.court.RULER_ROMAN_NUMBER_MAX_RANDOM)) + 1);
                }
            }
        }
        return Game.generalManager.getGeneralRandomName(i) + " " + RomanNumber.getRoman(Game.oR.nextInt(9) + 1);
    }

    public static final void initRandomRulers() {
        try {
            for (String str : FileManager.loadFile("game/groups/civsGroups.txt").readString().split(";")) {
                groups.add(str);
            }
            iGroupsSize = groups.size();
        } catch (GdxRuntimeException e) {
            CFG.exceptionStack(e);
        }
        for (int i = 0; i < iGroupsSize; i++) {
            String[] strArrSplit = FileManager.loadFile(IwYCCQBuFGwl.TRIL + groups.get(i) + ".txt").readString().split(";");
            ArrayList arrayList = new ArrayList();
            for (String str2 : strArrSplit) {
                arrayList.add(str2);
            }
            defaultRandomNames.add(arrayList);
        }
        for (int i2 = 0; i2 < iGroupsSize; i2++) {
            try {
                NUM_OF_RANDOM_RULERS.add(Integer.valueOf(Integer.parseInt(FileManager.loadFile("game/rulersRandom/rulersImages/" + CFG.getRescouresPath_Short() + i2 + "/numOfImages.txt").readString())));
            } catch (GdxRuntimeException e2) {
                CFG.exceptionStack(e2);
            }
        }
        int size = NUM_OF_RANDOM_RULERS.size();
        for (int i3 = 0; i3 < size; i3++) {
            nextRulerIMG.add(Integer.valueOf(Game.oR.nextInt(NUM_OF_RANDOM_RULERS.get(i3).intValue())));
        }
        for (int i4 = 0; i4 < iGroupsSize; i4++) {
            try {
                NUM_OF_RANDOM_RULERS_2.add(Integer.valueOf(Integer.parseInt(FileManager.loadFile("game/rulersRandom/rulersImages2/" + CFG.getRescouresPath_Short() + i4 + "/numOfImages.txt").readString())));
            } catch (GdxRuntimeException e3) {
                CFG.exceptionStack(e3);
                return;
            }
        }
        int size2 = NUM_OF_RANDOM_RULERS_2.size();
        for (int i5 = 0; i5 < size2; i5++) {
            nextRulerIMG_2.add(Integer.valueOf(Game.oR.nextInt(NUM_OF_RANDOM_RULERS_2.get(i5).intValue())));
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x00f1  */
    public static final void loadRuler(int i, String str, boolean z) {
        FileHandle fileHandleLoadFile;
        int i2;
        int i3 = 0;
        try {
            if (!z) {
                try {
                    if (FileManager.loadFile("game/rulers/" + str + ".json").exists()) {
                        fileHandleLoadFile = FileManager.loadFile("game/rulers/" + str + ".json");
                    } else if (FileManager.loadFile("game/rulers/" + Game.getCiv(i).realTag + ".json").exists()) {
                        fileHandleLoadFile = FileManager.loadFile("game/rulers/" + Game.getCiv(i).realTag + ".json");
                    } else if (FileManager.loadFile("game/rulers/link/" + Game.getCiv(i).realTag + ".txt").exists()) {
                        String string = FileManager.loadFile("game/rulers/link/" + Game.getCiv(i).realTag + ".txt").readString();
                        if (FileManager.loadFile("game/rulers/" + string + ".json").exists()) {
                            fileHandleLoadFile = FileManager.loadFile("game/rulers/" + string + ".json");
                        } else {
                            fileHandleLoadFile = null;
                        }
                    } else {
                        fileHandleLoadFile = null;
                    }
                    if (fileHandleLoadFile != null) {
                        String string2 = fileHandleLoadFile.readString();
                        Json json = new Json();
                        json.setElementType(ConfigRulersData.class, "Rulers", Rulers.class);
                        ConfigRulersData configRulersData = (ConfigRulersData) json.fromJson(ConfigRulersData.class, string2);
                        ArrayList arrayList = new ArrayList();
                        Iterator it = configRulersData.Rulers.iterator();
                        int i4 = 0;
                        while (it.hasNext()) {
                            arrayList.add((Rulers) it.next());
                            i4++;
                        }
                        if (!arrayList.isEmpty()) {
                            if (((Rulers) arrayList.get(0)).ReignYear >= Game_Calendar.currentYear) {
                                i2 = 0;
                                break;
                            }
                            i2 = i4 - 1;
                            while (true) {
                                if (i2 <= 0) {
                                    i2 = 0;
                                    break;
                                } else if (((Rulers) arrayList.get(i2)).ReignYear <= Game_Calendar.currentYear) {
                                    break;
                                } else {
                                    i2--;
                                }
                            }
                            if (((Rulers) arrayList.get(i2)).ReignYear <= Game_Calendar.currentYear && ((Rulers) arrayList.get(i2)).BornYear > Game_Calendar.currentYear - 96 && ((Rulers) arrayList.get(i2)).BornYear < Game_Calendar.currentYear) {
                                Game.getCiv(i).ruler = new Ruler(i, ((Rulers) arrayList.get(i2)).Name, "" + ((Rulers) arrayList.get(i2)).ImageID, ((Rulers) arrayList.get(i2)).BornDay, ((Rulers) arrayList.get(i2)).BornMonth, ((Rulers) arrayList.get(i2)).BornYear, ((Rulers) arrayList.get(i2)).ReignYear, false, false);
                                arrayList.clear();
                                return;
                            }
                            arrayList.clear();
                        }
                    }
                } catch (Exception e) {
                    CFG.LOG("ERROR, CIV TAG: " + Game.getCiv(i).getCivTag());
                    CFG.exceptionStack(e);
                }
            }
            int iNextInt = Game.oR.nextInt(12);
            if ((Game.ideologiesManager.getIdeology(Game.getCiv(i).getIdeologyID()).KingsImages || !Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).ENABLE_NON_KINGS_IMG) && !Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).FORCE_NON_KINGS_IMG) {
                Game.getCiv(i).ruler = new Ruler(i, getRulerRandomName(i, str), "" + nextRulerIMG.get(Game.getCiv(i).iGroupID), Game.oR.nextInt(Game_Calendar.getNumOfDaysInMonth(iNextInt)), iNextInt, (Game_Calendar.currentYear - GameValues.court.RULER_YEARS_OLD_MIN) - Game.oR.nextInt(GameValues.court.RULER_YEARS_OLD_RANDOM), Game_Calendar.currentYear, true, true);
                int iIntValue = nextRulerIMG.get(Game.getCiv(i).iGroupID).intValue() + 1;
                if (iIntValue < NUM_OF_RANDOM_RULERS.get(Game.getCiv(i).iGroupID).intValue()) {
                    i3 = iIntValue;
                }
                nextRulerIMG.set(Game.getCiv(i).iGroupID, Integer.valueOf(i3));
                return;
            }
            Game.getCiv(i).ruler = new Ruler(i, getRulerRandomName(i, str), "" + nextRulerIMG_2.get(Game.getCiv(i).iGroupID), Game.oR.nextInt(Game_Calendar.getNumOfDaysInMonth(iNextInt)), iNextInt, (Game_Calendar.currentYear - GameValues.court.RULER_YEARS_OLD_MIN) - Game.oR.nextInt(GameValues.court.RULER_YEARS_OLD_RANDOM), Game_Calendar.currentYear, true, false);
            int iIntValue2 = nextRulerIMG_2.get(Game.getCiv(i).iGroupID).intValue() + 1;
            if (iIntValue2 < NUM_OF_RANDOM_RULERS_2.get(Game.getCiv(i).iGroupID).intValue()) {
                i3 = iIntValue2;
            }
            nextRulerIMG_2.set(Game.getCiv(i).iGroupID, Integer.valueOf(i3));
        } catch (Exception e2) {
            CFG.LOG("ERROR, CIV TAG: " + Game.getCiv(i).getCivTag());
            CFG.exceptionStack(e2);
        }
    }

    public static void loadRulerIMG(int i) {
        Image image = rulerIMG;
        if (image != null) {
            image.dispose();
            rulerIMG = null;
        }
        rulerIMG = loadRulerImage(i);
    }

    public static void loadRulerIMG_DiplomacyLeft(int i) {
        Image image = rulerIMG_DiplomacyLeft;
        if (image != null) {
            image.dispose();
            rulerIMG_DiplomacyLeft = null;
        }
        rulerIMG_DiplomacyLeft = loadRulerImage(i);
    }

    public static void loadRulerIMG_DiplomacyRight(int i) {
        Image image = rulerIMG_DiplomacyRight;
        if (image != null) {
            image.dispose();
            rulerIMG_DiplomacyRight = null;
        }
        rulerIMG_DiplomacyRight = loadRulerImage(i);
    }

    public static Image loadRulerImage(int i) {
        try {
            if (Game.getCiv(i).ruler == null) {
                loadRuler(i, Game.getCiv(i).getCivTag(), false);
            }
            if (Game.getCiv(i).ruler.isRandom) {
                if (Game.getCiv(i).ruler.kingImage) {
                    return FileManager.loadFile(new StringBuilder("game/rulersRandom/rulersImages/").append(CFG.getRescouresPath_Short()).append(Game.getCiv(i).iGroupID).append("/").append(Game.getCiv(i).ruler.ImageID).append(".png").toString()).exists() ? new Image(ImageManager.loadTexture_RGB888("game/rulersRandom/rulersImages/" + CFG.getRescouresPath_Short() + Game.getCiv(i).iGroupID + "/" + Game.getCiv(i).ruler.ImageID + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge) : new Image(ImageManager.loadTexture_RGB888("game/rulersRandom/rulersImages/" + CFG.getRescouresPath_Short_H() + Game.getCiv(i).iGroupID + "/" + Game.getCiv(i).ruler.ImageID + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
                }
                return FileManager.loadFile(new StringBuilder("game/rulersRandom/rulersImages2/").append(CFG.getRescouresPath_Short()).append(Game.getCiv(i).iGroupID).append("/").append(Game.getCiv(i).ruler.ImageID).append(".png").toString()).exists() ? new Image(ImageManager.loadTexture_RGB888("game/rulersRandom/rulersImages2/" + CFG.getRescouresPath_Short() + Game.getCiv(i).iGroupID + "/" + Game.getCiv(i).ruler.ImageID + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge) : new Image(ImageManager.loadTexture_RGB888("game/rulersRandom/rulersImages2/" + CFG.getRescouresPath_Short_H() + Game.getCiv(i).iGroupID + "/" + Game.getCiv(i).ruler.ImageID + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
            }
            if (FileManager.loadFile("game/rulers/rulersImages/" + CFG.getRescouresPath_Short() + Game.getCiv(i).ruler.ImageID + ".png").exists()) {
                return new Image(ImageManager.loadTexture_RGB888("game/rulers/rulersImages/" + CFG.getRescouresPath_Short() + Game.getCiv(i).ruler.ImageID + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
            }
            if (FileManager.loadFile("game/rulers/rulersImages/" + CFG.getRescouresPath_Short_H() + Game.getCiv(i).ruler.ImageID + ".png").exists()) {
                return new Image(ImageManager.loadTexture_RGB888("game/rulers/rulersImages/" + CFG.getRescouresPath_Short_H() + Game.getCiv(i).ruler.ImageID + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
            }
            try {
                if (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).ENABLE_NON_KINGS_IMG || Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).FORCE_NON_KINGS_IMG) {
                    return FileManager.loadFile(new StringBuilder("game/rulersRandom/rulersImages2/").append(CFG.getRescouresPath_Short()).append(Game.getCiv(i).iGroupID).append("/").append(Math.abs(Game.getCiv(i).ruler.BornYear) % NUM_OF_RANDOM_RULERS_2.get(Game.getCiv(i).iGroupID).intValue()).append(".png").toString()).exists() ? new Image(ImageManager.loadTexture_RGB888("game/rulersRandom/rulersImages2/" + CFG.getRescouresPath_Short() + Game.getCiv(i).iGroupID + "/" + (Math.abs(Game.getCiv(i).ruler.BornYear) % NUM_OF_RANDOM_RULERS_2.get(Game.getCiv(i).iGroupID).intValue()) + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge) : new Image(ImageManager.loadTexture_RGB888("game/rulersRandom/rulersImages2/" + CFG.getRescouresPath_Short_H() + Game.getCiv(i).iGroupID + "/" + (Math.abs(Game.getCiv(i).ruler.BornYear) % NUM_OF_RANDOM_RULERS_2.get(Game.getCiv(i).iGroupID).intValue()) + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
                }
                return FileManager.loadFile(new StringBuilder("game/rulersRandom/rulersImages/").append(CFG.getRescouresPath_Short()).append(Game.getCiv(i).iGroupID).append("/").append(Math.abs(Game.getCiv(i).ruler.BornYear) % NUM_OF_RANDOM_RULERS.get(Game.getCiv(i).iGroupID).intValue()).append(".png").toString()).exists() ? new Image(ImageManager.loadTexture_RGB888("game/rulersRandom/rulersImages/" + CFG.getRescouresPath_Short() + Game.getCiv(i).iGroupID + "/" + (Math.abs(Game.getCiv(i).ruler.BornYear) % NUM_OF_RANDOM_RULERS.get(Game.getCiv(i).iGroupID).intValue()) + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge) : new Image(ImageManager.loadTexture_RGB888("game/rulersRandom/rulersImages/" + CFG.getRescouresPath_Short_H() + Game.getCiv(i).iGroupID + "/" + (Math.abs(Game.getCiv(i).ruler.BornYear) % NUM_OF_RANDOM_RULERS.get(Game.getCiv(i).iGroupID).intValue()) + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return new Image(ImageManager.loadTexture_RGB888("game/rulersRandom/rulersImages/" + CFG.getRescouresPath_Short() + "0/0.png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
            }
        } catch (Exception unused) {
            return new Image(ImageManager.loadTexture_RGB888("game/rulersRandom/rulersImages/" + CFG.getRescouresPath_Short() + "0/0.png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        }
    }

    public static final void loadRulers(int i, int i2) {
        while (i < i2) {
            try {
                loadRuler(i, Game.getCiv(i).getCivTag(), false);
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
            i++;
        }
    }

    public static final void update_ChanceOfDeathOfRuler(int i) {
        try {
            if (characterDies(i, Game.getCiv(i).ruler.BornYear)) {
                deathOfRuler(i);
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
