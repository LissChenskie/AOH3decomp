package aoc.kingdoms.lukasz.jakowski;

import androidx.arch.core.ht.qIuEvFbUtcea;
import com.badlogic.gdx.net.HttpResponseHeader;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.Json;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Game_Ages {
    public int iAgesSize;
    public List<Data_Ages> lAges = new ArrayList();
    public String sBC;

    public static class ConfigAgesData {
        public ArrayList Age;
        public String Age_of_History;
    }

    public static class Data_Ages {
        public int AGE_BeginningYear;
        public int AGE_EndYear;
        public int AI_CONQUER_OWN_VASSALS_IF_OVER;
        public boolean BATTLE_SOUND_2;
        public int CHARACTERS_EXTRA_LIFE_EXPECTANCY;
        public float DISEASE_CHANCE;
        public boolean ENABLE_NON_KINGS_IMG;
        public boolean FLAG_BELOW;
        public int[] FLAG_GROUP;
        public boolean FORCE_NON_KINGS_IMG;
        public int GAME_DAYS_PER_TURN;
        public boolean NEW_GAME_ADVANTAGES;
        public String Name;
        public int OVER_IMAGE_ID;
        public int POPULATION_GROWTH_PER_MONTH;
        public int REGIMENTS_LIMIT_BASE_VALUE;
        public int REGIMENT_SIZE;
        public float RIVALS_DISTANCE;
        public int SHIP_GROUP;
        public boolean UQ_UI;
        public boolean VASSALS;
    }

    public static String getDemandVassalization() {
        return Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).VASSALS ? "DemandVassalization" : "DemandPuppetState";
    }

    public static String getLiberateAVassal() {
        return Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).VASSALS ? "LiberateAVassal" : "LiberateCivilization";
    }

    public static String getLord() {
        return Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).VASSALS ? "Lord" : "ControllingCivilization";
    }

    public static String getManageVassals() {
        return Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).VASSALS ? "ManageVassals" : "ManageSubjects";
    }

    public static String getPlayAsAReleasedVassal() {
        return Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).VASSALS ? "PlayAsAReleasedVassal" : "PlayAsReleasedCivilization";
    }

    public static String getReleaseAVassal() {
        return Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).VASSALS ? "ReleaseAVassal" : "ReleasePuppetState";
    }

    public static String getVassal() {
        return Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).VASSALS ? "Vassal" : "Puppet";
    }

    public static String getVassals() {
        return Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).VASSALS ? "Vassals" : qIuEvFbUtcea.FJCBVnM;
    }

    public final int getAgeOfYear(int i) {
        for (int i2 = 0; i2 < this.lAges.size() - 1; i2++) {
            if (this.lAges.get(i2).AGE_BeginningYear <= i && this.lAges.get(i2).AGE_EndYear >= i) {
                return i2;
            }
        }
        return this.lAges.size() - 1;
    }

    public final float getAge_DiseaseChance(int i) {
        return this.lAges.get(i).DISEASE_CHANCE;
    }

    public final int getAge_TurnDays(int i) {
        return (int) (this.lAges.get(i).GAME_DAYS_PER_TURN * Game_Calendar.GAME_SPEED);
    }

    protected final int getAgesSize() {
        return this.iAgesSize;
    }

    protected final String getBC() {
        return this.sBC;
    }

    public final String getYear(int i) {
        StringBuilder sb;
        StringBuilder sbAppend;
        if (i < 0) {
            sb = new StringBuilder("");
            sbAppend = sb.append(-i).append(" ").append(getBC());
        } else {
            sb = new StringBuilder("");
            sbAppend = sb.append(i);
        }
        return sbAppend.toString();
    }

    public final void loadAges() {
        try {
            String string = FileManager.loadFile("game/Ages.json").readString();
            Json json = new Json();
            json.setElementType(ConfigAgesData.class, HttpResponseHeader.Age, Data_Ages.class);
            new ConfigAgesData();
            Iterator it = ((ConfigAgesData) json.fromJson(ConfigAgesData.class, string)).Age.iterator();
            while (it.hasNext()) {
                this.lAges.add((Data_Ages) it.next());
            }
        } catch (GdxRuntimeException e) {
            CFG.exceptionStack(e);
        }
        this.sBC = Game.lang.get("BeforeChrist");
        this.iAgesSize = this.lAges.size();
        for (int i = 0; i < this.iAgesSize; i++) {
            this.lAges.get(i).Name = Game.lang.get(this.lAges.get(i).Name);
        }
    }

    protected final void updateLanguage() {
        loadAges();
    }
}
