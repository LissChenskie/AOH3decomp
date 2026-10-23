package aoc.kingdoms.lukasz.map.province.data;

import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ProvinceData6Serializer implements Json.Serializer<ProvinceData6> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.badlogic.gdx.utils.Json.Serializer
    public ProvinceData6 read(Json json, JsonValue jsonValue, Class cls) {
        return new ProvinceData6();
    }

    @Override // com.badlogic.gdx.utils.Json.Serializer
    public void write(Json json, ProvinceData6 provinceData6, Class cls) {
        json.writeObjectStart();
        json.writeValue("e", Float.valueOf(provinceData6.e));
        if (provinceData6.n != 0) {
            json.writeValue("n", Integer.valueOf(provinceData6.n));
        }
        json.writeObjectEnd();
    }
}
