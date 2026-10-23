package aoc.kingdoms.lukasz.map.civilization.stats;

import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class CivilizationEventsDataSerializer implements Json.Serializer<CivilizationEventsData> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.badlogic.gdx.utils.Json.Serializer
    public CivilizationEventsData read(Json json, JsonValue jsonValue, Class cls) {
        CivilizationEventsData civilizationEventsData = new CivilizationEventsData();
        civilizationEventsData.e = jsonValue.getInt("e", 0);
        civilizationEventsData.g = jsonValue.getInt("g", 0);
        civilizationEventsData.t = jsonValue.getInt("t", 0);
        civilizationEventsData.m = jsonValue.getInt("m", 0);
        civilizationEventsData.d = jsonValue.getInt("d", 0);
        return civilizationEventsData;
    }

    @Override // com.badlogic.gdx.utils.Json.Serializer
    public void write(Json json, CivilizationEventsData civilizationEventsData, Class cls) {
        json.writeObjectStart();
        if (civilizationEventsData.e != 0) {
            json.writeValue("e", Integer.valueOf(civilizationEventsData.e));
        }
        if (civilizationEventsData.g != 0) {
            json.writeValue("g", Integer.valueOf(civilizationEventsData.g));
        }
        if (civilizationEventsData.t != 0) {
            json.writeValue("t", Integer.valueOf(civilizationEventsData.t));
        }
        if (civilizationEventsData.m != 0) {
            json.writeValue("m", Integer.valueOf(civilizationEventsData.m));
        }
        if (civilizationEventsData.d != 0) {
            json.writeValue("d", Integer.valueOf(civilizationEventsData.d));
        }
        json.writeObjectEnd();
    }
}
