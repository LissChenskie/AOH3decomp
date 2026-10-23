package aoc.kingdoms.lukasz.map.civilization.stats;

import aoc.kingdoms.lukasz.map.terrain.exjB.uiwPYaNhJS;
import aoc.kingdoms.lukasz.menusEditor.RJR.ATsAGKCnv;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class CivilizationEventsData3Serializer implements Json.Serializer<CivilizationEventsData3> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.badlogic.gdx.utils.Json.Serializer
    public CivilizationEventsData3 read(Json json, JsonValue jsonValue, Class cls) {
        CivilizationEventsData3 civilizationEventsData3 = new CivilizationEventsData3();
        civilizationEventsData3.a = jsonValue.getInt("a", 0);
        civilizationEventsData3.p = jsonValue.getInt(ATsAGKCnv.MdUjHBX, 0);
        return civilizationEventsData3;
    }

    @Override // com.badlogic.gdx.utils.Json.Serializer
    public void write(Json json, CivilizationEventsData3 civilizationEventsData3, Class cls) {
        json.writeObjectStart();
        if (civilizationEventsData3.a != 0) {
            json.writeValue("a", Integer.valueOf(civilizationEventsData3.a));
        }
        if (civilizationEventsData3.p != 0) {
            json.writeValue(uiwPYaNhJS.lKUJ, Integer.valueOf(civilizationEventsData3.p));
        }
        json.writeObjectEnd();
    }
}
