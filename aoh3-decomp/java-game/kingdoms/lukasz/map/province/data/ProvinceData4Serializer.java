package aoc.kingdoms.lukasz.map.province.data;

import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ProvinceData4Serializer implements Json.Serializer<ProvinceData4> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.badlogic.gdx.utils.Json.Serializer
    public ProvinceData4 read(Json json, JsonValue jsonValue, Class cls) {
        return new ProvinceData4();
    }

    @Override // com.badlogic.gdx.utils.Json.Serializer
    public void write(Json json, ProvinceData4 provinceData4, Class cls) {
        json.writeObjectStart();
        if (provinceData4.u) {
            json.writeValue("u", Boolean.valueOf(provinceData4.u));
        }
        if (provinceData4.s != 0.0f) {
            json.writeValue("s", Float.valueOf(provinceData4.s));
        }
        json.writeObjectEnd();
    }
}
