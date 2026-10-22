package aoc.kingdoms.lukasz.menusInGame.Buildings;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.BuildingsManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonBuilding_Special;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Clear;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Desc2_Special;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceBonuses;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Destroy extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int building;
    public static int buildingID;
    public static int iProvinceID;
    public static long lTime;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Buildings.InGame_Destroy$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonGame {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_PopUp(false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Buildings.InGame_Destroy$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonGame {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Destroy.confirm();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Destroy") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(BuildingsManager.buildings.get(InGame_Destroy.building).Name[InGame_Destroy.buildingID], CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.build, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Province") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(InGame_Destroy.iProvinceID).getProvinceName(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Buildings.InGame_Destroy$3, reason: invalid class name */
    class AnonymousClass3 extends MenuTitleIMG_FlagCenter {
        AnonymousClass3(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter
        public int getFlagCivID() {
            return Game.getProvince(InGame_Destroy.iProvinceID).getCivID();
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Destroy.lTime;
        }
    }

    public InGame_Destroy() {
        ArrayList arrayList = new ArrayList();
        int i = (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH;
        ImageManager.getImage(Images.title500).getHeight();
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int i2 = CFG.PADDING;
        int height = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title500).getHeight();
        int i3 = CFG.PADDING * 2;
        int i4 = width - (i * 2);
        arrayList.add(new ButtonBuilding_Special(true, building, buildingID, i, i3, i4, true, false, ""));
        int height2 = i3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new Text_Desc2_Special(Game.lang.get(BuildingsManager.buildings.get(building).NameDesc[buildingID]), i, height2, i4));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass1(Game.lang.get("Cancel"), CFG.FONT_REGULAR, -1, i, height3, (i4 - CFG.PADDING) / 2, true));
        arrayList.add(new AnonymousClass2(Game.lang.get("Confirm"), CFG.FONT_REGULAR, -1, i + CFG.PADDING + ((i4 - CFG.PADDING) / 2), height3, (i4 - CFG.PADDING) / 2, true));
        arrayList.get(arrayList.size() - 1).getHeight();
        int i5 = CFG.PADDING;
        int size = arrayList.size();
        int posY = 0;
        for (int i6 = 0; i6 < size; i6++) {
            if (posY < arrayList.get(i6).getPosY() + arrayList.get(i6).getHeight() + (CFG.PADDING * 2)) {
                posY = arrayList.get(i6).getPosY() + arrayList.get(i6).getHeight() + (CFG.PADDING * 2);
            }
        }
        int iMin = Math.min(posY, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, 0, width, Math.max(posY, iMin)));
        initMenu(new AnonymousClass3(Game.lang.get("DestroyBuilding"), BuildingsManager.buildings.get(building).Name[buildingID], false, false, Images.title500), (CFG.GAME_WIDTH / 2) - (width / 2), CFG.GAME_HEIGHT / 4, width, iMin, arrayList, false, true);
    }

    public static void confirm() {
        if (Game.getProvince(iProvinceID).getCivID() == Game.player.iCivID) {
            if (Game.getProvince(iProvinceID).isOccupied()) {
                Game.menuManager.addToast_Error(Game.lang.get("OccupiedProvince"), Images.provinces);
            } else {
                Game.getProvince(iProvinceID).destroyBuilding(building, buildingID);
                if (Game.menuManager.getVisibleInGame_ProvinceInfo() && InGame_ProvinceInfo.iProvinceID == iProvinceID) {
                    Game.menuManager.rebuildInGame_ProvinceInfo(false);
                }
                if (Game.menuManager.getVisibleInGame_Buildings() && InGame_BuildingsGroup.iProvinceID == iProvinceID) {
                    Game.menuManager.rebuildInGame_Buildings(false);
                }
                if (Game.menuManager.getVisibleInGame_ProvinceBonuses()) {
                    Game.menuManager.rebuildInGame_ProvinceBonuses();
                    Game.menuManager.setVisibleInGame_ProvinceBonuses(true, false);
                    InGame_ProvinceBonuses.lTime = 0L;
                }
                if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_BUILDING) {
                    Game.menuManager.rebuildInGame_Build();
                    Game.menuManager.setVisibleInGame_Court(true);
                    InGame_Court.lTime = 0L;
                }
            }
        }
        Game.menuManager.setVisibleInGame_PopUp(false);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i2 - ((CFG.BUTTON_HEIGHT * 2) / 5)) + ((int) (((CFG.BUTTON_HEIGHT * 2) / 5) * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i2;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i3, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i, getPosY() + i3, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop500, Images.insideBot500);
        ImageManager.getImage(Images.civInfoOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.civInfoOver).getWidth() / 2)) + i, getPosY() + i3, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.civInfoOver).getHeight()));
        super.draw(spriteBatch, i, i3, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
    }
}
