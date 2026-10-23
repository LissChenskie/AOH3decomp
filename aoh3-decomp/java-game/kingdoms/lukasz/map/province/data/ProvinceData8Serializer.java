package aoc.kingdoms.lukasz.map.province.data;

import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ProvinceData8Serializer implements Json.Serializer<ProvinceData8> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.badlogic.gdx.utils.Json.Serializer
    public ProvinceData8 read(Json json, JsonValue jsonValue, Class cls) {
        return new ProvinceData8();
    }

    @Override // com.badlogic.gdx.utils.Json.Serializer
    public void write(Json json, ProvinceData8 provinceData8, Class cls) {
        json.writeObjectStart();
        if (provinceData8.w) {
            json.writeValue("w", Boolean.valueOf(provinceData8.w));
        }
        if (provinceData8.r != 0.0f) {
            json.writeValue("r", Float.valueOf(provinceData8.r));
        }
        json.writeObjectEnd();
    }
}
