package aoc.kingdoms.lukasz.menu_element.textStatic;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Text_StaticBG_ID extends Text_StaticBG {
    public int id;

    public Text_StaticBG_ID(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        super(str, i, i2, i3, i4, i5, i6);
        this.id = i7;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static, aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getCurrent() {
        return this.id;
    }
}
