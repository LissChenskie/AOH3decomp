package aoc.kingdoms.lukasz.map.province.data;

import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ProvinceData9Serializer implements Json.Serializer<ProvinceData9> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.badlogic.gdx.utils.Json.Serializer
    public ProvinceData9 read(Json json, JsonValue jsonValue, Class cls) {
        return new ProvinceData9();
    }

    @Override // com.badlogic.gdx.utils.Json.Serializer
    public void write(Json json, ProvinceData9 provinceData9, Class cls) {
        json.writeObjectStart();
        if (provinceData9.s != -1) {
            json.writeValue("s", Integer.valueOf(provinceData9.s));
        }
        if (provinceData9.e != 0) {
            json.writeValue("e", Integer.valueOf(provinceData9.e));
        }
        json.writeObjectEnd();
    }
}
