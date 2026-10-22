package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonStatsRectIMG_ActiveBuilding extends ButtonStatsRectIMG_Active {
    public int building;
    public int buildingID;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_ActiveBuilding$1, reason: invalid class name */
    class AnonymousClass1 extends Game.SimpleTask {
        AnonymousClass1(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_BuildSavePos();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }
    }

    public ButtonStatsRectIMG_ActiveBuilding(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        super(str, i, i2, i3, i4, i5, i6, i7);
        this.building = i8;
        this.buildingID = i9;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active, aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        float fUnderConstruction = Game.getProvince(getCurrent()).underConstruction(this.building, this.buildingID);
        if (fUnderConstruction >= 0.0f) {
            spriteBatch.setColor(new Color(ProvinceDraw.progressBar.r, ProvinceDraw.progressBar.g, ProvinceDraw.progressBar.b, 0.5f));
            Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
            if (fUnderConstruction < 0.99f) {
                spriteBatch.setColor(new Color(ProvinceDraw.progressBar));
                Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, (int) (getWidth() * (1.0f - fUnderConstruction)), getHeight(), 1.0f);
            }
            spriteBatch.setColor(Color.WHITE);
        } else {
            spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, getBoxAlpha(getClickable(), getIsHovered(), z)));
            Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
            spriteBatch.setColor(Color.WHITE);
        }
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, getBoxAlpha(getClickable(), getIsHovered(), z) / 2.0f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, ((getPosX() + getWidth()) - (this.maxIconWidth + (CFG.PADDING * 2))) + i, getPosY() + i2, (CFG.PADDING * 2) + this.maxIconWidth, getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        if (Game.getProvince(getCurrent()).buildingBuilt(this.building, this.buildingID)) {
            Game.addSimpleTask(new AnonymousClass1("rebuildBuilding2"));
        }
        if (getClickable() && getIsHovered() && animationState >= 0) {
            if (animationState == 0) {
                float fMin = Math.min(((CFG.currentTimeMillis - lTimeAnimation) * 1.0f) / 1000.0f, 1.0f);
                spriteBatch.setColor(ButtonGame.getColorLine());
                Images.line_32_off1.draw(spriteBatch, getPosX() + CFG.PADDING + i, getPosY() + 1 + i2, (int) ((getWidth() - (CFG.PADDING * 2)) * fMin), 1);
                Images.line_32_off1.draw(spriteBatch, getPosX() + CFG.PADDING + i, ((getPosY() + getHeight()) - 2) + i2, (int) ((getWidth() - (CFG.PADDING * 2)) * fMin), 1);
                if (lTimeAnimation < CFG.currentTimeMillis - 1000) {
                    animationState++;
                    lTimeAnimation = CFG.currentTimeMillis;
                }
            } else {
                float fMin2 = Math.min(((CFG.currentTimeMillis - lTimeAnimation) * 1.0f) / 1000.0f, 1.0f);
                spriteBatch.setColor(ButtonGame.getColorLine());
                Images.line_32_off1.draw(spriteBatch, getPosX() + CFG.PADDING + ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)) + i, getPosY() + 1 + i2, (getWidth() - (CFG.PADDING * 2)) - ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)), 1);
                Images.line_32_off1.draw(spriteBatch, getPosX() + CFG.PADDING + ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)) + i, ((getPosY() + getHeight()) - 2) + i2, (getWidth() - (CFG.PADDING * 2)) - ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)), 1);
                if (lTimeAnimation < CFG.currentTimeMillis - 1000) {
                    animationState = 0;
                    lTimeAnimation = CFG.currentTimeMillis;
                }
            }
            spriteBatch.setColor(Color.WHITE);
        }
    }
}
