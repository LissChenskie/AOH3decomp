package aoc.kingdoms.lukasz.map.civilization.save;

import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class CivData4Serializer implements Json.Serializer<CivData4> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.badlogic.gdx.utils.Json.Serializer
    public CivData4 read(Json json, JsonValue jsonValue, Class cls) {
        return new CivData4();
    }

    @Override // com.badlogic.gdx.utils.Json.Serializer
    public void write(Json json, CivData4 civData4, Class cls) {
        json.writeObjectStart();
        if (civData4.c != 0) {
            json.writeValue("c", Integer.valueOf(civData4.c));
        }
        if (civData4.g != 0) {
            json.writeValue("g", Integer.valueOf(civData4.g));
        }
        if (civData4.m != 0) {
            json.writeValue("m", Integer.valueOf(civData4.m));
        }
        if (civData4.s != 0) {
            json.writeValue("s", Integer.valueOf(civData4.s));
        }
        if (civData4.n != 0) {
            json.writeValue("n", Integer.valueOf(civData4.n));
        }
        if (civData4.u != 0) {
            json.writeValue("u", Integer.valueOf(civData4.u));
        }
        if (civData4.b != 0) {
            json.writeValue("b", Integer.valueOf(civData4.b));
        }
        if (civData4.t != 1) {
            json.writeValue("t", Integer.valueOf(civData4.t));
        }
        if (civData4.r != 1) {
            json.writeValue("r", Integer.valueOf(civData4.r));
        }
        if (civData4.y != 1) {
            json.writeValue("y", Integer.valueOf(civData4.y));
        }
        if (civData4.e != -1) {
            json.writeValue("e", Integer.valueOf(civData4.e));
        }
        if (civData4.d != 0) {
            json.writeValue("d", Integer.valueOf(civData4.d));
        }
        if (civData4.v != 0) {
            json.writeValue("v", Integer.valueOf(civData4.v));
        }
        json.writeObjectEnd();
    }
}
