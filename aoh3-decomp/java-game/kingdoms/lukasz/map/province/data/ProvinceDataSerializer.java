package aoc.kingdoms.lukasz.map.province.data;

import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ProvinceDataSerializer implements Json.Serializer<ProvinceData> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.badlogic.gdx.utils.Json.Serializer
    public ProvinceData read(Json json, JsonValue jsonValue, Class cls) {
        return new ProvinceData();
    }

    @Override // com.badlogic.gdx.utils.Json.Serializer
    public void write(Json json, ProvinceData provinceData, Class cls) {
        json.writeObjectStart();
        if (provinceData.c != 0) {
            json.writeValue("c", Integer.valueOf(provinceData.c));
        }
        if (provinceData.o != 0) {
            json.writeValue("o", Integer.valueOf(provinceData.o));
        }
        if (provinceData.w != -1) {
            json.writeValue("w", Integer.valueOf(provinceData.w));
        }
        json.writeObjectEnd();
    }
}
