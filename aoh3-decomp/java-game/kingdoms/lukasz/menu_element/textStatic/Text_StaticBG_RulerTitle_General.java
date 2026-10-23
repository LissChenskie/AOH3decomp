package aoc.kingdoms.lukasz.menu_element.textStatic;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Text_StaticBG_RulerTitle_General extends Text_StaticBG_RulerTitle {
    public int iCivID;
    public int iProvinceID;
    public String key;

    public Text_StaticBG_RulerTitle_General(String str, int i, int i2, int i3, int i4, int i5, int i6) {
        super(str, i, i2, i3, i4);
        this.iProvinceID = i5;
        this.iCivID = i6;
    }

    public Text_StaticBG_RulerTitle_General(String str, int i, int i2, int i3, int i4, String str2, int i5, int i6) {
        super(str, i, i2, i3, i4);
        this.key = str2;
        this.iProvinceID = i5;
        this.iCivID = i6;
    }
}
