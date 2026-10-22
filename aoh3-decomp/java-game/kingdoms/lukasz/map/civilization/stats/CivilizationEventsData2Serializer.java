package aoc.kingdoms.lukasz.map.civilization.stats;

import aoc.kingdoms.lukasz.menusEditor.RJR.ATsAGKCnv;
import com.badlogic.gdx.graphics.g3d.model.ia.uNBYrZVGzy;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class CivilizationEventsData2Serializer implements Json.Serializer<CivilizationEventsData2> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.badlogic.gdx.utils.Json.Serializer
    public CivilizationEventsData2 read(Json json, JsonValue jsonValue, Class cls) {
        CivilizationEventsData2 civilizationEventsData2 = new CivilizationEventsData2();
        civilizationEventsData2.b = jsonValue.getInt(ATsAGKCnv.KdcMcZRJkaOUc, 0);
        civilizationEventsData2.a = jsonValue.getInt("a", 0);
        civilizationEventsData2.e = jsonValue.getInt("e", 0);
        civilizationEventsData2.m = jsonValue.getInt(uNBYrZVGzy.pROnmJFacxnm, 0);
        civilizationEventsData2.c = jsonValue.getInt("c", 0);
        return civilizationEventsData2;
    }

    @Override // com.badlogic.gdx.utils.Json.Serializer
    public void write(Json json, CivilizationEventsData2 civilizationEventsData2, Class cls) {
        json.writeObjectStart();
        if (civilizationEventsData2.b != 0) {
            json.writeValue("b", Integer.valueOf(civilizationEventsData2.b));
        }
        if (civilizationEventsData2.a != 0) {
            json.writeValue("a", Integer.valueOf(civilizationEventsData2.a));
        }
        if (civilizationEventsData2.e != 0) {
            json.writeValue("e", Integer.valueOf(civilizationEventsData2.e));
        }
        if (civilizationEventsData2.m != 0) {
            json.writeValue("m", Integer.valueOf(civilizationEventsData2.m));
        }
        if (civilizationEventsData2.c != 0) {
            json.writeValue("c", Integer.valueOf(civilizationEventsData2.c));
        }
        json.writeObjectEnd();
    }
}
