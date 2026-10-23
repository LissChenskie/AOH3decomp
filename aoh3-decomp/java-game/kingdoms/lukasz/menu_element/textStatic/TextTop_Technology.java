package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class TextTop_Technology extends TextTop {
    public float lastValue;
    public float lastValueResearch;

    public TextTop_Technology(int i, String str, String str2, int i2, int i3) {
        super(i, str, str2, i2, i3);
        this.lastValue = -997654.3f;
        this.lastValueResearch = -997654.3f;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextTop
    public boolean getIsActiveButton() {
        return Game.menuManager.getVisibleInGame_TechnologyChoose();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextTop, aoc.kingdoms.lukasz.menu_element.MenuElement
    public String getTextToDraw() {
        int i = 1;
        if (Game.getCiv(Game.player.iCivID).getActiveTechResearch() < 0) {
            if (this.lastValue != -997652.3f) {
                setText("---");
                this.lastValue = 997652.3f;
            }
        } else if (this.lastValue != Game.getCiv(Game.player.iCivID).getResearchProgress(Game.getCiv(Game.player.iCivID).getActiveTechResearch())) {
            setText("" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).getResearchProgress(Game.getCiv(Game.player.iCivID).getActiveTechResearch()) * 100.0f, 1) + "%");
            this.lastValue = Game.getCiv(Game.player.iCivID).getResearchProgress(Game.getCiv(Game.player.iCivID).getActiveTechResearch());
        }
        if (this.lastValueResearch != Game.getCiv(Game.player.iCivID).fResearchPerMonth) {
            StringBuilder sbAppend = new StringBuilder().append(Game.getCiv(Game.player.iCivID).fResearchPerMonth > 0.0f ? "+" : "");
            float f = Game.getCiv(Game.player.iCivID).fResearchPerMonth;
            if (Game.getCiv(Game.player.iCivID).fResearchPerMonth < 100.0f) {
                i = Game.getCiv(Game.player.iCivID).fResearchPerMonth < 10.0f ? 100 : 10;
            }
            setText2(sbAppend.append(CFG.getPrecision2(f, i)).toString());
            this.lastValueResearch = Game.getCiv(Game.player.iCivID).fResearchPerMonth;
        }
        return super.getTextToDraw();
    }
}
