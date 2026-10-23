package aoc.kingdoms.lukasz.map.plague;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.Json;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class PlagueManager {
    public static List<Plague> activePlagues = new ArrayList();
    public static List<Data_Disease> lPlagues = new ArrayList();
    public static int iPlaguesSize = 0;
    public static List<Image> plagueImages = new ArrayList();
    public static List<Image> plagueImagesBig = new ArrayList();

    public static class ConfigDiseaseData {
        public String Age_of_History;
        public ArrayList Disease;
    }

    public static class Data_Disease {
        public float B;
        public int BeginningYear;
        public float DEATH_RATE_EXTRA;
        public float DEATH_RATE_MIN;
        public float DEVASTATION;
        public int DURATION_TURNS_EXTRA;
        public int DURATION_TURNS_MIN;
        public float EXPANSION_MODIFIER;
        public float EXPANSION_MODIFIER_EXTRA;
        public int EndYear;
        public float G;
        public int ImageID;
        public String Name;
        public float OUTBREAK_CHANCE;
        public int OUTBREAK_PROVINCES;
        public int OUTBREAK_PROVINCES_EXTRA;
        public float OUTBREAK_SCORE_DEVASTATION;
        public float OUTBREAK_SCORE_ECONOMY;
        public float OUTBREAK_SCORE_INFRASTRUCTURE;
        public float OUTBREAK_SCORE_POPULATION;
        public float R;
    }

    public static final void loadDiseases() {
        try {
            String string = FileManager.loadFile("game/diseases/Diseases.json").readString();
            Json json = new Json();
            json.setElementType(ConfigDiseaseData.class, "Disease", Data_Disease.class);
            Iterator it = ((ConfigDiseaseData) json.fromJson(ConfigDiseaseData.class, string)).Disease.iterator();
            while (it.hasNext()) {
                lPlagues.add((Data_Disease) it.next());
            }
        } catch (GdxRuntimeException e) {
            CFG.exceptionStack(e);
        }
        iPlaguesSize = lPlagues.size();
        loadPlagueImages();
    }

    public static final void loadPlagueImages() {
        int i = Integer.parseInt(FileManager.loadFile("game/diseases/images/numOfImages.txt").readString());
        for (int i2 = 0; i2 < i; i2++) {
            if (FileManager.loadFile("game/diseases/images/" + CFG.getRescouresPath_Short() + i2 + ".png").exists()) {
                plagueImages.add(new Image(ImageManager.loadTexture("game/diseases/images/" + CFG.getRescouresPath_Short() + i2 + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge));
                plagueImagesBig.add(new Image(ImageManager.loadTexture("game/diseases/images/" + CFG.getRescouresPath_Short() + i2 + "b.png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge));
            } else {
                plagueImages.add(new Image(ImageManager.loadTexture("game/diseases/images/" + CFG.getRescouresPath_Short_H() + i2 + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge));
                plagueImagesBig.add(new Image(ImageManager.loadTexture("game/diseases/images/" + CFG.getRescouresPath_Short_H() + i2 + "b.png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge));
            }
        }
    }

    public static final void runPlagues() {
        try {
            for (int size = activePlagues.size() - 1; size >= 0; size--) {
                try {
                    activePlagues.get(size).runDisease();
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
            for (int size2 = activePlagues.size() - 1; size2 >= 0; size2--) {
                try {
                    Plague plague = activePlagues.get(size2);
                    int i = plague.iDurationTurnsLeft - 1;
                    plague.iDurationTurnsLeft = i;
                    if (i < 1 && activePlagues.get(size2).lProvinces_Active.size() == 0) {
                        for (int i2 = size2 + 1; i2 < activePlagues.size(); i2++) {
                            for (int i3 = 0; i3 < activePlagues.get(i2).lProvinces_Active.size(); i3++) {
                                if (Game.getProvince(activePlagues.get(i2).lProvinces_Active.get(i3).intValue()).provincePlague != null && Game.getProvince(activePlagues.get(i2).lProvinces_Active.get(i3).intValue()).provincePlague.id == activePlagues.get(i2).getPlagueID_InGame()) {
                                    Game.getProvince(activePlagues.get(i2).lProvinces_Active.get(i3).intValue()).provincePlague.id--;
                                }
                            }
                            activePlagues.get(i2).setPlagueID_InGame(activePlagues.get(i2).getPlagueID_InGame() - 1);
                        }
                        activePlagues.remove(size2);
                    }
                } catch (Exception e2) {
                    CFG.exceptionStack(e2);
                }
            }
            for (int size3 = activePlagues.size() - 1; size3 >= 0; size3--) {
                activePlagues.get(size3).spreadDisease();
            }
        } catch (Exception e3) {
            CFG.exceptionStack(e3);
        }
    }

    public static final void startDisease() {
        if (Game.oR.nextInt(GameValues.plagues.DISEASE_OUTBREAK_RANDOM) < GameValues.plagues.DISEASE_OUTBREAK_RANDOM * Game.gameAges.getAge_DiseaseChance(Game_Calendar.CURRENT_AGEID)) {
            ArrayList arrayList = new ArrayList();
            int iNextInt = 0;
            int i = 0;
            for (int i2 = 0; i2 < iPlaguesSize; i2++) {
                if (Game_Calendar.currentYear >= lPlagues.get(i2).BeginningYear && Game_Calendar.currentYear <= lPlagues.get(i2).EndYear) {
                    arrayList.add(Integer.valueOf(i2));
                    i = (int) (i + (lPlagues.get(i2).OUTBREAK_CHANCE * GameValues.plagues.DISEASE_OUTBREAK_MODIFY));
                }
            }
            if (arrayList.size() > 0) {
                if (i > 0) {
                    int i3 = 0;
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        i3 += (int) (lPlagues.get(((Integer) arrayList.get(size)).intValue()).OUTBREAK_CHANCE * GameValues.plagues.DISEASE_OUTBREAK_MODIFY);
                        if (i3 > Game.oR.nextInt(i)) {
                            iNextInt = size;
                            break;
                        }
                    }
                } else {
                    iNextInt = Game.oR.nextInt(arrayList.size());
                }
                startDisease(((Integer) arrayList.get(iNextInt)).intValue());
            }
        }
    }

    private static final void startDisease(int i) {
        try {
            int iNextInt = lPlagues.get(i).OUTBREAK_PROVINCES;
            if (lPlagues.get(i).OUTBREAK_PROVINCES_EXTRA > 0) {
                iNextInt += Game.oR.nextInt(lPlagues.get(i).OUTBREAK_PROVINCES_EXTRA);
            }
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < Game.getProvincesSize(); i2++) {
                if (Game.getProvince(i2).getWasteland() < 0 && !Game.getProvince(i2).getSeaProvince() && Game.getProvince(i2).getCivID() > 0 && Game.getProvince(i2).provincePlague == null && Game_Calendar.TURN_ID - Game.getProvinceData10(i2).t > GameValues.plagues.PLAGUE_PAUSE_FOR_X_DAYS) {
                    arrayList.add(Integer.valueOf(i2));
                }
            }
            if (arrayList.size() > 0) {
                ArrayList arrayList2 = new ArrayList();
                int iMin = ((int) (Math.min(lPlagues.get(i).DEATH_RATE_MIN, 1.0f) * 10.0f)) + 8;
                while (arrayList.size() > 0) {
                    int i3 = iMin - 1;
                    if (iMin <= 0) {
                        break;
                    }
                    int iNextInt2 = Game.oR.nextInt(arrayList.size());
                    arrayList2.add((Integer) arrayList.get(iNextInt2));
                    arrayList.remove(iNextInt2);
                    iMin = i3;
                }
                arrayList.clear();
                if (arrayList2.size() > 0) {
                    ArrayList arrayList3 = new ArrayList();
                    float economyWithBonuses = 0.0f;
                    float infrastructure = 0.0f;
                    float devastation = 0.0f;
                    int populationTotal = 0;
                    for (int size = arrayList2.size() - 1; size >= 0; size--) {
                        if (Game.getProvince(((Integer) arrayList2.get(size)).intValue()).getPopulationTotal() > populationTotal) {
                            populationTotal = Game.getProvince(((Integer) arrayList2.get(size)).intValue()).getPopulationTotal();
                        }
                        if (Game.getProvince(((Integer) arrayList2.get(size)).intValue()).getEconomyWithBonuses() > economyWithBonuses) {
                            economyWithBonuses = Game.getProvince(((Integer) arrayList2.get(size)).intValue()).getEconomyWithBonuses();
                        }
                        if (Game.getProvince(((Integer) arrayList2.get(size)).intValue()).getInfrastructure() > infrastructure) {
                            infrastructure = Game.getProvince(((Integer) arrayList2.get(size)).intValue()).getInfrastructure();
                        }
                        if (Game.getProvince(((Integer) arrayList2.get(size)).intValue()).getDevastation() > devastation) {
                            devastation = Game.getProvince(((Integer) arrayList2.get(size)).intValue()).getDevastation();
                        }
                    }
                    for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
                        arrayList3.add(Float.valueOf(((lPlagues.get(i).OUTBREAK_SCORE_POPULATION * Game.getProvince(((Integer) arrayList2.get(size2)).intValue()).getPopulationTotal()) / populationTotal) + ((lPlagues.get(i).OUTBREAK_SCORE_ECONOMY * Game.getProvince(((Integer) arrayList2.get(size2)).intValue()).getEconomyWithBonuses()) / economyWithBonuses) + (lPlagues.get(i).OUTBREAK_SCORE_INFRASTRUCTURE - ((lPlagues.get(i).OUTBREAK_SCORE_INFRASTRUCTURE * Game.getProvince(((Integer) arrayList2.get(size2)).intValue()).getInfrastructure()) / infrastructure)) + ((lPlagues.get(i).OUTBREAK_SCORE_DEVASTATION * Game.getProvince(((Integer) arrayList2.get(size2)).intValue()).getDevastation()) / devastation)));
                    }
                    int i4 = 0;
                    for (int size3 = arrayList3.size() - 1; size3 > 0; size3--) {
                        if (((Float) arrayList3.get(i4)).floatValue() < ((Float) arrayList3.get(size3)).floatValue()) {
                            i4 = size3;
                        }
                    }
                    int size4 = activePlagues.size();
                    activePlagues.add(new Plague(((Integer) arrayList2.get(i4)).intValue(), lPlagues.get(i).Name, lPlagues.get(i).R / 255.0f, lPlagues.get(i).G / 255.0f, lPlagues.get(i).B / 255.0f, size4, (Game.oR.nextInt((int) ((lPlagues.get(i).DEATH_RATE_EXTRA * 100000.0f) + 1.0f)) / 100000.0f) + lPlagues.get(i).DEATH_RATE_MIN, lPlagues.get(i).DURATION_TURNS_MIN + (lPlagues.get(i).DURATION_TURNS_EXTRA > 0 ? Game.oR.nextInt(lPlagues.get(i).DURATION_TURNS_EXTRA) : 0), lPlagues.get(i).EXPANSION_MODIFIER + (Game.oR.nextInt((int) ((lPlagues.get(i).EXPANSION_MODIFIER_EXTRA * 100000.0f) + 1.0f)) / 100000.0f), lPlagues.get(i).ImageID, lPlagues.get(i).DEVASTATION));
                    arrayList2.clear();
                    arrayList3.clear();
                    int i5 = iNextInt - 1;
                    if (i5 > 0) {
                        activePlagues.get(size4).spreadDisease(i5);
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
