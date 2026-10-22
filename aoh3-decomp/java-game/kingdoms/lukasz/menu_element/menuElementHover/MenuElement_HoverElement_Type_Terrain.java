package aoc.kingdoms.lukasz.menu_element.menuElementHover;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.textures.Image;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MenuElement_HoverElement_Type_Terrain implements MenuElement_HoverElement_Type {
    private int iHeight;
    private int iTerrainID;
    private int iTerrainID2;
    private int iWidth;
    private int offsetLeft;
    private int offsetRight;

    public MenuElement_HoverElement_Type_Terrain(int i, int i2, int i3, int i4) {
        this.offsetLeft = 0;
        this.offsetRight = 0;
        this.iWidth = 0;
        this.iHeight = 0;
        this.iTerrainID = i;
        this.iTerrainID2 = Math.max(0, i2) % Game.terrainManager.terrainImages.get(i).size();
        this.offsetLeft = i3;
        this.offsetRight = i4;
        this.iWidth = (int) ((Game.terrainManager.terrainImages.get(i).get(this.iTerrainID2).getWidth() * (CFG.CIV_FLAG_HEIGHT * getImageScale())) / Game.terrainManager.terrainImages.get(i).get(this.iTerrainID2).getHeight());
        this.iHeight = (int) ((Game.terrainManager.terrainImages.get(i).get(this.iTerrainID2).getHeight() * (CFG.CIV_FLAG_HEIGHT * getImageScale())) / Game.terrainManager.terrainImages.get(i).get(this.iTerrainID2).getHeight());
    }

    private final float getImageScale() {
        return CFG.TEXT_HEIGHT / CFG.CIV_FLAG_HEIGHT;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public void draw(SpriteBatch spriteBatch, int i, int i2, float f, int i3) {
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f));
        Image image = Game.terrainManager.terrainImages.get(this.iTerrainID).get(this.iTerrainID2);
        int i4 = i + this.offsetLeft;
        int i5 = i2 + CFG.PADDING + (CFG.PADDING / 2) + (CFG.TEXT_HEIGHT / 2);
        int i6 = this.iHeight;
        image.draw(spriteBatch, i4, i5 - (i6 / 2), this.iWidth, i6);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getHeight() {
        return CFG.TEXT_HEIGHT + CFG.PADDING;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getWidth() {
        return this.offsetRight + this.offsetLeft + this.iWidth;
    }
}
