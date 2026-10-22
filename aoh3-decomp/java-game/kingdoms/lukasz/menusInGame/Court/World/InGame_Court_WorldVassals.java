package aoc.kingdoms.lukasz.menusInGame.Court.World;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Ages;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonCurrentSituation;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static_ID;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2Center;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Court_WorldVassals extends Menu {

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldVassals$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonCurrentSituation {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Court.iActiveCivID = Game.player.iCivID;
            Game.menuManager.rebuildInGame_Court();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
            Game.setRegroupArmyMode(false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(GameValues.court.COUNCIL_NAME), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.council, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.getClickSound_CivOptions();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldVassals$2, reason: invalid class name */
    class AnonymousClass2 extends TextIcon_Diplomacy {
        AnonymousClass2(int i, int i2, int i3, int i4, int i5, int i6) {
            super(i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Diplomacy
        public Color getColorBar() {
            return Colors.COLOR_GRADIENT_OVER_BLUE;
        }
    }

    public InGame_Court_WorldVassals() {
        int i;
        ArrayList arrayList = new ArrayList();
        int i2 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int menuWidth = InGame_CourtOptions2.getMenuWidth() + (CFG.PADDING * 2);
        int height = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i3 = CFG.PADDING;
        int i4 = CFG.PADDING;
        int i5 = width - (i2 * 2);
        arrayList.add(new AnonymousClass1(Game.lang.get(GameValues.court.COUNCIL_NAME), Images.council, i2, i4, i5, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.council).getWidth() + (CFG.PADDING * 4), true));
        boolean z = true;
        int height2 = i4 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int width2 = ImageManager.getImage(Images.vassal).getWidth() + (CFG.PADDING * 4);
        int i6 = CFG.PADDING;
        int height3 = ImageManager.getImage(Images.flagDiplomacyOver).getHeight() + (i6 * 2);
        int i7 = width / 2;
        int i8 = width2 / 2;
        int width3 = (((i7 - i2) - (CFG.PADDING * 2)) - i8) - ImageManager.getImage(Images.flagDiplomacyOver).getWidth();
        arrayList.add(new Text_Title_v2Center(Game.lang.get(Game_Ages.getVassals()), -1, Images.boxTitleBORDERWIDTH, height2, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height4 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int size = arrayList.size();
        int i9 = 1;
        while (true) {
            i = 0;
            if (i9 >= Game.getCivsSize()) {
                break;
            }
            if (Game.getCiv(i9).diplomacy.iVassalsSize > 0) {
                while (i < Game.getCiv(i9).diplomacy.iVassalsSize) {
                    int i10 = height4 + i6;
                    arrayList.add(new ButtonFlag_Diplomacy(i9, ((i7 - i8) - (CFG.PADDING * 2)) - ImageManager.getImage(Images.flagDiplomacyOver).getWidth(), i10, z));
                    int i11 = i7 + i8;
                    arrayList.add(new ButtonFlag_Diplomacy(Game.getCiv(i9).diplomacy.lVassals.get(i).c, (CFG.PADDING * 2) + i11, i10, z));
                    arrayList.add(new Text_Static_ID(Game.getCiv(i9).diplomacy.lVassals.get(i).c, Game.getCiv(Game.getCiv(i9).diplomacy.lVassals.get(i).c).getCivName(), CFG.FONT_REGULAR_SMALL, -1, i11 + (CFG.PADDING * 2) + ImageManager.getImage(Images.flagDiplomacyOver).getWidth(), height4, width3, height3));
                    arrayList.add(new Text_Static_ID(i9, Game.getCiv(i9).getCivName(), CFG.FONT_REGULAR_SMALL, -1, i2, height4, width3, height3));
                    arrayList.add(new AnonymousClass2(Images.vassal, i2, height4, i5, height3, width2));
                    height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    i++;
                    menuWidth = menuWidth;
                    i9 = i9;
                    z = z;
                    size = size;
                }
            }
            i9++;
            menuWidth = menuWidth;
            z = z;
            size = size;
        }
        int i12 = menuWidth;
        if (size == arrayList.size()) {
            arrayList.add(new Text_StaticBG(Game.lang.get("None") + ".", CFG.FONT_REGULAR_SMALL, -1, i2, height4, i5, ImageManager.getImage(Images.generalFrameBattle).getHeight() + CFG.TEXT_HEIGHT + (CFG.PADDING * 2)));
            height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        int i13 = height + InGame_CourtOptions.menuH;
        int iMin = Math.min(height4, (CFG.GAME_HEIGHT - i13) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, i, width, Math.max(height4, iMin)));
        initMenu(null, i12, i13, width, iMin, arrayList, false, false);
        this.drawScrollPositionAlways = i;
        Game.menuManager.setInGame_CivOptions_Title(Game.lang.get(Game.map.lMaps.get(Game.map.getActiveMapID()).mapData.Name));
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = InGame_Court.lTime + 60 >= CFG.currentTimeMillis ? (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - InGame_Court.lTime) / 60.0f))) : i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - InGame_CourtOptions.menuH) + i2, getWidth(), getHeight() + InGame_CourtOptions.menuH + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop500, Images.insideBot500);
        ImageManager.getImage(Images.rulerOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.rulerOver).getWidth() / 2)) + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.rulerOver).getHeight()));
        super.draw(spriteBatch, i3, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void onHovered() {
        super.onHovered();
        Game.menuManager.setOrderOfMenu_InGameCourt();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        InGame_Court.lTime = CFG.currentTimeMillis;
        InGame_Court.lTime2 = CFG.currentTimeMillis;
    }
}
