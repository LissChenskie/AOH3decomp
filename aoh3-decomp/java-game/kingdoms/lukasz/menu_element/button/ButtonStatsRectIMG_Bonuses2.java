package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.textures.ImageManager;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonStatsRectIMG_Bonuses2 extends ButtonStatsRectIMG_Bonuses {
    public ButtonStatsRectIMG_Bonuses2(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
        init(str, CFG.FONT_REGULAR_SMALL, 0, i2, i3, i4, i5, true, true, false, false);
        this.imageID = i;
        this.maxIconWidth = i6;
        float imageScale = getImageScale(i) * 1.2f;
        this.iconWidth = (int) (ImageManager.getImage(i).getWidth() * imageScale);
        this.iconHeight = (int) (ImageManager.getImage(i).getHeight() * imageScale);
        this.sText2 = str2;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_BOLD_SMALL), str2);
        this.iTextBonusW = (int) Renderer.glyphLayout.width;
    }
}
