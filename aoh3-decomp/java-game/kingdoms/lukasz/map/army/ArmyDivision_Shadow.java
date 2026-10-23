package aoc.kingdoms.lukasz.map.army;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.GlyphLayout_Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ArmyDivision_Shadow {
    public int extraY;
    public int iArmyWidth;
    public int iProvinceID;
    public String sArmy;

    public ArmyDivision_Shadow(String str, int i, int i2) {
        this.sArmy = str;
        this.iProvinceID = i;
        this.extraY = i2;
        updateArmyWidth_Just();
    }

    protected final void updateArmyWidth_Just() {
        try {
            GlyphLayout_Game glyphLayout_Game = new GlyphLayout_Game();
            glyphLayout_Game.setText(Renderer.fontArmy_GlyphLayout, this.sArmy);
            this.iArmyWidth = (int) glyphLayout_Game.width;
        } catch (Exception e) {
            CFG.exceptionStack(e);
            this.iArmyWidth = CFG.PADDING;
        }
    }
}
