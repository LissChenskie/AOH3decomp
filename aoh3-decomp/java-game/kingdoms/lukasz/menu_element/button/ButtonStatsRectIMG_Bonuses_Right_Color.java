package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.GlyphLayout_Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.textures.ImageManager;
import com.badlogic.gdx.graphics.Color;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonStatsRectIMG_Bonuses_Right_Color extends ButtonStatsRectIMG_Bonuses_Right {
    public Color bonusColors;

    public ButtonStatsRectIMG_Bonuses_Right_Color(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
        init(str, CFG.FONT_REGULAR_SMALL, 0, i2, i3, i4, i5, true, true, false, false);
        this.sText_Orginal = str;
        this.fontID2 = CFG.FONT_BOLD_SMALL;
        this.imageID = i;
        this.maxIconWidth = i6;
        float imageScale = getImageScale(i) * 1.2f;
        this.iconWidth = (int) (ImageManager.getImage(i).getWidth() * imageScale);
        this.iconHeight = (int) (ImageManager.getImage(i).getHeight() * imageScale);
        this.sText2 = str2;
        GlyphLayout_Game glyphLayout_Game = new GlyphLayout_Game();
        glyphLayout_Game.setText(Renderer.fontMain.get(this.fontID2), str2);
        this.iTextBonusW = (int) glyphLayout_Game.width;
        int i7 = 0;
        while (this.iTextWidth >= getWidth() - (((CFG.PADDING * 6) + i6) + this.iTextBonusW) && getText().length() > 5 && (i7 = i7 + 1) < 100) {
            setText(getText().substring(0, Math.max(1, getText().length() - 3)) + ".");
        }
        this.bonusColors = Colors.HOVER_POSITIVE;
    }

    public ButtonStatsRectIMG_Bonuses_Right_Color(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, Color color) {
        init(str, CFG.FONT_REGULAR_SMALL, 0, i2, i3, i4, i5, true, true, false, false);
        this.sText_Orginal = str;
        this.fontID2 = CFG.FONT_BOLD_SMALL;
        this.imageID = i;
        this.maxIconWidth = i6;
        float imageScale = getImageScale(i) * 1.2f;
        this.iconWidth = (int) (ImageManager.getImage(i).getWidth() * imageScale);
        this.iconHeight = (int) (ImageManager.getImage(i).getHeight() * imageScale);
        this.sText2 = str2;
        GlyphLayout_Game glyphLayout_Game = new GlyphLayout_Game();
        glyphLayout_Game.setText(Renderer.fontMain.get(this.fontID2), str2);
        this.iTextBonusW = (int) glyphLayout_Game.width;
        int i7 = 0;
        while (this.iTextWidth >= getWidth() - (((CFG.PADDING * 6) + i6) + this.iTextBonusW) && getText().length() > 5 && (i7 = i7 + 1) < 100) {
            setText(getText().substring(0, Math.max(1, getText().length() - 3)) + ".");
        }
        this.bonusColors = color;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Right
    public Color getColorBonus() {
        return this.bonusColors;
    }
}
