package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.BuildingsManager;
import aoc.kingdoms.lukasz.map.province.ProvinceConstructionBuilding;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Flag;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Button_QueueBuilding extends Button {
    public ProvinceConstructionBuilding building;
    public int provinceID;

    public Button_QueueBuilding(int i, int i2, int i3, ProvinceConstructionBuilding provinceConstructionBuilding) {
        init(null, CFG.FONT_BOLD_SMALL, -1, i, i2, ImageManager.getImage(Images.unitsFrameMap).getWidth(), ImageManager.getImage(Images.unitsFrameMap).getHeight(), true, true, false, false);
        this.provinceID = i3;
        this.building = provinceConstructionBuilding;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void actionElement() {
        Game.mapCoords.centerToProvinceID(this.provinceID);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void actionElementPPM() {
        Game.getProvince(this.provinceID).cancelBuildingConstruction(Game.player.iCivID, this.building.getBuilding(), this.building.getBuildingID());
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(this.provinceID).getProvinceName(), Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(this.provinceID).getCivID(), CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        this.menuElementHover = new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Image image = ImageManager.getImage(Images.progressBarFrame);
        Image image2 = ImageManager.getImage(Images.progressBarFrameMask);
        Image image3 = ImageManager.getImage(Images.unitsFrameMap);
        spriteBatch.setShader(Renderer.shaderAlpha);
        BuildingsManager.buildingImages.get(BuildingsManager.buildings.get(this.building.getBuilding()).ImageID[this.building.getBuildingID()]).getTexture().bind(1);
        Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
        ImageManager.getImage(Images.unitsFrameMapMask).draw(spriteBatch, getPosX() + i, getPosY() + i2);
        spriteBatch.flush();
        spriteBatch.setShader(Renderer.shaderDefault);
        image3.draw(spriteBatch, getPosX() + i, getPosY() + i2);
        int width = (image.getWidth() - image2.getWidth()) / 2;
        int height = (image.getHeight() - image2.getHeight()) / 2;
        spriteBatch.setColor(new Color(ProvinceDraw.progressBarBG));
        image2.draw(spriteBatch, getPosX() + i + width, (((getPosY() + i2) + image3.getHeight()) - image.getHeight()) + height);
        spriteBatch.setColor(ProvinceDraw.progressBar);
        image2.draw(spriteBatch, getPosX() + i + width, (((getPosY() + i2) + image3.getHeight()) - image.getHeight()) + height, (int) (image2.getWidth() * (1.0f - (this.building.getConstructionTimeLeft() / this.building.getConstructionTime()))), image2.getHeight());
        spriteBatch.setColor(Color.WHITE);
        image.draw(spriteBatch, ((getPosX() + i) + (image3.getWidth() / 2)) - (image.getWidth() / 2), ((getPosY() + i2) + image3.getHeight()) - image.getHeight());
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
    }
}
