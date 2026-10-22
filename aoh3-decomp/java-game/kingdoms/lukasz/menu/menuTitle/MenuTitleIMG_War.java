package aoc.kingdoms.lukasz.menu.menuTitle;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.GlyphLayout_Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.war.WarManager;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menusInGame.InGame_War;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MenuTitleIMG_War extends MenuTitle {
    public int iLastTurnID;
    public int iText2Width;
    public int iTextLeftWidth;
    public int iTextLeftWidth2;
    public int iTextRightWidth;
    public int iTextRightWidth2;
    public int imageID;
    public String sText2;
    public String sTextLeft;
    public String sTextLeft2;
    public String sTextRight;
    public String sTextRight2;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_War$1, reason: invalid class name */
    class AnonymousClass1 extends Game.SimpleTask {
        AnonymousClass1(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_Wars();
        }
    }

    public MenuTitleIMG_War(String str, String str2, String str3, String str4, String str5, boolean z, boolean z2, int i) {
        super(str, ImageManager.getImage(i).getHeight(), z, z2);
        this.iTextLeftWidth = 0;
        this.iTextRightWidth = 0;
        this.iTextLeftWidth2 = 0;
        this.iTextRightWidth2 = 0;
        this.iText2Width = 0;
        this.iLastTurnID = 0;
        this.imageID = i;
        this.sTextLeft = str2;
        GlyphLayout_Game glyphLayout_Game = new GlyphLayout_Game();
        glyphLayout_Game.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), str2);
        this.iTextLeftWidth = (int) glyphLayout_Game.width;
        this.sTextRight = str3;
        glyphLayout_Game.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), str3);
        this.iTextRightWidth = (int) glyphLayout_Game.width;
        this.sTextLeft2 = str4;
        glyphLayout_Game.setText(Renderer.fontMain.get(CFG.FONT_BOLD_SMALL), str4);
        this.iTextLeftWidth2 = (int) glyphLayout_Game.width;
        this.sTextRight2 = str5;
        glyphLayout_Game.setText(Renderer.fontMain.get(CFG.FONT_BOLD_SMALL), str5);
        this.iTextRightWidth2 = (int) glyphLayout_Game.width;
        try {
            this.sText2 = Game_Calendar.getNumOfDates_ByTurnID(WarManager.lWars.get(InGame_War.key).iWarTurnID);
            glyphLayout_Game.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), this.sText2);
            this.iText2Width = (int) glyphLayout_Game.width;
        } catch (Exception unused) {
            Game.menuManager.setVisibleInGame_War(false);
        }
        this.iLastTurnID = Game_Calendar.TURN_ID;
    }

    @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
    public void draw(SpriteBatch spriteBatch, int i, int i2, int i3, Status status) {
        ImageManager.getImage(this.imageID).draw(spriteBatch, i, i2 - getHeight(), i3, getHeight());
        drawGradient(spriteBatch, i, i2, i3, status);
        drawText(spriteBatch, i, i2, i3, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
    public void drawText(SpriteBatch spriteBatch, int i, int i2, int i3, Status status) {
        if (this.iLastTurnID != Game_Calendar.TURN_ID) {
            try {
                if (WarManager.lWars.containsKey(InGame_War.key)) {
                    this.sText2 = Game_Calendar.getNumOfDates_ByTurnID(WarManager.lWars.get(InGame_War.key).iWarTurnID);
                    Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), this.sText2);
                    this.iText2Width = (int) Renderer.glyphLayout.width;
                    this.iLastTurnID = Game_Calendar.TURN_ID;
                }
            } catch (Exception e) {
                if (!WarManager.lWars.containsKey(InGame_War.key)) {
                    Game.addSimpleTask(new AnonymousClass1("rebuildInGame_Wars"));
                }
                CFG.exceptionStack(e);
            }
        }
        int i4 = i + (i3 / 2);
        int i5 = i2 + 1;
        Renderer.drawText(spriteBatch, this.fontID, getText(), i4 - (getTextWidth() / 2), (i5 - getHeight()) + ((getHeight() / 2) - getTextHeight()), getColorText(status));
        Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, this.sText2, i4 - (this.iText2Width / 2), (i5 - getHeight()) + (getHeight() / 2) + CFG.PADDING, MenuTitle.colorHovered);
        Renderer.drawText(spriteBatch, CFG.FONT_BOLD_SMALL, this.sTextLeft2, ((i + CFG.PADDING) + (ImageManager.getImage(Images.rulerFrame).getWidth() / 2)) - (this.iTextLeftWidth2 / 2), (i5 - getHeight()) + (getHeight() / 2) + CFG.PADDING, MenuTitle.colorDefault);
        int i6 = i + i3;
        Renderer.drawText(spriteBatch, CFG.FONT_BOLD_SMALL, this.sTextRight2, (((i6 - Images.boxTitleBORDERWIDTH) - CFG.PADDING) - (ImageManager.getImage(Images.rulerFrame).getWidth() / 2)) - (this.iTextRightWidth2 / 2), (i5 - getHeight()) + (getHeight() / 2) + CFG.PADDING, MenuTitle.colorDefault);
        if (status == Status.HOVERED || status == Status.ACTIVE) {
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, this.sTextLeft, ((i + CFG.PADDING) + (ImageManager.getImage(Images.rulerFrame).getWidth() / 2)) - (this.iTextLeftWidth / 2), (i5 - getHeight()) + ((getHeight() / 2) - getTextHeight()), MenuTitle.colorDefault);
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, this.sTextRight, (((i6 - Images.boxTitleBORDERWIDTH) - CFG.PADDING) - (ImageManager.getImage(Images.rulerFrame).getWidth() / 2)) - (this.iTextRightWidth / 2), (i5 - getHeight()) + ((getHeight() / 2) - getTextHeight()), MenuTitle.colorDefault);
        }
    }
}
