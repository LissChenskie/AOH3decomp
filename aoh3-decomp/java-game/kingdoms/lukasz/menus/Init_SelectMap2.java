package aoc.kingdoms.lukasz.menus;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame2;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Desc_Simple;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g3d.model.data.xlbt.LBhZogys;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Init_SelectMap2 extends Menu {

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Init_SelectMap2$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonGame2 {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.map.setActiveMapID(0);
            Game.mapBG.iMapExtraScale = Game.map.lMaps.get(Game.map.getActiveMapID()).mapData.ExtraMapScale;
            Game.mapBG.iMapScale = (int) (Game.map.lMaps.get(Game.map.getActiveMapID()).mapData.DefaultMapScale * Game.mapBG.iMapExtraScale);
            Game.menuManager.setViewIDWithoutAnimation(View.INIT_GAME_MENU);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return Colors.getColorPositive(z, getIsHovered());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Init_SelectMap2$2, reason: invalid class name */
    class AnonymousClass2 extends Text_Desc_Simple {
        AnonymousClass2(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Init_SelectMap2$3, reason: invalid class name */
    class AnonymousClass3 extends Text_Desc_Simple {
        AnonymousClass3(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Init_SelectMap2$4, reason: invalid class name */
    class AnonymousClass4 extends Text_Desc_Simple {
        AnonymousClass4(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Init_SelectMap2$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonGame2 {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.map.setActiveMapID(1);
            Game.mapBG.iMapExtraScale = Game.map.lMaps.get(Game.map.getActiveMapID()).mapData.ExtraMapScale;
            Game.mapBG.iMapScale = (int) (Game.map.lMaps.get(Game.map.getActiveMapID()).mapData.DefaultMapScale * Game.mapBG.iMapExtraScale);
            Game.menuManager.setViewIDWithoutAnimation(View.INIT_GAME_MENU);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return Colors.getColorNegative(z, getIsHovered());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Init_SelectMap2$6, reason: invalid class name */
    class AnonymousClass6 extends Text_Desc_Simple {
        AnonymousClass6(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Init_SelectMap2$7, reason: invalid class name */
    class AnonymousClass7 extends Text_Desc_Simple {
        AnonymousClass7(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Desc_Simple, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Desc, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
        protected Color getColor(boolean z) {
            return Colors.getColorNegative(z, getIsHovered());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Init_SelectMap2$8, reason: invalid class name */
    class AnonymousClass8 extends Text_Desc_Simple {
        AnonymousClass8(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Desc_Simple, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Desc, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
        protected Color getColor(boolean z) {
            return Colors.getColorNegative(z, getIsHovered());
        }
    }

    public Init_SelectMap2() {
        ArrayList arrayList = new ArrayList();
        int i = CFG.PADDING * 2;
        int i2 = CFG.BUTTON_HEIGHT + (CFG.BUTTON_HEIGHT / 2);
        int i3 = CFG.GAME_WIDTH / 10;
        int i4 = CFG.GAME_HEIGHT / 10;
        int i5 = CFG.PADDING * 2;
        int i6 = i * 2;
        arrayList.add(new AnonymousClass1(Game.lang.get("MapDescM"), 0, -1, i, i5, CFG.LEFT_MENU_WIDTH - i6, true));
        int height = arrayList.get(arrayList.size() - 1).getHeight() + i5 + i5;
        arrayList.add(new AnonymousClass2(Game.lang.get(LBhZogys.CtjoASMiLNCi), i, height, CFG.LEFT_MENU_WIDTH - i6, 0));
        int height2 = height + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass3(Game.lang.get("MapDescM2"), i, height2, CFG.LEFT_MENU_WIDTH - i6, 0));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass4(Game.lang.get("MapDescM3"), i, height3, CFG.LEFT_MENU_WIDTH - i6, 0));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass5(Game.lang.get("MapDescPC"), 0, -1, i, height4, CFG.LEFT_MENU_WIDTH - i6, true));
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass6(Game.lang.get("MapDescPC1"), i, height5, CFG.LEFT_MENU_WIDTH - i6, 0));
        int height6 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass7(Game.lang.get("MapDescPC2"), i, height6, CFG.LEFT_MENU_WIDTH - i6, 0));
        int height7 = height6 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass8(Game.lang.get("MapDescPC3"), i, height7, CFG.LEFT_MENU_WIDTH - i6, 0));
        initMenu(new MenuTitle(Game.lang.get("SelectMapType"), 1.0f, i2, true, true), i3, i2 + i4, CFG.LEFT_MENU_WIDTH, Math.min(height7 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING, (CFG.GAME_HEIGHT - i2) - (i4 * 2)), arrayList, true, false);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        spriteBatch.setColor(new Color(0.047058824f, 0.047058824f, 0.047058824f, 1.0f));
        Images.pix.draw(spriteBatch, i, i2, CFG.GAME_WIDTH, CFG.GAME_HEIGHT);
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.2f));
        InitGame.background.draw(spriteBatch, i + ((CFG.GAME_WIDTH - InitGame.backgroundWidth) / 2), i2 + ((CFG.GAME_HEIGHT - InitGame.backgroundHeight) / 2), InitGame.backgroundWidth, InitGame.backgroundHeight);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.6f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i, i2, CFG.GAME_WIDTH, CFG.PADDING * 3);
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i, (CFG.GAME_HEIGHT - (CFG.PADDING * 3)) + i2, CFG.GAME_WIDTH, CFG.PADDING * 3, false, true);
        spriteBatch.setColor(Color.WHITE);
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawEditorMenuBG(spriteBatch, getPosX(), getPosY(), getWidth(), CFG.PADDING + getHeight(), i, i2);
        super.draw(spriteBatch, i, i2, z, status);
    }
}
