package aoc.kingdoms.lukasz.map.province.data;

import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ProvinceData2Serializer implements Json.Serializer<ProvinceData2> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.badlogic.gdx.utils.Json.Serializer
    public ProvinceData2 read(Json json, JsonValue jsonValue, Class cls) {
        return new ProvinceData2();
    }

    @Override // com.badlogic.gdx.utils.Json.Serializer
    public void write(Json json, ProvinceData2 provinceData2, Class cls) {
        json.writeObjectStart();
        if (provinceData2.d != 0.0f) {
            json.writeValue("d", Float.valueOf(provinceData2.d));
        }
        if (provinceData2.l != 1.0f) {
            json.writeValue("l", Float.valueOf(provinceData2.l));
        }
        json.writeObjectEnd();
    }
}
