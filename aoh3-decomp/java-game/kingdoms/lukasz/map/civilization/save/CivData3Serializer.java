package aoc.kingdoms.lukasz.map.civilization.save;

import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class CivData3Serializer implements Json.Serializer<CivData3> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.badlogic.gdx.utils.Json.Serializer
    public CivData3 read(Json json, JsonValue jsonValue, Class cls) {
        return new CivData3();
    }

    @Override // com.badlogic.gdx.utils.Json.Serializer
    public void write(Json json, CivData3 civData3, Class cls) {
        json.writeObjectStart();
        if (civData3.a != 0) {
            json.writeValue("a", Integer.valueOf(civData3.a));
        }
        if (civData3.w != 0.0f) {
            json.writeValue("w", Float.valueOf(civData3.w));
        }
        if (civData3.e != 0.0f) {
            json.writeValue("e", Float.valueOf(civData3.e));
        }
        if (civData3.t != 0.0f) {
            json.writeValue("t", Float.valueOf(civData3.t));
        }
        if (civData3.c != 0.0f) {
            json.writeValue("c", Float.valueOf(civData3.c));
        }
        json.writeObjectEnd();
    }
}
