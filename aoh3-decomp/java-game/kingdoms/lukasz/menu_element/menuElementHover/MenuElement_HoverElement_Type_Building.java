package aoc.kingdoms.lukasz.menu_element.menuElementHover;

import aoc.kingdoms.lukasz.map.BuildingsManager;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MenuElement_HoverElement_Type_Building implements MenuElement_HoverElement_Type {
    public int building;
    public int buildingID;

    public MenuElement_HoverElement_Type_Building(int i, int i2) {
        this.building = i;
        this.buildingID = i2;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public void draw(SpriteBatch spriteBatch, int i, int i2, float f, int i3) {
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f));
        BuildingsManager.buildingImages.get(BuildingsManager.buildings.get(this.building).ImageID[this.buildingID]).draw(spriteBatch, i, i2);
        ImageManager.getImage(Images.buildingsFrame).draw(spriteBatch, i, i2);
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getHeight() {
        return ImageManager.getImage(Images.buildingsFrame).getHeight();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getWidth() {
        return ImageManager.getImage(Images.buildingsFrame).getWidth();
    }
}
