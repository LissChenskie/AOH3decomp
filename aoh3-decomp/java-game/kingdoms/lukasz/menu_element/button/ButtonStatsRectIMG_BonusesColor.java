package aoc.kingdoms.lukasz.menu_element.button;

import com.badlogic.gdx.graphics.Color;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonStatsRectIMG_BonusesColor extends ButtonStatsRectIMG_Bonuses {
    public Color bonusColors;

    public ButtonStatsRectIMG_BonusesColor(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, Color color) {
        super(str, str2, i, i2, i3, i4, i5, i6);
        this.bonusColors = color;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
    public Color getColorBonus() {
        return this.bonusColors;
    }
}
