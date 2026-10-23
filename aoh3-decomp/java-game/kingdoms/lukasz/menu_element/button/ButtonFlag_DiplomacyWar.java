package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.MessageWar;
import aoc.kingdoms.lukasz.menusInGame.InGame_War;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonFlag_DiplomacyWar extends ButtonFlag_Diplomacy {
    public Color textColor;
    public String warKey;

    public ButtonFlag_DiplomacyWar(int i, int i2, int i3, boolean z, String str, Color color, String str2) {
        super(i, i2, i3, z);
        this.textColor = color;
        this.warKey = str2;
        setHeight(getHeight() + CFG.TEXT_HEIGHT + (CFG.PADDING * 2));
        this.fontID = CFG.FONT_REGULAR_SMALL;
        setText(str);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
    public void actionElement() {
        if (Game.menuManager.getVisibleInGame_War() && InGame_War.key.equals(this.warKey)) {
            Game.menuManager.setVisibleInGame_War(false);
            return;
        }
        Game.gameActiveProvince.resetLastActiveProvince();
        Game.setActiveProvinceID(-1);
        Game.clearActiveArmy();
        Game.menuManager.showInGame_Battle_HideMenus();
        InGame_War.key = this.warKey;
        Game.menuManager.rebuildInGame_War();
        if (Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_WAR_VIEW) {
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_WAR_VIEW);
        } else {
            Game.mapModes.updateWarView(InGame_War.key);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        this.menuElementHover = MessageWar.getHoverWar(this.warKey, this.iCivID);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.75f));
        Images.gradientFull.draw(spriteBatch, getPosX() + CFG.PADDING + i, getPosY() + ImageManager.getImage(Images.flagDiplomacyOver).getHeight() + (CFG.PADDING / 2) + i2, getWidth() - (CFG.PADDING * 2), this.iTextHeight + CFG.PADDING);
        spriteBatch.setColor(Color.WHITE);
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, getTextToDraw(), ((getPosX() + (getWidth() / 2)) - (this.iTextWidth / 2)) + i, getPosY() + ImageManager.getImage(Images.flagDiplomacyOver).getHeight() + CFG.PADDING + i2, getColor(z));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        return getIsHovered() ? Colors.getColorTopStats3(z, getIsHovered()) : this.textColor;
    }
}
