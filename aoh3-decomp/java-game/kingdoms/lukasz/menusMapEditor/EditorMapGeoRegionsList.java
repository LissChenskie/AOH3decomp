package aoc.kingdoms.lukasz.menusMapEditor;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.technology.Bhs.fiRhHJntP;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EditorMapGeoRegionsList extends Menu {

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapGeoRegionsList$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonMain {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z, boolean z2) {
            super(str, i, i2, i3, i4, i5, z, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            EditorMapGeoRegions.currentGeoRegionID = getCurrent();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button
        protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            spriteBatch.setColor(new Color(Game.geographicalRegions.lGeographicalRegions.get(getCurrent()).iR / 255.0f, Game.geographicalRegions.lGeographicalRegions.get(getCurrent()).iG / 255.0f, Game.geographicalRegions.lGeographicalRegions.get(getCurrent()).iB / 255.0f, 1.0f));
            Images.pix.draw(spriteBatch, getPosX() + i + CFG.PADDING, ((getPosY() + i2) + (getHeight() / 2)) - (CFG.TEXT_HEIGHT / 2), CFG.CIV_FLAG_WIDTH, CFG.TEXT_HEIGHT);
            spriteBatch.setColor(Color.WHITE);
            super.drawText(spriteBatch, i, i2, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getCheckboxState() {
            return getCurrent() == EditorMapGeoRegions.currentGeoRegionID;
        }
    }

    public EditorMapGeoRegionsList() {
        ArrayList arrayList = new ArrayList();
        int i = CFG.PADDING * 2;
        int i2 = CFG.BUTTON_HEIGHT;
        int i3 = (CFG.LEFT_MENU_WIDTH * 3) / 5;
        int i4 = (CFG.GAME_WIDTH - i3) - (CFG.PADDING * 4);
        int i5 = CFG.BUTTON_HEIGHT + (CFG.PADDING * 5);
        int i6 = CFG.PADDING * 2;
        int height = i6;
        int i7 = 1;
        for (int size = Game.geographicalRegions.lGeographicalRegions.size(); i7 < size; size = size) {
            int i8 = height;
            int i9 = i7;
            arrayList.add(new AnonymousClass1("" + Game.geographicalRegions.lGeographicalRegions.get(i7).sName, 1, -1, i, i8, i3 - (i * 2), true, true));
            arrayList.get(arrayList.size() - 1).setCurrent(i9);
            height = i8 + arrayList.get(arrayList.size() - 1).getHeight() + i6;
            i7 = i9 + 1;
        }
        initMenu(new MenuTitle(Game.lang.get(fiRhHJntP.nJNhGiucdyUZA), 1.0f, i2, true, true), i4, i2 + i5, i3, Math.min(height, (CFG.GAME_HEIGHT - i2) - (i5 * 2)), arrayList, true, false);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawEditorMenuBG(spriteBatch, getPosX(), getPosY(), getWidth(), getHeight() + CFG.PADDING, i, i2);
        super.draw(spriteBatch, i, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void updateLanguage() {
        super.updateLanguage();
        getTitle().setText(Game.lang.get("Regions"));
    }
}
